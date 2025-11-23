-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2025 pada 00.01
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot_db`
--
CREATE DATABASE IF NOT EXISTS `chatbot_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chatbot_db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id_pertanyaan` int(11) NOT NULL,
  `kata_kunci` varchar(100) NOT NULL,
  `jawaban_teks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id_pertanyaan`, `kata_kunci`, `jawaban_teks`) VALUES
(1, 'program', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(2, 'biaya', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(3, 'daftar', 'Cara mendaftar:\n1. Hubungi admin via WhatsApp\n2. Isi formulir pendaftaran\n3. Lakukan pembayaran DP\n4. Mulai kursus sesuai jadwal'),
(4, 'program 1 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(5, 'kursus 1 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(6, 'paket 1 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(7, 'sebulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(8, '1 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(9, '1 bln', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(10, 'bln 1', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(11, 'cepat', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(12, 'kursus singkat', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(13, 'singkat', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(14, '5jt', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(15, '5 juta', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(16, '5000000', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(17, '5.000.000', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(18, 'program 3 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(19, 'kursus 3 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(20, 'paket 3 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(21, 'tiga bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(22, '3 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(23, '3 bln', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(24, 'menengah', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(25, 'sedang', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(26, 'kursus medium', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(27, '10jt', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(28, '10jt', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(29, '10000000', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(30, '10.000.000', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(31, 'program 6 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(32, 'kursus 6 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(33, 'paket 6 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(34, 'enam bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(35, '6 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(36, '6 bln', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(37, 'bln 6', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(39, 'setengah tahun', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(40, 'jangka panjang', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(41, '15jt', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(42, '15 juta', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(43, '15000000', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(44, '15.000.000', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(45, 'program 1 tahun', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(46, 'kursus 1 tahun', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(47, 'paket 1 tahun', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(48, 'satu tahun', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(49, '12 bulan', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(50, 'setahun', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(51, '1 thn', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(52, '12 bln', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(53, 'paling lengkap', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(54, 'advanced', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(55, 'full program', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(56, '20jt', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(57, '20 juta', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(58, '20000000', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(59, '20.000.000', 'Berikut daftar program pelatihan:\r\n\r\n- Program 1 Bulan (Rp 5.000.000)\r\n- Program 3 Bulan (Rp 10.000.000)\r\n- Program 6 Bulan (Rp 15.000.000)\r\n- Program 1 Tahun (Rp 20.000.000)\r\n- Khusus Profesi Guru ada Promo'),
(60, 'biaya pembelajaran', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(61, 'uang pembelajaran', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(62, 'pembelajaran biaya', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(63, 'biaya seragam', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(64, 'biaya modul', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(65, 'ongkos', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(66, 'uang pembelajaran', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(72, 'seragam', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(73, 'baju seragam', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(74, 'kaos', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(75, 'pakaian kursus', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(76, 'modul', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(77, 'buku', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(79, 'bahan ajar', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(80, 'baju', 'Biaya pembelajaran mulai dari 1 bulan,3 bulan, 6 bulan, dan 1 tahun sudah termasuk seragam dan modul ajar'),
(81, 'cara daftar', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(82, 'cara mendaftar', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(83, 'langkah daftar', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(84, 'prosedur daftar', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(85, 'panduan pendaftaran', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(86, 'registrasi', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(87, 'tata cara masuk', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(88, 'daftar kursus', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(89, 'hubungi admin', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(90, 'kontak admin', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(91, 'wa admin', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(92, 'whatsapp', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(93, 'nomor wa', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(94, 'cs', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(95, 'customer service', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(96, 'call admin', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(97, 'isi formulir', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(98, 'form daftar', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(99, 'form registrasi', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(100, 'daftar form', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(101, 'pengisian formulir', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(102, 'formulir online', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(103, 'formulir manual', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(106, 'pembayaran awal', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(107, 'down payment', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(108, 'cicilan awal', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran\r\n4. Mulai kursus sesuai jadwal'),
(110, 'deposit', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(112, 'mulai kursus', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(113, 'ikut kursus', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(114, 'awal kursus', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(115, 'jadwal kursus', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(116, 'waktu mulai', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(117, 'masuk kelas', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(118, 'mulai belajar', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(119, 'regis', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(120, 'jadwal', 'Kapan jadwal pendaftaran dibuka?\r\n\r\nPendaftaran dibuka sepanjang tahun. Peserta bisa memilih program sesuai waktu yang tersedia.\r\n'),
(121, 'dibuka', 'Kapan jadwal pendaftaran dibuka?\r\n\r\nPendaftaran dibuka sepanjang tahun. Peserta bisa memilih program sesuai waktu yang tersedia.\r\n'),
(122, 'waktu', 'Kapan jadwal pendaftaran dibuka?\r\n\r\nPendaftaran dibuka sepanjang tahun. Peserta bisa memilih program sesuai waktu yang tersedia.\r\n'),
(123, 'kapan', 'Kapan jadwal pendaftaran dibuka?\r\n\r\nPendaftaran dibuka sepanjang tahun. Peserta bisa memilih program sesuai waktu yang tersedia.\r\n'),
(124, 'syarat', 'Apakah ada syarat khusus untuk mendaftar?\r\n\r\nTidak ada syarat khusus. Minimal sudah lulus SMP/SMA sederajat dan memiliki motivasi untuk belajar otomotif.\r\n'),
(125, 'ketentuan', 'Apakah ada syarat khusus untuk mendaftar?\r\n\r\nTidak ada syarat khusus. Minimal sudah lulus SMP/SMA sederajat dan memiliki motivasi untuk belajar otomotif.\r\n'),
(126, 'ijazah', 'Apakah ada syarat khusus untuk mendaftar?\r\n\r\nTidak ada syarat khusus. Minimal sudah lulus SMP/SMA sederajat dan memiliki motivasi untuk belajar otomotif.\r\n'),
(127, 'bayar', 'Bagaimana cara melakukan pembayaran kursus?\r\n\r\nPembayaran bisa dilakukan secara tunai di kantor kami atau transfer ke rekening resmi setelah konfirmasi pendaftaran.\r\n'),
(128, 'pembayaran', 'Bagaimana cara melakukan pembayaran kursus?\r\n\r\nPembayaran bisa dilakukan secara tunai di kantor kami atau transfer ke rekening resmi setelah konfirmasi pendaftaran.\r\n'),
(129, 'transfer', 'Bagaimana cara melakukan pembayaran kursus?\r\n\r\nPembayaran bisa dilakukan secara tunai di kantor kami atau transfer ke rekening resmi setelah konfirmasi pendaftaran.\r\n'),
(130, 'tunai', 'Bagaimana cara melakukan pembayaran kursus?\r\n\r\nPembayaran bisa dilakukan secara tunai di kantor kami atau transfer ke rekening resmi setelah konfirmasi pendaftaran.\r\n'),
(131, 'rekening', 'Bagaimana cara melakukan pembayaran kursus?\r\n\r\nPembayaran bisa dilakukan secara tunai di kantor kami atau transfer ke rekening resmi setelah konfirmasi pendaftaran.\r\n'),
(132, 'bank', 'Bagaimana cara melakukan pembayaran kursus?\r\n\r\nPembayaran bisa dilakukan secara tunai di kantor kami atau transfer ke rekening resmi setelah konfirmasi pendaftaran.\r\n'),
(133, 'cicil', 'Apakah biaya kursus bisa dicicil?\r\n\r\nYa, biaya bisa diangsur sesuai masa pelatihan. Contohnya, program 6 bulan bisa dicicil per bulan atau semampunya dulu, tidak harus langsung full 15 juta.\r\n'),
(134, 'angsuran', 'Apakah biaya kursus bisa dicicil?\r\n\r\nYa, biaya bisa diangsur sesuai masa pelatihan. Contohnya, program 6 bulan bisa dicicil per bulan atau semampunya dulu, tidak harus langsung full 15 juta.'),
(135, 'bertahap', 'Apakah biaya kursus bisa dicicil?\r\n\r\nYa, biaya bisa diangsur sesuai masa pelatihan. Contohnya, program 6 bulan bisa dicicil per bulan atau semampunya dulu, tidak harus langsung full 15 juta.'),
(136, 'diskon', 'Apakah ada potongan harga atau beasiswa?\r\n\r\nKami memberikan potongan khusus untuk profesi guru, tidak ada potongan untuk beasiswa.'),
(137, 'potongan', 'Apakah ada potongan harga atau beasiswa?\r\n\r\nKami memberikan potongan khusus untuk profesi guru, tidak ada potongan untuk beasiswa.'),
(138, 'promo', 'Apakah ada potongan harga atau beasiswa?\r\n\r\nKami memberikan potongan khusus untuk profesi guru, tidak ada potongan untuk beasiswa.'),
(139, 'beasiswa', 'Apakah ada potongan harga atau beasiswa?\r\n\r\nKami memberikan potongan khusus untuk profesi guru, tidak ada potongan untuk beasiswa.'),
(140, 'tambahan', 'Apakah ada biaya tambahan selain biaya kursus?\r\n\r\nTidak ada biaya tambahan tersembunyi. Biaya sudah mencakup modul, seragam, fasilitas praktik, dan ujian.\r\n'),
(141, 'extra', 'Apakah ada biaya tambahan selain biaya kursus?\r\n\r\nTidak ada biaya tambahan tersembunyi. Biaya sudah mencakup modul, seragam, fasilitas praktik, dan ujian.'),
(142, 'nyicil', 'Apakah biaya kursus bisa dicicil?\r\n\r\nYa, biaya bisa diangsur sesuai masa pelatihan. Contohnya, program 6 bulan bisa dicicil per bulan atau semampunya dulu, tidak harus langsung full 15 juta.'),
(146, 'formulir', 'Cara mendaftar:\r\n1. Hubungi admin via WhatsApp\r\n2. Isi formulir pendaftaran\r\n3. Lakukan pembayaran DP\r\n4. Mulai kursus sesuai jadwal'),
(147, 'kursus', 'Apa saja kursus yang tersedia?\r\n\r\nKami menyediakan program 1 bulan, 3 bulan, 6 bulan, hingga 1 tahun, dengan materi dari dasar hingga tingkat lanjut.\r\n'),
(148, 'perbedaan', 'Apa bedanya program 3 bulan, 6 bulan, dan 1 tahun?\r\n\r\nPerbedaan terletak pada kedalaman materi dan lama praktik. Program 3 bulan tidak ada magang dan penyaluran kerja, Program 6 bulan ada magang tapi tidak ada penyaluran kerja, sedangkan Program 1 tahun mencakup magang dan penyaluran kerja.'),
(149, 'beda', 'Apa bedanya program 3 bulan, 6 bulan, dan 1 tahun?\r\n\r\nPerbedaan terletak pada kedalaman materi dan lama praktik. Program 3 bulan tidak ada magang dan penyaluran kerja, Program 6 bulan ada magang tapi tidak ada penyaluran kerja, sedangkan Program 1 tahun mencakup magang dan penyaluran kerja.'),
(150, 'bedanya', 'Apa bedanya program 3 bulan, 6 bulan, dan 1 tahun?\r\n\r\nPerbedaan terletak pada kedalaman materi dan lama praktik. Program 3 bulan tidak ada magang dan penyaluran kerja, Program 6 bulan ada magang tapi tidak ada penyaluran kerja, sedangkan Program 1 tahun mencakup magang dan penyaluran kerja.'),
(151, 'memilih', 'Apakah bisa memilih materi tertentu saja?\r\n\r\nTidak. Peserta mengikuti kurikulum lengkap agar kompetensi yang didapat menyeluruh.\r\n'),
(152, 'milih', 'Apakah bisa memilih materi tertentu saja?\r\n\r\nTidak. Peserta mengikuti kurikulum lengkap agar kompetensi yang didapat menyeluruh.\r\n'),
(153, 'materi', 'Apakah bisa memilih materi tertentu saja?\r\n\r\nTidak. Peserta mengikuti kurikulum lengkap agar kompetensi yang didapat menyeluruh.\r\n'),
(154, 'sebagian', 'Apakah bisa memilih materi tertentu saja?\r\n\r\nTidak. Peserta mengikuti kurikulum lengkap agar kompetensi yang didapat menyeluruh.\r\n'),
(155, 'kurikulum', 'Apakah bisa memilih materi tertentu saja?\r\n\r\nTidak. Peserta mengikuti kurikulum lengkap agar kompetensi yang didapat menyeluruh.\r\n'),
(156, 'sertifikat', 'Apakah setelah lulus dapat sertifikat?\r\n\r\nYa, peserta akan mendapat sertifikat resmi sebagai bukti kompetensi.\r\n'),
(157, 'lulus', 'Apakah setelah lulus dapat sertifikat?\r\n\r\nYa, peserta akan mendapat sertifikat resmi sebagai bukti kompetensi.\r\n'),
(158, 'magang', 'Apakah ada program magang?\r\n\r\nYa, khusus program 6 bulan dan 1 tahun, peserta akan mendapatkan magang di bengkel mitra.\r\n'),
(159, 'praktek', 'Apakah ada program magang?\r\n\r\nYa, khusus program 6 bulan dan 1 tahun, peserta akan mendapatkan magang di bengkel mitra.\r\n'),
(160, 'kerja', 'Apakah ada program magang?\r\n\r\nYa, khusus program 6 bulan dan 1 tahun, peserta akan mendapatkan magang di bengkel mitra.\r\n'),
(161, 'fasilitas', 'Fasilitas apa saja yang disediakan?\r\n\r\nKami menyediakan mobil praktik, engine stand, peralatan bengkel lengkap, ruang teori, serta bimbingan instruktur berpengalaman.\r\n'),
(162, 'alat', 'Fasilitas apa saja yang disediakan?\r\n\r\nKami menyediakan mobil praktik, engine stand, peralatan bengkel lengkap, ruang teori, serta bimbingan instruktur berpengalaman.\r\n'),
(163, 'peralatan', 'Fasilitas apa saja yang disediakan?\r\n\r\nKami menyediakan mobil praktik, engine stand, peralatan bengkel lengkap, ruang teori, serta bimbingan instruktur berpengalaman.\r\n'),
(164, 'ruang', 'Fasilitas apa saja yang disediakan?\r\n\r\nKami menyediakan mobil praktik, engine stand, peralatan bengkel lengkap, ruang teori, serta bimbingan instruktur berpengalaman.\r\n'),
(165, 'teori', 'Apakah lebih banyak teori atau praktik?\r\n\r\n70% praktik dan 30% teori. Fokus kami adalah keterampilan langsung di lapangan.\r\n'),
(166, 'praktik', 'Apakah lebih banyak teori atau praktik?\r\n\r\n70% praktik dan 30% teori. Fokus kami adalah keterampilan langsung di lapangan.\r\n'),
(168, 'asrama', 'Apakah tersedia asrama bagi peserta dari luar kota?\r\n\r\nTidak ada asrama atau kos di tempat bengkel pembelajaran tapi kami bisa membantu mencarikan tempat kos/kontrakan di sekitar lokasi kursus.'),
(169, 'kos', 'Apakah tersedia asrama bagi peserta dari luar kota?\r\n\r\nTidak ada asrama atau kos di tempat bengkel pembelajaran tapi kami bisa membantu mencarikan tempat kos/kontrakan di sekitar lokasi kursus.\r\n'),
(170, 'kontrakan', 'Apakah tersedia asrama bagi peserta dari luar kota?\r\n\r\nTidak ada asrama atau kos di tempat bengkel pembelajaran tapi kami bisa membantu mencarikan tempat kos/kontrakan di sekitar lokasi kursus.\r\n'),
(171, 'bengkel resmi', 'Apakah lulusan bisa bekerja di bengkel resmi?\r\n\r\nLulusan bisa melamar ke bengkel resmi maupun bengkel umum karena sudah memiliki dasar dan keterampilan yang cukup.\r\n'),
(172, 'lulusan', 'Apakah lulusan bisa bekerja di bengkel resmi?\r\n\r\nLulusan bisa melamar ke bengkel resmi maupun bengkel umum karena sudah memiliki dasar dan keterampilan yang cukup.\r\n'),
(173, 'dealer', 'Apakah lulusan bisa bekerja di bengkel resmi?\r\n\r\nLulusan bisa melamar ke bengkel resmi maupun bengkel umum karena sudah memiliki dasar dan keterampilan yang cukup.\r\n'),
(174, 'pengalaman', 'Apakah harus punya pengalaman otomotif sebelumnya?\r\n\r\nTidak perlu. Kursus dimulai dari dasar sehingga cocok untuk pemula.\r\n'),
(175, 'basic', 'Apakah harus punya pengalaman otomotif sebelumnya?\r\n\r\nTidak perlu. Kursus dimulai dari dasar sehingga cocok untuk pemula.\r\n'),
(176, 'dasar', 'Apakah harus punya pengalaman otomotif sebelumnya?\r\n\r\nTidak perlu. Kursus dimulai dari dasar sehingga cocok untuk pemula.\r\n'),
(177, 'laki-laki', 'Apakah kursus hanya untuk laki-laki?\r\n\r\nTidak, kursus terbuka untuk semua orang, baik laki-laki maupun perempuan.\r\n'),
(178, 'cowok', 'Apakah kursus hanya untuk laki-laki?\r\n\r\nTidak, kursus terbuka untuk semua orang, baik laki-laki maupun perempuan.\r\n'),
(179, 'usia', 'Berapa usia minimal untuk ikut kursus?\r\n\r\nMinimal 15 tahun atau sudah lulus SMP sederajat.\r\n'),
(180, 'minimal', 'Berapa usia minimal untuk ikut kursus?\r\n\r\nMinimal 15 tahun atau sudah lulus SMP sederajat.\r\n'),
(181, 'umur', 'Berapa usia minimal untuk ikut kursus?\r\n\r\nMinimal 15 tahun atau sudah lulus SMP sederajat.\r\n'),
(182, 'sekolah', 'Apakah kursus bisa diikuti sambil sekolah/kuliah/kerja?\r\n\r\nBisa, selama waktu belajar disesuaikan dengan jadwal kursus.\r\n'),
(183, 'kuliah', 'Apakah kursus bisa diikuti sambil sekolah/kuliah/kerja?\r\n\r\nBisa, selama waktu belajar disesuaikan dengan jadwal kursus.\r\n'),
(184, 'kerja', 'Apakah kursus bisa diikuti sambil sekolah/kuliah/kerja?\r\n\r\nBisa, selama waktu belajar disesuaikan dengan jadwal kursus.\r\n'),
(185, 'online', 'Apakah ada kelas online?\r\n\r\nUntuk saat ini, semua program hanya dilakukan secara tatap muka/praktik langsung di bengkel.\r\n'),
(186, 'daring', 'Apakah ada kelas online?\r\n\r\nUntuk saat ini, semua program hanya dilakukan secara tatap muka/praktik langsung di bengkel.\r\n'),
(187, 'zoom', 'Apakah ada kelas online?\r\n\r\nUntuk saat ini, semua program hanya dilakukan secara tatap muka/praktik langsung di bengkel.\r\n'),
(188, 'gmeet', 'Apakah ada kelas online?\r\n\r\nUntuk saat ini, semua program hanya dilakukan secara tatap muka/praktik langsung di bengkel.\r\n'),
(189, 'google meet', 'Apakah ada kelas online?\r\n\r\nUntuk saat ini, semua program hanya dilakukan secara tatap muka/praktik langsung di bengkel.\r\n'),
(190, 'tatap muka', 'Apakah ada kelas online?\r\n\r\nUntuk saat ini, semua program hanya dilakukan secara tatap muka/praktik langsung di bengkel.\r\n'),
(191, 'bayar bertahap', 'Apakah biaya kursus bisa dicicil?\r\n\r\nYa, biaya bisa diangsur sesuai masa pelatihan. Contohnya, program 6 bulan bisa dicicil per bulan atau semampunya dulu, tidak harus langsung full 15 juta.\r\n'),
(192, 'hidden cost', 'Apakah ada biaya tambahan selain biaya kursus?\r\n\r\nTidak ada biaya tambahan tersembunyi. Biaya sudah mencakup modul, seragam, fasilitas praktik, dan ujian.\r\n'),
(193, 'biaya tersembunyi', 'Apakah ada biaya tambahan selain biaya kursus?\r\n\r\nTidak ada biaya tambahan tersembunyi. Biaya sudah mencakup modul, seragam, fasilitas praktik, dan ujian.\r\n'),
(194, 'penginapan', 'Apakah tersedia asrama bagi peserta dari luar kota?\r\n\r\nTidak ada asrama atau kos di tempat bengkel pembelajaran tapi kami bisa membantu mencarikan tempat kos/kontrakan di sekitar lokasi kursus.\r\n'),
(195, 'tempat tinggal', 'Apakah tersedia asrama bagi peserta dari luar kota?\r\n\r\nTidak ada asrama atau kos di tempat bengkel pembelajaran tapi kami bisa membantu mencarikan tempat kos/kontrakan di sekitar lokasi kursus.\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_chat`
--

