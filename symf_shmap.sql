-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 07 Noi 2014 la 19:19
-- Versiune server: 5.6.20
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `symf_shmap`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `Shop`
--

CREATE TABLE IF NOT EXISTS `Shop` (
`id` int(11) NOT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `visits` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Salvarea datelor din tabel `Shop`
--

INSERT INTO `Shop` (`id`, `title`, `description`, `visits`) VALUES
(1, 'Baltuca Mica si alba', 'DescrereFetching an object back out of the database is even easier. For example, suppose you''ve ', 124),
(2, 'Caldarusanca', 'Descriere Lorem ipsum cel mai tare magazin cu vizite', 356);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `subh_users`
--

CREATE TABLE IF NOT EXISTS `subh_users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `subsh_shops`
--

CREATE TABLE IF NOT EXISTS `subsh_shops` (
`id` int(11) NOT NULL,
  `title` varchar(70) DEFAULT NULL,
  `description` text,
  `avatar` varchar(50) DEFAULT NULL,
  `visits` int(30) NOT NULL,
  `latlong` varchar(50) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `new_stock` varchar(30) DEFAULT NULL,
  `cat` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `subsh_shops`
--

INSERT INTO `subsh_shops` (`id`, `title`, `description`, `avatar`, `visits`, `latlong`, `creator_id`, `premium`, `address`, `new_stock`, `cat`, `city`, `created`) VALUES
(1, 'Balta Alba', 'Descrierea acestui magazin consta in faptul ca este foarte primitor.', NULL, 12512, '44.460238, 26.064904', 16, 1, 'Str. Balta Alba, nr 14', '0', 'Alb', 'Bucuresti', '2014-11-07 18:47:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Shop`
--
ALTER TABLE `Shop`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subh_users`
--
ALTER TABLE `subh_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subsh_shops`
--
ALTER TABLE `subsh_shops`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`,`latlong`,`premium`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Shop`
--
ALTER TABLE `Shop`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subsh_shops`
--
ALTER TABLE `subsh_shops`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
