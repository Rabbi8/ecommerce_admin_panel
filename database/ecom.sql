-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 08:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `username`, `password`) VALUES
(1, 'Joel.McCullough33@hotmail.com', 'Agustina', 'y3zE9fDZfoUlwYQ'),
(2, 'Chelsey_Goyette70@yahoo.com', 'Jessyca', '5KSGTL3N3Rs7edr'),
(3, 'Rupert34@gmail.com', 'Carlotta', 'tD7maQ7MYz9AIOm'),
(4, 'Bethany55@gmail.com', 'Benny', 'NU1dVLg4IiIz9iN'),
(5, 'John31@yahoo.com', 'Melyssa', 'V6mHwqepxmQKgQy'),
(6, 'Roger10@hotmail.com', 'Jovanny', 'VmANhuuz9V8UNGC'),
(7, 'Rubie.Raynor6@yahoo.com', 'Lenna', 'Knpm9iiGyzL5iqk'),
(8, 'Polly_Trantow@yahoo.com', 'Olaf', 'KdldR9f6lOI6Ncz'),
(9, 'Tyrique_Kilback56@yahoo.com', 'Abbie', 'l75TzBzWsd197DZ'),
(10, 'Missouri_Wolf@yahoo.com', 'Elza', 'xAcJOX6RRQgyMFz');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`, `qty`, `price`) VALUES
(1, 29, 1, 250);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Fish', 1),
(2, 'Fruit and vegetables', 1),
(3, 'Starchy food', 0),
(4, 'Dairy', 1),
(5, 'Protein', 0),
(6, 'Fat', 1),
(7, 'Sugar', 0),
(8, 'Honey', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Meredith', 'Tomas_Veum@yahoo.com', '436.450.0848 x4655', 'Cum vero ut ad voluptatem eum architecto saepe aut assumenda.', '2022-07-15 22:33:01'),
(2, 'Eloy', 'Sim54@hotmail.com', '789.703.8296', 'Aut atque reiciendis quis a aliquid.', '2022-07-15 10:43:48'),
(3, 'Carlos', 'Mireille_Cummings64@yahoo.com', '1-283-796-9769', 'Aut dolor consectetur est eum molestias est nihil natus molestiae.', '2022-07-16 00:31:05'),
(4, 'Desmond', 'Mae.Nolan25@hotmail.com', '356.415.5507 x44056', 'Quo qui eum doloremque vel rem et.', '2022-07-15 06:14:14'),
(5, 'Issac', 'Louvenia.Hettinger@hotmail.com', '(154) 620-8471 x012', 'Molestiae rerum sed quo possimus earum non quo omnis quia.', '2022-07-15 20:22:47'),
(6, 'Maynard', 'Jolie.Gulgowski@yahoo.com', '(587) 866-2853 x7589', 'Odio facere earum architecto aspernatur qui ut sunt nesciunt adipisci.', '2022-07-16 03:56:53'),
(7, 'Aubree', 'Ladarius.Stanton@yahoo.com', '349.329.2476 x40556', 'Et facilis placeat porro dolores voluptate provident.', '2022-07-15 19:21:00'),
(8, 'Blanca', 'Donnie_Bartoletti@yahoo.com', '714-996-7163 x44382', 'Expedita voluptate dolores ipsa qui in quia sed modi exercitationem.', '2022-07-15 21:21:43'),
(9, 'Leopoldo', 'Karina.Considine61@hotmail.com', '763-019-3670 x04251', 'Optio unde nihil delectus et.', '2022-07-15 22:50:24'),
(10, 'Carlotta', 'Junius31@yahoo.com', '1-487-018-7180 x417', 'Quia occaecati fuga et in quia qui.', '2022-07-16 00:26:03'),
(11, 'Kristofer', 'Kennith.Haley95@hotmail.com', '355.458.2665 x9219', 'Aut facilis odit velit.', '2022-07-16 01:22:13'),
(12, 'Vickie', 'Toney21@hotmail.com', '(325) 249-3000 x977', 'Nostrum quo modi voluptas rem deleniti.', '2022-07-15 10:09:40'),
(13, 'Jorge', 'Chester_Wilkinson@gmail.com', '1-508-793-2808 x29535', 'Natus asperiores ratione rerum accusantium excepturi.', '2022-07-16 02:58:40'),
(14, 'Milford', 'Liliana.Miller@gmail.com', '1-906-872-7648', 'Sunt distinctio odio tempora ea laborum voluptas tenetur.', '2022-07-15 11:53:45'),
(15, 'Roma', 'Paris.Lemke82@hotmail.com', '1-813-410-8485 x52969', 'Alias vero inventore expedita quidem omnis eveniet ex.', '2022-07-15 17:00:11'),
(16, 'Sanford', 'Angelica.Ullrich35@hotmail.com', '928-015-1945 x55714', 'Et voluptatem dicta excepturi.', '2022-07-16 01:41:57'),
(17, 'Ross', 'Dominic_Miller85@yahoo.com', '1-834-237-6021 x701', 'Aliquam molestiae consequatur voluptate vel eum alias.', '2022-07-15 12:30:03'),
(18, 'Magdalena', 'Caleb_DuBuque@hotmail.com', '(825) 890-7716', 'Qui facere eligendi nobis eaque esse molestiae.', '2022-07-16 03:03:14'),
(19, 'Gwendolyn', 'Denis.Stracke78@yahoo.com', '1-149-036-0587 x772', 'Et sed non excepturi neque quam non architecto.', '2022-07-15 10:10:26'),
(20, 'Dan', 'Trisha.Welch@hotmail.com', '397-937-5614 x5580', 'Sunt ut repellat rerum numquam dolorem dolores.', '2022-07-15 11:50:57'),
(21, 'Aglae', 'Abner.Walker@gmail.com', '676-089-5010 x43600', 'Quia sed quo autem ratione harum quo qui.', '2022-07-15 14:34:44'),
(22, 'Harmon', 'Kelsi.Lockman63@yahoo.com', '172.057.2013 x95845', 'Et ut dolor magnam aliquam fugit.', '2022-07-15 22:51:53'),
(23, 'Addie', 'Itzel11@yahoo.com', '(530) 947-3400 x8432', 'Delectus error natus facilis aliquid ut est quidem.', '2022-07-15 07:35:17'),
(24, 'Jasmin', 'Maxime48@yahoo.com', '1-962-370-1227', 'Illum qui modi esse molestiae.', '2022-07-16 05:41:00'),
(25, 'Mortimer', 'Shany_Hodkiewicz@gmail.com', '393.376.8990 x694', 'Error accusantium sequi provident voluptate corrupti vel harum laudantium quia.', '2022-07-16 01:04:30'),
(26, 'Jadyn', 'Larissa24@gmail.com', '(805) 509-8991', 'Sapiente enim earum ut unde hic est sint totam.', '2022-07-15 06:24:57'),
(27, 'Zack', 'Vidal72@yahoo.com', '761.497.9533', 'Dolore consectetur voluptate et.', '2022-07-15 07:28:28'),
(28, 'Rico', 'Reanna25@gmail.com', '1-240-027-3258 x332', 'Rerum suscipit eligendi eveniet.', '2022-07-15 23:28:29'),
(29, 'Terrell', 'Loren27@hotmail.com', '1-404-342-2215 x54147', 'Deleniti quibusdam dolores.', '2022-07-16 04:22:04'),
(30, 'Gladys', 'Rosendo_OConner@hotmail.com', '547.466.4163 x6666', 'Temporibus autem asperiores aliquid.', '2022-07-16 02:19:35'),
(31, 'Arthur', 'Zander23@yahoo.com', '(942) 292-8599 x65455', 'Nesciunt dolorum vel est quibusdam tempora temporibus et voluptatem.', '2022-07-15 07:07:00'),
(32, 'Ransom', 'Leonardo95@gmail.com', '1-985-054-4312 x5828', 'Corrupti omnis ipsam reprehenderit corporis minima repellendus est.', '2022-07-16 06:02:30'),
(33, 'Davon', 'Amalia_Sporer75@gmail.com', '077.841.3763', 'Veritatis esse qui tempore porro dolorem ut et.', '2022-07-16 02:21:19'),
(34, 'Adolphus', 'Barbara_Lowe72@hotmail.com', '056-399-9275', 'Velit culpa error.', '2022-07-15 16:49:12'),
(35, 'Mckayla', 'Kelli.Gutmann@yahoo.com', '753.125.0813 x193', 'Est aliquid sint quo suscipit saepe quidem dicta corporis harum.', '2022-07-16 01:39:55'),
(36, 'Rosalyn', 'Roxanne6@gmail.com', '1-943-647-2824 x16601', 'Placeat dolor ad aut doloribus aut iure.', '2022-07-16 04:29:07'),
(37, 'Alana', 'Katlyn_Koelpin@yahoo.com', '1-985-896-4961', 'Nemo odio neque repudiandae qui aut sit.', '2022-07-16 02:33:14'),
(38, 'Lilian', 'Robb_Swaniawski99@gmail.com', '1-067-879-4051 x98632', 'Omnis ducimus cumque.', '2022-07-16 05:10:01'),
(39, 'Humberto', 'Omer_Schultz5@gmail.com', '074.891.4312', 'Eius ea sit facilis.', '2022-07-16 02:38:15'),
(40, 'Israel', 'Jarod.Heller38@gmail.com', '1-112-488-8980', 'Quam dolorum quibusdam iure ea quae rerum labore delectus eos.', '2022-07-15 11:51:30'),
(41, 'Kiley', 'Kirsten_Krajcik@gmail.com', '234-753-7820 x378', 'Nulla ut eum dolor explicabo est eum.', '2022-07-16 04:57:27'),
(42, 'Lia', 'Kristian_Pfannerstill99@yahoo.com', '(078) 264-5009 x1620', 'Omnis et molestiae.', '2022-07-15 20:34:00'),
(43, 'Sigrid', 'Cleveland_Terry60@yahoo.com', '(843) 847-1301 x993', 'Cum fugiat reprehenderit perspiciatis.', '2022-07-16 01:29:57'),
(44, 'Harmon', 'Reid_Beier29@gmail.com', '298-405-1541 x1779', 'Voluptas ad eum qui rerum culpa hic reprehenderit.', '2022-07-15 16:30:52'),
(45, 'Quinten', 'Elinore_Ullrich75@yahoo.com', '(097) 974-8610 x67262', 'Libero ut voluptas molestias consequatur.', '2022-07-15 08:23:00'),
(46, 'Katelin', 'Luisa.OConnell57@gmail.com', '015-441-1176 x560', 'Cum inventore excepturi aut debitis nesciunt corporis tenetur.', '2022-07-15 10:26:11'),
(47, 'Rosendo', 'Jailyn51@hotmail.com', '(601) 614-6111', 'Ducimus culpa dolorem ad vel.', '2022-07-15 13:13:55'),
(48, 'Lionel', 'Ebony7@gmail.com', '(291) 567-0206', 'Nisi laborum amet ut sapiente.', '2022-07-15 14:26:05'),
(49, 'Mekhi', 'Richmond.Greenfelder4@gmail.com', '(463) 361-8637 x392', 'Ut exercitationem ut soluta quo dolores quis.', '2022-07-15 20:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(9, 'AR21032910294335573', 12, 8, 1600),
(10, 'AR21032910294335573', 30, 7, 2800),
(11, 'AR21032910321713487', 12, 5, 1000),
(12, 'AR21032910321713487', 30, 7, 2800),
(13, 'AR21032910321713487', 11, 5, 3000),
(14, 'AR21032910321713487', 6, 6, 2400),
(15, 'AR21032910321713487', 2, 6, 2400),
(16, 'AR21032910321713487', 24, 10, 300),
(17, 'AR21032910321713487', 23, 10, 300),
(18, 'AR21032910321713487', 29, 5, 1250),
(19, 'AR21032910321713487', 27, 5, 9000),
(20, 'AR21032910385258725', 12, 5, 1000),
(21, 'AR21032910385258725', 30, 7, 2800),
(22, 'AR21032910385258725', 11, 5, 3000),
(23, 'AR21032910385258725', 6, 6, 2400),
(24, 'AR21032910385258725', 2, 6, 2400),
(25, 'AR21032910385258725', 24, 10, 300),
(26, 'AR21032910385258725', 23, 10, 300),
(27, 'AR21032910385258725', 29, 5, 1250),
(28, 'AR21032910385258725', 27, 5, 9000),
(29, 'AR21032910441553668', 24, 5, 150),
(30, 'AR21032910441553668', 6, 4, 1600),
(31, 'AR21032912044963222', 11, 1, 600),
(32, 'AR21032904352817627', 6, 7, 2800),
(33, 'AR21032904352817627', 11, 5, 3000),
(34, 'AR21032904352817627', 24, 6, 180),
(35, 'AR21032904352817627', 25, 5, 200),
(36, 'AR21032904522065937', 24, 4, 120),
(37, 'AR21032904522065937', 25, 4, 160),
(38, 'AR21033007412717438', 6, 3, 1200),
(39, 'AR21033007412717438', 24, 4, 120),
(40, 'AR21033007412717438', 23, 5, 150),
(41, 'AR21033007412717438', 9, 2, 1020),
(42, 'AR21033106521555484', 11, 5, 3000),
(43, 'AR21033106521555484', 24, 5, 150),
(44, 'AR21033107065919806', 6, 3, 1200),
(45, 'AR21033107065919806', 11, 3, 1800),
(46, 'AR21033107065919806', 2, 4, 1600),
(47, 'AR21033107100978080', 11, 3, 1800),
(48, 'AR21033107100978080', 9, 5, 2550),
(49, 'AR21033107120770439', 2, 2, 800),
(50, 'AR21033107203698585', 11, 4, 2400),
(51, 'AR21033107224313967', 11, 4, 2400),
(52, 'AR21033107224843355', 11, 4, 2400),
(53, 'AR21033107253120984', 11, 4, 2400),
(54, 'AR21033107273872743', 2, 2, 800),
(55, 'AR21033107273872743', 12, 1, 200),
(56, 'AR21033107281763794', 2, 2, 800),
(57, 'AR21033107281763794', 12, 1, 200),
(58, 'AR21033107290688497', 2, 2, 800),
(59, 'AR21033107290688497', 12, 1, 200),
(60, 'AR21033107321674742', 6, 1, 400),
(61, 'AR21033107433347945', 11, 3, 1800),
(62, 'AR21033107453245449', 23, 2, 60),
(63, 'AR21033103332093885', 11, 2, 1200),
(64, 'AR21033103332093885', 6, 3, 1200),
(65, 'AR21033103332093885', 12, 5, 1000),
(66, 'AR21040106055838183', 6, 4, 1600),
(67, 'AR21040106512761633', 6, 3, 1200),
(68, 'AR21040107273535793', 24, 4, 120),
(69, 'AR21040107293756780', 29, 5, 1250),
(70, 'AR21040107305644647', 9, 6, 3060),
(71, 'AR21040107492161206', 6, 6, 2400),
(72, 'AR21040107492161206', 2, 3, 1200),
(73, 'AR21040107492161206', 11, 6, 3600),
(74, 'AR21040107492161206', 28, 4, 240),
(75, 'AR21040107492161206', 12, 7, 1400),
(76, 'AR21040107492161206', 9, 6, 3060),
(77, 'AR21040107523994475', 6, 3, 1200),
(78, 'AR21040107545273505', 11, 4, 2400),
(79, 'AR21040108143316894', 24, 4, 120),
(80, 'AR21040111460021748', 6, 4, 1600),
(81, 'AR21040111463474896', 12, 10, 2000),
(82, 'AR21040111572941680', 11, 7, 4200),
(83, 'AR21040308381114824', 29, 1, 250),
(84, 'AR21040308381114824', 27, 5, 9000),
(85, 'AR21040309001459851', 6, 5, 2000),
(86, 'AR21040309001459851', 29, 8, 2000),
(87, 'AR21040309003195724', 6, 5, 2000),
(88, 'AR21040309003195724', 29, 8, 2000),
(89, 'AR21040410291481491', 24, 6, 180);

-- --------------------------------------------------------

--
-- Table structure for table `order_no`
--

CREATE TABLE `order_no` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `city` varchar(250) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(250) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `transaction_id` varchar(30) DEFAULT NULL,
  `mihpayid` varchar(30) DEFAULT NULL,
  `payu_status` varchar(30) DEFAULT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_no`
