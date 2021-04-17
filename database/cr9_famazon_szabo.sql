-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2021 at 04:16 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr9_famazon_szabo`
--
CREATE DATABASE IF NOT EXISTS `cr9_famazon_szabo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr9_famazon_szabo`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_number` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account_number`, `balance`) VALUES
(1, 10, 2000),
(2, 20, 3000),
(3, 30, 4000),
(4, 40, 5000),
(5, 50, 6000),
(6, 60, 7000),
(7, 70, 8000),
(8, 80, 9000),
(9, 90, 10000),
(10, 100, 11000);

-- --------------------------------------------------------

--
-- Table structure for table `account_created`
--

CREATE TABLE `account_created` (
  `account_created_id` int(11) NOT NULL,
  `fk_account_id` int(11) DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_created`
--

INSERT INTO `account_created` (`account_created_id`, `fk_account_id`, `fk_customer_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `fk_customer_address_id` int(11) DEFAULT NULL,
  `fk_customer_shipping_address_id` int(11) DEFAULT NULL,
  `customer_first_name` varchar(55) DEFAULT NULL,
  `customer_last_name` varchar(55) DEFAULT NULL,
  `customer_user_name` varchar(55) DEFAULT NULL,
  `customer_email` varchar(55) DEFAULT NULL,
  `customer_phone` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `fk_customer_address_id`, `fk_customer_shipping_address_id`, `customer_first_name`, `customer_last_name`, `customer_user_name`, `customer_email`, `customer_phone`) VALUES
(1, 1, 1, 'Michail', 'Duesbury', 'Boyer, Durgan and Walter', 'mduesbury0@addthis.com', '337-489-6398'),
(2, 2, 2, 'Cecilla', 'Cattini', 'Gleichner LLC', 'ccattini1@arstechnica.com', '747-355-6632'),
(3, 3, 3, 'Sawyer', 'Walklett', 'Boyer LLC', 'swalklett2@ning.com', '733-726-2872'),
(4, 4, 4, 'Chickie', 'Bangiard', 'Pouros LLC', 'cbangiard3@goodreads.com', '391-883-0193'),
(5, 5, 5, 'Leanora', 'Arbuckle', 'Tillman-Toy', 'larbuckle4@examiner.com', '370-907-8770'),
(6, 6, 6, 'Jeffrey', 'Askew', 'Sporer-Huels', 'jaskew5@com.com', '112-130-3499'),
(7, 7, 7, 'Luella', 'McDavitt', 'McKenzie Inc', 'lmcdavitt6@ca.gov', '307-499-1602'),
(8, 8, 8, 'Pen', 'Presshaugh', 'Cruickshank, Hintz and Mills', 'ppresshaugh7@flickr.com', '438-463-8746'),
(9, 9, 9, 'Ainslee', 'Beak', 'Ortiz-Murazik', 'abeak8@ifeng.com', '147-341-2757'),
(10, 10, 10, 'Feodor', 'Downes', 'Towne-Parisian', 'fdownes9@myspace.com', '438-621-0507');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `customer_address_id` int(11) NOT NULL,
  `customer_city` varchar(55) DEFAULT NULL,
  `customer_area` int(11) DEFAULT NULL,
  `customer_street` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`customer_address_id`, `customer_city`, `customer_area`, `customer_street`) VALUES
(1, 'Castanheira', 78561, 'Pierstorff'),
(2, 'Casal do Relvas', 7497, 'Prairie Rose'),
(3, 'Sanbao', 891, 'Norway Maple'),
(4, 'Castanheira', 78561, 'Pierstorff'),
(5, 'Casal do Relvas', 7497, 'Prairie Rose'),
(6, 'Sanbao', 891, 'Norway Maple'),
(7, 'Castanheira', 78561, 'Pierstorff'),
(8, 'Casal do Relvas', 7497, 'Prairie Rose'),
(9, 'Sanbao', 891, 'Norway Maple'),
(10, 'Krajan Caluk', 50, 'Mitchell');

-- --------------------------------------------------------

--
-- Table structure for table `customer_shipping_address`
--

CREATE TABLE `customer_shipping_address` (
  `customer_shipping_address_id` int(11) NOT NULL,
  `customer_city` varchar(55) DEFAULT NULL,
  `customer_area` varchar(55) DEFAULT NULL,
  `customer_street` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_shipping_address`
--

INSERT INTO `customer_shipping_address` (`customer_shipping_address_id`, `customer_city`, `customer_area`, `customer_street`) VALUES
(1, 'Biaokou', '405', 'Jenna'),
(2, 'Wielka Wieś', '06', 'Declaration'),
(3, 'Sembungin', '817', 'Crest Line'),
(4, 'Drammen', '874', 'Forster'),
(5, 'Dijon', '0', 'Blackbird'),
(6, 'Su-dong', '4788', 'Cascade'),
(7, 'Alcanhões', '87', 'Old Shore'),
(8, 'Donghai', '07', 'Oak'),
(9, 'Kalemie', '7116', 'Loeprich'),
(10, 'Kpalimé', '573', 'Dahle');

-- --------------------------------------------------------

--
-- Table structure for table `famazon`
--

CREATE TABLE `famazon` (
  `famazon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `famazon`
--

INSERT INTO `famazon` (`famazon_id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_date`) VALUES
(1, '2020-06-10'),
(2, '2020-06-29'),
(3, '2021-03-06'),
(4, '2021-02-28'),
(5, '2020-08-30'),
(6, '2020-07-22'),
(7, '2021-03-16'),
(8, '2020-12-30'),
(9, '2021-04-12'),
(10, '2020-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_sent_to_customer`
--

CREATE TABLE `invoice_sent_to_customer` (
  `invoice_sent_to_customer_id` int(11) NOT NULL,
  `fk_invoice_id` int(11) DEFAULT NULL,
  `fk_account_id` int(11) DEFAULT NULL,
  `fk_famazon_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_sent_to_customer`
--

INSERT INTO `invoice_sent_to_customer` (`invoice_sent_to_customer_id`, `fk_invoice_id`, `fk_account_id`, `fk_famazon_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(55) DEFAULT NULL,
  `item_price` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_price`) VALUES
(1, 'Regrant', '$5.22'),
(2, 'Bamity', '$0.77'),
(3, 'Quo Lux', '$5.65'),
(4, 'Cardify', '$5.89'),
(5, 'Zoolab', '$4.94'),
(6, 'Zamit', '$7.98'),
(7, 'Sonsing', '$2.16'),
(8, 'Y-Solowarm', '$1.31'),
(9, 'Veribet', '$5.65'),
(10, 'Prodder', '$2.27');

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `order_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `shipping_status_sent` tinyint(1) DEFAULT NULL,
  `shipped_date` date DEFAULT NULL,
  `comments` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`order_id`, `order_date`, `shipping_status_sent`, `shipped_date`, `comments`) VALUES
(1, '0000-00-00', 1, '0000-00-00', 'http://dummyimage.com/172x100.png/ff4444/ffffff'),
(2, '0000-00-00', 1, '0000-00-00', 'http://dummyimage.com/109x100.png/cc0000/ffffff'),
(3, '0000-00-00', 0, '0000-00-00', 'http://dummyimage.com/207x100.png/cc0000/ffffff'),
(4, '0000-00-00', 1, '0000-00-00', 'http://dummyimage.com/172x100.png/ff4444/ffffff'),
(5, '0000-00-00', 1, '0000-00-00', 'http://dummyimage.com/109x100.png/cc0000/ffffff'),
(6, '0000-00-00', 0, '0000-00-00', 'http://dummyimage.com/207x100.png/cc0000/ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `order_sent_to_famazon`
--

CREATE TABLE `order_sent_to_famazon` (
  `order_sent_to_famazon_id` int(11) NOT NULL,
  `fk_famazon_id` int(11) DEFAULT NULL,
  `fk_order_id` int(11) DEFAULT NULL,
  `fk_item_id` int(11) DEFAULT NULL,
  `fk_account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_sent_to_famazon`
--

INSERT INTO `order_sent_to_famazon` (`order_sent_to_famazon_id`, `fk_famazon_id`, `fk_order_id`, `fk_item_id`, `fk_account_id`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_sent_to_supplier`
--

CREATE TABLE `order_sent_to_supplier` (
  `order_sent_to_supplier_id` int(11) NOT NULL,
  `fk_supplier_id` int(11) DEFAULT NULL,
  `fk_famazon_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_sent_to_supplier`
--

INSERT INTO `order_sent_to_supplier` (`order_sent_to_supplier_id`, `fk_supplier_id`, `fk_famazon_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_id` int(11) NOT NULL,
  `customer_name` varchar(55) DEFAULT NULL,
  `payment_form` varchar(55) DEFAULT NULL,
  `bank_name` varchar(55) DEFAULT NULL,
  `iban` varchar(55) DEFAULT NULL,
  `bic` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_id`, `customer_name`, `payment_form`, `bank_name`, `iban`, `bic`) VALUES
(1, 'Deckow LLC', 'Paypal', 'Bank Austria', '3387146248', '546107BC4'),
(2, 'Price Inc', 'Credit-card', 'Erste Bank', '8609692132', '3518HG2809'),
(3, 'Runte, Hudson and Leannon', 'Paypal', 'Bawag', '4892993603', '5JK6193808');

-- --------------------------------------------------------

--
-- Table structure for table `set_payment_method`
--

CREATE TABLE `set_payment_method` (
  `set_payment_id` int(11) NOT NULL,
  `fk_account_id` int(11) DEFAULT NULL,
  `fk_payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `set_payment_method`
--

INSERT INTO `set_payment_method` (`set_payment_id`, `fk_account_id`, `fk_payment_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shipped_to_customer`
--

CREATE TABLE `shipped_to_customer` (
  `shipped_to_customer_id` int(11) NOT NULL,
  `fk_supplier_id` int(11) DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipped_to_customer`
--

INSERT INTO `shipped_to_customer` (`shipped_to_customer_id`, `fk_supplier_id`, `fk_customer_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `fk_supplier_address_id` int(11) DEFAULT NULL,
  `supplier_first_name` varchar(55) DEFAULT NULL,
  `supplier_last_name` varchar(55) DEFAULT NULL,
  `supplier_company_name` varchar(55) DEFAULT NULL,
  `supplier_email` varchar(55) DEFAULT NULL,
  `supplier_phone` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `fk_supplier_address_id`, `supplier_first_name`, `supplier_last_name`, `supplier_company_name`, `supplier_email`, `supplier_phone`) VALUES
(1, 1, 'Aprilette', 'Beale', 'Tambee', 'abeale0@nifty.com', '946-945-1984'),
(2, 2, 'Maxwell', 'Marvell', 'Quimba', 'mmarvell1@ning.com', '452-832-5897'),
(3, 3, 'Chrystel', 'Krook', 'Meejo', 'ckrook2@godaddy.com', '312-656-9998');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_address`
--

CREATE TABLE `supplier_address` (
  `supplier_address_id` int(11) NOT NULL,
  `supplier_city` varchar(300) DEFAULT NULL,
  `supplier_area` int(11) DEFAULT NULL,
  `supplier_street` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_address`
--

INSERT INTO `supplier_address` (`supplier_address_id`, `supplier_city`, `supplier_area`, `supplier_street`) VALUES
(1, 'Tanjungsari Barat', 62990, 'Steensland'),
(2, 'Rantau', 92, 'Delladonna'),
(3, 'Aparecida de Goiânia', 45, 'Northland'),
(4, 'Jardim do Seridó', 61, 'Transport'),
(5, 'Vallecillo', 2677, 'Meadow Vale'),
(6, 'Guanzhuang', 1494, 'Hanson'),
(7, 'Cristóbal', 94166, 'Tennyson'),
(8, 'Bordeaux', 95895, 'Carberry'),
(9, 'Hanji', 8684, 'Mayfield'),
(10, 'Algueirão', 946, 'Butternut');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `account_created`
--
ALTER TABLE `account_created`
  ADD PRIMARY KEY (`account_created_id`),
  ADD KEY `fk_account_id` (`fk_account_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `fk_customer_address_id` (`fk_customer_address_id`),
  ADD KEY `fk_customer_shipping_address_id` (`fk_customer_shipping_address_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`customer_address_id`);

--
-- Indexes for table `customer_shipping_address`
--
ALTER TABLE `customer_shipping_address`
  ADD PRIMARY KEY (`customer_shipping_address_id`);

--
-- Indexes for table `famazon`
--
ALTER TABLE `famazon`
  ADD PRIMARY KEY (`famazon_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_sent_to_customer`
--
ALTER TABLE `invoice_sent_to_customer`
  ADD PRIMARY KEY (`invoice_sent_to_customer_id`),
  ADD KEY `fk_invoice_id` (`fk_invoice_id`),
  ADD KEY `fk_account_id` (`fk_account_id`),
  ADD KEY `fk_famazon_id` (`fk_famazon_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_sent_to_famazon`
--
ALTER TABLE `order_sent_to_famazon`
  ADD PRIMARY KEY (`order_sent_to_famazon_id`),
  ADD KEY `fk_famazon_id` (`fk_famazon_id`),
  ADD KEY `fk_order_id` (`fk_order_id`),
  ADD KEY `fk_item_id` (`fk_item_id`),
  ADD KEY `fk_account_id` (`fk_account_id`);

--
-- Indexes for table `order_sent_to_supplier`
--
ALTER TABLE `order_sent_to_supplier`
  ADD PRIMARY KEY (`order_sent_to_supplier_id`),
  ADD KEY `fk_supplier_id` (`fk_supplier_id`),
  ADD KEY `fk_famazon_id` (`fk_famazon_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `set_payment_method`
--
ALTER TABLE `set_payment_method`
  ADD PRIMARY KEY (`set_payment_id`),
  ADD KEY `fk_account_id` (`fk_account_id`),
  ADD KEY `fk_payment_id` (`fk_payment_id`);

--
-- Indexes for table `shipped_to_customer`
--
ALTER TABLE `shipped_to_customer`
  ADD PRIMARY KEY (`shipped_to_customer_id`),
  ADD KEY `fk_supplier_id` (`fk_supplier_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `fk_supplier_address_id` (`fk_supplier_address_id`);

--
-- Indexes for table `supplier_address`
--
ALTER TABLE `supplier_address`
  ADD PRIMARY KEY (`supplier_address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `account_created`
--
ALTER TABLE `account_created`
  MODIFY `account_created_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `customer_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer_shipping_address`
--
ALTER TABLE `customer_shipping_address`
  MODIFY `customer_shipping_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `famazon`
--
ALTER TABLE `famazon`
  MODIFY `famazon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoice_sent_to_customer`
--
ALTER TABLE `invoice_sent_to_customer`
  MODIFY `invoice_sent_to_customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order1`
--
ALTER TABLE `order1`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_sent_to_famazon`
--
ALTER TABLE `order_sent_to_famazon`
  MODIFY `order_sent_to_famazon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_sent_to_supplier`
--
ALTER TABLE `order_sent_to_supplier`
  MODIFY `order_sent_to_supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `set_payment_method`
--
ALTER TABLE `set_payment_method`
  MODIFY `set_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipped_to_customer`
--
ALTER TABLE `shipped_to_customer`
  MODIFY `shipped_to_customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier_address`
--
ALTER TABLE `supplier_address`
  MODIFY `supplier_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_created`
--
ALTER TABLE `account_created`
  ADD CONSTRAINT `account_created_ibfk_1` FOREIGN KEY (`fk_account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `account_created_ibfk_2` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fk_customer_address_id`) REFERENCES `customer_address` (`customer_address_id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`fk_customer_shipping_address_id`) REFERENCES `customer_shipping_address` (`customer_shipping_address_id`);

--
-- Constraints for table `invoice_sent_to_customer`
--
ALTER TABLE `invoice_sent_to_customer`
  ADD CONSTRAINT `invoice_sent_to_customer_ibfk_1` FOREIGN KEY (`fk_invoice_id`) REFERENCES `invoice` (`invoice_id`),
  ADD CONSTRAINT `invoice_sent_to_customer_ibfk_2` FOREIGN KEY (`fk_account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `invoice_sent_to_customer_ibfk_3` FOREIGN KEY (`fk_famazon_id`) REFERENCES `famazon` (`famazon_id`);

--
-- Constraints for table `order_sent_to_famazon`
--
ALTER TABLE `order_sent_to_famazon`
  ADD CONSTRAINT `order_sent_to_famazon_ibfk_1` FOREIGN KEY (`fk_famazon_id`) REFERENCES `famazon` (`famazon_id`),
  ADD CONSTRAINT `order_sent_to_famazon_ibfk_2` FOREIGN KEY (`fk_order_id`) REFERENCES `order1` (`order_id`),
  ADD CONSTRAINT `order_sent_to_famazon_ibfk_3` FOREIGN KEY (`fk_item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `order_sent_to_famazon_ibfk_4` FOREIGN KEY (`fk_account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `order_sent_to_supplier`
--
ALTER TABLE `order_sent_to_supplier`
  ADD CONSTRAINT `order_sent_to_supplier_ibfk_1` FOREIGN KEY (`fk_supplier_id`) REFERENCES `supplier` (`supplier_id`),
  ADD CONSTRAINT `order_sent_to_supplier_ibfk_2` FOREIGN KEY (`fk_famazon_id`) REFERENCES `famazon` (`famazon_id`);

--
-- Constraints for table `set_payment_method`
--
ALTER TABLE `set_payment_method`
  ADD CONSTRAINT `set_payment_method_ibfk_1` FOREIGN KEY (`fk_account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `set_payment_method_ibfk_2` FOREIGN KEY (`fk_payment_id`) REFERENCES `payment_method` (`payment_id`);

--
-- Constraints for table `shipped_to_customer`
--
ALTER TABLE `shipped_to_customer`
  ADD CONSTRAINT `shipped_to_customer_ibfk_1` FOREIGN KEY (`fk_supplier_id`) REFERENCES `supplier` (`supplier_id`),
  ADD CONSTRAINT `shipped_to_customer_ibfk_2` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`fk_supplier_address_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `supplier_ibfk_2` FOREIGN KEY (`fk_supplier_address_id`) REFERENCES `supplier_address` (`supplier_address_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
