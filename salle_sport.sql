-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 03 Février 2022 à 19:21
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `salle_sport`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE IF NOT EXISTS `adherent` (
  `id_adherent` int(11) NOT NULL AUTO_INCREMENT,
  `nom_adherent` varchar(25) NOT NULL,
  `prenom_adherent` varchar(25) DEFAULT NULL,
  `mail_adherent` varchar(60) NOT NULL,
  `adresse_adherent` varchar(255) DEFAULT NULL,
  `telephone_adherent` varchar(60) NOT NULL,
  `date_naissance_adherent` date DEFAULT NULL,
  PRIMARY KEY (`id_adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Vider la table avant d'insérer `adherent`
--

TRUNCATE TABLE `adherent`;
--
-- Contenu de la table `adherent`
--

INSERT INTO `adherent` (`id_adherent`, `nom_adherent`, `prenom_adherent`, `mail_adherent`, `adresse_adherent`, `telephone_adherent`, `date_naissance_adherent`) VALUES
(3, 'hatim', 'hafsa', 'hafsa@gmail.com', '20 ssss Casablanca', '02254858', '2003-03-04'),
(5, 'dsfd', NULL, 'qdsfqds@qdsfdsq', 'dssdf', '05458787', '2022-02-01');

-- --------------------------------------------------------

--
-- Structure de la table `coach`
--

CREATE TABLE IF NOT EXISTS `coach` (
  `id_coach` int(11) NOT NULL,
  `nom_coach` varchar(255) NOT NULL,
  `prenom_coach` varchar(255) NOT NULL,
  `adresse_coach` varchar(255) NOT NULL,
  `email_coach` varchar(255) NOT NULL,
  `telephone_coach` varchar(60) NOT NULL,
  PRIMARY KEY (`id_coach`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `coach`
--

TRUNCATE TABLE `coach`;
--
-- Contenu de la table `coach`
--

INSERT INTO `coach` (`id_coach`, `nom_coach`, `prenom_coach`, `adresse_coach`, `email_coach`, `telephone_coach`) VALUES
(1, 'fabr', 'David', '45 sss sssss', 'hhh@gmail.com', '01254548');

-- --------------------------------------------------------

--
-- Structure de la table `cour`
--

CREATE TABLE IF NOT EXISTS `cour` (
  `id_cour` int(11) NOT NULL,
  `nom_cour` varchar(255) NOT NULL,
  `id_coach` int(11) NOT NULL,
  `date_animation_cour` date NOT NULL,
  PRIMARY KEY (`id_cour`),
  UNIQUE KEY `id_coach` (`id_coach`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `cour`
--

TRUNCATE TABLE `cour`;
--
-- Contenu de la table `cour`
--

INSERT INTO `cour` (`id_cour`, `nom_cour`, `id_coach`, `date_animation_cour`) VALUES
(1, 'renforcement musculaire', 1, '2022-02-04');

-- --------------------------------------------------------

--
-- Structure de la table `receptionniste`
--

CREATE TABLE IF NOT EXISTS `receptionniste` (
  `id_recep` int(11) NOT NULL AUTO_INCREMENT,
  `identifiant_recep` varchar(256) NOT NULL,
  `nom_recep` varchar(60) NOT NULL,
  `prenom_recep` varchar(60) NOT NULL,
  `password_recep` varchar(256) NOT NULL,
  `mail_recep` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_recep`),
  UNIQUE KEY `identifiant_recep` (`identifiant_recep`,`password_recep`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Vider la table avant d'insérer `receptionniste`
--

TRUNCATE TABLE `receptionniste`;
--
-- Contenu de la table `receptionniste`
--

INSERT INTO `receptionniste` (`id_recep`, `identifiant_recep`, `nom_recep`, `prenom_recep`, `password_recep`, `mail_recep`) VALUES
(1, 'helloWorld', 'hello', 'world', '12345!', 'hello_world@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id_reservation` int(11) NOT NULL,
  `date_reservation` date NOT NULL,
  `nbr_heure_reservation` int(11) NOT NULL,
  `id_adherent` int(11) NOT NULL,
  `id_cour` int(11) NOT NULL,
  PRIMARY KEY (`id_reservation`),
  UNIQUE KEY `id_cour` (`id_cour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `reservation`
--

TRUNCATE TABLE `reservation`;
--
-- Contenu de la table `reservation`
--

INSERT INTO `reservation` (`id_reservation`, `date_reservation`, `nbr_heure_reservation`, `id_adherent`, `id_cour`) VALUES
(1, '2022-02-01', 2, 3, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
