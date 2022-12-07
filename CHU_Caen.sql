-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 07 déc. 2022 à 19:44
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `CHU_Caen`
--

-- --------------------------------------------------------

--
-- Structure de la table `archives`
--

CREATE TABLE `archives` (
  `identifiant_resident` varchar(200) NOT NULL,
  `date_entree` date NOT NULL,
  `date_sortie` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `archives`
--

INSERT INTO `archives` (`identifiant_resident`, `date_entree`, `date_sortie`) VALUES
('AbbottFranciscoB-2022-03-29', '2022-03-29', '2022-11-08'),
('AllenRobertoAB-2022-01-04', '2022-01-04', '2022-11-12'),
('AlmendarezLeoAB-2022-01-15', '2022-01-15', NULL),
('AlstonGaryAB+2022-02-06', '2022-02-06', '2022-06-02'),
('AngelArleneB-2022-08-23', '2022-08-23', NULL),
('BaisleyMarkAB-2022-06-30', '2022-06-30', NULL),
('BeamanRobertAB-2022-08-05', '2022-08-05', NULL),
('BihmMaryA+2022-07-02', '2022-07-02', NULL),
('BlanchardDonaldO+2022-05-26', '2022-05-26', NULL),
('BoatwrightThomasA+2022-04-02', '2022-04-02', '2022-09-26'),
('BrunsonVernaO+2022-03-17', '2022-03-17', NULL),
('BullardHenryAB+2022-06-03', '2022-06-03', NULL),
('BurringtonCharlesAB-2022-02-06', '2022-02-06', '2022-09-01'),
('CapulongInezB-2022-06-22', '2022-06-22', NULL),
('ChasseLillieAB+2022-09-09', '2022-09-09', NULL),
('ConwayLesterAB+2022-09-12', '2022-09-12', NULL),
('CookeStanleyB+2022-02-20', '2022-02-20', '2022-06-17'),
('CrouchCharlesO+2022-04-25', '2022-04-25', NULL),
('DanielLorraineAB-2022-04-09', '2022-04-09', '2022-09-25'),
('DennisJohnO+2022-05-20', '2022-05-20', NULL),
('DiazKathleenAB+2022-10-01', '2022-10-01', '2022-10-02'),
('DinwiddieRandallA-2022-04-14', '2022-04-14', '2022-12-06'),
('DunnDeannAB-2022-01-27', '2022-01-27', '2022-10-17'),
('DunneDaynaB+2022-06-24', '2022-06-24', NULL),
('DurganSamB-2022-10-30', '2022-10-30', NULL),
('EdgecombLurleneB-2022-03-14', '2022-03-14', NULL),
('ElstonLeoA-2022-04-26', '2022-04-26', '2022-07-22'),
('EspinozaBarbaraA-2022-04-06', '2022-04-06', NULL),
('EvansDanielA+2022-08-21', '2022-08-21', '2022-08-22'),
('EvinsMichaelAB+2022-04-24', '2022-04-24', '2022-07-06'),
('FernandezKarenO+2022-02-12', '2022-02-12', '2022-02-27'),
('FerrellNigelA+2022-03-12', '2022-03-12', '2022-03-19'),
('FreundRussellB+2022-10-01', '2022-10-01', NULL),
('GarciaMarianneAB-2022-07-11', '2022-07-11', NULL),
('GilliamAngelaAB+2022-08-10', '2022-08-10', NULL),
('GironCherylAB-2022-01-16', '2022-01-16', '2022-03-01'),
('GoinsEleanoreO-2022-03-23', '2022-03-23', NULL),
('GonzalezLenB-2022-01-01', '2022-01-01', '2022-09-26'),
('HaackFilomenaO-2022-10-16', '2022-10-16', '2022-10-30'),
('HallDawnB+2021-12-17', '2021-12-17', '2022-09-22'),
('HallMichaelO+2022-11-14', '2022-11-14', NULL),
('HamarJohnB-2022-01-23', '2022-01-23', '2022-04-27'),
('HansonJacksonO+2022-03-05', '2022-03-05', '2022-04-27'),
('HenryAlmaAB-2022-07-06', '2022-07-06', NULL),
('HillLaurieAB-2021-12-18', '2021-12-18', '2022-04-25'),
('HodgesStanleyB-2022-07-27', '2022-07-27', NULL),
('JohnsonEssieAB+2022-05-14', '2022-05-14', NULL),
('JonesBrendaA+2022-07-17', '2022-07-17', NULL),
('KenneyAnthonyB+2022-05-27', '2022-05-27', NULL),
('KimJacqulineA-2022-01-05', '2022-01-05', '2022-11-08'),
('KobashigawaBerniceAB-2021-12-08', '2021-12-08', '2022-04-22'),
('KwiatkowskiJohnO-2022-10-02', '2022-10-02', '2022-11-29'),
('LastrapesJeremiahO+2022-03-11', '2022-03-11', '2022-04-28'),
('LemkeTabithaO+2022-08-03', '2022-08-03', '2022-11-27'),
('LopezPamelaO-2022-04-25', '2022-04-25', '2022-08-02'),
('LunaSteveA-2022-09-28', '2022-09-28', NULL),
('MackeySylviaAB+2022-01-06', '2022-01-06', '2022-12-01'),
('MaditzTammyA+2021-12-19', '2021-12-19', '2022-04-16'),
('MaiaDavidA-2022-04-19', '2022-04-19', NULL),
('MandichRonaldO-2022-04-10', '2022-04-10', '2022-04-15'),
('MarsonYolandaAB-2022-06-06', '2022-06-06', '2022-09-20'),
('MaselliSondraO+2022-08-29', '2022-08-29', '2022-10-12'),
('MerittEvaB-2021-12-30', '2021-12-30', '2022-12-06'),
('MonroeRichardO+2022-03-07', '2022-03-07', '2022-05-06'),
('MooreJohnnyO-2022-02-14', '2022-02-14', NULL),
('MorganMichelleB+2022-03-22', '2022-03-22', '2022-09-26'),
('MorinMatthewA+2022-09-07', '2022-09-07', '2022-09-30'),
('MorrisonRoyAB+2022-05-08', '2022-05-08', '2022-12-04'),
('MrozinskiSylviaO-2022-10-18', '2022-10-18', NULL),
('OcasioClarissaO-2022-01-03', '2022-01-03', '2022-11-30'),
('ParsonsConnieB-2022-11-21', '2022-11-21', NULL),
('PattersonNatalieO-2022-03-13', '2022-03-13', '2022-11-11'),
('PecoraroJoanneO-2022-05-11', '2022-05-11', '2022-06-06'),
('PerryEduardoB-2022-10-06', '2022-10-06', '2022-10-08'),
('PrettiJulianneO-2022-04-24', '2022-04-24', '2022-10-25'),
('PurgasonWilliamB-2022-10-17', '2022-10-17', '2022-12-03'),
('RathKatherineAB+2022-02-14', '2022-02-14', '2022-11-21'),
('ReyesGaryB-2022-10-08', '2022-10-08', NULL),
('ReynoldsAndersonO-2022-04-22', '2022-04-22', '2022-12-04'),
('RodriguezBridgetA+2022-03-09', '2022-03-09', '2022-11-14'),
('RooksJamesB+2022-07-09', '2022-07-09', NULL),
('RuizJohnA-2022-09-19', '2022-09-19', NULL),
('SchlenkerLisaAB-2022-06-07', '2022-06-07', '2022-11-02'),
('ScottCarolO+2022-07-13', '2022-07-13', NULL),
('ScottNancyAB-2022-11-14', '2022-11-14', NULL),
('SegoviaLindaA+2022-05-29', '2022-05-29', '2022-07-06'),
('ShermanDebraAB-2022-03-06', '2022-03-06', '2022-04-25'),
('SherronAnthonyB-2022-08-26', '2022-08-26', NULL),
('ShusterLeahAB+2022-08-21', '2022-08-21', '2022-10-01'),
('SimonChrisO-2022-07-17', '2022-07-17', NULL),
('SmithLucyO+2022-08-09', '2022-08-09', NULL),
('StraightBarbaraB-2022-02-19', '2022-02-19', '2022-06-12'),
('SummersMasonA-2022-08-06', '2022-08-06', NULL),
('TempleDorcasB+2022-08-10', '2022-08-10', NULL),
('ThomasonGlenO+2022-10-05', '2022-10-05', NULL),
('TimmonsMarianAB-2022-08-09', '2022-08-09', NULL),
('TurchiAbbeyB+2022-09-25', '2022-09-25', NULL),
('UtleyBettyO-2021-12-23', '2021-12-23', '2022-01-07'),
('VaskoFrankA+2022-05-30', '2022-05-30', '2022-08-24'),
('VerdinoLorenaAB-2022-09-17', '2022-09-17', NULL),
('WaltersDebraO+2022-08-31', '2022-08-31', '2022-09-25'),
('WaltersJohnO-2022-02-22', '2022-02-22', '2022-05-25'),
('WardNinaAB+2022-01-02', '2022-01-02', '2022-01-22'),
('WarriorBobAB-2022-11-27', '2022-11-27', NULL),
('WhitakerDwayneO-2022-07-07', '2022-07-07', '2022-08-13'),
('WillisJoeA+2022-06-04', '2022-06-04', NULL),
('WolfeJacobO+2022-01-13', '2022-01-13', '2022-12-05'),
('WoodfinChadO+2022-02-02', '2022-02-02', '2022-09-01'),
('WoodleyRobertA+2022-02-27', '2022-02-27', '2022-11-01'),
('WoodsRachelAB+2022-07-17', '2022-07-17', '2022-08-26');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id_patient` varchar(200) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `groupe_sanguin` varchar(3) NOT NULL,
  `is_in_hospital` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id_patient`, `nom`, `prenom`, `groupe_sanguin`, `is_in_hospital`) VALUES
