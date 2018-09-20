-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 18 Septembre 2018 à 14:32
-- Version du serveur :  5.7.23-0ubuntu0.16.04.1
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `minichat`
--

-- --------------------------------------------------------

--
-- Structure de la table `Exo_minichat`
--

CREATE TABLE `Exo_minichat` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Exo_minichat`
--

INSERT INTO `Exo_minichat` (`id`, `pseudo`, `message`) VALUES
(1, 'Test', 'test'),
(2, 'Test', 'dfghj'),
(3, 'Test', 'Bonjour !'),
(4, 'qsdfghj', 'test'),
(5, 'Test', 'qsdfghjkl'),
(6, 'Test', 'qsdfghjkl'),
(7, 'qsdfghj', 'Salut'),
(8, 'qsdfghj', 'Salut'),
(9, 'qsdfghj', 'Salut'),
(10, 'Dadouh', 'La congolexicomatisation des lois du marché'),
(11, 'Test', 'azertyuiop'),
(12, 'David lafarge', 'Eeeeeeeeh salut à tous les amiiiiis iiiciii c\\\'est david lafarge pokemon, j\\\'espère que VOUUUUS allez bien'),
(13, 'Miss Jirachi', 'COUCOU !'),
(14, 'xxxxxx', 'dddd');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Exo_minichat`
--
ALTER TABLE `Exo_minichat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Exo_minichat`
--
ALTER TABLE `Exo_minichat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
