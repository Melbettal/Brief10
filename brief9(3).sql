-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 25 juin 2020 à 20:24
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `brief9`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email_admin` char(100) NOT NULL,
  `nom_admin` char(100) NOT NULL,
  `prenom_admin` char(100) NOT NULL,
  `pass_admin` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `email_admin`, `nom_admin`, `prenom_admin`, `pass_admin`) VALUES
(1, 'admin@domain.com', 'Anass', 'Youssfi', 'azerty');

-- --------------------------------------------------------

--
-- Structure de la table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'meryame', 'meryame');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'Boissons'),
(2, 'Crémerie'),
(3, 'Conserves'),
(4, 'Pates'),
(5, 'Legumes'),
(6, 'Fruits'),
(7, 'Epicerie');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(9, 'Boissons', 1),
(10, 'Crémerie', 1),
(11, 'Conserves', 1),
(12, 'Pates', 1),
(13, 'Legumes', 1),
(14, 'Fruits', 1),
(15, 'Epicerie', 1);

-- --------------------------------------------------------

--
-- Structure de la table `checkoutinfo`
--

CREATE TABLE `checkoutinfo` (
  `id_client` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Adress` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Postcode` int(20) NOT NULL,
  `Phone` int(10) NOT NULL,
  `pass_client` int(40) NOT NULL,
  `Details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `checkoutinfo`
--

