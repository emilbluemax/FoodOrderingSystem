-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 04:34 PM
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
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '98d9a31704613831c1512a43118e870e', 'admin@mail.com', '', '2022-05-27 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(19, 5, 'Chicken biryani', 'An Authentic Hyderabadi Biryani where succulent Chicken piece is marinated with a blend of spices, layered with the finest Basmati Rice.', '150.00', '63555df47d7f4.jpg'),
(20, 5, 'Chicken Kebabs', 'Kebabs consist of cut up or ground meat, sometimes with vegetables and various other accompaniments according to the specific recipe. ', '200.00', '635566a26039d.jpg'),
(21, 7, 'Chicken Ramen', 'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg. ', '580.00', '6355671051826.jpg'),
(23, 8, 'Dumplings', 'Spiced Dumplings Touched With Chicken, Kaffir Lime And Steamed', '100.00', '63556aed62165.jpg'),
(24, 9, 'Risotto', 'Risotto is a typical northern Italian dish that can be cooked in an infinite number of ways. Creamy and rich in cheese.', '400.00', '63556c14c5380.jpg'),
(25, 9, 'Gelato', 'handmade from whole milk, sugar, and other flavourings, typically fruit, chocolate, and nuts.', '120.00', '63556ca9c20fc.jpg'),
(26, 8, 'Soy milk Pudding', 'his delicious pudding combines two favorite ingredients: black sesame and soy milk! It’s smooth, silky, and never too sweet. We make one layer of black sesame pudding and top it with a layer of soy milk pudding. We use aga', '135.00', '635ba49262b04.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(13, 11, 'closed', 'Thank You', '2022-10-25 07:02:34'),
(14, 12, 'in process', 'Thank You', '2022-10-25 07:03:09'),
(15, 12, 'closed', 'Thank You', '2022-10-25 07:03:37'),
(16, 13, 'closed', 'delivered', '2022-11-12 07:19:19'),
(17, 14, 'in process', 'one the way', '2022-11-12 07:19:58'),
(18, 15, 'rejected', 'cancelled', '2022-11-12 07:20:39'),
(19, 14, 'closed', 'delivered', '2022-11-13 10:52:37'),
(20, 15, 'closed', 'thank you', '2022-11-14 15:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 1, 'Empire', 'info@hotelempire.in ', '080 4041-4141', 'https://www.hotelempire.in/ ', '10am', '11pm', '24hr-x7', '#14 Pottery Road \r\nRichards Town, Opposite Bangalore East Station, \r\nBengaluru, 560005 - Karnataka India ', '63551ad168c17.jpg', '2022-10-23 10:43:29'),
(6, 1, 'Taj West End ', 'westend.bangalore@tajhotels.com', '+91 080-66605660', 'https://www.tajhotels.com/en-in/taj/taj-west-end-bengaluru', '7am', '12am', '24hr-x7', 'Racecourse Road, Bengaluru, Karnataka, 560001, India', '63551b8f03b4a.jpg', '2022-10-23 10:46:39'),
(7, 5, 'Taiki', 'taiki.indiranagar@gmail.com', '080 4370 3820 ', 'taiki.in ', '12pm', '12am', '24hr-x7', '#656, 100 ft. Road, Indiranagar, Bangalore, India, Karnataka ', '63551c2c187fd.jpg', '2022-10-23 10:49:16'),
(8, 7, 'Yauatcha', 'Yauatcha@gmail.com ', '092222 22800 ', 'https://yauatcha.com/bengaluru/ ', '10am', '12am', '24hr-x7', 'Level 5, 1 MG Road Mall \r\nMG Road \r\nBengaluru 560 008 ', '63551cb92d406.jpg', '2022-10-23 10:51:37'),
(9, 8, 'Italia-The Park ', 'talia@theparkhotels.com ', '+91 89 1053 0619 ', 'https://www.theparkhotels.com/bangalore/dining/italia.html ', '11am', '12am', '24hr-x7', 'THE Park Bangalore, 14/7 Mahatma Gandhi Road, Bangalore, Karnataka 560042, India', '63551d14c9570.jpg', '2022-10-23 10:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Indian', '2022-10-23 10:13:34'),
(5, 'Japanese', '2022-10-23 10:47:11'),
(6, 'American', '2022-10-23 10:12:37'),
(7, 'Chinese', '2022-10-23 10:12:50'),
(8, 'Italian', '2022-10-23 10:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(7, 'emil', 'Emil', 'Bluemax', 'cyanide484@gmail.com', '9449777791', '0559101425e4431b0a929d5fb7ea3b83', 'Diagon Alley', 1, '2022-10-23 16:44:26'),
(8, 'daniel', 'Daniel', 'Christopher', 'daniel@gmail.com', '9237658891', '0d9e37ca3b9cb8c5dc7d6b526bd78ea6', 'Victoria layout,Bangalore 45', 1, '2022-10-23 16:46:19'),
(9, 'karan', 'Karan', 'Chauhan', 'karan@gmail.com', '9444356891', '6f2afabe045c75a525aac6f89f46b9fb', 'Garden of eden,electronic city,bangalore 85', 1, '2022-10-23 16:47:34'),
(10, 'shadab', 'Shadab', 'Kouser', 'shadab@gmail.com', '9449111891', 'f5fdba9291ec81fe87f7813c4d6522c7', 'World end, Indranager, Bangalore 35', 1, '2022-10-23 16:49:46'),
(11, 'john', 'John', 'Doe', 'john@gmail.com', '9422208891', '6579e96f76baa00787a28653876c6127', 'Snake cabin, Banshankri, Bangalore 33', 1, '2022-10-23 16:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(11, 8, 'Chicken biryani', 1, '150.00', 'closed', '2022-10-25 07:02:34'),
(12, 8, 'Chicken Kebabs', 1, '200.00', 'closed', '2022-10-25 07:03:37'),
(13, 8, 'Chicken biryani', 1, '150.00', 'closed', '2022-11-12 07:19:19'),
(14, 8, 'Dumplings', 1, '100.00', 'closed', '2022-11-13 10:52:37'),
(15, 8, 'Risotto', 1, '400.00', 'closed', '2022-11-14 15:33:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `rs_id` (`rs_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frm_id` (`frm_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `u_id` (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_ibfk_1` FOREIGN KEY (`rs_id`) REFERENCES `restaurant` (`rs_id`);

--
-- Constraints for table `remark`
--
ALTER TABLE `remark`
  ADD CONSTRAINT `remark_ibfk_1` FOREIGN KEY (`frm_id`) REFERENCES `users_orders` (`o_id`);

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `res_category` (`c_id`);

--
-- Constraints for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD CONSTRAINT `users_orders_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
