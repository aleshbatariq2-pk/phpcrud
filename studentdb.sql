-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2026 at 06:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_gender` varchar(50) NOT NULL,
  `student_age` int(11) NOT NULL,
  `student_class` varchar(50) NOT NULL,
  `image_path` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_gender`, `student_age`, `student_class`, `image_path`) VALUES
(2, 'alina Amir', 'female', 21, '11', 'images/Haya.jfif'),
(4, 'Liza', 'female', 10, '5', 'images/Liza.jfif'),
(5, 'Haya', 'female', 15, '12', 'images/Haya.jfif'),
(6, 'Hala Khan', 'female', 46, '23', 'images/Hala.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `username`, `email`, `PASSWORD`) VALUES
(1, 'AleshbaTariq', 'aleshbatariq2@gmail.com', '$2y$10$6/.JdPFJJEE4/TCRrb.k4u4McuD7mwR7fiay1QZNqB7RW9INvqnb2'),
(8, 'AleshbaTariq111', 'aleshbatariq2+3@gmail.com', '$2y$10$mPiEMZaY/0iCMPSD2AMzfuKElR7Rp/nUi2G.cwmXdmPhkmZpya9Eu'),
(9, 'AleshbaTariq', 'aleshbatariq2+14@gmail.com', '$2y$10$FMU5UvXpZa8PFsH.LLGDqe3jttsS29BbEGQfUentI2djN0PArujzW'),
(10, 'AleshbaTariq44', 'aleshbatariq2+65@gmail.com', '$2y$10$NKHVdZ9X16ZpZC7Ynz.cd.P7BGCUnPgHoNGzEUpO8maNcU6Tpvo5S');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
