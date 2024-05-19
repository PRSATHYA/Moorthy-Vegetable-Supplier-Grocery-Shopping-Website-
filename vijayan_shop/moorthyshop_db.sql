-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 06:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moorthyshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'Vijayan@Shop', '2379a910cb3992cfb1db6ef9ee34e3d24840ac85');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(29, 1, 1, 'Carrot', 30, 1, 'CARROT.jpg'),
(30, 1, 2, 'tomato', 40, 1, 'TOMATO.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'SATHYA POOMARI', 'prsathya04@gmail.com', '9769175851', 'Caroline is fifty-five years old. When she was young, she had brown hair. But now that she is fifty-five, she has a lot of grey and white hairs. Caroline doesn’t like the grey and white hairs. She thinks they make her look old. So she goes to the hairdresser and has her hair coloured.\r\n\r\nThe brown hair dye hides the grey and white hairs.\r\n\r\nCaroline moved to a new town. She had a new job and a new house. She was very busy. One morning, when she was doing her make up, she looked in the mirror. Oh'),
(2, 1, 'SATHYA POOMARI', 'prsathya04@gmail.com', '9769175851', 'Caroline is fifty-five years old. When she was young, she had brown hair. But now that she is fifty-five, she has a lot of grey and white hairs. Caroline doesn’t like the grey and white hairs. She thinks they make her look old. So she goes to the hairdresser and has her hair coloured.\r\n\r\nThe brown hair dye hides the grey and white hairs.\r\n\r\nCaroline moved to a new town. She had a new job and a new house. She was very busy. One morning, when she was doing her make up, she looked in the mirror. Oh my ');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'SATHYA POOMARI', '9769175851', 'prsathya04@gmail.com', 'paytm', 'skyline, 504, village rd, bhandup, mumbai, Maharashtra, India - 400078', 'Carrot (30 x 1) - ', 30, '2024-03-03', 'completed'),
(2, 1, 'SATHYA POOMARI', '9769175851', 'prsathya04@gmail.com', 'cash on delivery', 'skyline, 504, village rd, bhandup, mumbai, Maharashtra, India - 400078', 'Carrot (30 x 1) - tomato (40 x 2) - Rice (53 x 3) - Apple (120 x 1) - ', 389, '2024-03-04', 'completed'),
(4, 1, 'SATHYA POOMARI', '9769175851', 'prsathya04@gmail.com', 'cash on delivery', 'skyline, 504, village rd, bhandup, mumbai, Maharashtra, India - 400078', 'Amul Butter (100g) (54 x 99) - Carrot (30 x 99) - tomato (40 x 99) - Apple (120 x 99) - Wheat (108 x 99) - Rice (53 x 99) - mango (160 x 99) - Milk (25 x 99) - HomeMade Cheese (220 x 99) - ', 80190, '2024-03-08', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'Carrot', 'vegetables', 30, 'CARROT.jpg'),
(2, 'tomato', 'vegetables', 40, 'TOMATO.jpg'),
(3, 'Apple', 'fruits', 120, 'APPLE.jpg'),
(4, 'mango', 'fruits', 160, 'MANGO.jpg'),
(5, 'Rice', 'grains', 53, 'RICE.jpg'),
(6, 'Wheat', 'grains', 108, 'WHEAT.jpg'),
(7, 'Milk', 'dairy', 25, 'MILK.jpg'),
(8, 'HomeMade Cheese', 'dairy', 220, 'CHEESE.jpg'),
(10, 'Amul Butter (100g)', 'dairy', 54, 'AMUL BUTTER.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'SATHYA POOMARI', 'prsathya04@gmail.com', '9769175851', '014552e465e9e054090b32e73bcc06bfd6741951', 'skyline, 504, village rd, bhandup, mumbai, Maharashtra, India - 400078');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