--

INSERT INTO `order_no` (`id`, `invoice_no`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `transaction_id`, `mihpayid`, `payu_status`, `added_on`) VALUES
(18, 'AR21032904352817627', 1, 'mirpur-12', 'Dhaka', 1255, 'cod', 6180, 2, 0, '', '', '', '2021-03-29 08:35:28'),
(19, 'AR21032904522065937', 41, 'à¦•à§à¦®à¦¿à¦²à§à¦²à¦¾à¥¤ à¦œà§‡à¦²à¦¾à¥¤', 'à¦•à§à¦®à¦¿à¦²à§à¦²à¦¾', 0, 'cod', 280, 2, 0, '', '', '', '2021-03-29 08:52:20'),
(6, 'AR21032909222766664', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 01:22:27'),
(7, 'AR21032909233245330', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 01:23:32'),
(8, 'AR21032909241287693', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1500, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 01:24:12'),
(9, 'AR21032910085573383', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 02:08:55'),
(10, 'AR21032910094695977', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 02:09:46'),
(11, 'AR21032910271817741', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 02:27:18'),
(12, 'AR21032910275286587', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 02:27:52'),
(13, 'AR21032910294335573', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 02:29:43'),
(14, 'AR21032910321713487', 1, 'House:19, Road:19, Block:C, Mirpur:12', 'Dhaka', 1216, 'cod', 22450, 2, 1, '', '', '', '2021-03-29 02:32:17'),
(15, 'AR21032910385258725', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 22450, 2, 3, '', '', '', '2021-03-29 02:38:52'),
(16, 'AR21032910441553668', 1, 'Flat:3rd floor(4-tola, samner site), House:19, Road:19, Block:C, Mirpur:12', 'Mirpur', 1216, 'cod', 1750, 2, 0, '', '', '', '2021-03-29 02:44:15'),
(5, 'AR21032910946959770', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 0, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 01:16:16'),
(2, 'AR210329109646959770', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 01:12:24'),
(17, 'AR21032912044963222', 1, 'Flat:3rd floor(4-tola, samner site), House:19, Road:19, Block:C, Mirpur:12', 'Mirpur', 1216, 'cod', 600, 2, 0, '', '', '', '2021-03-29 04:04:49'),
(1, 'AR210329199646959770', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1500, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 01:20:33'),
(4, 'AR210329510946959770', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 0, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 01:15:50'),
(3, 'AR210329910946959770', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 4400, 2, 0, '', '', '', '2021-03-29 01:13:52'),
(20, 'AR21033007412717438', 1, 'à¦–à¦¾à¦·-à¦ªà¦¾à¦‡à¦•à¦¾à¦‡à¦²', 'à¦¨à¦¾à¦—à¦°à¦ªà§à¦° ', 0, 'cod', 2490, 2, 0, '', '', '', '2021-03-30 11:41:27'),
(27, 'AR21033103332093885', 1, 'Flat:3rd floor(4-tola, samner site), House:19, Road:19, Block:C, Mirpur:12', 'dhaka', 1216, 'cod', 3400, 2, 0, '', '', '', '2021-03-31 07:33:20'),
(21, 'AR21033106521555484', 1, 'Khash_paikail. south_site', 'Dhaka', 1937, 'cod', 3150, 2, 0, '', '', '', '2021-03-31 10:52:15'),
(22, 'AR21033107065919806', 1, 'Khash_paikail. south_site', 'Tangail', 1200, 'cod', 4600, 2, 0, '', '', '', '2021-03-31 11:06:59'),
(23, 'AR21033107253120984', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 2400, 2, 0, '', '', '', '2021-03-31 11:25:31'),
(24, 'AR21033107290688497', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'cod', 1000, 0, 0, NULL, NULL, NULL, '2021-03-31 11:29:06'),
(25, 'AR21033107321674742', 1, 'amarica', 'Mirpur', 1216, 'cod', 400, 2, 0, '', '', '', '2021-03-31 11:32:16'),
(26, 'AR21033107433347945', 1, 'House:19, Road:19, Block:C, Mirpur:12', 'Dhaka', 1216, 'cod', 1800, 2, 3, '', '', '', '2021-03-31 11:43:33'),
(28, 'AR21040106055838183', 1, 'House:19, Road:19, Block:C, Mirpur:12', 'Dhaka', 1216, 'cod', 1600, 2, 0, '', '', '', '2021-04-01 10:05:58'),
(29, 'AR21040106512761633', 1, 'Flat:3rd floor(4-tola, samner site), House:19, Road:19, Block:C, Mirpur:12', 'Mirpur', 1216, 'payu', 1200, 2, 0, '', '', '', '2021-04-01 10:51:27'),
(30, 'AR21040107273535793', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'payu', 120, 0, 0, 'SSLCZ_TEST_606559c71ed9b', '', '', '2021-04-01 11:27:35'),
(31, 'AR21040107293756780', 1, 'House:19, Road:19, Block:C, Mirpur:12, Dhaka', 'Dhaka', 1216, 'payu', 1250, 0, 4, 'SSLCZ_TEST_60655a41ae1d2', '', '', '2021-04-01 11:29:37'),
(32, 'AR21040107305644647', 1, 'House:19, Road:19, Block:C, Mirpur:12', 'Dhaka', 1216, 'payu', 3060, 1, 1, 'SSLCZ_TEST_60655a9001e46', '', '', '2021-04-01 11:30:56'),
(33, 'AR21040107492161206', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'payu', 11900, 0, 0, 'SSLCZ_TEST_60655ee1bfd40', '', '', '2021-04-01 11:49:21'),
(34, 'AR21040107523994475', 1, 'House:19, Road:19, Block:C, Mirpur:12, Dhaka', 'Dhaka', 1216, 'payu', 1200, 1, 1, 'SSLCZ_TEST_60655fa71f8ff', '', '', '2021-04-01 11:52:39'),
(35, 'AR21040107545273505', 1, 'House:19, Road:19, Block:C, Mirpur:12', 'Dhaka', 1216, 'payu', 2400, 1, 1, 'SSLCZ_TEST_6065602cd260c', '', '', '2021-04-01 11:54:52'),
(36, 'AR21040108143316894', 1, 'House:19, Road:19, Block:C, Mirpur:12', 'Mirpur', 1216, 'sslcommerz', 120, 1, 1, 'SSLCZ_TEST_606564c991fc1', '', '', '2021-04-01 12:14:33'),
(37, 'AR21040111460021748', 1, 'Flat:3rd floor(4-tola, samner site), House:19, Road:19, Block:C, Mirpur:12', 'Mirpur', 1216, 'cod', 1600, 0, 0, '', '', '', '2021-04-01 03:46:00'),
(38, 'AR21040111463474896', 1, 'Flat:3rd floor(4-tola, samner site), House:19, Road:19, Block:C, Mirpur:12', 'Mirpur', 1216, 'sslcommerz', 2000, 1, 1, 'SSLCZ_TEST_6065967a6a17d', '', '', '2021-04-01 03:46:34'),
(39, 'AR21040111572941680', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'sslcommerz', 4200, 0, 2, 'SSLCZ_TEST_6065990920658', '', '', '2021-04-01 03:57:29'),
(40, 'AR21040111575646298', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'sslcommerz', 0, 0, 0, 'SSLCZ_TEST_60659924689b3', '', '', '2021-04-01 03:57:56'),
(41, 'AR21040308381114824', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'sslcommerz', 9250, 0, 0, 'SSLCZ_TEST_60680d53df332', '', '', '2021-04-03 12:38:11'),
(42, 'AR21040308381390883', 1, 'Mirpur-10,Dhaka, Sundarban courier service', 'Dhaka', 1216, 'sslcommerz', 0, 0, 0, 'SSLCZ_TEST_60680d55ee382', '', '', '2021-04-03 12:38:13'),
(43, 'AR21040309001459851', 1, 'Flat:3rd floor(4-tola, samner site), House:19, Road:19, Block:C, Mirpur:12', 'Mirpur', 1216, 'sslcommerz', 4000, 0, 0, 'SSLCZ_TEST_6068127eb7f0e', '', '', '2021-04-03 01:00:14'),
(44, 'AR21040309003195724', 1, 'Flat:3rd floor(4-tola, samner site), House:19, Road:19, Block:C, Mirpur:12', 'Mirpur', 1216, 'sslcommerz', 4000, 1, 5, 'SSLCZ_TEST_6068128fb2123', '', '', '2021-04-03 01:00:31'),
(45, 'AR21040410291481491', 1, 'House:19, Road:19, Block:C, Mirpur:12', 'Mirpur', 1216, 'sslcommerz', 180, 0, 4, 'SSLCZ_TEST_606978da08e35', '', '', '2021-04-04 02:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `status_name`) VALUES
(0, 'pending'),
(1, 'processing'),
(2, 'ready to ship'),
(3, 'shipped'),
(4, 'complete'),
(5, 'canceled');

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `payment_status_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`payment_status_id`, `payment_status`) VALUES
(0, 'unpaid'),
(1, 'paid'),
(2, 'failed'),
(3, 'cancelled'),
(4, 'refunded');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_description`, `description`, `best_seller`, `meta_title`, `meta_description`, `meta_keyword`, `status`) VALUES
(2, 2, 'Beef', 580, 400, 1, '104336906_fresh-produce6.jpg', 'We are get beef from cow animal. The beef is very delicious food. we love \"', 'Beef is the meat of cattle (Bos taurus).\r\n\r\nIt is categorized as red meat ï¿½ a term used for the meat of mammals, which contains higher amounts of iron than chicken or fish.\r\n\r\nUsually eaten as roasts, ribs, or steaks, beef is also commonly ground or minced. Patties of ground beef are often used in hamburgers.\r\n\r\nProcessed beef products include corned beef, beef jerky, and sausages.\r\n\r\nFresh, lean beef is rich in various vitamins and minerals, especially iron and zinc. Therefore, moderate intake of beef can be recommended as part of a healthy diet (1Trusted Source).\r\n\r\nThis article tells you everything you need to know about beef.', 0, '', '', '', 1),
(3, 3, 'Rupchanda Oil', 680, 600, 1, '109824690_beauty&hygiene5.jpg', 'Exploring Supply Chain for Rupchanda Soybean Oil\"', 'We are very pleased to submit this term paper on ï¿½Exploring Supply Chain for Rupchanda Soyabean oilï¿½ which is done according to the given instruction. We are honored to prepare this term paper under your guidance since it gave us the opportunity to know the overall process of supply chain management.\r\n\r\nWe tried our level best to accumulate the information for you as comprehensively as possible. We will be obliged to provide further clarification on this report whenever necessary.\r\n\r\nFresh, lean beef is rich in various vitamins and minerals, especially iron and zinc. Therefore, moderate intake of beef can be recommended as part of a healthy diet (1Trusted Source).\r\n\r\nThis article tells you everything you need to know about beef.', 0, '', '', '', 1),
(4, 4, 'Baby dayaper', 1200, 510, 1, '104161634_dairy1.jpg', 'Huggies Dry Baby Belt Diaper L 9-14 kg\"', 'Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.\r\n\r\nFresh, lean beef is rich in various vitamins and minerals, especially iron and zinc. Therefore, moderate intake of beef can be recommended as part of a Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.healthy diet (1Trusted Source).\r\n\r\nThis article tells you everything you need to know about beef.', 0, '', '', '', 1),
(6, 2, 'Beef', 580, 400, 1, '101273563_cooking-oil&ghee6.jpg', 'We are get beef from cow animal. The beef is very delicious food. we love \"', 'Beef is the meat of cattle (Bos taurus).\r\n\r\nIt is categorized as red meat ï¿½ a term used for the meat of mammals, which contains higher amounts of iron than chicken or fish.\r\n\r\nUsually eaten as roasts, ribs, or steaks, beef is also commonly ground or minced. Patties of ground beef are often used in hamburgers.\r\n\r\nProcessed beef products include corned beef, beef jerky, and sausages.\r\n\r\nFresh, lean beef is rich in various vitamins and minerals, especially iron and zinc. Therefore, moderate intake of beef can be recommended as part of a healthy diet (1Trusted Source).\r\n\r\nThis article tells you everything you need to know about beef.', 1, '', '', '', 1),
(8, 4, 'Baby dayaper', 1200, 510, 1, '102513194_daily-essentials1.jpg', 'Huggies Dry Baby Belt Diaper L 9-14 kg\"', 'Huggies Dry Baby Diaper is the softest\r\n\r\n diaper pant!\r\n\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.\r\n\r\nFresh, lean beef is rich in various vitamins and minerals, especially iron and zinc. Therefore, moderate intake of beef can be recommended as part of a Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.healthy diet (1Trusted Source).\r\n\r\nThis article tells you everything you need to know about beef.', 0, '', '', '', 1),
(9, 4, 'Baby dayaper', 1200, 510, 1, '100120204_dairy1.jpg', 'Huggies Dry Baby Belt Diaper L 9-14 kg\"', 'Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.\r\n\r\nFresh, lean beef is rich in various vitamins and minerals, especially iron and zinc. Therefore, moderate intake of beef can be recommended as part of a Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.Huggies Dry Baby Diaper is the softest diaper pant!\r\n\r\nYour baby\'s skin is delicate and that\'s why it needs extra care. Ordinary diaper-pants keep your baby dry but they may not be gentle on your baby\'s fragile skin! Hence we have made a diaper pant with a \"Soft-Hug Design\" which is gentle on baby\'s delicate skin.healthy diet (1Trusted Source).\r\n\r\nThis article tells you everything you need to know about beef.', 0, '', '', '', 1),
(11, 2, 'Mutton', 750, 600, 1, '108075304_bakery&snacks6.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, co', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, '', '', '', 1),
(12, 3, 'Nido fortigrow', 270, 200, 1, '10949403864_beauty&hygiene2.jpg', 'Exploring Supply Chain for Rupchanda Soybean Oil\"\"\"\"', 'We are very pleased to submit this term paper on ï¿½Exploring Supply Chain for Rupchanda Soyabean oilï¿½ which is done according to the given instruction. We are honored to prepare this term paper under your guidance since it gave us the opportunity to know the overall process of supply chain management.\r\n\r\nWe tried our level best to accumulate the information for you as comprehensively as possible. We will be obliged to provide further clarification on this report whenever necessary.\r\n\r\nFresh, lean beef is rich in various vitamins and minerals, especially iron and zinc. Therefore, moderate intake of beef can be recommended as part of a healthy diet (1Trusted Source).\r\n\r\nThis article tells you everything you need to know about beef.', 0, '', '', '', 1),
(14, 11, 'Jackfruit', 80, 50, 100, '108424342_bakery&snacks5.jpg', 'ddd\"\"\"', 'ddd', 0, 'hello', 'ami', 'food', 1),
(23, 3, 'Carot', 22, 30, 5, '110999928_bakery&snacks4.jpg', '33\"\"\"\"\"\"\"', '66', 0, '', '', '', 1),
(24, 3, 'chilli', 50, 30, 25, '110980591_bakery&snacks3.jpg', 'dd\"\"\"\"\"\"\"\"\"\"', 'eee', 0, '', '', '', 1),
(25, 4, 'Turmeric', 50, 40, 50, '10200267943_grocery6.jpg', 'd\"\"\"\"\"\"\"\"\"', 'dd', 0, '', '', '', 1),
(27, 6, 'cumin', 2000, 1800, 5, '10086846059_grocery3.jpg', 'ddd\"\"\"\"\"\"\"\"\"\"\"', 'ddd', 0, '', '', '', 1),
(28, 4, 'Eggplant', 50, 60, 20, '10236486759_cooking-oil&ghee5.jpg', 'ddd\"\"\"', 'ddd', 1, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `p_sub_categories_id` int(11) NOT NULL,
  `f_categories_id` int(11) NOT NULL,
  `p_sub_categories_name` varchar(11) NOT NULL,
  `sub_categories_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`p_sub_categories_id`, `f_categories_id`, `p_sub_categories_name`, `sub_categories_status`) VALUES
(1, 1, 'bajaj', 1),
(2, 2, 'realme', 1),
(3, 1, 'yamaha', 1),
(5, 2, 'walton', 1),
(7, 5, 'honda', 1),
(8, 6, 'xblade', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `unique_id`) VALUES
(168, '1'),
(169, '1'),
(170, '1'),
(171, '1'),
(172, '1'),
(173, '1'),
(174, '1'),
(175, '1'),
(176, '1'),
(177, '1'),
(178, '1'),
(179, '1'),
(180, '1'),
(181, '1'),
(182, '1'),
(183, '1'),
(184, '1'),
(185, '1'),
(186, '1'),
(187, '1'),
(188, '1'),
(189, '1'),
(190, '1'),
(191, '1'),
(192, '1'),
(193, '1'),
(194, '1'),
(195, '1'),
(196, '1'),
(197, '1'),
(198, '1'),
(199, '1'),
(200, '1'),
(201, '1'),
(202, '1'),
(203, '1'),
(204, '1'),
(205, '1'),
(206, '1'),
(207, '1'),
(208, '1'),
(209, '1'),
(210, '1'),
(211, '1'),
(212, '1'),
(213, '1'),
(214, '1'),
(215, '1'),
(216, '1'),
(217, '1'),
(218, '1'),
(219, '1'),
(220, '1'),
(221, '1'),
(222, '1'),
(223, '1'),
(224, '1'),
(225, '1'),
(226, '1'),
(227, '1'),
(228, '1'),
(229, '1'),
(230, '1'),
(231, '1'),
(232, '1'),
(233, '1'),
(234, '1'),
(235, '1'),
(236, '1'),
(237, '1'),
(238, '1'),
(239, '1'),
(240, '1'),
(241, '1'),
(242, '1'),
(243, '1'),
(244, '1'),
(245, '1'),
(246, '1'),
(247, '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `password`, `added_on`) VALUES
(1, 'Estrella', '1-322-776-9231 x97594', 'Alize3@hotmail.com', 'K8r7rq78F3rBfjK', '2022-07-15 19:22:21'),
(2, 'Brent', '446.484.0421 x1510', 'Rozella.Schuster88@gmail.com', 'UioT11SOqEHyhhr', '2022-07-15 13:05:34'),
(3, 'Ozella', '1-034-156-5663', 'Leo.Morar93@gmail.com', '2jcmYD9tTWiyehI', '2022-07-16 02:36:36'),
(4, 'Marcellus', '789-910-1289', 'Branson18@yahoo.com', 'XZlABJPkV8epnxj', '2022-07-15 21:04:21'),
(5, 'Willy', '775.488.1860', 'Bethany14@hotmail.com', '4Xl_rgJCiG0cItG', '2022-07-15 09:07:06'),
(6, 'Gordon', '(552) 883-8471', 'Dannie26@gmail.com', 'DVQ7p7rlH1UnVCG', '2022-07-15 18:30:38'),
(7, 'Frankie', '(269) 737-1759', 'Mariah.Davis59@gmail.com', 'M2nq86QWWv9nc22', '2022-07-15 10:21:56'),
(8, 'Lucinda', '(193) 454-1055 x51278', 'Alexane98@yahoo.com', '_JjntHKP3IkpbNt', '2022-07-15 08:22:12'),
(9, 'Ansel', '175.967.4880', 'Rachael77@gmail.com', 'trS9phyZR5r54Oz', '2022-07-15 22:37:46'),
(10, 'Marian', '1-588-977-0657 x5231', 'Virginie_Dach2@hotmail.com', 'L8PM5wz7cW2kErB', '2022-07-16 04:33:06'),
(11, 'Angelita', '1-194-644-7164', 'Peter_Gaylord@hotmail.com', 'mWicT4GDTxARyq6', '2022-07-15 08:40:57'),
(12, 'Jaquelin', '(404) 495-6424', 'Gino.West80@hotmail.com', '8iHJmaCKcDUz1u3', '2022-07-15 07:47:08'),
(13, 'Hilma', '909-724-0481', 'Preston.Emmerich2@yahoo.com', 'iZpR7uPxvgOjY3C', '2022-07-15 14:25:42'),
(14, 'Camylle', '1-322-252-1505', 'Beverly73@gmail.com', 'EQ5hLAHLGBMk_eB', '2022-07-15 23:33:20'),
(15, 'Dakota', '029.964.4137 x323', 'Wilton88@hotmail.com', 'VndTBb49AraM3Tb', '2022-07-15 16:45:23'),
(16, 'Douglas', '1-813-637-9549 x901', 'Kaleigh57@yahoo.com', '4NOooNzF74VGWFY', '2022-07-15 20:55:34'),
(17, 'Kenya', '(446) 717-3473 x02674', 'Anais_Kuvalis97@yahoo.com', '7TTU5ZIl8ylL4OI', '2022-07-15 14:51:35'),
(18, 'Laverne', '095-943-7126 x45660', 'Jabari.Heidenreich@yahoo.com', 'gUIsze939yAJSr1', '2022-07-16 01:08:48'),
(19, 'Crystal', '619.517.6504 x36361', 'Meagan_Raynor10@gmail.com', 'RXBDGAH6TvD5DdR', '2022-07-15 14:11:24'),
(20, 'Velma', '(026) 758-1914 x81644', 'Maryam_Kuvalis66@yahoo.com', 'HMSO9Bo3eCMeGw8', '2022-07-15 10:37:00'),
(21, 'Ollie', '1-771-564-8435 x8391', 'Lacey38@gmail.com', 'd5iigh0J14oMm3m', '2022-07-15 08:56:00'),
(22, 'Guy', '561.529.2269 x722', 'Hillard79@gmail.com', 'z8DXUlJrupyOnnK', '2022-07-16 00:09:34'),
(23, 'Torey', '1-769-166-4865', 'Allie.Stoltenberg@yahoo.com', 'OVBTwlr9teabdY4', '2022-07-15 22:32:12'),
(24, 'Parker', '946.657.1355 x003', 'Kiara46@hotmail.com', 'e0CZz8rfilkyv3C', '2022-07-16 04:08:55'),
(25, 'Brayan', '670.208.3588', 'Thea56@hotmail.com', 'EOxxdgLzomfRgr7', '2022-07-15 06:33:54'),
(26, 'Rick', '556.158.8903 x4070', 'Leanna_Considine@gmail.com', 'EU7rs01xLaSCFY5', '2022-07-16 04:24:36'),
(27, 'Antonietta', '(835) 852-1221', 'Gia_Kutch0@hotmail.com', 'PcZHB3AAxVk25tp', '2022-07-16 01:23:22'),
(28, 'Lillian', '(917) 337-5752 x787', 'Sigrid_Christiansen@hotmail.com', 'SZjWArzBGGvlx8D', '2022-07-16 02:42:39'),
(29, 'Roxanne', '(410) 432-9040 x6800', 'Jaqueline56@yahoo.com', 'uIvmIvhHBT1uNYe', '2022-07-15 22:12:17'),
(30, 'Marlee', '(009) 500-7909 x1495', 'Florine_Turcotte26@gmail.com', 'Al6Ix_bXfWk0obM', '2022-07-15 18:38:53'),
(31, 'Easton', '(537) 760-1270 x829', 'Kelvin65@yahoo.com', 'rS94vxfX1jRzlRf', '2022-07-15 22:58:38'),
(32, 'Richie', '054-613-3705', 'Noel_Carroll@gmail.com', 'ik92U1WxCWTg6KT', '2022-07-16 04:08:14'),
(33, 'Micaela', '556.831.5465 x50202', 'Kacey_Wilderman@yahoo.com', 'NRVyqztc6uF33O7', '2022-07-15 16:08:49'),
(34, 'Darion', '594-623-8309', 'Brent_Kub@yahoo.com', 'Gg007czPQhxixxI', '2022-07-15 19:46:15'),
(35, 'Lou', '362.958.6090', 'Queenie.Baumbach@hotmail.com', '7BOecmHrlKZeqHt', '2022-07-15 21:30:42'),
(36, 'Annalise', '1-245-685-8208 x39671', 'Demetris_Welch14@hotmail.com', 'L4gB7CNS0yCNoBe', '2022-07-15 18:42:11'),
(37, 'Keenan', '(053) 632-1536', 'Rosemary46@yahoo.com', 'a6VCxyoZcfApHD9', '2022-07-15 11:03:03'),
(38, 'Terence', '(050) 912-0776', 'Clarabelle.Bogisich@gmail.com', 'y_O1olgK9iSAgHb', '2022-07-15 08:27:49'),
(39, 'Phyllis', '1-161-218-1065', 'Aurelia_Klein64@yahoo.com', '8ndiHtdeYBUQiVJ', '2022-07-15 23:17:17'),
(40, 'Dudley', '709.635.7512 x45625', 'Jayden.Ruecker@yahoo.com', 'xA7p39mlYCACZqq', '2022-07-16 04:21:15'),
(41, 'Jared', '1-839-145-1489 x045', 'Doug.Brown@yahoo.com', 'n2ShnIixZTxKlrC', '2022-07-15 23:49:00'),
(42, 'Edmund', '212-553-1437 x8430', 'Francis17@hotmail.com', '_1FHuoOApw75Au3', '2022-07-15 14:08:26'),
(43, 'Hannah', '1-640-844-3626 x4068', 'Bridgette_Weimann22@yahoo.com', '3lmwY5EJxqw1_K7', '2022-07-15 13:54:07'),
(44, 'Whitney', '260.214.8126', 'Milan40@hotmail.com', 'eIgNFMngnPotNiJ', '2022-07-16 01:15:12'),
(45, 'Lilly', '010.060.9515', 'Leta56@hotmail.com', '5Eqj6Ng0U6Py1HS', '2022-07-16 03:25:58'),
(46, 'Aiden', '1-073-112-4843 x2111', 'Marquis49@gmail.com', 'pJcx6bZGZ457zXj', '2022-07-16 02:59:56'),
(47, 'Jefferey', '(477) 987-9430', 'Lauretta_Huel45@hotmail.com', 'EhMKQntKBaSTngm', '2022-07-15 19:18:43'),
(48, 'Elyssa', '(738) 143-2994 x6764', 'Ethel_Franecki9@yahoo.com', 'MM5X9Z7a8kjG3Ub', '2022-07-15 21:41:44'),
(49, 'Bettie', '085-043-6301 x18704', 'Florida72@gmail.com', '4_zHJ45W4DUHdpW', '2022-07-15 16:13:38'),
(50, 'Amparo', '563.903.1670 x957', 'Maiya.Hackett76@hotmail.com', 'xpVFTJ6K04KoGiC', '2022-07-16 05:40:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_no`
--
ALTER TABLE `order_no`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`payment_status_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`p_sub_categories_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
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
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `payment_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `p_sub_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