INSERT INTO `checkoutinfo` (`id_client`, `first_name`, `last_name`, `Country`, `Adress`, `City`, `Postcode`, `Phone`, `pass_client`, `Details`) VALUES
(1, 'test', 'test', 'test', 'test', 'test', 20029, 611111111, 0, 'test'),
(2, 'test', 'test', 'test', 'testtest', 'test', 20029, 611111111, 0, 'test'),
(3, 'Meryame', 'Elbettal', 'test', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttest', 'test', 322222, 622112233, 0, 'testtesttesttesttesttesttesttesttesttestv'),
(4, 'adam', 'adam', 'test', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttest', 'test', 322222, 622112233, 0, 'testtesttesttesttesttesttesttesttesttestv'),
(5, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(6, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(7, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(8, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(9, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(10, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(11, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(12, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(13, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(14, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(15, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes'),
(16, 'first', 'last', 'country', 'address', 'city', 0, 0, 0, 'notes');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom_client` char(100) NOT NULL,
  `email_client` char(250) DEFAULT NULL,
  `pass_client` char(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `email_client`, `pass_client`) VALUES
(2, '3li', 'myEmail@domain.com', 'azerty'),
(4, 'mer', 'myEmail@domaine.com', '1234');

-- --------------------------------------------------------

--
-- Structure de la table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Vishal', 'vishal@gmail.com', '1234567890', 'Test Query', '2020-01-14 00:00:00'),
(2, 'vishal@gmail.com', '', '1234567890', 'testing', '2020-01-19 07:59:38'),
(3, 'Vishal', 'vishal@gmail.com', '1234567890', 'testing', '2020-01-19 08:00:09');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `added_on`) VALUES
(1, 2, 'My Address', 'Bareilly/UP', 110001, 'COD', 102, 'pending', 'pending', '2020-02-15 09:34:03'),
(2, 2, 'My Address', 'Bareilly/UP', 110001, 'COD', 102, 'pending', 'pending', '2020-02-15 09:35:04');

-- --------------------------------------------------------

--
-- Structure de la table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 4, 1, 99),
(2, 1, 1, 1, 3),
(3, 2, 4, 1, 99),
(4, 2, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `pack`
--

CREATE TABLE `pack` (
  `id_panier` int(11) NOT NULL,
  `nom_panier` char(250) NOT NULL,
  `desc_panier` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `packpanier`
--

CREATE TABLE `packpanier` (
  `id_panier` int(100) NOT NULL,
  `id_pack` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `packpanier`
--

INSERT INTO `packpanier` (`id_panier`, `id_pack`) VALUES
(2, 2),
(2, 2),
(2, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id_panier` int(11) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id_panier`, `id_client`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(30, 7, 'Argan Argap 250ML', 20, 20, 'ARGAN-ARGAP-250ML-300x351.PNG', 'test', 'test', 'test', '', 'test', 1),
(31, 5, 'Betterave', 6.86, 18, 'BETTERAVE', 'test', 'test', 'test', '', 'test', 1),
(32, 1, 'Boustane Orange', 9.5, 19, 'boustane-orange-1L-300x351', 'test', 'test', 'test', '', 'test', 1),
(33, 5, 'Broccoli', 10, 18, 'broccoli-site-300x351', 'test', 'test', 'test', '', 'test', 1),
(34, 5, 'Choux Blancs', 11, 20, 'choux-blancs', 'test', 'test', 'test', '', 'test', 1),
(35, 5, 'Citron Jaune', 9, 20, 'CITRON-JAUNE-LE-KG', 'test', 'test', 'test', '', 'test', 1),
(36, 7, 'Concentre Tomate 21CL', 4.45, 20, 'CONCENTR-TOMATE-21CL-AICHA', 'test', 'test', 'test', '', 'test', 1),
(37, 5, 'Concombre Court', 7, 20, 'CONCOMBRE-COURT', 'test', 'test', 'test', '', 'test', 1),
(38, 5, 'Couge Rouge', 12, 20, 'COUGE-ROUGE', 'test', 'test', 'test', '', 'test', 1),
(39, 5, 'Courgette Blanche', 14, 19, 'COURGETTE-BLANCHE', 'test', 'test', 'test', '', 'test', 1),
(40, 7, 'Cristal Huile 5L', 56.3, 20, 'CRISTAL-Huile-5L', 'test', 'test', 'test', '', 'test', 1),
(41, 4, 'Dari Qoquillettes 500g', 14.5, 20, 'dari-coquillettes-500g', 'test', 'test', 'test', '', 'test', 1),
(42, 7, 'Dari Couscous 1kg', 19, 20, 'DARI-Couscous-belboula-1Kg', 'test', 'test', 'test', '', 'test', 1),
(43, 3, 'Epinard Branche', 8.4, 20, 'EPINARD-BRANCHE-1.2-DAUCY', 'test', 'test', 'test', '', 'test', 1),
(44, 5, 'Epinard', 30, 20, 'epinard-site-300x351', 'test', 'test', 'test', '', 'test', 1),
(45, 3, 'Filet Sardine Carl', 4, 20, 'filet-sardine-carle-300x351', 'test', 'test', 'test', '', 'test', 1),
(46, 6, 'Pomme', 9.99, 20, 'Gala-Pomme', 'test', 'test', 'test', '', 'test', 1),
(47, 7, 'Huile Dolive 1L', 16, 20, 'HUILE-DOLIVE-VIERGE-COURANTE-1L-ATLAS-OLIVE', 'test', 'test', 'test', '', 'test', 1),
(48, 1, 'Valencia Orange 1L', 9.6, 20, 'orange-1L-300x351', 'test', 'test', 'test', '', 'test', 1),
(49, 6, 'Orange', 7.59, 20, 'orange-a-jus', 'test', 'test', 'test', '', 'test', 1),
(51, 5, 'Poivron Jaune', 12, 20, 'POIVRON-JAUNE', 'test', 'test', 'test', '', 'test', 1),
(52, 1, 'Pulpy 1L', 8.99, 20, 'pulpy-1L', 'test', 'test', 'test', '', 'test', 1),
(53, 7, 'Cigala Riz Etuve Jaune 1KG', 19.99, 20, 'RIZ-ETUVE-JAUNE-1K-CIGALA', 'test', 'test', 'test', '', 'test', 1),
(56, 1, 'Valencia Fruit 1L', 11.99, 20, 'valencia-fruit-rg-1L-300x351', 'test', 'test', 'test', '', 'test', 1),
(57, 1, 'Valencia Jus Ananas', 11.59, 20, 'valencia-pur-jus-ananas-1L-300x351', 'test', 'test', 'test', '', 'test', 1),
(59, 2, 'TETS', 0, 0, '379804959_cheng-feng-Phuo8BAebTo-unsplash.jpg', 'ZED', 'DEZ', '', '', 'DZE', 1),
(60, 5, 'RESR', 0, 0, '635735027_cheng-feng-Phuo8BAebTo-unsplash.jpg', 'DEA', 'ADE', '', '', 'AZZA', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` char(250) NOT NULL,
  `qt_max` int(11) NOT NULL,
  `id_image` char(100) NOT NULL,
  `id_categori` int(11) NOT NULL,
  `prix_u` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `nom_produit`, `qt_max`, `id_image`, `id_categori`, `prix_u`) VALUES
(30, 'Argan Argap 250ML', 40, 'ARGAN-ARGAP-250ML-300x351', 7, 50),
(31, 'Betterave', 20, 'BETTERAVE', 5, 6.7),
(32, 'Boustane Orange', 20, 'boustane-orange-1L-300x351', 1, 9.5),
(33, 'Broccoli', 30, 'broccoli-site-300x351', 5, 10),
(34, 'Choux Blancs', 20, 'choux-blancs', 5, 11),
(35, 'Citron Jaune', 20, 'CITRON-JAUNE-LE-KG', 5, 9),
(36, 'Concentre Tomate 21CL', 20, 'CONCENTR-TOMATE-21CL-AICHA', 7, 4.45),
(37, 'Concombre Court', 20, 'CONCOMBRE-COURT', 5, 7),
(38, 'Couge Rouge', 20, 'COUGE-ROUGE', 5, 12),
(39, 'Courgette Blanche', 20, 'COURGETTE-BLANCHE', 5, 14),
(40, 'Cristal Huile 5L', 20, 'CRISTAL-Huile-5L', 7, 56.3),
(41, 'Dari Qoquillettes 500g', 20, 'dari-coquillettes-500g', 4, 14.5),
(42, 'Dari Couscous 1kg', 20, 'DARI-Couscous-belboula-1Kg', 7, 19),
(43, 'Epinard Branche', 20, 'EPINARD-BRANCHE-1.2-DAUCY', 3, 8.4),
(44, 'Epinard', 20, 'epinard-site-300x351', 5, 30),
(45, 'Filet Sardine Carl', 20, 'filet-sardine-carle-300x351', 3, 4),
(46, 'Pomme', 20, 'Gala-Pomme', 6, 9.99),
(47, 'Huile Dolive 1L', 20, 'HUILE-DOLIVE-VIERGE-COURANTE-1L-ATLAS-OLIVE', 7, 16),
(48, 'Valencia Orange 1L', 20, 'orange-1L-300x351', 1, 9.6),
(49, 'Orange', 20, 'orange-a-jus', 6, 7.59),
(50, 'Piment', 10, 'piment', 5, 9.99),
(51, 'Poivron Jaune', 20, 'POIVRON-JAUNE', 5, 12),
(52, 'Pulpy 1L', 20, 'pulpy-1L', 1, 8.99),
(53, 'Cigala Riz Etuve Jaune 1KG', 20, 'RIZ-ETUVE-JAUNE-1K-CIGALA', 7, 19.99),
(54, 'Cigala Riz Long Blanc 1KG', 20, 'riz-long-blanc-cigala-1kg', 7, 14.99),
(55, 'Tria Farine Fleur 2kg', 20, 'TRIA-Farine-Fleur-2Kg', 7, 19.99),
(56, 'Valencia Fruit 1L', 20, 'valencia-fruit-rg-1L-300x351', 1, 11.99);

-- --------------------------------------------------------

--
-- Structure de la table `produitpanier`
--

CREATE TABLE `produitpanier` (
  `quantite_produit` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_panier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produitpanier`
--

INSERT INTO `produitpanier` (`quantite_produit`, `id_produit`, `id_panier`) VALUES
(1, 33, 1),
(1, 32, 1),
(1, 31, 2),
(1, 33, 2),
(1, 32, 2),
(1, 30, 2),
(1, 34, 2),
(1, 37, 2),
(1, 40, 2),
(1, 38, 2),
(1, 41, 2),
(1, 43, 2),
(1, 50, 2),
(1, 56, 2),
(1, 52, 2),
(1, 42, 2);

-- --------------------------------------------------------

--
-- Structure de la table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `produit_nom` varchar(100) NOT NULL,
  `produit_prix` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `shoppingcart`
--

INSERT INTO `shoppingcart` (`produit_nom`, `produit_prix`) VALUES
('Betterave 	20 	BETTERAVE 	5 	\r\n	32 	Boustane Orange 	20 	boustane-orange-1L-300x351 	1 	9.5\r\n	33 	Br', 7),
('Boustane Orange', 10);

-- --------------------------------------------------------

--
-- Structure de la table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id_produit` tinyint(4) NOT NULL,
  `produit_nom` varchar(255) NOT NULL,
  `produit_prix` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `shopping_cart`
--

INSERT INTO `shopping_cart` (`id_produit`, `produit_nom`, `produit_prix`) VALUES
(31, 'Betterave', 7),
(32, 'Boustane Orange', 10),
(33, 'Broccoli', 10),
(39, 'Courgette Blanche', 14);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` int(100) NOT NULL,
  `email` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'mohammed', 'qwerty', 'simo@gmail.com', '1234567890', '2020-01-14 00:00:00'),
(2, 'admintest', 'azerty', 'test@gmail.com', '12345678980', '2020-01-22 08:33:08');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `checkoutinfo`
--
ALTER TABLE `checkoutinfo`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pack`
--
ALTER TABLE `pack`
  ADD PRIMARY KEY (`id_panier`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id_panier`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `checkoutinfo`
--
ALTER TABLE `checkoutinfo`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `pack`
--
ALTER TABLE `pack`
  MODIFY `id_panier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id_panier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
