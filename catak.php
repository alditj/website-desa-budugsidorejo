<?php
// cetak.php

// 1. Load Library Dompdf
// Pastikan folder 'vendor' ada (hasil install composer)
require 'vendor/autoload.php';

use Dompdf\Dompdf;
use Dompdf\Options;

// 2. Security Check
// Jika file ini dibuka langsung tanpa lewat tombol "Cetak" di form,
// kembalikan user ke halaman depan (index.html)
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    header("Location: index.html");
    exit;
}

// 3. Tangkap Data Umum (Yang selalu ada di setiap surat)
$jenis_surat = $_POST['jenis_surat'];
$nama        = strtoupper($_POST['nama']); // Ubah jadi huruf besar semua
$nik         = $_POST['nik'];
$tmp_lahir   = ucwords($_POST['tmp_lahir']); // Huruf depan besar
$alamat      = $_POST['alamat'];

// Fungsi Helper: Format Tanggal Indonesia (yyyy-mm-dd -> dd Bulan yyyy)
function tgl_indo($tanggal){
    if(empty($tanggal)) return "-";
    $bulan = [
        1 => 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni',
        'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'
    ];
    $split = explode('-', $tanggal);
    // $split[0]=Tahun, $split[1]=Bulan, $split[2]=Tanggal
    return $split[2] . ' ' . $bulan[(int)$split[1]] . ' ' . $split[0];
}

// Format tanggal lahir & tanggal hari ini
$tgl_lahir_indo = tgl_indo($_POST['tgl_lahir']);
$tgl_sekarang   = tgl_indo(date('Y-m-d'));
$tahun_ini      = date('Y');

// 4. Logika Isi Surat (Switch Case)
$judul_surat = "";
$nomor_surat = "";
$isi_surat   = "";

switch ($jenis_surat) {
    // --- KASUS 1: SURAT DOMISILI ---
    case 'domisili':
        $judul_surat = "SURAT KETERANGAN DOMISILI";
        $nomor_surat = "470 / ... / DS / " . $tahun_ini;
        $isi_surat   = "
            <p>Yang bertanda tangan di bawah ini Kepala Desa Jatisari, Kecamatan Sluke, Kabupaten Rembang, menerangkan dengan sebenarnya bahwa:</p>
            
            <table class='data-table'>
                <tr>
                    <td style='width: 150px;'>Nama</td>
                    <td>: <b>$nama</b></td>
                </tr>
                <tr>
                    <td>NIK</td>
                    <td>: $nik</td>
                </tr>
                <tr>
                    <td>Tempat, Tgl Lahir</td>
                    <td>: $tmp_lahir, $tgl_lahir_indo</td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>: $alamat</td>
                </tr>
            </table>

            <p>Orang tersebut di atas adalah benar-benar warga penduduk Desa Jatisari dan saat ini <b>berdomisili (bertempat tinggal)</b> di alamat tersebut di atas.</p>
            
            <p>Demikian surat keterangan ini dibuat untuk dapat dipergunakan sebagaimana mestinya.</p>
        ";
        break;

    // --- KASUS 2: SURAT KETERANGAN USAHA (SKU) ---
    case 'usaha':
        $judul_surat = "SURAT KETERANGAN USAHA";
        $nomor_surat = "510 / ... / DS / " . $tahun_ini;
        
        // Data khusus usaha
        $jenis_usaha  = strtoupper($_POST['jenis_usaha']);
        $lokasi_usaha = $_POST['lokasi_usaha'];

        $isi_surat = "
            <p>Yang bertanda tangan di bawah ini Kepala Desa Jatisari, Kecamatan Sluke, Kabupaten Rembang, menerangkan bahwa:</p>
            
            <table class='data-table'>
                <tr>
                    <td style='width: 150px;'>Nama</td>
                    <td>: <b>$nama</b></td>
                </tr>
                <tr>
                    <td>NIK</td>
                    <td>: $nik</td>
                </tr>
                <tr>
                    <td>Tempat, Tgl Lahir</td>
                    <td>: $tmp_lahir, $tgl_lahir_indo</td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>: $alamat</td>
                </tr>
            </table>

            <p>Setelah diadakan penelitian dan berdasarkan pengamatan kami, bahwa yang bersangkutan benar-benar memiliki usaha:</p>

            <table class='data-table'>
                <tr>
                    <td style='width: 150px;'>Jenis Usaha</td>
                    <td>: <b>$jenis_usaha</b></td>
                </tr>
                <tr>
                    <td>Lokasi Usaha</td>
                    <td>: $lokasi_usaha</td>
                </tr>
            </table>
            
            <p>Demikian surat keterangan usaha ini dibuat sebagai persyaratan administrasi.</p>
        ";
        break;

    // --- KASUS 3: SURAT KEMATIAN ---
    case 'kematian':
        $judul_surat = "SURAT KETERANGAN KEMATIAN";
        $nomor_surat = "474 / ... / DS / " . $tahun_ini;
        
        // Data khusus kematian
        $hari_wafat    = $_POST['hari_meninggal'];
        $tgl_wafat_indo= tgl_indo($_POST['tgl_meninggal']);
        $jam_wafat     = $_POST['jam_meninggal'];
        $tempat_wafat  = $_POST['tempat_meninggal'];

        $isi_surat = "
            <p>Kepala Desa Jatisari, Kecamatan Sluke, Kabupaten Rembang, dengan ini menerangkan bahwa:</p>
            
            <table class='data-table'>
                <tr>
                    <td style='width: 150px;'>Nama</td>
                    <td>: <b>$nama</b></td>
                </tr>
                <tr>
                    <td>NIK</td>
                    <td>: $nik</td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>: $alamat</td>
                </tr>
            </table>

            <p>Telah meninggal dunia pada:</p>

            <table class='data-table'>
                <tr>
                    <td style='width: 150px;'>Hari / Tanggal</td>
                    <td>: $hari_wafat, $tgl_wafat_indo</td>
                </tr>
                <tr>
                    <td>Pukul</td>
                    <td>: $jam_wafat WIB</td>
                </tr>
                <tr>
                    <td>Di</td>
                    <td>: $tempat_wafat</td>
                </tr>
            </table>
            
            <p>Demikian surat keterangan kematian ini dibuat agar dapat digunakan untuk pengurusan akta kematian atau keperluan lain yang semestinya.</p>
        ";
        break;

    // --- KASUS 4: SKTM (TIDAK MAMPU) ---
    case 'sktm':
        $judul_surat = "SURAT KETERANGAN TIDAK MAMPU";
        $nomor_surat = "401 / ... / DS / " . $tahun_ini;
        
        // Data khusus SKTM
        $alasan = $_POST['alasan_sktm'];

        $isi_surat = "
            <p>Yang bertanda tangan di bawah ini Kepala Desa Jatisari menerangkan dengan sebenarnya bahwa:</p>
            
            <table class='data-table'>
                <tr>
                    <td style='width: 150px;'>Nama</td>
                    <td>: <b>$nama</b></td>
                </tr>
                <tr>
                    <td>NIK</td>
                    <td>: $nik</td>
                </tr>
                <tr>
                    <td>Tempat, Tgl Lahir</td>
                    <td>: $tmp_lahir, $tgl_lahir_indo</td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>: $alamat</td>
                </tr>
            </table>

            <p>Bahwa orang tersebut di atas adalah benar-benar warga Desa Jatisari yang tergolong keluarga <b>Pra-Sejahtera (Tidak Mampu)</b>.</p>
            
            <p>Surat keterangan ini dibuat untuk keperluan: <br><b>\"$alasan\"</b>.</p>
            
            <p>Demikian surat keterangan ini dibuat untuk dapat dipergunakan sebagaimana mestinya.</p>
        ";
        break;
}

