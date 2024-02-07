-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 07 fév. 2024 à 09:12
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `entreprise`
--
CREATE DATABASE IF NOT EXISTS `entreprise` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `entreprise`;

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `id_employes` int(3) NOT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `sexe` enum('m','f') NOT NULL,
  `service` varchar(30) DEFAULT NULL,
  `date_embauche` date DEFAULT NULL,
  `salaire` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id_employes`, `prenom`, `nom`, `sexe`, `service`, `date_embauche`, `salaire`) VALUES
(350, 'Jean-pierre', 'Laborde', 'm', 'direction', '1999-12-09', 5000),
(388, 'Clement', 'Gallet', 'm', 'commercial', '2000-01-15', 2300),
(415, 'Thomas', 'Winter', 'm', 'commercial', '2000-05-03', 3550),
(417, 'Chloe', 'Dubar', 'f', 'production', '2001-09-05', 1900),
(491, 'Elodie', 'Fellier', 'f', 'secretariat', '2002-02-22', 1600),
(509, 'Fabrice', 'Grand', 'm', 'comptabilite', '2003-02-20', 1900),
(547, 'Melanie', 'Collier', 'f', 'commercial', '2004-09-08', 3100),
(592, 'Laura', 'Blanchet', 'f', 'direction', '2005-06-09', 4500),
(627, 'Guillaume', 'Miller', 'm', 'commercial', '2006-07-02', 1900),
(655, 'Celine', 'Perrin', 'f', 'commercial', '2006-09-10', 2700),
(699, 'Julien', 'Cottet', 'm', 'secretariat', '2007-01-18', 1390),
(701, 'Mathieu', 'Vignal', 'm', 'informatique', '2008-12-03', 2000),
(739, 'Thierry', 'Desprez', 'm', 'secretariat', '2009-11-17', 1500),
(780, 'Amandine', 'Thoyer', 'f', 'communication', '2010-01-23', 1500),
(802, 'Damien', 'Durand', 'm', 'informatique', '2010-07-05', 2250),
(854, 'Daniel', 'Chevel', 'm', 'informatique', '2011-09-28', 1700),
(876, 'Nathalie', 'Martin', 'f', 'juridique', '2012-01-12', 3200),
(900, 'Benoit', 'Lagarde', 'm', 'production', '2013-01-03', 2550),
(933, 'Emilie', 'Sennard', 'f', 'commercial', '2014-09-11', 1800),
(990, 'Stephanie', 'Lafaye', 'f', 'assistant', '2015-06-02', 1775);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id_employes`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employes`
--
ALTER TABLE `employes`
  MODIFY `id_employes` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=991;
--
-- Base de données : `fav`
--
CREATE DATABASE IF NOT EXISTS `fav` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fav`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_cat` int(11) NOT NULL,
  `nom_cat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `nom_cat`) VALUES
(1, 'E-learning'),
(2, 'HTML'),
(3, 'CSS'),
(4, 'Maquette'),
(5, 'site/blog'),
(6, 'e-projet'),
(7, 'cheatsheet'),
(8, 'bootstrap'),
(9, 'support-pdf'),
(10, 'ressources/aides'),
(11, 'javascript'),
(12, 'wordpress'),
(13, 'outils'),
(14, 'video'),
(15, 'API');

-- --------------------------------------------------------

--
-- Structure de la table `cat_fav`
--

