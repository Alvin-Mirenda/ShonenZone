-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 13 mai 2022 à 10:44
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shonen`
--

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `nom_genre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `nom_genre`) VALUES
(1, 'shônen');

-- --------------------------------------------------------

--
-- Structure de la table `nouveau`
--

CREATE TABLE `nouveau` (
  `id_nouveau` int(11) NOT NULL,
  `titre_nouveau` varchar(100) NOT NULL,
  `auteur_nouveau` varchar(60) NOT NULL,
  `genre_nouveau` varchar(30) NOT NULL,
  `datesortie_nouveau` date NOT NULL,
  `image_nouveau` varchar(255) NOT NULL,
  `note_nouveau` tinyint(5) NOT NULL,
  `description_nouveau` varchar(255) NOT NULL,
  `durée_nouveau` int(11) NOT NULL,
  `lien_nouveau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `nouveau`
--

INSERT INTO `nouveau` (`id_nouveau`, `titre_nouveau`, `auteur_nouveau`, `genre_nouveau`, `datesortie_nouveau`, `image_nouveau`, `note_nouveau`, `description_nouveau`, `durée_nouveau`, `lien_nouveau`) VALUES
(1, 'Concept', 'Alvin Mirenda', 'Information', '2032-12-31', 'https://c.tenor.com/bfnPEuMuOFIAAAAC/naruto-yay.gif', 5, 'Grâce à cette nouvelle section, vous pouvez avoir accès au nouveau film shônen sorti et au prochain à venir.\r\nEn cliquant sur le bouton, vous pourrez accéder à la page allo ciné du manga qui vous intéresse.\r\nNous espérons que cela vous donnera envie.', 105, 'https://www.allocine.fr/'),
(2, 'Jujutsu Kaisen 0', 'Sung-ho Park', 'shônen', '2022-03-16', 'https://www.journaldugeek.com/content/uploads/2021/12/template-jdg-2021-12-31t171419-998.jpg', 4, 'Lorsqu\'il était enfant, Yuta Okkotsu a vu son amie Rika Orimoto perdre la vie dans un terrible accident. Depuis, Rika vient hanter Yuta qui a même souhaité sa propre mort après avoir souffert des années de cette malédiction.', 105, 'https://www.allocine.fr/film/fichefilm_gen_cfilm=291677.html'),
(3, 'ONE PIECE: RED', 'Eiichiro Oda, Tsutomu Kuroiwa', 'shônen', '0000-00-00', 'https://global-img.gamergen.com/one-piece-film-red-01-19-11-2021_0900993124.jpg', 0, 'One Piece : Red, se focalisera en partie sur l\'un des personnages culte du manga, à savoir Shanks le Roux.', 0, 'https://www.allocine.fr/film/fichefilm_gen_cfilm=298674.html'),
(4, 'DETECTIVE CONAN : LA FIANCÉE DE SHIBUYA\r\n', 'Gosho Aoyama, Okura Takahiro', 'shônen', '2022-05-18', 'https://smallthings.fr/wp-content/uploads/2021/04/1403725_backdrop_scale_1280xauto-1210x642.jpg', 0, 'Le quartier de Shibuya bat son plein pour Halloween. La détective Sato est en robe de mariée devant un parterre d\'invités, dont Conan bien sûr! Un agresseur fait irruption dans la salle et le détective Takagi est blessé en tentant de protéger Sato.', 110, 'https://www.allocine.fr/film/fichefilm_gen_cfilm=299558.html'),
(5, 'DORAGON BORU SUPA SUPA HIRO', 'Akira Toriyama, Akira Toriyama', 'shônen', '0000-00-00', 'https://www.db-z.com/wp-content/uploads/2021/12/Dragon-Ball-Super-Super-Hero-Presentation-personnages-staff-480x320.jpg?v=1639823092', 0, 'Suite de Dragon Ball Super: Broly. Piccolo, personnage emblématique de la licence d\'Akira Toriyama, devrait être au centre de l\'intrigue. On y retrouvera bien entendu le fidèle Krillin, ainsi qu\'un personnage inédit imaginé par Toriyama lui-même.', 0, 'https://www.allocine.fr/film/fichefilm_gen_cfilm=292719.html'),
(6, 'DEMON SLAYER - KIMETSU NO YAIBA - LE FILM : LE TRAIN DE L\'INFINI', 'Koyoharu Gotouge', 'shônen', '2021-05-19', 'https://fr.web.img6.acsta.net/newsv7/21/05/06/10/19/2234147.jpg', 0, 'Le groupe de Tanjirô a terminé son entraînement de récupération au domaine des papillons et embarque à présent en vue de sa prochaine mission à bord du train de l\'infini, d\'où quarante personnes ont disparu en peu de temps. ', 117, 'https://www.allocine.fr/film/fichefilm_gen_cfilm=272355.html');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `titre_produit` varchar(50) NOT NULL,
  `image2_produit` varchar(255) NOT NULL,
  `auteur_produit` varchar(100) NOT NULL,
  `prix_produit` int(11) NOT NULL,
  `synopsis_produit` text NOT NULL,
  `image_produit` varchar(255) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `description_produit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`titre_produit`, `image2_produit`, `auteur_produit`, `prix_produit`, `synopsis_produit`, `image_produit`, `id_produit`, `description_produit`) VALUES
