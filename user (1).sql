-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 04:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE `ideas` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `field` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `investmentreq` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`name`, `email`, `title`, `field`, `description`, `investmentreq`, `status`, `image`) VALUES
('Anchuri Pranavi', 'anchuri.pranavi4612@gmail.com', 'Eco-Friendly Napkins', 'Medical', 'Sanitary napkins are harmful to nature but it is important for every woman. So, We can make sanitary napkins that are eco-friendly, which also helps nature and Mother nature. Eco-friendly napkins are also safe for women\'s health. The napkins that are', '10,00,000', 'Full Investment Required', ''),
('Anchuri Pranavi', 'anchuri.pranavi4612@gmail.com', 'Dinner Lab', 'Communication', 'Dinner Lab offered a culinary experience with a group of strangers in an unusual place. It is a fine dining experience that includes fun and networking. It helps in expanding?our?network.The concept of Dinner Lab combines elements of gastronomy.', '5,00,000', 'Received Half payment', ''),
('Bhavani', 'reethu@gmail.com', 'FreshConnect', 'Food', 'Industry: E-Commerce\r\nFreshconnect is an online B2B marketplace for fresh agricultural produce like fruits & vegetables. It provides only organic vegetables and fruits. It supplies the fresh fruits and vegetables', '4,00,000', 'Full Investment Required', ''),
('Bhavani', 'reethu@gmail.com', 'Life Coaching', 'Social', 'A life coach provides counseling services and helps clients explore possibilities in the areas of personal development, financial issues, career path, relationship issues, and more. There is no licensing requirement for life coaching.', '2,00,000', 'Half Investment Receieved', '');

-- --------------------------------------------------------

--
-- Table structure for table `investor`
--

CREATE TABLE `investor` (
  `s.no` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phoneno` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investor`
--

INSERT INTO `investor` (`s.no`, `name`, `email`, `password`, `phoneno`) VALUES
(1, 'Alampally Reethu', 'reethubhavanialampally@gmail.com', '1234', 917382121226);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `uid` int(250) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phoneno` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`uid`, `name`, `email`, `password`, `phoneno`) VALUES
(1, 'Anchuri Pranavi', 'anchuri.pranavi4612@gmail.com', '4612', 916304896819),
(2, 'Bhavani', 'reethu@gmail.com', '1234', 917382121226);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `investor`
--
ALTER TABLE `investor`
  ADD PRIMARY KEY (`s.no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `investor`
--
ALTER TABLE `investor`
  MODIFY `s.no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `uid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
