-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2017 at 02:36 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amaclone`
--
CREATE DATABASE IF NOT EXISTS `amaclone` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `amaclone`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'EYEBOGLER'),
(2, 'NETPLAY'),
(3, 'THE BEAR HOUSE'),
(4, 'DNMX'),
(5, 'MARKS & SPENCER'),
(6, 'GULMOHAR JAIPUR'),
(7, 'AVAASA MIX N MATCH'),
(8, 'RANGITA'),
(9, 'TRAMPOLINE'),
(10, 'PINK N BLUE'),
(11, 'KG FRENDZ'),
(12, 'SPUNK');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(79, 11, '0.0.0.0', 2, 'Baby Shirt', 'babyshirt.JPG', 1, 500, 500),
(80, 2, '0.0.0.0', 2, 'iPhone 5s', 'iphonemobile.JPG', 1, 25000, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Ladies Wear'),
(2, 'Mens Wear'),
(3, 'Kids Wear');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `tr_id`) VALUES
(30, 2, 6, 'LG Aqua 2', 15000, 1, 'CONFIRMED', '15179'),
(31, 2, 15, 'Football Shoes', 2500, 1, 'CONFIRMED', '15179'),
(32, 2, 16, 'Football', 600, 1, 'CONFIRMED', '15179');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, '3', '9', 'Baby Set', 500, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby.jfif', 'kids Wear'),
(2, '3', '9', 'Baby Set', 250, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby2.jfif', 'kids Wear'),
(3, '3', '10', 'Baby Set', 700, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby3.jfif', 'kids Wear'),
(4, '3', '11', 'Baby Set', 1000, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby4.jfif', 'kids Wear'),
(5, '3', '11', 'Baby Set',900, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby5.jfif', 'kids Wear'),
(6, '3', '10', 'Baby Set', 800, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby6.jfif', 'kids Wear'),
(7, '3', '12', 'Baby Set', 1500, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby7.jfif', 'lehenga biba'),
(8, '1', '8', 'SIlk Saree', 1000, 'Pure Silk Saree', 'saree.JPG', 'biba saree'),
(9, '2', '2', 'T-Shirt', 700, 'T-Shirt for summer', 'tshirt.JPG', 'flying machine tshirt'),
(10, '2', '1', 'FM Jeans', 800, 'Jeans for the ones who do', 'jeans.JPG', 'flying machine jeans'),
(11, '3', '10', 'Baby Shirt', 500, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'babyshirt.JPG', 'kids shirt kidzee'),
(12, '3', '10', 'Kids Jeans', 800, 'Jeans for kids', 'kidsjeans.JPG', 'kids jeans kidzee'),
(13, '3', '11', 'Baby Set', 200, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby8.jfif', 'kids Wear'),
(14, '3', '12', 'Baby Set', 600, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby9.jpeg', 'kids Wear'),
(15, '3', '11', 'Baby Set', 200, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby10.jpeg', 'kids Wear'),
(16, '3', '12', 'Baby Set', 400, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby11.jpeg', 'kids Wear'),
(17, '3', '9', 'Baby Set', 670, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby12.jpeg', 'kids Wear'),
(18, '3', '9', 'Baby Set', 800, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby13.jpeg', 'kids Wear'),
(19, '3', '9', 'Baby Set', 660, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby14.jpeg', 'kids Wear'),
(20, '3', '9', 'Baby Set', 490, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'baby15.jpeg', 'kids Wear'),
(21, '3', '12', 'Polka-Dot Fit & Flare dress', 1600, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'girl baby1.jfif', 'kids Wear'),
(22, '3', '11', 'V Line Frock', 2500, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'girl baby2.jfif', 'kids Wear'),
(23, '3', '10', 'Embellished Dress with Bow Accent', 2200, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'girl baby3.jfif', 'kids Wear'),
(24, '3', '10', 'Anarkali set', 670, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'girl baby4.jfif', 'kids Wear'),
(25, '3', '10', 'Floral Print Fit & Flare Dress', 1200, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'girl baby5.jfif', 'kids Wear'),
(26, '3', '10', 'Embellished Round-Neck Fit and Flare Dress', 1400, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'girl baby6.jfif', 'kids Wear'),
(27, '3', '12', 'Silk lehanga for kids', 2600, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'girl baby7.jfif', 'kids Wear'),
(28, '3', '12', 'Silk lehanga', 1700, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'girl baby8.jfif', 'kids Wear'),
(29, '3', '11', 'child set', 780, 'SPECIALLY DESIGNED FOR KIDS COMFORT FROM SOFTEST COMBED COTTON IN FUN COLORS THAT ADDS TO YOUR KIDS VIBE', 'child dress1.jfif', 'kids Wear'),
(30, '2', '1', 'Shirt', 600, 'Dress For Mens', 'men1.jpeg', 'Mens shirt'),
(31, '2', '1', 'Pant', 650, 'Dress For Men', 'pant1.jpeg', 'Mens'),
(32, '2', '2', 'Casual Shirt', 630, 'Dress For Men', 'shirt1.jpeg', 'Mens shirt'),
(33, '2', '3', 'Casual Shirt', 400, 'Dress For Men', 'shirt2.jpeg', 'Mens shirt'),
(34, '2', '4', 'Casual Shirt', 500, 'Dress For Mens', 'shirt3.jpeg', 'Mens shirt'),
(35, '2', '4', 'Casual Shirt', 360, 'Dress For Mens', 'shirt4.jpeg', 'Mens shirt'),
(36, '2', '4', 'Casual Shirt', 640, 'Dress For Men', 'shirt5.jpeg', 'Mens shirt'),
(37, '2', '3', 'Formal Shirt', 650, 'Dress For Mens', 'shirt6.jpeg', 'Mens shirt'),
(38, '2', '2', 'Formal Shirt', 780, 'Dress For Men', 'shirt7.jpeg', 'Mens shirt'),
(39, '2', '1', 'Formal Shirt', 980, 'Dress For Men', 'shirt8.jpeg', 'Mens shirt'),
(40, '2', '1', 'Formal Shirt', 900, 'Dress For Men', 'shirt9.jpeg', 'Mens shirt'),
(41, '2', '2', 'Formal Shirt', 760, 'Dress For Men', 'shirt10.jpeg', 'Mens shirt'),
(42, '2', '2', 'T-Shirt', 200, 'Dress For Mens', 'shirt11.jpeg', 'Mens shirt'),
(43, '2', '3', 'T-Shirt', 300, 'Dress For Mens', 'shirt12.jpeg', 'Mens shirt'),
(44, '2', '4', 'T-Shirt', 400, 'Dress For Mens', 'shirt13.jpeg', 'Mens shirt'),
(45, '2', '4', 'T-Shirt', 500, 'Dress For Mens', 'shirt14.jpeg', 'Mens shirt'),
(46, '2', '4', 'T-Shirt', 600, 'Dress For Mens', 'shirt15.jpeg', 'Mens shirt'),
(47, '2', '1', 'T-Shirt', 800, 'Dress For Mens', 'shirt16.jpeg', 'Mens shirt'),
(48, '2', '1', 'T-Shirt', 690, 'Dress For Mens', 'shirt17.jpeg', 'Mens shirt'),
(49, '2', '2', 'T-Shirt', 600, 'Dress For Mens', 'shirt18.jpeg', 'Mens shirt'),
(50, '2', '3', 'T-Shirt', 300, 'Dress For Mens', 'shirt19.jpeg', 'Mens shirt'),
(51, '2', '4', 'T-Shirt', 700, 'Dress For Mens', 'shirt20.jpeg', 'Mens shirt'),
(52, '2', '2', 'T-Shirt', 900, 'Dress For Mens', 'shirt21.jpeg', 'Mens shirt'),
(53, '2', '3', 'T-Shirt', 600, 'Dress For Mens', 'shirt22.jpeg', 'Mens shirt'),
(54, '2', '1', 'T-Shirt', 950, 'Dress For Mens', 'shirt23.jpeg', 'Mens shirt'),
(55, '2', '2', 'T-Shirt', 300, 'Dress For Mens', 'shirt24.jpeg', 'Mens shirt'),
(56, '2', '3', 'T-Shirt', 500, 'Dress For Mens', 'shirt25.jpeg', 'Mens shirt'),
(57, '1', '6', 'Leheng', 1240, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'lehenga.JPG', 'lehenga'),
(58, '1', '6', 'KURTA Set', 1000, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Kurta_set.jpeg', 'Kurta'),
(59, '1', '6', 'KURTA Set', 1400, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Kurta_set1.jpeg', 'Kurta'),
(60, '1', '6', 'KURTA Set', 1300, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Kurta_set2.jpeg', 'Kurta'),
(61, '1', '6', 'KURTA Set', 1500, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Kurta_set3.jpeg', 'Kurta'),
(62, '1', '6', 'KURTA Set', 1300, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Kurta_set4.jpeg', 'Kurta'),
(63, '1', '6', 'KURTA Set', 2100, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Kurta_set5.jpeg', 'Kurta'),
(64, '1', '7', 'KURTA', 2000, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Kurta.jpeg', 'Kurta'),
(65, '1', '7', 'KURTA', 1300, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Kurta1.jpeg', 'Kurta'),
(66, '1', '8', 'KURTA', 1600, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Kurta2.jpeg', 'Kurta'),
(67, '1', '8', 'Pant Top', 1900, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Pant_top.jpeg', 'top'),
(68, '1', '9', 'Top', 900, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Top.jpeg', 'top'),
(69, '1', '9', 'Top', 700, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'Top1.jpeg', 'top'),
(70, '1', '7', 'Women Shirt', 400, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'women_shirt.jpeg', 'shirt'),
(71, '1', '7', 'Women Shirt', 500, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'women_shirt1.jpeg', 'shirt'),
(72, '1', '6', 'Women Shirt', 600, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'women_shirt2.jpeg', 'shirt'),
(73, '1', '6', 'KURTA', 700, 'Are you looking for a Unique Pattern in Your Wardrobe and Highly Stylized Ethnic Desi. This Apparel is Very Stylish and Comfortable With Beautiful Designs and Patterns.', 'A_line_kurta.jpeg', 'Kurta');

-- --------------------------------------------------------

--
-- Table structure for table `received_payment`
--

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `amt` int(100) NOT NULL,
  `tr_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Satyam', 'Raj', 'satyammast@gmail.com', '3814d460c26c2dbab2d80294d2cc9882', '8235639917', 'Prem Electronics Block Road Ratu', 'Prem Electronics Block Road Ratu'),
(2, 'Abhijeet', 'Kumar', 'abhinav@krotos.com', '6cebe3b43c4495fdf87fcaa43b485236', '7631649503', 'West Lohanipur, Kadamkuan, MNS Lane', 'Patna'),
(3, 'Krotos', 'Kumar', 'kroto@star.com', 'e3daab6a6b16a140aaf0f1df98d3be24', '7631649503', 'West Lohanipur, Kadamkuan, MNS Lane', 'Patna'),
(4, 'Pranav', 'Prem', 'pranav.prem@gmail.com', '929847725b8d48b47ecba736b0d04520', '8235639917', 'Prem Electronics Block Road Ratu', 'sdsd'),
(5, 'Shubham', 'Raj', 'shubham@gmail.com', '5568fda880263b9be0b72104354fa3dc', '8235639917', 'Prem Electronics Block Road Ratu', 'bangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `received_payment`
--
ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `received_payment`
--
ALTER TABLE `received_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
