-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2024 pada 07.37
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawansi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id` int(11) NOT NULL,
  `id_karyawan` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `waktu_masuk` varchar(255) NOT NULL,
  `waktu_pulang` varchar(255) NOT NULL,
  `waktu_kerja` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_absen`
--

INSERT INTO `tb_absen` (`id`, `id_karyawan`, `nama`, `waktu_masuk`, `waktu_pulang`, `waktu_kerja`) VALUES
(52, '2007', 'Nadya Auradiva', 'Friday, 10-11-2023 01:15:37 am', 'Friday, 10-11-2023 06:23:02 am', '5 jam'),
(53, '2001', 'Dewi Rubiatul A.', 'Saturday, 11-11-2023 06:37:57 am', 'Saturday, 11-11-2023 06:38:04 am', '0 jam'),
(55, '2002', 'Intan Sari', 'Monday, 13-11-2023 07:32:54 am', 'Monday, 13-11-2023 07:33:02 am', '0 jam'),
(56, '2006', 'Devita aulia putri', 'Monday, 13-11-2023 07:45:17 am', 'Monday, 13-11-2023 02:14:03 pm', '6 jam'),
(57, '2007', 'Dayinta duwa r', 'Monday, 13-11-2023 02:14:58 pm', 'Monday, 13-11-2023 02:15:16 pm', '0 jam'),
(58, '2006', 'Devita aulia putri', 'Wednesday, 29-11-2023 12:23:07 pm', 'Wednesday, 29-11-2023 01:31:36 pm', '1 jam'),
(59, '12345', 'zakiaaaa', 'Wednesday, 29-11-2023 02:31:53 pm', 'Wednesday, 29-11-2023 02:32:02 pm', '0 jam'),
(60, '2001', 'Dewi Rubiatul A.', 'Sunday, 03-12-2023 05:52:49 pm', '0', NULL),
(61, '2002', 'Intan Sari', 'Sunday, 03-12-2023 05:56:46 pm', '0', NULL),
(62, '2002', 'Intan Sari', 'Monday, 04-12-2023 05:03:46 am', '0', NULL),
(63, '12345', 'zakiaaaa', 'Thursday, 07-12-2023 11:08:19 am', 'Thursday, 07-12-2023 11:13:11 am', '0 jam'),
(64, '12345', 'zakiaaaa', 'Thursday, 07-12-2023 11:40:09 am', '0', NULL),
(65, '1122', 'dewi r', 'Friday, 05-01-2024 10:45:57 am', '0', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_daftar`
--

CREATE TABLE `tb_daftar` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_daftar`
--

INSERT INTO `tb_daftar` (`id`, `username`, `password`) VALUES
(1, 'dewi', 'dewi'),
(2, 'admin', 'admin'),
(6, 'fitria', 'fitria'),
(7, 'duwa', 'duwa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id`, `jabatan`) VALUES
(4, 'CTO'),
(5, 'CFO'),
(6, 'WP Pemasaran'),
(7, 'CMO'),
(9, 'Office Boy'),
(10, 'presdir'),
(11, 'CEO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tmp_tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_tel` varchar(18) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id_karyawan`, `username`, `password`, `nama`, `tmp_tgl_lahir`, `jenkel`, `agama`, `alamat`, `no_tel`, `jabatan`, `foto`) VALUES
(1122, 'dewi', 'f27f6f1c7c5cbf4e3e192e0a47b85300', 'dewi r', 'malang ', 'Perempuan', 'Islam', 'jl..', '09865', 'CTO', '05012024044442DFD Level 1.png'),
(2001, 'dewi', 'ed1d859c50262701d92e5cbf39652792', 'Dewi Rubiatul A.', 'Malang, 20 Desember 2006', 'Perempuan', 'Islam', 'qwdsaswq', '087654356789', 'CEO', '06112023021125IMG_2991.JPG'),
(2002, 'intan', 'd41d8cd98f00b204e9800998ecf8427e', 'Intan Sari', 'Malang, 16 Mei 2007', 'Perempuan', 'Islam', 'jl.poiuygbnj', '0987654567', 'CTO', '06112023021314IMG_2846.JPG'),
(12345, 'zakia', '7348ac02c9adcea1f5728e70799811d8', 'zakiaaaa', 'malang 11 desember 2007', 'Perempuan', 'Islam', 'jl. terserah', '0987654323', 'CEO', '29112023082959IMG_2849.JPG'),
(676788, 'guujhjjk', '4424bb435165b88ff6f99860a340df88', 'hjnj', 'Malang, 7 Juni 2006', 'Laki-laki', 'KongHuCu', 'jjjj', '00009976', 'CEO', '11012024051812logo database.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keterangan`
--

CREATE TABLE `tb_keterangan` (
  `id` int(11) NOT NULL,
  `id_karyawan` varchar(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `alasan` text NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `bukti` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_keterangan`
--

INSERT INTO `tb_keterangan` (`id`, `id_karyawan`, `nama`, `keterangan`, `alasan`, `waktu`, `bukti`) VALUES
(54, '123', 'fitria chotimatus sifak', 'Izin', 'Bolos kebelet eek', 'Wednesday, 27-09-2023 08:41:51 am', '27092023034216dfd.png'),
(55, '111', 'Devita aulia putri', 'Izin', 'Mau pacaran di TS(Taman Sigha wkwkwk)', 'Wednesday, 27-09-2023 09:07:06 am', '27092023040759IMG_3087.JPG');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_daftar`
--
ALTER TABLE `tb_daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `tb_keterangan`
--
ALTER TABLE `tb_keterangan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_absen`
--
ALTER TABLE `tb_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `tb_daftar`
--
ALTER TABLE `tb_daftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_keterangan`
--
ALTER TABLE `tb_keterangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
