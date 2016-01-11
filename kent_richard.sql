-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11. Jan, 2016 13:56 p.m.
-- Server-versjon: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kent_richard`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `forum_posts`
--

CREATE TABLE IF NOT EXISTS `forum_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dataark for tabell `forum_posts`
--

INSERT INTO `forum_posts` (`id`, `text`, `created`, `createdBy`) VALUES
(1, 'Dette ær en test post.', '2016-01-10 17:51:14', 0),
(2, 'Denni er test post nr 2', '2016-01-10 17:51:51', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `forum_topics`
--

CREATE TABLE IF NOT EXISTS `forum_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET latin1 NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) NOT NULL,
  `comment` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `commentBy` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `replies` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dataark for tabell `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `created`, `createdBy`, `comment`, `commentBy`, `views`, `replies`) VALUES
(1, 'Dette er en test topic.', '2016-01-10 17:40:31', 2, '2016-01-10 17:40:31', 2, 0, 0),
(3, 'Dette er også en test topic. En litt lengre enn vel og merke...', '2016-01-10 20:46:36', 1, '2016-01-10 20:46:36', 1, 0, 0),
(4, 'Ende flere test topics. Jippi!', '2016-01-10 21:30:17', 1, '2016-01-10 21:30:17', 1, 0, 0),
(5, 'Ende flere test topics. Jippi!', '2016-01-10 21:30:25', 1, '2016-01-10 21:30:25', 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  `email` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dataark for tabell `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'Ledii', 'aleks_f92@hotmail.com'),
(2, 'Ghdude', 'stig.kenneth@secretchest.no');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
