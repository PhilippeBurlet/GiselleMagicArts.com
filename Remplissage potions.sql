-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 31 Mars 2017 à 12:57
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  ` projet sql`
--

-- --------------------------------------------------------

--
-- Structure de la table `potions`
--

CREATE TABLE `potions` (
  `ID_POTIONS` int(11) NOT NULL,
  `ID_INVENTEUR` int(11) NOT NULL,
  `ID_SEUIL_DE_FRAICHEUR` int(11) NOT NULL,
  `ID_STOCK_QUANTITE` int(11) NOT NULL,
  `NOM_POTIONS` text NOT NULL,
  `PRIX_POTIONS` decimal(8,0) NOT NULL,
  `DILUANT_POTIONS` text NOT NULL,
  `TEMPERATURE_POTIONS` decimal(8,0) NOT NULL,
  `INGREDIENT_1_POTIONS` text NOT NULL,
  `QUANTITE_1_POTIONS` decimal(8,0) NOT NULL,
  `INGREDIENT_2_POTIONS` text NOT NULL,
  `QUANTITE_2_POTIONS` decimal(8,0) NOT NULL,
  `INGREDIENT_3_POTIONS` text NOT NULL,
  `QUANTITE_3_POTIONS` decimal(8,0) NOT NULL,
  `INGREDIENT_4_POTIONS` text,
  `QUANTITE_4_POTIONS` decimal(8,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `potions`
--

INSERT INTO `potions` (`ID_POTIONS`,`NOM_POTIONS`, `PRIX_POTIONS`, `DILUANT_POTIONS`, `TEMPERATURE_POTIONS`, `INGREDIENT_1_POTIONS`, `QUANTITE_1_POTIONS`, `INGREDIENT_2_POTIONS`, `QUANTITE_2_POTIONS`, `INGREDIENT_3_POTIONS`, `QUANTITE_3_POTIONS`, `INGREDIENT_4_POTIONS`, `QUANTITE_4_POTIONS`) VALUES
(1, 'Huile d\'arme magique', '100', 'Vin', '93',  'Sardonyx', '1', 'Branche de sauge maléfique', '3', 'Epée longue de maître', '2', '', NULL),
(2, 'Huile de bénédiction d\'arme', '149', 'Jus de fruit', '55',  'Perle dorée', '1', 'Epée courte', '3', 'Chemise de maille', '3', 'Ecu en ébénite', '4'),
(3, 'Huile de tourne tête', '267', 'Bière', '60',  'Amulette d\'armure naturelle', '1', 'Sardonyx', '5', 'Nephite', '3', NULL, NULL),
(4, 'Potion crêpe aux ongles de géant', '203', 'Eau', '83',  'Poudre d\'os', '300', 'Oeufs givrepeire', '3', 'Farine d\'os', '3', 'Orteil de géant', '15'),
(5, 'Potion flou', '440', 'Bière', '56', 'Néphrite', '1', 'Ecu en acier', '2', 'Cadenas simple', '1', NULL, NULL),
(6, 'Potion d\'invisibilité', '645', 'Jus de fruit', '102',  'Perle noire', '3', 'Potion de sagesse du hibou', '2', 'Epée longue de maître', '1', NULL, NULL),
(7, 'Potion de sagesse du hibou', '716', 'Jus de fruit', '51', 'Lapi-lazuli', '2', 'Bottes de sept lieues', '3', 'Carreaux', '2', NULL, NULL),
(8, 'Potion de vision dans le noir', '436', 'Jus de fruit', '75', 'Sardonyx', '1', 'Parchemin profane', '2', 'Arc court de maître', '1', NULL, NULL),
(9, 'Potion de soin modérés', '652', 'Vin', '68', 'Sardonyx', '3','Cheveux de sorcière', '10', 'Serpe de maître', '2', NULL, NULL),
(10, 'Potion de protection', '568', 'Bière', '99', 'Grenat rouge', '21', 'Ecu en acier', '2', 'Menottes de qualité suppérieur', '2', 'Elixir secret', '2'),
(11, 'Potion de protection contre le mal', '724', 'Jus de fruit', '96', 'Perle noire', '1', 'Cheveux de sorcière', '15', 'Pic de guerre leger de maître', '3', NULL, NULL),
(12, 'Huile de ténèbre', '658', 'Eau', '91', 'Quartz bleu', '3', 'Ongle de lutin', '1', 'Harnois', '2', NULL, NULL),
(13, 'Huile de gourdin magique', '481', 'Eau', '78', 'Perle dorée', '3', 'Epée de batard', '3', 'Carreau', '3', NULL, NULL),
(14, 'Potion d\'aide', '826', 'Jus de fruit', '64', 'Iritos', '3', 'Amulette d\'armure naturelle', '1', 'Chemise de maille', '3', NULL, NULL),
(15, 'Potion de pattes d\'araignée', '473', 'Eau', '98', 'Chrysobéryl', '3', 'Cheveux de sorcère', '3', 'Hache de guerre naine de maître', '1', NULL, NULL),
(16, 'Potion de regain d\'assurance', '467', 'Jus de fruit', '59', 'Spodumène', '2', 'Bottes de sept lieues', '1', 'Hache de guerre naine de maître', '3', NULL, NULL),
(17, 'Potion d\'agrandissement', '975', 'Vin', '58', 'Perle noire', '2', 'Potion de sagesse du hibou', '1', 'Harnois', '1', NULL, NULL),
(18, 'Potion d\'alignement indétectable', '376', 'Vin', '76', 'Grenat rouge', '1', 'Epée courte', '1', 'Arbalète légère de maître', '1', NULL, NULL),
(19, 'Potion de bouclier de la foi', '436', 'Vin', '69', 'Lapis-lazuli', '1', 'Epée courte', '1', 'Armure de cuire cloutée de maître', '1', NULL, NULL),
(20, 'Potion de détection faussée', '525', 'Vin', '93', 'Grenat violet', '3', 'Parchemin divin', '3', 'Pic de guerre léger de maître', '2', NULL, NULL);


--
-- Index pour les tables exportées
--

--
-- Index pour la table `potions`
--
ALTER TABLE `potions`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `potions`
--
ALTER TABLE `potions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
