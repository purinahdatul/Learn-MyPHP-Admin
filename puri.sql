-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 01:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hansen`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `id_acara` int(5) NOT NULL,
  `nama_acara` varchar(20) NOT NULL,
  `fk_turnamen` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id_acara`, `nama_acara`, `fk_turnamen`) VALUES
(1, 'PLAY OFF', 1),
(2, 'PLAY OFF', 2),
(3, 'PLAY OFF', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kepanitiaan`
--

CREATE TABLE `kepanitiaan` (
  `id_kepanitiaan` int(5) NOT NULL,
  `nama_kepanitiaan` varchar(20) NOT NULL,
  `fk_acara` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kepanitiaan`
--

INSERT INTO `kepanitiaan` (`id_kepanitiaan`, `nama_kepanitiaan`, `fk_acara`) VALUES
(1, 'PANITIA 1', 1),
(2, 'PANITIA 2', 3),
(3, 'PANITIA 3', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(5) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `no_telp` int(15) NOT NULL,
  `alamat_pegawai` varchar(30) NOT NULL,
  `fk_kepanitiaan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `no_telp`, `alamat_pegawai`, `fk_kepanitiaan`) VALUES
(1, 'TONO', 678, 'Jalan Raya', 3),
(2, 'TONI', 989, 'Jalan Raya Aspal', 1),
(3, 'JONO', 345, 'Jalan Raya Besar', 2),
(4, 'JONI', 222, 'Jalan Raya Kecil', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id_sekolah` int(5) NOT NULL,
  `nama_sekolah` varchar(20) NOT NULL,
  `alamat_sekolah` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`) VALUES
(1, 'SMKN 1 BLITAR', 'Jalan Kenari No. 30 Blitar');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(5) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat_siswa` varchar(30) NOT NULL,
  `no_telp` int(15) NOT NULL,
  `fk_tim` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `tanggal_lahir`, `alamat_siswa`, `no_telp`, `fk_tim`) VALUES
(1, 'HANSEN', '2004-12-19', 'Jalan A', 2213, 1),
(2, 'PRATAMA', '2003-10-08', 'Jalan B', 444, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tim`
--

CREATE TABLE `tim` (
  `id_tim` int(5) NOT NULL,
  `nama_tim` varchar(20) NOT NULL,
  `fk_acara` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tim`
--

INSERT INTO `tim` (`id_tim`, `nama_tim`, `fk_acara`) VALUES
(1, 'RVN', 1),
(2, 'VICTIM', 1),
(3, 'PSYCHO', 3);

-- --------------------------------------------------------

--
-- Table structure for table `turnamen`
--

CREATE TABLE `turnamen` (
  `id_turnamen` int(5) NOT NULL,
  `nama_turnamen` varchar(30) NOT NULL,
  `fk_sekolah` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `turnamen`
--

INSERT INTO `turnamen` (`id_turnamen`, `nama_turnamen`, `fk_sekolah`) VALUES
(1, 'PUBG TOUR', 1),
(2, 'MLBB TOUR', 1),
(3, 'FF TOUR', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id_acara`),
  ADD KEY `fk_turnamen` (`fk_turnamen`);

--
-- Indexes for table `kepanitiaan`
--
ALTER TABLE `kepanitiaan`
  ADD PRIMARY KEY (`id_kepanitiaan`),
  ADD KEY `fk_acara` (`fk_acara`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `fk_kepanitiaan` (`fk_kepanitiaan`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `fk_tim` (`fk_tim`);

--
-- Indexes for table `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`id_tim`),
  ADD KEY `fk_acara` (`fk_acara`);

--
-- Indexes for table `turnamen`
--
ALTER TABLE `turnamen`
  ADD PRIMARY KEY (`id_turnamen`),
  ADD KEY `fk_sekolah` (`fk_sekolah`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acara`
--
ALTER TABLE `acara`
  ADD CONSTRAINT `acara_ibfk_1` FOREIGN KEY (`fk_turnamen`) REFERENCES `turnamen` (`id_turnamen`);

--
-- Constraints for table `kepanitiaan`
--
ALTER TABLE `kepanitiaan`
  ADD CONSTRAINT `kepanitiaan_ibfk_1` FOREIGN KEY (`fk_acara`) REFERENCES `acara` (`id_acara`);

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`fk_kepanitiaan`) REFERENCES `kepanitiaan` (`id_kepanitiaan`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`fk_tim`) REFERENCES `tim` (`id_tim`);

--
-- Constraints for table `tim`
--
ALTER TABLE `tim`
  ADD CONSTRAINT `tim_ibfk_1` FOREIGN KEY (`fk_acara`) REFERENCES `acara` (`id_acara`);

--
-- Constraints for table `turnamen`
--
ALTER TABLE `turnamen`
  ADD CONSTRAINT `turnamen_ibfk_1` FOREIGN KEY (`fk_sekolah`) REFERENCES `sekolah` (`id_sekolah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
