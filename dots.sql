-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 14 2023 г., 14:59
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dots`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE `accounts` (
  `id_account` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `creation_date` varchar(45) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `player_ip` varchar(45) NOT NULL,
  `bank_card` int(30) NOT NULL,
  `country_player` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `balance`
--

CREATE TABLE `balance` (
  `id_balance` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `gems` int(11) NOT NULL,
  `key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `guilds`
--

CREATE TABLE `guilds` (
  `id_guild` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `size` int(11) NOT NULL,
  `xp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `guilds_members`
--

CREATE TABLE `guilds_members` (
  `id_guild` int(11) NOT NULL,
  `id_player` int(11) NOT NULL,
  `role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id_item` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `damage` int(11) DEFAULT NULL,
  `protection` int(11) DEFAULT NULL,
  `id_class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mobs`
--

CREATE TABLE `mobs` (
  `id_mob` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `spawnpoint` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `damage` int(11) NOT NULL,
  `hp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `players`
--

CREATE TABLE `players` (
  `id_player` int(11) NOT NULL,
  `username` int(11) NOT NULL,
  `id_balance` int(11) NOT NULL,
  `body_count` int(11) NOT NULL,
  `death_count` int(11) NOT NULL,
  `xp` float NOT NULL,
  `hp` float NOT NULL,
  `id_class` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `id_server` int(11) NOT NULL,
  `id_guild` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `player_classes`
--

CREATE TABLE `player_classes` (
  `id_class` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `max_hp` int(20) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `skin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `player_items`
--

CREATE TABLE `player_items` (
  `id_player` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `servers_data`
--

CREATE TABLE `servers_data` (
  `id_server` int(11) NOT NULL,
  `players_count` int(11) NOT NULL,
  `server_ip` varchar(45) NOT NULL,
  `server_country` varchar(45) NOT NULL,
  `id_world` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `worlds`
--

CREATE TABLE `worlds` (
  `id_world` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Индексы таблицы `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id_balance`);

--
-- Индексы таблицы `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id_guild`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `guilds_members`
--
ALTER TABLE `guilds_members`
  ADD KEY `guilds_members_fk0` (`id_guild`),
  ADD KEY `guilds_members_fk1` (`id_player`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `items_fk0` (`id_class`);

--
-- Индексы таблицы `mobs`
--
ALTER TABLE `mobs`
  ADD PRIMARY KEY (`id_mob`);

--
-- Индексы таблицы `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id_player`),
  ADD KEY `players_fk1` (`id_balance`),
  ADD KEY `players_fk2` (`id_class`),
  ADD KEY `players_fk3` (`id_account`),
  ADD KEY `players_fk4` (`id_server`),
  ADD KEY `players_fk5` (`id_guild`);

--
-- Индексы таблицы `player_classes`
--
ALTER TABLE `player_classes`
  ADD PRIMARY KEY (`id_class`);

--
-- Индексы таблицы `player_items`
--
ALTER TABLE `player_items`
  ADD KEY `player_items_fk0` (`id_player`),
  ADD KEY `player_items_fk1` (`id_item`);

--
-- Индексы таблицы `servers_data`
--
ALTER TABLE `servers_data`
  ADD PRIMARY KEY (`id_server`),
  ADD UNIQUE KEY `server_ip` (`server_ip`),
  ADD KEY `servers_data_fk0` (`id_world`);

--
-- Индексы таблицы `worlds`
--
ALTER TABLE `worlds`
  ADD PRIMARY KEY (`id_world`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id_guild` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mobs`
--
ALTER TABLE `mobs`
  MODIFY `id_mob` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `players`
--
ALTER TABLE `players`
  MODIFY `id_player` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `player_classes`
--
ALTER TABLE `player_classes`
  MODIFY `id_class` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `servers_data`
--
ALTER TABLE `servers_data`
  MODIFY `id_server` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `worlds`
--
ALTER TABLE `worlds`
  MODIFY `id_world` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `guilds_members`
--
ALTER TABLE `guilds_members`
  ADD CONSTRAINT `guilds_members_fk0` FOREIGN KEY (`id_guild`) REFERENCES `guilds` (`id_guild`),
  ADD CONSTRAINT `guilds_members_fk1` FOREIGN KEY (`id_player`) REFERENCES `players` (`id_player`);

--
-- Ограничения внешнего ключа таблицы `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_fk0` FOREIGN KEY (`id_class`) REFERENCES `player_classes` (`id_class`);

--
-- Ограничения внешнего ключа таблицы `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_fk1` FOREIGN KEY (`id_balance`) REFERENCES `balance` (`id_balance`),
  ADD CONSTRAINT `players_fk2` FOREIGN KEY (`id_class`) REFERENCES `player_classes` (`id_class`),
  ADD CONSTRAINT `players_fk3` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id_account`),
  ADD CONSTRAINT `players_fk4` FOREIGN KEY (`id_server`) REFERENCES `servers_data` (`id_server`),
  ADD CONSTRAINT `players_fk5` FOREIGN KEY (`id_guild`) REFERENCES `guilds` (`id_guild`);

--
-- Ограничения внешнего ключа таблицы `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_fk0` FOREIGN KEY (`id_player`) REFERENCES `players` (`id_player`),
  ADD CONSTRAINT `player_items_fk1` FOREIGN KEY (`id_item`) REFERENCES `items` (`id_item`);

--
-- Ограничения внешнего ключа таблицы `servers_data`
--
ALTER TABLE `servers_data`
  ADD CONSTRAINT `servers_data_fk0` FOREIGN KEY (`id_world`) REFERENCES `worlds` (`id_world`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
