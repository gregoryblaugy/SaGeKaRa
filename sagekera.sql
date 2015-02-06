-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 05 Février 2015 à 21:59
-- Version du serveur :  5.6.20
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `sagekera`
--

-- --------------------------------------------------------

--
-- Structure de la table `rf_user_formation`
--

CREATE TABLE IF NOT EXISTS `rf_user_formation` (
  `id_user` bigint(20) NOT NULL,
  `id_formation` bigint(20) NOT NULL,
  `start_formation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_formation`
--

CREATE TABLE IF NOT EXISTS `t_formation` (
`id_formation` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `duration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
`id_user` bigint(20) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci AUTO_INCREMENT=1 ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `rf_user_formation`
--
ALTER TABLE `rf_user_formation`
 ADD PRIMARY KEY (`id_user`,`id_formation`), ADD KEY `id_formation` (`id_formation`);

--
-- Index pour la table `t_formation`
--
ALTER TABLE `t_formation`
 ADD PRIMARY KEY (`id_formation`);

--
-- Index pour la table `t_user`
--
ALTER TABLE `t_user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_formation`
--
ALTER TABLE `t_formation`
MODIFY `id_formation` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
MODIFY `id_user` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `rf_user_formation`
--
ALTER TABLE `rf_user_formation`
ADD CONSTRAINT `rf_user_formation_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `rf_user_formation_ibfk_2` FOREIGN KEY (`id_formation`) REFERENCES `t_formation` (`id_formation`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
