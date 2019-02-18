-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2019 at 04:01 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(9, 'java'),
(11, 'PHP'),
(20, 'Django'),
(23, 'HTML'),
(26, 'JS'),
(30, 'Python');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(233) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(255) NOT NULL,
  `post_status` varchar(255) NOT NULL,
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(9, 9, '  hello2  ', ' omarfaruk ', '', '2018-09-12', 'Screenshot (15).png', '<p><strong>the form of web services</strong> -- now commonly known as cloud <strong>computing. One of the key</strong> benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for <i>and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in th</i>e cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', '  java, php,, django  ', 1, 'draft', 10),
(10, 9, '  hello2  ', ' omarfaruk ', '', '2018-09-12', 'Screenshot (25).png', '<p>Watch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From Geethaarts</p>', '  music, song  ', 1, 'published', 10),
(13, 9, 'Django', 'omar', '', '2018-09-11', 'pic7.png', '<p>In 2006, Amazon Web Services (AWS) began offering IT infrastructure services to businesses in the form of web services -- now commonly known as cloud computing. One of the key benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in the cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', '   java, php,, django   ', 5, 'published', 7),
(14, 9, ' hello2 ', 'omarfaruk', '', '2018-09-11', 'Screenshot (15).png', '<p><strong>the form of web services</strong> -- now commonly known as cloud <strong>computing. One of the key</strong> benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for <i>and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in th</i>e cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', ' java, php,, django ', 1, 'published', 2),
(15, 9, 'hello2', ' faruk ', '', '2019-02-18', 'pic2.jpg', '<p>Watch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From Geethaarts</p>', 'music, song', 0, 'published', 6),
(17, 20, 'Django', 'omarfaruk', '', '2018-09-11', 'pic7.png', 'In 2006, Amazon Web Services (AWS) began offering IT infrastructure services to businesses in the form of web services -- now commonly known as cloud computing. One of the key benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in the cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:', 'java, php,, django', 5, 'published', 2),
(19, 9, 'hello2', 'faruk', '', '2018-09-11', 'Screenshot (15).png', '<p><strong>the form of web services</strong> -- now commonly known as cloud <strong>computing. One of the key</strong> benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for <i>and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in th</i>e cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', '    java, php,, django    ', 1, 'draft', 2),
(20, 9, ' hello2 ', 'omarfaruk', '', '2018-09-11', 'pic2.jpg', '<p>Watch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From Geethaarts</p>', ' music, song ', 0, 'draft', 1),
(23, 20, 'Django', 'omarfaruk', '', '2018-09-11', 'pic7.png', 'In 2006, Amazon Web Services (AWS) began offering IT infrastructure services to businesses in the form of web services -- now commonly known as cloud computing. One of the key benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in the cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:', 'java, php,, django', 5, 'published', 2),
(24, 9, ' hello2 ', 'omarfaruk', '', '2018-09-11', 'Screenshot (15).png', '<p><strong>the form of web services</strong> -- now commonly known as cloud <strong>computing. One of the key</strong> benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for <i>and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in th</i>e cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', ' java, php,, django ', 1, 'draft', 0),
(26, 20, 'Django', 'omarfaruk', '', '2018-09-14', 'pic7.png', 'In 2006, Amazon Web Services (AWS) began offering IT infrastructure services to businesses in the form of web services -- now commonly known as cloud computing. One of the key benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in the cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:', 'java, php,, django', 5, 'draft', 0),
(27, 9, '  hello2  ', ' omarfaruk ', '', '2018-09-14', 'Screenshot (15).png', '<p><strong>the form of web services</strong> -- now commonly known as cloud <strong>computing. One of the key</strong> benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for <i>and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in th</i>e cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', '  java, php,, django  ', 1, 'draft', 0),
(28, 20, 'Django', 'omarfaruk', '', '2018-09-15', 'pic7.png', 'In 2006, Amazon Web Services (AWS) began offering IT infrastructure services to businesses in the form of web services -- now commonly known as cloud computing. One of the key benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in the cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:', 'java, php,, django', 5, 'draft', 0),
(29, 9, '  hello2  ', ' omarfaruk ', '', '2018-09-15', 'Screenshot (15).png', '<p><strong>the form of web services</strong> -- now commonly known as cloud <strong>computing. One of the key</strong> benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for <i>and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in th</i>e cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', '  java, php,, django  ', 1, 'draft', 0),
(30, 9, '  hello2  ', ' omarfaruk ', '', '2018-09-15', 'Screenshot (25).png', '<p>Watch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From Geethaarts</p>', '  music, song  ', 1, 'published', 0),
(31, 9, 'Django', 'omar', '', '2018-09-15', 'pic7.png', '<p>In 2006, Amazon Web Services (AWS) began offering IT infrastructure services to businesses in the form of web services -- now commonly known as cloud computing. One of the key benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in the cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', '  java, php,, django  ', 5, 'published', 0),
(32, 9, 'Django', 'omar', '', '2018-09-15', 'pic7.png', '<p>In 2006, Amazon Web Services (AWS) began offering IT infrastructure services to businesses in the form of web services -- now commonly known as cloud computing. One of the key benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in the cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', '   java, php,, django   ', 5, 'published', 0),
(33, 9, ' hello2 ', 'omarfaruk', '', '2018-09-15', 'Screenshot (15).png', '<p><strong>the form of web services</strong> -- now commonly known as cloud <strong>computing. One of the key</strong> benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for <i>and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in th</i>e cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', ' java, php,, django ', 1, 'published', 0),
(34, 9, ' hello2 ', ' faruk ', '', '2018-09-15', 'pic2.jpg', '<p>Watch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From Geethaarts</p>', ' music, song ', 0, 'published', 0),
(36, 9, 'hello2', 'faruk', '', '2018-09-15', 'Screenshot (15).png', '<p><strong>the form of web services</strong> -- now commonly known as cloud <strong>computing. One of the key</strong> benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for <i>and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in th</i>e cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', '    java, php,, django    ', 1, 'draft', 0),
(37, 9, ' hello2 ', 'omarfaruk', '', '2018-09-15', 'pic2.jpg', '<p>Watch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From GeethaartsWatch Telusa Telusa Full Video Song from Sarrainodu Telugu movie starring Allu Arjun , Rakul Preet, Catherine Tresa Directed by Boyapati Sreenu. produced by Allu Aravind, Music By SS Thaman. From Geethaarts</p>', ' music, song ', 0, 'draft', 0),
(38, 20, 'Django', 'omarfaruk', '', '2018-09-15', 'pic7.png', 'In 2006, Amazon Web Services (AWS) began offering IT infrastructure services to businesses in the form of web services -- now commonly known as cloud computing. One of the key benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in the cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:', 'java, php,, django', 5, 'published', 0),
(39, 9, ' hello2 ', 'omarfaruk', '', '2018-09-15', 'Screenshot (15).png', '<p><strong>the form of web services</strong> -- now commonly known as cloud <strong>computing. One of the key</strong> benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for <i>and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in th</i>e cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', ' java, php,, django ', 1, 'draft', 0),
(40, 20, 'Django', 'omarfaruk', '', '2018-09-15', 'pic7.png', 'In 2006, Amazon Web Services (AWS) began offering IT infrastructure services to businesses in the form of web services -- now commonly known as cloud computing. One of the key benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in the cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:', 'java, php,, django', 5, 'draft', 0),
(41, 9, 'hello2', ' omarfaruk ', '', '2019-02-18', 'Screenshot (15).png', '<p><strong>the form of web services</strong> -- now commonly known as cloud <strong>computing. One of the key</strong> benefits of cloud computing is the opportunity to replace up-front capital infrastructure expenses with low variable costs that scale with your business. With the Cloud, businesses no longer need to plan for <em>and procure servers and other IT infrastructure weeks or months in advance. Instead, they can instantly spin up hundreds or thousands of servers in minutes and deliver results faster. Today, Amazon Web Services provides a highly reliable, scalable, low-cost infrastructure platform in th</em>e cloud that powers hundreds of thousands of businesses in 190 countries around the world. With data center locations in the U.S., Europe, Brazil, Singapore, Japan, and Australia, customers across all industries are taking advantage of the following benefits:</p>', 'java, php,, django', 1, 'draft', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(66) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(66) NOT NULL,
  `user_lastname` varchar(66) NOT NULL,
  `user_email` varchar(233) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(100) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$omarfarukomarfarukomar'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(24, 'admin', '$2y$10$omarfarukomarfarukomaeK9t6UlWG8HPmJE0OMM1LOWb02aOKqne', 'omar', 'faruk', 'admin@gmail.com', '', 'subscriber', '$2y$10$omarfarukomarfarukomar'),
(25, 'umorfarukcse', '$2y$10$omarfarukomarfarukomae5etqfMPgWD.OpEzSz.edTX6niMKfUGS', 'umorfarukcse', 'faruk', 'umorfarukcse@gmail.com', '', 'subscriber', '$2y$10$omarfarukomarfarukomar'),
(26, 'omar', '$2y$12$QInKm4ZKjupiMPAjn71i3OlDM4AkjdUHMcm.dA.4QOcoIRVjcR/0W', '', '', 'ad@fd.com', '', 'subscriber', '$2y$10$omarfarukomarfarukomar'),
(27, 'omarfaruk', '$2y$10$omarfarukomarfarukomaeXRExZNV2UxvmG22zDw52udDDCF1kiTG', 'omar', 'faruk', 'tomarfaruk@hotmail.com', '', 'subscriber', '$2y$10$omarfarukomarfarukomar'),
(28, 'sfjjd', '$2y$12$AxFLOtMkH3Nf0CfPA.8Gq.3W7SpecvPMCs/FAz9SFOrseFbCVn8FG', '', '', 'sjfsdj@jfjd.com', '', 'subscriber', '$2y$10$omarfarukomarfarukomar');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, 'lhbs1vcb6qb8cp07hf1l1tge9c', 1550501345),
(2, 'jr18e4thbll0rmiefvkbuuolr8', 1537015833),
(3, 'r53ek9ko88nu33788f047dk4fe', 1537015075),
(4, '7avrr0vgor26a3fbn7693mblc2', 1537015217),
(5, 'k96ppitlqvr1rpt2de57k6gupa', 1537020026),
(6, '32vpdr5u3vm33eccltcvg4vl4k', 1537028511),
(7, '194avsugclidlae92hlo64lsoc', 1537020802),
(8, '8l4fs7p8bt69n9gs6ivqm26j94', 1537091178);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
