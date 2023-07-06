-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2023 pada 17.24
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rabies-manusia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(12) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nama_gejala`) VALUES
(1, 'panas'),
(2, 'sakit kepala'),
(3, 'bersin'),
(4, 'batuk'),
(5, 'pilek'),
(6, 'badan lemas'),
(7, 'kedinginan'),
(8, 'kesemutan'),
(9, 'rasa gatal'),
(11, 'kelumpuhan '),
(12, 'peradangan pada otak'),
(13, 'hipersalivasi (keluar air liur yang banyak)'),
(14, 'fobia terhadap udara'),
(15, 'fobia terhadap cahaya'),
(16, 'berontak/mengamuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengetahuan`
--

CREATE TABLE `pengetahuan` (
  `id_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` varchar(100) NOT NULL,
  `id_gejala` int(12) NOT NULL,
  `mb` float NOT NULL,
  `md` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengetahuan`
--

INSERT INTO `pengetahuan` (`id_pengetahuan`, `kode_penyakit`, `id_gejala`, `mb`, `md`) VALUES
(1, 'A', 2, 0.7, 0.2),
(2, 'A', 6, 0.8, 0.1),
(9, 'F', 1, 0.6, 0.2),
(10, 'F', 2, 0.7, 0.2),
(11, 'F', 3, 0.6, 0.2),
(12, 'F', 4, 0.6, 0.1),
(13, 'F', 5, 0.8, 0.1),
(14, 'F', 6, 0.7, 0.1),
(15, 'F', 7, 0.8, 0.05),
(18, 'R', 8, 0.7, 0.1),
(19, 'R', 9, 0.8, 0.2),
(27, 'R', 11, 0.7, 0.2),
(28, 'R', 12, 0.7, 0.1),
(29, 'R', 13, 0.7, 0.2),
(30, 'R', 14, 0.7, 0.1),
(31, 'R', 15, 0.8, 0.1),
(32, 'R', 16, 0.8, 0.1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(12) NOT NULL,
  `kode_penyakit` varchar(100) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`) VALUES
(1, 'A', 'Anemia'),
(4, 'F', 'Flu'),
(5, 'R', 'Rabies');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD PRIMARY KEY (`id_pengetahuan`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pengetahuan`
--
ALTER TABLE `pengetahuan`
  MODIFY `id_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