('AbbottFranciscoB-2022-03-29', 'Abbott', 'Francisco', 'B-', 0),
('AllenRobertoAB-2022-01-04', 'Allen', 'Roberto', 'AB-', 0),
('AlmendarezLeoAB-2022-01-15', 'Almendarez', 'Leo', 'AB-', 1),
('AlstonGaryAB+2022-02-06', 'Alston', 'Gary', 'AB+', 0),
('AngelArleneB-2022-08-23', 'Angel', 'Arlene', 'B-', 1),
('BaisleyMarkAB-2022-06-30', 'Baisley', 'Mark', 'AB-', 1),
('BeamanRobertAB-2022-08-05', 'Beaman', 'Robert', 'AB-', 1),
('BihmMaryA+2022-07-02', 'Bihm', 'Mary', 'A+', 1),
('BlanchardDonaldO+2022-05-26', 'Blanchard', 'Donald', 'O+', 1),
('BoatwrightThomasA+2022-04-02', 'Boatwright', 'Thomas', 'A+', 0),
('BrunsonVernaO+2022-03-17', 'Brunson', 'Verna', 'O+', 1),
('BurringtonCharlesAB-2022-02-06', 'Burrington', 'Charles', 'AB-', 0),
('CapulongInezB-2022-06-22', 'Capulong', 'Inez', 'B-', 1),
('ChasseLillieAB+2022-09-09', 'Chasse', 'Lillie', 'AB+', 1),
('ConwayLesterAB+2022-09-12', 'Conway', 'Lester', 'AB+', 1),
('CookeStanleyB+2022-02-20', 'Cooke', 'Stanley', 'B+', 0),
('CrouchCharlesO+2022-04-25', 'Crouch', 'Charles', 'O+', 1),
('DanielLorraineAB-2022-04-09', 'Daniel', 'Lorraine', 'AB-', 0),
('DennisJohnO+2022-05-20', 'Dennis', 'John', 'O+', 1),
('DiazKathleenAB+2022-10-01', 'Diaz', 'Kathleen', 'AB+', 0),
('DinwiddieRandallA-2022-04-14', 'Dinwiddie', 'Randall', 'A-', 0),
('DunneDaynaB+2022-06-24', 'Dunne', 'Dayna', 'B+', 1),
('EdgecombLurleneB-2022-03-14', 'Edgecomb', 'Lurlene', 'B-', 1),
('ElstonLeoA-2022-04-26', 'Elston', 'Leo', 'A-', 0),
('EspinozaBarbaraA-2022-04-06', 'Espinoza', 'Barbara', 'A-', 1),
('EvansDanielA+2022-08-21', 'Evans', 'Daniel', 'A+', 0),
('EvinsMichaelAB+2022-04-24', 'Evins', 'Michael', 'AB+', 0),
('FernandezKarenO+2022-02-12', 'Fernandez', 'Karen', 'O+', 0),
('FerrellNigelA+2022-03-12', 'Ferrell', 'Nigel', 'A+', 0),
('FreundRussellB+2022-10-01', 'Freund', 'Russell', 'B+', 1),
('GarciaMarianneAB-2022-07-11', 'Garcia', 'Marianne', 'AB-', 1),
('GilliamAngelaAB+2022-08-10', 'Gilliam', 'Angela', 'AB+', 1),
('GironCherylAB-2022-01-16', 'Giron', 'Cheryl', 'AB-', 0),
('GoinsEleanoreO-2022-03-23', 'Goins', 'Eleanore', 'O-', 1),
('GonzalezLenB-2022-01-01', 'Gonzalez', 'Len', 'B-', 0),
('HaackFilomenaO-2022-10-16', 'Haack', 'Filomena', 'O-', 0),
('HallDawnB+2021-12-17', 'Hall', 'Dawn', 'B+', 0),
('HamarJohnB-2022-01-23', 'Hamar', 'John', 'B-', 0),
('HansonJacksonO+2022-03-05', 'Hanson', 'Jackson', 'O+', 0),
('HenryAlmaAB-2022-07-06', 'Henry', 'Alma', 'AB-', 1),
('HillLaurieAB-2021-12-18', 'Hill', 'Laurie', 'AB-', 0),
('HodgesStanleyB-2022-07-27', 'Hodges', 'Stanley', 'B-', 1),
('JonesBrendaA+2022-07-17', 'Jones', 'Brenda', 'A+', 1),
('KenneyAnthonyB+2022-05-27', 'Kenney', 'Anthony', 'B+', 1),
('KwiatkowskiJohnO-2022-10-02', 'Kwiatkowski', 'John', 'O-', 0),
('LastrapesJeremiahO+2022-03-11', 'Lastrapes', 'Jeremiah', 'O+', 0),
('LemkeTabithaO+2022-08-03', 'Lemke', 'Tabitha', 'O+', 0),
('LopezPamelaO-2022-04-25', 'Lopez', 'Pamela', 'O-', 0),
('LunaSteveA-2022-09-28', 'Luna', 'Steve', 'A-', 1),
('MackeySylviaAB+2022-01-06', 'Mackey', 'Sylvia', 'AB+', 0),
('MaditzTammyA+2021-12-19', 'Maditz', 'Tammy', 'A+', 0),
('MaiaDavidA-2022-04-19', 'Maia', 'David', 'A-', 1),
('MandichRonaldO-2022-04-10', 'Mandich', 'Ronald', 'O-', 0),
('MarsonYolandaAB-2022-06-06', 'Marson', 'Yolanda', 'AB-', 0),
('MaselliSondraO+2022-08-29', 'Maselli', 'Sondra', 'O+', 0),
('MerittEvaB-2021-12-30', 'Meritt', 'Eva', 'B-', 0),
('MonroeRichardO+2022-03-07', 'Monroe', 'Richard', 'O+', 0),
('MooreJohnnyO-2022-02-14', 'Moore', 'Johnny', 'O-', 1),
('MorganMichelleB+2022-03-22', 'Morgan', 'Michelle', 'B+', 0),
('MorinMatthewA+2022-09-07', 'Morin', 'Matthew', 'A+', 0),
('MorrisonRoyAB+2022-05-08', 'Morrison', 'Roy', 'AB+', 0),
('OcasioClarissaO-2022-01-03', 'Ocasio', 'Clarissa', 'O-', 0),
('ParsonsConnieB-2022-11-21', 'Parsons', 'Connie', 'B-', 1),
('PattersonNatalieO-2022-03-13', 'Patterson', 'Natalie', 'O-', 0),
('PecoraroJoanneO-2022-05-11', 'Pecoraro', 'Joanne', 'O-', 0),
('PerryEduardoB-2022-10-06', 'Perry', 'Eduardo', 'B-', 0),
('PurgasonWilliamB-2022-10-17', 'Purgason', 'William', 'B-', 0),
('RathKatherineAB+2022-02-14', 'Rath', 'Katherine', 'AB+', 0),
('ReyesGaryB-2022-10-08', 'Reyes', 'Gary', 'B-', 1),
('ReynoldsAndersonO-2022-04-22', 'Reynolds', 'Anderson', 'O-', 0),
('RodriguezBridgetA+2022-03-09', 'Rodriguez', 'Bridget', 'A+', 0),
('RooksJamesB+2022-07-09', 'Rooks', 'James', 'B+', 1),
('RuizJohnA-2022-09-19', 'Ruiz', 'John', 'A-', 1),
('SchlenkerLisaAB-2022-06-07', 'Schlenker', 'Lisa', 'AB-', 0),
('ScottCarolO+2022-07-13', 'Scott', 'Carol', 'O+', 1),
('ScottNancyAB-2022-11-14', 'Scott', 'Nancy', 'AB-', 1),
('SegoviaLindaA+2022-05-29', 'Segovia', 'Linda', 'A+', 0),
('ShermanDebraAB-2022-03-06', 'Sherman', 'Debra', 'AB-', 0),
('SherronAnthonyB-2022-08-26', 'Sherron', 'Anthony', 'B-', 1),
('ShusterLeahAB+2022-08-21', 'Shuster', 'Leah', 'AB+', 0),
('SimonChrisO-2022-07-17', 'Simon', 'Chris', 'O-', 1),
('SmithLucyO+2022-08-09', 'Smith', 'Lucy', 'O+', 1),
('StraightBarbaraB-2022-02-19', 'Straight', 'Barbara', 'B-', 0),
('SummersMasonA-2022-08-06', 'Summers', 'Mason', 'A-', 1),
('TempleDorcasB+2022-08-10', 'Temple', 'Dorcas', 'B+', 1),
('TimmonsMarianAB-2022-08-09', 'Timmons', 'Marian', 'AB-', 1),
('TurchiAbbeyB+2022-09-25', 'Turchi', 'Abbey', 'B+', 1),
('UtleyBettyO-2021-12-23', 'Utley', 'Betty', 'O-', 0),
('VaskoFrankA+2022-05-30', 'Vasko', 'Frank', 'A+', 0),
('VerdinoLorenaAB-2022-09-17', 'Verdino', 'Lorena', 'AB-', 1),
('WaltersDebraO+2022-08-31', 'Walters', 'Debra', 'O+', 0),
('WaltersJohnO-2022-02-22', 'Walters', 'John', 'O-', 0),
('WardNinaAB+2022-01-02', 'Ward', 'Nina', 'AB+', 0),
('WarriorBobAB-2022-11-27', 'Warrior', 'Bob', 'AB-', 1),
('WhitakerDwayneO-2022-07-07', 'Whitaker', 'Dwayne', 'O-', 0),
('WillisJoeA+2022-06-04', 'Willis', 'Joe', 'A+', 1),
('WolfeJacobO+2022-01-13', 'Wolfe', 'Jacob', 'O+', 0),
('WoodfinChadO+2022-02-02', 'Woodfin', 'Chad', 'O+', 0),
('WoodleyRobertA+2022-02-27', 'Woodley', 'Robert', 'A+', 0),
('WoodsRachelAB+2022-07-17', 'Woods', 'Rachel', 'AB+', 0);