CREATE TABLE `cat_fav` (
  `id_fav` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cat_fav`
--

INSERT INTO `cat_fav` (`id_fav`, `id_cat`) VALUES
(1, 3),
(2, 2),
(2, 3),
(2, 5),
(3, 2),
(3, 3),
(3, 5),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(5, 5),
(6, 1),
(6, 2),
(6, 3),
(7, 2),
(7, 7),
(8, 3),
(8, 7),
(9, 5),
(9, 8),
(10, 1),
(10, 8),
(11, 7),
(11, 8),
(12, 9),
(12, 11),
(13, 7),
(14, 5),
(15, 5),
(15, 11),
(16, 5),
(16, 11),
(17, 7),
(17, 11),
(18, 1),
(18, 11),
(19, 1),
(19, 11),
(20, 1),
(21, 6),
(21, 10),
(21, 12),
(22, 10),
(22, 12),
(23, 10),
(23, 12),
(24, 14),
(24, 15),
(25, 1),
(25, 15),
(26, 13),
(26, 15),
(27, 5),
(27, 11),
(27, 15),
(28, 5),
(28, 11),
(28, 15),
(29, 11),
(29, 14),
(29, 15),
(30, 12),
(30, 14),
(30, 15);

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE `domaine` (
  `id_dom` int(11) NOT NULL,
  `nom_dom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `domaine`
--

INSERT INTO `domaine` (`id_dom`, `nom_dom`) VALUES
(1, 'Maquettage / Figma'),
(2, 'HTML-CSS'),
(3, 'Javascript'),
(4, 'WORDPRESS'),
(5, 'API'),
(6, 'BOOSTRAP');

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `id_fav` int(11) NOT NULL,
  `libelle` varchar(300) NOT NULL,
  `date_creation` date NOT NULL,
  `url` varchar(4000) NOT NULL,
  `id_dom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `favoris`
--

INSERT INTO `favoris` (`id_fav`, `libelle`, `date_creation`, `url`, `id_dom`) VALUES
(1, 'OpenClassRoom Maquette figma', '2024-01-16', 'https://openclassrooms.com/fr/courses/8242681-integrez-une-maquette-figma-en-html-css', 2),
(2, 'MSDN Début', '2024-01-17', 'https://developer.mozilla.org/fr/docs/Learn/Getting_started_with_the_web/HTML_basics', 2),
(3, 'MSDN Première étape CSS', '2024-01-18', 'https://developer.mozilla.org/fr/docs/Learn/CSS/First_steps', 2),
(4, 'Introduction HTML eprojet', '2024-01-19', 'https://www.eprojet.fr/cours/html_css/01-html_css-introduction-html-css', 2),
(5, 'W3Shool intro', '2024-01-20', 'https://www.w3schools.com/html/html_intro.asp', 2),
(6, 'OpenClassRoom Créer son site WEB', '2024-01-21', 'https://openclassrooms.com/fr/courses/1603881-creez-votre-site-web-avec-html5-et-css3', 2),
(7, 'htmlcheatsheet HTML', '2024-01-22', 'https://htmlcheatsheet.com', 4),
(8, 'htmlcheatsheet CSS', '2024-01-23', 'https://htmlcheatsheet.com/css/', 2),
(9, 'Bootstrap introduction', '2024-01-24', 'https://getbootstrap.com/docs/5.3/getting-started/introduction/', 6),
(10, 'OpenClassRoom Bootstrap', '2024-01-25', 'https://openclassrooms.com/fr/courses/7542506-creez-des-sites-web-responsives-avec-bootstrap-5', 6),
(11, 'Bootstrap Cheatsheet', '2024-01-26', 'https://getbootstrap.com/docs/5.0/examples/cheatsheet/', 6),
(12, 'Support Javascript Initiation', '2024-01-27', 'https://drive.google.com/file/d/1zzIx9aD4pfkR1nn2UATRo8qRs6MZbxW4/view?usp=drive_link', 3),
(13, 'OpenClassRoom Javascript', '2024-01-28', 'https://openclassrooms.com/fr/courses/7696886-apprenez-a-programmer-avec-javascript?archived-source=6175841', 3),
(14, 'MSDN Introduction Javascript', '2024-01-29', 'https://developer.mozilla.org/fr/docs/Web/JavaScript', 1),
(15, 'MSDN Première étape Javascript', '2024-01-30', 'https://developer.mozilla.org/fr/docs/Learn/JavaScript/First_steps', 3),
(16, 'MSDN Les bases en Javascript', '2024-01-31', 'https://developer.mozilla.org/fr/docs/Learn/Getting_started_with_the_web/JavaScript_basics ', 3),
(17, 'htmlcheatsheet Javascript', '2024-02-01', 'https://htmlcheatsheet.com/js/', 3),
(18, 'OpenClassRoom Apprenez à développer avec JS', '2024-02-02', 'https://openclassrooms.com/fr/courses/7696886-apprenez-a-programmer-avec-javascript', 3),
(19, 'Cours complet JS Pierre-Giraud', '2024-02-03', 'ttps://www.pierre-giraud.com/javascript-apprendre-coder-cours/', 3),
(20, 'CODEX Démarrer avec WordPress', '2024-02-04', 'https://codex.wordpress.org/fr:Demarrer_avec_WordPress', 2),
(21, 'Eprojet Installer WordPress', '2024-02-05', 'https://www.eprojet.fr/cours/wordpress/01-wordpress-installation-et-configuration-de-wordpress', 1),
(22, 'Thème Enfant WordPress Developer', '2024-02-06', 'https://developer.wordpress.org/themes/advanced-topics/child-themes/', 4),
(23, 'Thème Enfant WPFormation', '2024-02-07', 'https://wpformation.com/theme-enfant-wordpress/', 4),
(24, 'API : comprendre l\'essentiel en 4 minutes', '2024-02-08', 'https://www.youtube.com/watch?v=T0DmHRdtqY0&t=5s', 5),
(25, 'OpenClassRooms API-REST', '2024-02-09', 'https://openclassrooms.com/fr/courses/6031886-debutez-avec-les-api-rest', 5),
(26, 'PostMan', '0000-00-00', 'https://www.postman.com/', 5),
(27, 'XMLHttpRequest – Doc officielle', '0000-00-00', 'https://developer.mozilla.org/fr/docs/Web/API/XMLHttpRequest#constructeur', 5),
(28, 'Fetch API  Pierre Giraud', '0000-00-00', 'https://www.pierre-giraud.com/javascript-apprendre-coder-cours/api-fetch/', 5),
(29, 'Vidéo XMLHttpRequest', '0000-00-00', 'https://www.youtube.com/watch?v=Bct585a0Hj8', 5),
(30, 'La méthode Fetch (6 min)', '0000-00-00', 'https://www.youtube.com/watch?v=sGvEqHkDyFc', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `cat_fav`
--
ALTER TABLE `cat_fav`
  ADD PRIMARY KEY (`id_fav`,`id_cat`),
  ADD KEY `fk_id_cat` (`id_cat`);

--
-- Index pour la table `domaine`
--
ALTER TABLE `domaine`
  ADD PRIMARY KEY (`id_dom`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id_fav`),
  ADD KEY `fk_id_dom` (`id_dom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `domaine`
--
ALTER TABLE `domaine`
  MODIFY `id_dom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id_fav` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cat_fav`
--
ALTER TABLE `cat_fav`
  ADD CONSTRAINT `fk_id_cat` FOREIGN KEY (`id_cat`) REFERENCES `categorie` (`id_cat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_fav` FOREIGN KEY (`id_fav`) REFERENCES `favoris` (`id_fav`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `fk_id_dom` FOREIGN KEY (`id_dom`) REFERENCES `domaine` (`id_dom`) ON UPDATE CASCADE;
--
-- Base de données : `favori`
--
CREATE DATABASE IF NOT EXISTS `favori` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `favori`;

-- --------------------------------------------------------

--
-- Structure de la table `bookmark`
--

CREATE TABLE `bookmark` (
  `id_book` int(11) NOT NULL,
  `libelle` varchar(200) NOT NULL,
  `date_creation` date NOT NULL,
  `url` varchar(4000) NOT NULL,
  `id_dom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bookmark`
--

INSERT INTO `bookmark` (`id_book`, `libelle`, `date_creation`, `url`, `id_dom`) VALUES
(4, 'OpenClassRoom Maquette figma', '2024-01-16', 'https://openclassrooms.com/fr/courses/8242681-integrez-une-maquette-figma-en-html-css', 1),
(5, 'MSDN Début', '2024-01-17', 'https://developer.mozilla.org/fr/docs/Learn/Getting_started_with_the_web/HTML_basics', 2),
(6, 'MSDN Première étape CSS', '2024-01-18', 'https://developer.mozilla.org/fr/docs/Learn/CSS/First_steps', 2),
(7, 'Introduction HTML eprojet', '2024-01-19', 'https://www.eprojet.fr/cours/html_css/01-html_css-introduction-html-css', 2),
(8, 'W3Shool intro', '2024-01-20', 'https://www.w3schools.com/html/html_intro.asp', 2),
(9, 'OpenClassRoom Créer son site WEB', '2024-01-21', 'https://openclassrooms.com/fr/courses/1603881-creez-votre-site-web-avec-html5-et-css3', 2),
(10, 'htmlcheatsheet HTML', '2024-01-22', 'https://htmlcheatsheet.com', 2),
(11, 'htmlcheatsheet CSS', '2024-01-23', 'https://htmlcheatsheet.com/css/', 2),
(12, 'Bootstrap introduction', '2024-01-24', 'https://getbootstrap.com/docs/5.3/getting-started/introduction/', 6),
(13, 'OpenClassRoom Bootstrap', '2024-01-25', 'https://openclassrooms.com/fr/courses/7542506-creez-des-sites-web-responsives-avec-bootstrap-5', 6),
(14, 'Bootstrap Cheatsheet', '2024-01-26', 'https://getbootstrap.com/docs/5.0/examples/cheatsheet/', 6),
(15, 'Support Javascript Initiation', '2024-01-27', 'https://drive.google.com/file/d/1zzIx9aD4pfkR1nn2UATRo8qRs6MZbxW4/view?usp=drive_link', 3),
(16, 'OpenClassRoom Javascript', '2024-01-28', 'https://openclassrooms.com/fr/courses/7696886-apprenez-a-programmer-avec-javascript?archived-source=6175841 ', 3),
(17, 'MSDN Introduction Javascript', '2024-01-29', 'https://developer.mozilla.org/fr/docs/Web/JavaScript ', 3),
(18, 'MSDN Première étape Javascript', '2024-01-30', 'https://developer.mozilla.org/fr/docs/Learn/JavaScript/First_steps', 3),
(19, 'MSDN Les bases en Javascript', '2024-01-31', 'https://developer.mozilla.org/fr/docs/Learn/Getting_started_with_the_web/JavaScript_basics ', 3),
(20, 'htmlcheatsheet Javascript', '2024-02-01', 'https://htmlcheatsheet.com/js/', 3),
(21, 'OpenClassRoom Apprenez à développer avec JS', '2024-02-02', 'https://openclassrooms.com/fr/courses/7696886-apprenez-a-programmer-avec-javascript', 3),
(22, 'Cours complet JS Pierre-Giraud', '2024-02-03', 'ttps://www.pierre-giraud.com/javascript-apprendre-coder-cours/', 3),
(23, 'CODEX Démarrer avec WordPress', '2024-02-04', 'https://codex.wordpress.org/fr:Demarrer_avec_WordPress', 4),
(24, 'Eprojet Installer WordPress', '2024-02-05', 'https://www.eprojet.fr/cours/wordpress/01-wordpress-installation-et-configuration-de-wordpress', 4),
(25, 'Thème Enfant WordPress Developer', '2024-02-06', 'https://developer.wordpress.org/themes/advanced-topics/child-themes/', 4),
(26, 'Thème Enfant WPFormation', '2024-02-07', 'https://wpformation.com/theme-enfant-wordpress/', 4),
(27, 'API : comprendre l\'essentiel en 4 minutes', '2024-02-08', 'https://www.youtube.com/watch?v=T0DmHRdtqY0&t=5s', 5),
(28, 'OpenClassRooms API-REST', '2024-02-09', 'https://openclassrooms.com/fr/courses/6031886-debutez-avec-les-api-rest', 5),
(29, 'PostMan', '2024-02-10', 'https://www.postman.com/', 5),
(30, 'XMLHttpRequest – Doc officielle ', '2024-02-11', 'https://developer.mozilla.org/fr/docs/Web/API/XMLHttpRequest#constructeur', 5),
(31, 'Fetch API  Pierre Giraud', '2024-02-12', 'https://www.pierre-giraud.com/javascript-apprendre-coder-cours/api-fetch/', 5),
(32, 'Vidéo XMLHttpRequest', '2024-02-13', 'https://www.youtube.com/watch?v=Bct585a0Hj8', 5),
(33, 'La méthode Fetch (6 min)', '2024-02-14', 'https://www.youtube.com/watch?v=sGvEqHkDyFc', 5);

-- --------------------------------------------------------

--
-- Structure de la table `bookmark_categorie`
--

CREATE TABLE `bookmark_categorie` (
  `id_book` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_cat` int(11) NOT NULL,
  `nom_cat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `nom_cat`) VALUES
(1, 'Elearning'),
(2, 'HTML'),
(3, 'Css'),
(4, 'Maquette'),
(5, 'Site/blog'),
(6, 'Eprojet'),
(7, 'Cheatsheet'),
(8, 'Bootstrap'),
(9, 'Support PDF'),
(10, 'Ressources/Aides'),
(11, 'Javascript'),
(12, 'Wordpress'),
(13, 'Outil'),
(14, 'Vidéo'),
(15, 'API');

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE `domaine` (
  `id_dom` int(11) NOT NULL,
  `nom_dom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `domaine`
--

INSERT INTO `domaine` (`id_dom`, `nom_dom`) VALUES
(1, 'Maquettage/figma'),
(2, 'HTML-CSS'),
(3, 'Javascript'),
(4, 'Wordpress'),
(5, 'Api'),
(6, 'Bootstrap');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `Id_domaine` (`id_dom`);

--
-- Index pour la table `bookmark_categorie`
--
ALTER TABLE `bookmark_categorie`
  ADD PRIMARY KEY (`id_book`,`id_cat`),
  ADD KEY `fk_id_cat` (`id_cat`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `domaine`
--
ALTER TABLE `domaine`
  ADD PRIMARY KEY (`id_dom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `domaine`
--
ALTER TABLE `domaine`
  MODIFY `id_dom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bookmark`
--
ALTER TABLE `bookmark`
  ADD CONSTRAINT `Id_domaine` FOREIGN KEY (`id_dom`) REFERENCES `domaine` (`id_dom`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `bookmark_categorie`
--
ALTER TABLE `bookmark_categorie`
  ADD CONSTRAINT `fk_id_book` FOREIGN KEY (`id_book`) REFERENCES `bookmark` (`id_book`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_cat` FOREIGN KEY (`id_cat`) REFERENCES `categorie` (`id_cat`) ON UPDATE CASCADE;
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Déchargement des données de la table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"fav\",\"table\":\"favoris\"},{\"db\":\"entreprise\",\"table\":\"employes\"},{\"db\":\"fav\",\"table\":\"categorie\"},{\"db\":\"fav\",\"table\":\"cat_fav\"},{\"db\":\"fav\",\"table\":\"domaine\"},{\"db\":\"favori\",\"table\":\"bookmark_categorie\"},{\"db\":\"favori\",\"table\":\"bookmark\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-01-29 14:55:05', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de données : `tp_dep_reg`
--
CREATE DATABASE IF NOT EXISTS `tp_dep_reg` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tp_dep_reg`;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id_dep` int(11) NOT NULL,
  `code_dep` varchar(3) NOT NULL,
  `nom_dep` varchar(255) NOT NULL,
  `nb_communes_dep` int(11) NOT NULL,
  `pop_2017` int(11) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id_dep`, `code_dep`, `nom_dep`, `nb_communes_dep`, `pop_2017`, `id_region`) VALUES
(1, '01', 'Ain', 393, 659180, 1),
(2, '02', 'Aisne', 800, 546527, 7),
(3, '03', 'Allier', 317, 347035, 1),
(4, '04', 'Alpes-de-Haute-Provence', 198, 168381, 13),
(5, '05', 'Hautes-Alpes', 162, 145883, 13),
(6, '06', 'Alpes-Maritimes', 163, 1097496, 13),
(7, '07', 'Ardèche', 335, 334688, 1),
(8, '08', 'Ardennes', 449, 280032, 6),
(9, '09', 'Ariège', 327, 157210, 11),
(10, '10', 'Aube', 431, 317118, 6),
(11, '11', 'Aude', 433, 379094, 11),
(12, '12', 'Aveyron', 285, 289488, 11),
(13, '13', 'Bouches-du-Rhône', 119, 2048504, 13),
(14, '14', 'Calvados', 527, 708344, 9),
(15, '15', 'Cantal', 246, 150185, 1),
(16, '16', 'Charente', 366, 361539, 10),
(17, '17', 'Charente-Maritime', 463, 659968, 10),
(18, '18', 'Cher', 287, 311456, 4),
(19, '19', 'Corrèze', 280, 249135, 10),
(20, '2a', 'Corse-du-sud', 124, 159768, 5),
(21, '2b', 'Haute-corse', 236, 180465, 5),
(22, '21', 'Côte-d\'or', 700, 545798, 2),
(23, '22', 'Côtes-d\'armor', 348, 617107, 3),
(24, '23', 'Creuse', 256, 122133, 10),
(25, '24', 'Dordogne', 505, 424095, 10),
(26, '25', 'Doubs', 573, 552643, 2),
(27, '26', 'Drôme', 364, 524574, 1),
(28, '27', 'Eure', 585, 614926, 9),
(29, '28', 'Eure-et-Loir', 365, 443538, 4),
(30, '29', 'Finistère', 277, 933992, 3),
(31, '30', 'Gard', 351, 757764, 11),
(32, '31', 'Haute-Garonne', 11, 586, 1385122),
(33, '32', 'Gers', 461, 197953, 11),
(34, '33', 'Gironde', 535, 1607545, 10),
(35, '34', 'Hérault', 342, 1162867, 11),
(36, '35', 'Ile-et-Vilaine', 333, 1084554, 3),
(37, '36', 'Indre', 241, 227999, 4),
(38, '37', 'Indre-et-Loire', 272, 618820, 4),
(39, '38', 'Isère', 512, 1283384, 1),
(40, '39', 'Jura', 494, 269344, 2),
(41, '40', 'Landes', 327, 419709, 10),
(42, '41', 'Loir-et-Cher', 267, 340499, 4),
(43, '42', 'Loire', 323, 777328, 1),
(44, '43', 'Haute-Loire', 257, 234190, 1),
(45, '44', 'Loire-Atlantique', 12, 207, 1423152),
(46, '45', 'Loiret', 326, 692540, 4),
(47, '46', 'Lot', 313, 179556, 11),
(48, '47', 'Lot-et-Garonne', 319, 341270, 10),
(49, '48', 'Lozère', 152, 80240, 11),
(50, '49', 'Maine-et-Loire', 12, 177, 833154),
(51, '50', 'Manche', 446, 512923, 9),
(52, '51', 'Marne', 613, 580671, 6),
(53, '52', 'Haute-Marne', 426, 180753, 6),
(54, '53', 'Mayenne', 242, 316750, 12),
(55, '54', 'Meurthe-et-Moselle', 591, 745300, 6),
(56, '55', 'Meuse', 499, 192588, 6),
(57, '56', 'Morbihan', 250, 771911, 3),
(58, '57', 'Moselle', 725, 1062217, 6),
(59, '58', 'Nièvre', 309, 212742, 2),
(60, '59', 'Nord', 648, 2635255, 7),
(61, '60', 'Oise', 679, 841948, 7),
(62, '61', 'Orne', 385, 291557, 9),
(63, '62', 'Pas-de-Calais', 890, 1489983, 7),
(64, '63', 'Puy-de-Dôme', 464, 668301, 1),
(65, '64', 'Pyrénées-Atlantiques', 546, 695965, 10),
(66, '65', 'Hautes-Pyrénées', 469, 234591, 11),
(67, '66', 'Pyrénées-Orientales', 226, 482368, 11),
(68, '67', 'Bas-Rhin', 514, 1141511, 6),
(69, '68', 'Haut-Rhin', 366, 777917, 6),
(70, '69', 'Rhône', 267, 1869599, 1),
(71, '70', 'Haute-Saône', 539, 243264, 2),
(72, '71', 'Saône-et-Loire', 565, 569531, 2),
(73, '72', 'Sarthe', 354, 579650, 12),
(74, '73', 'Savoie', 273, 443787, 1),
(75, '74', 'Haute-Savoie', 279, 828417, 1),
(76, '75', 'Paris', 1, 2204773, 8),
(77, '76', 'Seine-Maritime', 708, 1275559, 9),
(78, '77', 'Seine-et-Marne', 507, 1420469, 8),
(79, '78', 'Yvelines', 259, 1463091, 8),
(80, '79', 'Deux-Sèvres', 256, 384479, 10),
(81, '80', 'Somme', 772, 582464, 7),
(82, '81', 'Tarn', 314, 398412, 11),
(83, '82', 'Tarn-et-Garonne', 195, 264130, 11),
(84, '83', 'Var', 153, 1075653, 13),
(85, '84', 'Vaucluse', 151, 570762, 13),
(86, '85', 'Vendée', 258, 693455, 12),
(87, '86', 'Vienne', 266, 447150, 10),
(88, '87', 'Haute-Vienne', 195, 381379, 10),
(89, '88', 'Vosges', 507, 378986, 6),
(90, '89', 'Yonne', 423, 346902, 2),
(91, '90', 'Territoire de Belfort', 101, 145640, 2),
(92, '91', 'Essonne', 194, 1310599, 8),
(93, '92', 'Hauts-de-Seine', 36, 1625917, 8),
(94, '93', 'Seine-Saint-Denis', 40, 1630133, 8),
(95, '94', 'Val-de-Marne', 47, 1397035, 8),
(96, '95', 'Val-d\'oise', 184, 1239262, 8),
(97, '976', 'Mayotte', 0, 270372, 18),
(98, '971', 'Guadeloupe', 32, 396153, 14),
(99, '973', 'Guyane', 22, 271124, 16),
(100, '972', 'Martinique', 34, 377711, 15),
(101, '974', 'Réunion', 24, 863063, 17);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id_reg` int(11) NOT NULL,
  `nom_region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id_reg`, `nom_region`) VALUES
(1, 'Auvergne Rhônes Alpes'),
(2, 'Bourgogne Franche Comté'),
(3, 'Bretagne'),
(4, 'Centre Val de Loire'),
(5, 'Corse'),
(6, 'Grand Est'),
(7, 'Hauts de France'),
(8, 'Ile de France'),
(9, 'Normandie'),
(10, 'Nouvelle Aquitaine'),
(11, 'Occitanie'),
(12, 'Pays de la Loire'),
(13, 'Provencce Alpes Côte d\'Azur'),
(14, 'Guadeloupe'),
(15, 'Martinique'),
(16, 'Guyane'),
(17, 'La Réunion'),
(18, 'Mayotte');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id_dep`),
  ADD KEY `fk_id_region` (`id_region`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_reg`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `fk_id_region` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_reg`);
--
-- Base de données : `user_wordpress`
--
CREATE DATABASE IF NOT EXISTS `user_wordpress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user_wordpress`;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_commentmeta : #1932 - Table &#039;user_wordpress.wp_commentmeta&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_commentmeta : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_commentmeta`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_comments : #1932 - Table &#039;user_wordpress.wp_comments&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_comments : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_comments`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_links : #1932 - Table &#039;user_wordpress.wp_links&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_links : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_links`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_options : #1932 - Table &#039;user_wordpress.wp_options&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_options : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_options`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_postmeta : #1932 - Table &#039;user_wordpress.wp_postmeta&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_postmeta : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_postmeta`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_posts : #1932 - Table &#039;user_wordpress.wp_posts&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_posts : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_posts`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_termmeta : #1932 - Table &#039;user_wordpress.wp_termmeta&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_termmeta : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_termmeta`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_terms : #1932 - Table &#039;user_wordpress.wp_terms&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_terms : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_terms`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_term_relationships : #1932 - Table &#039;user_wordpress.wp_term_relationships&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_term_relationships : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_term_relationships`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_term_taxonomy : #1932 - Table &#039;user_wordpress.wp_term_taxonomy&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_term_taxonomy : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_term_taxonomy`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_usermeta : #1932 - Table &#039;user_wordpress.wp_usermeta&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_usermeta : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_usermeta`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_users : #1932 - Table &#039;user_wordpress.wp_users&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_users : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_users`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_indexable`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_yoast_indexable : #1932 - Table &#039;user_wordpress.wp_yoast_indexable&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_yoast_indexable : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_yoast_indexable`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_indexable_hierarchy`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_yoast_indexable_hierarchy : #1932 - Table &#039;user_wordpress.wp_yoast_indexable_hierarchy&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_yoast_indexable_hierarchy : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_yoast_indexable_hierarchy`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_migrations`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_yoast_migrations : #1932 - Table &#039;user_wordpress.wp_yoast_migrations&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_yoast_migrations : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_yoast_migrations`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_primary_term`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_yoast_primary_term : #1932 - Table &#039;user_wordpress.wp_yoast_primary_term&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_yoast_primary_term : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_yoast_primary_term`&#039; à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_seo_links`
--
-- Erreur de lecture de structure pour la table user_wordpress.wp_yoast_seo_links : #1932 - Table &#039;user_wordpress.wp_yoast_seo_links&#039; doesn&#039;t exist in engine
-- Erreur de lecture des données pour la table user_wordpress.wp_yoast_seo_links : #1064 - Erreur de syntaxe près de &#039;FROM `user_wordpress`.`wp_yoast_seo_links`&#039; à la ligne 1
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