CREATE TABLE `log_chat` (
  `id_chat` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `teks_pengguna` text NOT NULL,
  `teks_bot` text NOT NULL,
  `waktu_chat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indeks untuk tabel `log_chat`
--
ALTER TABLE `log_chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT untuk tabel `log_chat`
--
ALTER TABLE `log_chat`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- Database: `citlali`
--
CREATE DATABASE IF NOT EXISTS `citlali` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `citlali`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'nice', '2025-02-26 13:31:01', '2025-02-26 13:31:18'),
(3, 3, 1, '面白いい', '2025-05-10 17:36:32', '2025-05-10 17:36:32'),
(6, 7, 6, 'bagus', '2025-05-30 12:12:28', '2025-05-30 12:12:28'),
(7, 5, 4, 'bagus', '2025-05-30 12:14:10', '2025-05-30 12:14:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-02-26 13:30:49', '2025-02-26 13:30:49'),
(3, 3, 2, '2025-05-10 17:35:44', '2025-05-10 17:35:44'),
(4, 3, 1, '2025-05-10 17:43:27', '2025-05-10 17:43:27'),
(10, 4, 1, '2025-05-17 18:43:23', '2025-05-17 18:43:23'),
(11, 4, 3, '2025-05-17 18:43:25', '2025-05-17 18:43:25'),
(12, 5, 3, '2025-05-30 06:00:36', '2025-05-30 06:00:36'),
(13, 5, 4, '2025-05-30 06:02:15', '2025-05-30 06:02:15'),
(14, 6, 5, '2025-05-30 07:09:08', '2025-05-30 07:09:08'),
(15, 5, 5, '2025-05-30 12:08:21', '2025-05-30 12:08:21'),
(16, 7, 6, '2025-05-30 12:12:15', '2025-05-30 12:12:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_06_10_131515_create_posts_table', 1),
(6, '2021_06_10_131527_create_comments_table', 1),
(7, '2021_06_10_131538_create_likes_table', 1),
(8, '2025_02_26_200143_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'secret', '37c859262b9d440d9fd410a3f0daa54e2555fa1539062b8a740dbc07b59e14ff', '[\"*\"]', NULL, '2025-02-26 13:06:20', '2025-02-26 13:06:20'),
(2, 'App\\Models\\User', 1, 'secret', 'f8c0c9354cb65fd28bd26fd25e6454fa779796e107edf81e7b23726039a8b3cf', '[\"*\"]', '2025-02-26 13:34:25', '2025-02-26 13:19:40', '2025-02-26 13:34:25'),
(3, 'App\\Models\\User', 2, 'secret', '10c7e198152fa5406e93f1a3b0542019a7319e690c32b85c7bb9381c4e745fb5', '[\"*\"]', NULL, '2025-02-28 16:31:23', '2025-02-28 16:31:23'),
(4, 'App\\Models\\User', 2, 'secret', 'b91a5b192156267f5771367fbced497f316aab67848cd12ed90fc4857c1b7eb2', '[\"*\"]', '2025-03-04 02:26:44', '2025-03-04 02:26:40', '2025-03-04 02:26:44'),
(5, 'App\\Models\\User', 2, 'secret', '542ad3580f79f4ad17cb4d3c7e5656a571b8b23b231904fed654a4fd365df4f4', '[\"*\"]', '2025-05-08 19:01:07', '2025-05-08 18:59:59', '2025-05-08 19:01:07'),
(6, 'App\\Models\\User', 2, 'secret', '89a96bf2a5f1908eaa74f08edf870c2f2849808abc135b7ce3f50e0d726553a5', '[\"*\"]', '2025-05-10 17:33:02', '2025-05-10 17:32:41', '2025-05-10 17:33:02'),
(7, 'App\\Models\\User', 3, 'secret', '178e9cdec1b67a73eeb77ac9b01a1fa5d3b372d687f23c702dee8f65819b9ae6', '[\"*\"]', '2025-05-10 17:36:38', '2025-05-10 17:33:46', '2025-05-10 17:36:38'),
(8, 'App\\Models\\User', 3, 'secret', '988482f019cccd2f3b471efb67a641d97e400e55091e14b7d62af075b14d588c', '[\"*\"]', '2025-05-10 17:48:02', '2025-05-10 17:42:59', '2025-05-10 17:48:02'),
(9, 'App\\Models\\User', 4, 'secret', '651c208eb2cb25856a2c817cecf3a4d7879dc46923573ab370f40cf8be4544e3', '[\"*\"]', '2025-05-17 18:44:57', '2025-05-17 18:38:38', '2025-05-17 18:44:57'),
(10, 'App\\Models\\User', 3, 'secret', 'a3165b980c01ae1b365c41956107a05ddc7a15a63a626cafd5db70509d2212f1', '[\"*\"]', '2025-05-18 22:30:03', '2025-05-18 22:29:56', '2025-05-18 22:30:03'),
(11, 'App\\Models\\User', 3, 'secret', '4da367b59126250fa9ff835f2655a6e8b050373221686b0c0cbcd71b97ffe9dc', '[\"*\"]', '2025-05-18 23:18:45', '2025-05-18 22:52:01', '2025-05-18 23:18:45'),
(12, 'App\\Models\\User', 3, 'secret', 'cb6531e37fdd6e0e204b87a9c792d7244120a974992623600561d4c540a9661f', '[\"*\"]', '2025-05-18 23:25:13', '2025-05-18 23:25:05', '2025-05-18 23:25:13'),
(13, 'App\\Models\\User', 5, 'secret', '241841ecb3f9af2e7661e1d852c557d37e42ddb416cfcc838f0ce500004b5831', '[\"*\"]', '2025-05-30 06:02:15', '2025-05-30 05:59:42', '2025-05-30 06:02:15'),
(14, 'App\\Models\\User', 6, 'secret', '6c001443d1a806b07fe48d4f9d7204d8d768b25192451151a0e4d84e099f83ff', '[\"*\"]', '2025-05-30 07:09:41', '2025-05-30 07:07:18', '2025-05-30 07:09:41'),
(15, 'App\\Models\\User', 5, 'secret', '6996d1f0563ad7e4a5d4938134db2c59bafc791bd33c1edeb6097c1a42e4e008', '[\"*\"]', '2025-05-30 12:09:02', '2025-05-30 12:08:01', '2025-05-30 12:09:02'),
(16, 'App\\Models\\User', 7, 'secret', 'b031d194ebc6406dbe00150ac0ea8ff57c8eaea86327fd1724c4e0e603436d5f', '[\"*\"]', '2025-05-30 12:12:29', '2025-05-30 12:10:37', '2025-05-30 12:12:29'),
(17, 'App\\Models\\User', 5, 'secret', '6284d3ae279572897bb3539ea2cc8ea5ce97c18895bda1a34a9f206a8f4734b7', '[\"*\"]', '2025-05-30 12:14:39', '2025-05-30 12:13:38', '2025-05-30 12:14:39'),
(18, 'App\\Models\\User', 5, 'secret', '23e33f21f037117551889a9005c1f7e2eb5ad4df5bc86c0d427cb608c56d4316', '[\"*\"]', '2025-05-30 13:36:58', '2025-05-30 13:36:55', '2025-05-30 13:36:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', NULL, '2025-02-26 13:30:26', '2025-02-26 13:30:26'),
(2, 3, 'おはよ、私だよなんば２だよ', NULL, '2025-05-10 17:35:24', '2025-05-10 17:46:00'),
(3, 4, 'test 4', NULL, '2025-05-17 18:40:07', '2025-05-17 18:40:07'),
(4, 5, 'hari ini cerah', NULL, '2025-05-30 06:01:56', '2025-05-30 06:01:56'),
(5, 6, 'malam indah', NULL, '2025-05-30 07:08:40', '2025-05-30 07:08:40'),
(6, 7, 'tugas matkul web dan android 2025', NULL, '2025-05-30 12:11:52', '2025-05-30 12:12:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fzpolf0Xb4lPnOgqOXrEUaWTUzTwH483fRngkU72', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDBQMWIzc3JVa0RRZjVvemgwc0FyQjRmbTV6V0JlQTlqV2QzcWlRMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740600210),
('OvPqrsfDZGiQl2sxBTQeLXGXuNEhdH5jrBtJ6XOV', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODNDNzVUekxhbDRreHVhYWJVQ0gxWnQwNVhPejJsVk1YQUJ2RmtLTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740600436);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Citlali', 'john@example.com', NULL, NULL, '$2y$10$ngZt3eA7rFO9VSNH5uA9gu8/ZxlmD56oyq.c7vMWUWpzRBo9VLtJy', NULL, '2025-02-26 13:06:20', '2025-02-26 13:23:36'),
(2, 'tiga', 'tiga@tiga.com', NULL, NULL, '$2y$10$7kePkaNDr2HgH5KZ18X1Ceo.ueQSBjn4kHINxIz6teIBq.REV6GbG', NULL, '2025-02-28 16:31:22', '2025-02-28 16:31:22'),
(3, 'dua', 'dua@dua.com', NULL, NULL, '$2y$10$M.pAP4AJzEOHcxe9vn2jxeJWs/xOJ3Clp2ECByJWMFwZoXnooYDsS', NULL, '2025-05-10 17:33:46', '2025-05-10 17:33:46'),
(4, 'empat', 'empat@empat.com', NULL, NULL, '$2y$10$ou44rdjLBjbCJyL5doU.HeA6ZGqi0mOUwk2BLDff6FhfmlZxdB0Cu', NULL, '2025-05-17 18:38:37', '2025-05-17 18:38:37'),
(5, 'near', 'aldi@gmail.com', NULL, NULL, '$2y$10$8nqv1lkcCxJmCIsApsmGtOZdpe.dAoMloWse58.k5kdsiSxTxKzJa', NULL, '2025-05-30 05:59:41', '2025-05-30 06:00:24'),
(6, 'demo_akun', 'akun_demo@gmail.com', NULL, NULL, '$2y$10$WeuL8B34fmV4PKDe7RwMluvVTLG1FOHEznzTBI2dg4lI0V3twV0SG', NULL, '2025-05-30 07:07:17', '2025-05-30 07:08:08'),
(7, 'tugas_uas', 'uas@gmail.com', NULL, NULL, '$2y$10$Zb/vLk8rxCsM7.PcQOTLpeueOzbEAd5BP/PV6Z8Ju5z3Ku0y/ga6W', NULL, '2025-05-30 12:10:37', '2025-05-30 12:11:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `db_desa_budugsidorejo`
--
CREATE DATABASE IF NOT EXISTS `db_desa_budugsidorejo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_desa_budugsidorejo`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_desa_budugsidorejo\",\"table\":\"user\"},{\"db\":\"chatbot_db\",\"table\":\"log_chat\"},{\"db\":\"chatbot_db\",\"table\":\"faq\"},{\"db\":\"citlali\",\"table\":\"users\"},{\"db\":\"citlali\",\"table\":\"personal_access_tokens\"},{\"db\":\"citlali\",\"table\":\"password_resets\"},{\"db\":\"todolist\",\"table\":\"users\"},{\"db\":\"todolist\",\"table\":\"tasks\"},{\"db\":\"todolist\",\"table\":\"categories\"},{\"db\":\"todolist\",\"table\":\"sessions\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-11-23 22:57:05', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\",\"Console\\/Height\":172.971,\"ThemeDefault\":\"metro\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sistem_pemilihan`
--
CREATE DATABASE IF NOT EXISTS `sistem_pemilihan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistem_pemilihan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `candidate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `votes`
--

INSERT INTO `votes` (`id`, `candidate`) VALUES
(1, 'Kandidat A');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `todolist`
--
CREATE DATABASE IF NOT EXISTS `todolist` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `todolist`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Critical', 'Harus segera dilakukan atau ada konsekuensi serius'),
(2, 'Very Important', 'Sangat penting tetapi masih ada sedikit waktu'),
(3, 'Important', 'Harus dilakukan tetapi tidak mendesak'),
(4, 'Moderately Important', 'Perlu dilakukan tetapi masih bisa ditunda'),
(5, 'Medium Priority', 'Berguna untuk jangka panjang tetapi tidak mendesak'),
(6, 'Low Priority', 'Bisa dilakukan nanti atau ketika ada waktu luang'),
(7, 'Casual', 'Aktivitas ringan yang menyenangkan tetapi tidak wajib'),
(8, 'Optional', 'Tidak perlu dilakukan tetapi bisa dikerjakan jika ada waktu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2025_02_13_224125_create_tasks_table', 2),
(6, '2025_02_13_225146_create_personal_access_tokens_table', 3),
(7, '2025_02_14_002147_create_statuses_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(13, 'App\\Models\\User', 1, 'TodoApp', '81d1420d995c16d448327a8b0e1047a8eed80c84bfac97ca739f5e63a3ba745a', '[\"*\"]', '2025-02-15 17:49:25', NULL, '2025-02-15 17:47:06', '2025-02-15 17:49:25'),
(14, 'App\\Models\\User', 1, 'TodoApp', '64889eda319bb8067e010d81f2617ef1ca419143ef36739c57c5fc8b1423b9f3', '[\"*\"]', '2025-02-15 17:51:23', NULL, '2025-02-15 17:50:36', '2025-02-15 17:51:23'),
(19, 'App\\Models\\User', 3, 'TodoApp', 'dfb60d99151f2567776950400c2ebd9ee8d522c13d442438b18ba301ed7377a3', '[\"*\"]', '2025-02-16 02:01:07', NULL, '2025-02-16 01:59:44', '2025-02-16 02:01:07'),
(20, 'App\\Models\\User', 3, 'TodoApp', 'd59c6efa2a3a44a58300be3288e934e6ca263d24e592180a551937f94f3346d8', '[\"*\"]', NULL, NULL, '2025-02-16 03:25:59', '2025-02-16 03:25:59'),
(21, 'App\\Models\\User', 3, 'TodoApp', '3e89f13c127420188e69d32558e9e1b3aab2136f4cd8f3d69ddc20c98fcfd5ad', '[\"*\"]', NULL, NULL, '2025-02-16 03:26:01', '2025-02-16 03:26:01'),
(22, 'App\\Models\\User', 3, 'TodoApp', '80d3ee5e384215f0ba4680e2187203c0ca14371cbc88b79031ac41f1f244cf21', '[\"*\"]', NULL, NULL, '2025-02-16 03:26:02', '2025-02-16 03:26:02'),
(23, 'App\\Models\\User', 3, 'TodoApp', 'ee02612a4d484f8130b6951ab8937efbb11da98e5f521c06b72d36e01ab50d49', '[\"*\"]', NULL, NULL, '2025-02-16 03:26:03', '2025-02-16 03:26:03'),
(24, 'App\\Models\\User', 3, 'TodoApp', '559a9f7eb11b5c2d1dc5a02eb041174e0b19adfc63822f90eec67394725ee236', '[\"*\"]', NULL, NULL, '2025-02-16 03:26:10', '2025-02-16 03:26:10'),
(25, 'App\\Models\\User', 3, 'TodoApp', '96522c686a5aa0a00044562c5d3f8ff765399414e8e77a989f9f20029b485a25', '[\"*\"]', NULL, NULL, '2025-02-16 03:26:12', '2025-02-16 03:26:12'),
(26, 'App\\Models\\User', 3, 'TodoApp', '6c5ef02db8a98c5f291c6608caee0140c50ae00fdf6a041dd47c4af13c1d6e1d', '[\"*\"]', NULL, NULL, '2025-02-16 03:26:15', '2025-02-16 03:26:15'),
(27, 'App\\Models\\User', 3, 'TodoApp', '4d0b9003f5453b66fd1245a3a0962ba5886cdd74abb2daf16056fca5a2f49c1c', '[\"*\"]', NULL, NULL, '2025-02-16 03:26:17', '2025-02-16 03:26:17'),
(35, 'App\\Models\\User', 1, 'TodoApp', '17f97140315250f97caace1b2258b3307ca5d9cb49441211c0f8f2b25ec6006f', '[\"*\"]', NULL, NULL, '2025-03-01 11:34:14', '2025-03-01 11:34:14'),
(51, 'App\\Models\\User', 2, 'TodoApp', '097cfa6a18cc0c0fa42b9fb8048229d6144900fa72429b3ad7e505a355812cea', '[\"*\"]', '2025-03-04 02:33:30', NULL, '2025-03-04 02:33:22', '2025-03-04 02:33:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VRkYuQNOu1GcK7LpKNrntIZRYUj5UmE8SR0OArLU', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUU5QYVM3N3FjMUo3TlRvY2hXd3NqWWVuelZQZW1haENYQ2ZVYjBEMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739679774);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('pending','completed') NOT NULL DEFAULT 'pending',
  `due_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `description`, `status`, `due_date`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 1, 'Update Laravel API', 'Membuat API dengan status', 'pending', '2025-02-22 12:00:00', '2025-02-13 18:24:42', '2025-02-13 18:38:02', 3),
(3, 2, 'Belajar Laravel Sanctum', 'Menambah fitur autentikasi', 'pending', '2025-02-20 00:00:00', '2025-02-15 21:36:23', '2025-02-15 21:38:11', 4),
(7, 12, 'finish', 'finally', 'pending', '2099-01-01 19:19:19', '2025-03-02 04:47:19', '2025-03-02 04:47:19', 1),
(8, 2, 'final test', 'test', 'pending', '2025-03-02 01:01:01', '2025-03-02 09:04:05', '2025-03-02 09:04:05', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', NULL, '$2y$12$q562kf0fFJfKZYRa8o9pOe6KMjhaE7ov0kpEBIA.h89EhKZqzfcuK', NULL, '2025-02-13 15:59:07', '2025-02-13 15:59:07'),
(2, 'satu', 'satu@satu.com', NULL, '$2y$12$avjDJku0Y2GK4ae2qnhrQ.N44JX25CQjlxqJwNlwrfm19puUBPT9C', NULL, '2025-02-15 21:22:08', '2025-02-15 21:22:08'),
(3, 'dua', 'dua@dua.com', NULL, '$2y$12$hZVvM0Bu46q7N1GyM6jWyOT91EnOK9ohlaWQ1ebSRzesZD97xTdz2', NULL, '2025-02-16 01:59:09', '2025-02-16 01:59:09'),
(12, 'tiga', 'tiga@tiga.com', NULL, '$2y$12$jEBtbwOeEWWZaIuE/bu.8O0.e8deyaJ7Raffre1O1BGpaEc5En04C', NULL, '2025-03-02 04:27:42', '2025-03-02 04:27:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`),
  ADD KEY `tasks_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
