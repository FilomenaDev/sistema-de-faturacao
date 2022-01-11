-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2018 at 09:33 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restpos`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `customercredit`
--
CREATE TABLE `customercredit` (
`ID` int(50)
,`Name` varchar(250)
,`Mobile` varchar(250)
,`Address` varchar(450)
,`EmailAddress` varchar(250)
,`City` varchar(250)
,`PeopleType` varchar(250)
);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `product_id` varchar(111) NOT NULL,
  `product_name` varchar(450) DEFAULT NULL,
  `product_quantity` decimal(18,2) NOT NULL,
  `cost_price` decimal(18,2) NOT NULL,
  `retail_price` decimal(18,2) NOT NULL,
  `total_cost_price` decimal(18,2) NOT NULL,
  `total_retail_price` decimal(18,2) NOT NULL,
  `category` varchar(111) DEFAULT NULL,
  `supplier` varchar(111) DEFAULT NULL,
  `imagename` varchar(111) DEFAULT NULL,
  `discount` decimal(18,2) NOT NULL,
  `taxapply` int(11) DEFAULT NULL,
  `shopid` varchar(111) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` varchar(450) DEFAULT NULL,
  `weight` varchar(111) DEFAULT NULL,
  `mdate` varchar(111) DEFAULT NULL,
  `edate` varchar(111) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`product_id`, `product_name`, `product_quantity`, `cost_price`, `retail_price`, `total_cost_price`, `total_retail_price`, `category`, `supplier`, `imagename`, `discount`, `taxapply`, `shopid`, `status`, `description`, `weight`, `mdate`, `edate`) VALUES
