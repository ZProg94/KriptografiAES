-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 09:03 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2021_kriptografiaes`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int(5) NOT NULL,
  `id_user` int(5) DEFAULT NULL,
  `nama_dokumen` varchar(255) DEFAULT NULL,
  `dokumen_id` varchar(80) DEFAULT NULL,
  `nama_enkrip` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `id_user`, `nama_dokumen`, `dokumen_id`, `nama_enkrip`, `tanggal`, `status`) VALUES
(200, 7, '20211201041732_testaes.xlsx', '94904', '94904_testaes.xlsx.encrypted', '2021-12-01 03:17:32', 1),
(201, 1, '20211201070404_Doc1_testaes.docx', '62389', '62389_Doc1_testaes.docx.encrypted', '2021-12-01 06:04:04', 0),
(198, 1, '20211201035658_Doc1_testaes.docx', '52330', '52330_Doc1_testaes.docx.encrypted', '2021-12-01 02:56:58', 1),
(199, 7, '20211201041602_Doc1_testaes.docx', '94807', '94807_Doc1_testaes.docx.encrypted', '2021-12-01 03:16:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `email`, `password`) VALUES
(1, 'admin', 'Administrator', 'admin@admin.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(2, 'irfan', 'Irfan', 'irfan@zprog.online', '86e6fa14521dfa9f1b4b05eb8506ebb44b04aa26a819d726e4506fc22724d8b9'),
(4, 'akhdan', 'Muhammad Akhdan Al Maliki', 'akhdan@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),
(7, 'Mila', 'Mila', 'mila@yahoo.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
