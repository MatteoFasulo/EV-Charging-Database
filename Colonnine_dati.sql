-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 07, 2022 alle 18:01
-- Versione del server: 8.0.27
-- Versione PHP: 7.2.24-0ubuntu0.18.04.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Colonnine`
--

--
-- Dump dei dati per la tabella `Area_di_Sosta`
--

INSERT INTO `Area_di_Sosta` (`ID_Area_di_Sosta`, `Nazione`, `Comune`, `Location`) VALUES
(1, 'ITA', 'Abbasanta', '\0\0\0\0\0\0\0ﬂ	å?D@E˜%\'¢!@'),
(2, 'ITA', 'Arcevia', '\0\0\0\0\0\0\0ﬂ	å?D@E˜%\'¢!@'),
(3, 'MLT', 'Rabat', '\0\0\0\0\0\0\0çbπ•’A@≤Ö %Ã,@'),
(4, 'DEU', 'Barnim', '\0\0\0\0\0\0\0Ic¥é™jJ@<2Võˇ+@'),
(5, 'FRA', 'Parigi', '\0\0\0\0\0\0\0€•\rá•mH@%tóƒY—@'),
(6, 'ITA', 'Arluno', '\0\0\0\0\0\0\0\0¬,Y∫¿F@Ò`0$Ã·!@'),
(7, 'ITA', 'Besano', '\0\0\0\0\0\0\0?ú—†≤ÒF@ë%s,Ô∆!@'),
(8, 'ITA', 'Augusta', '\0\0\0\0\0\0\0¨·«=†B@p<DHÇq.@'),
(9, 'ITA', 'Passignano sul Trasimeno', '\0\0\0\0\0\0\0{·)?òE@pÇ S±D(@');

--
-- Dump dei dati per la tabella `Colonnina_Elettrica`
--

INSERT INTO `Colonnina_Elettrica` (`ID_Colonnina`, `Tipologia`, `Disponibilit√†`, `ID_Area_di_Sosta`) VALUES
(1, 'NORMAL', 0, 1),
(2, 'NORMAL', 1, 1),
(3, 'NORMAL', 1, 1),
(4, 'NORMAL', 1, 1),
(5, 'FAST', 1, 1),
(6, 'FAST', 1, 1),
(7, 'FAST', 1, 1),
(8, 'ULTRAFAST', 1, 1),
(9, 'ULTRAFAST', 1, 1),
(10, 'NORMAL', 1, 2),
(11, 'NORMAL', 1, 2),
(12, 'NORMAL', 1, 2),
(13, 'NORMAL', 1, 2),
(14, 'FAST', 1, 2),
(15, 'FAST', 1, 2),
(16, 'FAST', 1, 2),
(17, 'FAST', 1, 2),
(18, 'ULTRAFAST', 1, 2),
(19, 'ULTRAFAST', 1, 2),
(20, 'NORMAL', 1, 3),
(21, 'NORMAL', 0, 3),
(22, 'NORMAL', 1, 3),
(23, 'NORMAL', 1, 3),
(24, 'FAST', 1, 3),
(25, 'FAST', 1, 3),
(26, 'FAST', 1, 3),
(27, 'FAST', 1, 3),
(28, 'FAST', 1, 3),
(29, 'ULTRAFAST', 1, 3),
(30, 'NORMAL', 1, 4),
(31, 'NORMAL', 1, 4),
(32, 'NORMAL', 1, 4),
(33, 'NORMAL', 1, 4),
(34, 'FAST', 1, 4),
(35, 'FAST', 1, 4),
(36, 'FAST', 1, 4),
(37, 'FAST', 1, 4),
(38, 'FAST', 1, 4),
(39, 'ULTRAFAST', 1, 4),
(40, 'NORMAL', 1, 5),
(41, 'NORMAL', 1, 5),
(42, 'NORMAL', 1, 5),
(43, 'NORMAL', 1, 5),
(44, 'FAST', 1, 5),
(45, 'FAST', 1, 5),
(46, 'FAST', 1, 5),
(47, 'FAST', 1, 5),
(48, 'FAST', 1, 5),
(49, 'ULTRAFAST', 1, 5),
(50, 'NORMAL', 1, 6),
(51, 'NORMAL', 1, 6),
(52, 'NORMAL', 1, 6),
(53, 'ULTRAFAST', 1, 6),
(54, 'FAST', 1, 6),
(55, 'NORMAL', 1, 6),
(56, 'FAST', 1, 6),
(57, 'FAST', 1, 6),
(58, 'FAST', 1, 6),
(59, 'ULTRAFAST', 1, 6),
(60, 'NORMAL', 1, 7),
(61, 'NORMAL', 1, 7),
(62, 'NORMAL', 1, 7),
(63, 'NORMAL', 1, 7),
(64, 'NORMAL', 1, 7),
(65, 'NORMAL', 1, 7),
(66, 'NORMAL', 1, 7),
(67, 'FAST', 1, 7),
(68, 'FAST', 1, 7),
(69, 'ULTRAFAST', 1, 7),
(70, 'NORMAL', 1, 8),
(71, 'NORMAL', 1, 8),
(72, 'ULTRAFAST', 1, 8),
(73, 'ULTRAFAST', 1, 8),
(74, 'FAST', 1, 8),
(75, 'ULTRAFAST', 1, 8),
(76, 'FAST', 1, 8),
(77, 'ULTRAFAST', 1, 8),
(78, 'FAST', 1, 8),
(79, 'ULTRAFAST', 1, 8);

