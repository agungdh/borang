-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2018 at 02:16 AM
-- Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `borang`
--

-- --------------------------------------------------------

--
-- Table structure for table `borang`
--

CREATE TABLE `borang` (
  `id_borang` int(11) NOT NULL,
  `nama_file` varchar(191) NOT NULL,
  `id_borang_akreditasi` int(11) NOT NULL,
  `id_standar` int(11) DEFAULT NULL,
  `id_substandar` int(11) DEFAULT NULL,
  `id_butir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `borang_akreditasi`
--

CREATE TABLE `borang_akreditasi` (
  `id_borang_akreditasi` int(11) NOT NULL,
  `tanggal_borang_akreditasi` date NOT NULL,
  `tahun_usulan` year(4) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_standar_akreditasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `butir`
--

CREATE TABLE `butir` (
  `id_butir` int(11) NOT NULL,
  `nomor_butir` varchar(12) NOT NULL,
  `nama_butir` text NOT NULL,
  `id_substandar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `id_fakultas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `standar`
--

CREATE TABLE `standar` (
  `id_standar` int(11) NOT NULL,
  `nomor_standar` varchar(3) NOT NULL,
  `nama_standar` text NOT NULL,
  `id_standar_akreditasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `standar_akreditasi`
--

CREATE TABLE `standar_akreditasi` (
  `id_standar_akreditasi` int(11) NOT NULL,
  `standar_akreditasi` varchar(50) NOT NULL,
  `tahun_standar_akreditasi` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `substandar`
--

CREATE TABLE `substandar` (
  `id_substandar` int(11) NOT NULL,
  `nomor_substandar` varchar(6) NOT NULL,
  `nama_substandar` text NOT NULL,
  `id_standar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(191) NOT NULL,
  `level` enum('op','os','ks') NOT NULL,
  `id_prodi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `level`, `id_prodi`) VALUES
(1, 'Kasubdit SPME', 'kspme', '$2y$10$WswVPYk1j6rbE2G5tYQ3Ou.hXR2sJK6nkRBAuyP9bSgqUjG0cOQMG', 'ks', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borang`
--
ALTER TABLE `borang`
  ADD KEY `id_borang_akreditasi` (`id_borang_akreditasi`),
  ADD KEY `id_butir` (`id_butir`),
  ADD KEY `id_standar` (`id_standar`),
  ADD KEY `id_substandar` (`id_substandar`);

--
-- Indexes for table `borang_akreditasi`
--
ALTER TABLE `borang_akreditasi`
  ADD PRIMARY KEY (`id_borang_akreditasi`),
  ADD KEY `id_standar_akreditasi` (`id_standar_akreditasi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `butir`
--
ALTER TABLE `butir`
  ADD PRIMARY KEY (`id_butir`),
  ADD KEY `id_substandar` (`id_substandar`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `standar`
--
ALTER TABLE `standar`
  ADD PRIMARY KEY (`id_standar`),
  ADD KEY `id_standar_akreditasi` (`id_standar_akreditasi`);

--
-- Indexes for table `standar_akreditasi`
--
ALTER TABLE `standar_akreditasi`
  ADD PRIMARY KEY (`id_standar_akreditasi`);

--
-- Indexes for table `substandar`
--
ALTER TABLE `substandar`
  ADD PRIMARY KEY (`id_substandar`),
  ADD KEY `id_standar` (`id_standar`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borang_akreditasi`
--
ALTER TABLE `borang_akreditasi`
  MODIFY `id_borang_akreditasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `butir`
--
ALTER TABLE `butir`
  MODIFY `id_butir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standar`
--
ALTER TABLE `standar`
  MODIFY `id_standar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standar_akreditasi`
--
ALTER TABLE `standar_akreditasi`
  MODIFY `id_standar_akreditasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `substandar`
--
ALTER TABLE `substandar`
  MODIFY `id_substandar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borang`
--
ALTER TABLE `borang`
  ADD CONSTRAINT `borang_ibfk_1` FOREIGN KEY (`id_borang_akreditasi`) REFERENCES `borang_akreditasi` (`id_borang_akreditasi`),
  ADD CONSTRAINT `borang_ibfk_2` FOREIGN KEY (`id_butir`) REFERENCES `butir` (`id_butir`),
  ADD CONSTRAINT `borang_ibfk_3` FOREIGN KEY (`id_standar`) REFERENCES `standar` (`id_standar`),
  ADD CONSTRAINT `borang_ibfk_4` FOREIGN KEY (`id_substandar`) REFERENCES `substandar` (`id_substandar`);

--
-- Constraints for table `borang_akreditasi`
--
ALTER TABLE `borang_akreditasi`
  ADD CONSTRAINT `borang_akreditasi_ibfk_1` FOREIGN KEY (`id_standar_akreditasi`) REFERENCES `standar_akreditasi` (`id_standar_akreditasi`),
  ADD CONSTRAINT `borang_akreditasi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `butir`
--
ALTER TABLE `butir`
  ADD CONSTRAINT `butir_ibfk_1` FOREIGN KEY (`id_substandar`) REFERENCES `substandar` (`id_substandar`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`);

--
-- Constraints for table `standar`
--
ALTER TABLE `standar`
  ADD CONSTRAINT `standar_ibfk_1` FOREIGN KEY (`id_standar_akreditasi`) REFERENCES `standar_akreditasi` (`id_standar_akreditasi`);

--
-- Constraints for table `substandar`
--
ALTER TABLE `substandar`
  ADD CONSTRAINT `substandar_ibfk_1` FOREIGN KEY (`id_standar`) REFERENCES `standar` (`id_standar`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
