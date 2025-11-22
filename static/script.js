// A. FUNGSI TOGGLE DROPDOWN SURAT (Hanya di navigasi utama)
// =========================================================
function toggleDropdown() {
    document.getElementById("suratDropdown").classList.toggle("show");
}

// Tutup dropdown surat jika user mengklik di luar area
window.onclick = function(event) {
    if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        for (var i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
            }
        }
    }
}

// =========================================================
// B. INISIALISASI PETA LEAFLET (DIHAPUS - KARENA MENGGUNAKAN IFRAME)
// =========================================================
/*
// Fungsi initMap dan semua kode yang berhubungan dengan Leaflet dihapus
function initMap() { 
    // ... Dihapus
}
*/

// =========================================================
// C. FUNGSI SLIDER OTOMATIS (Jika ada di index.html)
// =========================================================
function startAutoSlider(containerId, interval = 3000) {
    let slideIndex = 0;
    // Menentukan nama kelas slide berdasarkan ID kontainer
    const slideClassName = (containerId === 'anggotaSlider') ? 'anggota-item-slide' : 'galeri-item-slide';
    const slides = document.getElementById(containerId).getElementsByClassName(slideClassName);

    function showSlides() {
        for (let i = 0; i < slides.length; i++) {
            slides[i].classList.add('hidden-slide');
        }
        
        slideIndex++;
        if (slideIndex >= slides.length) {
            slideIndex = 0; 
        }
        
        slides[slideIndex].classList.remove('hidden-slide');
    }
    
    if (slides.length > 0) {
         // Pastikan slide pertama terlihat saat inisialisasi
         slides[0].classList.remove('hidden-slide');
         // Mulai interval
         setInterval(showSlides, interval);
    }
}


// =========================================================
// D. INI DIJALANKAN SAAT HALAMAN SELESAI DIMUAT
// =========================================================
document.addEventListener('DOMContentLoaded', function() {
    
    // PANGGILAN initMap() DIHAPUS

    if(document.getElementById('anggotaSlider')) {
        startAutoSlider('anggotaSlider', 3000); 
    }

    if(document.getElementById('galeriSlider')) {
        startAutoSlider('galeriSlider', 3000);
    }
    
    // PANGGILAN setTimeout/invalidateSize() DIHAPUS
});