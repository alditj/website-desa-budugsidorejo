<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title><?php echo $title; ?> - Desa Budugsidorejo</title>
    <link rel="icon" href="image/logo.png" type="image/png">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
<body>
    
    <header>
        <img src="image/logo.png" alt="Logo">
        <div>
            <h1>PEMERINTAH DESA BUDUGSIDOREJO</h1>
            <p>Kecamatan Sumobito, Kabupaten Jombang, Jawa Timur</p>
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
                    <a href="form_kepemilikan_kendaraan.php">Surat Keterangan Kepemilikan Kendaraan</a>
                    
                    <a href="form_kuasa.php">Surat Kuasa</a>
                    <a href="form_sktm.php">Surat Keterangan Tidak Mampu (SKTM)</a>
                    <a href="form_sku.php">Surat Keterangan Usaha (SKU)</a>
                    <a href="form_kematian.php">Surat Keterangan Kematian</a>
                    <a href="form_kehilangan.php">Surat Keterangan Kehilangan</a>
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
                    <li><a href="profil.php?p=pemerintah" class="<?php echo $page == 'pemerintah' ? 'active' : ''; ?>"><i class="fa-solid fa-people-group"></i> Struktur Pemerintah</a></li>
                    <li><a href="profil.php?p=penduduk" class="<?php echo $page == 'penduduk' ? 'active' : ''; ?>"><i class="fa-solid fa-users"></i> Data Penduduk</a></li>
                </ul>
            </div>
        </div>
        
        <div class="main-area profile-main">
            <div class="card profile-content-card">
                <h2><?php echo $title; ?></h2>
                
                <?php 
                switch ($page) {
                    
                    case 'sejarah': 
                        echo "<h3>Asal-usul Nama dan Perkembangan Desa</h3>";
                        echo "<p>Menurut cerita para sesepuh, nama Budugsidorejo berasal dari gabungan tiga dusun yang sejak dahulu menjadi bagian wilayah desa, yaitu Dusun Budug, Dusun Sidokampir, dan Dusun Sembujo. Ketiga dusun ini kemudian dipersatukan dan melahirkan satu nama desa yang digunakan hingga sekarang.</p>";
                        
                        echo "<p>Secara historis, Desa Budugsidorejo berada di wilayah perbatasan antara Kabupaten Mojokerto dan Kabupaten Jombang. Pada masa penjajahan Belanda, daerah perbatasan ini menjadi salah satu titik pertahanan dan perlawanan rakyat pribumi Indonesia terhadap pasukan kolonial yang bermarkas di Mojokerto. Karena letaknya yang strategis, desa ini turut menjadi bagian dari perjalanan sejarah perjuangan masyarakat setempat.</p>";
                        
                        echo "<h4>Makna Nama Budugsidorejo</h4>";
                        echo "<p>Nama Budugsidorejo sendiri terbentuk dari gabungan makna beberapa kata:</p>";
                        echo "<ul>";
                        echo "<li>Budug menggambarkan gundukan tanah yang menjadi tempat bermukim penduduk.</li>";
                        echo "<li>Sido berarti “jadi” atau “terwujud”.</li>";
                        echo "<li>Rejo bermakna “ramai dan sejahtera”.</li>";
                        echo "</ul>";
                        echo "<p>Jika digabungkan, Budugsidorejo dapat dimaknai sebagai wilayah permukiman masyarakat yang hidup dalam keramaian, kedamaian, dan kesejahteraan. Harapan ini menjadi doa agar seluruh warga desa selalu berada dalam lindungan Allah Subhanahu wa Ta'ala.</p>";
                        
                        echo "<h4>Perkembangan Desa</h4>";
                        echo "<p>Seiring berjalannya waktu, Desa Budugsidorejo mengalami perkembangan dalam berbagai bidang. Pembangunan infrastruktur, penguatan pelayanan publik, serta berkembangnya kegiatan sosial dan ekonomi masyarakat menjadikan desa ini semakin maju dan mandiri. Tradisi gotong royong tetap terjaga, sementara generasi muda turut berperan aktif mendukung berbagai program desa.</p>";
                        
                        echo "<p>Dengan semangat kebersamaan dan dukungan seluruh warga, Desa Budugsidorejo terus bertumbuh menjadi desa yang sejahtera, harmonis, serta berdaya saing tinggi, tanpa meninggalkan nilai budaya dan sejarah yang diwariskan oleh para leluhur.</p>";
                        break;
                        
                    case 'pemerintah': 
                        $struktur_foto_path = 'image/diagram.png';
                        
                        echo "
                        <div style='text-align: center; padding: 20px;'>
                            <h3 style='color: #006400; margin-bottom: 30px;'>Berikut Merupakan Struktural Pemerintah Desa Budugsidorejo:</h3>
                            
                            <img src='{$struktur_foto_path}' alt='Struktur Organisasi Pemerintah Desa' style='max-width: 100%; height: auto; border: 1px solid #ddd; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);'>
                        </div>";
                        
                        break;
                        
                    case 'penduduk':
                        echo "
                        <p>Data kependudukan Desa Budugsidorejo berdasarkan Data Potensi Sosial Ekonomi Desa/Kelurahan Tahun 2018:</p>
                        
                        <h4>Jumlah Penduduk Menurut Jenis Kelamin</h4>
                        <table class='data-tabel'>
                            <thead>
                                <tr><th>No</th><th>Jenis Kelamin</th><th>Jumlah</th></tr>
                            </thead>
                            <tbody>
                                <tr><td>1</td><td>Laki – laki</td><td>3.230</td></tr>
                                <tr><td>2</td><td>Perempuan</td><td>3.544</td></tr>
                                <tr><td colspan='2'>Total Penduduk</td><td>6.774 Jiwa</td></tr>
                                <tr><td colspan='2'>Kepala Keluarga</td><td>1.923 KK</td></tr>
                            </tbody>
                        </table>

                        <h4>Jumlah Penduduk Menurut Golongan Umur</h4>
                        <table class='data-tabel'>
                            <thead>
                                <tr><th>No</th><th>Rentang Umur</th><th>Jumlah (Jiwa)</th></tr>
                            </thead>
                            <tbody>
                                <tr><td>1</td><td>> 65</td><td>98</td></tr>
                                <tr><td>2</td><td>60 – 65</td><td>178</td></tr>
                                <tr><td>3</td><td>55 – 60</td><td>280</td></tr>
                                <tr><td>4</td><td>50 – 55</td><td>281</td></tr>
                                <tr><td>5</td><td>45 – 50</td><td>681</td></tr>
                                <tr><td>6</td><td>40 – 45</td><td>831</td></tr>
                                <tr><td>7</td><td>35 – 40</td><td>689</td></tr>
                                <tr><td>8</td><td>30 – 35</td><td>706</td></tr>
                                <tr><td>9</td><td>25 – 30</td><td>711</td></tr>
                                <tr><td>10</td><td>20 – 25</td><td>831</td></tr>
                                <tr><td>11</td><td>15 – 20</td><td>541</td></tr>
                                <tr><td>12</td><td>10 – 15</td><td>463</td></tr>
                                <tr><td>13</td><td>5 – 10</td><td>345</td></tr>
                                <tr><td>14</td><td>< 5</td><td>139</td></tr>
                                <tr><td colspan='2'>Jumlah</td><td>6.773</td></tr>
                            </tbody>
                        </table>
                        
                        <h4>Jumlah Penduduk Menurut Agama</h4>
                        <table class='data-tabel'>
                            <thead>
                                <tr><th>Agama</th><th>Jumlah Penganut (orang)</th></tr>
                            </thead>
                            <tbody>
                                <tr><td>Islam</td><td>6773</td></tr>
                                <tr><td>Kristen</td><td>0</td></tr>
                                <tr><td>Katholik</td><td>0</td></tr>
                                <tr><td>Hindu</td><td>0</td></tr>
                                <tr><td>Budha</td><td>0</td></tr>
                                <tr><td>Total</td><td>6.773</td></tr>
                            </tbody>
                        </table>
                        
                        <h4>Jumlah Penduduk Menurut Tingkat Pendidikan</h4>
                        <table class='data-tabel'>
                            <thead>
                                <tr><th>No</th><th>Tingkat Pendidikan</th><th>Jumlah (orang)</th></tr>
                            </thead>
                            <tbody>
                                <tr><td>1</td><td>Tidak Sekolah / Buta Huruf</td><td>27</td></tr>
                                <tr><td>2</td><td>Tidak Tamat SD / Sederajat</td><td>198</td></tr>
                                <tr><td>3</td><td>Tamat SD Sederajat</td><td>301</td></tr>
                                <tr><td>4</td><td>Tamat SLTP / Sederajat</td><td>878</td></tr>
                                <tr><td>5</td><td>Tamat SLTA / Sederajat</td><td>2117</td></tr>
                                <tr><td>6</td><td>TAMAT D1, D2, D3</td><td>68</td></tr>
                                <tr><td>7</td><td>Sarjana S1 / S-1</td><td>23</td></tr>
                            </tbody>
                        </table>
                        
                        ";
                        break;
                        
                    case 'visi_misi':
                        echo "<h3>Visi Desa Jatisari</h3>";
                        echo "<blockquote>Terwujudnya masyarakat desa budugsidorejo yang sejahtera dan mandiri terdepan di bidang pertanian.</blockquote>";
                        echo "<h3>Misi Desa Jatisari</h3>";
                        echo "<ol><li>Mewujudkan tata kelola pemerintah Desa Budugsidorejo yang bersih, transparan, dan profesional.</li>
                        <li>Mewujudkan kualitas sumber daya manusia yang berkarakter dan berdaya saing.</li>
                        <li>Meningkatkan kesejahteraan ekonomi masyarakat desa Budugsidorejo.</li>
                        <li>Memfasilitasi pembinaan bagi warga dan lembaga Desa Budugsidorejo.</li></ol>";
                        break;
                        
                    case 'wilayah': 
                        echo "
                        <h3>Letak dan Batas Wilayah</h3>
                        <div style='text-align: justify; line-height: 1.5; font-size: 16px;'>
                            <p>
                                Desa Budugsidorejo merupakan salah satu dari 21 desa di wilayah Kecamatan Sumobito,
                                Kabupaten Jombang. Desa ini terletak sekitar 6 km ke arah barat daya dari pusat
                                Kecamatan Sumobito dan berbatasan langsung dengan Kabupaten Mojokerto. Luas wilayah
                                Desa Budugsidorejo adalah ±424 hektar.
                            </p>

                            <p><strong>Batas-batas Desa Budugsidorejo:</strong></p>

                            <ul style='margin-left: 20px;'>
                                <li><strong>Utara:</strong> Desa Kendalsari (Kecamatan Sumobito) dan Desa Jombok (Kecamatan Kesamben, Kabupaten Jombang)</li>
                                <li><strong>Selatan:</strong> Desa Curahmalang (Kecamatan Sumobito, Kabupaten Jombang)</li>
                                <li><strong>Timur:</strong> Desa Balongwono (Kecamatan Trowulan, Kabupaten Mojokerto)</li>
                                <li><strong>Barat:</strong> Desa Curahmalang dan Desa Kendalsari (Kecamatan Sumobito, Kabupaten Jombang)</li>
                            </ul>

                            <h4>Iklim</h4>
                            <p>
                                Iklim Desa Budugsidorejo serupa dengan desa-desa lain di wilayah Indonesia, yakni
                                memiliki musim kemarau dan musim penghujan. Kondisi iklim ini mempengaruhi pola
                                tanam dan kegiatan pertanian di desa.
                            </p>

                            <h4>Kondisi Umum</h4>
                            <p>
                                Wilayah Desa Budugsidorejo terdiri dari beberapa dusun dengan karakteristik geografis
                                yang beragam, didominasi oleh lahan pertanian.
                            </p>
                        </div>
                        ";
                        break;
                    
                    default: // Ketika URL dipanggil tanpa parameter (default: visi_misi)
                        echo "<h3>Visi Desa Jatisari</h3>";
                        echo "<blockquote>Mewujudkan Desa Jatisari yang Mandiri, Sejahtera, dan Berakhlak Mulia.</blockquote>";
                        echo "<h3>Misi Desa Jatisari</h3>";
                        echo "<ol><li>Meningkatkan kualitas pelayanan publik dan transparansi pemerintahan desa.</li><li>Mengembangkan potensi ekonomi lokal melalui sektor pertanian dan UMKM.</li><li>Meningkatkan infrastruktur dasar desa yang mendukung mobilitas dan kesejahteraan masyarakat.</li><li>Memperkuat kerukunan antar warga dan nilai-nilai agama serta budaya.</li></ol>";
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