('Concept', 'https://www.buzzfrance.fr/wp-content/uploads/2020/10/luffy-2.gif', 'Alvin Mirenda', 0, 'Shônen-Zone est un site qui vous permet de louer vos shônen préférés à des prix abordables.\r\nIl vous suffit de choisir le manga de votre choix et vous aurez ensuite accès à la fiche produit en cliquant sur la carte correspondante.\r\n', 'https://i.pinimg.com/originals/c6/83/70/c683700b4c662fb8a2d52a81b96aec3d.gif', 1, 'Voilà vous avez compris le principe je vous souhaite une bonne lecture du site.'),
('Bleach', 'https://www.manga-sanctuary.com/img/f/992-bleach.jpg', 'Tite Kubo', 8, 'Ichigo Kurosaki, lycéen de 15 ans, arrive à voir, entendre et toucher les âmes des morts depuis qu\'il est tout petit. Un soir, sa routine quotidienne vient à être bouleversée à la suite de sa rencontre avec une shinigami (死神, littéralement « dieu de la mort »), Rukia Kuchiki, et la venue d\'un monstre appelé hollow.', 'img/img/bleach.jpg', 2, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('One Piece ', 'https://lvdneng.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2020/05/06/node_749505/46982263/public/2020/05/06/B9723396273Z.1_20200506170704_000%2BG02FVMCAG.1-0.jpg?itok=qntyo5h_1588777631', 'Eiichirō Oda', 8, 'Dans One Piece, nous suivons l\'histoire d\'un jeune pirate, Monkey D. Luffy, dont le rêve est de prendre la mer pour devenir le Seigneur des pirates. Lui et son équipage de pirates voguent sur les océans à la recherche du trésor le plus convoité de l\'histoire de la piraterie : le One Piece.', 'img/img/onepiece.jpg', 3, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Naruto Shippuden', 'https://www.mangaluxe.com/dossiers/naruto/img/naruto-shippuden-min.jpg', 'Masashi Kishimoto', 8, 'Après deux ans et demi d\'entraînement avec Jiraya, Naruto retrouve ses camarades de l\'Académie des ninja ainsi que ses professeurs de Konoha. Tous ont évolué, y compris les ninjas du village de Suna. Cependant, le village est menacé par Akatsuki.', 'img/img/narutoshippuden.jpg', 4, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Dragon Ball Z', 'https://lagiclee.fr/wp-content/uploads/2018/03/dbz_buu_saga1.jpg', 'Akira Toriyama', 8, 'Cinq ans après le mariage de Son Goku et de Chichi, Raditz, un mystérieux guerrier de l\'espace, frère de Son Goku, arrive sur Terre. Goku apprend qu\'il vient d\'une planète de guerriers redoutables dont il ne reste plus que quatre survivants.', 'img/img/dbz.jpg', 5, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Dragon Ball ', 'https://static1.terrafemina.com/articles/9/35/76/99/@/536583-dans-la-region-de-valence-le-dessin-ani-950x635-2.jpg', 'Akira Toriyama', 8, 'Dragon Ball raconte les aventures de Goku, un jeune garçon doté d\'une queue de singe. L\'histoire commence lorsque Goku rencontre Bulma, qui est à la recherche des sept boules de cristal. Ces boules de cristal ont un pouvoir qui exaucerait n\'importe quel souhait une fois les 7 d\'entre elles réunies.', 'img/img/db.jpg', 6, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Dragon Ball Super', 'https://nntheblog.com/wp-content/uploads/2021/11/dragon-ball-super-future-trunks-arc-wallpaper-preview.jpg', 'Akira Toriyama', 8, 'Six mois après la bataille contre Boo, la paix sur Terre est à nouveau menacée par un mystérieux personnage : Beerus, le Dieu de la Destruction. Il parcourt l\'univers à la recherche du Super Saiyan Divin.', 'img/img/dbs.jpg', 7, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Dragon Ball GT', 'https://static.hitek.fr/img/actualite/2017/07/04/fb_1376338350-dbgt.jpg', 'Akira Toriyama', -45, ' L\'histoire se déroule dix ans (cinq ans dans la version japonaise) après la fin de la série animée Dragon Ball Z. Son Goku termine l\'entraînement de Oob dans le palais du Tout-Puissant. Pilaf, l\'ennemi de Son Goku depuis les débuts de Dragon Ball souhaite utiliser les Dragon Balls pour dominer le monde.', 'img/img/dbgt.jpg', 8, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Naruto', 'https://media.ouest-france.fr/v1/pictures/MjAyMDEyZjc2Mzg4NDQ0Nzc2ZGFmNjYwMDMwMjA2NTkzY2FlNDU?width=480&focuspoint=50%2C25&cropresize=1&client_id=bpeditorial&sign=e5b0a74aec8d2a060a95e7639f2066bc09edb6a220754166744f75e6e68e3a6c', 'Masashi Kishimoto', 8, 'Naruto est un jeune ninja du village de Konoha. Hôte du démon renard à neuf queues, une créature qui a attaqué le village par le passé, il est rejeté par les autres villageois. Son ambition est de devenir Hokage, le chef du village, afin de gagner le respect des habitants.', 'img/img/naruto.jpg', 9, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Blue Exorcist', 'https://www.shoshosein.com/sites/default/files/fiches/animes/blue-exorcist/blue-exorcist-wallpaper-18.jpg', 'Kazue Kato', 8, 'Le monde de Blue Exorcist se compose de deux dimensions qui s\'opposent comme deux faces de miroirs. Le premier est le monde dans lequel les êtres humains vivent, Assiah. L\'autre est le monde des démons, la Géhenne. Normalement, le voyage et même toute forme de contact entre les deux est impossible.', 'img/img/blx.jpg', 10, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('The Promised Neverland', 'https://www.ecranlarge.com/media/cache/1600x1200/uploads/articles/001/372/013/the-promised-neverland-photo-1372020-large.jpeg', 'Nanao', 8, 'Emma, Norman et Ray coulent des jours heureux à l\'orphelinat Grace Field House. Entourés de leurs petits frères et soeurs, ils s\'épanouissent sous l\'attention pleine de tendresse de « Maman », qu\'ils considérent comme leur véritable mère. Mais tout bascule le soir où ils découvrent l\'abominable réalité qui se cache derrière la façade de leur vie paisible ! Ils doivent s\'échapper, c\'est une question de vie ou de mort ! ', 'img/img/tpn.jpg', 11, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Demon Slayer', 'https://technplay.com/wp-content/uploads/2021/10/demon-slayer.png', 'Koyoharu Gotouge', 8, 'Début du XXe siecle au Japon, un petit marchand de charbon nommé Tanjiro vit une vie sans histoire dans les montagnes. Jusqu\'au jour tragique où, après une courte absence, il retrouve son village et sa famille massacrés par un ogre ! La seule survivante de cette tragédie est sa jeune sœur Nezuko.', 'img/img/ds.jpg', 12, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('My Hero Academia', 'https://static.cnews.fr/sites/default/files/my_hero_academia_saison_5_adn_27_mars-taille1200_605b77c1d777a.jpg', 'Kōhei Horikoshi', 8, 'Le jeune Izuku Midoriya en est un fan absolu. Il n\'a qu\'un rêve : entrer à la Hero Academia pour suivre les traces de son idole. Le problème, c\'est qu\'il fait partie des 20 % qui n\'ont aucun pouvoir... Son destin est bouleversé le jour où sa route croise celle d\'All Might en personne !', 'img/img/mha.jpg', 13, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Jujutsu Kaisen', 'https://cdn.statically.io/gh/Anime-Sama/IMG/img/animes/animes%20wallpapers/jujutsucarousel.jpg', 'Gege Akutami', 8, 'Au Japon, c\'est l\'un des plus grands succès actuels de la bande dessinée. Sorti en France en février, Jujutsu Kaisen est la nouvelle série de référence. Éditée aux éditions Ki-oon, elle suit un lycéen qui doit affronter une série de monstres afin de lever une malédiction.', 'img/img/jjk.jpg', 14, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Dr. Stone', 'https://static.fnac-static.com/multimedia/Images/FD/Comete/126301/CCP_IMG_ORIGINAL/1648589.jpg', 'Riichirō Inagaki', 8, 'Un jour, une lumière éclaira la Terre, changeant tous les humains en pierre. Ainsi, l\'humanité s\'éteignit. Plusieurs millénaires plus tard, Taiju parvient à s\'échapper de son enveloppe de pierre pour découvrir un monde dans lequel la nature a repris ses droits. Avec son ami Senku, ils décident de tout mettre en œuvres pour faire renaître l\'humanité de ses cendres et survivre.', 'img/img/drs.jpg', 15, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray'),
('Bleach', 'https://fr.web.img2.acsta.net/newsv7/20/08/20/11/12/3856190.jpg', 'Tite Kubo', 8, 'Ichigo Kurosaki, lycéen de 15 ans, arrive à voir, entendre et toucher les âmes des morts depuis qu\'il est tout petit. Un soir, sa routine quotidienne vient à être bouleversée à la suite de sa rencontre avec une shinigami (死神, littéralement « dieu de la mort »), Rukia Kuchiki, et la venue d\'un monstre appelé hollow.', 'img/img/bleach2.jpg', 16, 'Coffret comprenant toutes les saisons de l\'anime, voix françaises et japonaises avec possibilité de sous-titres français.\r\nNombre d\'épisodes : 167\r\nDurée : 66h25\r\nNombre de DVD : 40\r\nDVD/Blu-ray');

-- --------------------------------------------------------

--
-- Structure de la table `produit_genre`
--

CREATE TABLE `produit_genre` (
  `ext_produit` int(11) NOT NULL,
  `ext_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit_genre`
--

INSERT INTO `produit_genre` (`ext_produit`, `ext_genre`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `nom_reservation` varchar(30) NOT NULL,
  `prenom_reservation` varchar(30) NOT NULL,
  `tel_reservation` int(10) NOT NULL,
  `adresse_reservation` varchar(100) NOT NULL,
  `mail_reservation` varchar(50) NOT NULL,
  `debutdate_reservation` date NOT NULL,
  `findate_reservation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `nouveau`
--
ALTER TABLE `nouveau`
  ADD PRIMARY KEY (`id_nouveau`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `nouveau`
--
ALTER TABLE `nouveau`
  MODIFY `id_nouveau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
