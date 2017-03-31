-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 31 Mars 2017 à 15:48
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `1`
--

-- --------------------------------------------------------

--
-- Structure de la table `onguents`
--

CREATE TABLE `onguents` (
  `ID_ONGUENT` int(11) NOT NULL,
  `ID_INVENTEUR` int(11) DEFAULT NULL,
  `ID_SEUIL_DE_FRAICHEUR` int(11) DEFAULT NULL,
  `ID_STOCK_QUANTITE` int(11) DEFAULT NULL,
  `NOM_ONGUENT` text NOT NULL,
  `PRIX_ONGUENT` decimal(8,0) NOT NULL,
  `INGREDIENT_1_ONGUENT` text NOT NULL,
  `QUANTITE_1_ONGUENT` decimal(8,0) NOT NULL,
  `INGREDIENT_2_ONGUENT` text NOT NULL,
  `QUANTITE_2_ONGUENT` decimal(8,0) NOT NULL,
  `INGREDIENT_3_ONGUENT` text NOT NULL,
  `QUANTITE_3_ONGUENT` decimal(8,0) NOT NULL,
  `INGREDIENT_4_ONGUENT` text,
  `QUANTITE_4_ONGUENT` decimal(8,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `onguents`
--

INSERT INTO `onguents` (`ID_ONGUENT`, `ID_INVENTEUR`, `ID_SEUIL_DE_FRAICHEUR`, `ID_STOCK_QUANTITE`, `NOM_ONGUENT`, `PRIX_ONGUENT`, `INGREDIENT_1_ONGUENT`, `QUANTITE_1_ONGUENT`, `INGREDIENT_2_ONGUENT`, `QUANTITE_2_ONGUENT`, `INGREDIENT_3_ONGUENT`, `QUANTITE_3_ONGUENT`, `INGREDIENT_4_ONGUENT`, `QUANTITE_4_ONGUENT`) VALUES
(1, NULL, NULL, NULL, 'Huile d\'arme magique', '100', 'Sardonyx', '1', 'Branche de sauge maléfique', '3', 'Epée longue de maître', '2', '', NULL),
(2, NULL, NULL, NULL, 'Huile de bénédiction d\'arme', '149', 'Perle dorée', '1', 'Epée courte', '3', 'Chemise de maille', '3', 'Ecu en ébénite', '4'),
(3, NULL, NULL, NULL, 'Huile de tourne tête', '267', 'Amulette d\'armure naturelle', '1', 'Sardonyx', '5', 'Nephite', '3', NULL, NULL),
(4, NULL, NULL, NULL, 'Potion crêpe aux ongles de géant', '203', 'Poudre d\'os', '300', 'Oeufs givrepeire', '3', 'Farine d\'os', '3', 'Orteil de géant', '15'),
(5, NULL, NULL, NULL, 'Potion flou', '440', 'Néphrite', '1', 'Ecu en acier', '2', 'Cadenas simple', '1', NULL, NULL),
(6, NULL, NULL, NULL, 'Potion d\'invisibilité', '645', 'Perle noire', '3', 'Potion de sagesse du hibou', '2', 'Epée longue de maître', '1', NULL, NULL),
(7, NULL, NULL, NULL, 'Potion de sagesse du hibou', '716', 'Lapi-lazuli', '2', 'Bottes de sept lieues', '3', 'Carreaux', '2', NULL, NULL),
(8, NULL, NULL, NULL, 'Potion de vision dans le noir', '436', 'Sardonyx', '1', 'Parchemin profane', '2', 'Arc court de maître', '1', NULL, NULL),
(9, NULL, NULL, NULL, 'Potion de soin modérés', '652', 'Sardonyx', '3', 'Cheveux de sorcière', '10', 'Serpe de maître', '2', NULL, NULL),
(10, NULL, NULL, NULL, 'Potion de protection', '568', 'Grenat rouge', '21', 'Ecu en acier', '2', 'Menottes de qualité suppérieur', '2', 'Elixir secret', '2'),
(11, NULL, NULL, NULL, 'Potion de protection contre le mal', '724', 'Perle noire', '1', 'Cheveux de sorcière', '15', 'Pic de guerre leger de maître', '3', NULL, NULL),
(12, NULL, NULL, NULL, 'Huile de ténèbre', '658', 'Quartz bleu', '3', 'Ongle de lutin', '1', 'Harnois', '2', NULL, NULL),
(13, NULL, NULL, NULL, 'Huile de gourdin magique', '481', 'Perle dorée', '3', 'Epée de batard', '3', 'Carreau', '3', NULL, NULL),
(14, NULL, NULL, NULL, 'Potion d\'aide', '826', 'Iritos', '3', 'Amulette d\'armure naturelle', '1', 'Chemise de maille', '3', NULL, NULL),
(15, NULL, NULL, NULL, 'Potion de pattes d\'araignée', '473', 'Chrysobéryl', '3', 'Cheveux de sorcère', '3', 'Hache de guerre naine de maître', '1', NULL, NULL),
(16, NULL, NULL, NULL, 'Potion de regain d\'assurance', '467', 'Spodumène', '2', 'Bottes de sept lieues', '1', 'Hache de guerre naine de maître', '3', NULL, NULL),
(17, NULL, NULL, NULL, 'Potion d\'agrandissement', '975', 'Perle noire', '2', 'Potion de sagesse du hibou', '1', 'Harnois', '1', NULL, NULL),
(18, NULL, NULL, NULL, 'Potion d\'alignement indétectable', '376', 'Grenat rouge', '1', 'Epée courte', '1', 'Arbalète légère de maître', '1', NULL, NULL),
(19, NULL, NULL, NULL, 'Potion de bouclier de la foi', '436', 'Lapis-lazuli', '1', 'Epée courte', '1', 'Armure de cuire cloutée de maître', '1', NULL, NULL),
(20, NULL, NULL, NULL, 'Potion de détection faussée', '525', 'Grenat violet', '3', 'Parchemin divin', '3', 'Pic de guerre léger de maître', '2', NULL, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `onguents`
--
ALTER TABLE `onguents`
  ADD PRIMARY KEY (`ID_ONGUENT`),
  ADD KEY `FK_COMPOSER_2_` (`ID_INVENTEUR`),
  ADD KEY `FK_QUALITE_3_` (`ID_SEUIL_DE_FRAICHEUR`),
  ADD KEY `FK_QUANTITE_3_` (`ID_STOCK_QUANTITE`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `onguents`
--
ALTER TABLE `onguents`
  MODIFY `ID_ONGUENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
