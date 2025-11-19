<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Profil Desa - Jatisari</title>
    <link rel="stylesheet" href="style.css">
    
    <script>
        function showSection(sectionId) {
            document.getElementById('visi-misi').classList.add('hidden');
            document.getElementById('hirarki').classList.add('hidden');
            
            document.getElementById(sectionId).classList.remove('hidden');
        }
    </script>
</head>
<body>
    <header>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Logo_Garuda_Pancasila_Gold.svg/1200px-Logo_Garuda_Pancasila_Gold.svg.png" alt="Logo">
        <div>
            <h1>PROFIL PEMERINTAH DESA JATISARI</h1>
            <p>Visi Misi dan Struktur Organisasi</p>
        </div>
    </header>

    <nav>
        <ul>
            <li><a href="index.html">Beranda</a></li>
            <li><a href="profil.php">Profil Desa</a></li>
            <li><a href="form_surat.php">Buat Surat</a></li>
        </ul>
    </nav>

    <div class="container content">
        <div class="sidebar" style="flex:1; background:none; padding:0;">
            <h3>Sub Menu Profil</h3>
            <ul class="sub-menu">
                <li><a href="#" onclick="showSection('visi-misi')" class="active">Visi Misi</a></li>
                <li><a href="#" onclick="showSection('hirarki')">Hirarki Kepemimpinan</a></li>
            </ul>
        </div>
        
        <div class="main-area" style="flex:3;">
            
            <div id="visi-misi" class="card">
                <h2>Visi & Misi Desa Jatisari</h2>
                <h3>Visi</h3>
                <blockquote>"Terwujudnya Desa Jatisari yang Adil, Makmur, Sejahtera, dan Bermartabat melalui Tata Kelola Pemerintahan yang Bersih dan Profesional."</blockquote>
                
                <h3>Misi</h3>
                <ol>
                    <li>Meningkatkan kualitas sumber daya manusia dan tata kelola pemerintahan desa.</li>
                    <li>Mengembangkan potensi ekonomi lokal melalui UMKM dan pertanian.</li>
                    <li>Meningkatkan infrastruktur desa yang mendukung aksesibilitas dan kemajuan.</li>
                    <li>Menciptakan lingkungan yang aman, nyaman, dan religius.</li>
                </ol>
            </div>
            
            <div id="hirarki" class="card hidden">
                <h2>Hirarki Kepemimpinan Desa</h2>
                <p>Struktur Pemerintahan Desa Jatisari:</p>
                <div class="hirarki-chart">
                    <p class="box box-kades">Kepala Desa (Budi Santoso)</p>
                    <div class="line">↓</div>
                    <p class="box box-sekdes">Sekretaris Desa (Rina Wijaya)</p>
                    <div class="line">↓</div>
                    <div class="grid-bagan">
                        <p class="box box-kasi">Kasi Pemerintahan</p>
                        <p class="box box-kasi">Kasi Pelayanan</p>
                        <p class="box box-kasi">Kasi Kesejahteraan</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
    
    <footer>
        &copy; 2025 Pemerintah Desa Jatisari.
    </footer>
</body>
</html>