


-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2024 at 03:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `category_name`) VALUES
(3, ''),
(6547592, 'BABY & KIDS'),
(6547588, 'BAKERY &DAIRY'),
(6547573, 'BAKERY SNACKS'),
(6547590, 'BEVERAGES &DRINKS'),
(57676, 'bhjbnknkb'),
(6547574, 'BREAD&BUNS'),
(6547576, 'BREAKFAST CEREALS'),
(6547575, 'CAKES'),
(6547568, 'choclate'),
(6547582, 'EDIBLE OILS'),
(6547579, 'EGGS'),
(2, 'fgfdgd'),
(6547581, 'FISH'),
(6547572, 'fresh fruits'),
(6547571, 'fresh vegetables'),
(6547584, 'FRUITS&VEGETABLES'),
(6547567, 'hfghgjg'),
(6547594, 'HOME & KITCHEN'),
(6547593, 'HOUSEHOLD'),
(6547583, 'MASALAS &SPICES'),
(6547585, 'MEAT &EGGS'),
(6547587, 'OIL,SPICES &PICKLES'),
(6547591, 'PERSONAL CARE'),
(6547578, 'PICKLES'),
(6547580, 'POULTRY'),
(6547595, 'SCHOOL & STATIONARY'),
(6547589, 'SNACKS &FOODS'),
(6, 'soap'),
(6547577, 'SPREADS,SAUCES,KETCHUP'),
(6547570, 'stationary'),
(6547586, 'SUGAR,SALT &GRAINS'),
(1, 'tgdt'),
(6547569, 'vegitables');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `price`, `quantity`, `image_path`) VALUES
(12, 'kiwi green 3 pcs', 'FRUITS&VEGETABLES', 139.00, 0, 'uploads/Screenshot 2024-10-18 163912.png'),
(13, 'njaalipovan payam', 'FRUITS&VEGETABLES', 26.00, 250, 'uploads/Screenshot 2024-10-18 164124.png'),
(14, 'ethapayam', 'FRUITS&VEGETABLES', 40.00, 500, 'uploads/Screenshot 2024-10-18 164146.png'),
(15, 'gooseberry(nellika)', 'FRUITS&VEGETABLES', 25.00, 250, 'uploads/Screenshot 2024-10-18 164159.png'),
(16, 'citrus(mosambi)', 'FRUITS&VEGETABLES', 115.00, 500, 'uploads/Screenshot 2024-10-18 164216.png'),
(17, 'capsicum', 'FRUITS&VEGETABLES', 45.00, 500, 'uploads/Screenshot 2024-10-18 164236.png'),
(18, 'yam elephant', 'FRUITS&VEGETABLES', 36.00, 500, 'uploads/Screenshot 2024-10-18 164258.png'),
(19, 'cauliflower', 'FRUITS&VEGETABLES', 48.00, 500, 'uploads/Screenshot 2024-10-18 164311.png'),
(20, 'pomgranate', 'FRUITS&VEGETABLES', 98.00, 500, 'uploads/Screenshot 2024-10-18 164325.png'),
(21, 'pineapple', 'FRUITS&VEGETABLES', 76.00, 1, 'uploads/Screenshot 2024-10-18 164336.png'),
(22, 'apple', 'FRUITS&VEGETABLES', 120.00, 500, 'uploads/Screenshot 2024-10-18 164349.png'),
(23, 'yellow cucumber', 'FRUITS&VEGETABLES', 33.00, 600, 'uploads/Screenshot 2024-10-18 164404.png'),
(24, 'chicken', 'MEAT &EGGS', 220.00, 4, 'uploads/Screenshot 2024-10-18 170428.png');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `usertype` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `usertype`) VALUES
('admin@gmail.com', 'admin123', 3),
('sona@gmail.com', 'asdfg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_ids` text NOT NULL,
  `delivery_address` text NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` enum('cod','online') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `item_ids`, `delivery_address`, `total_amount`, `payment_method`, `created_at`) VALUES
(1, 11, '1', 'adefsdg', 45.00, 'cod', '2024-10-17 09:00:21'),
(3, 11, '9', 'asdfghjkghcgfgt', 100.00, 'online', '2024-10-17 09:05:19'),
(4, 11, '1,3', 'ghgghhg', 90.00, 'online', '2024-10-17 09:26:11'),
(5, 0, '12', 'kuzhikkatumalil house', 139.00, 'cod', '2024-10-18 15:54:38'),
(6, 0, '24', 'dcfvbgkm', 220.00, 'cod', '2024-10-18 16:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phnum` int(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `position` varchar(35) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`name`, `email`, `phnum`, `pass`, `position`, `userid`) VALUES
('rizwana', 'ris@gmail.com', 2147483647, '123', 'saler', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phonenum` int(12) NOT NULL,
  `password` varchar(35) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `phonenum`, `password`, `userid`) VALUES
('sona', 'sona@gmail.com', 2147483647, 'asdfg', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `name` (`category_name`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6547597;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 04:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `category_name`) VALUES
(6547597, 'EGG&MEAT'),
(6547584, 'FRUITS&VEGETABLES'),
(6547599, 'OIL,SPICES &PICKLES'),
(6547598, 'SUGAR,SALT &GRAINS');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` varchar(11) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `price`, `quantity`, `image_path`) VALUES
(12, 'kiwi green 3 pcs', 'FRUITS&VEGETABLES', 139.00, '0', 'uploads/Screenshot 2024-10-18 163912.png'),
(13, 'njaalipovan payam', 'FRUITS&VEGETABLES', 26.00, '248', 'uploads/Screenshot 2024-10-18 164124.png'),
(14, 'ethapayam', 'FRUITS&VEGETABLES', 40.00, '499', 'uploads/Screenshot 2024-10-18 164146.png'),
(15, 'gooseberry(nellika)', 'FRUITS&VEGETABLES', 25.00, '249', 'uploads/Screenshot 2024-10-18 164159.png'),
(16, 'citrus(mosambi)', 'FRUITS&VEGETABLES', 115.00, '500', 'uploads/Screenshot 2024-10-18 164216.png'),
(17, 'capsicum', 'FRUITS&VEGETABLES', 45.00, '500', 'uploads/Screenshot 2024-10-18 164236.png'),
(18, 'yam elephant', 'FRUITS&VEGETABLES', 36.00, '500', 'uploads/Screenshot 2024-10-18 164258.png'),
(19, 'cauliflower', 'FRUITS&VEGETABLES', 48.00, '500', 'uploads/Screenshot 2024-10-18 164311.png'),
(20, 'pomgranate', 'FRUITS&VEGETABLES', 98.00, '500', 'uploads/Screenshot 2024-10-18 164325.png'),
(21, 'pineapple', 'FRUITS&VEGETABLES', 76.00, '1', 'uploads/Screenshot 2024-10-18 164336.png'),
(22, 'apple', 'FRUITS&VEGETABLES', 120.00, '499', 'uploads/Screenshot 2024-10-18 164349.png'),
(23, 'yellow cucumber', 'FRUITS&VEGETABLES', 33.00, '600', 'uploads/Screenshot 2024-10-18 164404.png'),
(24, 'chicken', 'MEAT &EGGS', 220.00, '1', 'uploads/Screenshot 2024-10-18 170428.png'),
(25, 'chilli', 'FRUITS&VEGETABLES', 28.00, '10', 'uploads/Screenshot 2024-10-23 164908.png'),
(26, 'coconut small', 'FRUITS&VEGETABLES', 28.00, '5', 'uploads/Screenshot 2024-10-23 164917.png'),
(27, 'kovakka', 'FRUITS&VEGETABLES', 20.00, '5', 'uploads/Screenshot 2024-10-23 164930.png'),
(28, 'manga', 'FRUITS&VEGETABLES', 45.00, '500', 'uploads/Screenshot 2024-10-23 164937.png'),
(29, 'lemon', 'FRUITS&VEGETABLES', 30.00, '5', 'uploads/Screenshot 2024-10-23 164951.png'),
(30, 'carrot', 'FRUITS&VEGETABLES', 33.00, '499', 'uploads/Screenshot 2024-10-23 165001.png'),
(31, 'potato', 'FRUITS&VEGETABLES', 25.00, '500', 'uploads/Screenshot 2024-10-23 165010.png'),
(32, 'payar', 'FRUITS&VEGETABLES', 16.00, '250', 'uploads/Screenshot 2024-10-23 165020.png'),
(33, 'savala', 'FRUITS&VEGETABLES', 25.00, '250', 'uploads/Screenshot 2024-10-23 165030.png'),
(34, 'EGG', 'EGG&MEAT', 6.00, '30', 'uploads/Screenshot 2024-10-23 170926.png'),
(35, 'SUGAR', 'SUGAR,SALT &GRAINS', 40.00, '5', 'uploads/Screenshot 2024-10-23 171225.png'),
(36, 'UZHUNNU', 'SUGAR,SALT &GRAINS', 87.00, '20', 'uploads/Screenshot 2024-10-23 171237.png'),
(37, 'CHERUPAYAR', 'SUGAR,SALT &GRAINS', 86.00, '20', 'uploads/Screenshot 2024-10-23 171303.png'),
(38, 'GREEN PEAS', 'SUGAR,SALT &GRAINS', 86.00, '20', 'uploads/Screenshot 2024-10-23 171314.png'),
(39, 'AJMI RICE POWDER', 'SUGAR,SALT &GRAINS', 70.00, '5', 'uploads/Screenshot 2024-10-23 171350.png'),
(40, 'AJMI STEAM PUTTU PODI', 'EGG&MEAT', 70.00, '5', 'uploads/Screenshot 2024-10-23 171411.png'),
(41, 'parachoot-coconut oil', 'OIL,SPICES &PICKLES', 56.00, '5', 'uploads/Screenshot 2024-10-23 172154.png'),
(42, 'garlic-pickle-600gm', 'OIL,SPICES &PICKLES', 120.00, '2', 'uploads/Screenshot 2024-10-23 172207.png'),
(43, 'mango pickle-600gm', 'OIL,SPICES &PICKLES', 120.00, '2', 'uploads/Screenshot 2024-10-23 172218.png'),
(44, 'sunflower oil', 'OIL,SPICES &PICKLES', 199.00, '5', 'uploads/Screenshot 2024-10-23 172241.png'),
(45, 'dalda', 'OIL,SPICES &PICKLES', 200.00, '5', 'uploads/Screenshot 2024-10-23 172304.png'),
(46, 'chilli powder', 'OIL,SPICES &PICKLES', 136.00, '10', 'uploads/Screenshot 2024-10-23 172316.png'),
(47, 'turmeric powder', 'OIL,SPICES &PICKLES', 55.00, '10', 'uploads/Screenshot 2024-10-23 172328.png');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `usertype` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `usertype`) VALUES
('admin@gmail.com', 'admin123', 3),
('saidu@gmail.com', 'saidu@123', 1),
('sona@gmail.com', 'asdfg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_ids` text NOT NULL,
  `delivery_address` text NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` enum('cod','online') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `item_ids`, `delivery_address`, `total_amount`, `payment_method`, `created_at`) VALUES
(1, 11, '1', 'adefsdg', 45.00, 'cod', '2024-10-17 09:00:21'),
(3, 11, '9', 'asdfghjkghcgfgt', 100.00, 'online', '2024-10-17 09:05:19'),
(4, 11, '1,3', 'ghgghhg', 90.00, 'online', '2024-10-17 09:26:11'),
(5, 0, '12', 'kuzhikkatumalil house', 139.00, 'cod', '2024-10-18 15:54:38'),
(6, 0, '24', 'dcfvbgkm', 220.00, 'cod', '2024-10-18 16:06:32'),
(7, 0, '13,24,22', 'fbjhbhgvhvghvvgv', 612.00, 'online', '2024-10-22 16:58:17'),
(8, 0, '14,15,24', 'kuzhikkatumalil', 285.00, 'online', '2024-10-22 17:30:40'),
(9, 0, '30', 'gfhgh', 33.00, 'cod', '2024-10-23 16:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phnum` int(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `position` varchar(35) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`name`, `email`, `phnum`, `pass`, `position`, `userid`) VALUES
('rizwana', 'ris@gmail.com', 2147483647, '123', 'saler', 6),
('saidu', 'saidu@gmail.com', 2147483647, 'saidu@123', 'cashier', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phonenum` int(12) NOT NULL,
  `password` varchar(35) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `phonenum`, `password`, `userid`) VALUES
('sona', 'sona@gmail.com', 2147483647, 'asdfg', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `name` (`category_name`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6547600;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
ALTER TABLE `staff`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
