-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 21 2023 г., 13:41
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
  `phone` varchar(11) DEFAULT NULL,
  `player_ip` varchar(45) NOT NULL,
  `bank_card` int(30) NOT NULL,
  `country_player` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `accounts`
--

INSERT INTO `accounts` (`id_account`, `email`, `login`, `password`, `creation_date`, `phone`, `player_ip`, `bank_card`, `country_player`) VALUES
(1, 'fmerwede0@columbia.edu', 'crolse0', 'AhR53LbB7g4', '11/21/2022', '316-954-949', '131.92.222.184', 2147483647, 'UZ'),
(2, 'ndimitrescu1@pinterest.com', 'fleed1', 'H92Rea6dOyJ', '11/15/2022', '386-213-215', '220.177.35.64', 2147483647, 'RU'),
(3, 'dramsbotham2@naver.com', 'ascutts2', 'QVdThm', '5/9/2022', '944-462-725', '15.24.247.97', 2147483647, 'PH'),
(4, 'dpenbarthy3@gmpg.org', 'rmourgue3', 'KMJyXnB9XD4', '11/13/2022', '773-463-374', '19.248.202.234', 2147483647, 'HN'),
(5, 'sblakey4@tiny.cc', 'asayton4', 'kf82qU68Fp', '10/24/2022', '715-825-561', '94.172.66.214', 2147483647, 'SY'),
(6, 'phamflett5@paypal.com', 'ifenners5', 'btgOva0xZ9', '10/23/2022', '715-637-234', '109.251.190.124', 2147483647, 'CN'),
(7, 'scamber6@soup.io', 'lbatalini6', 'MR6UCUh7oNjq', '10/19/2022', '948-800-615', '232.118.126.152', 2147483647, 'MA'),
(8, 'ghatfull7@cbslocal.com', 'bhickin7', 'hIrJfuGZZi8', '4/20/2022', '543-886-695', '39.29.93.182', 2147483647, 'CN'),
(9, 'ggomer8@friendfeed.com', 'rpowdrell8', 'pDcVygop', '11/7/2022', '248-520-094', '169.94.234.240', 2147483647, 'PE'),
(10, 'rsymington9@csmonitor.com', 'ashaw9', 'TT861lXQpJ', '3/24/2022', '948-772-739', '214.207.210.88', 2147483647, 'KM'),
(11, 'ieglesea@aol.com', 'bsulllya', 'FiH1saq', '6/2/2022', '842-899-065', '23.140.7.70', 2147483647, 'PH'),
(12, 'igledhillb@webeden.co.uk', 'noshevlanb', 'bblz3y', '4/4/2022', '106-252-902', '184.138.142.198', 2147483647, 'MX'),
(13, 'ggibbiec@wufoo.com', 'ctrinemanc', 'jZi4jJ3uySXG', '8/3/2022', '502-947-101', '7.51.141.153', 2147483647, 'LV'),
(14, 'rstroyand@amazon.co.jp', 'hraphaeld', 'X9H4wdv0BOh', '4/15/2022', '110-770-415', '240.223.4.95', 2147483647, 'ID'),
(15, 'bmcfaydene@feedburner.com', 'cleguine', 'ZprBpSxOd', '3/20/2022', '164-568-770', '134.173.21.78', 2147483647, 'NG'),
(16, 'dlaurentinof@linkedin.com', 'bgoskerf', 'Wurx1bj1hHEL', '7/8/2022', '743-157-860', '68.200.93.189', 2147483647, 'UA'),
(17, 'ebluettg@163.com', 'rrozenzweigg', '4JQbTr5Opx', '9/24/2022', '970-904-043', '15.182.242.201', 2147483647, 'KR'),
(18, 'rpawlikh@tamu.edu', 'tboddingtonh', 'ueUJkGVP28', '3/7/2022', '779-393-812', '63.106.131.243', 2147483647, 'RU'),
(19, 'amcnicklei@dropbox.com', 'plearmonthi', 'KSxSe4dQeNm', '3/9/2022', '178-140-937', '19.44.144.63', 2147483647, 'CA'),
(20, 'bwoodmanj@miibeian.gov.cn', 'bbransdenj', 'Fd5mEGNYzMX', '9/21/2022', '166-227-442', '204.162.184.225', 2147483647, 'TH'),
(21, 'mromanskik@ucsd.edu', 'escutcheonk', '2vc0cVou', '1/7/2023', '989-626-208', '157.7.227.148', 2147483647, 'BW'),
(22, 'doylettl@fema.gov', 'twrackl', 'vHogOTD', '8/5/2022', '941-613-568', '24.3.110.168', 2147483647, 'CN'),
(23, 'rcapponerm@paypal.com', 'bmatleym', 'aGbwDWhf2', '8/4/2022', '883-840-825', '118.67.125.99', 2147483647, 'CN'),
(24, 'vtwattn@umich.edu', 'htheurern', 'Oo0faFzImskk', '8/21/2022', '795-791-520', '166.62.100.152', 2147483647, 'CA'),
(25, 'fhatliffeo@fda.gov', 'rfeelyo', '8MB8esX1nFQd', '4/26/2022', '544-808-453', '133.137.249.18', 2147483647, 'CN'),
(26, 'scelandp@who.int', 'jstutardp', 'FzKI3vKdZwj', '3/17/2022', '757-627-518', '93.154.111.88', 2147483647, 'US'),
(27, 'squeyeiroq@salon.com', 'rabbysq', 'tE127lsh9d', '7/31/2022', '363-257-210', '133.89.158.84', 2147483647, 'CN'),
(28, 'tbarnabyr@macromedia.com', 'pwimpennyr', 'SplXUoYXqZ', '6/9/2022', '220-203-428', '160.89.242.23', 2147483647, 'PA'),
(29, 'lmatthewss@gizmodo.com', 'pelwins', 'k0QQaL', '3/18/2022', '552-930-230', '113.149.83.18', 2147483647, 'PH'),
(30, 'wingreet@blogs.com', 'cgoncavest', '2zMH7NiI', '1/20/2023', '635-150-614', '90.177.252.134', 2147483647, 'ID'),
(31, 'ygaufordu@blogspot.com', 'eluggaru', 'B5voihRYS5u', '3/12/2022', '169-273-895', '20.144.31.148', 2147483647, 'MD'),
(32, 'ncherryv@yellowpages.com', 'ldelepinev', 'gHEzC2t0s6', '4/4/2022', '374-954-652', '226.136.188.58', 2147483647, 'CN'),
(33, 'njanickiw@ezinearticles.com', 'hbrunsenw', 'sxpMoG1Y8cWI', '7/13/2022', '607-963-678', '49.94.42.53', 2147483647, 'BR'),
(34, 'ldivineyx@pagesperso-orange.fr', 'ccowmeadowx', '1ftaJ2', '8/18/2022', '133-618-198', '248.86.82.191', 2147483647, 'ML'),
(35, 'hlarcombey@zimbio.com', 'mcranagey', 'GGCTgIiUZn', '8/31/2022', '614-150-304', '125.242.72.143', 2147483647, 'RU'),
(36, 'mbautistez@sun.com', 'tlovattz', 'ZcL2RiLf', '2/17/2023', '685-725-670', '85.212.75.171', 2147483647, 'CN'),
(37, 'bcammis10@craigslist.org', 'bshurman10', '7tSV5UH8W8UT', '1/21/2023', '927-883-849', '50.46.126.218', 2147483647, 'CN'),
(38, 'hugolotti11@macromedia.com', 'cconybear11', 'iYEYNuH8B', '9/26/2022', '457-744-465', '4.108.82.87', 2147483647, 'GU'),
(39, 'mcrone12@elegantthemes.com', 'cbosence12', 'zA768u6QLDMc', '10/22/2022', '499-488-967', '254.184.108.101', 2147483647, 'MX'),
(40, 'gdobel13@biblegateway.com', 'slynam13', 'S7R5bM', '5/14/2022', '510-915-779', '86.133.174.8', 2147483647, 'DO'),
(41, 'pgrealish14@odnoklassniki.ru', 'skirsch14', 'I6rG26jNvS', '11/10/2022', '857-407-210', '80.109.220.213', 2147483647, 'PT'),
(42, 'smoline15@alibaba.com', 'crottery15', '30j4lp3p5', '3/20/2022', '668-699-555', '243.86.71.193', 2147483647, 'PE'),
(43, 'bdoiley16@hexun.com', 'sflorio16', '2fCrq2', '3/23/2022', '538-312-503', '23.234.101.172', 2147483647, 'IE'),
(44, 'ofedder17@seesaa.net', 'mbraybrookes17', 'gN7N0lIT6', '1/7/2023', '300-953-463', '121.225.83.163', 2147483647, 'CN'),
(45, 'rtimson18@lulu.com', 'jfakeley18', 'iKAHvu', '11/20/2022', '706-630-013', '99.165.156.79', 2147483647, 'ID'),
(46, 'bdaintrey19@addthis.com', 'jjansky19', 'xKNU8x', '12/27/2022', '922-998-022', '162.16.32.69', 2147483647, 'CN'),
(47, 'mbeglin1a@ucla.edu', 'ashawcroft1a', '7AolSuOHQjIV', '5/27/2022', '672-547-404', '4.8.22.134', 2147483647, 'GT'),
(48, 'sbracher1b@chicagotribune.com', 'agurry1b', 'nU6i2NMyd1t', '6/14/2022', '571-930-942', '192.116.18.97', 2147483647, 'CO'),
(49, 'spomfrey1c@free.fr', 'adunstone1c', 'rDB07KPj', '8/25/2022', '751-191-194', '9.252.107.165', 2147483647, 'CN'),
(50, 'keddisforth1d@tripadvisor.com', 'labendroth1d', 'hmieJm', '6/1/2022', '868-170-484', '172.192.242.250', 2147483647, 'BR');

