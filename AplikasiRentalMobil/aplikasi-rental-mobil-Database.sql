-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jun 2021 pada 16.15
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasirentalmobil`
--
CREATE DATABASE IF NOT EXISTS `aplikasirentalmobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `aplikasirentalmobil`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('kelompok 2', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_addcar`
--

CREATE TABLE `tb_addcar` (
  `merek` varchar(30) NOT NULL,
  `tipe` varchar(30) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `nopolisi` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_addcar`
--

INSERT INTO `tb_addcar` (`merek`, `tipe`, `tahun`, `nopolisi`, `harga`, `status`) VALUES
('Toyota', 'Avanza', '2015', 'B 535 WBM', '500000', 'Ada'),
('Toyota', 'Alphard', '2019', 'B 341 CKC', '600000', 'Ada'),
('Honda', 'Brio', '2015', 'B 834 AFB', '600000', 'Tidak ada'),
('Suzuki', 'Ertiga XL7', '2015', 'AB 225 FDW', '500000', 'Ada'),
('Nissan', 'Magnite', '2020', 'A 727 WWZ', '700000', 'Ada'),
('Nissan', 'Livina', '2020', 'A 171 RTG', '700000', 'Tidak ada'),
('Lamborghini', 'Aventador J', '2020', 'B 434 TQS', '1500000', 'Ada'),
('Mitsubishi', 'Pajero Sport', '2019', 'P 785 WQW', '800000', 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjam`
--

CREATE TABLE `tb_peminjam` (
  `peminjam` varchar(30) NOT NULL,
  `nopolisi` varchar(30) NOT NULL,
  `tgl_peminjam` varchar(30) NOT NULL,
  `tgl_kembali` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `lama` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`peminjam`, `nopolisi`, `tgl_peminjam`, `tgl_kembali`, `harga`, `lama`, `total`) VALUES
('Alvin', 'A 727 WWZ', '25-June-2021', '30-June-2021', '700000', '5', '3500000'),
('Wildan', 'B 434 TQS', '25-June-2021', '05-July-2021', '1500000', '10', '15000000'),
('Rahman', 'A 171 RTG', '25-June-2021', '26-June-2021', '700000', '1', '700000'),
('Samsudin', 'B 834 AFB', '09-June-2021', '24-June-2021', '600000', '15', '9000000'),
('Intan', 'B 834 AFB', '15-June-2021', '30-June-2021', '600000', '15', '9000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
