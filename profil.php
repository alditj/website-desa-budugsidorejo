<?php
// Ambil parameter konten yang diminta (DEFAULT: visi_misi)
// Asumsi: Kita menggunakan PHP untuk me-load konten, bukan Jinja/Flask template
$page = isset($_GET['p']) ? $_GET['p'] : 'visi_misi'; 

// Fungsi untuk menentukan judul
function getTitle($p) {
    switch ($p) {
        case 'wilayah': return "Profil Wilayah Desa";
        case 'sejarah': return "Sejarah Singkat Desa";
        case 'visi_misi': return "Visi dan Misi Desa";
        case 'pemerintah': return "Struktur Pemerintah Desa";
        case 'penduduk': return "Data Kependudukan";
        default: return "Profil Desa";
    }
}
$title = getTitle($page);
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title><?php echo $title; ?> - Desa Jatisari</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    
    <header>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Logo_Garuda_Pancasila_Gold.svg/1200px-Logo_Garuda_Pancasila_Gold.svg.png" alt="Logo">
        <div>
            <h1>PEMERINTAH DESA JATISARI</h1>
            <p>Kecamatan Sluke, Kabupaten Rembang, Jawa Tengah</p>
        </div>
    </header>

    <nav>
        <ul>
            <li><a href="index.html">Beranda</a></li>
            <li><a href="profil.php" class="active">Profil Desa</a></li> 
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn" onclick="toggleDropdown()">Buat Surat ▼</a>
                <div class="dropdown-content" id="suratDropdown">
                    <a href="form_skck.php">Surat Pengantar SKCK</a>
                    <a href="form_domisili.php">Surat Keterangan Domisili</a>
                    <a href="form_kepemilikan.php">Surat Keterangan Kepemilikan</a>
                </div>
            </li>
        </ul>
    </nav>

    <div class="container content">
        
        <div class="sidebar profile-sidebar">
            <div class="card sub-menu-card">
                <h3><i class="fa-solid fa-layer-group"></i> Kategori Profil</h3>
                
                <ul class="sub-menu">
                    <li><a href="profil.php?p=wilayah" class="<?php echo $page == 'wilayah' ? 'active' : ''; ?>"><i class="fa-solid fa-map-location-dot"></i> Profil Wilayah</a></li>
                    
                    <li><a href="profil.php?p=sejarah" class="<?php echo $page == 'sejarah' ? 'active' : ''; ?>"><i class="fa-solid fa-book"></i> Sejarah Desa</a></li>
                    
                    <li><a href="profil.php?p=visi_misi" class="<?php echo $page == 'visi_misi' ? 'active' : ''; ?>"><i class="fa-solid fa-flag"></i> Visi & Misi Desa</a></li>
                    
                    <li><a href="profil.php?p=pemerintah" class="<?php echo $page == 'pemerintah' ? 'active' : ''; ?>"><i class="fa-solid fa-people-group"></i> Struktur Organisasi</a></li>
                    
                    <li><a href="profil.php?p=penduduk" class="<?php echo $page == 'penduduk' ? 'active' : ''; ?>"><i class="fa-solid fa-users"></i> Data Penduduk</a></li>
                </ul>
            </div>
        </div>
        
        <div class="main-area profile-main">
            <div class="card profile-content-card">
                <h2><?php echo $title; ?></h2>
                
                <?php 
                // Logika sederhana untuk memuat konten
                switch ($page) {
                    case 'sejarah': 
                        echo "<p>Desa Jatisari didirikan pada tahun 19XX. Nama 'Jatisari' berasal dari kata Jati (pohon jati) dan Sari (inti/pusat). Sejarah desa ini banyak diwarnai oleh...</p>"; 
                        break;
                    case 'pemerintah': 
                        echo "<h3>Bagan Struktur Organisasi</h3>";
                        echo "<p>Berikut adalah bagan hirarki Pemerintahan Desa Jatisari:</p>";
                        echo "<div class='hirarki-chart'><div class='box'>Kepala Desa</div><div class='line'>↓</div><div class='box'>Sekretaris Desa</div><div class='line'>↓</div><div class='grid-bagan'><div class='box'>Kasi Pemerintahan</div><div class='box'>Kasi Pelayanan</div><div class='box'>Kaur Keuangan</div></div></div>";
                        break;
                    case 'penduduk':
                        echo "<h3>Statistik Penduduk Berdasarkan Usia</h3>";
                        echo "<p>Total Penduduk: 4.567 Jiwa</p>";
                        echo "<ul><li>0-17 Tahun: 1.200 Jiwa</li><li>18-59 Tahun: 3.000 Jiwa</li><li>60+ Tahun: 367 Jiwa</li></ul>";
                        break;
                    case 'visi_misi':
                        echo "<h3>Visi Desa Jatisari</h3>";
                        echo "<blockquote>**Mewujudkan Desa Jatisari yang Mandiri, Sejahtera, dan Berakhlak Mulia.**</blockquote>";
                        echo "<h3>Misi Desa Jatisari</h3>";
                        echo "<ol><li>Meningkatkan kualitas pelayanan publik dan transparansi pemerintahan desa.</li><li>Mengembangkan potensi ekonomi lokal melalui sektor pertanian dan UMKM.</li><li>Meningkatkan infrastruktur dasar desa yang mendukung mobilitas dan kesejahteraan masyarakat.</li><li>Memperkuat kerukunan antar warga dan nilai-nilai agama serta budaya.</li></ol>";
                        break;
                    default: // Default: wilayah
                        echo "<h3>Batas dan Luas Wilayah</h3>";
                        echo "<p>Desa Jatisari memiliki luas total 3.2 Km² dengan batas-batas:</p>";
                        echo "<ul><li>**Utara:** Berbatasan dengan Desa Karangturi.</li><li>**Selatan:** Berbatasan dengan Hutan Negara.</li><li>**Barat:** Berbatasan dengan Desa Tempel.</li><li>**Timur:** Berbatasan dengan Pantai Utara Jawa.</li></ul>";
                        break;
                }
                ?>
                
            </div>
        </div>

    </div>
    
    <footer>
        &copy; 2025 Pemerintah Desa Jatisari.
    </footer>

    <script src="script.js"></script>
</body>
</html>