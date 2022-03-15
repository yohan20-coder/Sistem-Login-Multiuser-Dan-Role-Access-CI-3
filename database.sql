-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 02:17 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_arsip`
--

-- --------------------------------------------------------

--
-- Table structure for table `arske`
--

CREATE TABLE `arske` (
  `id` int(5) NOT NULL,
  `nosurat` varchar(25) NOT NULL,
  `noklasi` varchar(25) NOT NULL,
  `ringkasan` text NOT NULL,
  `pengelolah` varchar(25) NOT NULL,
  `tglsurat` date NOT NULL,
  `kepada` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `surat` varchar(25) NOT NULL,
  `lamp1` varchar(25) NOT NULL,
  `lamp2` varchar(25) NOT NULL,
  `lamp3` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arske`
--

INSERT INTO `arske` (`id`, `nosurat`, `noklasi`, `ringkasan`, `pengelolah`, `tglsurat`, `kepada`, `keterangan`, `surat`, `lamp1`, `lamp2`, `lamp3`) VALUES
(13, 'K01/11/VIA/Kelurahan	', '601', 'Surat Peringatan', 'Sekertaris', '2021-03-25', 'Lurah Rewarangga', 'Peringatan', 'KHS_1.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `arsma`
--

CREATE TABLE `arsma` (
  `id` int(11) NOT NULL,
  `nosurat` varchar(50) NOT NULL,
  `noklasi` varchar(50) NOT NULL,
  `tglsurat` date NOT NULL,
  `tglteri` date NOT NULL,
  `perihal` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `disposisi` text NOT NULL,
  `pengirim` varchar(25) NOT NULL,
  `instansi` varchar(25) NOT NULL,
  `tembusan` varchar(25) NOT NULL,
  `tindak_lanjut` varchar(35) NOT NULL,
  `gbr_surat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arsma`
--

INSERT INTO `arsma` (`id`, `nosurat`, `noklasi`, `tglsurat`, `tglteri`, `perihal`, `isi`, `disposisi`, `pengirim`, `instansi`, `tembusan`, `tindak_lanjut`, `gbr_surat`) VALUES
(57, '11/VIA/Kelurahan', '101', '2020-08-11', '2020-08-10', 'Undangan Rapat', 'Undangan Menhadiri Pertemuan', 'sekertaris', '', 'Kec. Ende Timur', '', '', 'KHS_1.jpg'),
(58, '111112', '111112', '2021-10-05', '2021-10-05', 'Undangan Rapat2', 'asdda2', 'wqewqe2', 'qweq2', 'aeqwe2', 'qeqw2', 'wqeqweqw2', ''),
(59, '3333', '333', '2021-10-04', '2021-10-04', 'Undangan Rapat', 'ssfs', '', 'sfsfs', 'sfsf', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Andi', 'yohanesardinus@gmail.com', 'Logo_Golang_Basic_2.jpg', '$2y$10$UWHfrxur3PVtweVFKbrQmu7ANstY6ohk9H7cMLf.RYEGMGE3SuIcG', 1, 1, 1577927356);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(17, 1, 2),
(20, 2, 6),
(21, 2, 4),
(22, 1, 6),
(27, 1, 5),
(28, 1, 8),
(30, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `name`, `menu`) VALUES
(1, 'Administrator', 'Admin'),
(4, 'Manajemen Arsip', 'Arsip'),
(5, 'Setting Menu', 'Menu'),
(6, 'Setting Account', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 6, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 6, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 5, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 5, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(9, 5, 'Management Role Access', 'admin/role', 'fa fa-fw fa-user-tie', 1),
(10, 4, 'Arsip Surat Masuk', 'arsip', 'fas fa-fw fa-folder', 1),
(11, 4, 'Arsip Surat Keluar', 'arsip/suratkel', 'fas fa-fw fa-folder', 0),
(12, 5, 'Management Pengguna', 'menu/tampiluser', 'fas fa-fw fa-users', 1),
(13, 4, 'Tambah Data', 'arsip/tambah', 'fas fa-fw fa-plus', 1),
(14, 4, 'Laporan Arsip', 'arsip/laporan', 'fas fa-fw fa-print', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arske`
--
ALTER TABLE `arske`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arsma`
--
ALTER TABLE `arsma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arske`
--
ALTER TABLE `arske`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `arsma`
--
ALTER TABLE `arsma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
