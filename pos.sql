-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2019 at 09:22 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceId` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  `empFName` varchar(255) NOT NULL,
  `empLName` varchar(255) NOT NULL,
  `attDate` varchar(255) NOT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT '00:00:00',
  `overTime` float DEFAULT NULL,
  `hoursWorked` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendanceId`, `empId`, `empFName`, `empLName`, `attDate`, `startTime`, `endTime`, `overTime`, `hoursWorked`) VALUES
(1, 2, 'James', 'Murray', '8/10/2019', '09:00:00', '17:00:00', 0, 8),
(2, 1, 'Rick', 'Browns', '9/10/2019', '09:00:00', '14:00:00', 0, 5),
(3, 4, 'Glenn', 'Watson', '11/10/2019', '09:00:00', '18:55:00', 1.55, 9.55),
(8, 4, 'Bob', 'Riverston', '11/10/2019', '09:00:00', '18:55:00', 1.55, 9.55),
(9, 3, 'Miranda', 'hastings', '1/9/2019', '07:55:00', '18:30:00', 1.3, 10.35),
(10, 2, 'james', 'murray', '2/9/2019', '12:11:00', '00:00:00', 0, -13.49);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cardNo` int(11) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `membershipType` varchar(20) NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cardNo`, `fName`, `lName`, `address`, `membershipType`, `discount`) VALUES
(657, '', 'dt', 'dy', 'Silver', 7),
(771246364, 'Carla', 'Hooper', '548 maven road', 'Gold', 10),
(771905730, 'Victor', 'Lyons', ' 322 Buller road', 'Silver', 7),
(777801951, 'Zack', 'Barton', '211/5 hill street', 'Platinum', 15);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `deliveryId` int(11) NOT NULL,
  `salesNo` int(11) NOT NULL,
  `custName` varchar(255) NOT NULL,
  `custmobileNo` int(10) NOT NULL,
  `custAddress` varchar(255) NOT NULL,
  `deliveryDateTime` varchar(255) NOT NULL,
  `availableDriver` varchar(255) NOT NULL,
  `deliveryState` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`deliveryId`, `salesNo`, `custName`, `custmobileNo`, `custAddress`, `deliveryDateTime`, `availableDriver`, `deliveryState`) VALUES
(1, 2, 'John', 772017335, 'Good Street, Kandy', '8/10/2019', 'Miranda', 'Delivered'),
(6, 0, 'nadeesha', 987654321, 'kurunegala', '2019-09-16', 'Miranda', 'Delivered'),
(7, 0, 's', 244, 'ss', '2019-08-31', 'Miranda', 'Delivered'),
(8, 0, 'sabkalpabi', 852, 'iddbjs', '2019-08-24', 'Miranda', 'Delivered'),
(9, 0, 's', 22, 'sd', '2019-08-12', 'Miranda', 'Delivered'),
(10, 0, 'sabjjsj', 135567, 'kansy', '2019-08-04', 'Miranda', 'Delivered'),
(11, 0, 'SANKALPANI', 14796, 'KANDY', '2019-08-02', 'Miranda', 'Delivered'),
(12, 0, 'ty', 0, 'fgd', '2019-09-01', 'Miranda', 'Delivered'),
(13, 0, 'anne', 92823, 'malabe', '2019-09-06', 'Miranda', 'Delivered'),
(14, 25, 'ttt', 55, 'ww', '01/09/2019 19:43:05', 'Bob', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empId` int(11) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `enrollDate` varchar(255) NOT NULL,
  `leaveDate` varchar(255) DEFAULT NULL,
  `post` varchar(20) NOT NULL,
  `basicSalary` float NOT NULL,
  `bonus` float DEFAULT NULL,
  `EPF` float NOT NULL,
  `ETF` float NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empId`, `fName`, `lName`, `address`, `city`, `enrollDate`, `leaveDate`, `post`, `basicSalary`, `bonus`, `EPF`, `ETF`, `password`) VALUES
