-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Agu 2024 pada 04.12
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`username`, `password`, `level`) VALUES
('admin', 'c4ca4238a0b923820dcc509a6f75849b', 3),
('dadang', 'c4ca4238a0b923820dcc509a6f75849b', 3),
('hendika', 'c4ca4238a0b923820dcc509a6f75849b', 2),
('Kirito', 'c4ca4238a0b923820dcc509a6f75849b', 1),
('Naruto', 'c4ca4238a0b923820dcc509a6f75849b', 3),
('Okky', 'c4ca4238a0b923820dcc509a6f75849b', 3),
('roma', 'c4ca4238a0b923820dcc509a6f75849b', 1),
('udin', 'c4ca4238a0b923820dcc509a6f75849b', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` char(10) NOT NULL,
  `nama_guru` varchar(50) DEFAULT NULL,
  `no_hp` varchar(30) NOT NULL,
  `jenkel` varchar(10) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `nama_guru`, `no_hp`, `jenkel`, `username`) VALUES
('1111111111', 'Hendika', '087987697658', 'Laki-Laki', 'hendika'),
('1111111112', 'Roma Debrian', '087987697659', 'Laki-Laki', 'roma'),
('1111111113', 'Okky', '02147483647', 'Laki-Laki', 'Okky');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `kode_mata_pelajaran` varchar(50) NOT NULL,
  `nama_matapelajaran` varchar(50) NOT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `nip` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`kode_mata_pelajaran`, `nama_matapelajaran`, `kelas`, `nip`) VALUES
('0000000', 'Jarkom 1', '8B', '1111111111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `murid`
--

CREATE TABLE `murid` (
  `nisn` char(10) NOT NULL,
  `nama_murid` varchar(50) DEFAULT NULL,
  `kota` varchar(45) DEFAULT NULL,
  `jenkel` varchar(45) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `ekstrakurikuler` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `murid`
--

INSERT INTO `murid` (`nisn`, `nama_murid`, `kota`, `jenkel`, `kelas`, `username`, `ekstrakurikuler`) VALUES
('12345', 'test', 'ciamis', 'Laki-Laki', '9A', 'admin', 'MarchingBand');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `nama_murid` varchar(50) NOT NULL,
  `kelas` varchar(2) DEFAULT NULL,
  `nama_matapelajaran` varchar(50) NOT NULL,
  `nilai_UTS` int(5) NOT NULL,
  `nilai_UAS` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`nama_murid`, `kelas`, `nama_matapelajaran`, `nilai_UTS`, `nilai_UAS`) VALUES
('Yasan', '10', 'Jaringan', 100, 100),
('wdawd', '10', 'Jaringan', 77, 88),
('Hendika', '10', 'Jaringan', 100, 100),
('Jaja Tamanawa', '10', 'Jaringan', 110, 111),
('Yasan', '10', 'Visual Basic', 77, 77),
('wdawd', '10', 'Visual Basic', 88, 88),
('Hendika', '10', 'Visual Basic', 100, 99),
('Jaja Tamanawa', '10', 'Visual Basic', 100, 100),
('Udin', '10', 'Jaringan', 77, 88),
('Yasan', '10', 'Jaringan', 100, 100),
('Hendika', '10', 'Jaringan', 100, 100),
('Jaja Tamanawa', '10', 'Jaringan', 110, 111),
('Udin', '10', 'Visual Basic', 88, 88),
('Yasan', '10', 'Visual Basic', 77, 77),
('Hendika', '10', 'Visual Basic', 100, 99),
('Jaja Tamanawa', '10', 'Visual Basic', 100, 100),
('Udin', '10', 'C++', 77, 87),
('Yasan', '10', 'C++', 66, 87),
('Hendika', '10', 'C++', 88, 88),
('Jaja Tamanawa', '10', 'C++', 99, 89),
('Okky Pras', '10', 'C++', 89, 90),
('Udin', '10', 'Pemerograman Java', 77, 88),
('Yasan', '10', 'Pemerograman Java', 88, 99),
('Hendika', '10', 'Pemerograman Java', 99, 99),
('Jaja Tamanawa', '10', 'Pemerograman Java', 77, 88),
('Okky Pras', '10', 'Pemerograman Java', 98, 87);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `Tanggal` varchar(10) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `No_HP` int(50) DEFAULT NULL,
  `Isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`Tanggal`, `Subject`, `Nama`, `Email`, `No_HP`, `Isi`) VALUES
('18-05-2018', 'Test', 'Roma Debrian', 'test@yahoo.com', 2147483647, 'This messege of ded'),
('18-05-2018', 'Test', 'Roma Debrian', 'test@yahoo.com', 2147483647, 'ini adalah pesan kematian');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `guru_ibfk_1` (`username`);

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`kode_mata_pelajaran`),
  ADD KEY `mata_pelajaran_ibfk_1` (`nip`);

--
-- Indeks untuk tabel `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `murid_ibfk_1` (`username`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`username`) REFERENCES `akun` (`username`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD CONSTRAINT `mata_pelajaran_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `guru` (`nip`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `murid`
--
ALTER TABLE `murid`
  ADD CONSTRAINT `murid_ibfk_1` FOREIGN KEY (`username`) REFERENCES `akun` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
