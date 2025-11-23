from flask import Flask, render_template, request, redirect, url_for, send_file, flash
from docxtpl import DocxTemplate
import os
from datetime import datetime, date
import time 

# --- Import Tambahan untuk Autentikasi dan Database ---
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user
# Hashing dihapus: from werkzeug.security import generate_password_hash, check_password_hash

# Import PyMySQL
import pymysql 
pymysql.install_as_MySQLdb()
# -----------------------------------------------------

app = Flask(__name__)

# --- Konfigurasi Database dan Keamanan ---
app.config['SECRET_KEY'] = 'rahasia_desa_budugsidorejo_2025' 

# >>> KONFIGURASI MYSQL <<<
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@127.0.0.1/db_desa_budugsidorejo'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)
login_manager = LoginManager(app)
login_manager.login_view = 'login' 
login_manager.login_message_category = 'danger' 
# -----------------------------------------

# --- Model Database User (Admin) - TANPA HASHING ---
class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(20), unique=True, nullable=False)
    # GANTI: password_hash menjadi password, karena kita simpan teks biasa
    password = db.Column(db.String(128)) 

    def set_password(self, password):
        # TIDAK ADA HASHING: Simpan password dalam bentuk teks biasa
        self.password = password

    def check_password(self, password):
        # Verifikasi LANGSUNG: Membandingkan teks input dengan teks yang tersimpan
        # (SANGAT TIDAK AMAN, HANYA UNTUK DEBUGGING)
        return self.password == password

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))
# -----------------------------------

# Direktori Dasar Proyek
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
OUTPUT_DIR = os.path.join(BASE_DIR, "output")
TEMPLATE_DIR = os.path.join(BASE_DIR, "word_templates") 

# Pastikan direktori output dan template ada
os.makedirs(OUTPUT_DIR, exist_ok=True)
os.makedirs(TEMPLATE_DIR, exist_ok=True)

# Konstanta Default
DEFAULT_DESA = "Budugsidorejo"
DEFAULT_KECAMATAN = "Sumobito"
DEFAULT_KABUPATEN = "Jombang"

# FUNGSI BANTU (HELPER FUNCTIONS)
def format_tanggal(tgl_string):
    """Mengubah tanggal dari YYYY-MM-DD menjadi format Indonesia (DD Month YYYY)"""
    if not tgl_string:
        return ""
    try:
        tgl_obj = datetime.strptime(tgl_string, '%Y-%m-%d')
        bulan_indonesia = {
            1: 'Januari', 2: 'Februari', 3: 'Maret', 4: 'April', 5: 'Mei', 6: 'Juni',
            7: 'Juli', 8: 'Agustus', 9: 'September', 10: 'Oktober', 11: 'November', 12: 'Desember'
        }
        return f"{tgl_obj.day} {bulan_indonesia[tgl_obj.month]} {tgl_obj.year}"
    except Exception:
        return tgl_string

def generate_and_send_doc(template_file, context, output_name_prefix):
    # 1. Menyiapkan Data Umum Tambahan
    tanggal_surat = format_tanggal(datetime.now().strftime('%Y-%m-%d'))
    now = datetime.now()
    
    nomor_surat_data = {
        'sifat': '470',
        'nomor_urut': '001',
        'd1': '10', 
        'd2': '20', 
        'd3': '30', 
        'thn': now.year,
    }
             
    # Tambahkan data penomoran dan tanggal surat ke context yang sudah ada
    context.update(nomor_surat_data)
    context['tanggal_surat'] = tanggal_surat
    context['tgl_surat'] = tanggal_surat
    
    # Variabel khusus untuk template Kematian/Kehilangan/Lainnya (nilai default)
    context.setdefault('dsnm', DEFAULT_DESA)
    context.setdefault('dsm', DEFAULT_DESA)
    context.setdefault('kecm', DEFAULT_KECAMATAN)
    context.setdefault('kabm', DEFAULT_KABUPATEN)

    # 2. Proses DocxTPL
    template_path = os.path.join(TEMPLATE_DIR, template_file)
    output_filename = f"{output_name_prefix}_{now.strftime('%Y%m%d%H%M%S')}_{time.time()}.docx"
    output_path = os.path.join(OUTPUT_DIR, output_filename)
    
    try:
        doc = DocxTemplate(template_path)
        doc.render(context)
        doc.save(output_path)
    except FileNotFoundError:
        return f"Error: File template '{template_file}' tidak ditemukan di '{TEMPLATE_DIR}'", 404
    except Exception as e:
        return f"Error saat memproses template: {e}", 500

    # 3. Kirim file
    return send_file(
        output_path,
        as_attachment=True,
        mimetype='application/vnd.openxmlformats-officedocument.wordprocessingml.document',
        download_name=output_filename
    )

