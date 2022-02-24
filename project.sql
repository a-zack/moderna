-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 02:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner_post`
--

CREATE TABLE `banner_post` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `details` longtext NOT NULL,
  `buttton_txt` varchar(200) NOT NULL,
  `button_link` varchar(200) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_post`
--

INSERT INTO `banner_post` (`id`, `title`, `details`, `buttton_txt`, `button_link`, `status`) VALUES
(2, 'Eiusmod dolore labor', 'Quis cum excepteur v', 'Laboris necessitatib', 'Accusamus laboriosam', 0),
(5, 'Hic aut ex quae iste', 'Nisi magna soluta du', 'A cillum optio in e', 'Magni molestiae haru', 0),
(7, 'Iusto ipsum nostrud', 'Eaque eos impedit ', 'Repudiandae alias su', 'Perspiciatis sint t', 0),
(8, 'Rerum commodo et pla', 'Dolor neque molestia', 'Et est corporis sint', 'Exercitationem modi ', 0),
(9, 'Velit ea modi nostru', 'Error quia velit mol', 'Aute veniam irure a', 'Numquam eius id lab', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner_post`
--
ALTER TABLE `banner_post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner_post`
--
ALTER TABLE `banner_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