--
-- Dump dei dati per la tabella `Dipendente`
--

INSERT INTO `Dipendente` (`ID_Dipendente`, `Nome`, `Cognome`, `Codice_Fiscale`, `Categoria`, `Ruolo`, `Data_Assunzione`, `Staff`, `Preferenza_Area`) VALUES
(1, 'Mario', 'Rossi', 'RSSMRA80A01H501U', 'Operaio', 'Spazzino', '2021-11-17', 1, 2),
(2, 'Luisa', 'Verdi', 'VRDLSU63H47B114O', 'Dirigente', 'Responsabile Laziale', '2021-08-25', NULL, NULL),
(3, 'Sergio', 'Nappi', 'SRGNPP00A01H501T', 'Quadro', 'Capo Staff', '2021-04-25', 2, 2),
(4, 'Marco', 'Carta', 'MRCCRT14R13L049W', 'Operaio', 'Manutenzione', '2021-06-12', 2, 1),
(5, 'Valerio', 'Alfieri', 'VLRLFR14R13F205J', 'Quadro', 'Capo Staff', '2021-05-19', 1, 2),
(6, 'Annalisa', 'Fiore Ferrara', 'NNLFRI08D07D548A', 'Impiegato', 'Help Desk', '2021-09-07', NULL, NULL),
(7, 'Giovanni', 'Pasticcio', 'PSTGNN67H06F205V', 'Operaio', 'Manutenzione', '2021-07-15', 1, 3),
(8, 'Luciano', 'Fallace', 'LCNFLC17S14H703T', 'Quadro', 'Capo Staff', '2021-09-20', 3, 2),
(9, 'Alberto', 'Mosca', 'LBRMSC10E10L120M', 'Impiegato', 'Help Desk', '2021-05-29', NULL, NULL),
(10, 'Eleonora', 'Macinte', 'MCNLNR94D12D612U', 'Operaio', 'Spazzino', '2021-10-03', 3, 2);

--
-- Dump dei dati per la tabella `Prenotazione`
--

