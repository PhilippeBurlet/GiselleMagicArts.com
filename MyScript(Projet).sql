-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 31 Mars 2017 à 11:41
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet giselle`
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

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `ID_INGREDIENTS` int(11) NOT NULL,
  `ID_SEUIL_DE_FRAICHEUR` int(11) NOT NULL,
  `ID_STOCK_QUANTITE` int(11) NOT NULL,
  `NOM_INGREDIENTS` text NOT NULL,
  `FRAICHEUR_INGREDIENTS` text NOT NULL,
  `DATE_DE_RECEPTION_INGREDIENTS` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `inventeurs`
--

CREATE TABLE `inventeurs` (
  `ID_INVENTEUR` int(11) NOT NULL,
  `NOM_INVENTEUR` text NOT NULL,
  `PRENOM_INVENTEUR` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `ID_INVENTEUR` int(11) NOT NULL,
  `ID_SEUIL_DE_FRAICHEUR` int(11) NOT NULL,
  `ID_STOCK_QUANTITE` int(11) NOT NULL,
  `NOM_ONGUENT` text NOT NULL,
  `PRIX_ONGUENT` decimal(8,0) NOT NULL,
  `INGREDIENT_1_ONGUENT` text NOT NULL,
  `QUANTITE_1_ONGUENT` decimal(8,0) NOT NULL,
  `INGREDIENT_2_ONGUENT` text NOT NULL,
  `QUANTITE_2_ONGUENT` decimal(8,0) NOT NULL,
  `INGREDIENT_3_ONGUENT` text NOT NULL,
  `QUANTITE_3_ONGUENT` decimal(8,0) NOT NULL,
  `INGREDIENT_4_ONGUENT` text DEFAULT NULL,
  `QUANTITE_4_ONGUENT` decimal(8,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `INGREDIENT_4_POTIONS` text DEFAULT NULL,
  `QUANTITE_4_POTIONS` decimal(8,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recipients`
--

CREATE TABLE `recipients` (
  `ID_RECIPIENTS` int(11) NOT NULL,
  `ID_POTIONS` int(11) DEFAULT NULL,
  `ID_ONGUENT` int(11) DEFAULT NULL,
  `TYPE_RECIPIENTS` text NOT NULL,
  `PRIX_RECIPIENTS` decimal(8,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  MODIFY `ID_INGREDIENTS` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `ID_RECIPIENTS` int(11) NOT NULL AUTO_INCREMENT;
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
