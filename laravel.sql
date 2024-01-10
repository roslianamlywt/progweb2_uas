-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2024 pada 14.47
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(10) UNSIGNED NOT NULL,
  `kode_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `stock_barang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `kode_barang`, `nama_barang`, `harga_barang`, `stock_barang`, `created_at`, `updated_at`) VALUES
(1, '202476', 'Tristin Barton DDS', 436068, 66660, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(10, '202349', 'Velma Boehm', 102652, 53823, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(46, '202413', 'Megane Mann', 153114, 58433, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(49, '202320', 'Barton Schmeler', 381251, 3710, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(58, '202506', 'Alene Schuster Jr.', 264449, 69526, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(76, '202458', 'Mrs. Kasey Russel', 481479, 15437, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(81, '202392', 'Michele Vandervort PhD', 179203, 27599, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(111, '202336', 'Marta Erdman', 32811, 40805, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(119, '202466', 'Jamal King', 360218, 29116, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(126, '202440', 'Prof. Irving Ritchie', 176149, 20421, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(129, '202316', 'Arden Bartoletti IV', 372196, 63615, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(163, '202467', 'Novella Beatty', 298211, 77372, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(176, '202486', 'Miss Gia Walker I', 407676, 1343, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(179, '202375', 'Estel Dickens Sr.', 369555, 50742, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(189, '202482', 'Samara Berge III', 230620, 97850, '2024-01-06 12:57:46', '2024-01-06 12:57:46'),
(202, '202410', 'Gretchen Mitchell', 331941, 70477, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(213, '202473', 'Rhianna Lowe', 307952, 83858, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(217, '202327', 'Whitney Berge', 47819, 98343, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(245, '202358', 'Orville Adams', 309401, 14346, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(261, '202365', 'Prof. Selina Mertz', 217726, 1745, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(272, '202381', 'Lucio Ullrich', 116262, 41383, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(285, '202412', 'Dr. Beatrice Simonis', 253117, 65123, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(287, '202376', 'Dr. Kenny Wiegand', 369997, 57597, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(293, '202402', 'Nannie Kub', 186917, 98921, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(294, '202359', 'Dr. Dario Steuber MD', 421840, 73344, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(308, '202483', 'Savanah Thompson', 86352, 49209, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(323, '202377', 'Logan Hammes IV', 482409, 35215, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(335, '202313', 'Rhett Collier Jr.', 234484, 99407, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(358, '202428', 'Jacey Dietrich', 205595, 73352, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(359, '202414', 'Mateo Fritsch', 436676, 70336, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(370, '202372', 'Dr. Major Little', 487009, 9741, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(381, '202353', 'Prof. Trace Reinger DVM', 289271, 69226, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(397, '202482', 'Moses Powlowski Sr.', 330604, 1091, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(404, '202439', 'Prof. Kristopher Muller Jr.', 384050, 27047, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(407, '202386', 'Elwin Leffler', 451268, 36772, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(419, '202357', 'Cordia Harris Jr.', 35283, 65163, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(431, '202329', 'Prof. Terrance Turner', 438900, 98828, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(435, '202424', 'Bud Murazik MD', 357230, 9541, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(437, '202324', 'Miss Aileen Johnston III', 481337, 27681, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(438, '202446', 'Alessia Fahey', 168294, 30693, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(445, '202342', 'Garrick Predovic', 120152, 90826, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(460, '202399', 'Hilma Keeling', 297463, 56903, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(468, '202498', 'Ms. Kali Brekke DDS', 94622, 74986, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(469, '202447', 'Candace Schaden II', 220854, 49168, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(471, '202322', 'Fae Skiles', 174057, 91125, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(472, '202416', 'Valerie Berge', 45220, 20090, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(475, '202499', 'Mrs. Delores Lakin', 27513, 37287, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(485, '202406', 'Hilma Thompson', 212185, 11056, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(488, '202385', 'Demarco Lubowitz', 19171, 32137, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(496, '202419', 'Prof. Lenna Powlowski DDS', 309197, 18373, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(501, '202384', 'Prof. Ralph Cassin Sr.', 160987, 92840, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(504, '202427', 'Phyllis Orn', 85268, 86135, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(511, '202475', 'Connor Christiansen', 193588, 84966, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(512, '202457', 'Idella Wisozk', 171493, 27919, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(522, '202417', 'Francisca Dickinson', 361396, 91594, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(530, '202431', 'Selena Jast', 462509, 95567, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(547, '202350', 'Devon Labadie PhD', 423154, 22067, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(553, '202374', 'Jadon Fahey', 328672, 77748, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(573, '202454', 'Itzel Rolfson', 80050, 54629, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(581, '202351', 'Nicolas Witting', 38251, 92087, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(608, '202500', 'Alexandrine Runolfsdottir', 182233, 61709, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(623, '202445', 'Jacey Botsford', 117913, 19531, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(626, '202469', 'Miss Aliza Rice V', 464817, 33711, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(629, '202485', 'Benedict D\'Amore', 478480, 7287, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(635, '202508', 'Elena Rosenbaum', 334708, 82675, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(642, '202360', 'Mr. Flavio White IV', 260314, 76485, '2024-01-06 12:57:46', '2024-01-06 12:57:46'),
(646, '202503', 'Donavon Koch PhD', 291014, 28859, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(648, '202352', 'Kameron Harris', 320460, 88187, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(664, '202433', 'Andrew Zemlak', 165532, 92734, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(669, '202395', 'Prof. Timmy Wolf', 372826, 34979, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(675, '202404', 'Marcelino Becker', 52601, 14069, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(681, '202460', 'Lamont Pacocha', 451766, 63212, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(685, '202477', 'Mrs. Melody Moore', 264143, 89093, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(724, '202423', 'Santino Hagenes', 52938, 14871, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(727, '202328', 'Gillian Hilpert MD', 347381, 87958, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(736, '202368', 'Keara Eichmann', 141771, 33307, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(740, '202348', 'Hanna Abbott II', 496554, 86067, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(743, '202455', 'Alysha Watsica PhD', 420019, 7729, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(757, '202367', 'Dr. Stone Casper', 346873, 17176, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(773, '202362', 'Prof. Miller Weber I', 87318, 76912, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(782, '202378', 'Abbigail Huel', 341827, 81247, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(788, '202450', 'Ramiro Torp', 68064, 54087, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(795, '202479', 'Mayra Torp', 488035, 7407, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(800, '202492', 'Elmore Gutmann', 340757, 72100, '2024-01-06 12:57:46', '2024-01-06 12:57:46'),
(804, '202409', 'Fred Hintz', 73402, 97014, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(825, '202432', 'Orlando Sawayn', 190139, 8099, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(840, '202364', 'Wilhelmine Huel', 73884, 80965, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(849, '202321', 'Prof. Adolphus Lueilwitz II', 201193, 91770, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(853, '202314', 'Mylene Kling', 188705, 22818, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(854, '202448', 'Hope Lockman', 229429, 89022, '2024-01-06 12:57:46', '2024-01-06 12:57:46'),
(864, '202459', 'Ms. Natasha Bailey', 340046, 80312, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(870, '202315', 'Prof. Noe Stiedemann', 451888, 67328, '2024-01-06 12:57:46', '2024-01-06 12:57:46'),
(874, '202464', 'Kristopher Herzog', 193452, 49717, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(907, '202487', 'Johnny Moore V', 396983, 99722, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(913, '202505', 'Mrs. Lois Stiedemann', 123078, 61542, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(917, '202389', 'Humberto Thiel', 297958, 65355, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(918, '202361', 'Arely Dicki', 436650, 88856, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(923, '202413', 'Dr. Kian Hammes', 144141, 66053, '2024-01-06 12:57:46', '2024-01-06 12:57:46'),
(930, '202453', 'Maci Terry', 200903, 98074, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(933, '202360', 'Nicholas Monahan DDS', 416898, 31209, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(956, '202496', 'Lenna Fisher I', 461870, 96821, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(958, '202442', 'Laney Heidenreich', 172489, 87782, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(970, '202382', 'Mr. Nolan Jacobi V', 164496, 2921, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(987, '202444', 'Merlin Bernier', 498930, 27822, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(988, '202495', 'Marisa Langosh', 372921, 36143, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(991, '202318', 'Marcel Cole', 448799, 24800, '2024-01-06 12:56:48', '2024-01-06 12:56:48'),
(1234, '123455', 'silverqueen', 50000, 100, '2024-01-08 06:15:43', '2024-01-08 06:15:43'),
(10000, '123455', 'silverqueen', 50000, 100, '2024-01-08 06:16:22', '2024-01-08 06:16:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_04_131029_create_barang_table', 2),
(6, '2024_01_04_133619_create_pelanggan_table', 3),
(7, '2024_01_04_135314_create_pengiriman_table', 4),
(8, '2014_10_12_100000_create_password_resets_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(10) UNSIGNED NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `created_at`, `updated_at`) VALUES
(513, 'Ari Ward', '9100 Keeling Crescent\nWest Kenton, OR 84995-2465', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(514, 'Mrs. Tania Fahey I', '46243 Lysanne Burgs\nEast Ardellatown, SD 18878-7221', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(520, 'Aisha Mosciski', '8437 Baumbach Flats\nJeffreyside, ND 10218-4408', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(523, 'Alexandre Will', '64461 Davis Terrace Suite 679\nSanfordland, MT 91578-0315', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(525, 'Mr. Jaleel Bergstrom PhD', '4868 Jessie Spur\nLake Malvina, MD 89763', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(536, 'Miss Alta Boyer', '72062 Carolanne Road Suite 528\nMetzton, OR 26337-9188', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(537, 'Janae Erdman', '7438 Baumbach Drive\nLake Lucilemouth, FL 99886', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(542, 'Richard McClure', '238 Pedro Dam Apt. 330\nWest Kurtisview, WV 41676', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(549, 'Mr. Joany Douglas MD', '607 Hunter Oval\nPort Bridiehaven, NV 45571-6377', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(568, 'Karianne Runte', '975 Welch Lodge Apt. 271\nBartellchester, TN 73151-0754', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(572, 'Isom Goldner', '7352 Katelin Radial\nOttoshire, HI 88466', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(576, 'Johnny Pacocha', '6413 Balistreri Manors\nLutherfurt, IL 45868', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(580, 'Junior Medhurst', '814 Nitzsche Isle\nLake Murray, WA 65095-6540', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(583, 'Esmeralda Murray', '225 Marion Plaza Suite 577\nPhyllisstad, TX 69693-8713', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(584, 'Jonatan Brekke', '3143 Colin Streets\nWest Madalinechester, SC 70250-7148', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(591, 'Margarett Hoppe', '3928 Simeon Lakes Suite 589\nMillsbury, OH 62237', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(600, 'Mrs. Yoshiko Fisher', '27120 Blake Mountains Apt. 471\nSouth Patrick, NM 32204-6443', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(603, 'Valentina Klein', '3320 Bode Ridges Suite 067\nJudgeport, ME 92859', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(611, 'Miss Madie Rohan II', '30701 Huels Corner\nDaronborough, RI 11145', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(614, 'Prof. Jane Lang', '20319 Dino Street Apt. 011\nNorwoodchester, IL 93623-9972', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(616, 'Dr. Velma Hagenes', '5876 Howell Falls Suite 044\nMaggioburgh, ME 78187-9109', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(619, 'Wilford Lemke', '615 Hoeger Street Suite 033\nLake Alvisside, AZ 64568-7521', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(622, 'Dr. Phoebe Skiles', '17789 Langosh Unions Suite 286\nIciebury, AK 03133', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(623, 'Zita Hoppe', '153 Orlando Junction Apt. 479\nSchuylermouth, VT 80722', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(630, 'Perry Hayes', '7185 Koelpin Locks Apt. 850\nHoppetown, KY 60002-5812', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(631, 'Pierre Padberg', '26204 Zetta Drives Apt. 787\nShirleybury, HI 07343-6360', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(634, 'Zetta Ortiz Sr.', '59110 Chyna Pine Apt. 399\nSouth Pablostad, NE 74008', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(639, 'Mellie Fahey', '6003 Swift Motorway\nLake Santa, KS 38709', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(641, 'Briana Pfeffer DDS', '74111 Katherine Forks\nSchaeferberg, VA 22764-7851', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(648, 'Dedric Wiegand', '6755 Johathan Summit\nWest Davonteview, CT 06842', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(654, 'Idell Dietrich', '9082 Langworth Station\nWest Abdul, NC 95777', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(657, 'Rebekah Spencer Jr.', '70089 Mateo Villages\nOndrickaport, MT 72730', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(662, 'Alford Emard', '797 Rohan Mountain Suite 024\nNew Brandomouth, SD 94469-1599', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(663, 'Emmet Blanda', '4736 Rice Brooks Suite 666\nSchroederborough, NY 43133', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(664, 'Columbus Mertz DVM', '39570 Rath Place Suite 531\nNorth Taniamouth, WA 44881-0745', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(667, 'Eve Bode', '8024 Steuber Dam\nPort Alba, NC 25464-8613', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(668, 'Mr. Frederic Cummings PhD', '324 Jeanne Coves\nBernardfurt, ID 91500', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(671, 'Hannah Goyette', '27926 Wiza Radial Suite 848\nEast Jazmyneland, OR 78900-5763', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(680, 'Finn Weimann', '186 Kihn Pines\nProsaccoville, AZ 53853', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(699, 'Toni Zboncak DDS', '20710 Ratke Fort\nBaileyburgh, OR 93104-1205', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(700, 'Kitty Gerlach', '98342 Llewellyn Prairie\nEast Christianamouth, ND 30841-9225', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(704, 'Adrain Senger III', '9248 Schuster Ridge Suite 281\nSchneidershire, MA 30053-6925', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(724, 'Alysa King', '766 Brandt Garden\nArdenshire, SD 89015-9832', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(733, 'Prof. Fredrick Turcotte DVM', '321 Rath Groves\nWest Moisesmouth, AK 88563', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(743, 'Mr. Trystan Sipes Sr.', '798 Boyle Mews Apt. 020\nNorth Osvaldo, CA 25568', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(745, 'Florida Parisian', '7341 Donnelly Place Apt. 184\nMaggioport, CA 08670-8671', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(748, 'Corine Senger', '362 Lily Green\nLake Rico, MO 65590-4445', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(758, 'Naomi Gerhold', '469 Lexus Brook Suite 466\nRorytown, DE 14458-4121', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(764, 'Tyson Yost', '301 Justice Land\nStephonton, OK 42517-9057', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(766, 'Bertrand Schimmel', '1870 Abshire Summit\nStromanfurt, AR 58530', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(777, 'Rosemarie Larkin', '813 Tressie Island\nEast Orenmouth, TX 53090-9524', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(778, 'Baylee Lehner', '414 Justine Mount Apt. 562\nLakinchester, NH 62422', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(779, 'Benedict West', '339 Mertz Springs Apt. 715\nOberbrunnerland, VA 19287', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(782, 'Miss Carolina Schaden V', '20634 Dean Valley Suite 294\nNikolausfort, MT 42041-0812', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(788, 'Ricardo Carroll', '1792 Monte Freeway\nJaskolskiburgh, PA 84476', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(789, 'Serena Crist', '8465 Darius Glens\nLeschmouth, GA 50401', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(791, 'Dr. Mabelle Schuster II', '92681 Shields Street\nUptonstad, ID 89200', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(792, 'Myra Jaskolski I', '9371 Howell Walks Apt. 587\nSouth Cynthiachester, AR 69883-9646', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(803, 'Miss Connie Cruickshank', '37175 Arne Corners\nJeanville, WA 82627-0724', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(806, 'Darrick Haag', '7694 Sharon Island Suite 367\nJarenchester, LA 39750', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(810, 'Mattie Considine', '6617 Chandler Corner Suite 633\nEast Martinaberg, KY 73409', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(821, 'Esteban Romaguera I', '17699 Brakus Crossroad Apt. 815\nBradtketown, WY 81023-3293', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(823, 'Stanton Keebler', '51270 Smith Pike\nKochtown, KY 46403', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(825, 'Rusty Schmeler II', '94546 Rosalinda Forest\nWest Amariside, MN 71115', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(837, 'Dr. Flo Mante', '26626 Hackett Plain\nGutkowskimouth, WY 76682-0787', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(839, 'Caden Sporer', '277 Lennie Drive Apt. 146\nMaximoside, RI 12437', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(840, 'Heath Pacocha', '48307 Elyse Flats\nGleasonmouth, CO 43618', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(843, 'Rocio Hackett PhD', '21326 Witting Ramp Suite 248\nGinoton, WY 70294', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(846, 'Mrs. Marjolaine Lesch Sr.', '29342 Carissa Square\nVonside, WV 44524', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(850, 'Prof. Gay Okuneva PhD', '100 West Greens Suite 877\nPadbergtown, PA 85232-3537', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(862, 'Mr. Esteban Purdy III', '69018 Wilderman Overpass\nPort Justenshire, AK 68089', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(865, 'Ms. Rozella Larkin', '57197 Charlie Square\nLake Jadynshire, MD 47655', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(869, 'Mylene Mohr MD', '76726 Audreanne Shoals\nGoodwintown, WV 81223', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(872, 'Chet Senger', '744 Reece Creek\nLockmanstad, CT 50518', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(873, 'Yolanda Jacobi', '9629 Paucek Freeway\nEast Emmitt, NV 68012-8109', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(874, 'Bradford Schuppe', '10651 Daugherty Summit Suite 180\nLake Warrenhaven, CT 72447-1047', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(877, 'Laron Nader', '31626 Chyna Plains\nEmieville, GA 92728', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(881, 'Prof. Mateo Cruickshank', '498 Stacey Trace\nNorth Bret, LA 16040-8481', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(886, 'Ophelia Stoltenberg', '25274 Webster Forge Suite 161\nDanielatown, FL 35503', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(894, 'Damian Kihn PhD', '598 Monserrate Fort Apt. 913\nEast Rodricktown, MD 04321-5642', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(896, 'Jada Larkin', '6932 Cale Shores Apt. 649\nLeonieport, MD 96177-8151', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(900, 'Ally Adams II', '9666 Brown Bridge Suite 489\nEast Eddiemouth, VT 96816-2185', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(902, 'Harold Orn', '44789 Wiegand Gardens Apt. 146\nDorcasport, MA 54725-9711', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(909, 'Samir Gorczany', '70302 Feeney Coves Apt. 119\nEast Lessiebury, WI 93877', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(915, 'Tamara Daugherty', '3170 Alta Stravenue\nArmstrongstad, IN 39775', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(920, 'Reba Kessler', '36320 Eva Bypass\nCummeratamouth, OH 43134', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(929, 'Maudie Deckow', '63819 Turner Pine Apt. 121\nEast Cynthia, DE 50749', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(936, 'Jermaine Larson I', '9374 Vernice Groves Suite 596\nAbigailfurt, KS 97479-4845', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(954, 'Lonie Crona', '15537 Lonzo Mountains Suite 280\nLanehaven, ND 56994-0129', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(957, 'Myron Heaney', '81632 Johnson Forks\nAshleehaven, RI 73035-3629', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(958, 'Rhett Little', '71619 Streich Loop\nNorth Constantinside, DC 12920', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(968, 'Prof. Jean Jast Sr.', '757 Kuhn Heights Suite 201\nBuckville, AK 93496', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(970, 'Kayli Daugherty II', '465 Rosamond Lock Apt. 446\nEast Simeon, MI 07324', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(979, 'Hilton Abbott', '67477 Willms Spurs Apt. 095\nSouth Sigurd, MO 60848', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(980, 'Prof. Darron Dach Jr.', '30332 McKenzie Vista Suite 025\nWest Darby, TN 39355-5467', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(985, 'Dr. Barry Pfannerstill III', '94144 Heller Ville Apt. 096\nHesselview, MT 67036-4686', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(992, 'Dr. Christy Herman DVM', '70569 Chloe Summit\nEast Dimitrishire, GA 46455', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(993, 'Bernice Doyle', '9011 Grimes Ranch Apt. 481\nSouth Breanamouth, MN 16016-5971', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(999, 'Alicia Runolfsdottir', '6069 Shanahan Mill\nEast Kariland, NH 44322', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(1000, 'Karolann Runolfsdottir', '4493 Jefferey Bypass Apt. 555\nEast Tremaine, IA 75014', '2024-01-07 07:52:49', '2024-01-07 07:52:49'),
(101010, 'Rosliana Mulyawati', 'Ciparay', '2024-01-08 06:27:46', '2024-01-08 06:27:46'),
(131313, 'Rosliana Mulyawati', 'Ciparay', '2024-01-08 06:34:46', '2024-01-08 06:34:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` int(10) UNSIGNED NOT NULL,
  `tanggal_pengiriman` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `tanggal_pengiriman`, `alamat`, `created_at`, `updated_at`) VALUES
(515, '2011-12-16', '682 Smith Plains Apt. 870\nWest Celestine, MN 84562', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(516, '2001-08-05', '673 Harvey Valleys\nEast Mikayla, MS 94315-9820', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(519, '2009-09-10', '414 Lottie Port Suite 254\nSkyechester, PA 75972', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(533, '1989-09-19', '5411 Devonte Port Apt. 750\nSouth Eldon, TX 41281-3562', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(536, '1991-05-10', '807 Lesch Harbor Apt. 982\nLueilwitzside, ID 74109', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(543, '1996-07-09', '78686 Bode Inlet\nMaggieberg, NJ 38649-6632', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(556, '1976-08-22', '3968 Bechtelar Knoll Apt. 989\nElectachester, WI 73405-4057', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(557, '1990-01-03', '905 Schamberger Heights Suite 765\nNorth Geovannyland, WA 17396-8977', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(562, '2004-09-30', '26844 Rollin Mountains Suite 054\nQuitzonberg, ID 95252', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(568, '1978-08-06', '340 Melissa Heights\nNew Cletushaven, IA 94515', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(571, '1995-05-14', '6278 Erdman Falls\nNew Eusebio, ND 50190-7969', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(572, '2014-02-28', '67543 Keon Point\nAlenatown, GA 93386', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(575, '1980-01-14', '413 Goodwin Drives\nRachaelstad, SD 17290-3915', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(578, '2007-01-19', '63271 Feeney Village\nLake Odellbury, NJ 02788-7275', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(581, '1994-05-21', '21409 Carmella Well\nPetraside, SC 62770-3779', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(589, '2007-07-29', '6532 Maegan Meadows\nKunzetown, AZ 46153', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(591, '2019-04-29', '9667 Lennie Row Suite 568\nAliyafurt, IL 14013-8245', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(592, '2008-09-08', '8343 Arjun Drive Apt. 003\nPort Eladioview, CO 31528-8985', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(597, '1992-06-15', '781 Reichel Square\nPort Rebeccabury, MS 93694-2783', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(604, '2023-05-05', '7316 Natasha Motorway\nSouth Jada, SD 34710', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(607, '1994-05-15', '6175 Renner Spur\nSylviaview, WY 78068', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(608, '1991-03-18', '9356 Mraz Burgs\nLake Lourdesshire, IA 63987', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(612, '1973-06-21', '907 Ellis Underpass Suite 950\nEast Danahaven, NH 41374-0534', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(629, '1991-03-19', '8194 Cara Plain\nSouth Geoffreyport, MA 34863', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(635, '2019-10-07', '875 Wunsch Fields Apt. 487\nFraneckifort, WY 64931', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(638, '1976-03-09', '50981 Keeling Causeway\nWest Ovastad, IN 63011', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(644, '2015-09-25', '85288 Tromp Port Apt. 948\nVerdietown, MI 83224-5030', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(645, '1986-04-13', '247 Bogan Lodge\nVivienneton, FL 93197', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(646, '1992-10-19', '8098 Joelle Turnpike\nWest Alainamouth, IN 65053', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(654, '2015-01-28', '74454 Luisa Point Suite 936\nRhiannonfurt, KY 07954-8646', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(657, '1993-02-03', '9917 Lavada Highway\nAbigailville, MI 60952', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(658, '2015-08-05', '837 Huels Mission\nPort Arvillabury, ID 08330', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(662, '2019-04-02', '6492 Ward Prairie Suite 996\nLake Salvador, WA 99296-6602', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(664, '1983-03-29', '254 Kari Walks Suite 260\nEast Ariane, AL 48503', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(668, '2022-03-06', '528 Wiley Spur\nLeslieberg, MN 90161-6767', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(676, '1970-10-01', '9907 Daija Spring Apt. 536\nNew Maxinemouth, ID 64082-5123', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(679, '1976-06-14', '7772 Jenkins Knoll Suite 404\nNew Marilyne, ME 76974-2587', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(681, '1971-03-16', '1386 Solon Mountain Apt. 577\nLake Marilyne, MT 87725-0798', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(689, '1971-07-03', '7394 Merle Branch\nKassulkechester, KY 54528-2355', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(690, '1989-02-25', '322 Taurean Turnpike Suite 648\nGrahamview, HI 39769', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(695, '2009-05-29', '258 Jenkins Path Apt. 090\nHomenickland, NV 46955', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(698, '1970-05-30', '882 Crona Crescent Apt. 230\nStantonmouth, TX 40653', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(707, '1979-04-05', '76566 Stiedemann Spurs\nPollichton, ND 16129', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(711, '1975-10-15', '191 Kris Lake Suite 881\nTitomouth, OK 66238', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(712, '2019-09-27', '458 Schimmel Ports Suite 588\nTorpside, WY 31020', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(713, '1977-06-23', '65340 Brayan Oval\nDemarcusburgh, NV 40505-5493', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(716, '1981-12-23', '62092 Mallie Village Suite 543\nArastad, NV 99837', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(717, '1991-04-17', '4448 Milford Course Suite 081\nNew Derrick, WA 36327-7414', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(720, '1990-11-25', '931 Moen Points\nCummeratabury, ID 14860-2985', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(729, '1992-07-03', '6568 Bins Flats Apt. 583\nAgustinberg, MA 62604-5289', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(735, '1991-11-16', '10960 Aimee Plaza\nNew Malcolm, LA 67800', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(736, '2000-12-19', '30354 Noemy Extensions\nFaheyhaven, WA 58717', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(742, '1987-07-12', '50142 Monahan Way Suite 409\nNew Sunny, VA 98622', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(743, '2017-03-14', '3519 Kasey Ford Apt. 095\nWest Schuylerfurt, MI 43853-1090', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(748, '1992-08-15', '611 Harvey Plaza Suite 287\nAlyceberg, NV 20055', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(759, '1980-09-22', '354 Clarissa Path\nStephentown, WA 41231', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(763, '2009-11-29', '5655 Lenny Keys\nEast Kurtburgh, OR 21332-4500', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(768, '2004-07-19', '213 Beer Centers\nEast Rico, CT 73992-5838', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(775, '1973-04-02', '930 Jodie View\nWillview, TX 34320', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(778, '2017-06-15', '502 Yundt Station\nLake Dan, MT 55614', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(784, '2021-01-06', '689 McKenzie Loop\nNorth Gertrude, ID 72108-6238', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(793, '1985-05-20', '703 Isaias Stream\nMedhurstberg, SC 37613-3388', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(796, '1970-04-07', '1688 Kaleb Inlet Suite 749\nMacejkovichaven, CO 66937', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(797, '1985-10-10', '853 Melyssa Orchard\nSouth Colleenland, CT 00228', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(807, '2000-11-12', '59979 Nikolaus Stream Suite 002\nBlazeside, TN 55986-5627', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(812, '1985-06-05', '2225 Stark Pass Suite 469\nSouth Kayleyborough, CO 65924-0585', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(814, '2007-07-15', '653 Shane Vista\nJodiefort, MI 77684', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(842, '2004-08-11', '270 Collier Trail\nSouth Carmelo, MO 53816', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(852, '2020-10-06', '71241 Ortiz Grove\nTorpborough, PA 71410-3507', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(853, '1989-12-07', '6607 Murphy Ranch Apt. 135\nNorth Silas, WI 87178-3233', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(858, '1995-10-21', '7915 Lola Mountains\nSouth Cletamouth, FL 14769', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(859, '1970-11-20', '91335 Gislason Road\nNew Garryside, DC 06349-2216', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(860, '2016-01-30', '8338 Willy Causeway\nLake Ruperthaven, MD 24647-0556', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(867, '1984-03-29', '35153 Mann Shoals Suite 913\nAufderharfort, ME 49340', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(869, '2002-03-10', '4960 Alexie Rue\nNorth Jerrell, FL 06780-1140', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(870, '1990-12-17', '897 Calista Parkway Suite 557\nKesslerville, NY 26534-2951', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(874, '1972-08-17', '952 Abbey Prairie\nOsbaldofurt, CO 05388', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(875, '1985-09-15', '1756 Kaya Hill\nRoweburgh, GA 26997', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(876, '2018-07-28', '18540 Madge Garden Apt. 342\nBlandaton, MI 09153', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(886, '2001-11-19', '70447 Feil Port\nLeontown, DE 68620-3688', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(890, '1974-03-24', '208 Wilkinson Point\nNorth Bessiemouth, MO 03808-5664', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(896, '2008-07-11', '111 Senger Port Apt. 179\nLake Marjorie, WA 74091-2292', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(898, '2014-12-29', '843 Trisha Fall\nRosariotown, TN 16142', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(906, '1998-03-24', '438 Edyth Terrace Apt. 548\nKrystelfort, SC 89841', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(917, '2021-12-28', '7176 Muhammad Village Apt. 536\nGoldnerburgh, ID 68165-2288', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(920, '1987-12-11', '3897 Hauck Ville\nYostchester, DC 27557', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(928, '2012-06-14', '79898 Volkman Trail Suite 706\nBatzland, NC 21430', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(930, '2012-06-23', '654 Friesen Pine Suite 696\nWildermantown, MO 99168-6390', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(931, '1976-12-19', '92779 Orrin Passage Apt. 278\nEast Abbey, WY 59621-3527', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(932, '1988-05-17', '80947 Fritz Views\nBoylehaven, MT 61372', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(935, '2019-04-07', '831 Reynolds Motorway\nOnieburgh, MD 14032-5412', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(944, '2006-01-19', '34352 Shaina Squares Suite 001\nEast Joe, WY 32093', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(966, '1988-02-27', '37040 River Lakes Suite 636\nWuckertstad, RI 87058', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(968, '1975-06-03', '41787 Paolo Parkway\nErnserport, NH 12379-8307', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(970, '1973-11-18', '1129 Boyle Harbors Apt. 650\nQuigleybury, UT 65818', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(974, '2005-10-26', '80196 Morar Street\nSouth Santiagoside, GA 69568-1750', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(978, '1983-04-26', '33427 Crawford Hollow Suite 778\nWiegandmouth, OR 49969-8174', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(989, '1973-12-28', '9749 Muller Bypass\nRemingtonland, VA 22371-9005', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(990, '2000-09-21', '7150 West Greens\nKautzerhaven, KY 24556-8607', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(996, '1989-04-21', '89205 Abigayle Flat\nSouth Kayleeburgh, TN 35106-9162', '2024-01-07 07:50:56', '2024-01-07 07:50:56'),
(14444, '2011-12-16', 'Ciparay', '2024-01-08 06:51:46', '2024-01-08 06:51:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Clifton Skiles V', 'ystark@example.com', '2024-01-07 08:21:19', '$2y$12$.rQd3pMsd8OSBYfLfApnBuERsvRoFvF1FTssMl0yUb1HXKRU6NBhi', 'DvXlLhHypcDr3DTBW55Wk6Hz9sO4G5PWUdmmoPHawIrAnpOMjByWcb1T9m76', '2024-01-07 08:21:22', '2024-01-07 08:21:22'),
(2, 'Graham Heller', 'xrolfson@example.org', '2024-01-07 08:21:19', '$2y$12$RmPzGTsq916bZCy5cORKbuKe7G.fgzfEIX17yv.U8OCTWNBUAP8ry', 'u6dzDBj8wD', '2024-01-07 08:21:22', '2024-01-07 08:21:22'),
(3, 'Nakia Homenick', 'kerluke.royal@example.com', '2024-01-07 08:21:20', '$2y$12$KlaOg/ub6H0P4tnDAWwx/O4zH7O/2Bu01hgrA8IV8pS6RrxXVbhqW', 'vmPYvEkwoO', '2024-01-07 08:21:22', '2024-01-07 08:21:22'),
(4, 'Opal Mann', 'schaefer.wendy@example.com', '2024-01-07 08:21:20', '$2y$12$f7qGRJL5kBjVr9wKDm6EleR9ArWgXYlfQYPFf72XiNYtYKp5tFSs.', '5HG8VUJ2Cw', '2024-01-07 08:21:22', '2024-01-07 08:21:22'),
(5, 'Jimmy Dooley', 'dameon.robel@example.net', '2024-01-07 08:21:20', '$2y$12$Squ2VTEphArEiIeTYe6M4OwPzcU7WcnV63HH6FRkFy.tQQ2rUp/P.', 'vON7GqWcWM', '2024-01-07 08:21:22', '2024-01-07 08:21:22'),
(6, 'Curt Hill', 'izulauf@example.org', '2024-01-07 08:21:21', '$2y$12$LZdZ.JG7Z48YOwgJPAlhuecu6nj7YF/QwlnILNesOrJYJJmqAPZyu', 'WHV6uL9wMN', '2024-01-07 08:21:22', '2024-01-07 08:21:22'),
(7, 'Ellen Macejkovic', 'prohaska.mateo@example.org', '2024-01-07 08:21:21', '$2y$12$OFNdisqEDlUugJIETiL5oO1VZNzSImBHWgqUiSDpEU67eKwHAH1T2', 'Skbk21xcK8', '2024-01-07 08:21:22', '2024-01-07 08:21:22'),
(8, 'Kenny Batz Sr.', 'aiyana.blanda@example.org', '2024-01-07 08:21:21', '$2y$12$MTXLe.KcK9NcYHxe3KmuMu3KSZ.Bkquul6kSwnbt/6BqH9XwwBFsi', 'XXZAXwUNLc', '2024-01-07 08:21:22', '2024-01-07 08:21:22'),
(9, 'Everardo Lowe', 'katharina35@example.com', '2024-01-07 08:21:22', '$2y$12$k1.bcqFjYkKi0mmVF.tInun9jFjqMp2Xkr5BSuJmkdIBXF1HmSmHW', 'E90YYOCyyG', '2024-01-07 08:21:22', '2024-01-07 08:21:22'),
(10, 'Erik Fadel', 'jerel.koss@example.org', '2024-01-07 08:21:22', '$2y$12$Q1EgNI/XmeorSk9dZlI1Oei5nui97QR9EkNKAZyNrKzu5XobeXxEy', 'DVyM2crS7f', '2024-01-07 08:21:22', '2024-01-07 08:21:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131314;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14445;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