INSERT INTO `Prenotazione` (`ID_Prenotazione`, `Data_Inserimento`, `Data_Prenotazione`, `ID_Area_di_Sosta`, `ID_Utente`, `Tariffa Tot.`) VALUES
(1, '2022-01-02', '2022-01-03', 2, 1, NULL),
(2, '2022-01-03', '2022-01-03', 1, 2, NULL),
(3, '2022-01-03', '2022-01-04', 2, 3, NULL),
(4, '2022-01-04', '2022-01-04', 2, 1, NULL),
(5, '2022-01-05', '2022-01-05', 2, 4, NULL),
(6, '2022-01-05', '2022-01-06', 1, 1, NULL),
(7, '2022-01-05', '2022-01-06', 2, 6, NULL),
(8, '2022-01-06', '2022-01-06', 3, 5, NULL),
(9, '2022-01-06', '2022-01-07', 2, 6, NULL),
(10, '2021-11-24', '2021-11-24', 3, 6, NULL),
(11, '2021-12-08', '2021-12-09', 6, 5, NULL),
(12, '2021-12-17', '2021-12-17', 8, 1, NULL),
(13, '2021-12-24', '2021-12-24', 4, 3, NULL),
(14, '2021-12-01', '2021-12-01', 1, 2, NULL),
(15, '2021-12-03', '2021-12-03', 6, 5, NULL),
(16, '2021-12-10', '2021-12-10', 7, 4, NULL),
(17, '2021-12-22', '2021-12-22', 3, 3, NULL),
(18, '2021-12-30', '2021-12-30', 5, 6, NULL);

--
-- Dump dei dati per la tabella `Prenotazione_Targhe`
--

INSERT INTO `Prenotazione_Targhe` (`Targhe`, `ID_Prenotazione`, `TipoCol`, `kWh`, `Tariffa`) VALUES
('AS02653', 11, 'NORMAL', 31.541, 11.46),
('AS098758', 2, 'ULTRAFAST', 48.65, 16),
('AS098758', 14, 'FAST', 52, 17.6),
('AS123DF', 7, 'NORMAL', 54.78, 18.43),
('AS123DF', 10, 'FAST', 15.584, 6.66),
('CS234QR', 1, 'NORMAL', 34.51, 12.35),
('CS234QR', 6, 'NORMAL', 18, 7.4),
('DG684033', 1, 'FAST', 56.846, 19.05),
('DG684033', 4, 'NORMAL', 32.84, 11.84),
('DG684033I', 12, 'NORMAL', NULL, 0),
('EF4291RP', 5, 'NORMAL', NULL, 0),
('EF4291RP', 16, 'NORMAL', 25.144, 9.54),
('EP654LM', 3, 'ULTRAFAST', 36.987, 13.09),
('EP654LM', 13, 'NORMAL', 20.51, 8.15),
('GB83640', 8, 'NORMAL', 24.694, 9.41),
('GB83640', 15, 'NORMAL', 30, 11),
('GV34785F', 9, 'NORMAL', 17.28, 7.18),
('GV34785F', 10, 'NORMAL', 29.6, 10.88),
('GV34785F', 18, 'NORMAL', 12.51, 5.87),
('VG623862', 3, 'NORMAL', 54.6, 18.38),
('VG623862', 17, 'NORMAL', 41.22, 14.31);

--
-- Dump dei dati per la tabella `Presenze`
--

INSERT INTO `Presenze` (`Data_presenza`, `ID_Area_di_Sosta`, `ID_Dipendente`) VALUES
('2021-11-12', NULL, 6),
('2021-11-14', NULL, 6),
('2021-11-15', NULL, 6),
('2021-12-18', NULL, 2),
('2021-12-19', NULL, 2),
('2021-12-20', NULL, 2),
('2021-12-22', NULL, 2),
('2021-12-27', NULL, 9),
('2021-12-28', NULL, 9),
('2021-12-29', NULL, 9),
('2021-12-30', NULL, 9),
('2022-01-03', NULL, 9),
('2022-01-04', NULL, 9),
('2021-11-09', 1, 5),
('2021-11-11', 1, 5),
('2021-11-12', 1, 5),
('2021-11-16', 1, 5),
('2021-12-08', 1, 1),
('2021-12-09', 1, 1),
('2021-12-11', 1, 1),
('2021-12-15', 1, 1),
('2021-12-17', 1, 1),
('2022-01-02', 1, 7),
('2022-01-04', 1, 7),
('2022-01-05', 1, 7),
('2021-11-10', 2, 5),
('2021-11-12', 2, 3),
('2021-11-13', 2, 3),
('2021-11-13', 2, 4),
('2021-11-14', 2, 3),
('2021-11-14', 2, 4),
('2021-11-16', 2, 4),
('2021-12-15', 2, 3),
('2021-12-16', 2, 1),
('2022-12-31', 2, 7),
('2021-12-27', 3, 8),
('2021-12-27', 3, 10),
('2021-12-28', 3, 10),
('2021-12-29', 3, 10),
('2021-12-30', 3, 10),
('2022-01-02', 3, 8),
('2022-01-04', 3, 10),
('2022-01-05', 3, 8),
('2022-01-06', 3, 8),
('2022-12-27', 3, 7),
('2022-12-28', 3, 7),
('2022-12-29', 3, 7);

