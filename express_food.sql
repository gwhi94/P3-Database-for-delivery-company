-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2018 at 07:50 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_forename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_surname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_address` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_postcode` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_contactnumber` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_forename`, `client_surname`, `client_address`, `client_city`, `client_postcode`, `client_contactnumber`) VALUES
(1, 'Jimmy', 'Smith', '45 Land Close', 'Bedford', 'BL6 556', '07987437243'),
(2, 'Kelly', 'Jacobs', '567 Apple Street', 'Northampton', 'PD6 D0D', '07643835643'),
(3, 'Chris', 'Smart', '8 Far Close', 'Luton', 'LK8 09D', '07643508953'),
(4, 'Gary', 'Tims', '5 Pear Lane', 'Milton Keynes', 'NNJ 86B', '07223572243'),
(5, 'James', 'White', '45 Apple Close', 'Bedford', 'BD6 D9D', '07643537243'),
(6, 'Jane', 'Williams', '23 Waterfall Street', 'Leicester', 'DA8 8BD', '07843764549'),
(7, 'Cathy', 'Byrnes', '98 Pickford Lane', 'Bedford', 'NJK 8LD', '07643567543'),
(8, 'Niro', 'Smith', '49 Gordon Street', 'Northampton', 'NN9 9BD', '07623564743'),
(9, 'Katie', 'Bennet', '23 Orchard Street', 'Leicester', 'NN8 5BD', '07243364547'),
(10, 'Laura', 'Castle', '12 Poppy Crescent', 'Milton Keynes', 'NN6 9BY', '07443566547'),
(11, 'Loren', 'Craig', '7 Lion Lane', 'Bedford', 'NN1 8BD', '07243567443'),
(12, 'William', 'Skywalker', '90 Appleyard Close', 'Milton Keynes', 'NN2 3GH', '07645563453'),
(13, 'Marc', 'Williamson', '32 Silver Lane', 'Leicester', 'NGB 8BH', '07638967543'),
(14, 'Percy', 'Redbourne', '78 Gold Crescent', 'Leicester', 'NN5 2BD', '07643567954'),
(15, 'Katie', 'Williams', '88 Britannia Lane', 'Milton Keynes', 'NN5 7FD', '07643554043');

-- --------------------------------------------------------

--
-- Table structure for table `client_order`
--