-- --------------------------------------------------------

--
-- Структура таблицы `balance`
--

CREATE TABLE `balance` (
  `id_balance` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `gems` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `balance`
--

INSERT INTO `balance` (`id_balance`, `money`, `gems`) VALUES
(1, 9923, 55),
(2, 1034, 94),
(3, 5831, 72),
(4, 59, 38),
(5, 182, 80),
(6, 5736, 98),
(7, 4972, 79),
(8, 6232, 57),
(9, 2321, 1),
(10, 7279, 89),
(11, 1084, 64),
(12, 4544, 59),
(13, 9950, 16),
(14, 636, 31),
(15, 2972, 73),
(16, 4434, 71),
(17, 8772, 65),
(18, 3789, 56),
(19, 4297, 87),
(20, 3982, 83),
(21, 2389, 15),
(22, 7746, 3),
(23, 1687, 51),
(24, 3807, 75),
(25, 7598, 70),
(26, 90, 91),
(27, 2721, 90),
(28, 9309, 24),
(29, 5803, 68),
(30, 8519, 47),
(31, 3361, 98),
(32, 8862, 35),
(33, 3861, 85),
(34, 312, 1),
(35, 122, 50),
(36, 9702, 25),
(37, 809, 12),
(38, 35, 30),
(39, 4280, 60),
(40, 6174, 78),
(41, 3419, 69),
(42, 4365, 6),
(43, 8776, 7),
(44, 2508, 84),
(45, 4250, 95),
(46, 116, 46),
(47, 6878, 81),
(48, 4120, 96),
(49, 7610, 4),
(50, 1983, 36);

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

--
-- Дамп данных таблицы `guilds`
--

INSERT INTO `guilds` (`id_guild`, `name`, `size`, `xp`) VALUES
(1, 'makarony', 5, 680968),
(2, 'czuczaczki', 10, 998400),
(3, 'capibara', 3, 143740);

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
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id_guild` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
