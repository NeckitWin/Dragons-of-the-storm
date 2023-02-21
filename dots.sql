-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 21 2023 г., 14:17
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

--
-- Дамп данных таблицы `guilds_members`
--

INSERT INTO `guilds_members` (`id_guild`, `id_player`, `role`) VALUES
(1, 14, 'ifeld0'),
(2, 2, 'tgrishukhin1'),
(3, 6, 'gmaciaszek2'),
(1, 14, 'ifeld0'),
(2, 2, 'tgrishukhin1'),
(3, 6, 'gmaciaszek2'),
(2, 5, 'bwellfare3'),
(1, 15, 'bstonehouse4'),
(2, 16, 'dwoodyer5'),
(3, 3, 'dneligan6'),
(2, 11, 'rbeatens7'),
(2, 1, 'mhindmore8'),
(1, 3, 'phazeldean9'),
(3, 7, 'cknewstuba'),
(3, 8, 'rdonglesb'),
(1, 4, 'chandrikc'),
(2, 13, 'cbarrowcloughd'),
(3, 2, 'ystanderinge'),
(1, 9, 'odamettif'),
(2, 18, 'dcawg'),
(3, 17, 'rpflegerh');

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

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id_item`, `name`, `type`, `damage`, `protection`, `id_class`) VALUES
(1, 'Excalibur', 'sword', 25, 0, 4),
(2, 'golden chestplate', 'armor', 17, 15, 3),
(3, 'sowrd of souls', 'sword', 7, 6, 4),
(4, 'Regin amulet', 'passive', 0, 0, 2),
(5, 'ehassur4', 'sbrentnall4', 19, 19, 2),
(6, 'mbernth5', 'bmarin5', 15, 7, 3),
(7, 'mreiglar6', 'jdodell6', 22, 10, 1),
(8, 'eworlock7', 'mclampton7', 11, 16, 1),
(9, 'wangus8', 'dmcmichael8', 14, 16, 3),
(10, 'ntorbard9', 'ureadshall9', 19, 3, 3);

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

--
-- Дамп данных таблицы `mobs`
--

INSERT INTO `mobs` (`id_mob`, `name`, `spawnpoint`, `type`, `damage`, `hp`) VALUES
(1, 'wolf', 'ugurdug1', 'neutral', 36, 158),
(2, 'mud monster', 'hostile', 'fgeorgius1', 9, 111),
(3, 'sheep', 'friendly', 'rclyne2', 0, 50),
(4, 'dog', 'neutral', 'gferrers3', 25, 100),
(5, 'rat', 'neutral', 'bgoater4', 43, 159),
(6, 'drunk man', 'hostile', 'apinniger5', 20, 18),
(7, 'zombie', 'hostile', 'ecridlin6', 48, 200),
(8, 'mum', 'gconws7', 'tmackissack7', 200, 200),
(9, 'plafrentz8', 'dwyke8', 'ecaldero8', 47, 132),
(10, 'tgilliard9', 'brickesies9', 'sdobney9', 84, 97);

-- --------------------------------------------------------

--
-- Структура таблицы `players`
--

CREATE TABLE `players` (
  `id_player` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
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

--
-- Дамп данных таблицы `players`
--

INSERT INTO `players` (`id_player`, `username`, `id_balance`, `body_count`, `death_count`, `xp`, `hp`, `id_class`, `id_account`, `id_server`, `id_guild`) VALUES
(1, '0', 1, 87, 73, 9790, 100, 1, 48, 2, 2),
(2, '0', 2, 36, 23, 8865, 82, 4, 35, 1, 2),
(3, '0', 3, 83, 45, 5428, 81, 3, 46, 1, 3),
(4, '0', 4, 1, 58, 8895, 93, 4, 23, 2, 2),
(5, '0', 5, 26, 65, 4606, 89, 3, 29, 1, 3),
(6, '0', 6, 20, 84, 5973, 99, 2, 5, 2, 3),
(7, '0', 7, 45, 48, 660, 87, 1, 1, 1, 2),
(8, '0', 8, 20, 87, 1853, 88, 1, 18, 2, 3),
(9, '0', 9, 96, 56, 5532, 100, 4, 32, 2, 3),
(10, '0', 10, 3, 72, 4584, 98, 2, 23, 2, 2),
(11, '0', 11, 16, 24, 6832, 95, 3, 37, 1, 1),
(12, '0', 12, 92, 17, 3083, 85, 1, 40, 2, 1),
(13, '0', 13, 48, 44, 9533, 95, 3, 19, 1, 2),
(14, '0', 14, 14, 81, 9594, 93, 4, 14, 2, 3),
(15, '0', 15, 35, 37, 8790, 93, 4, 16, 1, 2),
(16, '0', 16, 66, 63, 930, 99, 4, 39, 2, 2),
(17, '0', 17, 85, 45, 9600, 90, 4, 20, 2, 1),
(18, '0', 18, 84, 81, 6865, 94, 3, 44, 2, 1),
(19, '0', 19, 45, 22, 3440, 100, 3, 29, 2, 3),
(20, '0', 20, 12, 11, 369, 100, 1, 45, 1, 1),
(21, '0', 21, 66, 14, 9895, 87, 3, 49, 1, 1),
(22, '0', 22, 11, 28, 9743, 88, 2, 34, 1, 1),
(23, '0', 23, 58, 38, 9438, 90, 2, 20, 1, 1),
(24, '0', 24, 94, 98, 4818, 90, 2, 37, 1, 1),
(25, '0', 25, 39, 73, 4435, 83, 1, 22, 2, 2),
(26, '0', 26, 65, 43, 2000, 96, 2, 18, 1, 2),
(27, '0', 27, 56, 6, 7205, 91, 3, 4, 2, 1),
(28, '0', 28, 26, 7, 4337, 98, 2, 27, 2, 2),
(29, '0', 29, 73, 62, 113, 100, 2, 20, 1, 2),
(30, '0', 30, 65, 63, 4770, 87, 4, 31, 1, 1),
(31, '0', 31, 35, 43, 3648, 92, 3, 32, 2, 1),
(32, '0', 32, 92, 54, 3692, 95, 2, 15, 1, 1),
(33, '0', 33, 37, 65, 1543, 85, 3, 24, 2, 1),
(34, '0', 34, 31, 82, 1674, 93, 1, 3, 1, 3),
(35, '0', 35, 100, 24, 3425, 95, 3, 7, 2, 3),
(36, '0', 36, 7, 11, 1515, 81, 3, 24, 2, 2),
(37, '0', 37, 67, 64, 196, 84, 2, 41, 2, 1),
(38, '0', 38, 74, 64, 6614, 87, 3, 9, 2, 2),
(39, '0', 39, 18, 100, 2685, 86, 4, 20, 2, 2),
(40, '0', 40, 58, 26, 9506, 92, 3, 46, 1, 1),
(41, '0', 41, 29, 61, 2385, 90, 1, 32, 2, 3),
(42, '0', 42, 86, 17, 643, 87, 3, 49, 2, 3),
(43, '0', 43, 50, 71, 5344, 87, 2, 37, 1, 3),
(44, '0', 44, 7, 96, 9351, 100, 3, 42, 2, 3),
(45, '0', 45, 12, 37, 5712, 100, 1, 11, 1, 3),
(46, '0', 46, 55, 34, 6633, 98, 2, 16, 1, 2),
(47, '0', 47, 66, 76, 7734, 90, 2, 12, 1, 2),
(48, '0', 48, 30, 48, 6792, 88, 1, 43, 1, 1),
(49, '0', 49, 64, 8, 9395, 80, 2, 20, 1, 2),
(50, '0', 50, 51, 36, 4184, 96, 4, 4, 2, 3);

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

--
-- Дамп данных таблицы `player_classes`
--

INSERT INTO `player_classes` (`id_class`, `name`, `max_hp`, `skills`, `skin`) VALUES
(1, 'warior', 160, 'fighting', 'Male'),
(2, 'bard', 152, 'singing', 'Male'),
(3, 'woman', 144, 'cooking', 'Female'),
(4, 'archer', 244, 'shooting', 'Male');

-- --------------------------------------------------------

--
-- Структура таблицы `player_items`
--

CREATE TABLE `player_items` (
  `id_player` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `player_items`
--

INSERT INTO `player_items` (`id_player`, `id_item`, `count`) VALUES
(1, 6, 36),
(2, 10, 11),
(3, 6, 59),
(4, 8, 35),
(5, 8, 57),
(6, 8, 56),
(7, 8, 19),
(8, 8, 23),
(9, 10, 43),
(10, 10, 22),
(11, 5, 53),
(12, 8, 56),
(13, 1, 20),
(14, 2, 26),
(15, 7, 11),
(16, 5, 18),
(17, 5, 31),
(18, 1, 60),
(19, 9, 44),
(20, 7, 30),
(21, 5, 35),
(22, 9, 61),
(23, 3, 40),
(24, 6, 26),
(25, 9, 57),
(26, 3, 18),
(27, 4, 9),
(28, 10, 40),
(29, 2, 46),
(30, 4, 62),
(31, 4, 21),
(32, 8, 53),
(33, 8, 20),
(34, 5, 62),
(35, 7, 36),
(36, 3, 20),
(37, 5, 18),
(38, 8, 56),
(39, 8, 26),
(40, 9, 38),
(41, 4, 47),
(42, 2, 1),
(43, 7, 17),
(44, 2, 23),
(45, 10, 38),
(46, 3, 60),
(47, 3, 10),
(48, 10, 46),
(49, 10, 53),
(50, 7, 54);

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

--
-- Дамп данных таблицы `servers_data`
--

INSERT INTO `servers_data` (`id_server`, `players_count`, `server_ip`, `server_country`, `id_world`) VALUES
(1, 1000, '57.204.135.183', 'PT', 1),
(2, 1000, '118.110.116.149', 'BR', 4);

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
-- Дамп данных таблицы `worlds`
--

INSERT INTO `worlds` (`id_world`, `name`, `size`) VALUES
(1, 'world', 10000),
(2, 'nerher', 10000),
(3, 'heaven', 10000),
(4, 'zsti', 10);

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
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `mobs`
--
ALTER TABLE `mobs`
  MODIFY `id_mob` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `players`
--
ALTER TABLE `players`
  MODIFY `id_player` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `player_classes`
--
ALTER TABLE `player_classes`
  MODIFY `id_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `servers_data`
--
ALTER TABLE `servers_data`
  MODIFY `id_server` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `worlds`
--
ALTER TABLE `worlds`
  MODIFY `id_world` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
