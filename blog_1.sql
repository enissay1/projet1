-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 11 Octobre 2021 à 02:45
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `blog_1`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `create_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `user_id_id` int(11) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `creat_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E669D86650F` (`user_id_id`),
  KEY `IDX_23A0E66A21214B7` (`categories_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `description`, `image`, `published`, `create_at`, `user_id_id`, `categories_id`, `creat_at`) VALUES
(1, 'yassine', 'man can be destroy but never defaited', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Fontaine_marocaine_aix-les-bains.jpg/240px-Fontaine_marocaine_aix-les-bains.jpg', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(2, 'othman', 'no one nno body', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Fontaine_marocaine_aix-les-bains.jpg/240px-Fontaine_marocaine_aix-les-bains.jpg', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(3, 'othman', 'no one nno body', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Fontaine_marocaine_aix-les-bains.jpg/240px-Fontaine_marocaine_aix-les-bains.jpg', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(4, 'howa', 'howa hoo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Fontaine_marocaine_aix-les-bains.jpg/240px-Fontaine_marocaine_aix-les-bains.jpg', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(5, 'fz', 'ghobacha', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Fontaine_marocaine_aix-les-bains.jpg/240px-Fontaine_marocaine_aix-les-bains.jpg', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `create_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `user_id_id` int(11) DEFAULT NULL,
  `article_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C9D86650F` (`user_id_id`),
  KEY `IDX_9474526C8F3EC46` (`article_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210916153308', '2021-09-16 17:35:35', 397),
('DoctrineMigrations\\Version20210922095915', '2021-09-22 12:00:20', 2716),
('DoctrineMigrations\\Version20210922104332', '2021-09-22 12:43:45', 9187),
('DoctrineMigrations\\Version20210922165725', '2021-09-22 18:57:37', 1857),
('DoctrineMigrations\\Version20210926175937', '2021-09-26 20:00:12', 2258),
('DoctrineMigrations\\Version20210928135002', '2021-09-28 15:51:08', 3486),
('DoctrineMigrations\\Version20210928223228', '2021-09-29 00:33:16', 763),
('DoctrineMigrations\\Version20210930172753', '2021-09-30 19:28:17', 2437),
('DoctrineMigrations\\Version20211007093211', '2021-10-07 11:32:52', 6075);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `password`, `username`, `roles`, `token`, `email`, `create_at`, `enabled`) VALUES
(12, '$2y$13$ioBGxGUzrIOSq0aPZHFaCu9Qhr8f9yKbFwqpLR1PbyPqeRIql85RC', 'yassine', '["ROLES_USER"]', 'GZzaKaimUcpZCplFeUE5ugi-gMY1gheFhsTgVRFfZsI', 'yas@gmail.com', '2021-10-04 04:17:31', NULL),
(17, '$2y$13$v/CII06hziq9fPuHKqMd2.vnR1YNeY5tvrye99Wh6t3PQcb2Yx3W6', 'othman', '["ROLES_USER"]', NULL, 'wores34208@decorbuz.com', '2021-10-07 12:06:03', 1),
(18, '$2y$13$bY7z6BqJr03DUZkrxw7Mt.ZfKsEPP4YtVHMt4S/wuSfsALknwroeu', 'coco', '["ROLES_USER"]', NULL, 'yas@gmail.com', '2021-10-07 12:09:38', 1);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E669D86650F` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_23A0E66A21214B7` FOREIGN KEY (`categories_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C8F3EC46` FOREIGN KEY (`article_id_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_9474526C9D86650F` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
