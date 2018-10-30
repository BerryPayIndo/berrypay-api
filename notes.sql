-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2018 at 09:16 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `berrypay`
--

CREATE TABLE `berrypay` (
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` text NOT NULL,
  `email_validation` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `country` varchar(10) NOT NULL,
  `id_users` int(30) NOT NULL,
  `qva` char(30) NOT NULL,
  `device_id` varchar(20) NOT NULL,
  `mother_name` varchar(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` varchar(20) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `created_at`, `updated_at`) VALUES
(3, 'Andre', 'Pekerja', '2018-10-29 04:53:12', '2018-10-29 04:47:32', '2018-10-29 11:47:32', '2018-10-29 11:53:12'),
(4, 'Aldi', 'Programmer', '2018-10-29 04:48:35', '2018-10-29 04:48:35', '2018-10-29 11:48:35', '2018-10-29 11:48:35'),
(5, 'Abdullah', 'Pekerja', '2018-10-29 04:51:55', '2018-10-29 04:51:55', '2018-10-29 11:51:55', '2018-10-29 11:51:55'),
(6, 'Aldo', 'Dasja', '2018-10-29 05:38:24', '2018-10-29 05:38:24', '2018-10-29 12:38:24', '2018-10-29 12:38:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berrypay`
--
ALTER TABLE `berrypay`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berrypay`
--
ALTER TABLE `berrypay`
  MODIFY `id_users` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
