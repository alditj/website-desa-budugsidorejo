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
// B. INISIALISASI PETA LEAFLET (Jika ada di halaman)
// =========================================================
function initMap() {
    if (!document.getElementById('mapid')) return;
    
    var jatisariCoords = [-6.7770, 111.4330]; 
    var map = L.map('mapid').setView(jatisariCoords, 14);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    L.marker(jatisariCoords).addTo(map)
        .bindPopup("<b>Kantor Desa Jatisari</b><br>Pusat Pelayanan Masyarakat.")
        .openPopup();
        
    window.map = map;
}

// =========================================================
// C. FUNGSI SLIDER OTOMATIS (Jika ada di index.html)
// =========================================================
function startAutoSlider(containerId, interval = 3000) {
    let slideIndex = 0;
    const slides = document.getElementById(containerId).getElementsByClassName(containerId === 'anggotaSlider' ? 'anggota-item-slide' : 'galeri-item-slide');

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
         slides[0].classList.remove('hidden-slide');
         setInterval(showSlides, interval);
    }
}


// =========================================================
// D. INI DIJALANKAN SAAT HALAMAN SELESAI DIMUAT
// =========================================================
document.addEventListener('DOMContentLoaded', function() {
    // Hanya inisialisasi Map dan Slider jika elemennya ada di halaman (biasanya di index.html)
    if (typeof L !== 'undefined') {
        initMap(); 
    }
    
    if(document.getElementById('anggotaSlider')) {
        startAutoSlider('anggotaSlider', 3000); 
    }

    if(document.getElementById('galeriSlider')) {
        startAutoSlider('galeriSlider', 3000);
    }
    
    setTimeout(function(){
        if(window.map) {
            window.map.invalidateSize();
        }
    }, 500);
});