('8940000000002', 'Cocacola 200ml', '239.50', '1.90', '2.50', '496.85', '653.75', 'SoftDrink', 'CocaCola', '8940000000002.png', '0.00', 1, 'MTQC02', 1, '', '200ml', '2017-08-02', '2018-06-03'),
('8940000000003', 'Pizaa_Mid400gm', '44.00', '7.00', '9.99', '630.00', '899.10', 'Food', 'Mcdonalds', '8940000000003.png', '0.00', 1, 'MTQC02', 3, NULL, '400gm', NULL, '2017-08-12'),
('8940000000007', 'Cocktail_juice', '1923.00', '2.25', '3.99', '4398.75', '7800.45', 'Food', 'Mcdonalds', '8940000000007.png', '5.00', 1, 'HamRT5', 3, NULL, NULL, NULL, '2017-09-12'),
('8940000000009', 'CocalcolaCan', '731.85', '0.99', '1.15', '762.30', '885.50', 'SoftDrink', 'CocaCola', '8940000000009.png', '0.00', 1, 'MTQC02', 1, NULL, NULL, NULL, '2017-09-12'),
('8940000000010', 'Shrimp_fry ', '260.00', '1.00', '1.75', '269.00', '470.75', 'Fish', 'Subway', 'cb124133-0473-492f-8c31-0caa32706cc2.png', '0.00', 1, 'MTQC02', 3, '', '300gm', '', ''),
('8940000000011', 'BurgerJuice', '365.00', '3.00', '4.99', '1113.00', '1851.29', 'Burger', 'Subway', '1ddbcc01-3ad7-4dfa-9775-75e50bbb84aa.png', '0.00', 1, 'MTQC02', 3, 'Burger,Juice', '', '', ''),
('8940000000012', 'Mc_Chicken_sm', '7664.00', '1.00', '1.50', '7687.00', '11530.50', 'Burger', 'Mcdonalds', '8940000000012.png', '0.00', 1, 'MTQC02', 3, 'Ingredients: Beef , salt , bread', '100gm', '2017-08-21', '2017-10-29'),
('8940000000013', 'Mc_Double_sm', '862.00', '1.25', '1.99', '1077.50', '1715.38', 'Burger', 'Mcdonalds', '8940000000013.png', '0.00', 1, 'WION05', 3, 'Ingredients: Beef , salt , bread', '100gm', '2017-08-03', '2017-10-20'),
('8940000000014', 'MountainDew770', '23.00', '4.00', '5.00', '152.00', '190.00', 'CoolDrink', 'Dew', '8940000000014.png', '0.00', 1, 'MTQC02', 1, NULL, NULL, NULL, NULL),
('8940000000015', 'Chicken_Rice', '24.00', '9.00', '12.55', '252.00', '351.40', 'Chicken', 'Subway', '175a28dc-ef18-4b81-a6a9-7073cd690fc8.png', '0.00', 1, 'MTQC02', 3, 'Chicken,Rice,Salad', '', '', ''),
('8940000000016', 'Hot_dog_200gm', '327.00', '5.00', '6.50', '1675.00', '2177.50', 'Burger', 'Mcdonalds', '593dd84a-d12d-4861-b063-5e3576f640a3.png', '0.00', 1, 'MTQC02', 3, 'Ingredients gfg', '200', '2017-11-01', '2017-11-11'),
('8940000000017', 'Chicken_Bhona', '359.00', '1.00', '1.25', '366.00', '457.50', 'Chicken', 'Subway', '8940000000017.png', '0.00', 1, 'MTQC02', 3, '', '', '', ''),
('8940000000019', 'PUDDING', '175.00', '0.99', '1.00', '194.04', '196.00', 'Food', 'Mcdonalds', '8940000000019.png', '0.00', 0, 'MTQC02', 3, NULL, NULL, NULL, '2017-11-23'),
('8940000000021', 'Fas_foodMIX', '364.00', '10.00', '12.25', '3680.00', '4508.00', 'FastFood', 'Tim Horton', 'e00ad278-d71e-467b-aa03-98cb5a475112.png', '0.00', 0, 'MTQC02', 3, 'French Fries,Burger,juice..', '', '', ''),
('8940000000022', 'Tea_sm', '881.00', '1.00', '1.25', '885.00', '1106.25', 'Coffe', 'Tim Horton', '794492a0-8842-4438-8854-5e58b3cc5375.png', '0.00', 1, 'MTQC02', 3, '', '', '', ''),
('8940000000023', 'Juice-250gm', '26.00', '1.00', '1.99', '34.00', '67.66', 'soft_drink', 'Tim Horton', '545ea84a-07ad-4e53-93e7-40fac0c65522.png', '0.00', 1, 'MTQC02', 3, '', '250', '', ''),
('8940000000024', 'Nodlles_400gm', '5.00', '4.00', '5.99', '20.00', '29.95', 'Soup', 'Mcdonalds', 'cbf7d769-dc8e-477e-af3d-51bb95487f8e.png', '0.00', 1, 'MTQC02', 3, '', '', '', ''),
('8940000000025', 'Salmon_Teriyaki', '10.63', '12.00', '14.89', '247.56', '307.18', 'Fish', 'G M Gulam', 'f7e314d4-f2d2-4b90-a563-3bcb70670d65.png', '0.00', 1, 'MTQC02', 3, '', '1lb', '', '2017-07-30'),
('8940000000026', 'Mix_salad', '24.00', '1.00', '1.99', '32.00', '63.68', 'Vegetable', 'Subway', '8484436b-091b-485c-98ad-d7f3f8569951.png', '0.00', 1, 'MTQC02', 3, 'Salad: Lemon, cucumber, tomato, salt, letos leaf', '', '', '2017-08-11'),
('8940000000027', 'Coffe_Mix_milk', '2458.00', '1.00', '2.49', '2474.00', '6160.26', 'Coffe', 'Tim Horton', '8940000000027.png', '5.00', 0, 'MTQC02', 3, 'ingredient:  salt', '', '', '2017-07-11'),
('5656', 'PIZZA_2KG', '82.00', '56.00', '66.00', '4984.00', '5874.00', 'Pizza', 'Subway', 'e8bb207f-2843-4fd8-be7d-799cdca03082.png', '2.00', 0, 'MTQC02', 3, '', '', '', '2017-10-04'),
('80045332', 'Pizza_slice', '10.00', '2.00', '2.99', '32.00', '47.84', 'Pizza', 'Mcdonalds', '2197aa81-a97d-478c-ae65-5004513d4bf0.png', '0.00', 0, 'MTQC02', 1, '', '', '', '2017-12-10'),
('8940000000035', 'French_Fries_SM', '322.00', '2.00', '2.25', '654.00', '735.75', 'Food', 'Tim Horton', 'b9491b54-f880-4411-aad1-aa67817a4cfb.png', '0.00', 1, 'MTQC02', 3, 'des', '200gm', '2017-11-01', '2017-12-10'),
('134586798323', 'Miso_Soup', '185.01', '2.00', '3.99', '388.02', '774.10', 'Soup', 'Mcdonalds', '16fd0e50-ddfd-4dc5-81a6-25b287b84660.png', '0.00', 1, 'MTQC02', 3, 'Mix Miso Soup', '', '', '2017-09-10'),
('897463585492', 'Coffe_medium', '210.00', '1.00', '1.49', '231.00', '344.19', 'Coffe', 'Mcdonalds', '897463585492.png', '0.00', 1, 'MTQC02', 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `return_item`
--

CREATE TABLE `return_item` (
  `return_id` bigint(111) NOT NULL,
  `item_id` varchar(111) DEFAULT NULL,
  `itemname` varchar(250) DEFAULT NULL,
  `qty` decimal(18,2) NOT NULL,
  `retailsprice` decimal(18,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `return_time` varchar(111) DEFAULT NULL,
  `custno` varchar(111) DEFAULT NULL,
  `emp` varchar(111) DEFAULT NULL,
  `soldinvoiceno` varchar(111) DEFAULT NULL,
  `comment` varchar(111) DEFAULT NULL,
  `disamt` decimal(18,2) NOT NULL,
  `vatamt` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_item`
--

INSERT INTO `return_item` (`return_id`, `item_id`, `itemname`, `qty`, `retailsprice`, `total`, `return_time`, `custno`, `emp`, `soldinvoiceno`, `comment`, `disamt`, `vatamt`) VALUES
(1, '8940000000011', 'BurgerJuice', '1.00', '4.99', '4.99', '2018-03-28', '10000009', 'a', '7', '', '0.00', '1.00'),
(2, '8940000000002', 'Cocacola 200ml', '1.00', '2.50', '2.50', '2018-03-28', '10000009', 'a', '7', '', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_item`
--

CREATE TABLE `sales_item` (
  `sales_id` varchar(111) DEFAULT NULL,
  `item_id` bigint(111) NOT NULL,
  `itemname` varchar(111) DEFAULT NULL,
  `qty` decimal(18,2) NOT NULL,
  `retailsprice` decimal(18,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `profit` decimal(18,2) NOT NULL,
  `sales_time` varchar(111) DEFAULT NULL,
  `itemcode` varchar(111) DEFAULT NULL,
  `discount` decimal(18,2) NOT NULL,
  `taxapply` varchar(111) DEFAULT NULL,
  `note` varchar(450) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_item`
--

INSERT INTO `sales_item` (`sales_id`, `item_id`, `itemname`, `qty`, `retailsprice`, `total`, `profit`, `sales_time`, `itemcode`, `discount`, `taxapply`, `note`, `status`) VALUES
('1', 2, 'Coffe_medium', '1.00', '1.49', '1.49', '0.49', '2018-02-18', '897463585492', '0.00', '1', '', 1),
('1', 3, 'PIZZA_2KG', '1.00', '66.00', '66.00', '8.68', '2018-02-18', '5656', '2.00', '0', '', 1),
('1', 4, 'Mix_salad', '1.00', '1.99', '1.99', '0.99', '2018-02-18', '8940000000026', '0.00', '1', '', 1),
('1', 5, 'Mc_Chicken_sm', '1.00', '1.50', '1.50', '0.50', '2018-02-18', '8940000000012', '0.00', '1', '', 1),
('1', 6, 'Juice-250gm', '1.00', '1.99', '1.99', '0.99', '2018-02-18', '8940000000023', '0.00', '1', '', 1),
('2', 7, 'Salmon_Teriyaki', '1.00', '14.89', '14.89', '2.89', '2018-02-18', '8940000000025', '0.00', '1', ' Tomato Tom Ketchup ', 3),
('2', 8, 'BurgerJuice', '1.00', '4.99', '4.99', '1.99', '2018-02-18', '8940000000011', '0.00', '1', '', 1),
('2', 9, 'Mc_Double_sm', '1.00', '1.99', '1.99', '0.74', '2018-02-18', '8940000000013', '0.00', '1', 'Milk ', 3),
('2', 10, 'MountainDew770', '1.00', '5.00', '5.00', '1.00', '2018-02-18', '8940000000014', '0.00', '1', '', 1),
('3', 11, 'Chicken_Bhona', '1.00', '1.25', '1.25', '0.25', '2018-02-19', '8940000000017', '0.00', '1', '', 1),
('3', 12, 'Apple_400gm', '1.00', '5.99', '5.99', '1.99', '2018-02-19', '8940000000024', '0.00', '1', 'Spicy ', 3),
('4', 13, 'BurgerJuice', '1.00', '4.99', '4.99', '1.99', '2018-03-28', '8940000000011', '0.00', '1', 'Sugar ', 3),
('5', 14, 'Chicken_Bhona', '1.00', '1.25', '1.25', '0.25', '2018-03-28', '8940000000017', '0.00', '1', 'Spicy Tom Ketchup ', 3),
('6', 15, 'Chicken_Rice', '1.00', '12.55', '12.55', '3.55', '2018-03-28', '8940000000015', '0.00', '1', 'Salt ', 3),
('6', 16, 'Mix_salad', '1.00', '1.99', '1.99', '0.99', '2018-03-28', '8940000000026', '0.00', '1', ' Sugar ', 3),
('6', 17, 'PUDDING', '1.00', '1.00', '1.00', '0.01', '2018-03-28', '8940000000019', '0.00', '0', '', 3),
('7', 18, 'BurgerJuice', '0.00', '4.99', '0.00', '1.99', '2018-03-28', '8940000000011', '0.00', '1', '', 3),
('7', 19, 'Cocacola 200ml', '0.00', '2.50', '0.00', '0.60', '2018-03-28', '8940000000002', '0.00', '1', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_payment`
--

CREATE TABLE `sales_payment` (
  `sales_id` bigint(111) NOT NULL,
  `payment_type` varchar(111) DEFAULT NULL,
  `payment_amount` decimal(18,2) NOT NULL,
  `change_amount` decimal(18,2) NOT NULL,
  `due_amount` decimal(18,2) NOT NULL,
  `dis` decimal(18,2) NOT NULL,
  `vat` decimal(18,2) NOT NULL,
  `sales_time` varchar(111) DEFAULT NULL,
  `c_id` varchar(111) DEFAULT NULL,
  `emp_id` varchar(111) DEFAULT NULL,
  `comment` varchar(450) DEFAULT NULL,
  `trxtype` varchar(111) DEFAULT NULL,
  `shopid` varchar(111) DEFAULT NULL,
  `ovdisrate` decimal(18,2) NOT NULL,
  `vaterate` decimal(18,2) NOT NULL,
  `ordertime` varchar(111) DEFAULT NULL,
  `tableno` varchar(111) DEFAULT NULL,
  `tokenno` varchar(111) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_payment`
--

INSERT INTO `sales_payment` (`sales_id`, `payment_type`, `payment_amount`, `change_amount`, `due_amount`, `dis`, `vat`, `sales_time`, `c_id`, `emp_id`, `comment`, `trxtype`, `shopid`, `ovdisrate`, `vaterate`, `ordertime`, `tableno`, `tokenno`) VALUES
(1, 'Cash', '72.69', '0.00', '0.00', '0.00', '1.04', '2018-02-18', '10000009', 'admin', 'Guest', 'POS', 'MTQC02', '0.00', '14.98', '23:37', '', '1'),
(2, 'Cash', '30.89', '0.00', '0.00', '0.00', '4.02', '2018-02-18', '10000009', 'admin', '', 'POS', 'MTQC02', '0.00', '14.98', '23:37', '-', '2'),
(3, 'Cash', '8.32', '0.00', '0.00', '0.00', '1.08', '2018-02-19', '10000009', 'admin', 'Guest', 'POS', 'MTQC02', '0.00', '14.98', '13:08', 'TAB-03', '1'),
(4, 'Cash', '5.74', '0.00', '0.00', '0.00', '0.75', '2018-03-28', '0', 'a', '', 'POS', 'MTQC02', '0.00', '14.98', '13:05', 'TAB-01', '1'),
(5, 'Cash', '1.44', '0.00', '0.00', '0.00', '0.19', '2018-03-28', '10000009', 'a', '', 'POS', 'MTQC02', '0.00', '14.98', '13:15', 'TAB-04', '2'),
(6, 'Cash', '17.72', '0.00', '0.00', '0.00', '2.18', '2018-03-28', '10000009', 'a', '', 'POS', 'MTQC02', '0.00', '14.98', '15:03', 'TAB-01', '5'),
(7, 'Cash', '8.61', '0.00', '0.00', '0.00', '1.12', '2018-03-28', '10000009', 'a', '', 'POS', 'MTQC02', '0.00', '14.98', '15:09', '-', '6');

-- --------------------------------------------------------

--
-- Table structure for table `storeconfig`
--

CREATE TABLE `storeconfig` (
  `id` int(11) NOT NULL,
  `companyname` varchar(450) DEFAULT NULL,
  `companyaddress` varchar(450) DEFAULT NULL,
  `companyphone` varchar(111) DEFAULT NULL,
  `vatno` varchar(111) DEFAULT NULL,
  `web` varchar(111) DEFAULT NULL,
  `vatrate` varchar(111) DEFAULT NULL,
  `disrate` varchar(111) DEFAULT NULL,
  `footermsg` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storeconfig`
--

INSERT INTO `storeconfig` (`id`, `companyname`, `companyaddress`, `companyphone`, `vatno`, `web`, `vatrate`, `disrate`, `footermsg`) VALUES
(1, 'Marche Amar', '3536 Rue Milton, Montreal QC H2X 2G8', '+001 226 526 9411', 'VAT4356', 'www.citputer.com', '14', '0', 'Your Footer message it will appear on Receipt.\r\nThanks for Shopping');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `ID` int(50) NOT NULL,
  `category_name` varchar(350) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`ID`, `category_name`) VALUES
(1, 'Food'),
(3, 'Cigarettes'),
(4, 'Drinks'),
(6, 'Electronic'),
(7, 'Milk'),
(8, 'Vegetable'),
(9, 'Burger'),
(10, 'soft_drink'),
(11, 'Fruit'),
(12, 'CoolDrink'),
(13, 'Others'),
(14, 'Coffe'),
(15, 'Water'),
(19, 'OIL'),
(20, 'GAS'),
(27, 'Candy'),
(28, 'Cream'),
(29, 'Buscit'),
(30, 'Rice'),
(32, 'Fish'),
(33, 'Pizza'),
(34, 'Juice'),
(35, 'FastFood'),
(36, 'Beef'),
(37, 'Chicken'),
(38, 'Soup');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_custcredit`
--

CREATE TABLE `tbl_custcredit` (
  `id` bigint(55) NOT NULL,
  `custid` bigint(55) NOT NULL,
  `orderid` varchar(255) NOT NULL,
  `date` varchar(55) NOT NULL,
  `credit` decimal(18,2) NOT NULL,
  `description` varchar(444) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_custcredit`
--

INSERT INTO `tbl_custcredit` (`id`, `custid`, `orderid`, `date`, `credit`, `description`) VALUES
(1, 10000002, '1', '2015-10-05', '5.04', 'Add Rewards'),
(2, 10000004, '2', '2015-10-05', '12.47', 'Add Rewards'),
(3, 10000010, '3', '2015-10-05', '12.47', 'Add Rewards'),
(4, 10000001, 'SyS', '2015-10-05', '10.00', 'Bonus'),
(5, 10000010, '3', '2015-10-05', '-16.86', 'Subtract rewards order Return'),
(6, 10000011, '4', '2015-10-05', '15.96', 'Add Rewards'),
(7, 10000011, '4', '2015-10-05', '-19.15', 'Subtract rewards order Return'),
(8, 10000009, '5', '2015-10-05', '3.49', 'Add Rewards'),
(9, 10000009, '6', '2015-10-06', '12.47', 'Add Rewards'),
(10, 10000009, '7', '2015-10-05', '12.47', 'Add Rewards'),
(11, 10000009, '7', '2015-10-05', '-14.96', 'Subtract rewards order Return'),
(12, 10000001, 'SyS', '2015-10-08', '10.00', 'ss'),
(13, 10000009, '8', '2015-11-13', '4.04', 'Add Rewards'),
(14, 10000009, '9', '2015-11-13', '2.49', 'Add Rewards'),
(15, 10000009, '10', '2015-11-14', '3.49', 'Add Rewards'),
(16, 10000009, '11', '2016-01-06', '1.55', 'Add Rewards'),
(17, 10000009, '12', '2016-01-20', '3.09', 'Add Rewards'),
(18, 10000009, '13', '2016-03-04', '4.64', 'Add Rewards'),
(19, 10000009, '14', '2016-03-05', '6.98', 'Add Rewards'),
(20, 10000010, '15', '2016-03-05', '1.55', 'Add Rewards'),
(21, 10000009, '16', '2016-03-06', '1.55', 'Add Rewards'),
(22, 10000009, '17', '2016-03-20', '6.98', 'Add Rewards'),
(23, 10000009, '18', '2016-03-20', '3.09', 'Add Rewards'),
(24, 10000002, '19', '2016-03-20', '5.04', 'Add Rewards'),
(25, 10000009, '20', '2016-08-30', '1.55', 'Add Rewards'),
(26, 10000002, '1', '2016-09-09', '-6.05', 'Subtract rewards order Return'),
(27, 10000002, '1', '2016-09-14', '-6.05', 'Subtract rewards order Return'),
(28, 10000009, '37', '2016-09-15', '3.79', 'Add Rewards'),
(29, 10000009, '38', '2016-09-15', '3.79', 'Add Rewards'),
(30, 10000010, '40', '2016-09-15', '3.79', 'Add Rewards'),
(31, 10000009, '41', '2016-09-15', '3.79', 'Add Rewards'),
(32, 10000009, '44', '2016-09-15', '3.79', 'Add Rewards'),
(33, 10000009, '45', '2016-09-15', '3.79', 'Add Rewards'),
(34, 10000009, '46', '2016-09-15', '13.19', 'Add Rewards'),
(35, 10000009, '1', '2016-09-21', '7.59', 'Add Rewards'),
(36, 10000009, '8', '2016-09-22', '3.79', 'Add Rewards'),
(37, 10000009, '15', '2016-12-13', '3.79', 'Add Rewards'),
(38, 10000009, '16', '2016-12-13', '3.79', 'Add Rewards'),
(39, 10000011, '20', '2016-12-23', '5.75', 'Add Rewards'),
(40, 10000012, '32', '2017-01-04', '3.26', 'Add Rewards'),
(41, 10000009, '33', '2017-01-05', '14.62', 'Add Rewards'),
(42, 10000009, '53', '2017-03-02', '0.93', 'Add Rewards'),
(43, 10000009, '59', '2017-03-15', '12.02', 'Add Rewards'),
(44, 10000002, '7', '2017-05-26', '5.98', 'Add Rewards');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(50) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `emailaddress` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `peopletype` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `emailaddress`, `phone`, `address`, `city`, `peopletype`) VALUES
(10000001, 'Jamal', 'Jamal@gmail.com', '49583958', 'Uttara,Dhaka', 'Dhaka', 'Customer'),
(10000002, 'Kamal', 'Kamal@gmail.com', '3840979084', 'Uttara,Dhaka', 'Dhaka', 'Customer'),
(10000003, 'Mohammad Farhad', 'Farhad@citputer.com', '+66171686876897', 'Malaysia', 'Kuala Lampur', 'Customer'),
(10000004, 'A H Halim', 'Farhad@citputer.com', '+66171686876897', 'Bukit hill , KL,Malaysia.', 'Kuala Lampur', 'Customer'),
(10000005, 'Jeo Cavanni', 'Jeo@alo.com', '+001438758349', 'South Carelina [SC], USA', 'SC', 'Biller'),
(10000006, 'G M Gulam', 'Gulam@citputer.com', '+66171686876813', 'Bukit hill , KL,Malaysia', 'Kuala Lampur', 'Supplier'),
(10000008, 'Nusrul Hakim', 'Hakim@gmail.com', '346868', 'KL,MY', 'Kuala Lampur', 'Biller'),
(10000009, 'Guest', 'Guest', '0294', 'Uttara,Mohakhali', 'Dhaka', 'Customer'),
(10000010, 'So Xa Huang', 'Huang@gmail.com', '090283498', 'YM, Japan', 'Yamaha', 'Customer'),
(10000011, 'Jinat', 'jinat@Khan.com', '898666986', 'Windsor,Canada', 'Windsor', 'Customer'),
(10000012, 'SQliteTest', 'SQliteTest@SQ.com', '2423324', 'Seul, S.Korea', 'Seul', 'Customer'),
(10000013, 'New Customer', 'new@gmail.com', '20349098', 'NT564,ON,CA', 'ON', 'Customer'),
(10000014, 'Uniliver', 'info@uniliver.com', '098765', 'Dhaka', 'Dhaka', 'Supplier'),
(10000015, 'Square', 'info@Square.com', '23423', 'USA', 'USA', 'Supplier'),
(10000016, 'CocaCola', 'CocaCola', '834578', 'Montreal', 'Montreal', 'Supplier'),
(10000017, 'Dell', '', '3242', 'NY,USA', 'NY', 'Supplier'),
(10000019, 'Mcdonalds', '', '3246578654', 'MT, QC , CA', 'Montreal', 'Supplier'),
(10000020, 'Subway', '', '23456', 'MT,QC,CA', 'Montreal', 'Supplier'),
(10000021, 'Dollaroma', 'info@Dollaroma.com', '3516527678', 'NY,USA', 'NY', 'Supplier'),
(10000022, 'Tim Horton', '', '34324', 'MT,QC,CA', 'MT', 'Supplier'),
(10000023, 'Fruit_company', '', '2536457', 'MT,QC', 'MT', 'Supplier'),
(10000026, 'BATBC', 'batbc@gmail.com', '0486997', 'NY,USA\r\n', 'Newyork', 'Supplier');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_duepayment`
--

CREATE TABLE `tbl_duepayment` (
  `id` bigint(111) NOT NULL,
  `receivedate` varchar(444) DEFAULT NULL,
  `sales_id` bigint(44) NOT NULL,
  `totalamt` decimal(18,2) NOT NULL,
  `dueamt` decimal(18,2) NOT NULL,
  `receiveamt` decimal(18,2) NOT NULL,
  `custid` varchar(111) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_duepayment`
--

INSERT INTO `tbl_duepayment` (`id`, `receivedate`, `sales_id`, `totalamt`, `dueamt`, `receiveamt`, `custid`, `status`) VALUES
(0, '2018-03-28', 7, '8.61', '0.00', '3.61', '10000009', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense`
--

CREATE TABLE `tbl_expense` (
  `id` bigint(44) NOT NULL,
  `date` varchar(111) DEFAULT NULL,
  `referenceNo` varchar(111) DEFAULT NULL,
  `category` varchar(111) DEFAULT NULL,
  `amount` decimal(18,2) NOT NULL,
  `attachment` varchar(111) DEFAULT NULL,
  `fileextension` varchar(111) DEFAULT NULL,
  `note` varchar(111) DEFAULT NULL,
  `createdby` varchar(111) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_expense`
--

INSERT INTO `tbl_expense` (`id`, `date`, `referenceNo`, `category`, `amount`, `attachment`, `fileextension`, `note`, `createdby`) VALUES
(32, '2017-02-02', 'INV12368', 'Buy Accessories', '11.00', '20170202025750.png', '.png', 'fdf', 'a'),
(33, '2017-02-02', 'SALS321', 'POS paper Roll', '9.99', '20170202025842.png', '.png', 'Find Receipt', 'a'),
(35, '2017-02-11', 'INV7', 'Buy Accessories', '23.00', '20170211123415.pdf', '.pdf', 'Invoice file', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hold_sales_item`
--

CREATE TABLE `tbl_hold_sales_item` (
  `id` bigint(222) NOT NULL,
  `sales_id` bigint(111) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `qty` decimal(18,2) NOT NULL,
  `options` varchar(200) NOT NULL,
  `salesdate` varchar(20) NOT NULL,
  `tableno` varchar(50) NOT NULL,
  `ordertime` varchar(11) NOT NULL,
  `itemname` varchar(111) NOT NULL,
  `tokenno` varchar(111) NOT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hold_sales_item`
--

INSERT INTO `tbl_hold_sales_item` (`id`, `sales_id`, `product_id`, `qty`, `options`, `salesdate`, `tableno`, `ordertime`, `itemname`, `tokenno`, `status`) VALUES
(37, 1, '8940000000015', '1.00', 'Salt ', '2018-02-18', 'TAB-05', '', '', '', 1),
(38, 1, '8940000000026', '1.00', ' Sugar ', '2018-02-18', 'TAB-05', '', '', '', 1),
(39, 1, '8940000000019', '1.00', '', '2018-02-18', 'TAB-05', '', '', '', 1),
(40, 2, '8940000000035', '1.00', ' Salt Spicy ', '2018-02-18', 'TAB-05', '', '', '', 1),
(41, 2, '8940000000016', '1.00', 'Milk ', '2018-02-18', 'TAB-05', '', '', '', 1),
(42, 2, '8940000000019', '1.00', '', '2018-02-18', 'TAB-05', '', '', '', 1),
(52, 5, '8940000000003', '1.00', '', '2018-02-18', 'TAB-OT4', '', '', '', 1),
(53, 5, '8940000000023', '1.00', '', '2018-02-18', 'TAB-OT4', '', '', '', 1),
(54, 5, '8940000000011', '1.00', '', '2018-02-18', 'TAB-OT4', '', '', '', 1),
(60, 7, '8940000000025', '1.00', '', '2018-02-18', 'TAB-2NDF2', '', '', '', 1),
(61, 7, '134586798323', '2.00', '', '2018-02-18', 'TAB-2NDF2', '', '', '', 1),
(62, 7, '8940000000011', '2.00', '', '2018-02-18', 'TAB-2NDF2', '', '', '', 1),
(63, 7, '8940000000019', '2.00', '', '2018-02-18', 'TAB-2NDF2', '', '', '', 1),
(64, 7, '8940000000009', '3.00', '', '2018-02-18', 'TAB-2NDF2', '', '', '', 1),
(65, 8, '8940000000014', '1.00', '', '2018-02-19', 'TAB-02', '', '', '', 1),
(66, 8, '8940000000021', '1.00', '', '2018-02-19', 'TAB-02', '', '', '', 1),
(67, 8, '8940000000012', '1.00', '', '2018-02-19', 'TAB-02', '', '', '', 1),
(68, 8, '8940000000015', '1.00', '', '2018-02-19', 'TAB-02', '', '', '', 1),
(69, 9, '8940000000021', '1.00', ' Tom Ketchup ', '2018-02-19', 'TAB-01', '', '', '', 1),
(70, 9, '8940000000012', '1.00', ' Salt Spicy ', '2018-02-19', 'TAB-01', '', '', '', 1),
(71, 9, '134586798323', '1.00', 'Spicy Tomato ', '2018-02-19', 'TAB-01', '', '', '', 1),
(138, 10, '8940000000009', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(139, 10, '8940000000013', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(140, 10, '8940000000035', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(141, 10, '8940000000012', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(142, 10, '8940000000002', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(143, 11, '8940000000015', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(144, 11, '8940000000022', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(145, 11, '8940000000014', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(146, 11, '8940000000013', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(147, 12, '8940000000022', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(148, 12, '8940000000014', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(149, 12, '8940000000013', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(150, 12, '8940000000019', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(151, 12, '5656', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(152, 12, '8940000000010', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(153, 12, '897463585492', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(154, 12, '8940000000002', '1.00', '', '2018-02-20', 'TAB-01', '', '', '', 1),
(155, 13, '8940000000011', '1.00', '', '2018-03-28', 'TAB-2NDF4', '14:36', 'BurgerJuice', '3', 1),
(156, 13, '8940000000002', '1.00', '', '2018-03-28', 'TAB-2NDF4', '14:36', 'Cocacola 200ml', '3', 1),
(157, 14, '8940000000023', '1.00', 'Salt ', '2018-03-28', '', '15:02', 'Juice-250gm', '4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saleinfo`
--

CREATE TABLE `tbl_saleinfo` (
  `ID` int(11) NOT NULL,
  `InvoiceNo` varchar(111) DEFAULT NULL,
  `WarehouseNo` varchar(111) DEFAULT NULL,
  `Biller` varchar(111) DEFAULT NULL,
  `Customer` varchar(111) DEFAULT NULL,
  `Note` varchar(111) DEFAULT NULL,
  `DisRate` varchar(111) DEFAULT NULL,
  `TaxRate` varchar(111) DEFAULT NULL,
  `ShippingFee` varchar(111) DEFAULT NULL,
  `SoldBy` varchar(111) DEFAULT NULL,
  `DateTime` varchar(111) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sauceoptions`
--

CREATE TABLE `tbl_sauceoptions` (
  `id` int(50) NOT NULL,
  `saucename` varchar(450) DEFAULT NULL,
  `bgcolor` varchar(111) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sauceoptions`
--

INSERT INTO `tbl_sauceoptions` (`id`, `saucename`, `bgcolor`, `status`) VALUES
(1, 'Salt', 'Red', 1),
(2, 'Milk', 'White', 1),
(3, 'Sugar', '#FFF0E68C', 1),
(4, 'Cream', 'Cream', 1),
(5, 'Spicy', 'Firebrick', 1),
(6, 'Tomato', 'Orange', 1),
(7, 'Sauce', 'Purple', 1),
(8, 'Ice', 'Snow', 1),
(9, 'Tom Ketchup', 'Violet', 1),
(11, 'Chili pepper', 'Navy', 1),
(16, 'Free salad', 'Yellow', 1),
(17, 'Extra Onion', 'Red', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tablezone`
--

CREATE TABLE `tbl_tablezone` (
  `id` int(50) NOT NULL,
  `tablename` varchar(111) DEFAULT NULL,
  `zonenam` varchar(111) DEFAULT NULL,
  `seatqty` int(11) DEFAULT NULL,
  `orderno` int(11) DEFAULT NULL,
  `fillcolor` varchar(111) DEFAULT NULL,
  `ordertime` varchar(111) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tablezone`
--

INSERT INTO `tbl_tablezone` (`id`, `tablename`, `zonenam`, `seatqty`, `orderno`, `fillcolor`, `ordertime`, `status`) VALUES
(1, 'TAB-01', 'ZONE IN', 2, 1, '#FF0000FF', '2018-03-28 15:03:04', 1),
(2, 'TAB-02', 'ZONE IN', 2, 2, '#FF9932CC', '2018-02-17 14:41:44', 1),
(3, 'TAB-03', 'ZONE IN', 4, 3, '#FF0000FF', '2018-02-19 13:08:15', 1),
(4, 'TAB-04', 'ZONE IN', 4, 4, 'Blue', '2018-03-28 13:15:30', 1),
(5, 'TAB-05', 'ZONE IN', 6, 5, 'Navy', '2018-02-18 22:45:11', 1),
(6, 'TAB-06', 'ZONE IN', 6, 6, 'Red', NULL, 1),
(7, 'TAB-OT1', 'ZONE OUT', 2, 7, 'Red', NULL, 1),
(8, 'TAB-OT2', 'ZONE OUT', 2, 8, 'Red', '2018-02-16 21:59:34', 1),
(9, 'TAB-OT3', 'ZONE OUT', 3, 9, 'Navy', '2018-02-17 14:42:49', 1),
(10, 'TAB-OT4', 'ZONE OUT', 3, 10, 'Navy', NULL, 1),
(12, 'TAB-07', 'ZONE IN', 4, 11, 'Orange', '2018-02-16 21:46:06', 1),
(13, 'TABIN-IN10', 'INSIDE', 2, 12, '#FF6B8E23', '2018-02-16 22:52:10', 1),
(14, 'TABIN-IN11', 'ZONE IN', 2, 13, '#FF808000', '2018-02-16 22:52:10', 1),
(15, 'TABIN-IN14', 'ZONOUT', 2, 14, '#FF6B8E23', '2018-02-16 22:48:24', 1),
(16, 'TAB-2NDF1', 'TOP', 2, 15, 'Red', NULL, 1),
(17, 'TAB-2NDF2', 'TOP', 2, 16, 'Red', NULL, 1),
(18, 'TAB-2NDF3', 'TOP', 4, 17, 'Blue', '2018-02-16 21:46:22', 1),
(19, 'TAB-2NDF4', 'TOP', 4, 18, 'Blue', '2018-02-16 23:02:19', 1),
(20, 'TAB-2NDF5', 'TOP', 6, 19, 'Navy', NULL, 1),
(21, 'TAB-2NDF', 'TOP', 6, 20, 'Navy', NULL, 1),
(22, 'TAB-3NDF1', 'MTOP', 2, 21, 'Green', NULL, 1),
(23, 'TAB-2NDF2', 'MTOP', 2, 22, 'Green', NULL, 1),
(24, 'TAB-2NDF3', 'MTOP', 3, 23, 'Green', '2018-03-28 00:01:22', 1),
(25, 'PARCEL', 'parcel', 0, 24, 'Yellow', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_terminallocation`
--

CREATE TABLE `tbl_terminallocation` (
  `id` int(11) NOT NULL,
  `companyname` varchar(200) DEFAULT NULL,
  `branchname` varchar(111) DEFAULT NULL,
  `location` varchar(450) DEFAULT NULL,
  `phone` varchar(111) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `vat` decimal(18,2) NOT NULL,
  `dis` decimal(18,2) NOT NULL,
  `vatregino` varchar(111) DEFAULT NULL,
  `shopid` varchar(111) DEFAULT NULL,
  `footermsg` varchar(111) DEFAULT NULL,
  `imagename` varchar(111) DEFAULT NULL,
  `languagecode` varchar(11) DEFAULT NULL,
  `currencysign` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_terminallocation`
--

INSERT INTO `tbl_terminallocation` (`id`, `companyname`, `branchname`, `location`, `phone`, `email`, `web`, `vat`, `dis`, `vatregino`, `shopid`, `footermsg`, `imagename`, `languagecode`, `currencysign`) VALUES
(1, 'MySQL Restaurant Inc', 'Montreal', '3536 Rue Milton, Montreal QC H2X 2G8', '514 777 2335', 'MTQC02@citputer.com', 'www.citputer.com', '14.98', '3.00', 'VAT4356', 'MTQC02', 'Sold item will not be refund.', 'ce6938bf-2311-45cd-99c4-25abf894596d.png', 'fr', '$'),
(2, 'Marche Amar Restaurant Inc', 'Windsor', 'James Dr ,ON N9E 24E Canada', '519 273 3427', 'WION05@citputer.com', 'www.citputer.com', '13.00', '2.00', 'WIDGST300', 'WION05', 'Sold item will not be refund.', 'ce6938bf-2311-45cd-99c4-25abf894596d.png', 'fr', 'Ã¢â€šÂ¹'),
(5, 'Marche Amar Restaurant Inc', 'London', 'Rue losiu ', '518 784 3423', '', '', '13.00', '1.00', 'VATRE09', 'Lo13', 'Item sold will not be refund.', 'ce6938bf-2311-45cd-99c4-25abf894596d.png', 'ar', 'Ã¢â€šÂ¬'),
(6, 'Marche Amar Restaurant Inc', 'Hamilton', '3490 Jenshon Street , Hamilton ON N4H 9D2', '517 324 4532', 'Hamrt5@citputer.com', 'www.citputer.com', '11.00', '2.00', '00', 'HamRT5', 'Footer message it will appear on Receipt.', 'ce6938bf-2311-45cd-99c4-25abf894596d.png', 'bn', 'Ã Â§Â³'),
(8, 'Marche Amar Restaurant Inc', 'British Columbia BC1', 'British Columbia B2D 2S1', '543 345 4553', 'bc1@citputer.com', 'www.citputer.com', '12.00', '1.00', 'BCVAT342', 'BC3BCV', 'Thanks for Shopping', '', 'pt', 'Ã‚Â¥'),
(12, 'Marche Amar Restaurant Inc', 'Alberta Branch1', 'Alberta', '543 345 4554', 'AL@citputer.com', 'www.citputer.com', '5.00', '1.00', 'VAT342AL', 'AlbVAT', 'Thanks for Shopping', '', 'zh', 'Ã‚Â¥'),
(13, 'Marche Amar Restaurant Inc', 'SASkatchewan', 'Saskatchewan , Canada.', '543 345 4753', 'SA@citputer.com', 'www.citputer.com', '10.00', '1.00', 'VAT4542SA', 'SASVAT', 'Thanks for Shopping', '', 'it', 'Ã‚Â£');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tokenno`
--

CREATE TABLE `tbl_tokenno` (
  `id` int(11) NOT NULL,
  `sales_id` bigint(111) DEFAULT NULL,
  `tokenno` int(50) DEFAULT NULL,
  `sales_date` varchar(111) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tokenno`
--

INSERT INTO `tbl_tokenno` (`id`, `sales_id`, `tokenno`, `sales_date`) VALUES
(2, 1, 1, '2018-02-18'),
(3, 2, 2, '2018-02-18'),
(4, 3, 1, '2018-02-19'),
(5, 4, 1, '2018-03-28'),
(6, 5, 2, '2018-03-28'),
(7, 6, 3, '2018-03-28'),
(8, 6, 4, '2018-03-28'),
(9, 6, 5, '2018-03-28'),
(10, 7, 6, '2018-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workrecords`
--

CREATE TABLE `tbl_workrecords` (
  `id` bigint(20) NOT NULL,
  `username` varchar(222) DEFAULT NULL,
  `datatype` varchar(22) DEFAULT NULL,
  `logdate` date DEFAULT NULL,
  `logtime` time DEFAULT NULL,
  `logdatetime` timestamp NULL DEFAULT NULL,
  `status` varchar(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_workrecords`
--

INSERT INTO `tbl_workrecords` (`id`, `username`, `datatype`, `logdate`, `logtime`, `logdatetime`, `status`) VALUES
(1, 'a', 'IN', '2018-03-27', '21:21:42', '2018-03-28 01:21:42', '1'),
(2, 'a', 'IN', '2018-03-27', '21:29:56', '2018-03-28 01:29:56', '1'),
(3, 'a', 'IN', '2018-03-27', '21:34:58', '2018-03-28 01:34:58', '1'),
(4, 'a', 'IN', '2018-03-27', '21:38:03', '2018-03-28 01:38:03', '1'),
(5, 'admin', 'IN', '2018-03-27', '22:00:07', '2018-03-28 02:00:07', '1'),
(6, 'a', 'IN', '2018-03-27', '22:04:14', '2018-03-28 02:04:14', '1'),
(7, 'a', 'IN', '2018-03-27', '22:34:50', '2018-03-28 02:34:50', '1'),
(8, 'a', 'OUT', '2018-03-27', '22:36:35', '2018-03-28 02:36:35', '1'),
(9, 'a', 'IN', '2018-03-27', '22:36:39', '2018-03-28 02:36:39', '1'),
(10, 'a', 'OUT', '2018-03-27', '22:36:40', '2018-03-28 02:36:40', '1'),
(11, 'a', 'IN', '2018-03-27', '22:36:43', '2018-03-28 02:36:43', '1'),
(12, 'a', 'IN', '2018-03-27', '23:19:16', '2018-03-28 03:19:16', '1'),
(13, 'a', 'IN', '2018-03-27', '23:21:19', '2018-03-28 03:21:19', '1'),
(14, 'a', 'IN', '2018-03-27', '23:24:40', '2018-03-28 03:24:40', '1'),
(15, 'a', 'IN', '2018-03-27', '23:35:40', '2018-03-28 03:35:40', '1'),
(16, 'a', 'IN', '2018-03-27', '23:40:16', '2018-03-28 03:40:16', '1'),
(17, 'a', 'IN', '2018-03-28', '00:41:23', '2018-03-28 04:41:23', '1'),
(18, 'admin', 'IN', '2018-03-28', '00:45:50', '2018-03-28 04:45:50', '1'),
(19, 'admin', 'OUT', '2018-03-28', '00:46:28', '2018-03-28 04:46:28', '1'),
(20, 'a', 'IN', '2018-03-28', '00:46:33', '2018-03-28 04:46:33', '1'),
(21, 'a', 'IN', '2018-03-28', '00:51:14', '2018-03-28 04:51:14', '1'),
(22, 'a', 'IN', '2018-03-28', '00:56:09', '2018-03-28 04:56:09', '1'),
(23, 'a', 'IN', '2018-03-28', '01:02:43', '2018-03-28 05:02:43', '1'),
(24, 'a', 'IN', '2018-03-28', '13:03:41', '2018-03-28 17:03:41', '1'),
(25, 'a', 'IN', '2018-03-28', '13:15:03', '2018-03-28 17:15:03', '1'),
(26, 'a', 'IN', '2018-03-28', '13:36:55', '2018-03-28 17:36:55', '1'),
(27, 'a', 'IN', '2018-03-28', '13:41:17', '2018-03-28 17:41:17', '1'),
(28, 'a', 'IN', '2018-03-28', '13:57:39', '2018-03-28 17:57:39', '1'),
(29, 'a', 'OUT', '2018-03-28', '13:58:23', '2018-03-28 17:58:23', '1'),
(30, 'a', 'IN', '2018-03-28', '14:35:50', '2018-03-28 18:35:50', '1'),
(31, 'a', 'OUT', '2018-03-28', '14:40:33', '2018-03-28 18:40:33', '1'),
(32, 'a', 'IN', '2018-03-28', '15:02:18', '2018-03-28 19:02:18', '1'),
(33, 'a', 'IN', '2018-03-28', '15:25:36', '2018-03-28 19:25:36', '1');

-- --------------------------------------------------------

--
-- Table structure for table `usermgt`
--

CREATE TABLE `usermgt` (
  `id` int(50) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `father_name` varchar(250) DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  `email` varchar(350) DEFAULT NULL,
  `contact` varchar(250) DEFAULT NULL,
  `dob` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `usertype` varchar(250) DEFAULT NULL,
  `position` varchar(111) DEFAULT NULL,
  `imagename` varchar(250) DEFAULT NULL,
  `shopid` varchar(111) DEFAULT NULL,
  `srstyle` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usermgt`
--

INSERT INTO `usermgt` (`id`, `name`, `father_name`, `address`, `email`, `contact`, `dob`, `username`, `password`, `usertype`, `position`, `imagename`, `shopid`, `srstyle`) VALUES
(1, 'Nilona Jeo', 'milon', 'Montreal, QC , H2X 2G4', 'admin@citputer.com', '514 723 2335', '1993-05-09', 'admin', 'admin', '1', 'Admin', '1.jpg', 'MTQC02', 1),
(2, 'Mamun', 'Al Mamunss', 'USA', 'mn@citputer.com', '416 777 2345', '1989-01-02', 'mn', 'mn', '2', 'Manager', '2.jpg', 'WION05', 2),
(3, 's alam', 'alam salam', 'USA', 'sa@citputer.com', '638 546 1234', '1991-09-04', 'sa', 'sa', '3', 'Salesman', '3.jpg', 'WION05', 1),
(4, 'Jeo mikel', 'mikel heo', 'USA', 'admin@citputer.com', '91232423434', '1991-10-01', 'Jeo', 'jeo', '1', 'Admin', '4.jpg', 'WION05', 2),
(5, 'Jamil Khan', 'Jamil Akther', 'New Address', 'JamilKhan@citputer.com', '514 777 2345', '1977-12-08', 'a', 'a', '1', 'Admin', '5.jpg', 'MTQC02', 2),
(6, 'Somon', 'Khan', 'USA', 'Somon@dynamicsoft.com', '519 775 2345', '1980-01-16', 'as', '0HCrmdqjjk', '2', 'Manager', '6.JPG', 'Lo13', 2),
(7, 'Nabila Hossian', 'nb', 'bnÃ˜Â­Ã˜Â¯Ã˜Â¯ Ã˜Â³Ã˜Â§Ã™â€žÃ™Å Ã˜Â³ Ã˜Â±Ã™Å Ã˜Â¬Ã™Å Ã˜Â³Ã˜ÂªÃ˜Â± Ã˜Â³Ã˜ÂªÃ˜Â§Ã™Å Ã™â€ž', 'Nabilahossian@gmail.com', '516 745 2355', '1993-01-16', 'bn', 'bn', '1', 'Admin', '7.jpg', 'HamRT5', 1),
(18, 'Adu Sayem', 'Sayem Ahmed', 'NY', 'Asayem@dynamicsoft.com', '697 345 6677', '1984-01-16', 'sdf', 'BqKLKpetdj', '2', 'Manager', '18.jpg', 'MTQC02', 1),
(20, 'Sunag Poon', 'Poon young', 'China', 'poon@gmail.com', '513 989 3223', '1997-05-17', 'poon', 'poon', '3', 'Salesman', '19.jpg', 'HamRT5', 1),
(64, 'Sonita', 'Mia', 'Toronto ON CA', 'sonita@gmail.com', '437 459 3423', '1992-09-13', 'sonita', 'sonita', '1', 'Admin', '67391be7-0c42-4bba-b6cc-4f16aaa95aba.jpg', 'BC3BCV', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_receiptitembind`
--
CREATE TABLE `vw_receiptitembind` (
`Items` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_tablezonedatabind`
--
CREATE TABLE `vw_tablezonedatabind` (
`zonenam` varchar(111)
,`tablename` varchar(111)
,`fillcolor` varchar(111)
,`booked` varchar(1)
,`seatqty` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_workrecords`
--
CREATE TABLE `vw_workrecords` (
`username` varchar(222)
,`Date` date
,`IN` time
,`OUT` time
,`HOURS` time
);

-- --------------------------------------------------------

--
-- Structure for view `customercredit`
--
DROP TABLE IF EXISTS `customercredit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customercredit`  AS  select `customers`.`id` AS `ID`,`customers`.`name` AS `Name`,`customers`.`phone` AS `Mobile`,`customers`.`address` AS `Address`,`customers`.`emailaddress` AS `EmailAddress`,`customers`.`city` AS `City`,`customers`.`peopletype` AS `PeopleType` from (`tbl_customer` `customers` left join `tbl_custcredit` `cc` on((`cc`.`custid` = `customers`.`id`))) group by `customers`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_receiptitembind`
--
DROP TABLE IF EXISTS `vw_receiptitembind`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_receiptitembind`  AS  select concat('- ',`sales_item`.`qty`,'  ',`sales_item`.`itemname`,'\nSc:',`sales_item`.`note`) AS `Items` from `sales_item` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_tablezonedatabind`
--
DROP TABLE IF EXISTS `vw_tablezonedatabind`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_tablezonedatabind`  AS  select `tz`.`zonenam` AS `zonenam`,`tz`.`tablename` AS `tablename`,`tz`.`fillcolor` AS `fillcolor`,(case when (cast((time_to_sec(timediff(now(),`tz`.`ordertime`)) / 60) as decimal(10,1)) < 30) then 'B' else '-' end) AS `booked`,`tz`.`seatqty` AS `seatqty` from `tbl_tablezone` `tz` where (`tz`.`status` = 1) order by `tz`.`orderno` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_workrecords`
--
DROP TABLE IF EXISTS `vw_workrecords`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_workrecords`  AS  select `tbl_workrecords`.`username` AS `username`,`tbl_workrecords`.`logdate` AS `Date`,min(`tbl_workrecords`.`logtime`) AS `IN`,max(`tbl_workrecords`.`logtime`) AS `OUT`,timediff(max(`tbl_workrecords`.`logtime`),min(`tbl_workrecords`.`logtime`)) AS `HOURS` from `tbl_workrecords` group by `tbl_workrecords`.`username`,`tbl_workrecords`.`logdate` order by `tbl_workrecords`.`logdate` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `return_item`
--
ALTER TABLE `return_item`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `sales_item`
--
ALTER TABLE `sales_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `sales_payment`
--
ALTER TABLE `sales_payment`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `storeconfig`
--
ALTER TABLE `storeconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_custcredit`
--
ALTER TABLE `tbl_custcredit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_duepayment`
--
ALTER TABLE `tbl_duepayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expense`
--
ALTER TABLE `tbl_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hold_sales_item`
--
ALTER TABLE `tbl_hold_sales_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_saleinfo`
--
ALTER TABLE `tbl_saleinfo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_sauceoptions`
--
ALTER TABLE `tbl_sauceoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tablezone`
--
ALTER TABLE `tbl_tablezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_terminallocation`
--
ALTER TABLE `tbl_terminallocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tokenno`
--
ALTER TABLE `tbl_tokenno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_workrecords`
--
ALTER TABLE `tbl_workrecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermgt`
--
ALTER TABLE `usermgt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `return_item`
--
ALTER TABLE `return_item`
  MODIFY `return_id` bigint(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales_item`
--
ALTER TABLE `sales_item`
  MODIFY `item_id` bigint(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `storeconfig`
--
ALTER TABLE `storeconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tbl_custcredit`
--
ALTER TABLE `tbl_custcredit`
  MODIFY `id` bigint(55) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000028;
--
-- AUTO_INCREMENT for table `tbl_hold_sales_item`
--
ALTER TABLE `tbl_hold_sales_item`
  MODIFY `id` bigint(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `tbl_sauceoptions`
--
ALTER TABLE `tbl_sauceoptions`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_tablezone`
--
ALTER TABLE `tbl_tablezone`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_terminallocation`
--
ALTER TABLE `tbl_terminallocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_tokenno`
--
ALTER TABLE `tbl_tokenno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_workrecords`
--
ALTER TABLE `tbl_workrecords`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `usermgt`
--
ALTER TABLE `usermgt`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
