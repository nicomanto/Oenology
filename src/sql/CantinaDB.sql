-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 08, 2020 alle 13:12
-- Versione del server: 10.1.43-MariaDB-0ubuntu0.18.04.1
-- Versione PHP: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmantova-PR`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Acquirenti`
--

CREATE TABLE `Acquirenti` (
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Acquirenti`
--

INSERT INTO `Acquirenti` (`Id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(77),
(78),
(79),
(80);

-- --------------------------------------------------------

--
-- Struttura della tabella `Aziende`
--

CREATE TABLE `Aziende` (
  `PartitaIVA` varchar(190) NOT NULL,
  `NumAcquirente` int(11) DEFAULT NULL,
  `NomeReferente` varchar(190) NOT NULL,
  `CognomeReferente` varchar(190) NOT NULL,
  `InformazioniAggiuntive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Aziende`
--

INSERT INTO `Aziende` (`PartitaIVA`, `NumAcquirente`, `NomeReferente`, `CognomeReferente`, `InformazioniAggiuntive`) VALUES
('10935062647', 59, 'Wilma', 'Greco', 59),
('14019458487', NULL, 'Ambrosia', 'Piazza', 82),
('16784531646', 77, 'Luigia', 'Calabresi', 77),
('22288789915', 64, 'Celso', 'Pirozzi', 64),
('23014284219', 51, 'Benilde', 'Trevisano', 51),
('27650821381', 73, 'Palmiro', 'Lucchese', 73),
('28402852740', NULL, 'Libero', 'Folliero', 94),
('29157536269', 56, 'Bianca', 'Endrizzi', 56),
('34090372115', 69, 'Cassandra', 'Trevisan', 69),
('34213758600', NULL, 'Dimitri', 'Pinto', 93),
('35580963355', 65, 'Lealdo', 'Iadanza', 65),
('41387604801', NULL, 'Quinzio', 'Barese', 100),
('43387584918', NULL, 'Sebastiano', 'Milano', 86),
('44017267204', 78, 'Licia', 'Padovesi', 78),
('44294051351', 68, 'Arcangelo', 'Mazzanti', 68),
('47311443946', 74, 'Raimondo', 'Trevisan', 74),
('50372489437', NULL, 'Regina', 'Marino', 95),
('52562854351', 80, 'Bianca', 'Trevisani', 80),
('56881424359', NULL, 'Cristian', 'Pirozzi', 87),
('56999890842', 58, 'Rachele', '', 58),
('57246733917', 71, 'Crispino', 'Milano', 71),
('57492460140', 79, 'Lorena', 'Romani', 79),
('57920166297', NULL, 'Cassandra', 'Padovano', 81),
('60166872648', 76, 'Liberato', 'Longo', 76),
('61567835518', 55, 'Ruggero', 'Palerma', 55),
('63457627793', 57, 'Salomone', 'Marino', 57),
('63852328799', NULL, 'Emilia', 'Endrizzi', 97),
('64158661717', 75, 'Quintina', 'Davide', 75),
('64899171268', 60, 'Anastasia', 'Lorenzo', 60),
('66887761439', 52, 'Giuseppa', 'Pisani', 52),
('68438593223', NULL, 'Girolamo', 'Milanesi', 90),
('68477534983', 70, 'Noemi', 'Pagnotto', 70),
('69335129569', 63, 'Renzo', 'Zito', 63),
('75282938291', NULL, 'Giuseppina', 'Genovese', 85),
('76088428714', 54, 'Terzo', 'Manfrin', 54),
('77167580326', 53, 'Lucio', 'Trevisani', 53),
('80687294957', NULL, 'Bruto', 'Monaldo', 98),
('80865928944', NULL, 'Berengario', 'Genovesi', 83),
('82429726777', 61, 'Prisco', 'Calabresi', 61),
('82811405174', NULL, 'Urania', 'Udinese', 91),
('83916986053', NULL, 'Pantaleone', 'Pisano', 84),
('84067678658', 66, 'Assunta', 'Piazza', 66),
('86364114568', NULL, 'Concetta', 'Baresi', 96),
('88070544187', 72, 'Alda', 'Calabrese', 72),
('90577964125', NULL, 'Rosaria', 'Esposito', 88),
('93154400832', 67, 'Cristiana', 'Palerma', 67),
('93192822911', NULL, 'Quintiliano', 'Padovesi', 89),
('93294559682', NULL, 'Delfio', 'Trevisan', 99),
('98134702039', NULL, 'Mareta', 'Nucci', 92),
('99843548850', 62, 'Luigia', 'Udinesi', 62);

-- --------------------------------------------------------

--
-- Struttura della tabella `Bottiglie`
--

CREATE TABLE `Bottiglie` (
  `Id` int(11) NOT NULL,
  `Capacita` int(11) NOT NULL,
  `Colore` varchar(190) DEFAULT NULL,
  `Quantita` int(11) NOT NULL,
  `Fornitore` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Bottiglie`
--

INSERT INTO `Bottiglie` (`Id`, `Capacita`, `Colore`, `Quantita`, `Fornitore`) VALUES
(1, 50, 'Marrone', 5655, '34213758600'),
(2, 75, 'Verde', 8489, '28402852740'),
(3, 33, 'Verde', 2832, '41387604801'),
(4, 75, 'Marrone', 1031, '69335129569'),
(5, 50, 'Verde', 6769, '64899171268');

-- --------------------------------------------------------

--
-- Struttura della tabella `BottiglieDiVino`
--

CREATE TABLE `BottiglieDiVino` (
  `Id` int(11) NOT NULL,
  `Vino` varchar(190) NOT NULL,
  `Annata` int(11) NOT NULL,
  `Prezzo` float NOT NULL,
  `NumBottiglieVendute` int(11) DEFAULT NULL,
  `NumBottiglieMagazzino` int(11) DEFAULT NULL,
  `NumBottiglieProdotte` int(11) DEFAULT NULL,
  `IdTappo` int(11) DEFAULT NULL,
  `IdBottiglia` int(11) DEFAULT NULL,
  `IdMagazzino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `BottiglieDiVino`
--

INSERT INTO `BottiglieDiVino` (`Id`, `Vino`, `Annata`, `Prezzo`, `NumBottiglieVendute`, `NumBottiglieMagazzino`, `NumBottiglieProdotte`, `IdTappo`, `IdBottiglia`, `IdMagazzino`) VALUES
(1, 'Cannonau', 2015, 15, 844, 961, 1805, 1, 5, 4),
(2, 'Cellatica', 2015, 14, 609, 453, 1062, 4, 3, 3),
(3, 'Corbara', 2015, 17, 719, 368, 1087, 4, 3, 4),
(4, 'Correggio', 2015, 16, 618, 336, 954, 2, 5, 2),
(5, 'Garitta', 2015, 11, 637, 894, 1531, 4, 2, 4),
(6, 'Irno', 2015, 20, 439, 753, 1192, 1, 2, 5),
(7, 'Gutturnio', 2015, 16, 203, 765, 968, 2, 4, 1),
(8, 'Mandrolisai', 2015, 18, 720, 848, 1568, 3, 5, 2),
(9, 'Marsicano', 2015, 18, 3, 25, 28, 1, 1, 5),
(10, 'Lagosta', 2015, 19, 544, 58, 602, 2, 5, 4),
(11, 'Marinasco', 2015, 11, 418, 626, 1044, 5, 3, 4),
(12, 'Mascali', 2015, 11, 39, 343, 382, 5, 4, 2),
(13, 'Limassina', 2015, 14, 975, 158, 1133, 5, 1, 3),
(14, 'Novaline', 2015, 20, 612, 931, 1543, 3, 2, 2),
(15, 'Ninfeo', 2015, 16, 260, 650, 910, 2, 5, 2),
(16, 'Paci', 2015, 11, 259, 845, 1104, 3, 3, 3),
(17, 'Palizzi', 2015, 10, 550, 466, 1016, 4, 2, 3),
(18, 'Partinico', 2015, 19, 45, 323, 368, 2, 4, 5),
(19, 'Passito', 2015, 18, 832, 503, 1335, 2, 1, 2),
(20, 'Nebbiolo', 2015, 10, 480, 767, 1247, 4, 2, 3),
(21, 'Rossese', 2015, 17, 285, 669, 954, 4, 1, 3),
(22, 'Rubicchio', 2015, 12, 322, 242, 564, 1, 2, 1),
(23, 'Ruffino', 2015, 11, 163, 549, 712, 4, 5, 3),
(24, 'Sassella', 2015, 20, 597, 139, 736, 5, 2, 2),
(25, 'Scandiano', 2015, 12, 800, 891, 1691, 4, 3, 3),
(26, 'Solichiata', 2015, 17, 97, 239, 336, 4, 1, 4),
(27, 'Terralba', 2015, 16, 143, 312, 455, 4, 1, 1),
(28, 'Tarantino', 2015, 13, 781, 873, 1654, 3, 4, 2),
(29, 'Tiferno', 2015, 18, 767, 505, 1272, 4, 2, 5),
(30, 'Verici', 2015, 18, 333, 27, 360, 1, 4, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `Corrieri`
--

CREATE TABLE `Corrieri` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Corrieri`
--

INSERT INTO `Corrieri` (`Id`, `Nome`) VALUES
(1, 'Corriere0'),
(2, 'Corriere1'),
(3, 'Corriere2'),
(4, 'Corriere3'),
(5, 'Corriere4');

-- --------------------------------------------------------

--
-- Struttura della tabella `Dettagli`
--

CREATE TABLE `Dettagli` (
  `Ordine` int(11) NOT NULL,
  `BottigliaDiVino` int(11) NOT NULL,
  `QuantitaBottiglie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Dettagli`
--

INSERT INTO `Dettagli` (`Ordine`, `BottigliaDiVino`, `QuantitaBottiglie`) VALUES
(1, 10, 7),
(1, 13, 7),
(1, 15, 7),
(2, 2, 10),
(2, 15, 3),
(2, 18, 5),
(3, 21, 9),
(3, 22, 8),
(3, 27, 3),
(3, 28, 3),
(4, 1, 4),
(4, 17, 6),
(5, 8, 9),
(6, 1, 7),
(6, 18, 8),
(7, 14, 8),
(7, 20, 10),
(7, 29, 10),
(8, 19, 2),
(9, 13, 6),
(9, 16, 1),
(9, 22, 1),
(9, 23, 10),
(10, 1, 3),
(10, 19, 9),
(10, 27, 9),
(10, 29, 2),
(11, 5, 2),
(11, 15, 7),
(11, 19, 5),
(12, 15, 4),
(13, 17, 4),
(14, 6, 8),
(14, 16, 3),
(14, 18, 1),
(14, 28, 8),
(15, 3, 8),
(15, 18, 1),
(16, 3, 6),
(16, 10, 2),
(16, 25, 1),
(17, 4, 3),
(17, 5, 7),
(17, 16, 6),
(17, 21, 5),
(18, 3, 9),
(18, 17, 5),
(18, 29, 4),
(19, 15, 4),
(20, 9, 4),
(21, 21, 6),
(21, 26, 8),
(22, 4, 3),
(22, 21, 6),
(22, 29, 9),
(23, 12, 9),
(23, 15, 2),
(23, 22, 7),
(24, 26, 10),
(25, 5, 7),
(25, 15, 6),
(25, 16, 3),
(26, 3, 6),
(26, 18, 1),
(27, 11, 5),
(27, 12, 5),
(27, 19, 6),
(28, 1, 3),
(28, 2, 4),
(28, 20, 6),
(28, 25, 9),
(29, 28, 8),
(30, 5, 6),
(30, 12, 4),
(30, 21, 9),
(31, 7, 8),
(31, 9, 6),
(31, 11, 5),
(31, 29, 10),
(32, 8, 6),
(32, 29, 2),
(33, 10, 3),
(33, 21, 5),
(33, 24, 6),
(34, 15, 4),
(34, 26, 7),
(35, 10, 1),
(35, 17, 7),
(35, 18, 1),
(36, 14, 6),
(36, 26, 3),
(36, 29, 1),
(37, 5, 6),
(38, 5, 8),
(39, 20, 3),
(40, 8, 6),
(40, 22, 5),
(40, 23, 9),
(41, 15, 5),
(41, 27, 2),
(41, 30, 1),
(42, 4, 2),
(42, 8, 7),
(42, 13, 6),
(43, 20, 8),
(43, 25, 4),
(44, 1, 8),
(44, 13, 7),
(45, 10, 1),
(46, 23, 8),
(47, 11, 1),
(47, 16, 5),
(47, 27, 5),
(47, 29, 9),
(48, 23, 10),
(49, 11, 3),
(50, 4, 4),
(50, 19, 8),
(50, 27, 9),
(50, 30, 1),
(51, 2, 3),
(52, 12, 5),
(52, 22, 3),
(53, 4, 10),
(53, 28, 10),
(54, 16, 6),
(54, 19, 7),
(54, 24, 9),
(55, 7, 7),
(55, 10, 2),
(55, 19, 10),
(55, 24, 5),
(56, 16, 1),
(56, 28, 4),
(57, 25, 4),
(57, 27, 9),
(57, 30, 4),
(58, 3, 1),
(58, 9, 8),
(59, 4, 8),
(59, 7, 5),
(59, 9, 6),
(60, 25, 4),
(61, 1, 8),
(61, 8, 7),
(61, 23, 8),
(61, 24, 9),
(62, 6, 5),
(62, 27, 2),
(62, 29, 8),
(63, 23, 1),
(63, 25, 3),
(64, 21, 5),
(65, 16, 3),
(66, 15, 8),
(66, 17, 4),
(66, 25, 7),
(67, 8, 9),
(67, 15, 2),
(67, 23, 3),
(68, 3, 9),
(68, 8, 9),
(68, 13, 2),
(68, 25, 4),
(69, 16, 10),
(70, 18, 10),
(70, 20, 3),
(71, 7, 3),
(71, 17, 6),
(71, 23, 2),
(72, 20, 6),
(73, 7, 8),
(73, 14, 10),
(73, 17, 10),
(74, 7, 6),
(74, 22, 2),
(75, 29, 10),
(76, 9, 9),
(77, 24, 4),
(78, 9, 8),
(78, 20, 2),
(79, 10, 9),
(79, 18, 1),
(79, 20, 3),
(79, 28, 4),
(80, 12, 5),
(80, 15, 2),
(80, 23, 1),
(81, 15, 5),
(82, 16, 10),
(82, 17, 10),
(82, 18, 9),
(83, 17, 4),
(83, 19, 7),
(83, 25, 2),
(83, 29, 3),
(84, 22, 3),
(85, 1, 9),
(85, 23, 7),
(85, 27, 1),
(85, 30, 1),
(86, 16, 5),
(86, 29, 4),
(86, 30, 7),
(87, 4, 3),
(87, 8, 2),
(87, 27, 6),
(88, 3, 8),
(88, 14, 3),
(88, 21, 1),
(88, 26, 4),
(89, 7, 10),
(89, 28, 3),
(90, 3, 2),
(90, 10, 9),
(90, 15, 10),
(91, 5, 4),
(91, 23, 10),
(91, 24, 9),
(92, 1, 6),
(92, 3, 10),
(92, 8, 7),
(93, 5, 2),
(93, 13, 5),
(93, 26, 3),
(93, 30, 4),
(94, 13, 1),
(94, 18, 10),
(95, 8, 5),
(95, 26, 1),
(95, 27, 8),
(95, 30, 1),
(96, 5, 6),
(96, 6, 5),
(96, 30, 9),
(97, 4, 8),
(97, 15, 3),
(97, 23, 8),
(97, 28, 9),
(98, 24, 9),
(98, 25, 8),
(99, 24, 7),
(100, 7, 9),
(100, 8, 4),
(100, 19, 4),
(100, 24, 6),
(101, 7, 7),
(101, 10, 3),
(101, 13, 10),
(101, 25, 10),
(102, 7, 8),
(102, 10, 6),
(103, 1, 7),
(103, 23, 7),
(104, 8, 1),
(104, 21, 8),
(104, 27, 1),
(104, 30, 7),
(105, 9, 10),
(105, 10, 9),
(105, 13, 8),
(106, 4, 5),
(106, 23, 4),
(107, 16, 7),
(107, 26, 2),
(108, 1, 2),
(108, 4, 3),
(108, 6, 10),
(108, 11, 7),
(109, 15, 4),
(109, 17, 6),
(109, 29, 3),
(109, 30, 9),
(110, 2, 1),
(110, 14, 2),
(110, 21, 1),
(111, 1, 7),
(111, 18, 4),
(111, 23, 10),
(112, 3, 4),
(112, 16, 10),
(112, 27, 6),
(113, 14, 2),
(113, 22, 6),
(113, 26, 2),
(113, 27, 9),
(114, 11, 10),
(114, 12, 10),
(114, 16, 3),
(114, 26, 7),
(115, 3, 10),
(115, 12, 2),
(116, 12, 6),
(117, 2, 2),
(117, 7, 2),
(117, 22, 3),
(118, 2, 7),
(118, 18, 2),
(118, 24, 5),
(119, 19, 4),
(119, 20, 4),
(119, 29, 4),
(120, 16, 10),
(121, 7, 2),
(121, 11, 10),
(121, 23, 5),
(122, 10, 1),
(122, 13, 9),
(122, 14, 9),
(122, 22, 9),
(123, 15, 6),
(123, 19, 1),
(123, 25, 4),
(124, 20, 10),
(124, 24, 1),
(125, 25, 7),
(126, 12, 9),
(126, 24, 9),
(127, 2, 10),
(127, 7, 1),
(127, 23, 3),
(128, 6, 5),
(128, 10, 1),
(128, 14, 6),
(128, 22, 3),
(129, 7, 8),
(129, 14, 10),
(129, 27, 5),
(130, 19, 4),
(130, 30, 9),
(131, 24, 4),
(131, 26, 9),
(132, 2, 5),
(132, 13, 8),
(132, 21, 7),
(132, 29, 2),
(133, 23, 2),
(133, 26, 4),
(134, 2, 6),
(134, 14, 3),
(134, 20, 5),
(134, 21, 1),
(135, 25, 6),
(136, 6, 8),
(137, 2, 7),
(137, 4, 9),
(137, 15, 2),
(138, 2, 7),
(138, 12, 8),
(139, 17, 9),
(139, 21, 2),
(140, 9, 10),
(141, 7, 8),
(141, 19, 2),
(142, 7, 1),
(142, 10, 5),
(142, 16, 7),
(142, 20, 9),
(143, 6, 5),
(144, 24, 1),
(145, 3, 7),
(145, 10, 10),
(145, 15, 2),
(145, 26, 9),
(146, 20, 1),
(147, 14, 9),
(147, 15, 7),
(147, 16, 8),
(148, 12, 2),
(148, 14, 4),
(148, 16, 6),
(149, 7, 5),
(149, 11, 8),
(150, 4, 7),
(150, 12, 5),
(151, 6, 7),
(151, 16, 6),
(151, 25, 5),
(152, 2, 2),
(152, 13, 10),
(153, 8, 5),
(154, 7, 7),
(154, 15, 3),
(154, 27, 1),
(155, 3, 1),
(155, 13, 4),
(155, 20, 8),
(156, 1, 9),
(156, 2, 9),
(156, 16, 2),
(156, 28, 3),
(157, 1, 1),
(158, 5, 9),
(158, 10, 10),
(158, 12, 5),
(158, 26, 6),
(159, 13, 8),
(159, 27, 8),
(160, 1, 2),
(160, 21, 8),
(160, 24, 8),
(161, 28, 4),
(162, 1, 9),
(162, 20, 8),
(162, 28, 8),
(163, 5, 1),
(163, 13, 7),
(163, 21, 6),
(163, 25, 9),
(164, 4, 7),
(164, 7, 9),
(164, 23, 4),
(165, 15, 7),
(165, 18, 8),
(165, 23, 5),
(165, 30, 6),
(166, 5, 7),
(166, 11, 9),
(166, 17, 5),
(167, 5, 4),
(167, 15, 9),
(167, 28, 3),
(168, 5, 6),
(168, 6, 10),
(168, 10, 6),
(168, 12, 3),
(169, 3, 9),
(169, 9, 1),
(170, 15, 9),
(170, 17, 3),
(171, 12, 7),
(171, 16, 5),
(171, 21, 8),
(172, 13, 5),
(172, 14, 3),
(172, 17, 10),
(172, 27, 5),
(173, 14, 9),
(173, 15, 1),
(173, 16, 1),
(173, 23, 3),
(174, 19, 9),
(175, 25, 3),
(176, 9, 5),
(176, 10, 10),
(176, 18, 1),
(176, 21, 2),
(177, 13, 5),
(178, 4, 4),
(178, 30, 4),
(179, 6, 3),
(179, 12, 2),
(179, 15, 10),
(179, 26, 9),
(180, 29, 4),
(181, 9, 9),
(181, 29, 4),
(182, 18, 3),
(182, 23, 2),
(183, 7, 2),
(183, 10, 8),
(183, 21, 9),
(183, 22, 8),
(184, 9, 7),
(184, 16, 5),
(184, 26, 1),
(185, 12, 8),
(185, 13, 3),
(186, 15, 4),
(186, 20, 4),
(186, 29, 9),
(187, 9, 6),
(188, 17, 3),
(188, 19, 5),
(189, 1, 2),
(189, 14, 3),
(189, 16, 6),
(189, 25, 6),
(190, 1, 2),
(190, 9, 6),
(190, 17, 9),
(191, 5, 9),
(192, 18, 4),
(193, 7, 2),
(193, 27, 2),
(194, 2, 8),
(194, 27, 8),
(195, 5, 8),
(195, 7, 8),
(195, 21, 7),
(196, 17, 3),
(197, 9, 3),
(197, 27, 1),
(197, 30, 10),
(198, 1, 3),
(199, 13, 9),
(199, 16, 10),
(199, 24, 2),
(200, 6, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `Dipendenti`
--

CREATE TABLE `Dipendenti` (
  `CodiceFiscale` varchar(16) NOT NULL,
  `Nome` varchar(190) NOT NULL,
  `Cognome` varchar(190) NOT NULL,
  `Referente` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Dipendenti`
--

INSERT INTO `Dipendenti` (`CodiceFiscale`, `Nome`, `Cognome`, `Referente`) VALUES
('1013434220619035', 'Quartilla', '', '2137239448629138'),
('1381537753713443', 'Michelangelo', 'Genovesi', NULL),
('1689195725025757', 'Alvisa', 'Loggia', '7681361712211111'),
('1960374235792456', 'Ines', 'Calabrese', '5347367672304511'),
('2077727937224817', 'Christian', 'Lucchesi', '1381537753713443'),
('2137239448629138', 'Medoro', 'Colombo', NULL),
('2223765222996174', 'Gerardo', 'Greece', '5347367672304511'),
('2276852400932009', 'Gilda', 'Fiorentino', '7681361712211111'),
('2293965865210543', 'Proserpio', 'Moretti', '1381537753713443'),
('2317633520051872', 'Dario', 'Baresi', '8703935763413583'),
('2328223935673762', 'Cosma', 'Ricci', '1381537753713443'),
('2455319125488814', 'Domenica', 'DeRose', '2137239448629138'),
('2480438817420409', 'Gioacchina', 'Davide', '2137239448629138'),
('2485106861310395', 'Nunzia', 'Lo', '8703935763413583'),
('2487732140018372', 'Letterio', 'Monaldo', '1381537753713443'),
('2679311619230526', 'Azeglio', 'Loggia', '5347367672304511'),
('2753973761830893', 'Guarino', 'Davide', '2137239448629138'),
('2891604629252377', 'Basilio', 'Rizzo', '8703935763413583'),
('2915003288081997', 'Amerigo', 'Colombo', '5347367672304511'),
('3027006815233269', 'Celio', 'Trentino', '5347367672304511'),
('3120907610315308', 'Igino', 'Trevisan', '7681361712211111'),
('3245695612629995', 'Concordia', 'Padovesi', '2137239448629138'),
('3338525794980959', 'Pasqualina', 'Buccho', '8703935763413583'),
('3385769454333542', 'Libero', 'Iadanza', '7681361712211111'),
('3433980433518461', 'Gerardino', 'Trevisano', '5347367672304511'),
('3448486193165981', 'Generoso', 'Bellucci', '8703935763413583'),
('3517680265459629', 'Antonio', 'Genovesi', '1381537753713443'),
('3636454043099290', 'Ernesta', 'Barese', '7681361712211111'),
('3752669038620118', 'Geraldo', 'Ferri', '5347367672304511'),
('3774025139063718', 'Abela', 'Romani', '7681361712211111'),
('3993916252502469', 'Luciana', 'Trevisano', '8703935763413583'),
('4139389581288432', 'Andrea', 'Costa', '1381537753713443'),
('4150190736140990', 'Quirico', 'Piccio', '2137239448629138'),
('4218661661290687', 'Fantino', 'Zetticci', '5347367672304511'),
('4230396305753748', 'Frida', 'Trevisan', '2137239448629138'),
('4396104097665407', 'Terenzio', 'Pisani', '8703935763413583'),
('4396424888016696', 'Ambrogio', 'Longo', '5347367672304511'),
('4403702588022043', 'Ester', 'Piazza', '7681361712211111'),
('4511427461055965', 'Virginio', 'Lo', '7681361712211111'),
('4567329622339251', 'Fedro', 'Udinese', '7681361712211111'),
('4608141143774318', 'Christian', 'Palerma', '1381537753713443'),
('4697477669615590', 'Ortensia', 'Folliero', '2137239448629138'),
('4741213049682931', 'Gloria', 'Angelo', '7681361712211111'),
('4803724411531419', 'Angela', 'Udinesi', '1381537753713443'),
('4852638948317467', 'Dina', 'Gallo', '2137239448629138'),
('4868689557394904', 'Taziana', 'Napolitani', '7681361712211111'),
('4999913052769009', 'Ildebrando', 'Trevisano', '8703935763413583'),
('5196056974546384', 'Tranquillino', 'Colombo', '8703935763413583'),
('5347367672304511', 'Christian', 'Udinesi', NULL),
('5369178801082115', 'Emidio', 'Longo', '7681361712211111'),
('5415702359117925', 'Dorotea', 'Sal', '1381537753713443'),
('5469651034458670', 'Gina', 'Russo', '2137239448629138'),
('5568020893250070', 'Michela', 'Boni', '8703935763413583'),
('5673383480806896', 'Abelardo', 'Genovese', '1381537753713443'),
('5720827150719192', 'Cosma', 'Lucchese', '8703935763413583'),
('5728908152392130', 'Isaia', 'Lori', '2137239448629138'),
('5804801506966712', 'Dino', 'Endrizzi', '5347367672304511'),
('5829148907148442', 'Dimitri', 'Milanesi', '5347367672304511'),
('6114614869090860', 'Michela', 'Siciliani', '5347367672304511'),
('6192422535429477', 'Gustavo', 'Lori', '7681361712211111'),
('6239588849645286', 'Abbondio', 'Trentini', '7681361712211111'),
('6310865063405342', 'Girolamo', 'Ferri', '8703935763413583'),
('6337260322246448', 'Bianca', 'Ferri', NULL),
('6535112762611768', 'Cristian', 'Udinesi', '7681361712211111'),
('6565584349581894', 'Belinda', 'Calabresi', NULL),
('6822185620095516', 'Agamennone', 'Mazzi', '8703935763413583'),
('6863430699839482', 'Fabiano', 'Fanucci', '8703935763413583'),
('6946084288859162', 'Aurelio', 'Baresi', '2137239448629138'),
('6976314212807459', 'Roberto', 'DeRose', '7681361712211111'),
('7262172596441694', 'Virginio', 'Russo', '7681361712211111'),
('7390048029193446', 'Augusto', 'Pagnotto', '2137239448629138'),
('7425501400753756', 'Agostino', 'Lombardi', '8703935763413583'),
('7435073643922558', 'Bonaventura', 'Trevisan', '5347367672304511'),
('7524614508723081', 'Crescenzo', 'Bianchi', '1381537753713443'),
('7575432453216282', 'Anita', 'Mazzi', '2137239448629138'),
('7610723435843567', 'Alessandra', 'Angelo', '8703935763413583'),
('7681361712211111', 'Macaria', 'Angelo', NULL),
('7779897512480822', 'Melania', 'Trentini', '5347367672304511'),
('8148721728497327', 'Benedetto', 'Pugliesi', '1381537753713443'),
('8164846354125222', 'Berardo', 'Bellucci', '5347367672304511'),
('8244424488008854', 'Quarto', 'Fiorentini', '2137239448629138'),
('8294188648960155', 'Marta', 'Greco', '1381537753713443'),
('8308600785993792', 'Lidia', 'Conti', '1381537753713443'),
('8396940121051054', 'Rosa', 'Siciliani', '1381537753713443'),
('8486061080774805', 'Christian', 'Pagnotto', '2137239448629138'),
('8505246802530648', 'Nicodemo', 'Fiorentino', '1381537753713443'),
('8530156167317144', 'Marzio', 'Ferri', '7681361712211111'),
('8601041431529522', 'Luana', 'Pugliesi', '1381537753713443'),
('8703935763413583', 'Claudia', 'Pirozzi', NULL),
('8763554918715981', 'Maria', 'Pia', '2137239448629138'),
('8791626944576787', 'Patrizio', 'Romani', '1381537753713443'),
('9173158280114929', 'Camilla', 'Piazza', '8703935763413583'),
('9190321605508069', 'Arianna', 'Padovano', '5347367672304511'),
('9202278899672787', 'Filiberto', 'Sabbatini', '2137239448629138'),
('9278583151896578', 'Lionello', 'Dellucci', '8703935763413583'),
('9339042240897420', 'Erminia', 'Lombardi', '5347367672304511'),
('9352529591790993', 'Alberico', 'Manfrin', '8703935763413583'),
('9655897791164901', 'Sante', 'Sal', '5347367672304511'),
('9899796553218757', 'Bruno', 'Boni', '7681361712211111'),
('9994832010206615', 'Urania', 'Lucciano', '2137239448629138');

-- --------------------------------------------------------

--
-- Struttura della tabella `Eventi`
--

CREATE TABLE `Eventi` (
  `Id` int(11) NOT NULL,
  `Titolo` varchar(190) DEFAULT NULL,
  `Edizione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Eventi`
--

INSERT INTO `Eventi` (`Id`, `Titolo`, `Edizione`) VALUES
(1, 'Evento0', 2),
(2, 'Evento1', 1),
(11, 'Evento10', 1),
(12, 'Evento11', 3),
(13, 'Evento12', 1),
(14, 'Evento13', 3),
(15, 'Evento14', 2),
(16, 'Evento15', 2),
(17, 'Evento16', 3),
(18, 'Evento17', 2),
(19, 'Evento18', 1),
(20, 'Evento19', 2),
(3, 'Evento2', 3),
(21, 'Evento20', 3),
(22, 'Evento21', 3),
(23, 'Evento22', 3),
(24, 'Evento23', 3),
(25, 'Evento24', 2),
(26, 'Evento25', 1),
(27, 'Evento26', 3),
(28, 'Evento27', 2),
(29, 'Evento28', 2),
(30, 'Evento29', 2),
(4, 'Evento3', 2),
(5, 'Evento4', 1),
(6, 'Evento5', 2),
(7, 'Evento6', 3),
(8, 'Evento7', 2),
(9, 'Evento8', 1),
(10, 'Evento9', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `Fornitori`
--

CREATE TABLE `Fornitori` (
  `Id` varchar(190) NOT NULL,
  `Tipologia` enum('Uva','Tappo','Bottiglia') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Fornitori`
--

INSERT INTO `Fornitori` (`Id`, `Tipologia`) VALUES
('10935062647', 'Uva'),
('28402852740', 'Bottiglia'),
('34213758600', 'Bottiglia'),
('41387604801', 'Bottiglia'),
('50372489437', 'Tappo'),
('56881424359', 'Uva'),
('63457627793', 'Uva'),
('63852328799', 'Uva'),
('64899171268', 'Bottiglia'),
('66887761439', 'Tappo'),
('68438593223', 'Tappo'),
('69335129569', 'Bottiglia'),
('77167580326', 'Uva'),
('80687294957', 'Tappo'),
('82811405174', 'Uva'),
('84067678658', 'Tappo'),
('86364114568', 'Uva'),
('93192822911', 'Tappo'),
('93294559682', 'Uva'),
('98134702039', 'Tappo');

-- --------------------------------------------------------

--
-- Struttura della tabella `FornituraBottiglie`
--

CREATE TABLE `FornituraBottiglie` (
  `Bottiglia` int(11) NOT NULL,
  `DataAcquisto` date NOT NULL,
  `Prezzo` float NOT NULL,
  `Quantita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `FornituraBottiglie`
--

INSERT INTO `FornituraBottiglie` (`Bottiglia`, `DataAcquisto`, `Prezzo`, `Quantita`) VALUES
(1, '2015-01-22', 10000, 3000),
(2, '2015-01-22', 10000, 3000),
(3, '2015-01-22', 10000, 3000),
(4, '2015-01-22', 10000, 3000),
(5, '2015-01-22', 10000, 3000);

-- --------------------------------------------------------

--
-- Struttura della tabella `FornituraTappi`
--

CREATE TABLE `FornituraTappi` (
  `Tappo` int(11) NOT NULL,
  `DataAcquisto` date NOT NULL,
  `Prezzo` float NOT NULL,
  `Quantita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `FornituraTappi`
--

INSERT INTO `FornituraTappi` (`Tappo`, `DataAcquisto`, `Prezzo`, `Quantita`) VALUES
(1, '2015-01-22', 10000, 5000),
(2, '2015-01-22', 10000, 5000),
(3, '2015-01-22', 10000, 5000),
(4, '2015-01-22', 10000, 5000);

-- --------------------------------------------------------

--
-- Struttura della tabella `FornituraUva`
--

CREATE TABLE `FornituraUva` (
  `Uva` int(11) NOT NULL,
  `DataAcquisto` date NOT NULL,
  `Prezzo` float NOT NULL,
  `Quantita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `FornituraUva`
--

INSERT INTO `FornituraUva` (`Uva`, `DataAcquisto`, `Prezzo`, `Quantita`) VALUES
(1, '2015-01-22', 550, 1000),
(2, '2015-01-22', 700, 1000),
(3, '2015-01-22', 550, 1000),
(4, '2015-01-22', 900, 3200),
(12, '2015-07-12', 800, 1000),
(14, '2015-07-12', 200, 800),
(18, '2015-07-12', 600, 1250),
(19, '2015-07-12', 600, 1250);

-- --------------------------------------------------------

--
-- Struttura della tabella `Indirizzi`
--

CREATE TABLE `Indirizzi` (
  `Id` int(11) NOT NULL,
  `Via` varchar(190) NOT NULL,
  `NumeroCivico` int(11) NOT NULL,
  `Stato` varchar(190) NOT NULL,
  `Provincia` varchar(190) DEFAULT NULL,
  `Citta` varchar(190) DEFAULT NULL,
  `CAP` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Indirizzi`
--

INSERT INTO `Indirizzi` (`Id`, `Via`, `NumeroCivico`, `Stato`, `Provincia`, `Citta`, `CAP`) VALUES
(1, 'Via Russo', 37, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(2, 'Via Mazzi', 91, 'Italia', 'Napoli', 'Ercolano', '22149'),
(3, 'Via Lucchesi', 41, 'Italia', 'Padova', 'Padova', '35121'),
(4, 'Via Fiorentino', 24, 'Italia', 'Mantova', 'Goito', '46030'),
(5, 'Via Ferri', 89, 'Italia', 'Verona', 'Trevenzuolo', '28166'),
(6, 'Via Greco', 35, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(7, 'Via Fanucci', 29, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(8, 'Via Boni', 44, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(9, 'Via Lori', 36, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(10, 'Via Ricci', 88, 'Italia', 'Palermo', 'Bompietro', '33056'),
(11, 'Via Lettiere', 97, 'Italia', 'Napoli', 'Capri', '22188'),
(12, 'Via Pino', 56, 'Italia', 'Padova', 'Este', '35141'),
(13, 'Via Bellucci', 20, 'Italia', 'Mantova', 'Viadana', '46034'),
(14, 'Via Iadanza', 44, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(15, 'Via Mazzanti', 90, 'Italia', 'Napoli', 'Ercolano', '22149'),
(16, 'Via Ferrari', 53, 'Italia', 'Napoli', 'Ercolano', '22149'),
(17, 'Via Genovesi', 87, 'Italia', 'Napoli', 'Ercolano', '22149'),
(18, 'Via Bergamaschi', 4, 'Italia', 'Napoli', 'Ercolano', '22149'),
(19, 'Via Mancini', 48, 'Italia', 'Padova', 'Padova', '35121'),
(20, 'Via Milani', 31, 'Italia', 'Padova', 'Padova', '35121'),
(21, 'Via Gallo', 94, 'Italia', 'Padova', 'Padova', '35121'),
(22, 'Via Trentini', 44, 'Italia', 'Padova', 'Padova', '35121'),
(23, 'Via Trevisano', 5, 'Italia', 'Mantova', 'Goito', '46030'),
(24, 'Via Genovesi', 62, 'Italia', 'Mantova', 'Goito', '46030'),
(25, 'Via Toscano', 84, 'Italia', 'Mantova', 'Goito', '46030'),
(26, 'Via Fiorentini', 57, 'Italia', 'Mantova', 'Goito', '46030'),
(27, 'Via Calabrese', 75, 'Italia', 'Verona', 'Trevenzuolo', '28166'),
(28, 'Via Pisano', 45, 'Italia', 'Verona', 'Trevenzuolo', '28166'),
(29, 'Via Gallo', 22, 'Italia', 'Verona', 'Trevenzuolo', '28166'),
(30, 'Via Capo', 1, 'Italia', 'Verona', 'Trevenzuolo', '28166'),
(31, 'Via Fiorentini', 48, 'Italia', 'Palermo', 'Bompietro', '33056'),
(32, 'Via Longo', 86, 'Italia', 'Palermo', 'Bompietro', '33056'),
(33, 'Via Giordano', 74, 'Italia', 'Palermo', 'Bompietro', '33056'),
(34, 'Via Cremonesi', 40, 'Italia', 'Palermo', 'Bompietro', '33056'),
(35, 'Via Siciliano', 11, 'Italia', 'Napoli', 'Capri', '22188'),
(36, 'Via Napolitani', 72, 'Italia', 'Napoli', 'Capri', '22188'),
(37, 'Via Folliero', 67, 'Italia', 'Napoli', 'Capri', '22188'),
(38, 'Via Sabbatini', 25, 'Italia', 'Napoli', 'Capri', '22188'),
(39, 'Via Manfrin', 30, 'Italia', 'Napoli', 'Capri', '22188'),
(40, 'Via Fiorentino', 10, 'Italia', 'Napoli', 'Capri', '22188'),
(41, 'Via Bellucci', 31, 'Italia', 'Napoli', 'Capri', '22188'),
(42, 'Via Panicucci', 10, 'Italia', 'Padova', 'Este', '35141'),
(43, 'Via Piazza', 76, 'Italia', 'Padova', 'Este', '35141'),
(44, 'Via Udinese', 13, 'Italia', 'Padova', 'Este', '35141'),
(45, 'Via Dellucci', 36, 'Italia', 'Padova', 'Este', '35141'),
(46, 'Via Cremonesi', 88, 'Italia', 'Padova', 'Este', '35141'),
(47, 'Via Ferrari', 37, 'Italia', 'Padova', 'Este', '35141'),
(48, 'Via Siciliano', 15, 'Italia', 'Padova', 'Este', '35141'),
(49, 'Via Udinesi', 78, 'Italia', 'Padova', 'Este', '35141'),
(50, 'Via Schiavone', 64, 'Italia', 'Padova', 'Este', '35141'),
(51, 'Via Bergamaschi', 48, 'Italia', 'Mantova', 'Viadana', '46034'),
(52, 'Via Palerma', 46, 'Italia', 'Mantova', 'Viadana', '46034'),
(53, 'Via Lori', 51, 'Italia', 'Mantova', 'Viadana', '46034'),
(54, 'Via Lo', 36, 'Italia', 'Mantova', 'Viadana', '46034'),
(55, 'Via Pisano', 60, 'Italia', 'Mantova', 'Viadana', '46034'),
(56, 'Via Lombardo', 28, 'Italia', 'Mantova', 'Viadana', '46034'),
(57, 'Via Teresa', 35, 'Italia', 'Mantova', 'Viadana', '46034'),
(58, 'Via Udinesi', 49, 'Italia', 'Mantova', 'Viadana', '46034'),
(59, 'Via Sabbatini', 85, 'Italia', 'Mantova', 'Viadana', '46034'),
(60, 'Via Giordano', 18, 'Italia', 'Mantova', 'Viadana', '46034'),
(61, 'Via De', 91, 'Italia', 'Mantova', 'Viadana', '46034'),
(62, 'Via Sagese', 22, 'Italia', 'Mantova', 'Viadana', '46034'),
(63, 'Via Arcuri', 22, 'Italia', 'Mantova', 'Viadana', '46034'),
(64, 'Via Cattaneo', 46, 'Italia', 'Mantova', 'Viadana', '46034'),
(65, 'Via Moretti', 17, 'Italia', 'Mantova', 'Viadana', '46034'),
(66, 'Via Calabrese', 30, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(67, 'Via Genovesi', 88, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(68, 'Via Ricci', 76, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(69, 'Via Fanucci', 81, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(70, 'Via Li', 71, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(71, 'Via Calabrese', 49, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(72, 'Via Padovesi', 32, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(73, 'Via Napolitani', 91, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(74, 'Via Romani', 69, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(75, 'Via Ferri', 98, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(76, 'Via Fiorentini', 27, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(77, 'Via Bianchi', 29, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(78, 'Via Buccho', 49, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(79, 'Via Fiorentini', 41, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(80, 'Via Barese', 88, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(81, 'Via Gallo', 50, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(82, 'Via Napolitani', 38, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(83, 'Via Loggia', 93, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(84, 'Via Moretti', 18, 'Italia', 'Padova', 'Padova', '35121'),
(85, 'Via Davide', 92, 'Italia', 'Padova', 'Padova', '35121'),
(86, 'Via Milano', 21, 'Italia', 'Padova', 'Padova', '35121'),
(87, 'Via Fanucci', 57, 'Italia', 'Padova', 'Padova', '35121'),
(88, 'Via Loggia', 31, 'Italia', 'Padova', 'Padova', '35121'),
(89, 'Via Lombardi', 45, 'Italia', 'Padova', 'Padova', '35121'),
(90, 'Via Udinesi', 12, 'Italia', 'Padova', 'Padova', '35121'),
(91, 'Via Castiglione', 58, 'Italia', 'Padova', 'Padova', '35121'),
(92, 'Via Cattaneo', 86, 'Italia', 'Napoli', 'Capri', '22188'),
(93, 'Via Milano', 79, 'Italia', 'Napoli', 'Capri', '22188'),
(94, 'Via Bellucci', 92, 'Italia', 'Napoli', 'Capri', '22188'),
(95, 'Via Lori', 98, 'Italia', 'Napoli', 'Capri', '22188'),
(96, 'Via Napolitano', 89, 'Italia', 'Napoli', 'Capri', '22188'),
(97, 'Via Panicucci', 20, 'Italia', 'Napoli', 'Capri', '22188'),
(98, 'Via Davide', 86, 'Italia', 'Napoli', 'Capri', '22188'),
(99, 'Via Padovano', 35, 'Italia', 'Napoli', 'Capri', '22188'),
(100, 'Via Sagese', 99, 'Italia', 'Padova', 'Padova', '35121'),
(101, 'Via Bersaglieri', 21, 'Italia', 'Padova', 'Este', '35141'),
(102, 'Via Donatori', 47, 'Italia', 'Padova', 'Padova', '35121'),
(103, 'Via Vicentini', 81, 'Italia', 'Padova', 'Padova', '35121'),
(104, 'Via Lucri', 45, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(105, 'Via Lite', 12, 'Italia', 'Palermo', 'Castelbuono', '33082'),
(106, 'Via Lido', 58, 'Italia', 'Padova', 'Este', '35141'),
(107, 'Via Montagna', 88, 'Italia', 'Napoli', 'Capri', '22188'),
(108, 'Via Mare', 9, 'Italia', 'Napoli', 'Capri', '22188'),
(109, 'Via Sasso', 92, 'Italia', 'Napoli', 'Capri', '22188'),
(110, 'Via Galilei', 98, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(111, 'Via Napoleone', 69, 'Italia', 'Verona', 'Bevilacqua', '28101'),
(112, 'Via Monterotondo', 20, 'Italia', 'Mantova', 'Viadana', '46034'),
(113, 'Via Dante', 96, 'Italia', 'Mantova', 'Viadana', '46034'),
(114, 'Via Virgilio', 49, 'Italia', 'Mantova', 'Goito', '46030'),
(115, 'Via Beatitudine', 99, 'Italia', 'Mantova', 'Goito', '46030');

-- --------------------------------------------------------

--
-- Struttura della tabella `Informazioni`
--

CREATE TABLE `Informazioni` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(190) NOT NULL,
  `Telefono` varchar(11) NOT NULL,
  `Email` varchar(190) NOT NULL,
  `Indirizzo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Informazioni`
--

INSERT INTO `Informazioni` (`Id`, `Nome`, `Telefono`, `Email`, `Indirizzo`) VALUES
(1, 'Addolorata', '3454293697', 'addoloratabarese@email.com', 1),
(2, 'Manuele', '3457789593', 'manuelepirozzi@email.com', 2),
(3, 'Liberato', '3454515559', 'liberatocattaneo@email.com', 3),
(4, 'Tecla', '3452248064', 'teclacattaneo@email.com', 4),
(5, 'Simone', '3455646939', 'simonebellucci@email.com', 5),
(6, 'Vincenza', '3455592247', 'vincenzaromano@email.com', 6),
(7, 'Pasqualina', '3456201729', 'pasqualinasiciliani@email.com', 7),
(8, 'Orlando', '3455346356', 'orlandolettiere@email.com', 8),
(9, 'Orazio', '3459449751', 'oraziozetticci@email.com', 9),
(10, 'Fernando', '3453755297', 'fernandolucchese@email.com', 10),
(11, 'Luisella', '3455681111', 'luisellatoscano@email.com', 11),
(12, 'Pantaleone', '3459585502', 'pantaleonegallo@email.com', 12),
(13, 'Gisella', '3455230689', 'gisellabellucci@email.com', 13),
(14, 'Giacinta', '3452679321', 'giacintamazzi@email.com', 14),
(15, 'Quintilia', '3453894871', 'quintiliapirozzi@email.com', 15),
(16, 'Letizia', '3451958162', 'letiziasagese@email.com', 16),
(17, 'Anna', '3453313144', 'annamarchesi@email.com', 17),
(18, 'Donnino', '3452548687', 'donninopalermo@email.com', 18),
(19, 'Edda', '3458402395', 'eddamerini@email.com', 19),
(20, 'Ginevra', '3455836696', 'ginevramarino@email.com', 20),
(21, 'Geronimo', '3454091209', 'geronimomarino@email.com', 21),
(22, 'Dino', '3452742082', 'dinocalabresi@email.com', 22),
(23, 'Quintina', '3456441942', 'quintinanapolitano@email.com', 23),
(24, 'Gina', '3451960601', 'ginatrevisan@email.com', 24),
(25, 'Guglielmo', '3453846074', 'guglielmobarese@email.com', 25),
(26, 'Violetta', '3454833531', 'violettaudinese@email.com', 26),
(27, 'Ubaldo', '3453881396', 'ubaldofiorentini@email.com', 27),
(28, 'Eva', '3452091491', 'evaonio@email.com', 28),
(29, 'Arrigo', '3457895653', 'arrigolombardo@email.com', 29),
(30, 'Venerando', '3455537519', 'venerandopadovesi@email.com', 30),
(31, 'Alba', '3455465417', 'albaricci@email.com', 31),
(32, 'Pia', '3457239558', 'pialucciano@email.com', 32),
(33, 'Fioretta', '3454165619', 'fiorettasagese@email.com', 33),
(34, 'Noemi', '3453308696', 'noemimazzi@email.com', 34),
(35, 'Arduino', '3455401902', 'arduinomilano@email.com', 35),
(36, 'Ciriaca', '3452911360', 'ciriacapinto@email.com', 36),
(37, 'Ciro', '3453766765', 'cirosiciliani@email.com', 37),
(38, 'Merico', '3455494353', 'mericoconti@email.com', 38),
(39, 'Smeralda', '3450087518', 'smeraldamarchesi@email.com', 39),
(40, 'Basilio', '3452578026', 'basiliobianchi@email.com', 40),
(41, 'Fausta', '3453053534', 'faustadellucci@email.com', 41),
(42, 'Pasquale', '3455629411', 'pasqualecastiglione@email.com', 42),
(43, 'Marianna', '3452683947', 'mariannafiorentino@email.com', 43),
(44, 'Alfredina', '3455478870', 'alfredinamonaldo@email.com', 44),
(45, 'Orsola', '3452803349', 'orsolalucchesi@email.com', 45),
(46, 'Michelino', '3459151198', 'michelinopiazza@email.com', 46),
(47, 'Galdino', '3450003691', 'galdinopanicucci@email.com', 47),
(48, 'Abela', '3456321948', 'abelacremonesi@email.com', 48),
(49, 'Irma', '3457680716', 'irmabellucci@email.com', 49),
(50, 'Gabriella', '3453924651', 'gabriellamano@email.com', 50),
(51, 'Space x', '3457653127', 'alfredinalongo@email.com', 51),
(52, 'Pippo spa', '3457422337', 'alvisemilano@email.com', 52),
(53, 'Mono y', '3459676918', 'adalbertamonaldo@email.com', 53),
(54, 'Berretta', '3457790711', 'anitamarino@email.com', 54),
(55, 'Asus', '3452923514', 'martabruno@email.com', 55),
(56, 'Dell', '3459616787', 'quintinoschiavone@email.com', 56),
(57, 'Microsoft', '3452441713', 'ilariotrentino@email.com', 57),
(58, 'Apple', '3457714160', 'agatagreco@email.com', 58),
(59, 'Xiaomi', '3457780984', 'alideudinesi@email.com', 59),
(60, 'Lux', '3458752700', 'albericomarchesi@email.com', 60),
(61, 'Lutor', '3453170125', 'lucianonapolitani@email.com', 61),
(62, 'Carwy', '3451774289', 'azzurrafiorentini@email.com', 62),
(63, 'Tipu', '3455296984', 'camillagiordano@email.com', 63),
(64, 'Marke', '3455209678', 'lialoggia@email.com', 64),
(65, 'Adidas', '3457873746', 'annarossi@email.com', 65),
(66, 'Nike', '3454639188', 'giannipalerma@email.com', 66),
(67, 'Kipo', '3456739329', 'salvatoretoscani@email.com', 67),
(68, 'Sawe', '3453487340', 'savinozito@email.com', 68),
(69, 'Jojo', '3456547423', 'titobruno@email.com', 69),
(70, 'Caposaldo fc', '3457705014', 'valentinaarcuri@email.com', 70),
(71, 'Internazionale', '3450622922', 'pieropagnotto@email.com', 71),
(72, 'Gucci', '3454172393', 'macariaangelo@email.com', 72),
(73, 'Luis Vitton', '3453178635', 'ruggeropagnotto@email.com', 73),
(74, 'Colombia', '3458977161', 'colombatrevisani@email.com', 74),
(75, 'Medusa', '3452006527', 'noemigenovesi@email.com', 75),
(76, 'Volpe spa', '3456930233', 'alfredolorenzo@email.com', 76),
(77, 'Robiola', '3457664740', 'generosalongo@email.com', 77),
(78, 'Paypal', '3454396418', 'ginopinto@email.com', 78),
(79, 'Next', '3458337046', 'letterioferrari@email.com', 79),
(80, 'N26', '3450573112', 'battistaboni@email.com', 80),
(81, 'Unipol', '3459151538', 'lorenzopinto@email.com', 81),
(82, 'Unipd', '3451007248', 'jolepalermo@email.com', 82),
(83, 'Invaders', '3455350703', 'alfiopalermo@email.com', 83),
(84, 'North Pole', '3458445792', 'melissapalerma@email.com', 84),
(85, 'South Pole', '3455195719', 'rosinaudinese@email.com', 85),
(86, 'Kontatto', '3457508001', 'omerobergamaschi@email.com', 86),
(87, 'Atos', '3457369321', 'guendalinamilano@email.com', 87),
(88, 'Pesci', '3453546796', 'carmelolucchesi@email.com', 88),
(89, 'Gemelli', '3455170143', 'geraldinaferrari@email.com', 89),
(90, 'Liduxor', '3451631309', 'liberamaria@email.com', 90),
(91, 'Capaldi', '3450379099', 'dariaricci@email.com', 91),
(92, 'Erbe', '3456469007', 'elviapadovano@email.com', 92),
(93, 'Barilla', '3453691498', 'manuelesal@email.com', 93),
(94, 'De cecco', '3457201164', 'geronimatrentini@email.com', 94),
(95, 'MMM', '3459118682', 'martaesposito@email.com', 95),
(96, 'Yoshi', '3459592688', 'giulianoromani@email.com', 96),
(97, 'Wario', '3455183012', 'paolaromani@email.com', 97),
(98, 'XBOX', '3453204022', 'luigilucchese@email.com', 98),
(99, 'Play Station', '3451281838', 'severinomilani@email.com', 99),
(100, 'Stone', '3458350944', 'luanatoscano@email.com', 100);

-- --------------------------------------------------------

--
-- Struttura della tabella `LineeProduttive`
--

CREATE TABLE `LineeProduttive` (
  `Id` int(11) NOT NULL,
  `Nome` enum('ProduzioneVino','Imbottigliamento','MagazzinoBianco','MagazzinoRosso','MagazzinoSpumante','MagazzinoRosato') NOT NULL,
  `Direttore` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `LineeProduttive`
--

INSERT INTO `LineeProduttive` (`Id`, `Nome`, `Direttore`) VALUES
(1, 'ProduzioneVino', '1381537753713443'),
(2, 'Imbottigliamento', '2137239448629138'),
(3, 'MagazzinoBianco', '5347367672304511'),
(4, 'MagazzinoRosso', '8703935763413583'),
(5, 'MagazzinoSpumante', '6565584349581894'),
(6, 'MagazzinoRosato', '6337260322246448');

-- --------------------------------------------------------

--
-- Struttura della tabella `Macchinari`
--

CREATE TABLE `Macchinari` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(190) NOT NULL,
  `DataProssimaManutenzione` date NOT NULL,
  `DataAcquisto` date NOT NULL,
  `LineaProduttiva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Macchinari`
--

INSERT INTO `Macchinari` (`Id`, `Nome`, `DataProssimaManutenzione`, `DataAcquisto`, `LineaProduttiva`) VALUES
(1, 'Macchinario0', '2020-10-10', '2002-10-11', 3),
(2, 'Macchinario1', '2020-11-24', '2003-01-26', 1),
(3, 'Macchinario2', '2021-10-13', '2010-11-27', 1),
(4, 'Macchinario3', '2021-02-05', '2007-06-11', 6),
(5, 'Macchinario4', '2020-08-07', '2010-02-25', 2),
(6, 'Macchinario5', '2021-11-14', '2007-02-17', 4),
(7, 'Macchinario6', '2020-04-15', '2007-08-16', 5),
(8, 'Macchinario7', '2021-12-02', '2007-08-05', 6),
(9, 'Macchinario8', '2020-01-21', '2006-07-20', 5),
(10, 'Macchinario9', '2020-07-20', '2001-12-16', 4),
(11, 'Macchinario10', '2021-11-26', '2005-08-19', 6),
(12, 'Macchinario11', '2020-08-02', '2007-03-11', 5),
(13, 'Macchinario12', '2021-02-15', '2007-12-22', 5),
(14, 'Macchinario13', '2021-09-22', '2004-07-27', 4),
(15, 'Macchinario14', '2020-09-09', '2000-07-24', 6),
(16, 'Macchinario15', '2020-02-28', '2004-04-14', 5),
(17, 'Macchinario16', '2020-05-27', '2001-11-18', 2),
(18, 'Macchinario17', '2021-12-14', '2010-03-15', 1),
(19, 'Macchinario18', '2020-04-08', '2001-10-25', 2),
(20, 'Macchinario19', '2021-02-22', '2009-05-01', 2),
(21, 'Macchinario20', '2021-07-22', '2009-10-05', 6),
(22, 'Macchinario21', '2020-12-19', '2006-06-11', 4),
(23, 'Macchinario22', '2020-07-15', '2003-02-06', 4),
(24, 'Macchinario23', '2021-07-04', '2002-04-26', 3),
(25, 'Macchinario24', '2020-03-27', '2002-10-21', 2),
(26, 'Macchinario25', '2020-07-27', '2001-02-14', 3),
(27, 'Macchinario26', '2020-10-12', '2009-03-14', 2),
(28, 'Macchinario27', '2021-02-13', '2009-04-18', 6),
(29, 'Macchinario28', '2020-03-12', '2007-11-10', 3),
(30, 'Macchinario29', '2020-01-14', '2005-05-07', 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `Manutenzioni`
--

CREATE TABLE `Manutenzioni` (
  `Id` int(11) NOT NULL,
  `Macchinario` int(11) NOT NULL,
  `Azienda` varchar(190) NOT NULL,
  `Costo` int(11) NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Manutenzioni`
--

INSERT INTO `Manutenzioni` (`Id`, `Macchinario`, `Azienda`, `Costo`, `Data`) VALUES
(1, 1, '60166872648', 613, '2018-08-07'),
(2, 1, '60166872648', 613, '2017-12-16'),
(3, 2, '57920166297', 539, '2018-04-12'),
(4, 2, '57920166297', 539, '2017-08-02'),
(5, 3, '93154400832', 596, '2018-08-24'),
(6, 3, '93154400832', 596, '2017-03-12'),
(7, 4, '66887761439', 699, '2018-05-02'),
(8, 4, '66887761439', 699, '2017-11-09'),
(9, 5, '35580963355', 575, '2018-12-26'),
(10, 5, '35580963355', 575, '2017-06-06'),
(11, 6, '23014284219', 699, '2018-06-27'),
(12, 6, '23014284219', 699, '2017-11-19'),
(13, 7, '80865928944', 623, '2018-05-07'),
(14, 7, '80865928944', 623, '2017-03-01'),
(15, 8, '22288789915', 622, '2018-02-19'),
(16, 8, '22288789915', 622, '2017-02-01'),
(17, 9, '34090372115', 617, '2018-09-04'),
(18, 9, '34090372115', 617, '2017-04-28'),
(19, 10, '88070544187', 698, '2018-10-24'),
(20, 10, '88070544187', 698, '2017-09-14'),
(21, 11, '29157536269', 693, '2018-02-07'),
(22, 11, '29157536269', 693, '2017-04-09'),
(23, 12, '34090372115', 573, '2018-12-18'),
(24, 12, '34090372115', 573, '2017-05-02'),
(25, 13, '82429726777', 678, '2018-03-07'),
(26, 13, '82429726777', 678, '2017-04-19'),
(27, 14, '47311443946', 687, '2018-07-09'),
(28, 14, '47311443946', 687, '2017-03-25'),
(29, 15, '34213758600', 613, '2018-05-19'),
(30, 15, '34213758600', 613, '2017-03-21'),
(31, 16, '69335129569', 674, '2018-03-12'),
(32, 16, '69335129569', 674, '2017-11-14'),
(33, 17, '63457627793', 629, '2018-12-17'),
(34, 17, '63457627793', 629, '2017-04-16'),
(35, 18, '35580963355', 569, '2018-10-27'),
(36, 18, '35580963355', 569, '2017-05-15'),
(37, 19, '93154400832', 690, '2018-06-11'),
(38, 19, '93154400832', 690, '2017-10-28'),
(39, 20, '84067678658', 640, '2018-09-13'),
(40, 20, '84067678658', 640, '2017-09-27'),
(41, 21, '98134702039', 656, '2018-02-05'),
(42, 21, '98134702039', 656, '2017-12-14'),
(43, 22, '80687294957', 542, '2018-06-02'),
(44, 22, '80687294957', 542, '2017-05-02'),
(45, 23, '80865928944', 550, '2018-11-04'),
(46, 23, '80865928944', 550, '2017-01-19'),
(47, 24, '80865928944', 648, '2018-02-14'),
(48, 24, '80865928944', 648, '2017-12-08'),
(49, 25, '43387584918', 506, '2018-10-17'),
(50, 25, '43387584918', 506, '2017-12-17'),
(51, 26, '82429726777', 640, '2018-04-05'),
(52, 26, '82429726777', 640, '2017-09-26'),
(53, 27, '82429726777', 508, '2018-04-10'),
(54, 27, '82429726777', 508, '2017-08-16'),
(55, 28, '80865928944', 612, '2018-09-11'),
(56, 28, '80865928944', 612, '2017-06-22'),
(57, 29, '75282938291', 632, '2018-10-12'),
(58, 29, '75282938291', 632, '2017-01-10'),
(59, 30, '77167580326', 558, '2018-07-12'),
(60, 30, '77167580326', 558, '2017-03-06');

-- --------------------------------------------------------

--
-- Struttura della tabella `NegoziInterni`
--

CREATE TABLE `NegoziInterni` (
  `Id` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `NegoziInterni`
--

INSERT INTO `NegoziInterni` (`Id`) VALUES
('16784531646'),
('29157536269'),
('56881424359'),
('76088428714'),
('88070544187');

-- --------------------------------------------------------

--
-- Struttura della tabella `Ordini`
--

CREATE TABLE `Ordini` (
  `Id` int(11) NOT NULL,
  `PrezzoTotale` float NOT NULL,
  `Data` datetime DEFAULT CURRENT_TIMESTAMP,
  `Acquirente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Ordini`
--

INSERT INTO `Ordini` (`Id`, `PrezzoTotale`, `Data`, `Acquirente`) VALUES
(1, 172, '2016-10-13 22:00:45', 48),
(2, 77, '2016-11-22 13:47:52', 29),
(3, 583, '2016-10-07 11:58:24', 33),
(4, 466, '2016-06-04 07:03:42', 42),
(5, 865, '2016-01-20 07:35:49', 38),
(6, 96, '2016-02-17 12:22:35', 9),
(7, 618, '2016-11-08 07:34:36', 71),
(8, 341, '2016-05-01 08:25:03', 12),
(9, 631, '2016-12-01 08:38:49', 32),
(10, 551, '2016-06-13 08:41:27', 61),
(11, 256, '2016-09-22 16:52:49', 60),
(12, 739, '2016-07-28 15:28:09', 17),
(13, 749, '2016-03-17 08:47:47', 67),
(14, 678, '2016-01-23 16:42:13', 31),
(15, 731, '2016-03-01 18:28:01', 60),
(16, 37, '2016-10-13 09:10:45', 35),
(17, 561, '2016-04-06 17:07:40', 6),
(18, 212, '2016-11-10 06:15:30', 54),
(19, 86, '2016-05-19 12:24:27', 71),
(20, 507, '2016-05-16 15:21:14', 64),
(21, 463, '2016-03-06 08:24:37', 64),
(22, 561, '2016-11-04 08:31:31', 67),
(23, 862, '2017-08-15 08:37:10', 25),
(24, 407, '2017-06-26 16:03:56', 11),
(25, 579, '2017-07-26 22:35:35', 36),
(26, 638, '2017-02-27 20:08:53', 26),
(27, 725, '2017-07-12 12:45:19', 51),
(28, 447, '2017-03-28 09:55:57', 62),
(29, 956, '2017-11-04 20:46:35', 16),
(30, 340, '2017-04-02 06:36:21', 41),
(31, 806, '2017-07-10 16:13:42', 65),
(32, 763, '2017-10-09 09:50:46', 43),
(33, 975, '2017-06-23 16:47:40', 27),
(34, 743, '2017-05-15 08:55:51', 17),
(35, 175, '2017-06-20 10:12:51', 7),
(36, 873, '2017-11-10 08:38:34', 12),
(37, 237, '2017-10-02 20:23:23', 46),
(38, 651, '2017-02-04 16:02:40', 69),
(39, 410, '2017-06-20 06:51:02', 31),
(40, 93, '2017-07-22 14:20:42', 75),
(41, 478, '2017-06-15 09:43:53', 26),
(42, 390, '2017-12-07 14:28:05', 12),
(43, 432, '2017-07-21 17:24:02', 72),
(44, 308, '2017-05-10 22:04:07', 70),
(45, 384, '2017-05-05 18:48:00', 73),
(46, 358, '2017-09-03 07:56:06', 2),
(47, 19, '2017-06-27 12:51:27', 25),
(48, 68, '2017-01-19 09:53:22', 61),
(49, 790, '2017-04-18 21:35:11', 42),
(50, 362, '2017-01-11 11:39:34', 6),
(51, 493, '2017-07-12 07:11:00', 50),
(52, 509, '2017-06-11 12:49:44', 68),
(53, 828, '2017-09-28 05:58:21', 78),
(54, 280, '2017-02-19 10:29:33', 23),
(55, 695, '2017-12-07 15:22:50', 30),
(56, 480, '2017-09-15 10:10:03', 66),
(57, 269, '2017-10-20 18:08:11', 10),
(58, 792, '2017-07-25 20:37:19', 58),
(59, 313, '2017-05-25 09:51:51', 25),
(60, 20, '2017-07-17 15:13:28', 24),
(61, 708, '2017-07-22 11:57:06', 12),
(62, 61, '2017-06-14 14:48:44', 31),
(63, 377, '2017-06-21 08:57:13', 11),
(64, 689, '2017-11-28 06:12:40', 16),
(65, 800, '2017-03-05 18:02:34', 21),
(66, 645, '2017-07-12 18:05:28', 10),
(67, 378, '2017-09-23 17:14:00', 58),
(68, 747, '2018-05-17 21:09:30', 50),
(69, 336, '2018-07-28 17:50:28', 48),
(70, 203, '2018-10-16 22:04:14', 7),
(71, 988, '2018-01-20 10:49:00', 36),
(72, 296, '2018-06-16 12:45:35', 76),
(73, 259, '2018-06-11 19:48:33', 75),
(74, 702, '2018-12-12 08:26:55', 14),
(75, 724, '2018-06-01 10:18:41', 34),
(76, 404, '2018-11-14 22:04:54', 58),
(77, 446, '2018-02-15 13:46:11', 20),
(78, 707, '2018-09-28 05:00:13', 4),
(79, 940, '2018-07-24 16:04:37', 21),
(80, 497, '2018-05-16 22:37:22', 44),
(81, 412, '2018-10-25 21:08:12', 13),
(82, 5, '2018-11-09 17:36:16', 56),
(83, 327, '2018-12-06 18:15:12', 50),
(84, 803, '2018-06-01 05:57:40', 7),
(85, 309, '2018-07-02 21:07:55', 63),
(86, 250, '2018-11-04 15:32:13', 77),
(87, 299, '2018-12-04 19:37:23', 46),
(88, 880, '2018-07-10 16:09:21', 76),
(89, 597, '2018-12-23 22:08:45', 32),
(90, 847, '2018-03-20 07:57:01', 23),
(91, 312, '2018-01-20 14:27:59', 74),
(92, 189, '2018-05-12 05:52:18', 47),
(93, 154, '2018-12-05 11:14:03', 75),
(94, 465, '2018-11-28 22:56:28', 32),
(95, 368, '2018-10-13 10:48:39', 37),
(96, 271, '2018-09-12 19:36:32', 51),
(97, 148, '2018-08-02 09:05:41', 29),
(98, 681, '2018-07-02 19:53:11', 71),
(99, 656, '2018-11-08 11:44:38', 17),
(100, 297, '2018-03-16 18:25:05', 54),
(101, 339, '2018-07-22 13:39:14', 3),
(102, 63, '2018-12-14 05:30:39', 79),
(103, 711, '2018-04-18 16:47:36', 6),
(104, 304, '2018-04-05 13:42:39', 50),
(105, 849, '2018-12-11 16:20:04', 76),
(106, 969, '2018-12-12 15:21:30', 15),
(107, 1000, '2018-09-18 12:51:01', 79),
(108, 452, '2018-03-20 08:45:22', 24),
(109, 591, '2018-06-24 15:18:31', 66),
(110, 523, '2018-12-09 07:07:47', 35),
(111, 371, '2018-06-27 21:11:41', 13),
(112, 822, '2018-09-23 19:04:11', 58),
(113, 945, '2018-01-06 15:31:19', 49),
(114, 950, '2018-03-22 09:39:54', 50),
(115, 451, '2018-08-01 20:08:36', 59),
(116, 100, '2018-04-12 21:29:32', 65),
(117, 58, '2018-04-20 18:44:01', 17),
(118, 824, '2018-05-12 05:20:03', 62),
(119, 956, '2018-03-07 18:23:45', 80),
(120, 709, '2018-04-28 19:05:03', 53),
(121, 970, '2018-09-20 13:40:14', 44),
(122, 362, '2018-05-21 10:16:40', 50),
(123, 918, '2018-04-05 08:57:28', 55),
(124, 518, '2018-05-26 19:03:34', 2),
(125, 657, '2018-07-12 15:09:15', 54),
(126, 171, '2019-11-18 16:58:44', 35),
(127, 806, '2019-06-24 21:01:03', 55),
(128, 149, '2019-03-13 22:37:44', 7),
(129, 580, '2019-07-10 12:22:52', 41),
(130, 350, '2019-08-13 10:50:53', 60),
(131, 408, '2019-11-25 17:05:28', 57),
(132, 606, '2019-02-04 06:28:39', 38),
(133, 225, '2019-06-26 18:04:40', 32),
(134, 403, '2019-03-27 11:39:28', 74),
(135, 700, '2019-07-25 12:37:35', 7),
(136, 641, '2019-02-12 13:59:14', 77),
(137, 905, '2019-02-20 07:12:53', 22),
(138, 952, '2019-02-04 05:23:05', 41),
(139, 469, '2019-09-06 14:06:13', 41),
(140, 193, '2019-03-16 15:26:19', 66),
(141, 497, '2019-06-22 19:47:46', 59),
(142, 149, '2019-03-20 19:00:19', 52),
(143, 952, '2019-09-19 22:25:22', 10),
(144, 757, '2019-03-15 20:10:32', 28),
(145, 451, '2019-10-16 15:00:30', 68),
(146, 520, '2019-07-01 12:10:26', 37),
(147, 56, '2019-10-27 22:26:16', 66),
(148, 31, '2019-02-19 12:39:05', 33),
(149, 108, '2019-12-16 10:44:49', 60),
(150, 912, '2019-06-20 07:46:01', 70),
(151, 910, '2019-08-20 17:42:21', 37),
(152, 192, '2019-01-02 18:12:00', 13),
(153, 664, '2019-06-16 19:35:51', 39),
(154, 319, '2019-11-25 10:08:35', 50),
(155, 269, '2019-01-09 19:17:28', 30),
(156, 571, '2019-03-24 06:18:14', 69),
(157, 521, '2019-01-20 19:50:32', 1),
(158, 592, '2019-09-09 08:25:49', 9),
(159, 63, '2019-02-23 19:29:53', 6),
(160, 6, '2019-01-14 12:42:57', 66),
(161, 303, '2019-09-16 12:46:38', 28),
(162, 733, '2019-07-08 20:58:54', 61),
(163, 317, '2019-09-15 05:44:01', 39),
(164, 914, '2019-02-08 07:33:25', 56),
(165, 620, '2019-05-06 07:22:37', 8),
(166, 99, '2019-03-04 18:14:00', 26),
(167, 507, '2019-08-09 06:36:36', 5),
(168, 273, '2019-02-23 21:18:59', 78),
(169, 737, '2019-02-08 15:28:17', 57),
(170, 774, '2019-08-08 17:08:36', 69),
(171, 849, '2019-02-07 12:43:17', 11),
(172, 120, '2019-01-23 20:54:19', 52),
(173, 762, '2019-02-16 17:47:38', 4),
(174, 714, '2019-12-25 12:15:18', 58),
(175, 290, '2019-05-24 10:20:26', 67),
(176, 190, '2019-09-15 19:33:25', 6),
(177, 696, '2019-10-06 08:43:34', 6),
(178, 7, '2019-08-07 15:05:30', 69),
(179, 180, '2019-09-05 08:01:12', 60),
(180, 651, '2019-09-23 10:47:04', 14),
(181, 472, '2019-02-20 13:49:06', 56),
(182, 288, '2019-08-22 15:54:16', 58),
(183, 619, '2019-09-01 18:35:00', 20),
(184, 229, '2019-05-12 16:24:17', 54),
(185, 467, '2019-10-17 13:22:56', 55),
(186, 730, '2019-09-05 08:48:41', 50),
(187, 709, '2019-04-11 16:09:49', 56),
(188, 435, '2019-10-20 14:53:22', 46),
(189, 401, '2019-12-17 12:51:52', 74),
(190, 853, '2019-06-21 06:13:43', 50),
(191, 150, '2019-12-26 10:22:42', 30),
(192, 678, '2019-07-06 14:01:50', 17),
(193, 197, '2019-09-08 14:39:01', 78),
(194, 444, '2019-08-09 13:46:07', 36),
(195, 903, '2019-07-19 11:53:57', 46),
(196, 134, '2019-12-05 17:30:41', 56),
(197, 916, '2019-07-23 08:53:20', 39),
(198, 903, '2019-02-23 20:29:39', 71),
(199, 559, '2019-05-22 19:15:38', 25),
(200, 42443, '2019-10-14 21:25:01', 47);

-- --------------------------------------------------------

--
-- Struttura della tabella `Ospita`
--

CREATE TABLE `Ospita` (
  `Evento` int(11) NOT NULL,
  `Negozio` varchar(190) NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Ospita`
--

INSERT INTO `Ospita` (`Evento`, `Negozio`, `Data`) VALUES
(2, '56881424359', '2019-03-11'),
(4, '88070544187', '2019-04-26'),
(10, '16784531646', '2019-03-03'),
(10, '76088428714', '2019-03-18'),
(12, '29157536269', '2019-04-04'),
(13, '16784531646', '2019-08-24'),
(14, '76088428714', '2019-10-26'),
(15, '29157536269', '2019-01-17'),
(15, '88070544187', '2019-06-06'),
(16, '56881424359', '2019-10-12');

-- --------------------------------------------------------

--
-- Struttura della tabella `Privati`
--

CREATE TABLE `Privati` (
  `Id` int(11) NOT NULL,
  `Cognome` varchar(190) NOT NULL,
  `InformazioniAggiuntive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Privati`
--

INSERT INTO `Privati` (`Id`, `Cognome`, `InformazioniAggiuntive`) VALUES
(1, 'Barese', 1),
(2, 'Pirozzi', 2),
(3, 'Cattaneo', 3),
(4, 'Cattaneo', 4),
(5, 'Bellucci', 5),
(6, 'Romano', 6),
(7, 'Siciliani', 7),
(8, 'Lettiere', 8),
(9, 'Zetticci', 9),
(10, 'Lucchese', 10),
(11, 'Toscano', 11),
(12, 'Gallo', 12),
(13, 'Bellucci', 13),
(14, 'Mazzi', 14),
(15, 'Pirozzi', 15),
(16, 'Agnese', 16),
(17, 'Marchesi', 17),
(18, 'Palermo', 18),
(19, 'Merini', 19),
(20, 'Marino', 20),
(21, 'Calabresi', 21),
(22, 'Napolitano', 22),
(23, 'Trevisan', 23),
(24, 'Barese', 24),
(25, 'Udinese', 25),
(26, 'Fiorentini', 26),
(27, 'Onio', 27),
(28, 'Lombardo', 28),
(29, 'Pavesi', 29),
(30, 'Ricci', 30),
(31, 'Lucciano', 31),
(32, 'Sagese', 32),
(33, 'Mazzi', 33),
(34, 'Milano', 34),
(35, 'Pinto', 35),
(36, 'Siciliani', 36),
(37, 'Conti', 37),
(38, 'Marchesi', 38),
(39, 'Bianchi', 39),
(40, 'Dellucci', 40),
(41, 'Castiglione', 41),
(42, 'Fiorentino', 42),
(43, 'Monaldo', 43),
(44, 'Lucchesi', 44),
(45, 'Piazza', 45),
(46, 'Panicucci', 46),
(47, 'Cremonesi', 47),
(48, 'Bellucci', 48),
(49, 'Mano', 49),
(50, 'Longo', 50);

-- --------------------------------------------------------

--
-- Struttura della tabella `Spedizioni`
--

CREATE TABLE `Spedizioni` (
  `Ordine` int(11) NOT NULL,
  `Corriere` int(11) NOT NULL,
  `DataSpedizione` date DEFAULT NULL,
  `DataConsegna` date DEFAULT NULL,
  `Prezzo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Spedizioni`
--

INSERT INTO `Spedizioni` (`Ordine`, `Corriere`, `DataSpedizione`, `DataConsegna`, `Prezzo`) VALUES
(1, 5, '2002-04-02', '2002-04-04', 1366),
(2, 4, '2009-07-21', NULL, 611),
(3, 2, '2005-03-02', NULL, 374),
(4, 3, '2007-09-13', NULL, 1809),
(5, 1, '2005-02-09', NULL, 1360),
(6, 2, '2006-08-17', NULL, 258),
(7, 2, '2000-11-19', '2000-11-21', 1699),
(8, 1, '2002-12-01', '2002-12-03', 994),
(9, 3, '2009-05-23', '2009-05-25', 583),
(10, 5, '2007-05-12', '2007-05-14', 678),
(11, 5, '2007-01-09', '2007-01-11', 1206),
(12, 2, '2004-07-07', '2004-07-09', 1474),
(13, 2, '2009-07-06', '2009-07-08', 232),
(14, 4, '2004-12-01', '2004-12-02', 1182),
(15, 1, '2006-10-17', '2006-10-20', 623),
(16, 3, '2000-11-16', '2000-11-20', 642),
(17, 5, '2008-08-08', '2008-08-12', 363),
(18, 3, '2000-03-07', '2000-03-10', 1248),
(19, 4, '2001-06-22', '2001-06-24', 636),
(20, 3, '2006-11-27', '2006-12-01', 948),
(21, 2, '2010-05-13', '2010-05-16', 1509),
(22, 2, '2003-08-20', NULL, 226),
(23, 1, '2003-08-13', NULL, 803),
(24, 5, '2010-08-12', NULL, 649),
(25, 4, '2005-02-11', NULL, 624),
(26, 1, '2004-02-20', NULL, 1196),
(27, 2, '2008-06-17', NULL, 1143),
(28, 5, '2005-12-18', '2005-12-20', 556),
(29, 4, '2003-11-16', '2003-11-20', 1468),
(30, 2, '2001-08-07', '2001-08-10', 1699),
(31, 5, '2006-08-27', '2006-09-03', 1726),
(32, 2, '2004-10-13', NULL, 614),
(33, 3, '2001-05-18', NULL, 1648),
(34, 2, '2009-04-27', NULL, 1432),
(35, 1, '2002-07-10', NULL, 1941),
(36, 2, '2007-11-24', NULL, 1813),
(37, 3, '2002-11-08', '2002-11-10', 159),
(38, 4, '2003-06-09', NULL, 718),
(39, 1, '2010-10-01', NULL, 1918),
(40, 4, '2008-05-24', NULL, 1022),
(41, 4, '2007-07-21', NULL, 2000),
(42, 1, '2007-08-12', NULL, 1921),
(43, 4, '2004-09-28', NULL, 1890),
(44, 3, '2004-04-05', NULL, 428),
(45, 1, '2008-05-17', NULL, 679),
(46, 4, '2002-06-28', '2002-06-29', 1221),
(47, 4, '2009-10-21', '2009-10-25', 512),
(48, 5, '2005-06-22', '2005-06-24', 1566),
(49, 5, '2009-04-22', '2009-04-25', 602),
(50, 1, '2005-11-21', '2005-11-22', 899),
(51, 1, '2006-05-07', '2006-05-10', 373),
(52, 5, '2001-08-26', '2001-08-30', 1790),
(53, 1, '2001-12-25', '2001-12-27', 131),
(54, 1, '2005-07-05', '2005-07-10', 326),
(55, 1, '2000-09-18', '2000-09-20', 149),
(56, 2, '2008-03-08', '2008-03-09', 410),
(57, 5, '2006-06-22', '2006-06-30', 1665),
(58, 5, '2004-07-25', '2004-07-27', 1645),
(59, 5, '2002-05-14', '2002-05-16', 469),
(60, 4, '2001-03-04', '2001-03-08', 682),
(61, 4, '2010-11-16', '2010-11-18', 1452),
(62, 4, '2010-10-03', '2010-10-07', 1104),
(63, 2, '2002-06-18', '2002-06-20', 597),
(64, 1, '2003-01-23', '2003-01-27', 794),
(65, 2, '2000-09-05', '2000-09-06', 1594),
(66, 3, '2001-08-22', '2001-08-25', 1694),
(67, 5, '2003-09-05', '2003-09-06', 895),
(68, 1, '2003-07-20', '2003-07-21', 1112),
(69, 2, '2001-03-13', '2001-03-15', 1595),
(70, 3, '2007-04-25', '2007-04-28', 352),
(71, 3, '2002-06-23', '2002-06-29', 1242),
(72, 5, '2000-07-17', '2000-07-19', 670),
(73, 2, '2004-04-16', '2004-04-18', 1177),
(74, 3, '2002-06-02', '2002-06-03', 1475),
(75, 1, '2007-04-26', '2007-05-01', 1828),
(76, 2, '2009-09-20', '2009-10-02', 1527),
(77, 1, '2006-02-12', '2006-02-20', 1143),
(78, 3, '2009-03-09', '2009-03-14', 1071),
(79, 5, '2010-04-03', NULL, 654),
(80, 1, '2003-02-16', NULL, 1930),
(81, 1, '2007-04-23', NULL, 1536),
(82, 5, '2001-08-12', NULL, 1741),
(83, 5, '2008-04-06', NULL, 1136),
(84, 4, '2002-03-19', '2002-03-21', 1224),
(85, 5, '2003-02-06', '2003-02-07', 1471),
(86, 2, '2001-08-05', '2001-08-07', 527),
(87, 1, '2001-08-20', '2001-08-22', 236),
(88, 2, '2005-03-09', '2005-03-12', 189),
(89, 2, '2003-12-11', '2003-12-15', 911),
(90, 3, '2010-09-22', '2010-09-25', 947),
(91, 4, '2001-09-13', '2001-09-16', 1271),
(92, 5, '2007-09-07', '2007-09-09', 1775),
(93, 3, '2004-05-24', '2004-05-27', 1887),
(94, 3, '2006-12-23', '2006-12-25', 1238),
(95, 5, '2004-02-28', '2004-02-29', 1689),
(96, 4, '2000-03-08', '2000-03-10', 259),
(97, 5, '2005-08-21', '2005-08-25', 190),
(98, 4, '2007-06-13', '2007-06-18', 1867),
(99, 1, '2004-11-24', '2004-11-27', 1289),
(100, 3, '2007-07-02', '2007-07-05', 1971),
(101, 3, '2003-04-09', '2003-04-10', 1263),
(102, 3, '2007-03-24', '2007-04-05', 1142),
(103, 5, '2007-10-20', '2007-10-22', 846),
(104, 3, '2003-01-15', '2003-01-19', 923),
(105, 3, '2001-08-13', '2001-08-16', 1082),
(106, 1, '2008-11-11', '2008-11-15', 254),
(107, 2, '2001-01-06', '2001-01-10', 355),
(108, 1, '2004-12-26', '2005-01-04', 1194),
(109, 4, '2004-07-27', '2004-07-31', 386),
(110, 5, '2002-05-01', '2002-05-02', 1510),
(111, 5, '2002-07-07', '2002-07-10', 1440),
(112, 1, '2004-12-24', '2004-12-27', 1685),
(113, 5, '2007-08-26', '2007-08-30', 150),
(114, 2, '2000-02-19', '2000-02-20', 1729),
(115, 1, '2006-09-28', '2006-09-29', 1486),
(116, 5, '2006-08-03', '2006-08-04', 565),
(117, 4, '2005-10-28', '2005-10-29', 1360),
(118, 4, '2000-09-15', '2000-09-21', 764),
(119, 2, '2003-09-06', '2003-09-11', 1561),
(120, 1, '2007-11-18', '2007-11-20', 427),
(121, 3, '2008-11-09', '2008-11-11', 846),
(122, 2, '2002-04-26', '2002-04-30', 308),
(123, 4, '2000-07-18', '2000-07-20', 938),
(124, 4, '2000-05-13', '2000-05-15', 1933),
(125, 4, '2001-08-06', '2001-08-10', 104),
(126, 4, '2007-01-22', '2007-01-24', 1179),
(127, 3, '2000-12-05', '2000-12-12', 921),
(128, 4, '2005-03-10', '2005-03-11', 710),
(129, 1, '2007-10-27', '2007-11-03', 690),
(130, 5, '2006-05-20', '2006-05-23', 1743),
(131, 2, '2001-06-28', '2001-07-09', 1808),
(132, 3, '2004-02-22', '2004-02-26', 1753),
(133, 2, '2007-01-17', '2007-01-18', 1887),
(134, 5, '2007-09-22', '2007-09-23', 1446),
(135, 2, '2010-03-12', '2010-03-13', 1931),
(136, 4, '2009-02-17', '2009-02-22', 556),
(137, 3, '2002-06-27', '2002-06-29', 665),
(138, 3, '2002-03-02', '2002-03-04', 1542),
(139, 1, '2006-05-26', '2006-05-30', 1659),
(140, 5, '2001-10-07', '2001-10-10', 992),
(141, 2, '2008-03-13', '2008-03-14', 1467),
(142, 1, '2001-05-17', '2001-05-20', 1140),
(143, 3, '2008-09-16', '2008-09-20', 891),
(144, 4, '2004-03-14', '2004-03-15', 1112),
(145, 2, '2005-11-01', '2005-11-09', 1228),
(146, 4, '2006-08-26', NULL, 1036),
(147, 1, '2008-01-25', NULL, 322),
(148, 3, '2002-12-12', NULL, 1082),
(149, 4, '2000-02-14', NULL, 1685),
(150, 1, '2003-01-04', NULL, 846),
(151, 3, '2002-02-26', NULL, 1390),
(152, 1, '2003-05-11', NULL, 555),
(153, 5, '2001-04-11', NULL, 1732),
(154, 4, '2003-05-14', NULL, 1893),
(155, 3, '2000-02-18', NULL, 116),
(156, 5, '2008-10-10', NULL, 1794),
(157, 5, '2005-03-17', NULL, 754),
(158, 3, '2005-04-02', NULL, 950),
(159, 5, '2010-11-15', NULL, 1915),
(160, 4, '2007-06-22', NULL, 1173),
(161, 1, '2003-07-10', NULL, 263),
(162, 4, '2009-08-26', NULL, 1064),
(163, 4, '2002-05-16', NULL, 981),
(164, 4, '2005-01-05', NULL, 1011),
(165, 5, '2002-06-12', NULL, 686),
(166, 2, '2004-05-08', NULL, 430),
(167, 5, '2000-05-07', NULL, 914),
(168, 5, '2008-11-15', NULL, 1556),
(169, 2, '2001-06-14', NULL, 187),
(170, 1, '2003-11-23', NULL, 1470),
(171, 5, '2009-10-27', NULL, 1855),
(172, 2, '2000-05-17', NULL, 490),
(173, 1, '2003-05-14', NULL, 546),
(174, 1, '2000-06-16', NULL, 1669),
(175, 1, '2009-01-08', NULL, 338),
(176, 1, '2003-12-28', NULL, 1787),
(177, 2, '2004-02-21', NULL, 1471),
(178, 3, '2007-09-16', NULL, 1871),
(179, 1, '2009-12-04', NULL, 428),
(180, 3, '2007-11-21', NULL, 1980),
(181, 5, '2004-02-26', NULL, 1149),
(182, 3, '2002-04-27', NULL, 1507),
(183, 1, '2009-06-17', NULL, 1449),
(184, 2, '2006-07-08', NULL, 1384),
(185, 5, '2009-10-09', NULL, 1782),
(186, 2, '2003-10-13', NULL, 1977),
(187, 2, '2010-10-28', NULL, 1313),
(188, 4, '2008-04-02', NULL, 1099),
(189, 4, '2007-01-28', NULL, 1032),
(190, 3, '2008-05-10', NULL, 808),
(191, 5, '2006-10-09', NULL, 374),
(192, 3, '2008-03-10', NULL, 1579),
(193, 5, '2000-01-04', NULL, 1302),
(194, 5, '2010-03-02', NULL, 1146),
(195, 4, '2003-05-11', NULL, 899),
(196, 4, '2004-12-15', NULL, 870),
(197, 4, '2007-02-01', NULL, 1119),
(198, 5, '2000-10-28', NULL, 1148),
(199, 2, '2000-10-07', NULL, 1263),
(200, 3, '2008-07-24', NULL, 471);

-- --------------------------------------------------------

--
-- Struttura della tabella `Tappi`
--

CREATE TABLE `Tappi` (
  `Id` int(11) NOT NULL,
  `Forma` varchar(190) DEFAULT NULL,
  `Materiale` varchar(190) DEFAULT NULL,
  `Quantita` int(11) DEFAULT NULL,
  `Fornitore` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Tappi`
--

INSERT INTO `Tappi` (`Id`, `Forma`, `Materiale`, `Quantita`, `Fornitore`) VALUES
(1, 'Fungo', 'Sughero', 1639, '68438593223'),
(2, 'Rondellato', 'Sughero', 9944, '98134702039'),
(3, 'Rondellato', 'Plastica', 4178, '50372489437'),
(4, 'Vite', 'metallo', 4943, '80687294957'),
(5, 'Rondellato', 'Vetro', 2897, '93192822911');

-- --------------------------------------------------------

--
-- Struttura della tabella `TemiVino`
--

CREATE TABLE `TemiVino` (
  `Vino` varchar(190) NOT NULL,
  `Evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `TemiVino`
--

INSERT INTO `TemiVino` (`Vino`, `Evento`) VALUES
('Corbara', 30),
('Gutturnio', 15),
('Gutturnio', 28),
('Irno', 9),
('Ruffino', 22),
('Tramonti', 12),
('Ussolaro', 13),
('Ussolaro', 20),
('Verdiso', 30),
('Vezzano', 29);

-- --------------------------------------------------------

--
-- Struttura della tabella `TipiUva`
--

CREATE TABLE `TipiUva` (
  `Nome` varchar(190) NOT NULL,
  `Colore` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `TipiUva`
--

INSERT INTO `TipiUva` (`Nome`, `Colore`) VALUES
('Cardinale', 'Nero'),
('Charlie', 'Nero'),
('Demeter', 'Bianco'),
('Favore', 'Rosso'),
('Lydia', 'Rosso'),
('Nina', 'Rosso'),
('Perle di Saba', 'Bianco'),
('Sofia', 'Rosso'),
('Tason', 'Giallo'),
('Ukrainka', 'Rosa');

-- --------------------------------------------------------

--
-- Struttura della tabella `Turni`
--

CREATE TABLE `Turni` (
  `Dipendente` varchar(16) NOT NULL,
  `InizioTurno` datetime NOT NULL,
  `FineTurno` datetime NOT NULL,
  `LineaProduttiva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Turni`
--

INSERT INTO `Turni` (`Dipendente`, `InizioTurno`, `FineTurno`, `LineaProduttiva`) VALUES
('1013434220619035', '2019-10-20 12:30:24', '2019-10-20 21:31:04', 6),
('1013434220619035', '2019-10-21 06:54:51', '2019-10-21 15:16:17', 2),
('1013434220619035', '2019-10-23 12:08:11', '2019-10-23 21:24:21', 6),
('1013434220619035', '2019-10-24 06:11:06', '2019-10-24 15:54:41', 2),
('1381537753713443', '2019-10-23 06:16:38', '2019-10-23 15:40:34', 1),
('1381537753713443', '2019-10-24 06:21:28', '2019-10-24 15:22:17', 4),
('1960374235792456', '2019-10-20 12:38:38', '2019-10-20 21:46:20', 3),
('1960374235792456', '2019-10-23 12:10:21', '2019-10-23 21:22:30', 2),
('2077727937224817', '2019-10-22 12:50:26', '2019-10-22 21:39:57', 3),
('2077727937224817', '2019-10-23 12:57:09', '2019-10-23 21:27:02', 1),
('2077727937224817', '2019-10-24 12:59:07', '2019-10-24 21:54:32', 3),
('2137239448629138', '2019-10-22 06:33:47', '2019-10-22 15:25:46', 3),
('2223765222996174', '2019-10-20 12:02:16', '2019-10-20 21:05:53', 6),
('2223765222996174', '2019-10-24 06:57:42', '2019-10-24 15:48:55', 2),
('2276852400932009', '2019-10-20 12:15:24', '2019-10-20 21:00:10', 6),
('2293965865210543', '2019-10-21 06:29:27', '2019-10-21 15:44:54', 5),
('2293965865210543', '2019-10-22 12:51:44', '2019-10-22 21:35:03', 3),
('2317633520051872', '2019-10-20 12:52:01', '2019-10-20 21:50:56', 6),
('2317633520051872', '2019-10-21 12:36:48', '2019-10-21 21:57:15', 5),
('2317633520051872', '2019-10-23 06:37:44', '2019-10-23 15:09:39', 5),
('2317633520051872', '2019-10-24 06:37:09', '2019-10-24 15:25:11', 3),
('2328223935673762', '2019-10-22 06:16:52', '2019-10-22 15:03:00', 4),
('2328223935673762', '2019-10-24 12:29:08', '2019-10-24 21:12:18', 1),
('2455319125488814', '2019-10-20 12:27:45', '2019-10-20 21:37:37', 4),
('2455319125488814', '2019-10-21 12:53:50', '2019-10-21 21:22:05', 4),
('2455319125488814', '2019-10-23 06:06:52', '2019-10-23 15:26:56', 1),
('2455319125488814', '2019-10-24 06:26:04', '2019-10-24 15:35:19', 6),
('2480438817420409', '2019-10-21 06:47:44', '2019-10-21 15:34:04', 6),
('2480438817420409', '2019-10-24 06:04:59', '2019-10-24 15:41:20', 2),
('2485106861310395', '2019-10-20 12:24:11', '2019-10-20 21:25:23', 3),
('2485106861310395', '2019-10-22 12:05:39', '2019-10-22 21:55:03', 6),
('2485106861310395', '2019-10-23 12:46:59', '2019-10-23 21:59:50', 2),
('2485106861310395', '2019-10-24 12:30:22', '2019-10-24 21:36:11', 6),
('2487732140018372', '2019-10-20 12:21:00', '2019-10-20 21:57:52', 1),
('2487732140018372', '2019-10-24 12:50:34', '2019-10-24 21:00:45', 3),
('2679311619230526', '2019-10-22 06:37:38', '2019-10-22 15:43:28', 3),
('2753973761830893', '2019-10-20 12:58:47', '2019-10-20 21:07:26', 3),
('2753973761830893', '2019-10-21 12:57:52', '2019-10-21 21:08:44', 6),
('2753973761830893', '2019-10-22 06:17:20', '2019-10-22 15:50:51', 4),
('2753973761830893', '2019-10-24 06:49:28', '2019-10-24 15:01:23', 4),
('2891604629252377', '2019-10-21 06:16:32', '2019-10-21 15:44:49', 3),
('2915003288081997', '2019-10-20 12:32:02', '2019-10-20 21:07:51', 2),
('2915003288081997', '2019-10-21 06:43:52', '2019-10-21 15:45:45', 5),
('2915003288081997', '2019-10-23 06:29:53', '2019-10-23 15:07:46', 1),
('2915003288081997', '2019-10-24 06:08:11', '2019-10-24 15:18:02', 4),
('3027006815233269', '2019-10-20 06:01:54', '2019-10-20 15:31:23', 5),
('3120907610315308', '2019-10-20 06:51:56', '2019-10-20 15:25:02', 3),
('3120907610315308', '2019-10-21 06:36:06', '2019-10-21 15:54:19', 5),
('3120907610315308', '2019-10-23 06:45:58', '2019-10-23 15:46:02', 4),
('3245695612629995', '2019-10-22 12:39:12', '2019-10-22 21:54:02', 6),
('3245695612629995', '2019-10-23 06:33:30', '2019-10-23 15:15:03', 2),
('3338525794980959', '2019-10-20 06:55:01', '2019-10-20 15:12:26', 6),
('3338525794980959', '2019-10-22 06:40:36', '2019-10-22 15:01:53', 3),
('3338525794980959', '2019-10-23 12:13:03', '2019-10-23 21:25:06', 1),
('3338525794980959', '2019-10-24 06:06:24', '2019-10-24 15:59:20', 4),
('3433980433518461', '2019-10-20 06:15:07', '2019-10-20 15:37:23', 3),
('3433980433518461', '2019-10-21 12:06:38', '2019-10-21 21:32:07', 3),
('3433980433518461', '2019-10-23 06:55:13', '2019-10-23 15:03:27', 3),
('3448486193165981', '2019-10-21 12:25:13', '2019-10-21 21:35:44', 1),
('3448486193165981', '2019-10-24 06:47:17', '2019-10-24 15:19:46', 5),
('3517680265459629', '2019-10-23 06:33:20', '2019-10-23 15:50:41', 6),
('3636454043099290', '2019-10-20 12:15:54', '2019-10-20 21:06:05', 4),
('3636454043099290', '2019-10-21 06:52:37', '2019-10-21 15:05:18', 6),
('3636454043099290', '2019-10-23 06:02:14', '2019-10-23 15:29:18', 1),
('3752669038620118', '2019-10-22 06:53:40', '2019-10-22 15:44:16', 4),
('3752669038620118', '2019-10-23 06:18:31', '2019-10-23 15:20:08', 1),
('3774025139063718', '2019-10-21 06:24:42', '2019-10-21 15:51:21', 4),
('3774025139063718', '2019-10-24 12:47:47', '2019-10-24 21:12:02', 6),
('3993916252502469', '2019-10-20 12:41:03', '2019-10-20 21:54:09', 4),
('3993916252502469', '2019-10-23 06:07:25', '2019-10-23 15:26:27', 1),
('4139389581288432', '2019-10-20 12:36:07', '2019-10-20 21:09:23', 3),
('4139389581288432', '2019-10-23 12:38:55', '2019-10-23 21:46:02', 5),
('4150190736140990', '2019-10-21 12:43:57', '2019-10-21 21:26:51', 3),
('4150190736140990', '2019-10-24 06:02:43', '2019-10-24 15:01:23', 4),
('4218661661290687', '2019-10-20 06:37:56', '2019-10-20 15:22:03', 1),
('4218661661290687', '2019-10-21 12:44:22', '2019-10-21 21:29:30', 2),
('4218661661290687', '2019-10-22 06:34:31', '2019-10-22 15:58:40', 4),
('4218661661290687', '2019-10-23 12:18:28', '2019-10-23 21:07:20', 1),
('4230396305753748', '2019-10-20 12:53:48', '2019-10-20 21:27:55', 6),
('4230396305753748', '2019-10-21 12:20:21', '2019-10-21 21:05:42', 4),
('4230396305753748', '2019-10-22 06:45:29', '2019-10-22 15:07:49', 5),
('4396104097665407', '2019-10-21 12:07:33', '2019-10-21 21:46:04', 3),
('4396104097665407', '2019-10-22 06:06:11', '2019-10-22 15:14:40', 2),
('4396104097665407', '2019-10-23 06:17:04', '2019-10-23 15:29:22', 2),
('4396424888016696', '2019-10-21 12:24:16', '2019-10-21 21:39:55', 1),
('4396424888016696', '2019-10-23 06:05:20', '2019-10-23 15:58:13', 3),
('4403702588022043', '2019-10-20 06:22:01', '2019-10-20 15:21:01', 2),
('4403702588022043', '2019-10-22 12:26:25', '2019-10-22 21:04:45', 4),
('4403702588022043', '2019-10-24 06:22:04', '2019-10-24 15:40:46', 3),
('4511427461055965', '2019-10-20 12:02:04', '2019-10-20 21:22:36', 4),
('4567329622339251', '2019-10-21 06:21:07', '2019-10-21 15:19:10', 1),
('4567329622339251', '2019-10-23 12:40:48', '2019-10-23 21:30:40', 1),
('4567329622339251', '2019-10-24 12:46:33', '2019-10-24 21:22:23', 4),
('4608141143774318', '2019-10-21 06:52:53', '2019-10-21 15:32:53', 6),
('4608141143774318', '2019-10-23 06:25:10', '2019-10-23 15:51:50', 1),
('4608141143774318', '2019-10-24 06:24:10', '2019-10-24 15:48:10', 6),
('4697477669615590', '2019-10-22 06:57:12', '2019-10-22 15:24:39', 5),
('4697477669615590', '2019-10-23 06:13:22', '2019-10-23 15:59:09', 6),
('4741213049682931', '2019-10-20 12:58:10', '2019-10-20 21:53:29', 5),
('4741213049682931', '2019-10-21 06:11:04', '2019-10-21 15:49:35', 3),
('4741213049682931', '2019-10-24 12:09:36', '2019-10-24 21:49:41', 6),
('4803724411531419', '2019-10-20 06:25:26', '2019-10-20 15:48:40', 1),
('4803724411531419', '2019-10-21 06:40:50', '2019-10-21 15:22:16', 5),
('4803724411531419', '2019-10-24 12:19:18', '2019-10-24 21:55:06', 6),
('4852638948317467', '2019-10-20 12:27:22', '2019-10-20 21:17:10', 2),
('4868689557394904', '2019-10-21 06:30:55', '2019-10-21 15:35:04', 1),
('4868689557394904', '2019-10-22 06:08:38', '2019-10-22 15:45:33', 3),
('4868689557394904', '2019-10-23 12:51:31', '2019-10-23 21:44:41', 5),
('4999913052769009', '2019-10-20 12:59:51', '2019-10-20 21:01:34', 2),
('4999913052769009', '2019-10-22 06:51:27', '2019-10-22 15:07:21', 5),
('4999913052769009', '2019-10-23 12:51:31', '2019-10-23 21:15:04', 2),
('4999913052769009', '2019-10-24 06:24:35', '2019-10-24 15:53:23', 2),
('5196056974546384', '2019-10-22 06:55:38', '2019-10-22 15:14:15', 2),
('5196056974546384', '2019-10-23 06:30:23', '2019-10-23 15:04:47', 3),
('5196056974546384', '2019-10-24 06:57:27', '2019-10-24 15:28:47', 3),
('5347367672304511', '2019-10-20 06:16:58', '2019-10-20 15:56:06', 3),
('5347367672304511', '2019-10-22 06:28:56', '2019-10-22 15:48:06', 1),
('5347367672304511', '2019-10-23 06:42:24', '2019-10-23 15:41:35', 1),
('5369178801082115', '2019-10-20 06:04:23', '2019-10-20 15:54:39', 6),
('5369178801082115', '2019-10-21 06:42:47', '2019-10-21 15:43:52', 2),
('5369178801082115', '2019-10-22 12:35:13', '2019-10-22 21:26:55', 3),
('5369178801082115', '2019-10-23 06:57:05', '2019-10-23 15:01:03', 6),
('5369178801082115', '2019-10-24 12:30:51', '2019-10-24 21:57:51', 4),
('5415702359117925', '2019-10-20 12:57:10', '2019-10-20 21:24:38', 3),
('5415702359117925', '2019-10-21 06:51:19', '2019-10-21 15:51:53', 1),
('5415702359117925', '2019-10-22 06:34:35', '2019-10-22 15:30:21', 2),
('5415702359117925', '2019-10-23 12:46:21', '2019-10-23 21:06:12', 3),
('5469651034458670', '2019-10-20 06:00:29', '2019-10-20 15:12:04', 6),
('5469651034458670', '2019-10-21 06:42:31', '2019-10-21 15:16:56', 4),
('5469651034458670', '2019-10-22 12:22:42', '2019-10-22 21:47:00', 6),
('5469651034458670', '2019-10-23 06:13:57', '2019-10-23 15:28:00', 6),
('5469651034458670', '2019-10-24 06:47:00', '2019-10-24 15:35:29', 3),
('5568020893250070', '2019-10-20 06:43:32', '2019-10-20 15:57:00', 6),
('5568020893250070', '2019-10-21 06:08:01', '2019-10-21 15:46:29', 3),
('5568020893250070', '2019-10-23 12:45:51', '2019-10-23 21:35:25', 5),
('5568020893250070', '2019-10-24 06:17:12', '2019-10-24 15:01:50', 3),
('5673383480806896', '2019-10-21 12:38:53', '2019-10-21 21:05:57', 2),
('5673383480806896', '2019-10-23 06:30:57', '2019-10-23 15:39:14', 4),
('5673383480806896', '2019-10-24 06:54:38', '2019-10-24 15:51:05', 6),
('5720827150719192', '2019-10-21 12:15:34', '2019-10-21 21:07:43', 2),
('5720827150719192', '2019-10-23 06:06:21', '2019-10-23 15:35:18', 6),
('5720827150719192', '2019-10-24 06:00:50', '2019-10-24 15:35:21', 5),
('5728908152392130', '2019-10-21 12:51:22', '2019-10-21 21:57:43', 1),
('5804801506966712', '2019-10-20 12:48:27', '2019-10-20 21:03:17', 3),
('5804801506966712', '2019-10-21 06:37:54', '2019-10-21 15:11:04', 3),
('5804801506966712', '2019-10-24 06:27:28', '2019-10-24 15:54:35', 4),
('5829148907148442', '2019-10-22 06:36:23', '2019-10-22 15:54:49', 4),
('6114614869090860', '2019-10-21 12:51:52', '2019-10-21 21:32:48', 4),
('6114614869090860', '2019-10-24 12:24:43', '2019-10-24 21:23:10', 1),
('6192422535429477', '2019-10-20 06:46:58', '2019-10-20 15:22:55', 4),
('6192422535429477', '2019-10-21 12:07:12', '2019-10-21 21:01:12', 3),
('6192422535429477', '2019-10-23 12:13:47', '2019-10-23 21:39:42', 5),
('6239588849645286', '2019-10-21 06:25:28', '2019-10-21 15:02:38', 6),
('6239588849645286', '2019-10-22 06:03:07', '2019-10-22 15:53:41', 6),
('6239588849645286', '2019-10-23 06:41:56', '2019-10-23 15:36:19', 5),
('6310865063405342', '2019-10-20 06:24:56', '2019-10-20 15:11:32', 2),
('6310865063405342', '2019-10-24 06:33:27', '2019-10-24 15:39:45', 1),
('6337260322246448', '2019-10-20 06:41:52', '2019-10-20 15:41:32', 5),
('6337260322246448', '2019-10-21 12:57:56', '2019-10-21 21:13:15', 4),
('6337260322246448', '2019-10-23 06:48:30', '2019-10-23 15:07:34', 1),
('6535112762611768', '2019-10-22 06:59:10', '2019-10-22 15:04:11', 1),
('6535112762611768', '2019-10-23 06:31:18', '2019-10-23 15:06:05', 6),
('6535112762611768', '2019-10-24 06:05:15', '2019-10-24 15:46:33', 1),
('6565584349581894', '2019-10-20 12:41:11', '2019-10-20 21:09:16', 6),
('6565584349581894', '2019-10-22 06:38:22', '2019-10-22 15:47:22', 2),
('6565584349581894', '2019-10-24 12:48:05', '2019-10-24 21:21:06', 2),
('6822185620095516', '2019-10-23 06:45:10', '2019-10-23 15:45:24', 2),
('6863430699839482', '2019-10-21 06:39:32', '2019-10-21 15:58:19', 1),
('6863430699839482', '2019-10-23 06:47:17', '2019-10-23 15:24:31', 2),
('6946084288859162', '2019-10-21 12:02:38', '2019-10-21 21:30:12', 1),
('6946084288859162', '2019-10-23 06:13:26', '2019-10-23 15:49:20', 4),
('6946084288859162', '2019-10-24 06:54:22', '2019-10-24 15:16:14', 2),
('6976314212807459', '2019-10-21 06:59:42', '2019-10-21 15:57:16', 4),
('6976314212807459', '2019-10-23 12:32:16', '2019-10-23 21:03:52', 4),
('7262172596441694', '2019-10-20 06:32:12', '2019-10-20 15:14:49', 3),
('7262172596441694', '2019-10-21 06:51:50', '2019-10-21 15:25:13', 5),
('7425501400753756', '2019-10-20 12:52:44', '2019-10-20 21:00:12', 3),
('7425501400753756', '2019-10-21 12:00:38', '2019-10-21 21:39:37', 1),
('7425501400753756', '2019-10-24 12:09:28', '2019-10-24 21:25:07', 3),
('7435073643922558', '2019-10-22 12:14:05', '2019-10-22 21:32:22', 2),
('7435073643922558', '2019-10-24 06:54:00', '2019-10-24 15:40:31', 6),
('7524614508723081', '2019-10-20 12:18:57', '2019-10-20 21:00:04', 2),
('7524614508723081', '2019-10-23 12:25:56', '2019-10-23 21:08:04', 5),
('7524614508723081', '2019-10-24 12:23:53', '2019-10-24 21:37:53', 1),
('7575432453216282', '2019-10-21 12:38:27', '2019-10-21 21:19:58', 5),
('7575432453216282', '2019-10-23 12:08:26', '2019-10-23 21:24:44', 6),
('7575432453216282', '2019-10-24 12:47:25', '2019-10-24 21:34:55', 3),
('7610723435843567', '2019-10-22 12:44:58', '2019-10-22 21:45:23', 1),
('7681361712211111', '2019-10-24 12:03:33', '2019-10-24 21:24:38', 6),
('7779897512480822', '2019-10-21 12:55:08', '2019-10-21 21:30:54', 6),
('7779897512480822', '2019-10-22 06:41:53', '2019-10-22 15:19:34', 6),
('8148721728497327', '2019-10-20 12:08:59', '2019-10-20 21:03:50', 5),
('8148721728497327', '2019-10-21 12:22:43', '2019-10-21 21:55:00', 2),
('8148721728497327', '2019-10-22 12:52:01', '2019-10-22 21:24:36', 3),
('8148721728497327', '2019-10-23 12:03:04', '2019-10-23 21:51:56', 4),
('8164846354125222', '2019-10-20 12:18:30', '2019-10-20 21:53:32', 5),
('8164846354125222', '2019-10-22 06:46:00', '2019-10-22 15:49:15', 2),
('8164846354125222', '2019-10-24 12:55:33', '2019-10-24 21:06:00', 3),
('8244424488008854', '2019-10-20 12:22:27', '2019-10-20 21:34:02', 1),
('8244424488008854', '2019-10-22 06:05:47', '2019-10-22 15:41:51', 2),
('8244424488008854', '2019-10-23 06:06:47', '2019-10-23 15:22:52', 3),
('8294188648960155', '2019-10-21 06:26:29', '2019-10-21 15:00:22', 4),
('8294188648960155', '2019-10-24 12:19:04', '2019-10-24 21:17:42', 4),
('8308600785993792', '2019-10-21 12:30:15', '2019-10-21 21:21:30', 3),
('8308600785993792', '2019-10-22 12:42:46', '2019-10-22 21:37:38', 2),
('8308600785993792', '2019-10-23 06:38:32', '2019-10-23 15:01:54', 4),
('8396940121051054', '2019-10-23 12:52:27', '2019-10-23 21:40:02', 5),
('8486061080774805', '2019-10-20 12:11:16', '2019-10-20 21:31:09', 3),
('8486061080774805', '2019-10-21 12:20:31', '2019-10-21 21:36:02', 5),
('8486061080774805', '2019-10-22 12:19:17', '2019-10-22 21:40:06', 1),
('8486061080774805', '2019-10-23 06:11:08', '2019-10-23 15:43:56', 5),
('8505246802530648', '2019-10-23 12:44:43', '2019-10-23 21:42:24', 3),
('8505246802530648', '2019-10-24 06:22:39', '2019-10-24 15:09:22', 1),
('8530156167317144', '2019-10-20 12:52:53', '2019-10-20 21:19:40', 3),
('8530156167317144', '2019-10-22 12:21:31', '2019-10-22 21:39:44', 2),
('8530156167317144', '2019-10-24 12:09:30', '2019-10-24 21:15:02', 2),
('8601041431529522', '2019-10-20 12:30:25', '2019-10-20 21:03:52', 5),
('8601041431529522', '2019-10-21 06:33:21', '2019-10-21 15:48:43', 2),
('8601041431529522', '2019-10-24 12:21:25', '2019-10-24 21:35:22', 5),
('8703935763413583', '2019-10-20 12:12:44', '2019-10-20 21:42:52', 4),
('8703935763413583', '2019-10-22 06:51:17', '2019-10-22 15:34:30', 1),
('8703935763413583', '2019-10-23 12:54:40', '2019-10-23 21:28:10', 4),
('8763554918715981', '2019-10-21 12:27:51', '2019-10-21 21:11:11', 5),
('8763554918715981', '2019-10-23 06:32:52', '2019-10-23 15:05:37', 2),
('8791626944576787', '2019-10-20 12:54:10', '2019-10-20 21:34:15', 4),
('8791626944576787', '2019-10-21 06:16:13', '2019-10-21 15:17:37', 1),
('8791626944576787', '2019-10-24 12:54:50', '2019-10-24 21:12:29', 4),
('9173158280114929', '2019-10-23 12:48:59', '2019-10-23 21:12:28', 6),
('9173158280114929', '2019-10-24 06:42:33', '2019-10-24 15:24:12', 5),
('9190321605508069', '2019-10-23 06:32:42', '2019-10-23 15:17:01', 4),
('9190321605508069', '2019-10-24 12:10:44', '2019-10-24 21:38:14', 1),
('9202278899672787', '2019-10-20 12:18:45', '2019-10-20 21:10:57', 2),
('9202278899672787', '2019-10-22 12:26:28', '2019-10-22 21:30:34', 1),
('9278583151896578', '2019-10-24 06:50:37', '2019-10-24 15:55:20', 5),
('9339042240897420', '2019-10-20 12:25:30', '2019-10-20 21:20:50', 6),
('9339042240897420', '2019-10-21 12:23:04', '2019-10-21 21:34:16', 1),
('9339042240897420', '2019-10-22 06:54:56', '2019-10-22 15:53:01', 3),
('9339042240897420', '2019-10-24 12:12:04', '2019-10-24 21:53:10', 5),
('9352529591790993', '2019-10-20 06:35:55', '2019-10-20 15:42:48', 3),
('9352529591790993', '2019-10-21 12:40:01', '2019-10-21 21:57:52', 3),
('9352529591790993', '2019-10-24 12:23:33', '2019-10-24 21:39:27', 5),
('9655897791164901', '2019-10-20 12:55:45', '2019-10-20 21:29:13', 5),
('9899796553218757', '2019-10-21 12:59:08', '2019-10-21 21:24:53', 3),
('9899796553218757', '2019-10-23 12:23:58', '2019-10-23 21:15:25', 4),
('9994832010206615', '2019-10-21 06:42:33', '2019-10-21 15:57:58', 4),
('9994832010206615', '2019-10-22 12:28:58', '2019-10-22 21:27:38', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `Uva`
--

CREATE TABLE `Uva` (
  `Id` int(11) NOT NULL,
  `TipoUva` varchar(190) NOT NULL,
  `Fornitore` varchar(190) NOT NULL,
  `Annata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Uva`
--

INSERT INTO `Uva` (`Id`, `TipoUva`, `Fornitore`, `Annata`) VALUES
(1, 'Perle di Saba', '82811405174', 2015),
(2, 'Tason', '86364114568', 2015),
(3, 'Nina', '82811405174', 2015),
(4, 'Sofia', '63457627793', 2015),
(5, 'Nina', '10935062647', 2015),
(6, 'Lydia', '63852328799', 2015),
(7, 'Sofia', '63457627793', 2015),
(8, 'Cardinale', '63852328799', 2015),
(9, 'Perle di Saba', '10935062647', 2015),
(10, 'Tason', '63457627793', 2015),
(11, 'Nina', '82811405174', 2015),
(12, 'Lydia', '56881424359', 2015),
(13, 'Ukrainka', '86364114568', 2015),
(14, 'Perle di Saba', '63852328799', 2015),
(15, 'Favore', '86364114568', 2015),
(16, 'Cardinale', '93294559682', 2015),
(17, 'Demeter', '93294559682', 2015),
(18, 'Charlie', '93294559682', 2015),
(19, 'Favore', '82811405174', 2015),
(20, 'Demeter', '77167580326', 2015);

-- --------------------------------------------------------

--
-- Struttura della tabella `Vigneti`
--

CREATE TABLE `Vigneti` (
  `Id` int(11) NOT NULL,
  `Indirizzo` int(11) NOT NULL,
  `TipoUva` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Vigneti`
--

INSERT INTO `Vigneti` (`Id`, `Indirizzo`, `TipoUva`) VALUES
(1, 101, 'Cardinale'),
(2, 102, 'Charlie'),
(3, 103, 'Demeter'),
(4, 104, 'Favore'),
(5, 105, 'Lydia'),
(6, 106, 'Nina'),
(7, 107, 'Perle di Saba'),
(8, 108, 'Perle di Saba'),
(9, 109, 'Perle di Saba'),
(10, 110, 'Sofia'),
(11, 111, 'Sofia'),
(12, 112, 'Tason'),
(13, 113, 'Tason'),
(14, 114, 'Ukrainka'),
(15, 115, 'Ukrainka');

-- --------------------------------------------------------

--
-- Struttura della tabella `Vini`
--

CREATE TABLE `Vini` (
  `Nome` varchar(190) NOT NULL,
  `GradazioneAlcolica` tinyint(4) NOT NULL,
  `TempoFermentazione` tinyint(4) NOT NULL,
  `StatoProduzione` tinyint(1) NOT NULL,
  `Uva` int(11) NOT NULL,
  `Classificazione` enum('DOC','IGT','DOCG') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Vini`
--

INSERT INTO `Vini` (`Nome`, `GradazioneAlcolica`, `TempoFermentazione`, `StatoProduzione`, `Uva`, `Classificazione`) VALUES
('Cannonau', 20, 39, 1, 9, 'DOC'),
('Cellatica', 11, 31, 0, 9, NULL),
('Corbara', 17, 35, 1, 13, NULL),
('Correggio', 11, 32, 0, 19, 'DOC'),
('Garitta', 14, 38, 1, 6, NULL),
('Gutturnio', 15, 32, 0, 11, NULL),
('Irno', 13, 36, 1, 18, NULL),
('Lagosta', 19, 40, 0, 3, NULL),
('Limassina', 10, 30, 0, 6, NULL),
('Mandrolisai', 17, 37, 0, 7, 'DOCG'),
('Marinasco', 17, 40, 1, 5, 'DOCG'),
('Marsicano', 11, 35, 1, 12, 'IGT'),
('Mascali', 15, 32, 0, 3, NULL),
('Nebbiolo', 11, 39, 1, 13, NULL),
('Ninfeo', 12, 38, 0, 14, NULL),
('Novaline', 16, 40, 1, 6, NULL),
('Paci', 11, 40, 1, 18, NULL),
('Palizzi', 20, 38, 0, 18, 'IGT'),
('Partinico', 17, 30, 0, 7, NULL),
('Passito', 11, 40, 1, 9, NULL),
('Rossese', 13, 40, 1, 18, NULL),
('Rubicchio', 12, 31, 1, 5, 'IGT'),
('Ruffino', 15, 36, 0, 18, NULL),
('Sassella', 16, 38, 1, 3, NULL),
('Scandiano', 17, 37, 1, 14, NULL),
('Solichiata', 15, 38, 0, 11, NULL),
('Tarantino', 14, 30, 0, 8, 'IGT'),
('Terralba', 16, 32, 0, 12, 'DOC'),
('Tiferno', 11, 39, 0, 4, NULL),
('Tramonti', 20, 32, 0, 11, 'IGT'),
('Ussolaro', 19, 31, 1, 4, 'DOCG'),
('Verdiso', 13, 31, 1, 6, 'IGT'),
('Verici', 15, 39, 0, 16, NULL),
('Vezzano', 12, 34, 1, 17, NULL),
('Vino32', 17, 36, 1, 12, NULL),
('Vino34', 17, 33, 1, 17, NULL),
('Vino35', 10, 39, 0, 5, 'DOC'),
('Vino38', 13, 36, 0, 13, 'DOC'),
('Vino39', 15, 38, 1, 2, NULL),
('Zucco', 17, 32, 1, 10, 'DOC');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Acquirenti`
--
ALTER TABLE `Acquirenti`
  ADD PRIMARY KEY (`Id`);

--
-- Indici per le tabelle `Aziende`
--
ALTER TABLE `Aziende`
  ADD PRIMARY KEY (`PartitaIVA`),
  ADD KEY `NumAcquirente` (`NumAcquirente`),
  ADD KEY `InformazioniAggiuntive` (`InformazioniAggiuntive`);

--
-- Indici per le tabelle `Bottiglie`
--
ALTER TABLE `Bottiglie`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Capacita` (`Capacita`,`Colore`),
  ADD KEY `Fornitore` (`Fornitore`);

--
-- Indici per le tabelle `BottiglieDiVino`
--
ALTER TABLE `BottiglieDiVino`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Vino` (`Vino`,`Annata`),
  ADD KEY `IdTappo` (`IdTappo`),
  ADD KEY `IdBottiglia` (`IdBottiglia`),
  ADD KEY `IdMagazzino` (`IdMagazzino`);

--
-- Indici per le tabelle `Corrieri`
--
ALTER TABLE `Corrieri`
  ADD PRIMARY KEY (`Id`);

--
-- Indici per le tabelle `Dettagli`
--
ALTER TABLE `Dettagli`
  ADD PRIMARY KEY (`Ordine`,`BottigliaDiVino`),
  ADD KEY `BottigliaDiVino` (`BottigliaDiVino`);

--
-- Indici per le tabelle `Dipendenti`
--
ALTER TABLE `Dipendenti`
  ADD PRIMARY KEY (`CodiceFiscale`),
  ADD KEY `Referente` (`Referente`),
  ADD KEY `idx_dipendenti` (`CodiceFiscale`);

--
-- Indici per le tabelle `Eventi`
--
ALTER TABLE `Eventi`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Titolo` (`Titolo`,`Edizione`);

--
-- Indici per le tabelle `Fornitori`
--
ALTER TABLE `Fornitori`
  ADD PRIMARY KEY (`Id`);

--
-- Indici per le tabelle `FornituraBottiglie`
--
ALTER TABLE `FornituraBottiglie`
  ADD PRIMARY KEY (`Bottiglia`,`DataAcquisto`);

--
-- Indici per le tabelle `FornituraTappi`
--
ALTER TABLE `FornituraTappi`
  ADD PRIMARY KEY (`Tappo`,`DataAcquisto`);

--
-- Indici per le tabelle `FornituraUva`
--
ALTER TABLE `FornituraUva`
  ADD PRIMARY KEY (`Uva`,`DataAcquisto`);

--
-- Indici per le tabelle `Indirizzi`
--
ALTER TABLE `Indirizzi`
  ADD PRIMARY KEY (`Id`);

--
-- Indici per le tabelle `Informazioni`
--
ALTER TABLE `Informazioni`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Indirizzo` (`Indirizzo`);

--
-- Indici per le tabelle `LineeProduttive`
--
ALTER TABLE `LineeProduttive`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Direttore` (`Direttore`);

--
-- Indici per le tabelle `Macchinari`
--
ALTER TABLE `Macchinari`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `LineaProduttiva` (`LineaProduttiva`);

--
-- Indici per le tabelle `Manutenzioni`
--
ALTER TABLE `Manutenzioni`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Macchinario` (`Macchinario`),
  ADD KEY `Azienda` (`Azienda`);

--
-- Indici per le tabelle `NegoziInterni`
--
ALTER TABLE `NegoziInterni`
  ADD PRIMARY KEY (`Id`);

--
-- Indici per le tabelle `Ordini`
--
ALTER TABLE `Ordini`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Acquirente` (`Acquirente`);

--
-- Indici per le tabelle `Ospita`
--
ALTER TABLE `Ospita`
  ADD PRIMARY KEY (`Evento`,`Negozio`),
  ADD KEY `Negozio` (`Negozio`);

--
-- Indici per le tabelle `Privati`
--
ALTER TABLE `Privati`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `InformazioniAggiuntive` (`InformazioniAggiuntive`);

--
-- Indici per le tabelle `Spedizioni`
--
ALTER TABLE `Spedizioni`
  ADD PRIMARY KEY (`Ordine`,`Corriere`),
  ADD KEY `Corriere` (`Corriere`);

--
-- Indici per le tabelle `Tappi`
--
ALTER TABLE `Tappi`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Forma` (`Forma`,`Materiale`),
  ADD KEY `Fornitore` (`Fornitore`);

--
-- Indici per le tabelle `TemiVino`
--
ALTER TABLE `TemiVino`
  ADD PRIMARY KEY (`Vino`,`Evento`),
  ADD KEY `Evento` (`Evento`);

--
-- Indici per le tabelle `TipiUva`
--
ALTER TABLE `TipiUva`
  ADD PRIMARY KEY (`Nome`);

--
-- Indici per le tabelle `Turni`
--
ALTER TABLE `Turni`
  ADD PRIMARY KEY (`Dipendente`,`InizioTurno`),
  ADD KEY `LineaProduttiva` (`LineaProduttiva`);

--
-- Indici per le tabelle `Uva`
--
ALTER TABLE `Uva`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Fornitore` (`Fornitore`),
  ADD KEY `TipoUva` (`TipoUva`);

--
-- Indici per le tabelle `Vigneti`
--
ALTER TABLE `Vigneti`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Indirizzo` (`Indirizzo`),
  ADD KEY `TipoUva` (`TipoUva`);

--
-- Indici per le tabelle `Vini`
--
ALTER TABLE `Vini`
  ADD PRIMARY KEY (`Nome`),
  ADD KEY `Uva` (`Uva`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Acquirenti`
--
ALTER TABLE `Acquirenti`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT per la tabella `Bottiglie`
--
ALTER TABLE `Bottiglie`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `BottiglieDiVino`
--
ALTER TABLE `BottiglieDiVino`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT per la tabella `Corrieri`
--
ALTER TABLE `Corrieri`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `Eventi`
--
ALTER TABLE `Eventi`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT per la tabella `Indirizzi`
--
ALTER TABLE `Indirizzi`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT per la tabella `Informazioni`
--
ALTER TABLE `Informazioni`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT per la tabella `LineeProduttive`
--
ALTER TABLE `LineeProduttive`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `Macchinari`
--
ALTER TABLE `Macchinari`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT per la tabella `Manutenzioni`
--
ALTER TABLE `Manutenzioni`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT per la tabella `Ordini`
--
ALTER TABLE `Ordini`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT per la tabella `Tappi`
--
ALTER TABLE `Tappi`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `Uva`
--
ALTER TABLE `Uva`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT per la tabella `Vigneti`
--
ALTER TABLE `Vigneti`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Aziende`
--
ALTER TABLE `Aziende`
  ADD CONSTRAINT `Aziende_ibfk_1` FOREIGN KEY (`NumAcquirente`) REFERENCES `Acquirenti` (`Id`),
  ADD CONSTRAINT `Aziende_ibfk_2` FOREIGN KEY (`InformazioniAggiuntive`) REFERENCES `Informazioni` (`Id`);

--
-- Limiti per la tabella `Bottiglie`
--
ALTER TABLE `Bottiglie`
  ADD CONSTRAINT `Bottiglie_ibfk_1` FOREIGN KEY (`Fornitore`) REFERENCES `Fornitori` (`Id`);

--
-- Limiti per la tabella `BottiglieDiVino`
--
ALTER TABLE `BottiglieDiVino`
  ADD CONSTRAINT `BottiglieDiVino_ibfk_1` FOREIGN KEY (`Vino`) REFERENCES `Vini` (`Nome`),
  ADD CONSTRAINT `BottiglieDiVino_ibfk_2` FOREIGN KEY (`IdTappo`) REFERENCES `Tappi` (`Id`),
  ADD CONSTRAINT `BottiglieDiVino_ibfk_3` FOREIGN KEY (`IdBottiglia`) REFERENCES `Bottiglie` (`Id`),
  ADD CONSTRAINT `BottiglieDiVino_ibfk_4` FOREIGN KEY (`IdMagazzino`) REFERENCES `LineeProduttive` (`Id`);

--
-- Limiti per la tabella `Dettagli`
--
ALTER TABLE `Dettagli`
  ADD CONSTRAINT `Dettagli_ibfk_1` FOREIGN KEY (`Ordine`) REFERENCES `Ordini` (`Id`),
  ADD CONSTRAINT `Dettagli_ibfk_2` FOREIGN KEY (`BottigliaDiVino`) REFERENCES `BottiglieDiVino` (`Id`);

--
-- Limiti per la tabella `Dipendenti`
--
ALTER TABLE `Dipendenti`
  ADD CONSTRAINT `Dipendenti_ibfk_1` FOREIGN KEY (`Referente`) REFERENCES `Dipendenti` (`CodiceFiscale`);

--
-- Limiti per la tabella `Fornitori`
--
ALTER TABLE `Fornitori`
  ADD CONSTRAINT `Fornitori_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `Aziende` (`PartitaIVA`);

--
-- Limiti per la tabella `FornituraBottiglie`
--
ALTER TABLE `FornituraBottiglie`
  ADD CONSTRAINT `FornituraBottiglie_ibfk_1` FOREIGN KEY (`Bottiglia`) REFERENCES `Bottiglie` (`Id`);

--
-- Limiti per la tabella `FornituraTappi`
--
ALTER TABLE `FornituraTappi`
  ADD CONSTRAINT `FornituraTappi_ibfk_1` FOREIGN KEY (`Tappo`) REFERENCES `Tappi` (`Id`);

--
-- Limiti per la tabella `FornituraUva`
--
ALTER TABLE `FornituraUva`
  ADD CONSTRAINT `FornituraUva_ibfk_1` FOREIGN KEY (`Uva`) REFERENCES `Uva` (`Id`);

--
-- Limiti per la tabella `Informazioni`
--
ALTER TABLE `Informazioni`
  ADD CONSTRAINT `Informazioni_ibfk_1` FOREIGN KEY (`Indirizzo`) REFERENCES `Indirizzi` (`Id`);

--
-- Limiti per la tabella `LineeProduttive`
--
ALTER TABLE `LineeProduttive`
  ADD CONSTRAINT `LineeProduttive_ibfk_1` FOREIGN KEY (`Direttore`) REFERENCES `Dipendenti` (`CodiceFiscale`);

--
-- Limiti per la tabella `Macchinari`
--
ALTER TABLE `Macchinari`
  ADD CONSTRAINT `Macchinari_ibfk_1` FOREIGN KEY (`LineaProduttiva`) REFERENCES `LineeProduttive` (`Id`);

--
-- Limiti per la tabella `Manutenzioni`
--
ALTER TABLE `Manutenzioni`
  ADD CONSTRAINT `Manutenzioni_ibfk_1` FOREIGN KEY (`Macchinario`) REFERENCES `Macchinari` (`Id`),
  ADD CONSTRAINT `Manutenzioni_ibfk_2` FOREIGN KEY (`Azienda`) REFERENCES `Aziende` (`PartitaIVA`);

--
-- Limiti per la tabella `NegoziInterni`
--
ALTER TABLE `NegoziInterni`
  ADD CONSTRAINT `NegoziInterni_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `Aziende` (`PartitaIVA`);

--
-- Limiti per la tabella `Ordini`
--
ALTER TABLE `Ordini`
  ADD CONSTRAINT `Ordini_ibfk_1` FOREIGN KEY (`Acquirente`) REFERENCES `Acquirenti` (`Id`);

--
-- Limiti per la tabella `Ospita`
--
ALTER TABLE `Ospita`
  ADD CONSTRAINT `Ospita_ibfk_1` FOREIGN KEY (`Evento`) REFERENCES `Eventi` (`Id`),
  ADD CONSTRAINT `Ospita_ibfk_2` FOREIGN KEY (`Negozio`) REFERENCES `NegoziInterni` (`Id`);

--
-- Limiti per la tabella `Privati`
--
ALTER TABLE `Privati`
  ADD CONSTRAINT `Privati_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `Acquirenti` (`Id`),
  ADD CONSTRAINT `Privati_ibfk_2` FOREIGN KEY (`InformazioniAggiuntive`) REFERENCES `Informazioni` (`Id`);

--
-- Limiti per la tabella `Spedizioni`
--
ALTER TABLE `Spedizioni`
  ADD CONSTRAINT `Spedizioni_ibfk_1` FOREIGN KEY (`Ordine`) REFERENCES `Ordini` (`Id`),
  ADD CONSTRAINT `Spedizioni_ibfk_2` FOREIGN KEY (`Corriere`) REFERENCES `Corrieri` (`Id`);

--
-- Limiti per la tabella `Tappi`
--
ALTER TABLE `Tappi`
  ADD CONSTRAINT `Tappi_ibfk_1` FOREIGN KEY (`Fornitore`) REFERENCES `Fornitori` (`Id`);

--
-- Limiti per la tabella `TemiVino`
--
ALTER TABLE `TemiVino`
  ADD CONSTRAINT `TemiVino_ibfk_1` FOREIGN KEY (`Vino`) REFERENCES `Vini` (`Nome`),
  ADD CONSTRAINT `TemiVino_ibfk_2` FOREIGN KEY (`Evento`) REFERENCES `Eventi` (`Id`);

--
-- Limiti per la tabella `Turni`
--
ALTER TABLE `Turni`
  ADD CONSTRAINT `Turni_ibfk_1` FOREIGN KEY (`Dipendente`) REFERENCES `Dipendenti` (`CodiceFiscale`),
  ADD CONSTRAINT `Turni_ibfk_2` FOREIGN KEY (`LineaProduttiva`) REFERENCES `LineeProduttive` (`Id`);

--
-- Limiti per la tabella `Uva`
--
ALTER TABLE `Uva`
  ADD CONSTRAINT `Uva_ibfk_1` FOREIGN KEY (`Fornitore`) REFERENCES `Fornitori` (`Id`),
  ADD CONSTRAINT `Uva_ibfk_2` FOREIGN KEY (`TipoUva`) REFERENCES `TipiUva` (`Nome`);

--
-- Limiti per la tabella `Vigneti`
--
ALTER TABLE `Vigneti`
  ADD CONSTRAINT `Vigneti_ibfk_1` FOREIGN KEY (`Indirizzo`) REFERENCES `Indirizzi` (`Id`),
  ADD CONSTRAINT `Vigneti_ibfk_2` FOREIGN KEY (`TipoUva`) REFERENCES `TipiUva` (`Nome`);

--
-- Limiti per la tabella `Vini`
--
ALTER TABLE `Vini`
  ADD CONSTRAINT `Vini_ibfk_1` FOREIGN KEY (`Uva`) REFERENCES `Uva` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;








/*QUERY 1
 Stampa resoconto settimanale fatturato.

SELECT
	SUM(Ordini.PrezzoTotale)
FROM
	Ordini
WHERe
	Ordini.Data <= CURRENT_TIMESTAMP
	AND Ordini.Data >= DATE_ADD(CURRENT_TIMESTAMP, INTERVAL -7 DAY);


QUERY 2
 Bottiglia/e di vino più venduta/e dell'anno 2019 con la relativa quantità.
Inizialmente viene creata una vista per definire le bottiglie vendute nell'anno 2019

CREATE VIEW OrdineQuantita AS
SELECT 
	Vini.Nome, SUM(Dettagli.QuantitaBottiglie) AS BottiglieVendute
FROM 
	Dettagli, BottiglieDiVino, Vini, Ordini
WHERE
	Dettagli.BottigliaDiVino = BottiglieDiVino.Id
	AND Vini.Nome = BottiglieDiVino.Vino
	AND DATE_FORMAT(Ordini.Data, '%Y') = '2019'
	AND Ordini.Id = Dettagli.Ordine
GROUP BY
	Dettagli.BottigliaDiVino;


SELECT 
	OrdineQuantita.Nome, OrdineQuantita.BottiglieVendute
FROM
	OrdineQuantita
WHERE 
	OrdineQuantita.BottiglieVendute IN (
	SELECT 
		MAX(OrdineQuantita.BottiglieVendute)
	FROM 
		OrdineQuantita);
    

QUERY 3
 Lista dei vini prodotti con la relativa tipologia di uva utilizzata e il fornitore di quest'ultima.
SELECT DISTINCT
	Vini.Nome AS Vino,
	Uva.TipoUva as TipoUva,
	Informazioni.Nome as Fornitore
FROM
	Vini,
	Uva,
	Informazioni,
	Aziende
WHERE
	Vini.Uva = Uva.Id
	AND Uva.Fornitore = Aziende.PartitaIVA
	AND Aziende.InformazioniAggiuntive = Informazioni.Id;




QUERY 4
     Lista dei dipendenti (ordinati in ordine alfabetico) che sono supervisori di altri dipendenti
SELECT
    DISTINCT D1.Nome,
    D1.Cognome
FROM
    Dipendenti as D1,
    Dipendenti as D2
WHERE
    D2.Referente = D1.CodiceFiscale
ORDER BY
    D1.Nome,
    D1.Cognome;




QUERY 5
 Lista dei dipendenti (nome, cognome), con inizio e fine turno, 
 ordinati in modo decrescente sull'inizio del turno,
 che sono a lavorare il giorno 22 ottobre 2019
SELECT
    D.Nome,
    D.cognome,
    T.InizioTurno,
    T.FineTurno
FROM
    Dipendenti as D,
    Turni as T
WHERE
    T.Dipendente = D.CodiceFiscale
    AND DATE_FORMAT(T.InizioTurno, '%Y-%m-%d') = '2019-10-22'
ORDER BY
    T.InizioTurno DESC;




QUERY 6
 Lista degli acquirenti che hanno acquistato il maggiore valore (Prezzo) di bottiglie di vino dalla nostra cantina.
Viene creata una vista che identifica le spese totali per ogni singolo acquirente

CREATE VIEW SpeseTotali AS
SELECT
    Ordini.Acquirente,
    SUM(Ordini.PrezzoTotale) AS SpesaTotale
FROM
    Ordini
GROUP BY
    Ordini.Acquirente;

SELECT
    SpeseTotali.Acquirente,
    SpeseTotali.SpesaTotale
FROM
    SpeseTotali
WHERE
    SpeseTotali.SpesaTotale IN (
        SELECT
            MAX(SpeseTotali.SpesaTotale)
        FROM
            SpeseTotali
    );*/