// 5. Susun Template HTML Utama
// CSS ditulis inline di dalam <style> agar terbaca oleh PDF Generator
$html_final = "
<!DOCTYPE html>
<html>
<head>
    <title>Cetak Surat</title>
    <style>
        body { 
            font-family: 'Times New Roman', serif; 
            font-size: 12pt; 
            line-height: 1.5; 
            margin: 0;
            color: #000; 
        }
        
        /* KOP SURAT */
        .kop-surat {
            text-align: center;
            border-bottom: 3px double #000; /* Garis ganda bawah kop */
            padding-bottom: 10px;
            margin-bottom: 30px;
        }
        .kop-surat h3 { margin: 0; font-size: 14pt; font-weight: normal; }
        .kop-surat h2 { margin: 0; font-size: 16pt; font-weight: bold; }
        .kop-surat p { margin: 0; font-size: 11pt; font-style: italic; }

        /* JUDUL & NOMOR */
        .judul-area { text-align: center; margin-bottom: 30px; }
        .judul-area u { font-weight: bold; font-size: 14pt; text-transform: uppercase; }
        .judul-area span { display: block; margin-top: 5px; }

        /* ISI SURAT */
        .isi-surat { text-align: justify; }
        
        /* TABEL DATA */
        .data-table { width: 100%; margin-left: 30px; margin-bottom: 15px; }
        .data-table td { vertical-align: top; padding-bottom: 5px; }

        /* TANDA TANGAN */
        .ttd-area {
            float: right;
            width: 250px;
            text-align: center;
            margin-top: 50px;
        }
    </style>
</head>
<body>

    <div class='kop-surat'>
        <h3>PEMERINTAH KABUPATEN REMBANG</h3>
        <h3>KECAMATAN SLUKE</h3>
        <h2>DESA JATISARI</h2>
        <p>Alamat: Jl. Raya Jatisari No. 1, Kode Pos 59272</p>
    </div>

    <div class='judul-area'>
        <u>$judul_surat</u><br>
        <span>Nomor: $nomor_surat</span>
    </div>

    <div class='isi-surat'>
        $isi_surat
    </div>

    <div class='ttd-area'>
        <p>Jatisari, $tgl_sekarang</p>
        <p>Kepala Desa Jatisari</p>
        <br><br><br><br> <p style='font-weight: bold; text-decoration: underline;'>(NAMA KEPALA DESA)</p>
    </div>

</body>
</html>
";

// 6. Render PDF dengan Dompdf
$options = new Options();
$options->set('isRemoteEnabled', true); // Aktifkan jika ada gambar URL eksternal
$dompdf = new Dompdf($options);

// Masukkan HTML yang sudah disusun
$dompdf->loadHtml($html_final);

// Atur ukuran kertas A4 Portrait
$dompdf->setPaper('A4', 'portrait');

// Proses Render
$dompdf->render();

// 7. Output File
// stream() akan otomatis mendownload file
// "Attachment" => false artinya file akan terbuka di browser (Preview)
// Ubah "Attachment" => true jika ingin langsung auto-download tanpa preview
$filename = "Surat_Desa_" . str_replace(' ', '_', $nama) . ".pdf";
$dompdf->stream($filename, array("Attachment" => false));

?>