# ==========================================
# ROUTE PUBLIK & AUTENTIKASI
# ==========================================

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/profil') 
def profil_desa():
    section = request.args.get('section', 'visi_misi') 
    return render_template('profil.html', section=section) 

@app.route('/login', methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        return redirect(url_for('index'))

    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')
        
        try:
            # 1. Cari user
            user = User.query.filter_by(username=username).first()

            # 2. Verifikasi user dan password menggunakan perbandingan string langsung
            if user and user.check_password(password):
                login_user(user)
                next_page = request.args.get('next')
                flash(f'Selamat datang kembali, {username}!', 'success')
                return redirect(next_page or url_for('index'))
            else:
                flash('Login gagal. Periksa username dan password Anda.', 'danger')
        
        except Exception as e:
            flash(f'Error koneksi database: Pastikan MySQL Anda berjalan. ({e})', 'danger')
            
    return render_template('login.html')

@app.route('/logout')
@login_required
def logout():
    logout_user()
    flash('Anda telah berhasil keluar.', 'info')
    return redirect(url_for('index'))

@app.route('/form')
@login_required
def form_surat_index():
    return redirect(url_for('index'))


# ==========================================
# ROUTE FORMULIR (DIPROTEKSI LOGIN)
# ==========================================

# SKCK
@app.route('/form/skck', methods=['GET', 'POST'])
@login_required
def form_skck():
    if request.method == 'GET':
        return render_template('form_skck.html')
    elif request.method == 'POST':
        data = request.form.to_dict()
        
        context = {
            'NAMA_LENGKAP': data.get('nama_lengkap'),
            'Nktp': data.get('nik'),
            'Status': data.get('status_perkawinan'),
            'Agama': data.get('agama'),
            'Pekerjaan': data.get('pekerjaan'),
            'jenis_kelamin': data.get('jenis_kelamin'),
            'tempat_lahir': data.get('tempat_lahir'),
            'tanggal_lahir': format_tanggal(data.get('tanggal_lahir')),
            'dsn': data.get('dsn'),
            'rt': data.get('rt'),
            'rw': data.get('rw'),
            'ds': DEFAULT_DESA,
            'kec': DEFAULT_KECAMATAN,
            'kab': DEFAULT_KABUPATEN
        }
        return generate_and_send_doc('template_skck.docx', context, 'Surat_SKCK')

# DOMISILI
@app.route('/form/domisili', methods=['GET', 'POST'])
@login_required
def form_domisili():
    if request.method == 'GET':
        return render_template('form_domisili.html')
    elif request.method == 'POST':
        data = request.form.to_dict()
        
        if data.get('tanggal_lahir'):
            data['tanggal_lahir'] = format_tanggal(data.get('tanggal_lahir'))
            
        data['nama_bawah'] = data.get('nama_lengkap')
        return generate_and_send_doc('template_domisili.docx', data, 'Surat_Domisili')

# KEPEMILIKAN KENDARAAN 
@app.route('/form/kendaraan', methods=['GET', 'POST'])
@login_required
def form_kendaraan():
    if request.method == 'GET':
        return render_template('form_kendaraan.html', date=date)
        
    elif request.method == 'POST':
        data = request.form.to_dict()
 
        context = {
            'Nama_Lengkapp': data.get('Nama_Lengkapp'),
            'nikp': data.get('nikp'),
            'tmplp': data.get('tmplp'),
            'tgllp': format_tanggal(data.get('tgllp')),
            'jkp': data.get('jkp'),
            'agamap': data.get('agamap'),
            'pekerjaanp': data.get('pekerjaanp'),
            'statusp': data.get('statusp'),
            
            # Data Alamat
            'dsnp': data.get('dsnp'),
            'rtp': data.get('rtp'),
            'rwp': data.get('rwp'),
            'dsp': data.get('dsp', DEFAULT_DESA),
            'kecp': data.get('kecp', DEFAULT_KECAMATAN),
            'kabp': data.get('kabp', DEFAULT_KABUPATEN),
            
            # Data Kendaraan
            'kendaraan_beroda': data.get('kendaraan_beroda'),
            'atas_nama': data.get('atas_nama'),
            'merk': data.get('merk'),
            'tahun_kendaraan': data.get('tahun_kendaraan'),
            'warna_kendaraan': data.get('warna_kendaraan'),
            'plat_nomor': data.get('plat_nomor'),
            'pajak': data.get('pajak'),
            
            # Keperluan & Tanda Tangan
            'alasan_surat_dibuat': data.get('alasan_surat_dibuat'),
            'nama_bawah': data.get('Nama_Lengkapp') 
        }

        return generate_and_send_doc('template_kepemilikan_kendaraan.docx', context, 'Surat_Kepemilikan_Kendaraan')

# SURAT KUASA
@app.route('/form/kuasa', methods=['GET', 'POST'])
@login_required
def form_surat_kuasa():
    if request.method == 'GET':
        return render_template('form_surat_kuasa.html')
    elif request.method == 'POST':
        data = request.form.to_dict()
        # Mapping Pihak 1
        context = {
            'nama_pihak_pertama': data.get('nama_pemohon'),
            'Nik1': data.get('nik_pemohon'),
            'Dsn1': data.get('dsn_pemohon'),
            'rt1': data.get('rt_pemohon'),
            'rw1': data.get('rw_pemohon'),
            'nama_bawah1': data.get('nama_pemohon'),
            'Ds1': DEFAULT_DESA, 'Kec1': DEFAULT_KECAMATAN, 'Kab1': DEFAULT_KABUPATEN,
            
            # Mapping Pihak 2
            'nama_pihak_kedua': data.get('nama_penerima'),
            'Nik2': data.get('nik_penerima'),
            'Dsn2': data.get('dsn_penerima'),
            'rt2': data.get('rt_penerima'),
            'rw2': data.get('rw_penerima'),
            'nama_bawah2': data.get('nama_penerima'),
            'Ds2': DEFAULT_DESA, 'Kec2': DEFAULT_KECAMATAN, 'Kab2': DEFAULT_KABUPATEN,
            
            'alasan_surat_dibuat': data.get('alasan_surat_dibuat')
        }
        return generate_and_send_doc('template_surat_kuasa.docx', context, 'Surat_Kuasa')

# SKTM
@app.route('/form/sktm', methods=['GET', 'POST'])
@login_required
def form_sktm():
    if request.method == 'GET':
        return render_template('form_sktm.html')
    elif request.method == 'POST':
        data = request.form.to_dict()
        context = {
            'NAMA_LENGKAP': data.get('nama_lengkap'),
            'JK': data.get('jenis_kelamin'),
            'temapat_lahir': data.get('tempat_lahir'),
            'tanggal_lahir': format_tanggal(data.get('tanggal_lahir')),
            'NIK': data.get('nik'),
            'status': data.get('status_perkawinan'),
            'pekerjaan': data.get('pekerjaan'),
            'dsn': data.get('dsn'),
            'rt': data.get('rt'),
            'rw': data.get('rw'),
            'ds': DEFAULT_DESA, 'kec': DEFAULT_KECAMATAN, 'kab': DEFAULT_KABUPATEN,
            'Alasan_surat_dibuat': data.get('keperluan_surat')
        }
        return generate_and_send_doc('template_sktm.docx', context, 'Surat_SKTM')

# SKU
@app.route('/form/sku', methods=['GET', 'POST'])
@login_required
def form_sku():
    if request.method == 'GET':
        return render_template('form_sku.html')
    elif request.method == 'POST':
        data = request.form.to_dict()
        context = {
            'Nama_Lengkap': data.get('nama_lengkap'),
            'Tmp_lahir': data.get('tempat_lahir'),
            'Tgl_lahir': format_tanggal(data.get('tanggal_lahir')),
            'Agama': data.get('agama'),
            'Pekerjaan': data.get('pekerjaan'),
            'nik': data.get('nik'),
            'kk': data.get('kk'),
            'dsn': data.get('dsn'),
            'rt': data.get('rt'),
            'rw': data.get('rw'),
            'ds': DEFAULT_DESA, 'kec': DEFAULT_KECAMATAN, 'kab': DEFAULT_KABUPATEN,
            'nama_usaha': data.get('nama_usaha'),
            'alasan_surat_dibuat': data.get('keperluan_surat'),
            'nama_bawah': data.get('nama_lengkap')
        }
        return generate_and_send_doc('template_sku.docx', context, 'Surat_SKU')

# KEMATIAN
@app.route('/form/kematian', methods=['GET', 'POST'])
@login_required
def form_surat_kematian():
    if request.method == 'GET':
        return render_template('form_surat_kematian.html')
    elif request.method == 'POST':
        data = request.form.to_dict()
        context = {
            'Nama_Almarhum': data.get('nama_almarhum'),
            'jk': data.get('jenis_kelamin'),
            'tmpl': data.get('tempat_lahir'),
            'tgll': format_tanggal(data.get('tanggal_lahir')),
            'nik': data.get('nik'),
            'pekerjaan': data.get('pekerjaan'),
            'dsn': data.get('dsn'),
            'Rt': data.get('rt'),
            'Rw': data.get('rw'),
            'ds': DEFAULT_DESA, 'kec': DEFAULT_KECAMATAN, 'kab': DEFAULT_KABUPATEN,
            
            'hari_meninggal': data.get('hari_meninggal'),
            'tangga_meninggall': format_tanggal(data.get('tanggal_meninggal')),
            'jam_meninggal': data.get('jam_meninggal'),
            'dsnm': data.get('dsn_meninggal'),
            'rtm': data.get('rt_meninggal'),
            'rwm': data.get('rw_meninggal'),
            'dsm': data.get('desa_meninggal', DEFAULT_DESA),
            'kecm': data.get('kecamatan_meninggal', DEFAULT_KECAMATAN),
            'kabm': data.get('kabupaten_meninggal', DEFAULT_KABUPATEN)
        }
        return generate_and_send_doc('template_surat_kematian.docx', context, 'Surat_Kematian')

# KEHILANGAN
@app.route('/form/kehilangan', methods=['GET', 'POST'])
@login_required
def form_kehilangan():
    if request.method == 'GET':
        return render_template('form_kehilangan.html')
    elif request.method == 'POST':
        data = request.form.to_dict()
        context = {
            'nama_lengkap': data.get('nama_lengkap'),
            'jk': data.get('jenis_kelamin'),
            'tmpl': data.get('tempat_lahir'),
            'tgll': format_tanggal(data.get('tanggal_lahir')),
            'NIK': data.get('nik'),
            'Status': data.get('status_perkawinan'),
            'Agama': data.get('agama'),
            'Pekerjaan': data.get('pekerjaan'),
            'Dsn': data.get('dsn_ktp'),
            'rt': data.get('rt_ktp'),
            'rw': data.get('rw_ktp'),
            'Ds': DEFAULT_DESA, 'Kec': DEFAULT_KECAMATAN, 'Kab': DEFAULT_KABUPATEN,
            
            'Dsn2': data.get('dsn'), 
            'rt2': data.get('rt'),
            'rw2': data.get('rw'),
            
            'nama_barang_yang_hilang': data.get('barang_hilang'),
            'alasan_surat_dibuat': data.get('keperluan'),
            'nama_bawah': data.get('nama_lengkap')
        }
        return generate_and_send_doc('template_kehilangan.docx', context, 'Surat_Kehilangan')

if __name__ == '__main__':
    # Memastikan konteks aplikasi aktif untuk operasi database
    with app.app_context():
        db.create_all()
        print("Mengecek dan membuat ulang User 'admin' untuk memastikan password tersimpan sebagai teks biasa...")
        
        # 1. Hapus user lama
        admin_user = User.query.filter_by(username='admin').first()
        if admin_user:
            db.session.delete(admin_user)
            db.session.commit()
            print(">>> Akun 'admin' lama telah dihapus.")

        # 2. Buat user baru dengan password teks biasa (pass123)
        new_admin = User(username='admin')
        new_admin.set_password('pass123')
        db.session.add(new_admin)
        db.session.commit()
        print(">>> User admin berhasil dibuat ULANG dengan password: pass123 (Teks Biasa)!")
        # -----------------------------------------------------------
        
    app.run(debug=True)