--
-- Dump dei dati per la tabella `Utente`
--

INSERT INTO `Utente` (`ID_Utente`, `Nome`, `Cognome`, `Codice_Fiscale`, `Email`, `Numero_di_Carta`, `Scadenza`, `Titolare`, `Via`, `Numero`, `Citt√†`, `CAP`, `Feedback`, `Username`, `Pwd`, `Data_iscrizione`, `Data_ultimo_accesso`) VALUES
(1, 'Cassio', 'Panicucci', 'PNCCSS45C17C020S', 'CassioPanicucci@teleworm.us', '4485125908736334', '2024-01-31', 'Cassio Panicucci', 'Via Carlo Alberto', 47, 'Cassina Rizzardi', 22070, NULL, 'Cassio55', '225edfa608b8aab103f6ae4a9396f858cfd9af66', '2021-10-11', '2021-10-21 09:34:10'),
(2, 'Janina', 'Engel', 'JNNNGL44R48A952M', 'JaninaEngel@jourrapide.com', '4532497863930373', '2024-11-30', 'Janina Engel', 'Via Francesco Saverio Correra', 147, 'Beinette', 12081, NULL, 'Janette77', '25b71f3360724f5a7422696f99aeef6f3e0036b5', '2021-12-11', '2021-12-21 10:34:10'),
(3, 'Merigo', 'Nucci', 'MRGNCC59E06H501G', 'MerigoNucci@armyspy.com', '4556814420963633', '2025-12-31', 'Merigo Nucci', 'Via dei Serpenti', 148, 'Celle Macra', 12020, NULL, 'Asine1965', 'dad8b5dc4b20689e9e251119f6ff0214632aa5ec', '2021-11-11', '2021-12-15 03:34:00'),
(4, 'Matthew D.', 'Gregory', 'MTTGGR63E07C632C', 'MatthewDGregory@jourrapide.com', '4929195831800907', '2027-10-30', 'Matthew D. Gregory', 'Via Bernardino Rota', 56, 'Celle Macra', 12020, NULL, 'Hemed1979', '25b71f3360724f5a7422696f99aeef6f3e0036b5', '2021-11-11', '2021-12-15 03:34:00'),
(5, 'Dorotea', 'Li Fonti', 'LFNDRT67P07H982M', 'DoroteaLiFonti@rhyta.com', '5198806919412594', '2027-08-31', 'Dorotea LiFonti', 'Via Nuova del Campo', 111, 'Mergellina', 90070, 'Bellissimo servizio sono molto soddisfatta', 'Brinelition', '6ed18eab953b24e605a3499e2831acc317b30773', '2029-09-18', '2035-12-24 10:24:08'),
(6, 'Gastone', 'Lucciano', 'LCCGTN88M06D643D', 'GastoneLucciano@dayrep.com', '5574019119723653', '2025-11-06', 'Gastone Lucciano', 'Via Foria', 108, 'Foggia', 47024, NULL, 'Strent', '221185d6dd732328f2de233ed71ac75be5bd3c37', '2025-10-13', '2031-11-22 18:20:04');

--
-- Dump dei dati per la tabella `Utente_Targhe`
--

INSERT INTO `Utente_Targhe` (`Targhe`, `ID_Utente`) VALUES
('CS234QR', 1),
('DG684033', 1),
('AS098758', 2),
('EP654LM', 3),
('VG623862', 3),
('ZA411TV', 3),
('EF4291RP', 4),
('JZ13716', 4),
('AS02653', 5),
('GB83640', 5),
('AS123DF', 6),
('GV34785F', 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
