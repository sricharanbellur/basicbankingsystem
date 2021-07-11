-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 12:57 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(4, 'Virat Kohli', 'Sparks Foundation', 100, '2021-07-11 14:17:46'),
(5, 'Sricharan Bellur', 'Sparks Foundation', 101, '2021-07-11 14:18:03'),
(6, 'MS Dhoni', 'Sparks Foundation', 10000, '2021-07-11 14:18:38'),
(7, 'Shah Rukh Khan', 'Sparks Foundation', 100000, '2021-07-11 14:19:01'),
(8, 'Sricharan Bellur', 'Shah Rukh Khan', 101010, '2021-07-11 14:21:07'),
(9, 'Alia Bhatt', 'Smiriti Mandhana', 10000, '2021-07-11 14:26:29'),
(10, 'Alia Bhatt', 'MS Dhoni', 10000, '2021-07-11 14:26:50'),
(11, 'Elliot Anderson', 'MS Dhoni', 100000, '2021-07-11 14:27:03'),
(12, 'Smiriti Mandhana', 'Alia Bhatt', 10000, '2021-07-11 14:27:18'),
(13, 'Sparks Foundation', 'Sricharan Bellur', 100000, '2021-07-11 14:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Sricharan Bellur', 'sricharancharan24@gmail.com', 398884),
(3, 'Sparks Foundation', 'sparks@gmail.com', 510201),
(4, 'Virat Kohli', 'viratkohli@gmail.com', 99900),
(5, 'MS Dhoni', 'msdcool7@gmail.com', 600000),
(8, 'Shah Rukh Khan', 'srkking@gmail.com', 5001010),
(9, 'Rohit Sharma', 'rohitman@gmail.com', 500000),
(10, 'Yuvraj Singh', 'yuvi12strong@gmail.com', 4000000),
(11, 'Alia Bhatt', 'aliabhatt@gmail.com', 90000),
(12, 'Smiriti Mandhana', 'smirtimandhana@gmail.com', 500000),
(13, 'Elliot Anderson', 'elliotanderson@gmail.com', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
