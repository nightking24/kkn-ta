-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2026 at 08:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkn_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `apl`
--

CREATE TABLE `apl` (
  `nim` char(8) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apl`
--

INSERT INTO `apl` (`nim`, `nama`, `email`, `no_telp`, `created_at`, `updated_at`) VALUES
('72220134', 'Kak Adit', 'adit123@gmail.com', '081324441122', '2026-03-28 14:06:12', '2026-03-28 14:06:12'),
('72220511', 'Christian', 'christian12345@gmail.com', '081325466411', '2026-03-25 04:17:04', '2026-03-25 07:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dpl`
--

CREATE TABLE `dpl` (
  `nik` char(18) NOT NULL,
  `nidn` char(10) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dpl`
--

INSERT INTO `dpl` (`nik`, `nidn`, `nama`, `email`, `no_telp`, `created_at`, `updated_at`) VALUES
('111222333444', '1244624621', 'Pak Nolan', 'nolan123@gmail.com', '081388553311', '2026-04-05 20:16:19', '2026-04-05 20:16:19'),
('1234555890334', '1111111113', 'Pak Viki', 'viki123@gmail.com', '081322221111', '2026-03-28 14:03:53', '2026-03-28 14:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelompok`
--

CREATE TABLE `kelompok` (
  `id_kelompok` bigint(20) UNSIGNED NOT NULL,
  `nomor_kelompok` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL,
  `dusun` varchar(255) NOT NULL,
  `faskes` tinyint(1) NOT NULL DEFAULT 0,
  `kapasitas` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `tahun_kkn` year(4) NOT NULL,
  `id_periode` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_dukuh` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_telepon` varchar(12) NOT NULL,
  `nama_tuan_rumah` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `nik` char(18) DEFAULT NULL,
  `nim` char(8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelompok`
--

INSERT INTO `kelompok` (`id_kelompok`, `nomor_kelompok`, `desa`, `dusun`, `faskes`, `kapasitas`, `semester`, `tahun_kkn`, `id_periode`, `nama_dukuh`, `alamat`, `nomor_telepon`, `nama_tuan_rumah`, `latitude`, `longitude`, `nik`, `nim`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jlubang', 'Dawung', 1, 8, 'Genap', '2027', 2, 'Pak Joko', 'jalan merpati 1 no 18', '081311223344', 'Pak Sugih', -8.17380211, 111.09510027, '1234555890334', '72220511', '2026-03-24 11:08:43', '2026-04-05 20:44:57'),
(4, 2, 'Watukarung', 'Ketro', 0, 8, 'Genap', '2027', 2, 'Pak Bima', 'jalan Mawar 1 no 10', '081399991111', 'Pak Hendri', -8.23604873, 110.97345724, '1234555890334', '72220134', '2026-04-05 22:35:27', '2026-04-05 22:38:55'),
(5, 3, 'Watukarung', 'Gumuharjo', 1, 8, 'Genap', '2027', 2, 'Pak Jack', 'jalan gingseng no 7', '081322332233', 'Bu Meri', -8.23542347, 110.97275816, '111222333444', '72220134', '2026-04-05 22:37:20', '2026-04-05 22:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id_log` bigint(20) UNSIGNED NOT NULL,
  `aktivitas` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id_log`, `aktivitas`, `username`, `created_at`, `updated_at`) VALUES
(1, 'Tukar Peserta', 'Admin 1', '2026-04-07 07:05:34', '2026-04-07 07:05:34'),
(2, NULL, 'Admin 1', '2026-04-09 20:47:51', '2026-04-09 20:47:51'),
(3, NULL, 'Admin 1', '2026-04-09 20:48:43', '2026-04-09 20:48:43'),
(4, 'Export PDF', 'Admin 1', '2026-04-09 20:54:08', '2026-04-09 20:54:08'),
(5, 'Export Excel', 'Admin 1', '2026-04-09 20:54:20', '2026-04-09 20:54:20'),
(6, 'Export PDF - Export hasil pembagian PDF', 'Admin 1', '2026-04-09 20:56:48', '2026-04-09 20:56:48'),
(7, 'Export Excel - Export semua data kelompok', 'Admin 1', '2026-04-09 20:56:49', '2026-04-09 20:56:49'),
(8, 'Export PDF', 'Admin 1', '2026-04-09 20:59:03', '2026-04-09 20:59:03'),
(9, 'Export PDF dari Halaman Dashboard', 'Admin 1', '2026-04-09 21:04:00', '2026-04-09 21:04:00'),
(10, 'Export Excel dari Halaman Dashboard', 'Admin 1', '2026-04-09 21:04:01', '2026-04-09 21:04:01'),
(11, 'Export PDF dari Halaman Hasil Pembagian', 'Admin 1', '2026-04-09 21:11:40', '2026-04-09 21:11:40'),
(12, 'Export Excel dari Halaman Hasil Pembagian', 'Admin 1', '2026-04-09 21:11:41', '2026-04-09 21:11:41'),
(13, 'Export PDF dari Halaman Dashboard', 'Admin 1', '2026-04-09 21:12:12', '2026-04-09 21:12:12'),
(14, 'Export Excel dari Halaman Dashboard', 'Admin 1', '2026-04-09 21:12:14', '2026-04-09 21:12:14'),
(15, 'Generate - Randomisasi kelompok', 'Admin 1', '2026-04-10 15:07:37', '2026-04-10 15:07:37'),
(16, 'Simpan Hasil - Menyimpan hasil pembagian kelompok', 'Admin 1', '2026-04-10 15:07:48', '2026-04-10 15:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE `periode` (
  `id_periode` bigint(20) UNSIGNED NOT NULL,
  `nama_kkn` varchar(255) NOT NULL,
  `tahun_kkn` year(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_publish` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`id_periode`, `nama_kkn`, `tahun_kkn`, `status`, `tanggal_mulai`, `tanggal_selesai`, `lokasi`, `created_at`, `updated_at`, `status_publish`) VALUES
(2, 'KKN Reguler 1', '2027', '1', '2027-06-23', '2027-07-24', 'Pacitan', '2026-03-24 11:06:11', '2026-04-06 13:32:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `nim` char(8) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `bahasa_jawa` tinyint(1) DEFAULT 0,
  `riwayat_penyakit` tinyint(1) NOT NULL DEFAULT 0,
  `berkebutuhan_khusus` tinyint(1) NOT NULL DEFAULT 0,
  `id_kelompok` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `detail_penyakit` varchar(255) DEFAULT NULL,
  `detail_khusus` varchar(255) DEFAULT NULL,
  `id_periode` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`nim`, `nama`, `email`, `prodi`, `gender`, `bahasa_jawa`, `riwayat_penyakit`, `berkebutuhan_khusus`, `id_kelompok`, `created_at`, `updated_at`, `detail_penyakit`, `detail_khusus`, `id_periode`) VALUES
('22001', 'Andi Saputra', NULL, 'Informatika', 'L', 1, 0, 0, 1, '2026-04-03 12:51:07', '2026-04-10 15:07:48', NULL, NULL, 2),
('22002', 'Budi Santoso', NULL, 'Sistem Informasi', 'L', 0, 0, 0, 4, '2026-04-03 12:51:07', '2026-04-10 15:07:48', NULL, NULL, 2),
('22003', 'Citra Dewi', NULL, 'Informatika', 'P', 1, 0, 0, 1, '2026-04-03 12:51:07', '2026-04-10 15:07:48', NULL, NULL, 2),
('22004', 'Dewi Lestari', NULL, 'Management', 'P', 0, 0, 0, 4, '2026-04-03 12:51:07', '2026-04-05 22:53:38', NULL, NULL, 2),
('22005', 'Eko Prasetyo', NULL, 'Informatika', 'L', 1, 0, 0, 5, '2026-04-03 12:51:07', '2026-04-10 15:07:48', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4hy4zJflp7CNi0pRxxZS2uSVzREu9O5VnDC3DNIX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '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', 1775844701);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin 1', '$2y$12$Ehj8dRszP/9Hn7bpvEdy8.tpzMfTO2Sc7O9xrn2QJKVn0YVX89WB6', 'admin', NULL, NULL),
(2, '22001', '$2y$12$r/zquOITSZIs8EGygjxQnus1xiBGlX5FWzF2WpoK6A6ih8vUo6zIS', 'peserta', NULL, NULL),
(3, '111222333444', '$2y$12$KckDH1U7qZw1ajbz9KwcwONYlwauLZMRfkqcvQy2dr3.FsiLLvcgS', 'dpl', NULL, NULL),
(4, '72220134', '$2y$12$0GXcVMT5W1nyoF2DRANU9O6vd6GrSUWd3/vO6AqR.Wg6XSPT34L5e', 'apl', NULL, NULL),
(5, '1234555890334', '$2y$12$crXBh5YGqVKn.S0cVKD8pu/XRDk0UaTdxPpVwT2Y19PYSQ3bYIv0q', 'dpl', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apl`
--
ALTER TABLE `apl`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `apl_email_unique` (`email`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `dpl`
--
ALTER TABLE `dpl`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `dpl_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`id_kelompok`),
  ADD KEY `kelompok_nik_foreign` (`nik`),
  ADD KEY `kelompok_nim_foreign` (`nim`),
  ADD KEY `kelompok_id_periode_foreign` (`id_periode`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `log_activities_username_foreign` (`username`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `peserta_email_unique` (`email`),
  ADD KEY `peserta_id_kelompok_foreign` (`id_kelompok`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `id_kelompok` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id_log` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `id_periode` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD CONSTRAINT `kelompok_id_periode_foreign` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE SET NULL,
  ADD CONSTRAINT `kelompok_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `dpl` (`nik`) ON DELETE SET NULL,
  ADD CONSTRAINT `kelompok_nim_foreign` FOREIGN KEY (`nim`) REFERENCES `apl` (`nim`) ON DELETE SET NULL;

--
-- Constraints for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD CONSTRAINT `log_activities_username_foreign` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `fk_peserta_periode` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE,
  ADD CONSTRAINT `peserta_id_kelompok_foreign` FOREIGN KEY (`id_kelompok`) REFERENCES `kelompok` (`id_kelompok`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