-- --------------------------------------------------------

--
-- Structure de la table `rh`
--

CREATE TABLE `rh` (
  `identifiant_rrh` varchar(200) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `salaire` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `working_at_hospital` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `rh`
--

INSERT INTO `rh` (`identifiant_rrh`, `nom`, `prenom`, `salaire`, `working_at_hospital`) VALUES
('BullardHenryAB+2022-06-03', 'Bullard', 'Henry', '3.2', 1),
('DunnDeannAB-2022-01-27', 'Dunn', 'Deann', '4.3', 0),
('DurganSamB-2022-10-30', 'Durgan', 'Sam', '2.5', 1),
('HallMichaelO+2022-11-14', 'Hall', 'Michael', '8.5', 1),
('JohnsonEssieAB+2022-05-14', 'Johnson', 'Essie', '1.2', 1),
('KimJacqulineA-2022-01-05', 'Kim', 'Jacquline', '5.1', 0),
('KobashigawaBerniceAB-2021-12-08', 'Kobashigawa', 'Bernice', '9.9', 0),
('MrozinskiSylviaO-2022-10-18', 'Mrozinski', 'Sylvia', '6.1', 1),
('PrettiJulianneO-2022-04-24', 'Pretti', 'Julianne', '2.5', 0),
('ThomasonGlenO+2022-10-05', 'Thomason', 'Glen', '8.8', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`identifiant_resident`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id_patient`);

--
-- Index pour la table `rh`
--
ALTER TABLE `rh`
  ADD PRIMARY KEY (`identifiant_rrh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
