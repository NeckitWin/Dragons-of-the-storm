CREATE DATABASE IF NOT EXISTS DOTS;

USE DOTS;

CREATE TABLE `players` (
	`id_player` INT NOT NULL AUTO_INCREMENT,
	`username` INT NOT NULL,
	`id_balance` INT NOT NULL,
	`body_count` INT NOT NULL,
    `death_count` INT NOT NULL,
	`xp` FLOAT NOT NULL,
	`hp` FLOAT NOT NULL,
	`id_class` INT NOT NULL,
	`id_account` INT NOT NULL,
	`id_server` INT NOT NULL,
	`id_guild` INT NOT NULL,
	PRIMARY KEY (`id_player`)
);

CREATE TABLE `accounts` (
	`id_account` INT NOT NULL AUTO_INCREMENT,
	`email` varchar(45) NOT NULL,
	`login` varchar(45) UNIQUE,
	`password` varchar(45) NOT NULL,
	`creation_date` varchar(45) NOT NULL,
	`phone` INT,
	`player_ip` varchar(45) NOT NULL,
	`bank_card` INT(30) NOT NULL,
	`county_player` INT(30) NOT NULL,
	PRIMARY KEY (`id_account`)
);

CREATE TABLE `servers_data` (
	`id_server` INT NOT NULL AUTO_INCREMENT,
	`players_count` INT NOT NULL,
	`server_ip` varchar(45) NOT NULL UNIQUE,
	`server_country` varchar(45) NOT NULL,
	`id_world` INT NOT NULL,
	PRIMARY KEY (`id_server`)
);

CREATE TABLE `player_classes` (
	`id_class` INT NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`max_hp` INT(20) NOT NULL,
	`skills` varchar(255) NOT NULL,
	`skin` varchar(255) NOT NULL,
	PRIMARY KEY (`id_class`)
);

CREATE TABLE `balance` (
	`id_balance` INT NOT NULL,
	`money` INT NOT NULL,
	`gems` INT NOT NULL,
	`key` INT NOT NULL,
	PRIMARY KEY (`id_balance`)
);

CREATE TABLE `items` (
	`id_item` INT NOT NULL AUTO_INCREMENT,
	`name` varchar(45) NOT NULL,
	`type` varchar(45) NOT NULL,
	`damage` INT,
	`protection` INT,
	`id_class` INT NOT NULL,
	PRIMARY KEY (`id_item`)
);

CREATE TABLE `worlds` (
	`id_world` INT NOT NULL AUTO_INCREMENT,
	`name` varchar(45) NOT NULL,
	`size` INT NOT NULL,
	PRIMARY KEY (`id_world`)
);

CREATE TABLE `guilds` (
	`id_guild` INT NOT NULL AUTO_INCREMENT,
	`name` varchar(45) NOT NULL UNIQUE,
	`size` INT NOT NULL,
	`xp` INT NOT NULL,
	PRIMARY KEY (`id_guild`)
);

CREATE TABLE `guilds_members` (
	`id_guild` INT NOT NULL,
	`id_player` INT NOT NULL,
	`role` varchar(45) NOT NULL
);

CREATE TABLE `player_items` (
	`id_player` INT NOT NULL,
	`id_item` INT NOT NULL,
	`count` INT NOT NULL DEFAULT '1'
);

CREATE TABLE `mobs` (
	`id_mob` INT NOT NULL AUTO_INCREMENT,
	`name` varchar(45) NOT NULL,
	`spawnpoint` varchar(45) NOT NULL,
	`type` varchar(45) NOT NULL,
	`damage` INT NOT NULL,
	`hp` INT NOT NULL,
	PRIMARY KEY (`id_mob`)
);

ALTER TABLE `players` ADD CONSTRAINT `players_fk1` FOREIGN KEY (`id_balance`) REFERENCES `balance`(`id_balance`);

ALTER TABLE `players` ADD CONSTRAINT `players_fk2` FOREIGN KEY (`id_class`) REFERENCES `player_classes`(`id_class`);

ALTER TABLE `players` ADD CONSTRAINT `players_fk3` FOREIGN KEY (`id_account`) REFERENCES `accounts`(`id_account`);

ALTER TABLE `players` ADD CONSTRAINT `players_fk4` FOREIGN KEY (`id_server`) REFERENCES `servers_data`(`id_server`);

ALTER TABLE `players` ADD CONSTRAINT `players_fk5` FOREIGN KEY (`id_guild`) REFERENCES `guilds`(`id_guild`);

ALTER TABLE `servers_data` ADD CONSTRAINT `servers_data_fk0` FOREIGN KEY (`id_world`) REFERENCES `worlds`(`id_world`);

ALTER TABLE `items` ADD CONSTRAINT `items_fk0` FOREIGN KEY (`id_class`) REFERENCES `player_classes`(`id_class`);

ALTER TABLE `guilds_members` ADD CONSTRAINT `guilds_members_fk0` FOREIGN KEY (`id_guild`) REFERENCES `guilds`(`id_guild`);

ALTER TABLE `guilds_members` ADD CONSTRAINT `guilds_members_fk1` FOREIGN KEY (`id_player`) REFERENCES `players`(`id_player`);

ALTER TABLE `player_items` ADD CONSTRAINT `player_items_fk0` FOREIGN KEY (`id_player`) REFERENCES `players`(`id_player`);

ALTER TABLE `player_items` ADD CONSTRAINT `player_items_fk1` FOREIGN KEY (`id_item`) REFERENCES `items`(`id_item`);