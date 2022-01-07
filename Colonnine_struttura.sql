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

-- --------------------------------------------------------

--
-- Struttura della tabella `Area_di_Sosta`
--

CREATE TABLE `Area_di_Sosta` (
  `ID_Area_di_Sosta` int NOT NULL,
  `Nazione` varchar(3) NOT NULL,
  `Comune` varchar(64) NOT NULL,
  `Location` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `Colonnina_Elettrica`
--

CREATE TABLE `Colonnina_Elettrica` (
  `ID_Colonnina` int NOT NULL,
  `Tipologia` varchar(12) NOT NULL,
  `Disponibilità` tinyint(1) NOT NULL DEFAULT '1',
  `ID_Area_di_Sosta` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `Dipendente`
--

CREATE TABLE `Dipendente` (
  `ID_Dipendente` int NOT NULL,
  `Nome` varchar(64) NOT NULL,
  `Cognome` varchar(64) NOT NULL,
  `Codice_Fiscale` varchar(64) NOT NULL,
  `Categoria` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Ruolo` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Data_Assunzione` date NOT NULL,
  `Staff` int DEFAULT NULL,
  `Preferenza_Area` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `Prenotazione`
--

CREATE TABLE `Prenotazione` (
  `ID_Prenotazione` int NOT NULL,
  `Data_Inserimento` date NOT NULL,
  `Data_Prenotazione` date NOT NULL,
  `ID_Area_di_Sosta` int NOT NULL,
  `ID_Utente` int NOT NULL,
  `Tariffa Tot.` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `Prenotazione_Targhe`
--

CREATE TABLE `Prenotazione_Targhe` (
  `Targhe` varchar(16) NOT NULL,
  `ID_Prenotazione` int NOT NULL,
  `TipoCol` varchar(12) NOT NULL DEFAULT 'NORMAL',
  `kWh` float DEFAULT NULL,
  `Tariffa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `Presenze`
--

CREATE TABLE `Presenze` (
  `Data_presenza` date NOT NULL,
  `ID_Area_di_Sosta` int DEFAULT NULL,
  `ID_Dipendente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `Utente`
--

CREATE TABLE `Utente` (
  `ID_Utente` int NOT NULL,
  `Nome` varchar(64) NOT NULL,
  `Cognome` varchar(64) NOT NULL,
  `Codice_Fiscale` varchar(64) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Numero_di_Carta` varchar(16) NOT NULL,
  `Scadenza` date NOT NULL,
  `Titolare` varchar(64) NOT NULL,
  `Via` varchar(64) NOT NULL,
  `Numero` int NOT NULL,
  `Città` varchar(64) NOT NULL,
  `CAP` int NOT NULL,
  `Feedback` varchar(255) DEFAULT NULL,
  `Username` varchar(64) NOT NULL,
  `Pwd` varchar(128) NOT NULL,
  `Data_iscrizione` date NOT NULL,
  `Data_ultimo_accesso` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `Utente_Targhe`
--

CREATE TABLE `Utente_Targhe` (
  `Targhe` varchar(16) NOT NULL,
  `ID_Utente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Area_di_Sosta`
--
ALTER TABLE `Area_di_Sosta`
  ADD PRIMARY KEY (`ID_Area_di_Sosta`);

--
-- Indici per le tabelle `Colonnina_Elettrica`
--
ALTER TABLE `Colonnina_Elettrica`
  ADD PRIMARY KEY (`ID_Colonnina`),
  ADD KEY `ID_Area_di_Sosta` (`ID_Area_di_Sosta`);

--
-- Indici per le tabelle `Dipendente`
--
ALTER TABLE `Dipendente`
  ADD PRIMARY KEY (`ID_Dipendente`);

--
-- Indici per le tabelle `Prenotazione`
--
ALTER TABLE `Prenotazione`
  ADD PRIMARY KEY (`ID_Prenotazione`),
  ADD KEY `ID_Area_di_Sosta` (`ID_Area_di_Sosta`),
  ADD KEY `ID_Utente` (`ID_Utente`);

--
-- Indici per le tabelle `Prenotazione_Targhe`
--
ALTER TABLE `Prenotazione_Targhe`
  ADD PRIMARY KEY (`Targhe`,`ID_Prenotazione`),
  ADD KEY `ID_Prenotazione` (`ID_Prenotazione`);

--
-- Indici per le tabelle `Presenze`
--
ALTER TABLE `Presenze`
  ADD PRIMARY KEY (`Data_presenza`,`ID_Dipendente`),
  ADD KEY `ID_Area_di_Sosta` (`ID_Area_di_Sosta`),
  ADD KEY `ID_Dipendente` (`ID_Dipendente`);

--
-- Indici per le tabelle `Utente`
--
ALTER TABLE `Utente`
  ADD PRIMARY KEY (`ID_Utente`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indici per le tabelle `Utente_Targhe`
--
ALTER TABLE `Utente_Targhe`
  ADD PRIMARY KEY (`Targhe`),
  ADD KEY `ID_Utente` (`ID_Utente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Area_di_Sosta`
--
ALTER TABLE `Area_di_Sosta`
  MODIFY `ID_Area_di_Sosta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT per la tabella `Colonnina_Elettrica`
--
ALTER TABLE `Colonnina_Elettrica`
  MODIFY `ID_Colonnina` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT per la tabella `Dipendente`
--
ALTER TABLE `Dipendente`
  MODIFY `ID_Dipendente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT per la tabella `Prenotazione`
--
ALTER TABLE `Prenotazione`
  MODIFY `ID_Prenotazione` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT per la tabella `Utente`
--
ALTER TABLE `Utente`
  MODIFY `ID_Utente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Colonnina_Elettrica`
--
ALTER TABLE `Colonnina_Elettrica`
  ADD CONSTRAINT `Colonnina_Elettrica_ibfk_1` FOREIGN KEY (`ID_Area_di_Sosta`) REFERENCES `Area_di_Sosta` (`ID_Area_di_Sosta`);

--
-- Limiti per la tabella `Prenotazione`
--
ALTER TABLE `Prenotazione`
  ADD CONSTRAINT `Prenotazione_ibfk_1` FOREIGN KEY (`ID_Area_di_Sosta`) REFERENCES `Area_di_Sosta` (`ID_Area_di_Sosta`),
  ADD CONSTRAINT `Prenotazione_ibfk_2` FOREIGN KEY (`ID_Utente`) REFERENCES `Utente` (`ID_Utente`);

--
-- Limiti per la tabella `Prenotazione_Targhe`
--
ALTER TABLE `Prenotazione_Targhe`
  ADD CONSTRAINT `Prenotazione_Targhe_ibfk_1` FOREIGN KEY (`ID_Prenotazione`) REFERENCES `Prenotazione` (`ID_Prenotazione`);

--
-- Limiti per la tabella `Presenze`
--
ALTER TABLE `Presenze`
  ADD CONSTRAINT `Presenze_ibfk_1` FOREIGN KEY (`ID_Area_di_Sosta`) REFERENCES `Area_di_Sosta` (`ID_Area_di_Sosta`),
  ADD CONSTRAINT `Presenze_ibfk_2` FOREIGN KEY (`ID_Dipendente`) REFERENCES `Dipendente` (`ID_Dipendente`);

--
-- Limiti per la tabella `Utente_Targhe`
--
ALTER TABLE `Utente_Targhe`
  ADD CONSTRAINT `Utente_Targhe_ibfk_1` FOREIGN KEY (`ID_Utente`) REFERENCES `Utente` (`ID_Utente`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
