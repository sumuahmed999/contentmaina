-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 25, 2023 at 08:23 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `post` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(34, 'Sports', 0),
(31, 'Entertainment', 1),
(32, 'Politics', 1),
(33, 'Health', 0),
(36, 'Technology', 2),
(37, 'Bussiness', 1),
(38, 'Science', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int NOT NULL,
  `post_img` varchar(100) NOT NULL,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(41, 'New Salman Post', '                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris feugiat mattis nisi tristique feugiat. Integer dictum vitae massa eu pulvinar. Aenean euismod sagittis diam in mattis. Pellentesque massa magna, imperdiet a ante non, vulputate blandit neque. Ut eu ipsum dui. Mauris imperdiet eros ac arcu egestas volutpat. Aenean nec urna feugiat, varius elit ut, bibendum velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus placerat sodales felis at interdum. Duis dui lorem, luctus nec faucibus ut, sagittis a tortor.                                ', '32', '21 Jan, 2020', 30, '1690225695-pngegg.png'),
(43, 'Elon Musk Says He Intends to Rebrand Twitter, Blue Bird Logo to Be Replaced by an X.', 'Twitter owner Elon Musk on Sunday signalled he would do more to take the social media company in a new direction with a rebranding that will replace its well-known blue bird logo with an X after acknowledging advertisers have been slow to return.\r\n\r\nThe change, which was not evident on the website on Sunday evening, followed Musk\'s recent admission that advertising revenue remains nearly half of what it once was. And Twitter\'s cash flow has been negative as a result of that and its heavy debt load.\r\n\r\nMike Proulx, research director at Forrester, said on Sunday that the move would further alienate Twitter\'s original, and once fiercely loyal, user base.\r\n\r\n\"On the one hand, you can make the argument he would be getting rid of an iconic brand. On the other hand, he is signalling it is a new day for what was once Twitter and that the company is heading in a different direction with a different user base.\"', '31', '24 Jul, 2023', 43, '1690217792-x logo.png'),
(44, 'Apple iPhone 14 available at Rs 27,399 on Flipkart after Rs 42,600 discount, check details', '                                        Apple iPhone 14 will soon be replaced by the Apple iPhone 15 and ahead of the launch of the upcoming Apple iPhone series, the Apple iPhone 14 is available at a massive discount on Flipkart. Apple iPhone 14 is currently available at just Rs 27,399 in a Flipkart sale after a Rs 42,600 off. Apple iPhone 14 is currently listed at Rs 69,999 with Rs 9,901 off from the official store price. In addition to this, buyers can get Rs 4000 off on HDFC Bank credit card and debit card EMI transactions. This brings the price of the phone down to Rs 65,999. Apart from this, Flipkart is offering up to Rs 38,600 off in exchange for your old smartphone. This means after all bank offers and discounts, Apple iPhone 14 is available at Rs 27,399 on Flipkart after a Rs 42,600 discount.                                ', '36', '24 Jul, 2023', 43, '1690218431-cdn_dnaindia_com-2600638-apple-iphone-14.jpg'),
(45, 'Farhan Akhtar \'says it with OREO\' in new generative-AI campaign', 'OREO has partnered with Farhan Akhtar and cutting-edge AI text and voice engines for a new campaign ‘Say It With Oreo’, which has been crafted to bring alive OREO’s brand platform of ‘Stay Playful.\'\r\n\r\nOREO has introduced special edition packs containing cookies embossed with the letters of the English alphabet. Each pack also comes with a QR code which, once scanned, will redirect the consumer to a microsite www.sayitwithoreo.in where users can share the awkward situation they are in and get a customized audio message featuring a fun and playful answer crafted by Farhan Akhtar (aka Artificial Intelligence in the back end).', '36', '24 Jul, 2023', 41, '1690218524-exchange4media_gumlet_io-128723-farhan.jpg'),
(46, 'Reliance Industries Q1 Review: Oil-To-Chemicals Demand To Improve, Margins Stay A Concern, Say Analy', 'Reliance Industries Ltd.\'s full-year growth will be aided by higher demand for its petrochemical, and oil and gas segments even as the company missed first-quarter earnings estimates, dragged by the oil-to-chemicals segment, according to analysts. Margins, analysts said, could remain constrained as petrochemical supplies from China rise. ADVERTISEMENT Voluntary production cuts by OPEC-plus coun\r\n\r\nRead more at: https://www.bqprime.com/business/reliance-industries-q1-review-oil-to-chemicals-demand-to-improve-margins-stay-a-concern-say-analysts', '37', '24 Jul, 2023', 41, '1690225316-reliance-industries-5-e1690169214787.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'Content Mania', 'logo.jpg', '© Copyright 2023 | Content Mania | Powered by Sumu Ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(30, 'Salman', 'Khan', 'salman', '03346657feea0490a4d4f677faa0583d', 0),
(27, 'Yahoo', 'Baba', 'yahoobaba', '21232f297a57a5a743894a0e4a801fc3', 1),
(31, 'Anil ', 'Kapoor', 'anil', '71b9b5bc1094ee6eaeae8253e787d654', 0),
(32, 'Madhuri', 'Dixit', 'madhuri', '7ebc2c8aa51f075ccc653a0f8e86fbb4', 0),
(33, 'Amir', 'Khan', 'amir', '63eefbd45d89e8c91f24b609f7539942', 1),
(34, 'Shahid', 'Kapoor', 'shahid', 'f3224d90c778d5e456b49c75f85dd668', 0),
(35, 'Chris', 'Hemsworth', 'thor123', 'f19e1368ef58fde93d78ba396f9046e3', 0),
(41, 'plabon', 'nath', 'plabon', 'ed1ea49521949d93b1c42c3eeef44c46', 0),
(39, 'Sumu', 'Ahmed', 'sumu', '82ea74437f7ba3a058a0e142ecce8990', 1),
(40, 'Sumu', 'Ahmed', 'Sumu Ahmed', '21232f297a57a5a743894a0e4a801fc3', 1),
(42, 'sdfdsf', 'sdfdsff', 'sdfsdf', 'd4b2758da0205c1e0aa9512cd188002a', 0),
(43, 'papori', 'devi', 'papori', '3f7156b19a17f6de96a62027a7a6b4b9', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
