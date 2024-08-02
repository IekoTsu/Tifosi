
-- Création de l'utilisateur administrateur et attribution des privilèges

DROP USER IF EXISTS 'tifosi'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'tifosi'@'localhost' IDENTIFIED BY 'tifosI.24';
GRANT ALL PRIVILEGES ON *.* TO 'tifosi'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
-- --------------------------------------------------------

--
-- Base de données : `tifosi`
--
CREATE DATABASE IF NOT EXISTS `tifosi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `tifosi`;


CREATE TABLE `client`(
   `id_client` int AUTO_INCREMENT NOT NULL,
   `nom_client` VARCHAR(45) NOT NULL,
   `age` int NOT NULL,
   `cp_client` int NOT NULL,
   PRIMARY KEY(`id_client`)
);

CREATE TABLE `focaccia`(
   `id_focaccia` int AUTO_INCREMENT NOT NULL,
   `nom_focaccia` VARCHAR(45) NOT NULL,
   `prix_focaccia` float NOT NULL,
   PRIMARY KEY(`id_focaccia`)
);

CREATE TABLE ingredient(
   `id_ingredient` int AUTO_INCREMENT NOT NULL,
   `nom_ingredient` VARCHAR(45) NOT NULL,
   PRIMARY KEY(`id_ingredient`)
);

CREATE TABLE menu(
   `id_menu` int AUTO_INCREMENT NOT NULL,
   `nom_menu` VARCHAR(45) NOT NULL,
   `prix_menu` float NOT NULL,
   `id_focaccia` int NOT NULL,
   PRIMARY KEY(`id_menu`),
   FOREIGN KEY(`id_focaccia`) REFERENCES focaccia(`id_focaccia`)
);

CREATE TABLE marque(
   `id_marque` int AUTO_INCREMENT NOT NULL,
   `nom_marque` VARCHAR(45) NOT NULL,
   PRIMARY KEY(`id_marque`)
);

CREATE TABLE boisson(
   `id_boisson` int AUTO_INCREMENT NOT NULL,
   `nom_boisson` VARCHAR(45) NOT NULL,
   `id_marque` int NOT NULL,
   PRIMARY KEY(`id_boisson`),
   FOREIGN KEY(`id_marque`) REFERENCES marque(`id_marque`)
);

CREATE TABLE paye(
   `id_client` int NOT NULL,
   `id_menu` int NOT NULL,
   `jour` date NOT NULL,
   PRIMARY KEY(`id_client`, `id_menu`),
   FOREIGN KEY(`id_client`) REFERENCES client(`id_client`),
   FOREIGN KEY(`id_menu`) REFERENCES menu(`id_menu`)
);

CREATE TABLE achete(
   `id_client` int NOT NULL,
   `id_focaccia` int NOT NULL,
   `jour` date NOT NULL,
   PRIMARY KEY(`id_client`, `id_focaccia`),
   FOREIGN KEY(`id_client`) REFERENCES client(`id_client`),
   FOREIGN KEY(`id_focaccia`) REFERENCES focaccia(`id_focaccia`)
);

CREATE TABLE comprend(
   `id_focaccia` int NOT NULL,
   `id_ingredient` int NOT NULL,
   PRIMARY KEY(`id_focaccia`, `id_ingredient`),
   FOREIGN KEY(`id_focaccia`) REFERENCES focaccia(`id_focaccia`),
   FOREIGN KEY(`id_ingredient`) REFERENCES ingredient(`id_ingredient`)
);

CREATE TABLE contient(
   `id_menu` int NOT NULL,
   `id_boisson` int NOT NULL,
   PRIMARY KEY(`id_menu`, `id_boisson`),
   FOREIGN KEY(`id_menu`) REFERENCES menu(`id_menu`),
   FOREIGN KEY(`id_boisson`) REFERENCES boisson(`id_boisson`)
);
