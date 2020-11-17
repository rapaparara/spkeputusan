-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 11:18 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spkeputusan`
--
CREATE DATABASE IF NOT EXISTS `spkeputusan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spkeputusan`;

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE IF NOT EXISTS `alternatif` (
  `id_alternatif` int(11) NOT NULL AUTO_INCREMENT,
  `kd_alternatif` int(2) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL,
  `nilai_alternatif` float NOT NULL,
  `id_keputusan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_alternatif`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `kd_alternatif`, `nama_alternatif`, `nilai_alternatif`, `id_keputusan`, `id_user`) VALUES
(9, 0, 'Titik Temu', 0, 20, 5),
(13, 1, 'Lombongo', 0.535832, 23, 7),
(14, 2, 'Puncak Hutan Pinus Dulamayo', 0.783333, 23, 7),
(15, 3, 'Pulau Diyonumo', 0.83958, 23, 7),
(16, 4, 'Pulau Cinta', 0.818331, 23, 7),
(17, 1, 'Abdurrafi Yahya', 0.28196, 25, 7),
(18, 2, 'Guntur Prakoso', 0.469934, 25, 7),
(19, 3, 'Akil Niode', 1.4098, 25, 7),
(20, 1, 'Reonaldi Patalangi', 0.876786, 26, 7),
(21, 2, 'Zulhair Zidan', 0.777032, 26, 7),
(22, 3, 'Mawan', 0.573891, 26, 7),
(23, 1, 'sda', 0, 21, 5),
(24, 1, 'Pantai Botutonuo', 0.662829, 27, 8),
(25, 2, 'Puncak Hutan Pinus Dulamayo', 0.850564, 27, 8),
(26, 3, 'Pantai Kurenai', 0.62453, 27, 8);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
  `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,
  `kd_kriteria` int(2) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `atribut` enum('keuntungan','biaya','','') NOT NULL,
  `bobot_kriteria` float NOT NULL,
  `id_keputusan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kd_kriteria`, `nama_kriteria`, `atribut`, `bobot_kriteria`, `id_keputusan`, `id_user`) VALUES
(42, 1, 'Jarak', '', 0.210109, 20, 5),
(43, 2, 'Harga', '', 0.548816, 20, 5),
(44, 3, 'Ketenaran', '', 0.241075, 20, 5),
(47, 1, 'Jarak', '', 0.481481, 22, 5),
(48, 4, 'Biaya', '', 0, 20, 5),
(49, 2, 'Biaya', '', 0.314815, 22, 5),
(50, 3, 'Fasilitas', '', 0.203704, 22, 5),
(58, 2, 'Jarak dengan pusat kota', 'keuntungan', 0.224988, 23, 7),
(59, 3, 'Biaya', '', 0.320839, 23, 7),
(60, 1, 'Fasilitas', '', 0.454173, 23, 7),
(61, 1, 'Ganteng', '', 0.128524, 25, 7),
(63, 2, 'Keuangan', 'keuntungan', 0.186451, 25, 7),
(64, 3, 'Karisma', 'keuntungan', 0.207829, 25, 7),
(65, 4, 'Rajin Ibadah', 'keuntungan', 0.27303, 25, 7),
(66, 5, 'Nyaman', 'keuntungan', 0.204166, 25, 7),
(71, 1, 'Kelincahan', 'keuntungan', 0.374529, 26, 7),
(72, 2, 'Kekuatan', 'keuntungan', 0.300446, 26, 7),
(73, 3, 'Mental Pemain', 'keuntungan', 0.0785983, 26, 7),
(74, 4, 'Harga', 'biaya', 0.246426, 26, 7),
(75, 1, 'Jarak', 'keuntungan', 0.75094, 27, 8),
(76, 2, 'Biaya Masuk', 'biaya', 0.24906, 27, 8),
(77, 1, 'Jarak', 'keuntungan', 0, 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pendukung_keputusan`
--

CREATE TABLE IF NOT EXISTS `pendukung_keputusan` (
  `id_keputusan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_keputusan` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` enum('belum','terisi','','') NOT NULL,
  `konsis` enum('konsisten','tidak','','') NOT NULL,
  PRIMARY KEY (`id_keputusan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `pendukung_keputusan`
--

INSERT INTO `pendukung_keputusan` (`id_keputusan`, `nama_keputusan`, `deskripsi`, `id_user`, `status`, `konsis`) VALUES
(21, 'Pemain Terbaik', 'Mencari pemain sepak bola terbaik BASICA FC', 5, 'terisi', 'konsisten'),
(23, 'Tempat Wisata', 'Menentukan tempat wisata terbaik di kota Gorontalo', 7, 'terisi', 'konsisten'),
(25, 'Gebetan Terbaik', 'Menentukan siapakah gebetan terbaik yang pantas dijadikan pacars', 7, 'terisi', 'konsisten'),
(26, 'Pemain Terbaik 2', '', 7, 'terisi', 'konsisten'),
(27, 'Tempat Wisata Gorontalo', 'tempat wisata di provinsi gorontalo', 8, 'terisi', 'konsisten'),
(28, 'Tempat Wisata', 'Gaul', 1, 'belum', 'tidak');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `peran` enum('user','admin','','') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `nama_user`, `peran`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'user'),
(5, 'vanapakaya', 'vanapakaya@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Nirvana Suci Qoriana Pakaya', 'user'),
(7, 'rapyhy', 'rafiblue6@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Abdurrafi', 'user'),
(8, 'spkeputusan ', 'asdcd@asds.sdfs', '21232f297a57a5a743894a0e4a801fc3', 'sistem penentuk keputusan', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
