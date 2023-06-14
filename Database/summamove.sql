-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 14 jun 2023 om 09:07
-- Serverversie: 8.0.31
-- PHP-versie: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `summamove`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `administrators`
--

DROP TABLE IF EXISTS `administrators`;
CREATE TABLE IF NOT EXISTS `administrators` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(80) COLLATE utf8mb3_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `administrators_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `administrators`
--

INSERT INTO `administrators` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `dateofbirth`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Administrator', 'admin@example.com', '$2y$10$VHHTnAQoVYl4dzPD5qMWY..KzQIoi99IetxdPunjVCwHwkGDD6IWK', '1992-01-01', NULL, '2023-06-14 07:05:54', '2023-06-14 07:05:54');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `exercises`
--

DROP TABLE IF EXISTS `exercises`;
CREATE TABLE IF NOT EXISTS `exercises` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL,
  `duration` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `exercises`
--

INSERT INTO `exercises` (`id`, `name`, `duration`, `description`) VALUES
(1, 'Squat', '5 x 10 keer', 'Je zakt door je benen en gaat weer omhoog'),
(2, 'Push-up', '3 x 20 keer', 'Ga met je buik op de grond liggen, en druk jezelf omhoog met je armen en laat jezelf weer zakken'),
(3, 'Dip', '3 x 15 keer', 'Je houd met je armen een stoel vast en je drukt jezelf naar beneden en weer omhoog. Dit is een goede oefening voor je armen'),
(4, 'Plank', '3 x 60 seconden', 'Ga op je buik liggen en til je hele lichaam op, met alleen je tenen op de grond en je ellebogen op de grond. Houd dit een minuut vol'),
(5, 'Paardentrap', '3 x 15 keer', 'Ga op ellebogen en knieën op de grond liggen, met je gezicht naar de grond. Strek dan je rechterbeen naar achteren.'),
(6, 'Mountain climber', '3 x 20 keer', 'Begin in een hoge plank, schouders in lijn met je polsen, bekken opgetrokken en ribben naar heupen getrokken. Duw je rechterknie naar je borst en dan naar links. Trek je rechterknie naar achteren naar je borst en pauzeer. Herhaal het patroon te beginnen met de linkerknie.'),
(7, 'Burpee', '3 x 20 keer', 'Klap in je handen, en spring naar de push-up positie. Druk een keer op, sta weer op en herhaal dit.'),
(8, 'Lunge', '3 x 50 keer', 'Beurtelings met je benen vooruit stappen. Dit doe je op een verhoogde bank of traptrede.'),
(9, 'Wall sit', '3 x 20 keer', 'Begin staand met je rug tegen de muur. Zet je voeten iets naar voren, op schouderbreedte en zak in een squat: je knieën zijn gebogen in een hoek van 90 graden, net als je heupen. Span je buikspieren goed aan en duw je rug tegen de muur.'),
(10, 'Crunch', '3 x 20 keer', 'Ga liggen met de rug op de vloer, plaats de voeten plat, knieën recht omhoog gericht. Kruis de onderarmen op de borst, breng je borst naar je bekken door de buikspieren aan te spannen. Hou de spanning 1 tot 2 seconden vast. Breng de borst rustig terug naar beneden en achteren.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_14_075047_create_administrators_table', 1),
(6, '2023_06_14_075139_create_exercises_table', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(80) COLLATE utf8mb3_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `dateofbirth`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JorisWulms', 'Joris', 'Wulms', 'joris@gmail.com', '$2y$10$Jz/cLRyHPLTtn3k/u60fke3567gw2WPrmgdokXQ7CHgWe3ZJl7AjS', '2004-10-05', NULL, '2023-06-14 07:05:54', '2023-06-14 07:05:54'),
(2, 'RaúlZande', 'Raúl', 'van der Zande', 'raúl@gmail.com', '$2y$10$Jz/cLRyHPLTtn3k/u60fke3567gw2WPrmgdokXQ7CHgWe3ZJl7AjS', '2000-01-06', NULL, '2023-06-14 07:05:54', '2023-06-14 07:05:54'),
(3, 'MarijnSlaats', 'Marijn', 'Slaats', 'marijn@gmail.com', '$2y$10$Jz/cLRyHPLTtn3k/u60fke3567gw2WPrmgdokXQ7CHgWe3ZJl7AjS', '2003-12-04', NULL, '2023-06-14 07:05:54', '2023-06-14 07:05:54');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
