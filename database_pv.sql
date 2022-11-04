-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 03:58 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_pv`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `email`, `psw`, `level`) VALUES
(1, 'user', 'user@gmail.com', '$2y$10$FmFV2m8p5iaQamhv.QDLKOu/ALvqnHWznoVt4jzvceDRqJIuubZCm', ''),
(2, 'admin', 'admin@gmail.com', '$2y$10$rNqslY6zi2aHeeC3QkHvh.zYZeLgAtYTS/zeDFDOqYh7iILHdE9vG', 'admin'),
(3, '', '', '$2y$10$yAGCE93pnE8T66K0QnbixeTJx/4.5iRp6a9LthkABBcay3etcXAHm', '');

-- --------------------------------------------------------

--
-- Table structure for table `form_pv`
--

CREATE TABLE `form_pv` (
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(12) NOT NULL,
  `dob` date NOT NULL,
  `message` varchar(1000) NOT NULL,
  `submit` text NOT NULL,
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_pv`
--

INSERT INTO `form_pv` (`nama`, `email`, `phone`, `dob`, `message`, `submit`, `id`, `gambar`) VALUES
('Selena Gomez', 'SG@gmail.com', 2147483647, '2022-10-10', 'AYOKKKK', '12:32:22pm', 3, ''),
('Lalisa Manobal', 'swift@gmail.com', 2147483647, '2022-10-14', 'AYUUUUkkkkkk', '06:09:43am', 4, ''),
('Ekleccia R', 'ekleccia.reydianto88@gmail.com', 928173121, '2022-10-06', 'Ya begitu saja', '11:29:02am', 8, ''),
('Rannel Elgio', 'elgio@gmail.com', 1234321, '2022-10-14', 'yyyyyy', '11:58:48am', 9, ''),
('ciaaakk', 'cia21@gmail.com', 1212321212, '0000-00-00', '', '09:52:43pm', 10, 'ciaaakk.jpg'),
('Alexa Wills', 'awaw@gmail.com', 121212121, '2022-11-01', 'yy', '11:16:09am', 11, 'Alexa Wills.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_pv`
--
ALTER TABLE `form_pv`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EMAIL` (`email`,`phone`,`dob`),
  ADD UNIQUE KEY `nama` (`nama`),
  ADD UNIQUE KEY `Message` (`message`,`submit`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_pv`
--
ALTER TABLE `form_pv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
