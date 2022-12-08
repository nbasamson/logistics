-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 07:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logistics`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(1, 'admin', 'd00f5d5217896fb7fd601412cb890830', 'Liam Moore', 'admin@mail.com', '2022-02-09 15:15:46'),
(2, 'bruno', '5f4dcc3b5aa765d61d8327deb882cf99', 'Bruno Den', 'itsbruno@mail.com', '2022-02-09 15:15:50'),
(3, 'greenwood', '5f4dcc3b5aa765d61d8327deb882cf99', 'Johnny Greenwood', 'greenwood@mail.com', '2022-02-09 15:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `aid` int(10) NOT NULL,
  `eid` int(10) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `date_today` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`aid`, `eid`, `time_in`, `time_out`, `date_today`) VALUES
(21, 4, '10:41:25', '12:36:24', '2018-03-15'),
(23, 2, '11:04:43', '11:27:27', '2018-03-15'),
(24, 2, '07:52:02', '00:00:00', '2018-03-16'),
(25, 2, '07:52:58', '07:53:00', '2018-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL,
  `CSTATUS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`, `CSTATUS`) VALUES
(0, 'Keyboard', 'Stored'),
(1, 'Mouse', 'Active'),
(2, 'Monitor', 'Inactive'),
(3, 'Motherboard', ''),
(4, 'Processor', ''),
(5, 'Power Supply', ''),
(6, 'Headset', ''),
(7, 'CPU', ''),
(8, 'vehicles', ''),
(9, 'Repair Tools', ''),
(10, 'Others', ''),
(11, 'Vehicles Part', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`) VALUES
(9, 'Hailee', 'Steinfield', '09394566543'),
(14, 'Chuchay', 'Jusay', '09781633451'),
(15, 'Kimbert', 'Duyag', '09956288467'),
(16, 'Dieqcohr', 'Rufino', '09891344576');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'John', 'Smith', 'jsmith@sample.com', '39ce7e2a8573b41ce73b5ba41617f8f7', NULL, NULL, '2021-05-10 23:23:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `dept_details` varchar(255) NOT NULL,
  `added_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `password`, `role`, `dept_details`, `added_at`) VALUES
(1, 'Stock Administrator', '12345', 1, 'default stock department', '2018-03-27'),
(2, 'Department 2', '3875', 0, 'Dept 2', '2018-04-05'),
(10, 'Department 3', '12345', 0, 'Dept 3', '2018-04-04'),
(16, 'Department 4', '12345', 0, 'Dept 4', '2018-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(10) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `midname` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pid` int(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ecode` varchar(10) NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp(),
  `e_pic` varchar(100) NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `lastname`, `firstname`, `midname`, `bday`, `contact_no`, `address`, `pid`, `status`, `gender`, `ecode`, `date_added`, `e_pic`, `io`) VALUES
(1, 'Administrator', 'Admin', '', '1987-06-23', '12345678', 'Sample', 1, 'Single', 'Male', '78945', '0000-00-00', '9642_avatar.jpg', 1),
(2, 'bojocan', 'Jonnel', '', '1993-06-23', '1321', 'Sample', 2, 'Single', 'Male', '78946', '2020-10-05', 'no_image.jpg', 1),
(3, 'Calara', 'Kevin', '', '1990-07-11', '+(63)', '..', 1, 'Single', 'Male', '78947', '2020-10-05', 'no_image.jpg', 1),
(4, 'Samson', 'Mark Joseph', '', '2022-11-10', '09163638975', 'Block 33 Lot 9 Celina Homes 2 Deparo', 2, 'Single', 'Male', '78948', '2022-11-30', 'no_image.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `item_cat` varchar(30) NOT NULL,
  `item_detail` varchar(255) NOT NULL,
  `bill_no` varchar(30) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL DEFAULT 1,
  `supplied_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_cat`, `item_detail`, `bill_no`, `supplier_id`, `dept_id`, `supplied_at`) VALUES
(465, 'Item One', ' First Category', 'Demo Details 12345', '100', 3, 2, '2021-07-29'),
(466, 'Item Two', ' Second Category', 'Demo Details Demo', '101', 1, 1, '2021-07-29'),
(467, 'Item Three', ' Third Category', 'Demo Item Details', '103', 9, 1, '2021-08-01'),
(468, 'Item Four', ' Fourth Category', 'Demo Details', '104', 3, 1, '2021-08-01'),
(469, 'Item Five', ' Second Category', 'Demo Demo Demo', '105', 2, 1, '2021-08-01'),
(470, 'Item Six', ' Third Category', 'Demo Demo', '106', 2, 1, '2021-08-01'),
(471, 'Item Seven', ' First Category', 'Demo Demo', '107', 6, 1, '2021-08-01'),
(472, 'Item Eight', ' First Category', 'Demo Details', '108', 7, 1, '2021-08-01'),
(473, 'Item Nine', ' Fourth Category', 'Demo Details N', '109', 3, 1, '2021-08-01'),
(474, 'Item Ten', ' Fifth Category', 'This is a demo detail', '110', 5, 1, '2021-08-01'),
(475, 'Item Eleven', ' Fourth Category', 'Demo Details..', '111', 4, 1, '2021-08-01'),
(476, 'Item Twelve', ' Fifth Category', 'Demo Cntn', '112', 6, 1, '2021-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `unitPrice` float NOT NULL DEFAULT 0,
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`productID`, `itemNumber`, `itemName`, `discount`, `stock`, `unitPrice`, `imageURL`, `status`, `description`) VALUES
(34, '1', 'First Bag', 0, 1, 1500, '1525670999_1.png', 'Active', 'warehouse'),
(35, '2', 'School Bag', 0, 5, 500, '1525681111_661539.png', 'Active', 'warehouse'),
(36, '3', 'Office Bag', 0, 5, 1300, '1525709924_office bag.jpg', 'Active', 'warehouse'),
(37, '4', 'Leather Bag', 2, 6, 3409, '1525710010_leather bag.jpg', 'Active', 'warehouse'),
(38, '5', 'Travel Bag', 2, 17, 1200, '1525706032_travel bag.jpg', 'Active', 'warehouse'),
(39, '6', 'Gym Bag', 0, 0, 3000, '1525710463_gym bag.jpg', 'Active', 'warehouse'),
(40, '7', 'Handbag', 1.5, 10, 1650, '1525713267_handbag.jpg', 'Active', 'warehouse'),
(41, '8', 'Laptop Bag', 2.1, 9, 2300, '1525750683_661539.png', 'Active', 'warehouse'),
(43, '10', 'Sports Bag', 1, 92, 1000, '1525756289_sports bag.jpg', 'Active', 'warehouse'),
(45, '11', 'First Aid Bag', 1.5, 11, 1200, '1525787551_first aid bag.jpg', 'Active', 'warehouse'),
(49, '14', 'Hiking Bag', 1.5, 6, 1200, '1526297640_hiking bag.jpg', 'Active', 'This is a hiking bag. Ideal for long distance hikes. Light-weight and water proof.');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(111, 'Negros Occidental', 'Bacolod City'),
(112, 'Negros Occidental', 'Bacolod City'),
(113, 'United States of America', 'New York'),
(114, 'Negros Occidental', 'Himamaylan'),
(115, 'Negros Oriental', 'Dumaguette City'),
(116, 'Negros Occidental', 'Isabella'),
(126, 'Negros Occidental', 'Binalbagan'),
(130, 'Cebu', 'Bogo City'),
(131, 'Negros Occidental', 'Himamaylan'),
(132, 'Negros', 'Jupiter'),
(133, 'Aincrad', 'Floor 91'),
(134, 'negros', 'binalbagan'),
(135, 'hehe', 'tehee'),
(136, 'PLANET YEKOK', 'KOKEY'),
(137, 'Camiguin', 'Catarman'),
(138, 'Camiguin', 'Catarman'),
(139, 'Negros Occidental', 'Binalbagan'),
(140, 'Batangas', 'Lemery'),
(141, 'Capiz', 'Panay'),
(142, 'Camarines Norte', 'Labo'),
(143, 'Camarines Norte', 'Labo'),
(144, 'Camarines Norte', 'Labo'),
(145, 'Camarines Norte', 'Labo'),
(146, 'Capiz', 'Pilar'),
(147, 'Negros Occidental', 'Moises Padilla'),
(148, 'a', 'a'),
(149, '1', '1'),
(150, 'Negros Occidental', 'Himamaylan'),
(151, 'Masbate', 'Mandaon'),
(152, 'Aklanas', 'Madalagsasa'),
(153, 'Batangas', 'Mabini'),
(154, 'Bataan', 'Morong'),
(155, 'Capiz', 'Pillar'),
(156, 'Negros Occidental', 'Bacolod'),
(157, 'Camarines Norte', 'Labo'),
(158, 'Negros Occidental', 'Binalbagan'),
(159, 'Bukidnon', 'Manolo Fortich'),
(160, 'Bukidnon', 'Manolo Fortich'),
(161, '', ''),
(162, 'Caloocan', 'Caloocan'),
(163, 'Metro Manila', 'Quezon City');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `pid` int(10) NOT NULL,
  `position` varchar(100) NOT NULL,
  `p_type` varchar(15) NOT NULL,
  `daily_rate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pid`, `position`, `p_type`, `daily_rate`) VALUES
(1, 'contractor', '', '1020'),
(2, 'Sub-Contractor', '', '500');

-- --------------------------------------------------------

--
-- Table structure for table `proc_users`
--

CREATE TABLE `proc_users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proc_users`
--

INSERT INTO `proc_users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1620656340_1605601740_download.jpg', NULL, '2021-01-20 14:02:37', '2021-05-10 22:19:01'),
(6, 'admin', 'admin1', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', NULL, NULL, '2021-05-10 22:38:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(50) DEFAULT NULL,
  `ON_HAND` int(250) NOT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`, `DATE_STOCK_IN`) VALUES
(1, '20191001', 'Lenovo ideapad 20059', 'Windows 8', 1, 1, 32999, 6, 15, '2019-03-02'),
(3, '20191003', 'Predator Helios 300 Gaming Laptop', 'Windows 10 Home\r\nIntelÂ® Coreâ„¢ i7-8750H processor Hexa-core 2.20 GHz\r\n15.6\" Full HD (1920 x 1080) ', 1, 1, 77850, 7, 15, '2019-03-02'),
(4, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 11, '2019-03-02'),
(5, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 15, '2019-03-03'),
(6, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 11, '2019-03-04'),
(8, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 11, '2019-03-05'),
(9, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 11, '2019-03-04'),
(10, '20191004', 'Fantech EG1', 'BEST FOR MOBILE PHONE GAMERS\r\nSPEAKER:10mm\r\nIMPEDANCE: 18+-15%\r\nFREQUENCY RESPONSE: 20 TO 20khz\r\nMICROPHONE : OMNI DIRECTIONAL\r\nJACK: AUDIO+MICROPHONE\r\nCOMBINED JACK 3.5 WIRE\r\nWIRE LENGTH: 1.3M\r\nWhat in inside:-1 pcs Female 3.5mm to Audio and\r\nmicrop', 11, 1, 859, 5, 13, '2019-03-06'),
(11, '20191004', 'Fantech EG1', 'BEST FOR MOBILE PHONE GAMERS\r\nSPEAKER:10mm\r\nIMPEDANCE: 18+-15%\r\nFREQUENCY RESPONSE: 20 TO 20khz\r\nMICROPHONE : OMNI DIRECTIONAL\r\nJACK: AUDIO+MICROPHONE\r\nCOMBINED JACK 3.5 WIRE\r\nWIRE LENGTH: 1.3M\r\nWhat in inside:-1 pcs Female 3.5mm to Audio and\r\nmicrop', 1, 1, 859, 5, 13, '2019-03-01'),
(12, '20191004', 'Fantech EG1', 'BEST FOR MOBILE PHONE GAMERS\r\nSPEAKER:10mm\r\nIMPEDANCE: 18+-15%\r\nFREQUENCY RESPONSE: 20 TO 20khz\r\nMICROPHONE : OMNI DIRECTIONAL\r\nJACK: AUDIO+MICROPHONE\r\nCOMBINED JACK 3.5 WIRE\r\nWIRE LENGTH: 1.3M\r\nWhat in inside:-1 pcs Female 3.5mm to Audio and\r\nmicrop', 1, 1, 859, 5, 13, '2019-03-01'),
(13, '20191004', 'Fantech EG1', 'BEST FOR MOBILE PHONE GAMERS\r\nSPEAKER:10mm\r\nIMPEDANCE: 18+-15%\r\nFREQUENCY RESPONSE: 20 TO 20khz\r\nMICROPHONE : OMNI DIRECTIONAL\r\nJACK: AUDIO+MICROPHONE\r\nCOMBINED JACK 3.5 WIRE\r\nWIRE LENGTH: 1.3M\r\nWhat in inside:-1 pcs Female 3.5mm to Audio and\r\nmicrop', 1, 1, 859, 5, 13, '2019-03-01'),
(14, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 15, '2019-03-06'),
(15, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 15, '2019-03-06'),
(16, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 15, '2019-03-06'),
(17, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 15, '2019-03-06'),
(18, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 15, '2019-03-06'),
(19, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 15, '2019-03-06'),
(20, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 15, '2019-03-06'),
(21, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 4, 15, '2019-03-06'),
(22, '20191001', 'Lenovo ideapad 20059', 'Windows 8', 10, 1, 32999, 6, 12, '2019-03-11'),
(23, '20191001', 'Lenovo ideapad 20059', 'Windows 8', 1, 1, 32999, 6, 12, '2019-03-11'),
(24, '20191001', 'Lenovo ideapad 20059', 'Windows 8', 1, 1, 32999, 6, 12, '2019-03-11'),
(25, '20191001', 'Lenovo ideapad 20059', 'Windows 8', 1, 1, 32999, 6, 12, '2019-03-11'),
(26, '20191001', 'Lenovo ideapad 20059', 'Windows 8', 1, 1, 32999, 6, 12, '2019-03-11'),
(27, '20191005', 'A4tech OP-720', 'normal mouse', 1, 1, 289, 1, 16, '2019-03-13'),
(28, '30000000', 'Adidas shoes', 'For me', 1, 1, 3300, 9, 17, '2022-12-04'),
(29, '300000001', 'Nike', 'For you', 1, 1, 3400, 9, 17, '2022-12-04'),
(30, '300000001', 'Nike', 'For you', 1, 1, 3400, 9, 17, '2022-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(10) NOT NULL,
  `project` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `overall_cost` varchar(10) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `site_pic` varchar(100) NOT NULL,
  `tid` int(10) NOT NULL,
  `proposed_project` int(5) NOT NULL,
  `date_added` date NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project`, `location`, `overall_cost`, `start_date`, `deadline`, `site_pic`, `tid`, `proposed_project`, `date_added`, `io`) VALUES
(4, 'Sample Project', 'Sample', '30000000', '2019-02-05', '2020-10-12', '8842_blank.jpg', 1, 1, '2020-10-05', 2),
(6, 'Reconstruct', 'quezon City', '1,000,000', '2022-12-01', '2022-12-04', 'no_image.jpg', 1, 1, '2022-12-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_division`
--

CREATE TABLE `project_division` (
  `pd_id` int(11) NOT NULL,
  `division` varchar(100) NOT NULL,
  `project_type` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_division`
--

INSERT INTO `project_division` (`pd_id`, `division`, `project_type`) VALUES
(1, 'Computer', 3),
(2, 'Vehicle', 4),
(3, 'Asset', 1),
(4, 'Window', 4),
(5, 'Facility', 5);

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(1, 'Sample Project', 'Vehicular Activity', 0, '2020-11-03', '2021-01-20', 2, '3,4,5', '2020-12-03 09:56:56'),
(2, 'Sample Project 102', 'Sample Only', 0, '2020-12-02', '2020-12-30', 2, '3', '2020-12-03 09:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `project_partition`
--

CREATE TABLE `project_partition` (
  `pp_id` int(10) NOT NULL,
  `project_id` int(10) NOT NULL,
  `pd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_partition`
--

INSERT INTO `project_partition` (`pp_id`, `project_id`, `pd_id`) VALUES
(1, 2, 5),
(2, 3, 2),
(3, 3, 1),
(4, 4, 2),
(5, 3, 3),
(6, 4, 1),
(7, 4, 3),
(8, 3, 5),
(9, 4, 5),
(10, 3, 4),
(11, 4, 4),
(12, 5, 3),
(13, 5, 5),
(14, 5, 4),
(15, 6, 3),
(16, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_progress`
--

CREATE TABLE `project_progress` (
  `prog_id` int(10) NOT NULL,
  `pp_id` int(10) NOT NULL,
  `progress` int(2) NOT NULL,
  `date_added` date NOT NULL,
  `partition_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_progress`
--

INSERT INTO `project_progress` (`prog_id`, `pp_id`, `progress`, `date_added`, `partition_img`) VALUES
(1, 0, 0, '2020-10-05', ''),
(2, 0, 0, '2020-10-05', 'no_image.jpg'),
(3, 0, 0, '2020-10-05', 'no_image.jpg'),
(4, 0, 0, '2020-10-05', ''),
(5, 0, 0, '2020-10-05', ''),
(6, 0, 0, '2020-10-05', ''),
(7, 0, 0, '2020-10-05', ''),
(8, 0, 0, '2020-10-05', ''),
(9, 0, 0, '2020-10-05', ''),
(10, 0, 0, '2020-10-05', 'no_image.jpg'),
(11, 0, 0, '2020-10-05', ''),
(12, 0, 0, '2020-10-05', 'no_image.jpg'),
(13, 1, 80, '2020-10-05', '4703_blank.jpg'),
(14, 0, 0, '2020-10-05', 'no_image.jpg'),
(15, 0, 0, '2020-10-05', 'no_image.jpg'),
(16, 4, 80, '2020-10-05', '6536_blank.jpg'),
(17, 6, 100, '2020-10-05', '1907_blank.jpg'),
(18, 7, 90, '2020-10-05', '8358_blank.jpg'),
(19, 7, 10, '2020-10-05', '9062_blank.jpg'),
(20, 9, 90, '2020-10-05', '3728_blank.jpg'),
(21, 11, 80, '2020-10-05', '9689_blank.jpg'),
(22, 0, 0, '2022-11-30', ''),
(23, 0, 0, '2022-11-30', 'no_image.jpg'),
(24, 0, 0, '2022-12-01', 'no_image.jpg'),
(25, 12, 10, '2022-12-01', '6250_axie.jpg'),
(26, 0, 0, '2022-12-01', ''),
(27, 0, 0, '2022-12-02', ''),
(28, 0, 0, '2022-12-03', 'no_image.jpg'),
(29, 0, 0, '2022-12-03', ''),
(30, 0, 0, '2022-12-03', ''),
(31, 0, 0, '2022-12-03', ''),
(32, 0, 0, '2022-12-03', ''),
(33, 0, 0, '2022-12-03', ''),
(34, 0, 0, '2022-12-03', ''),
(35, 0, 0, '2022-12-03', ''),
(36, 0, 0, '2022-12-03', ''),
(37, 0, 0, '2022-12-03', ''),
(38, 0, 0, '2022-12-03', ''),
(39, 0, 0, '2022-12-03', ''),
(40, 0, 0, '2022-12-03', ''),
(41, 0, 0, '2022-12-03', ''),
(42, 0, 0, '2022-12-03', ''),
(43, 0, 0, '2022-12-03', ''),
(44, 0, 0, '2022-12-03', ''),
(45, 0, 0, '2022-12-03', '');

-- --------------------------------------------------------

--
-- Table structure for table `project_team`
--

CREATE TABLE `project_team` (
  `tid` int(10) NOT NULL,
  `date_added` date NOT NULL,
  `eid` int(10) NOT NULL,
  `pio` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_team`
--

INSERT INTO `project_team` (`tid`, `date_added`, `eid`, `pio`) VALUES
(1, '2020-10-05', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `id` int(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `service_ids` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`id`, `email`, `service_ids`, `date_created`) VALUES
(1, 'jsmith@sample.com', '3,4,2', '2021-05-11 01:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `service` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `img_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `service`, `description`, `img_path`) VALUES
(2, 2, 'Service 102', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat sem et porta sagittis. Cras interdum varius risus, quis tincidunt orci convallis quis. Sed eget orci augue. Pellentesque mollis blandit nibh, vitae dapibus diam fringilla sed. Integer elementum felis vel elit feugiat auctor. Nunc fermentum tincidunt enim, non dignissim turpis pharetra ac. Proin pellentesque commodo diam. Morbi sem risus, blandit in egestas eget, suscipit quis tellus. Aenean varius quis turpis eu maximus. Nam feugiat sollicitudin ex. Etiam mollis ultricies turpis, a faucibus neque laoreet non. Integer et magna ultrices, faucibus felis quis, blandit quam.', 'uploads/services/2_img.jpg'),
(3, 1, 'asdasd', 'asdasd', NULL),
(4, 1, 'Test 101', 'Sample', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services_category`
--

CREATE TABLE `services_category` (
  `id` int(30) NOT NULL,
  `category` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services_category`
--

INSERT INTO `services_category` (`id`, `category`, `description`) VALUES
(1, 'Sample Category', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat sem et porta sagittis. Cras interdum varius risus, quis tincidunt orci convallis quis. Sed eget orci augue. Pellentesque mollis blandit nibh, vitae dapibus diam fringilla sed. Integer elementum felis vel elit feugiat auctor. Nunc fermentum tincidunt enim, non dignissim turpis pharetra ac. Proin pellentesque commodo diam. Morbi sem risus, blandit in egestas eget, suscipit quis tellus. Aenean varius quis turpis eu maximus. Nam feugiat sollicitudin ex. Etiam mollis ultricies turpis, a faucibus neque laoreet non. Integer et magna ultrices, faucibus felis quis, blandit quam.'),
(2, 'Sample Category 102', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat sem et porta sagittis. Cras interdum varius risus, quis tincidunt orci convallis quis. Sed eget orci augue. Pellentesque mollis blandit nibh, vitae dapibus diam fringilla sed. Integer elementum felis vel elit feugiat auctor. Nunc fermentum tincidunt enim, non dignissim turpis pharetra ac. Proin pellentesque commodo diam. Morbi sem risus, blandit in egestas eget, suscipit quis tellus. Aenean varius quis turpis eu maximus. Nam feugiat sollicitudin ex. Etiam mollis ultricies turpis, a faucibus neque laoreet non. Integer et magna ultrices, faucibus felis quis, blandit quam.');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `supplier_details` varchar(255) NOT NULL,
  `added_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`, `supplier_details`, `added_at`) VALUES
(11, 'InGame Tech', 114, '09457488521', '984 Woodstock Drive', '2019-04-12'),
(12, 'Asus', 115, '09635877412', '4407 Jerry Toth Drive', '0000-00-00'),
(13, 'Razer Co.', 111, '09587855685', '1908 Leo Street', '0000-00-00'),
(15, 'Strategic Technology Co.', 116, '09124033805', '1491 Shinn Avenue', '0000-00-00'),
(16, 'A4tech', 155, '09775673257', '', '0000-00-00'),
(17, 'MJS Company', 162, '+6391636389', '', '0000-00-00'),
(18, 'Apple Store', 163, '+63900000', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Customer Relationship Management System'),
(4, 'intro', 'Hi! I&apos;m Johnny, a ChatBot of this application. How can I help you?'),
(6, 'short_name', 'CRMS'),
(10, 'no_result', 'I am sorry. I can&apos;t understand your question. Please rephrase your question and make sure it is related to this site. Thank you :)'),
(11, 'logo', 'uploads/1620608940_tech-logo.png'),
(12, 'bot_avatar', 'uploads/bot_avatar.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'welcome_message', '');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Task Management System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Sample Task 1', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Fusce ullamcorper mattis semper. Nunc vel risus ipsum. Sed maximus dapibus nisl non laoreet. Pellentesque quis mauris odio. Donec fermentum facilisis odio, sit amet aliquet purus scelerisque eget.&amp;nbsp;&lt;/span&gt;													', 3, '2020-12-03 11:08:58'),
(2, 1, 'Sample Task 2', 'Sample Task 2							', 1, '2020-12-03 13:50:15'),
(3, 2, 'Task Test', 'Sample', 1, '2020-12-03 13:52:25'),
(4, 2, 'test 23', 'Sample test 23', 1, '2020-12-03 13:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human Resource', 'HR', 'HR160', '2020-11-01 07:16:25'),
(2, 'Information Technology', 'IT', 'IT807', '2020-11-01 07:19:37'),
(3, 'Operations', 'OP', 'OP640', '2020-12-02 21:28:56'),
(4, 'Volunteer', 'VL', 'VL9696', '2021-03-03 08:27:52'),
(5, 'Marketing', 'MK', 'MK369', '2021-03-03 10:53:52'),
(6, 'Finance', 'FI', 'FI123', '2021-03-03 10:54:27'),
(7, 'Sales', 'SS', 'SS469', '2021-03-03 10:55:24'),
(8, 'Research', 'RS', 'RS666', '2021-03-03 16:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'ASTR001245', 'Johnny', 'Scott', 'johnny@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '1996-06-12', 'Information Technology', '49 Arron Smith Drive', 'Honolulu', 'US', '7854785477', 1, '2020-11-10 11:29:59'),
(2, 'ASTR001369', 'Milton', 'Doe', 'milt@mail.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '1990-02-02', 'Operations', '15 Kincheloe Road', 'Salem', 'US', '8587944255', 1, '2020-11-10 13:40:02'),
(3, 'ASTR004699', 'Shawn', 'Den', 'Shawnden@mail.com', '3b87c97d15e8eb11e51aa25e9a5770e9', 'Male', '1995-03-22', 'Human Resource', '239 Desert Court', 'Wayne', 'US', '7458887169', 1, '2021-03-03 07:24:17'),
(4, 'ASTR002996', 'Carol', 'Reed', 'carol@mail.com', '723e1489a45d2cbaefec82eee410abd5', 'Female', '1989-03-23', 'Volunteer', 'Demo Address', 'Demo City', 'Demo Country', '7854448550', 1, '2021-03-03 10:44:13'),
(5, 'ASTR001439', 'Danny', 'Wood', 'danny@mail.com', 'b7bee6b36bd35b773132d4e3a74c2bb5', 'Male', '1986-03-12', 'Research', '11 Rardin Drive', 'San Francisco', 'US', '4587777744', 1, '2021-03-04 17:14:48'),
(6, 'ASTR006946', 'Shawn', 'Martin', 'shawn@mail.com', 'a3cceba83235dc95f750108d22c14731', 'Male', '1992-08-28', 'Finance', '3259 Ray Court', 'Wilmington', 'US', '8520259670', 1, '2021-03-04 17:46:02'),
(7, 'ASTR000084', 'Jennifer', 'Foltz', 'jennifer@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Female', '1992-12-11', 'Marketing', '977 Smithfield Avenue', 'Elkins', 'US', '7401256696', 1, '2022-02-09 15:29:00'),
(8, 'ASTR012447', 'Will', 'Williams', 'williams@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '1992-02-15', 'Research', '366 Cemetery Street', 'Houston', 'US', '7854000065', 1, '2022-02-10 15:52:32'),
(9, '1420', 'Mark Samson', 'Samson', 'architectmarky@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '1999-03-16', 'Human Resource', 'Block 33 Lot 9 Celina Homes 2 Deparo', 'Caloocan', 'Philippines', '4+46546515', 1, '2022-12-07 04:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(7, 'Supply -Contractor', '30/11/2020', '29/10/2020', 'Test Test Demo Test Test Demo Test Test Demo', '2020-11-19 13:11:21', 'A demo Admin Remarks for Testing!', '2020-12-02 23:26:27 ', 2, 1, 1),
(8, 'MRO Tools', '21/10/2020', '25/10/2020', 'Test Test Demo Test Test Demo Test Test Demo Test Test Demo', '2020-11-20 11:14:14', 'A demo Admin Remarks for Testing!', '2020-12-02 23:24:39 ', 1, 1, 1),
(9, 'Warehouse Materials', '08/12/2020', '12/12/2020', 'This is a demo description for testing purpose', '2020-12-02 18:26:01', 'All good make your time and hope you\'ll be fine and get back to work asap! Best Regards, Admin.', '2021-03-03 11:19:29 ', 1, 1, 2),
(10, 'MRO - Work Members	', '25/12/2020', '25/12/2020', 'This is a demo description for testing purpose', '2020-12-03 08:29:07', 'A demo Admin Remarks for Testing!', '2020-12-03 14:06:12 ', 1, 1, 1),
(11, 'Medical Leave', '02/12/2020', '06/12/2020', 'This is a demo description for testing purpose', '2020-04-29 15:01:14', 'A demo Admin Remarks for Testing!', '2020-04-29 20:33:21 ', 1, 1, 1),
(12, 'Assets(item)	', '02/02/2020', '03/03/2020', 'This is a demo description for testing purpose', '2020-07-03 08:11:11', 'A demo Admin Remarks for Testing!', '2020-07-03 13:42:05 ', 1, 1, 1),
(14, 'Assets(item)	', '2020-03-05', '2020-06-05', 'This is a demo description for testing purpose', '2021-03-02 09:31:01', NULL, NULL, 0, 1, 2),
(15, 'Parts of Vehicles	', '2021-03-15', '2021-03-05', 'None, Testing', '2021-03-02 09:32:42', 'casual leave not allowed for a week, the company\'s gotta huge project which should be completed within this week.', '2021-03-03 11:47:33 ', 2, 1, 1),
(18, 'Warehouse stock', '2021-03-04', '2021-03-05', 'i\'ve to go for my body checkup. got an appointment for tommorow', '2021-03-03 12:09:44', 'No comments on it.', '2021-03-04 22:56:24 ', 1, 1, 4),
(19, 'MRO Tools', '2021-03-05', '2021-03-06', 'been working over time since last night, so i\'d like a day off', '2021-03-03 12:24:15', NULL, NULL, 0, 1, 1),
(20, 'Assets(item)', '2022-02-09', '2022-02-12', 'None, Test Mode', '2022-02-09 15:31:15', NULL, NULL, 0, 1, 7),
(21, 'Assets(item)', '2022-02-11', '2022-02-18', 'This is just a demo condition for testing purpose!!', '2022-02-10 16:05:30', 'No comments!!', '2022-02-10 21:37:15 ', 1, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Supply -Contractor', 'Contractor for Project Management', '2020-11-01 12:07:56'),
(2, 'Supply-C(Members)', 'Members of the Contractor', '2020-11-06 13:16:09'),
(3, 'Assets(item)', 'Asset Item', '2020-11-06 13:16:38'),
(5, 'Warehouse stock', 'stock for future purposes', '2021-03-03 10:46:31'),
(6, 'Warehouse Materials', 'Materials used in warehousing', '2021-03-03 10:47:48'),
(7, 'Vehicles', 'For Fleeting supports', '2021-03-03 10:48:37'),
(8, 'Parts of Vehicles', 'Maintenance of Vehicles', '2021-03-03 10:50:17'),
(9, 'MRO Tools', 'Stocks for Tools', '2021-03-03 10:51:26'),
(10, 'MRO Machinery', 'Optional', '2021-03-03 13:18:26'),
(11, 'MRO - Work Members', 'Members Needed in a workgroup', '2021-03-03 13:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `tm_id` int(10) NOT NULL,
  `tid` int(10) NOT NULL,
  `eid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 0,
  `service_id` int(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `user_created` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `title`, `description`, `status`, `service_id`, `user_id`, `user_created`, `date_created`, `date_updated`) VALUES
(1, 'Sample Ticket 102', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat sem et porta sagittis. Cras interdum varius risus, quis tincidunt orci convallis quis. Sed eget orci augue. Pellentesque mollis blandit nibh, vitae dapibus diam fringilla sed. Integer elementum felis vel elit feugiat auctor. Nunc fermentum tincidunt enim, non dignissim turpis pharetra ac. Proin pellentesque commodo diam. Morbi sem risus, blandit in egestas eget, suscipit quis tellus. Aenean varius quis turpis eu maximus. Nam feugiat sollicitudin ex. Etiam mollis ultricies turpis, a faucibus neque laoreet non. Integer et magna ultrices, faucibus felis quis, blandit quam.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Morbi tincidunt malesuada ullamcorper. Nam blandit eros sit amet gravida mollis. Etiam ullamcorper magna et enim tempor bibendum. In mollis lectus non tellus euismod imperdiet. Duis nec vestibulum leo. Vivamus vel metus mattis, fringilla erat in, blandit risus. Fusce dolor ligula, consequat vel varius vel, cursus nec nibh. Integer vel condimentum lorem. Aliquam tincidunt aliquam eros eu tincidunt.</p>', 2, 2, '-1', 'developer', '2021-05-10 13:59:54', '2021-05-10 21:55:55'),
(4, 'Sample 103', '<p>Sample only</p>', 0, 3, '1', 'user', '2021-05-10 23:38:52', '2021-05-10 23:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_comment`
--

CREATE TABLE `ticket_comment` (
  `id` int(30) NOT NULL,
  `ticket_id` int(30) NOT NULL,
  `comment` text DEFAULT NULL,
  `user_id` varchar(30) NOT NULL,
  `user_created` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket_comment`
--

INSERT INTO `ticket_comment` (`id`, `ticket_id`, `comment`, `user_id`, `user_created`, `date_created`) VALUES
(2, 1, 'Sample comment..', '-1', 'developer', '2021-05-10 16:36:21'),
(4, 1, 'Sample', '-1', 'developer', '2021-05-10 21:55:34'),
(5, 4, 'sample', '1', 'user', '2021-05-10 23:55:39'),
(6, 4, 'test', '1', 'admin', '2021-05-11 00:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`) VALUES
(3, 16, '3', '456,982.00', '48,962.36', '408,019.64', '48,962.36', '456,982.00', '500000', '2019-03-18', '0318160336'),
(4, 11, '2', '1,967.00', '210.75', '1,756.25', '210.75', '1,967.00', '2000', '2019-03-18', '0318160622'),
(5, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2019-03-18', '0318170309'),
(6, 15, '1', '77,850.00', '8,341.07', '69,508.93', '8,341.07', '77,850.00', '80000', '2019-03-18', '0318170352'),
(7, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170511'),
(8, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170524'),
(9, 14, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170551'),
(10, 11, '1', '289.00', '30.96', '258.04', '30.96', '289.00', '500', '2019-03-18', '0318170624'),
(11, 9, '2', '1,148.00', '123.00', '1,025.00', '123.00', '1,148.00', '2000', '2019-03-18', '0318170825'),
(12, 9, '1', '5,500.00', '589.29', '4,910.71', '589.29', '5,500.00', '6000', '2019-03-18 19:40 pm', '0318194016'),
(13, 11, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2022-07-14 14:12 pm', '0714141333'),
(14, 16, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '1000', '2022-07-14 15:54 pm', '0714155515'),
(15, 11, '2', '1,128.00', '120.86', '1,007.14', '120.86', '1,128.00', '1128', '2022-07-14 16:08 pm', '0714160904'),
(16, 9, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2022-07-14 16:10 pm', '0714161034');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`) VALUES
(7, '0318160336', 'Lenovo ideapad 20059', '2', '32999', 'Prince Ly', 'Manager'),
(8, '0318160336', 'Predator Helios 300 Gaming Laptop', '5', '77850', 'Prince Ly', 'Manager'),
(9, '0318160336', 'A4tech OP-720', '6', '289', 'Prince Ly', 'Manager'),
(10, '0318160622', 'Newmen E120', '2', '550', 'Prince Ly', 'Manager'),
(11, '0318160622', 'A4tech OP-720', '3', '289', 'Prince Ly', 'Manager'),
(12, '0318170309', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager'),
(13, '0318170352', 'Predator Helios 300 Gaming Laptop', '1', '77850', 'Prince Ly', 'Manager'),
(14, '0318170511', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(15, '0318170524', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(16, '0318170551', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(17, '0318170624', 'A4tech OP-720', '1', '289', 'Prince Ly', 'Manager'),
(18, '0318170825', 'A4tech OP-720', '1', '289', 'Prince Ly', 'Manager'),
(19, '0318170825', 'Fantech EG1', '1', '859', 'Prince Ly', 'Manager'),
(20, '0318194016', 'Newmen E120', '10', '550', 'Josuey', 'Cashier'),
(21, '0714141333', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager'),
(22, '0714155515', 'Newmen E120', '1', '550', 'Erick', 'Manager'),
(23, '0714160904', 'Newmen E120', '1', '550', 'Erick', 'Manager'),
(24, '0714160904', 'A4tech OP-720', '2', '289', 'Erick', 'Manager'),
(25, '0714161034', 'Newmen E120', '1', '550', 'Josuey', 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `eid` int(5) NOT NULL,
  `user_type` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `eid`, `user_type`, `username`, `password`, `io`) VALUES
(1, 1, 1, 'admin', 'password', 1),
(4, 2, 2, 'user', 'pass', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(1, 1, 1, '							&lt;p&gt;Sample Progress&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Test 1&lt;/li&gt;&lt;li&gt;Test 2&lt;/li&gt;&lt;li&gt;Test 3&lt;/li&gt;&lt;/ul&gt;																			', 'Sample Progress', '2020-12-03', '08:00:00', '10:00:00', 1, 2, '2020-12-03 12:13:28'),
(2, 1, 1, '							Sample Progress						', 'Sample Progress 2', '2020-12-03', '13:00:00', '14:00:00', 1, 2, '2020-12-03 13:48:28'),
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 2, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD UNIQUE KEY `dept_name` (`dept_name`),
  ADD KEY `dept_name_2` (`dept_name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_cat` (`item_cat`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `supplier_id_2` (`supplier_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `proc_users`
--
ALTER TABLE `proc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_division`
--
ALTER TABLE `project_division`
  ADD PRIMARY KEY (`pd_id`);

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_partition`
--
ALTER TABLE `project_partition`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `project_progress`
--
ALTER TABLE `project_progress`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `project_team`
--
ALTER TABLE `project_team`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_category`
--
ALTER TABLE `services_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`tm_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_comment`
--
ALTER TABLE `ticket_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `proc_users`
--
ALTER TABLE `proc_users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_division`
--
ALTER TABLE `project_division`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_partition`
--
ALTER TABLE `project_partition`
  MODIFY `pp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `project_progress`
--
ALTER TABLE `project_progress`
  MODIFY `prog_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `project_team`
--
ALTER TABLE `project_team`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services_category`
--
ALTER TABLE `services_category`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `team_member`
--
ALTER TABLE `team_member`
  MODIFY `tm_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_comment`
--
ALTER TABLE `ticket_comment`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