(1, 'Rick', 'Morty', '411 Colombo Street', 'Kandy', '2019-01-01', '0000-00-00', 'Manager', 50000, 0, 4000, 1500, 'admin'),
(2, 'James', 'Murray', '398/2 Peradeniya road', 'Kandy', '2019-02-15', '0000-00-00', 'Employee', 30000, 0, 2400, 900, 'emp'),
(3, 'Miranda', 'Rush', '277/5 Colomobo road', 'Kandy', '2018-01-15', '0000-00-00', 'Rider', 25000, 0, 2000, 750, 'emp'),
(4, 'Glenn', 'Long', '312/9 Colomobo road', 'Gelioya', '2018-07-09', '0000-00-00', 'Employee', 35000, 0, 2800, 1050, 'emp'),
(5, 'Bob', 'Woods', '741 Malabe Road', 'Colombo', '2018-08-21', '0000-00-00', 'Rider', 32000, 0, 2560, 960, 'emp'),
(6, 'Sam', 'Penn', 'nothern street', 'Kandy', '2017-01-05', '', 'Rider', 45000, 0, 3500, 1500, 'emp');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `prodDescription` varchar(255) NOT NULL,
  `productType` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `buyPrice` float NOT NULL,
  `sellPrice` float NOT NULL,
  `barcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `prodDescription`, `productType`, `quantity`, `buyPrice`, `sellPrice`, `barcode`) VALUES
(1, 'Kit Kat ', 'choc bar', 'Chocolate', 3, 110, 130, 'CH1552'),
(2, 'Sprite', '1 l', 'Soft Drinks', 4, 220, 250, 'SD1205'),
(3, 'Maxies Chicken ', '', 'Frozen Snacks', 11, 225, 270, 'FS2245'),
(4, 'Wonder Bar', '', 'Ice Cream', 19, 50, 75, 'IC3258'),
(5, 'Sprite', '750 ml', 'Soft Drinks', 4, 200, 250, 'CH0750'),
(6, 'Milo', '250ml', 'FROZENS', 50, 45, 55, 'ML5251'),
(8, 'SANWICH BREAD', '10', 'BAKERY GOODS', 5, 50, 55, '951'),
(9, 'SANWICH', '5', 'BAKERY GOODS', 5, 50, 60, '841'),
(10, 'sprite', '1.5', 'BEVERAGES', 10, 100, 120, '321'),
(11, 'salman', '220', 'MEAT', 50, 300, 320, '456'),
(12, 'baby soap ', 'large', 'PERSONAL CARE', 5, 80, 100, '899546'),
(13, 'toast', '2 loafs', 'BAKERY GOODS', 12, 120, 150, '86453'),
(14, 'toast', '2 loafs', 'BAKERY GOODS', 12, 120, 150, '86453'),
(15, 'noodles', '789', 'FROZENS', 789, 789, 789, '789'),
(16, 'S', 'SSD', 'BEVERAGES', 2, 75, 78, 'TYJ');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `empId` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `bonus` float NOT NULL,
  `overtime` float NOT NULL,
  `netSalary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`empId`, `month`, `year`, `bonus`, `overtime`, `netSalary`) VALUES
(1, 'July', '2019', 3000, 500, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `salesId` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `subTotal` float NOT NULL,
  `pay` float NOT NULL,
  `balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`salesId`, `date`, `subTotal`, `pay`, `balance`) VALUES
(1, '06/30/2019', 130, 200, 70),
(5, '06/30/2019', 260, 260, 0),
(6, '06/30/2019', 130, 150, 20),
(7, '06/30/2019', 130, 130, 0),
(23, '09/01/2019', 130, 150, 20),
(24, '01/09/2019 10:53:15', 110.5, 120, 9.5),
(25, '09/01/2019', 260, 300, 40),
(26, '02/09/2019 01:06:53', 212.5, 500, 287.5);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `salesId` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `sellPrice` float NOT NULL,
  `qty` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `salesId`, `productId`, `sellPrice`, `qty`, `total`) VALUES
(1, 5, 'ch1552', 130, 2, 260),
(2, 6, 'ch1552', 130, 1, 130),
(3, 7, 'ch1552', 130, 1, 130),
(26, 23, 'ch1552', 130, 1, 130),
(27, 24, 'ch1552', 130, 1, 130),
(28, 25, 'ch1552', 130, 1, 130),
(29, 25, 'ch1552', 130, 1, 130),
(30, 26, 'sd1205', 250, 1, 250);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supId` int(11) NOT NULL,
  `supName` varchar(20) NOT NULL,
  `supAddress` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supId`, `supName`, `supAddress`, `email`, `phone`) VALUES
(1000, 'Ocean Gate', '988/2 Havelock Road', 'oceangate@gmail.com', 812458795),
(1001, 'Cargills', '578/4 Campbell Place', 'cargills@gmail.com', 812201088),
(1002, 'Maxies', '622/6  Matale Road', 'maxies@gmail.com', 812203049),
(1003, 'UrBeverages', '622/6  Matale Road', 'urbeverages@gmail.com', 812224719);

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `supId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `suppliedDate` varchar(255) NOT NULL,
  `itemType` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discountFromSup` float NOT NULL,
  `payment` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`supId`, `productId`, `suppliedDate`, `itemType`, `itemName`, `quantity`, `discountFromSup`, `payment`) VALUES
(1000, 1, '2019-01-05', 'Chocolate', 'KitKat Chocolate Bar', 27, 5, 2821.5),
(1001, 4, '2019-02-25', 'SoftDrink', 'Sprite', 15, 5, 3135);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceId`),
  ADD KEY `empId` (`empId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cardNo`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`deliveryId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`empId`,`month`,`year`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesId`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salesId` (`salesId`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supId`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`productId`,`supId`),
  ADD KEY `supId` (`supId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendanceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `deliveryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `salesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD CONSTRAINT `sales_product_ibfk_1` FOREIGN KEY (`salesId`) REFERENCES `sales` (`salesId`);

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplies_ibfk_2` FOREIGN KEY (`supId`) REFERENCES `supplier` (`supId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
