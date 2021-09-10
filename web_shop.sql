-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 02:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(45) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `image`, `price`) VALUES
(1, 'Adidas Sabalo', 'These lightweight canvas shoes by adidas feature design details inspired by the wide-angle fisheye lens that gave skateboarding its visual style.', 'image/adidas.jpg', 125),
(2, 'Nike Air Max 270', 'That comes in the form of these Air Max 270 React low-top sneakers from Nike. Designed with Max Air cushioning, they\'re the modern look that you\'ve been waiting for.', 'image/nike.jpg', 150),
(3, 'Puma RS-X Puzzle', 'This thrice-eXaggerated form came from a process of stripping away everything from the original RS and building it back up with a stronger mix of materials and a design inspired by puzzles.', 'image/puma.jpg', 176),
(35, 'Adidas Testttt123', 'Sit qui non modi quod aspernatur.', 'image/adidastest.jpg', 197),
(36, 'Adidas Diabloo', 'In aperiam natus sit velit repudiandae sit dolorum.', 'image/adidas.jpg', 271),
(37, 'Adidas Diabloo', 'Impedit id libero quos sunt consequatur.', 'image/adidas.jpg', 36),
(38, 'Adidas Diabloo', 'Laborum voluptatibus exercitationem amet eligendi dolorem fugit.', 'image/adidas.jpg', 104),
(39, 'Adidas Diabloo', 'Mollitia id excepturi laudantium molestias velit dolores blanditiis.', 'image/adidas.jpg', 31),
(40, 'Adidas Diabloo', 'Possimus iusto libero quos harum.', 'image/adidas.jpg', 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
