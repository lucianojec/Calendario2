-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 13-Dez-2019 às 14:08
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `celke`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(220) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `events`
--

INSERT INTO `events` (`id`, `title`, `color`, `start`, `end`) VALUES
(51, 'everton.ribeiro - Italia', '40E0D0', '2019-10-01 08:00:00', '2019-10-01 10:00:00'),
(18, 'luciano.fagundes - italia', '40E0D0', '2019-09-30 19:00:00', '2019-09-30 20:00:00'),
(43, 'eduardo.monica - brasil', '40E0D0', '2019-09-30 15:00:00', '2019-09-30 16:30:00'),
(19, 'silvio.pureza - russia', '40E0D0', '2019-09-30 18:00:00', '2019-09-30 19:00:00'),
(64, 'porfirio.marcos', '40E0D0', '2019-10-03 10:30:00', '2019-10-03 12:00:00'),
(48, 'douglas.xuint - brasil', '40E0D0', '2019-09-30 12:30:00', '2019-09-30 14:00:00'),
(63, 'douglas.xuint - franca', '40E0D0', '2019-10-04 19:00:00', '2019-10-04 20:30:00'),
(45, 'fausto.silva', '40E0D0', '2019-09-30 04:30:00', '2019-09-30 07:00:00'),
(47, 'luciano.fagundes - Italia', '40E0D0', '2019-09-30 08:00:00', '2019-09-30 08:30:00'),
(46, 'josias.python - Brasil', '40E0D0', '2019-09-30 10:00:00', '2019-09-30 11:00:00'),
(27, 'dario.fernandes - alemanha', '40E0D0', '2019-10-02 18:00:00', '2019-10-02 21:00:00'),
(29, 'cristiano.porto - brasil', '40E0D0', '2019-10-02 02:00:00', '2019-10-02 03:00:00'),
(30, 'marcos.porfirio - franca', '40E0D0', '2019-10-02 03:00:00', '2019-10-02 03:00:00'),
(65, 'thiago', '40E0D0', '2019-10-01 18:00:00', '2019-10-01 19:00:00'),
(32, 'luis.inacio - italia', '40E0D0', '2019-10-02 05:00:00', '2019-10-02 07:00:00'),
(58, 'ronaldo.dentuÃ§o - brasil', '40E0D0', '2019-10-01 02:00:00', '2019-10-01 04:00:00'),
(34, 'pedro.oliveira - alemanha', '40E0D0', '2019-10-03 12:00:00', '2019-10-03 14:00:00'),
(35, 'larissa.goulart - japao', '40E0D0', '2019-10-03 08:00:00', '2019-10-03 10:00:00'),
(37, 'carla.peres - franca', '40E0D0', '2019-10-03 02:00:00', '2019-10-03 02:00:00'),
(38, 'sheila.melo - vaticano', '40E0D0', '2019-10-04 03:00:00', '2019-10-04 03:00:00'),
(39, 'gabriela.cicareli - italia', '40E0D0', '2019-10-04 05:00:00', '2019-10-04 07:00:00'),
(40, 'xuxa.meneghel - russia', '40E0D0', '2019-10-04 02:00:00', '2019-10-04 03:00:00'),
(53, 'everton.cebola - Russia', '40E0D0', '2019-10-03 15:00:00', '2019-10-03 17:00:00'),
(62, 'silvio - italia', '40E0D0', '2019-10-04 20:00:00', '2019-10-04 22:00:00'),
(59, 'ronaldo.gaucho - franca', '40E0D0', '2019-10-01 11:00:00', '2019-10-01 13:00:00'),
(66, 'pedro', '40E0D0', '2019-10-01 18:30:00', '2019-10-01 19:00:00'),
(67, 'luciano.fagundes - Italia', '40E0D0', '2019-10-02 13:00:00', '2019-10-02 14:00:00'),
(69, 'silvio.santos - Franca', '40E0D0', '2019-11-29 20:00:00', '2019-11-29 21:30:00'),
(70, 'luciano.fagundes', '40E0D0', '2019-11-28 16:30:00', '2019-11-28 17:00:00'),
(71, 'luciano.fagundes', '40E0D0', '2019-11-29 20:00:00', '2019-11-29 21:00:00'),
(72, 'luciano.fagundes', '40E0D0', '2019-11-30 16:04:00', '2019-11-30 18:00:00'),
(73, 'sabrina.lorenski', '40E0D0', '2019-11-28 16:00:00', '2019-11-28 18:00:00'),
(74, 'sabrina.lorenski', '40E0D0', '2019-11-29 22:00:00', '2019-11-30 00:00:00'),
(75, 'sabrina.lorenski', '40E0D0', '2019-11-30 16:00:00', '2019-11-30 19:00:00'),
(81, 'douglas.schuindt', '40E0D0', '2019-11-29 06:30:00', '2019-11-29 07:00:00'),
(82, 'douglas.schuindt', '40E0D0', '2019-11-30 07:30:00', '2019-11-30 08:00:00'),
(83, 'douglas.schuindt', '40E0D0', '2019-11-30 08:00:00', '2019-11-30 08:30:00'),
(84, 'douglas.schuindt', '40E0D0', '2019-12-02 08:00:00', '2019-12-02 08:30:00'),
(85, 'douglas.schuindt', '40E0D0', '2019-12-02 12:00:00', '2019-12-02 12:30:00'),
(86, 'douglas.schuindt', '40E0D0', '2019-11-29 12:30:00', '2019-11-29 13:00:00'),
(87, 'douglas.schuindt', '40E0D0', '2019-12-01 14:00:00', '2019-12-01 14:30:00'),
(88, 'douglas.schuindt', '40E0D0', '2019-12-02 09:30:00', '2019-12-02 10:00:00'),
(89, 'douglas.schuindt', '40E0D0', '2019-11-30 10:30:00', '2019-11-30 11:00:00'),
(90, 'douglas.schuindt', '40E0D0', '2019-12-01 09:00:00', '2019-12-01 09:30:00'),
(91, 'douglas.schuindt', '40E0D0', '2019-11-30 16:00:00', '2019-11-30 16:30:00'),
(92, 'douglas.schuindt', '40E0D0', '2019-12-01 15:00:00', '2019-12-01 15:30:00'),
(93, 'douglas.schuindt', '40E0D0', '2019-11-29 15:30:00', '2019-11-29 16:00:00'),
(94, 'douglas.schuindt', '40E0D0', '2019-12-01 13:00:00', '2019-12-01 13:30:00'),
(95, 'douglas.schuindt', '40E0D0', '2019-12-01 10:00:00', '2019-12-01 10:30:00'),
(96, 'douglas.schuindt', '40E0D0', '2019-12-01 07:00:00', '2019-12-01 07:30:00'),
(97, 'douglas.schuindt', '40E0D0', '2019-12-02 08:30:00', '2019-12-02 09:00:00'),
(98, 'douglas.schuindt', '40E0D0', '2019-11-29 10:00:00', '2019-11-29 10:30:00'),
(99, 'douglas.schuindt', '40E0D0', '2019-11-30 13:30:00', '2019-11-30 14:00:00'),
(100, 'douglas.schuindt', '40E0D0', '2019-11-30 09:00:00', '2019-11-30 09:30:00'),
(101, 'douglas.schuindt', '40E0D0', '2019-11-30 09:30:00', '2019-11-30 10:00:00'),
(102, 'douglas.schuindt', '40E0D0', '2019-11-30 08:30:00', '2019-11-30 09:00:00'),
(103, 'douglas.schuindt', '40E0D0', '2019-12-02 12:30:00', '2019-12-02 13:00:00'),
(104, 'douglas.schuindt', '40E0D0', '2019-12-01 10:30:00', '2019-12-01 13:00:00'),
(105, 'douglas.schuindt', '40E0D0', '2019-11-29 16:00:00', '2019-11-29 22:00:00'),
(106, 'douglas.schuindt', '40E0D0', '2019-11-30 16:30:00', '2019-11-30 22:00:00'),
(107, 'douglas.schuindt', '40E0D0', '2019-12-01 15:30:00', '2019-12-01 22:00:00'),
(108, 'douglas.schuindt', '40E0D0', '2019-11-30 14:00:00', '2019-11-30 16:00:00'),
(109, 'douglas.schuindt', '40E0D0', '2019-11-29 13:00:00', '2019-11-29 15:30:00'),
(110, 'douglas.schuindt', '40E0D0', '2019-11-30 11:00:00', '2019-11-30 13:30:00'),
(111, 'douglas.schuindt', '40E0D0', '2019-11-29 10:30:00', '2019-11-29 12:30:00'),
(112, 'douglas.schuindt', '40E0D0', '2019-11-29 07:00:00', '2019-11-29 10:00:00'),
(113, 'douglas.schuindt', '40E0D0', '2019-11-29 02:00:00', '2019-11-29 06:30:00'),
(114, 'douglas.schuindt', '40E0D0', '2019-11-30 00:00:00', '2019-11-30 07:30:00'),
(115, 'douglas.schuindt', '40E0D0', '2019-12-01 00:00:00', '2019-12-01 07:00:00'),
(116, 'douglas.schuindt', '40E0D0', '2019-12-02 00:00:00', '2019-12-02 08:00:00'),
(117, 'douglas.schuindt', '40E0D0', '2019-12-01 07:30:00', '2019-12-01 09:00:00'),
(118, 'douglas.schuindt', '40E0D0', '2019-11-30 10:00:00', '2019-11-30 10:30:00'),
(119, 'douglas.schuindt', '40E0D0', '2019-12-01 09:30:00', '2019-12-01 10:00:00'),
(120, 'douglas.schuindt', '40E0D0', '2019-12-02 09:00:00', '2019-12-02 09:30:00'),
(121, 'douglas.schuindt', '40E0D0', '2019-12-02 10:00:00', '2019-12-02 12:00:00'),
(122, 'douglas.schuindt', '40E0D0', '2019-12-01 13:30:00', '2019-12-01 14:00:00'),
(123, 'douglas.schuindt', '40E0D0', '2019-12-01 14:30:00', '2019-12-01 15:00:00'),
(124, 'douglas.schuindt', '40E0D0', '2019-12-02 13:00:00', '2019-12-02 13:30:00'),
(125, 'douglas.schuindt', '40E0D0', '2019-11-29 01:30:00', '2019-11-29 02:00:00'),
(126, 'douglas.schuindt', '40E0D0', '2019-11-29 01:00:00', '2019-11-29 01:30:00'),
(127, 'douglas.schuindt', '40E0D0', '2019-11-29 00:30:00', '2019-11-29 01:00:00'),
(128, 'douglas.schuindt', '40E0D0', '2019-11-29 00:00:00', '2019-11-29 00:30:00'),
(129, 'luciano.fagundes', '40E0D0', '2019-12-01 15:30:13', '2019-12-01 16:00:00'),
(130, 'luciano.fagundes', '40E0D0', '2019-11-28 19:00:00', '2019-11-28 22:00:00'),
(131, 'luciano.fagundes', '40E0D0', '2019-11-29 17:00:00', '2019-11-29 18:30:00'),
(132, 'luciano.fagundes', '40E0D0', '2019-11-30 20:30:00', '2019-11-30 21:00:00'),
(133, 'luciano.fagundes', '40E0D0', '2019-11-29 21:00:00', '2019-11-30 00:00:00'),
(134, 'luciano.fagundes', '40E0D0', '2019-12-02 06:00:00', '2019-12-02 07:00:00'),
(135, 'luciano.fagundes', '40E0D0', '2019-11-30 07:30:00', '2019-11-30 08:00:00'),
(136, 'luciano.fagundes', '40E0D0', '2019-12-03 12:00:00', '2019-12-03 12:30:00'),
(137, 'luciano.fagundes', '40E0D0', '2019-12-03 11:00:00', '2019-12-03 12:30:00'),
(138, 'luciano.fagundes', '40E0D0', '2019-12-03 11:30:00', '2019-12-03 14:30:00'),
(139, 'luciano.fagundes', '40E0D0', '2019-12-03 11:00:00', '2019-12-03 14:00:00'),
(140, 'luciano.fagundes', '40E0D0', '2019-12-03 11:00:00', '2019-12-03 13:30:00'),
(141, 'luciano.fagundes', '40E0D0', '2019-12-03 12:30:00', '2019-12-03 14:30:00'),
(152, 'galvao-bueno', '40E0D0', '2019-12-05 10:30:00', '2019-12-05 11:30:00'),
(150, 'luciano.fagundes', '40E0D0', '2019-12-04 07:00:00', '2019-12-04 08:00:00'),
(149, 'luciano.fagundes', '40E0D0', '2019-12-04 14:00:00', '2019-12-04 16:30:00'),
(148, 'josias.python', '40E0D0', '2019-12-04 21:00:00', '2019-12-04 23:00:00'),
(147, 'luciano.fagundes', '40E0D0', '2019-12-04 12:30:00', '2019-12-04 13:00:00'),
(151, 'luciano.fagundes', '40E0D0', '2019-12-04 07:00:00', '2019-12-04 08:00:00'),
(153, 'galvao-bueno', '40E0D0', '2019-12-04 21:00:00', '2019-12-04 22:00:00'),
(154, 'luciano.fagundes', '40E0D0', '2019-12-04 20:30:00', '2019-12-04 21:30:00'),
(155, 'luciano.fagundes', '40E0D0', '2019-12-05 12:30:00', '2019-12-05 13:00:00'),
(156, 'galvao.bueno', '40E0D0', '2019-12-05 15:00:00', '2019-12-05 15:30:00'),
(157, 'gugu.liberatto', '40E0D0', '2019-12-05 15:00:00', '2019-12-05 15:30:00'),
(159, 'fausto.silva', '40E0D0', '2019-12-05 16:30:00', '2019-12-05 17:00:00'),
(160, 'luciano.fagundes', '40E0D0', '2019-12-05 16:30:00', '2019-12-05 17:00:00'),
(161, 'mano.brown', '40E0D0', '2019-12-05 16:00:00', '2019-12-05 17:00:00'),
(173, 'tiago.aurelio', '40E0D0', '2019-12-10 17:00:00', '2019-12-10 18:30:00'),
(164, 'douglas.xuint', '40E0D0', '2019-12-09 11:00:00', '2019-12-09 12:00:00'),
(169, 'silvio.pureza', '40E0D0', '2019-12-09 22:00:00', '2019-12-10 00:00:00'),
(167, 'silvio.pureza', '40E0D0', '2019-12-09 19:00:00', '2019-12-09 21:30:00'),
(168, 'douglas.xuint', '40E0D0', '2019-12-09 21:00:00', '2019-12-09 23:00:00'),
(170, 'douglas.xuint', '40E0D0', '2019-12-09 22:00:00', '2019-12-10 00:00:00'),
(171, 'rafael.melita', '40E0D0', '2019-12-09 22:00:00', '2019-12-10 00:00:00'),
(172, 'luciano.fagundes', '40E0D0', '2019-12-10 16:00:00', '2019-12-10 18:00:00'),
(270, 'luciano.fagundes', '40E0D0', '2019-12-14 14:00:00', '2019-12-14 16:00:00'),
(266, 'luciano.fagundes', '40E0D0', '2019-12-12 14:00:00', '2019-12-12 16:00:00'),
(267, 'silvio.pureza', '40E0D0', '2019-12-12 15:00:00', '2019-12-12 16:30:00'),
(268, 'tiago.aurelio', '40E0D0', '2019-12-12 14:00:00', '2019-12-12 16:30:00'),
(245, 'luciano.fagundes', '40E0D0', '2019-12-11 22:30:00', '2019-12-12 00:00:00'),
(244, 'luciano.fagundes', '40E0D0', '2019-12-11 19:00:00', '2019-12-11 21:00:00'),
(243, 'luciano.fagundes', '40E0D0', '2019-12-11 19:00:00', '2019-12-11 21:00:00'),
(242, 'luciano.fagundes', '40E0D0', '2019-12-11 19:00:00', '2019-12-11 21:00:00'),
(241, 'luciano.fagundes', '40E0D0', '2019-12-11 19:00:00', '2019-12-11 21:30:00'),
(240, 'luciano.fagundes', '40E0D0', '2019-12-11 19:00:00', '2019-12-11 21:30:00'),
(239, 'luciano.fagundes', '40E0D0', '2019-12-11 19:00:00', '2019-12-11 21:00:00'),
(238, 'luciano.fagundes', '40E0D0', '2019-12-11 19:30:00', '2019-12-11 21:30:00'),
(237, 'luciano.fagundes', '40E0D0', '2019-12-11 19:00:00', '2019-12-11 21:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
