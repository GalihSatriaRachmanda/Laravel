-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Sep 2019 pada 16.37
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nama_guru` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nip`, `nama_guru`, `email`, `tanggal_lahir`, `jenis_kelamin`, `image`, `created_at`, `updated_at`) VALUES
(1, '01', 'Ria', 'Ria@gmail.com', '2332-03-22', 'P', NULL, '2019-09-15 05:28:53', '2019-09-15 05:28:53'),
(2, '02', 'Suprayogi', NULL, '2332-02-12', 'L', NULL, '2019-09-15 07:05:45', '2019-09-15 07:05:45'),
(3, '03', 'Bagas Wantoro', NULL, '3333-03-12', 'L', NULL, '2019-09-15 07:06:01', '2019-09-15 07:06:01'),
(4, '04', 'Bunga Wardani', NULL, '3223-05-06', 'P', NULL, '2019-09-15 07:06:23', '2019-09-15 07:06:23'),
(5, '05', 'Abdul Mutakhir', NULL, '2044-02-12', 'L', 'Abdul Mutakhir05.jpg', '2019-09-15 07:06:52', '2019-09-15 18:25:56'),
(6, '06', 'Budi', NULL, '3222-02-12', 'L', NULL, '2019-09-15 07:16:14', '2019-09-15 07:16:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_08_002333_create_table_siswa', 1),
(10, '2019_08_30_005913_create_tabel_kelas', 1),
(11, '2019_09_08_140815_create_table_walikelas', 1),
(12, '2019_09_08_141455_create_table_guru', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('Galih@gmail.com', '$2y$10$0r7/Dmt8K0ZYcwjzlj/M.ebomsMlo/FUcORc0KiV4LW49AYBCAf6O', '2019-09-15 08:11:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nisn` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `id_kelas` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_siswa` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `id_kelas`, `nama_siswa`, `email`, `tanggal_lahir`, `jenis_kelamin`, `image`, `created_at`, `updated_at`) VALUES
(1, '001', '01', 'Galih Satria Rachmanda', 'galihsatriafu123@gmail.com', '2003-03-13', 'L', 'Galih Satria Rachmanda001.jpg', '2019-09-15 05:27:21', '2019-09-15 18:25:05'),
(2, '002', '05', 'Bambang Budi Pratomo', 'bambanggemblung@gmail.com', '3344-04-30', 'L', 'Bambang Budi Pratomo002.jpg', '2019-09-15 05:27:59', '2019-09-15 18:25:35'),
(3, '003', '04', 'Dewi', 'dewislur@gmail.com', '3232-02-23', 'P', NULL, '2019-09-15 05:28:27', '2019-09-15 05:28:27'),
(4, '004', '03', 'ASJAKJskj', NULL, '2019-09-16', 'P', NULL, '2019-09-16 04:21:10', '2019-09-16 04:21:10'),
(5, '005', '01', 'njkfb', NULL, '3011-09-09', 'P', NULL, '2019-09-16 04:21:37', '2019-09-16 04:21:37'),
(6, '006', '01', 'nfbbaibi', NULL, '1000-09-10', 'L', NULL, '2019-09-16 04:22:19', '2019-09-16 04:22:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Argonaut', 'Galih@gmail.com', NULL, '$2y$10$WG1Id5cBNncVzJP8YPFK1.wjRxStnLP1x8P8OLDm9gLg.8N66qp3q', NULL, '2019-09-15 05:25:57', '2019-09-15 05:25:57'),
(2, 'Akhtar Muzaqie', 'akhtarabraar23@gmail.com', NULL, '$2y$10$57VN6RMWelpjP7C0ytm.5eFivY9Nr/TP0P4Bj87bk4ZfS2fE1wKhS', NULL, '2019-09-15 23:05:25', '2019-09-15 23:05:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guru_nip_unique` (`nip`);

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
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_nisn_unique` (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`);

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
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
