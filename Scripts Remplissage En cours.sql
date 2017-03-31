-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 31 Mars 2017 à 13:27
-- Version du serveur :  5.7.14-log
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `giselle`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

CREATE TABLE `achat` (
  `ID_RECIPIENTS` int(11) NOT NULL,
  `ID_COMMANDE` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `achat_2_`
--

CREATE TABLE `achat_2_` (
  `ID_COMMANDE` int(11) NOT NULL,
  `ID_POTIONS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `achat_3_`
--

CREATE TABLE `achat_3_` (
  `ID_COMMANDE` int(11) NOT NULL,
  `ID_ONGUENT` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `achat_4_`
--

CREATE TABLE `achat_4_` (
  `ID_COMMANDE` int(11) NOT NULL,
  `ID_INGREDIENTS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `achat_5_`
--

CREATE TABLE `achat_5_` (
  `ID_COMMANDE_GISELLE` int(11) NOT NULL,
  `ID_INGREDIENTS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID_CLIENT` int(11) NOT NULL,
  `ID_COMMANDE` int(11) NOT NULL,
  `NOM_CLIENT` text NOT NULL,
  `PRENOM_CLIENT` text NOT NULL,
  `ADRESSE_CLIENT` text NOT NULL,
  `SIREN_CLIENT` decimal(9,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `client` (`ID_CLIENT`, `ID_COMMANDE`, `NOM_CLIENT`, `PRENOM_CLIENT`, `ADRESSE_CLIENT`, `SIREN_CLIENT`) VALUES
(1, 717664, 'Yang', 'Jon', '3761 N. 14th St', '846752455'),
(2, 248118, 'Huang', 'Eugene', '2243 W St.', '747573234'),
(3, 163801, 'Torres', 'Ruben', '5844 Linden Land', NULL),
(4, 863380, 'Zhu', 'Christy', '1825 Village Pl.', NULL),
(5, 595263, 'Johnson', 'Elizabeth', '7553 Harness Circle', NULL),
(6, 832681, 'Ruiz', 'Julio', '7305 Humphrey Drive', NULL),
(7, 208132, 'Alvarez', 'Janet', '2612 Berry Dr', NULL),
(8, 551535, 'Mehta', 'Marco', '942 Brook Street', NULL),
(9, 517263, 'Verhoff', 'Rob', '624 Peabody Road', NULL),
(10, 447677, 'Carlson', 'Shannon', '3839 Northgate Road', NULL),
(11, 747343, 'Suarez', 'Jacquelyn', '7800 Corrinne Court', NULL),
(12, 470198, 'Lu', 'Curtis', '1224 Shoenic', NULL),
(13, 421697, 'Walker', 'Lauren', '4785 Scott Street', NULL),
(14, 939283, 'Jenkis', 'Ian', '7902 Hudson Ave.', NULL),
(15, 153366, 'Bennett', 'Sydney', '9011 Tank Drive', NULL),
(16, 918469, 'Young', 'Chloe', '244 Willow Pass Road', NULL),
(17, 350464, 'Hill', 'Wyatt', '9666 Northridge Ct.', NULL),
(18, 765149, 'Wang', 'Shannon', '7330 Saddlehill Lane', NULL),
(19, 536628, 'Rai', 'Clarence', '244 Rivewview', NULL),
(20, 123548, 'Lal', 'Luke', '7832 Landing Dr', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `ID_COMMANDE` int(11) NOT NULL,
  `DATE_COMMANDE` date DEFAULT NULL,
  `NUMERO_COMMANDE` decimal(6,0) DEFAULT NULL,
  `ETAT_COMMANDE` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `commande` (`ID_COMMANDE`, `DATE_COMMANDE`, `NUMERO_COMMANDE`, `ETAT_COMMANDE`) VALUES
(1, '2017-03-13', '717664', 1),
(2, '2017-03-23', '248118', 1),
(3, '2017-03-02', '163801', 1),
(4, '2017-03-06', '863380', 1),
(5, '2017-03-26', '595263', 1),
(6, '2017-03-13', '832681', 1),
(7, '2017-03-07', '208132', 1),
(8, '2017-03-23', '551535', 1),
(9, '2017-03-03', '517263', 1),
(10, '2017-03-12', '447677', 1),
(11, '2017-03-27', '747343', 1),
(12, '2017-03-28', '470198', 1),
(13, '2017-03-23', '421697', 1),
(14, '2017-03-09', '939283', 1),
(15, '2017-03-12', '153366', 1),
(16, '2017-03-27', '918469', 1),
(17, '2017-03-17', '350464', 1),
(18, '2017-03-14', '765149', 1),
(19, '2017-03-05', '536628', 1),
(20, '2017-03-01', '123548', 1),
(21, '2017-04-01', '626887', 0),
(22, '2017-04-03', '976173', 0),
(23, '2017-04-05', '357877', 0),
(24, '2017-04-04', '316981', 0);

-- --------------------------------------------------------

--
-- Structure de la table `commande_giselle`
--

CREATE TABLE `commande_giselle` (
  `ID_COMMANDE_GISELLE` int(11) NOT NULL,
  `ID_SEUIL_DE_FRAICHEUR` int(11) NOT NULL,
  `SEU_ID_SEUIL_DE_FRAICHEUR` int(11) NOT NULL,
  `NUMERO_COMMANDE_GISELLE` decimal(6,0) NOT NULL,
  `DATE_COMMANDE_GISELLE` date NOT NULL,
  `ETAT_COMMANDE_GISELLE` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `commande_giselle` (`ID_COMMANDE_GISELLE`, `ID_SEUIL_DE_FRAICHEUR`, `NUMERO_COMMANDE_GISELLE`, `DATE_COMMANDE_GISELLE`, `ETAT_COMMANDE_GISELLE`) VALUES
(1, NULL, '258469', '2017-01-30', 1),
(2, 0, '562210', '2017-02-12', 1),
(3, NULL, '466409', '2017-03-04', 1),
(4, 0, '348017', '2017-03-12', 1),
(5, 0, '801319', '2017-03-28', 0),
(6, 0, '560186', '2017-03-30', 0);

-- --------------------------------------------------------

--
-- Structure de la table `composition`
--

CREATE TABLE `composition` (
  `ID_INGREDIENTS` int(11) NOT NULL,
  `ID_ONGUENT` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `composition_2_`
--

CREATE TABLE `composition_2_` (
  `ID_INGREDIENTS` int(11) NOT NULL,
  `ID_POTIONS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `ID_FOURNISSEUR` int(11) NOT NULL,
  `NOM_FOURNISSEUR` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `fournisseurs` (`ID_FOURNISSEUR`, `NOM_FOURNISSEUR`) VALUES
(1, 'Amazon'),
(2, 'Ebay'),
(3, 'CDiscount'),
(4, 'AliExpress'),
(5, 'AkularCorp'),
(6, 'AstStore'),
(7, 'NormMagicGroup'),
(8, 'Vilaopd'),
(9, 'InBestMagic'),
(10, 'MagProdSupp'),
(11, 'All1NeedSale');
-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `ID_INGREDIENTS` int(11) NOT NULL,
  `ID_SEUIL_DE_FRAICHEUR` int(11) DEFAULT NULL,
  `ID_STOCK_QUANTITE` int(11) DEFAULT NULL,
  `NOM_INGREDIENTS` text NOT NULL,
  `Prix_INGREDIENTS` decimal(10,0) NOT NULL,
  `FRAICHEUR_INGREDIENTS` text NOT NULL,
  `DATE_DE_RECEPTION_INGREDIENTS` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `ingredients` (`ID_INGREDIENTS`, `ID_SEUIL_DE_FRAICHEUR`, `ID_STOCK_QUANTITE`, `NOM_INGREDIENTS`, `PRIX_INGREDIENTS`, `FRAICHEUR_INGREDIENTS`, `DATE_DE_RECEPTION_INGREDIENTS`) VALUES
(1, NULL, NULL, 'Oeil d\'araignée', '7', '3', '2017-03-30'),
(2, NULL, NULL, 'Sucre', '3', '5', '2017-03-28'),
(3, NULL, NULL, 'Pasteque', '6', '2', '2017-03-30'),
(4, NULL, NULL, 'Sardonyx', '10', '14', '2017-01-30'),
(5, NULL, NULL, 'Branche de sauge maléfique', '25', '4', '2017-01-30'),
(6, NULL, NULL, 'Epée longue de maître', '97', NULL, '2017-02-12'),
(7, NULL, NULL, 'Perle dorée', '60', NULL, '2017-02-12'),
(8, NULL, NULL, 'Epée courte', '50', NULL, '2017-02-12'),
(9, NULL, NULL, 'Chemise de maille', '114', NULL, '2017-02-12'),
(10, NULL, NULL, 'Ecu en ébénite', '127', NULL, '2017-02-12'),
(11, NULL, NULL, 'Amulette d\'armure naturelle', '80', NULL, '2017-02-12'),
(12, NULL, NULL, 'Néphrite', '37', NULL, '2017-02-12'),
(13, NULL, NULL, 'Poudre d\'os', '5', '3', '2017-03-12'),
(14, NULL, NULL, 'Oeufs givrepeire', '125', '6', '2017-03-12'),
(15, NULL, NULL, 'Farine d\'os', '7', '8', '2017-03-12'),
(16, NULL, NULL, 'Orteil de géant', '132', '10', '2017-03-12'),
(17, NULL, NULL, 'Ecu en acier', '23', NULL, '2017-03-12'),
(18, NULL, NULL, 'Cadenas simple', '2', NULL, '2017-03-04'),
(19, NULL, NULL, 'Perle noire', '55', NULL, '2017-03-04'),
(21, NULL, NULL, 'Lapis-lazuli', '62', NULL, '2017-03-04'),
(22, NULL, NULL, 'Bottes de sept lieues', '65', '21', '2017-03-12'),
(23, NULL, NULL, 'Carreaux', '12', NULL, '2017-03-04'),
(24, NULL, NULL, 'Parchemin profane', '73', NULL, '2017-03-04'),
(25, NULL, NULL, 'Arc court de maître', '89', NULL, '2017-03-12'),
(26, NULL, NULL, 'Cheveux de sorcière', '329', '2', '2017-03-04'),
(27, NULL, NULL, 'Serpe de maître', '283', NULL, '2017-03-12'),
(28, NULL, NULL, 'Grenat rouge', '91', NULL, '2017-03-04'),
(29, NULL, NULL, 'Menottes de qualité suppérieur', '160', NULL, '2017-03-12'),
(30, NULL, NULL, 'Elixir secret', '42', '2', '2017-03-04'),
(31, NULL, NULL, 'Pic de guerre léger de maître', '79', NULL, '2017-03-12'),
(32, NULL, NULL, 'Quartz bleu', '54', NULL, '2017-03-04'),
(33, NULL, NULL, 'Ongle de lutin', '116', '4', '2017-03-04'),
(34, NULL, NULL, 'Harnois', '58', NULL, '2017-03-12'),
(35, NULL, NULL, 'Epée de batard', '84', NULL, '2017-03-12'),
(36, NULL, NULL, 'Iritos', '99', NULL, '2017-03-04'),
(37, NULL, NULL, 'Chrysobéryl', '57', '10', '2017-03-04'),
(38, NULL, NULL, 'Hache de guerre naine de maître', '135', NULL, '2017-03-12'),
(39, NULL, NULL, 'Spodumène', '38', NULL, '2017-03-04'),
(40, NULL, NULL, 'Arbalète légère de maître', '99', NULL, '2017-03-12'),
(41, NULL, NULL, 'Armure de cuire cloutée de maître', '92', NULL, '2017-03-12'),
(42, NULL, NULL, 'Grenat violet', '86', NULL, '2017-03-04'),
(43, NULL, NULL, 'Parchemin divin', '81', NULL, '2017-03-04');

-- --------------------------------------------------------

--
-- Structure de la table `inventeurs`
--

CREATE TABLE `inventeurs` (
  `ID_INVENTEUR` int(11) NOT NULL,
  `NOM_INVENTEUR` text NOT NULL,
  `PRENOM_INVENTEUR` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `inventeurs` (`ID_INVENTEUR`, `NOM_INVENTEUR`, `PRENOM_INVENTEUR`) VALUES
(1, 'King', 'Jordan'),
(2, 'Wilson', 'Destiny'),
(3, 'Zhang', 'Ethan'),
(4, 'Edwards', 'Seth'),
(5, 'Xie', 'Russell'),
(6, 'Beck', 'Alexandro'),
(7, 'Sai', 'Harold'),
(8, 'Zhao', 'Jessie'),
(9, 'Jimenez', 'Jill'),
(10, 'Moreno', 'Jimmy'),
(11, 'Johnson', 'Elizabeth'),
(12, 'Walker', 'Lauren');
-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `ID_COMMANDE_GISELLE` int(11) NOT NULL,
  `ID_FOURNISSEUR` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `livraison_2_`
--

CREATE TABLE `livraison_2_` (
  `ID_FOURNISSEUR` int(11) NOT NULL,
  `ID_INGREDIENTS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

INSERT INTO `onguents` (`ID_ONGUENT`, `ID_INVENTEUR`, `ID_SEUIL_DE_FRAICHEUR`, `ID_STOCK_QUANTITE`, `NOM_ONGUENT`, `PRIX_ONGUENT`, `INGREDIENT_1_ONGUENT`, `QUANTITE_1_ONGUENT`, `INGREDIENT_2_ONGUENT`, `QUANTITE_2_ONGUENT`, `INGREDIENT_3_ONGUENT`, `QUANTITE_3_ONGUENT`, `INGREDIENT_4_ONGUENT`, `QUANTITE_4_ONGUENT`) VALUES
(1, NULL, NULL, NULL, 'Huile d\'arme magique', '100', 'Sardonyx', '1', 'Branche de sauge maléfique', '3', 'Epée longue de maître', '2', '', NULL),
(2, NULL, NULL, NULL, 'Huile de bénédiction d\'arme', '149', 'Perle dorée', '1', 'Epée courte', '3', 'Chemise de maille', '3', 'Ecu en ébénite', '4'),
(3, NULL, NULL, NULL, 'Huile de tourne tête', '267', 'Amulette d\'armure naturelle', '1', 'Sardonyx', '5', 'Nephrite', '3', NULL, NULL),
(4, NULL, NULL, NULL, 'Potion crêpe aux ongles de géant', '203', 'Poudre d\'os', '300', 'Oeufs givrepeire', '3', 'Farine d\'os', '3', 'Orteil de géant', '15'),
(5, NULL, NULL, NULL, 'Potion flou', '440', 'Néphrite', '1', 'Ecu en acier', '2', 'Cadenas simple', '1', NULL, NULL),
(6, NULL, NULL, NULL, 'Potion d\'invisibilité', '645', 'Perle noire', '3', 'Potion de sagesse du hibou', '2', 'Epée longue de maître', '1', NULL, NULL),
(7, NULL, NULL, NULL, 'Potion de sagesse du hibou', '716', 'Lapis-lazuli', '2', 'Bottes de sept lieues', '3', 'Carreaux', '2', NULL, NULL),
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

INSERT INTO `potions` (`ID_POTIONS`,`NOM_POTIONS`, `PRIX_POTIONS`, `DILUANT_POTIONS`, `TEMPERATURE_POTIONS`, `INGREDIENT_1_POTIONS`, `QUANTITE_1_POTIONS`, `INGREDIENT_2_POTIONS`, `QUANTITE_2_POTIONS`, `INGREDIENT_3_POTIONS`, `QUANTITE_3_POTIONS`, `INGREDIENT_4_POTIONS`, `QUANTITE_4_POTIONS`) VALUES
(1, 'Huile d\'arme magique', '100', 'Vin', '93',  'Sardonyx', '1', 'Branche de sauge maléfique', '3', 'Epée longue de maître', '2', '', NULL),
(2, 'Huile de bénédiction d\'arme', '149', 'Jus de fruit', '55',  'Perle dorée', '1', 'Epée courte', '3', 'Chemise de maille', '3', 'Ecu en ébénite', '4'),
(3, 'Huile de tourne tête', '267', 'Bière', '60',  'Amulette d\'armure naturelle', '1', 'Sardonyx', '5', 'Nephrite', '3', NULL, NULL),
(4, 'Potion crêpe aux ongles de géant', '203', 'Eau', '83',  'Poudre d\'os', '300', 'Oeufs givrepeire', '3', 'Farine d\'os', '3', 'Orteil de géant', '15'),
(5, 'Potion flou', '440', 'Bière', '56', 'Néphrite', '1', 'Ecu en acier', '2', 'Cadenas simple', '1', NULL, NULL),
(6, 'Potion d\'invisibilité', '645', 'Jus de fruit', '102',  'Perle noire', '3', 'Potion de sagesse du hibou', '2', 'Epée longue de maître', '1', NULL, NULL),
(7, 'Potion de sagesse du hibou', '716', 'Jus de fruit', '51', 'Lapis-lazuli', '2', 'Bottes de sept lieues', '3', 'Carreaux', '2', NULL, NULL),
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

-- --------------------------------------------------------

--
-- Structure de la table `recipients`
--

CREATE TABLE `recipients` (
  `ID_RECIPIENTS` int(11) NOT NULL,
  `ID_POTIONS` int(11) DEFAULT NULL,
  `ID_ONGUENT` int(11) DEFAULT NULL,
  `TYPE_RECIPIENTS` text NOT NULL,
  `PRIX_RECIPIENTS` decimal(8,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `recipients` (`ID_RECIPIENTS`, `ID_POTIONS`, `ID_ONGUENT`, `TYPE_RECIPIENTS`, `PRIX_RECIPIENTS`) VALUES
(1, NULL, NULL, 'Fiole', '25'),
(2, NULL, NULL, 'Tube', '17'),
(3, NULL, NULL, 'Chaudron', '10'),
(4, NULL, NULL, 'Vase', '7'),
(5, NULL, NULL, 'Bocale', '9'),
(6, NULL, NULL, 'Bouteille', '10'),
(7, NULL, NULL, 'Verre', '4'),
(8, NULL, NULL, 'Pot', '6'),
(9, NULL, NULL, 'Gourde', '12'),
(10, NULL, NULL, 'Seau', '13'),
(11, NULL, NULL, 'Cuve', '30');

-- --------------------------------------------------------

--
-- Structure de la table `selection`
--

CREATE TABLE `selection` (
  `ID_RECIPIENTS` int(11) NOT NULL,
  `ID_CLIENT` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `seuil_de_fraicheur`
--

CREATE TABLE `seuil_de_fraicheur` (
  `ID_SEUIL_DE_FRAICHEUR` int(11) NOT NULL,
  `ID_COMMANDE_GISELLE` int(11) NOT NULL,
  `COM_ID_COMMANDE_GISELLE` int(11) NOT NULL,
  `SEUIL_DE_FRAICHEUR` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `ID_STOCK_QUANTITE` int(11) NOT NULL,
  `ID_RECIPIENTS` int(11) NOT NULL,
  `ID_COMMANDE` int(11) NOT NULL,
  `QUANTITE_STOCK_QUANTITE` decimal(8,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `achat`
--
ALTER TABLE `achat`
  ADD PRIMARY KEY (`ID_RECIPIENTS`,`ID_COMMANDE`),
  ADD KEY `FK_ACHAT` (`ID_COMMANDE`);

--
-- Index pour la table `achat_2_`
--
ALTER TABLE `achat_2_`
  ADD PRIMARY KEY (`ID_COMMANDE`,`ID_POTIONS`),
  ADD KEY `FK_ACHAT_2_` (`ID_POTIONS`);

--
-- Index pour la table `achat_3_`
--
ALTER TABLE `achat_3_`
  ADD PRIMARY KEY (`ID_COMMANDE`,`ID_ONGUENT`),
  ADD KEY `FK_ACHAT_3_` (`ID_ONGUENT`);

--
-- Index pour la table `achat_4_`
--
ALTER TABLE `achat_4_`
  ADD PRIMARY KEY (`ID_COMMANDE`,`ID_INGREDIENTS`),
  ADD KEY `FK_ACHAT_4_` (`ID_INGREDIENTS`);

--
-- Index pour la table `achat_5_`
--
ALTER TABLE `achat_5_`
  ADD PRIMARY KEY (`ID_COMMANDE_GISELLE`,`ID_INGREDIENTS`),
  ADD KEY `FK_ACHAT_5_` (`ID_INGREDIENTS`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_CLIENT`),
  ADD KEY `FK_EFFECTUER` (`ID_COMMANDE`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`ID_COMMANDE`);

--
-- Index pour la table `commande_giselle`
--
ALTER TABLE `commande_giselle`
  ADD PRIMARY KEY (`ID_COMMANDE_GISELLE`),
  ADD KEY `FK_DATE_DE_RECEPTION` (`ID_SEUIL_DE_FRAICHEUR`),
  ADD KEY `FK_DATE_DE_RECEPTION3` (`SEU_ID_SEUIL_DE_FRAICHEUR`);

--
-- Index pour la table `composition`
--
ALTER TABLE `composition`
  ADD PRIMARY KEY (`ID_INGREDIENTS`,`ID_ONGUENT`),
  ADD KEY `FK_COMPOSITION` (`ID_ONGUENT`);

--
-- Index pour la table `composition_2_`
--
ALTER TABLE `composition_2_`
  ADD PRIMARY KEY (`ID_INGREDIENTS`,`ID_POTIONS`),
  ADD KEY `FK_COMPOSITION_2_` (`ID_POTIONS`);

--
-- Index pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD PRIMARY KEY (`ID_FOURNISSEUR`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ID_INGREDIENTS`),
  ADD KEY `FK_QUALITE` (`ID_SEUIL_DE_FRAICHEUR`),
  ADD KEY `FK_QUANTITE_4_` (`ID_STOCK_QUANTITE`);

--
-- Index pour la table `inventeurs`
--
ALTER TABLE `inventeurs`
  ADD PRIMARY KEY (`ID_INVENTEUR`);

--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`ID_COMMANDE_GISELLE`,`ID_FOURNISSEUR`),
  ADD KEY `FK_LIVRAISON` (`ID_FOURNISSEUR`);

--
-- Index pour la table `livraison_2_`
--
ALTER TABLE `livraison_2_`
  ADD PRIMARY KEY (`ID_FOURNISSEUR`,`ID_INGREDIENTS`),
  ADD KEY `FK_LIVRAISON_2_` (`ID_INGREDIENTS`);

--
-- Index pour la table `onguents`
--
ALTER TABLE `onguents`
  ADD PRIMARY KEY (`ID_ONGUENT`),
  ADD KEY `FK_COMPOSER_2_` (`ID_INVENTEUR`),
  ADD KEY `FK_QUALITE_3_` (`ID_SEUIL_DE_FRAICHEUR`),
  ADD KEY `FK_QUANTITE_3_` (`ID_STOCK_QUANTITE`);

--
-- Index pour la table `potions`
--
ALTER TABLE `potions`
  ADD PRIMARY KEY (`ID_POTIONS`),
  ADD KEY `FK_COMPOSER` (`ID_INVENTEUR`),
  ADD KEY `FK_QUALITE_2_` (`ID_SEUIL_DE_FRAICHEUR`),
  ADD KEY `FK_QUANTITE_2_` (`ID_STOCK_QUANTITE`);

--
-- Index pour la table `recipients`
--
ALTER TABLE `recipients`
  ADD PRIMARY KEY (`ID_RECIPIENTS`),
  ADD KEY `FK_CONTENANCE` (`ID_POTIONS`),
  ADD KEY `FK_CONTENANCE_2_` (`ID_ONGUENT`);

--
-- Index pour la table `selection`
--
ALTER TABLE `selection`
  ADD PRIMARY KEY (`ID_RECIPIENTS`,`ID_CLIENT`),
  ADD KEY `FK_SELECTION` (`ID_CLIENT`);

--
-- Index pour la table `seuil_de_fraicheur`
--
ALTER TABLE `seuil_de_fraicheur`
  ADD PRIMARY KEY (`ID_SEUIL_DE_FRAICHEUR`),
  ADD KEY `FK_DATE_DE_RECEPTION2` (`ID_COMMANDE_GISELLE`),
  ADD KEY `FK_DATE_DE_RECEPTION4` (`COM_ID_COMMANDE_GISELLE`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`ID_STOCK_QUANTITE`),
  ADD KEY `FK_INVENTAIRE` (`ID_RECIPIENTS`),
  ADD KEY `FK_QUANTITE` (`ID_COMMANDE`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `ID_CLIENT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `ID_COMMANDE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commande_giselle`
--
ALTER TABLE `commande_giselle`
  MODIFY `ID_COMMANDE_GISELLE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `ID_FOURNISSEUR` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ID_INGREDIENTS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `inventeurs`
--
ALTER TABLE `inventeurs`
  MODIFY `ID_INVENTEUR` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `onguents`
--
ALTER TABLE `onguents`
  MODIFY `ID_ONGUENT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `potions`
--
ALTER TABLE `potions`
  MODIFY `ID_POTIONS` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `recipients`
--
ALTER TABLE `recipients`
  MODIFY `ID_RECIPIENTS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `seuil_de_fraicheur`
--
ALTER TABLE `seuil_de_fraicheur`
  MODIFY `ID_SEUIL_DE_FRAICHEUR` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `ID_STOCK_QUANTITE` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