CREATE TABLE `client_order` (
  `client_order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `deliveryperson_id` int(11) NOT NULL,
  `daily_menu_id` int(11) NOT NULL,
  `client_order_time` datetime NOT NULL,
  `delivery_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_order`
--

INSERT INTO `client_order` (`client_order_id`, `client_id`, `deliveryperson_id`, `daily_menu_id`, `client_order_time`, `delivery_time`) VALUES
(1, 1, 1, 1, '2018-05-10 08:00:00', '2018-05-10 08:15:00'),
(2, 2, 2, 1, '2018-05-10 10:00:00', '2018-05-10 10:15:00'),
(3, 3, 3, 1, '2018-05-10 10:15:00', '2018-05-10 10:30:00'),
(4, 4, 4, 1, '2018-05-10 12:13:00', '2018-05-10 12:23:00'),
(5, 5, 5, 1, '2018-05-10 12:46:00', '2018-05-10 13:00:00'),
(6, 6, 6, 1, '2018-05-10 13:25:00', '2018-05-10 13:40:00'),
(7, 7, 7, 1, '2018-05-10 13:26:00', '2018-05-10 13:35:00'),
(8, 8, 8, 1, '2018-05-10 14:15:00', '2018-05-10 14:30:00'),
(9, 9, 5, 1, '2018-05-10 14:50:00', '2018-05-10 15:00:00'),
(10, 10, 10, 1, '2018-05-10 15:15:00', '2018-05-10 15:30:00'),
(11, 8, 12, 1, '2018-05-10 15:15:00', '2018-05-10 15:25:00'),
(12, 14, 2, 1, '2018-05-10 16:00:00', '2018-05-10 16:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `client_order_dish`
--

CREATE TABLE `client_order_dish` (
  `client_order_dish_id` int(11) NOT NULL,
  `client_order_id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_order_dish`
--

INSERT INTO `client_order_dish` (`client_order_dish_id`, `client_order_id`, `dish_id`, `quantity`) VALUES
(1, 1, 13, 2),
(2, 2, 17, 3),
(3, 3, 25, 1),
(4, 4, 3, 1),
(5, 5, 17, 1),
(6, 6, 17, 2),
(7, 7, 25, 1),
(8, 8, 3, 2),
(9, 9, 3, 1),
(10, 10, 13, 1),
(11, 11, 25, 2),
(12, 12, 1, 1),
(13, 1, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_menu`
--

CREATE TABLE `daily_menu` (
  `daily_menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_menu`
--

INSERT INTO `daily_menu` (`daily_menu_id`, `menu_name`) VALUES
(1, '2018-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `daily_menu_dish`
--

CREATE TABLE `daily_menu_dish` (
  `dish_id` int(11) NOT NULL,
  `daily_menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_menu_dish`
--

INSERT INTO `daily_menu_dish` (`dish_id`, `daily_menu_id`) VALUES
(3, 1),
(13, 1),
(17, 1),
(25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_person`
--

CREATE TABLE `delivery_person` (
  `deliveryperson_id` int(11) NOT NULL,
  `deliveryperson_forename` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryperson_surname` char(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_person`
--

INSERT INTO `delivery_person` (`deliveryperson_id`, `deliveryperson_forename`, `deliveryperson_surname`) VALUES
(1, 'Imogen', 'Taylor'),
(2, 'Lee', 'Mccormack'),
(3, 'Imogen', 'Watkins'),
(4, 'Lee', 'Mccormack'),
(5, 'Jason', 'Talbot'),
(6, 'Ben', 'Anderson'),
(7, 'Joshua', 'Cary'),
(8, 'Francesca', 'Barnet'),
(9, 'Tamsin', 'Green'),
(10, 'Han', 'Solo'),
(11, 'George', 'Lucas'),
(12, 'Lukas', 'Whitney'),
(13, 'Denzel', 'Washington'),
(14, 'Eleanor', 'Tyler'),
(15, 'Carrie', 'Gardener');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `dish_id` int(11) NOT NULL,
  `dish_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dish_price` decimal(15,2) NOT NULL,
  `dish_type` enum('dessert','main') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`dish_id`, `dish_title`, `dish_price`, `dish_type`) VALUES
(1, 'Chicken Paella', '7.20', 'main'),
(2, 'Roast Chicken and Potatoes', '5.00', 'main'),
(3, 'Chicken Paella', '7.20', 'main'),
(4, 'Roast Chicken and Potatoes', '5.00', 'main'),
(5, 'Sushi', '7.00', 'main'),
(6, 'Pastrami Sandwich', '5.00', 'main'),
(7, 'Lamb Meatballs and Spaghetti', '5.00', 'main'),
(8, 'Beef Stroganoff', '6.50', 'main'),
(9, 'Lobster and Fries', '9.00', 'main'),
(10, 'Jerk Pork and Mashed Potato', '6.45', 'main'),
(11, 'Fruit Trifle', '3.00', 'dessert'),
(12, 'Tiramasu', '4.00', 'dessert'),
(13, 'Baked Alaska', '5.00', 'dessert'),
(14, 'Mousaka', '4.00', 'main'),
(15, 'Pancakes with Cream and Fruit', '3.00', 'dessert'),
(16, 'Chicken kebab and Pitta Bread', '6.50', 'main'),
(17, 'Beef Bourguignon', '8.00', 'main'),
(18, 'Paris-Brest', '4.00', 'dessert'),
(19, 'Selection of Eclairs', '4.00', 'dessert'),
(20, 'Far Breton', '4.00', 'dessert'),
(21, 'Beef Stew', '6.00', 'main'),
(22, 'Hachis Parmentier', '5.00', 'main'),
(23, 'Chocolate and Lemon Tart', '5.00', 'dessert'),
(24, 'Creme Brulee', '4.00', 'dessert'),
(25, 'Yule Log', '5.00', 'dessert'),
(26, 'Strawberry and Vanilla Gateau Slice', '5.00', 'dessert'),
(27, 'Tarte Tatin', '5.00', 'dessert'),
(28, 'Crepes with Chocolate and Vanilla Sauce', '4.00', 'dessert');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `client_order`
--
ALTER TABLE `client_order`
  ADD PRIMARY KEY (`client_order_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `deliveryperson_id` (`deliveryperson_id`),
  ADD KEY `daily_menu_id` (`daily_menu_id`) USING BTREE;

--
-- Indexes for table `client_order_dish`
--
ALTER TABLE `client_order_dish`
  ADD PRIMARY KEY (`client_order_dish_id`),
  ADD KEY `client_order_id` (`client_order_id`),
  ADD KEY `dish_id` (`dish_id`);

--
-- Indexes for table `daily_menu`
--
ALTER TABLE `daily_menu`
  ADD PRIMARY KEY (`daily_menu_id`);

--
-- Indexes for table `daily_menu_dish`
--
ALTER TABLE `daily_menu_dish`
  ADD PRIMARY KEY (`dish_id`,`daily_menu_id`),
  ADD KEY `daily_menu_id` (`daily_menu_id`) USING BTREE;

--
-- Indexes for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD PRIMARY KEY (`deliveryperson_id`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`dish_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `client_order`
--
ALTER TABLE `client_order`
  MODIFY `client_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `client_order_dish`
--
ALTER TABLE `client_order_dish`
  MODIFY `client_order_dish_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `daily_menu`
--
ALTER TABLE `daily_menu`
  MODIFY `daily_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_person`
--
ALTER TABLE `delivery_person`
  MODIFY `deliveryperson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `dish_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_order`
--
ALTER TABLE `client_order`
  ADD CONSTRAINT `client_order_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `client_order_ibfk_2` FOREIGN KEY (`deliveryperson_id`) REFERENCES `delivery_person` (`deliveryperson_id`),
  ADD CONSTRAINT `client_order_ibfk_3` FOREIGN KEY (`daily_menu_id`) REFERENCES `daily_menu` (`daily_menu_id`);

--
-- Constraints for table `client_order_dish`
--
ALTER TABLE `client_order_dish`
  ADD CONSTRAINT `client_order_dish_ibfk_1` FOREIGN KEY (`client_order_id`) REFERENCES `client_order` (`client_order_id`),
  ADD CONSTRAINT `client_order_dish_ibfk_2` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`dish_id`);

--
-- Constraints for table `daily_menu_dish`
--
ALTER TABLE `daily_menu_dish`
  ADD CONSTRAINT `daily_menu_dish_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`dish_id`),
  ADD CONSTRAINT `daily_menu_dish_ibfk_2` FOREIGN KEY (`daily_menu_id`) REFERENCES `daily_menu` (`daily_menu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
