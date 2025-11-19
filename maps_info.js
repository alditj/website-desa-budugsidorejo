// maps_info.js (Jika file ini belum ada)

// Inisialisasi Peta Leaflet
var map = L.map('mapid').setView([-7.5502, 112.2355], 13); // Ganti koordinat ini dengan lokasi Desa Anda

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

// Tambahkan marker (Penanda lokasi kantor)
L.marker([-7.5502, 112.2355]).addTo(map)
    .bindPopup('Kantor Kepala Desa Jatisari')
    .openPopup();

// Tambahkan kode ini agar peta berfungsi jika terjadi masalah ukuran
setTimeout(function(){
    map.invalidateSize();
}, 500);