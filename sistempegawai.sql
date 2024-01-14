-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 03:56 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistempegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_12_20_102435_create_table_roles', 1),
(2, '2020_12_20_102506_create_table_users', 1),
(3, '2020_12_23_114942_create_table_position', 1),
(4, '2020_12_23_115044_create_table_departement', 1),
(5, '2020_12_23_115444_create_table_staff', 1),
(6, '2020_12_23_120038_create_table_absensi', 1),
(7, '2020_12_23_121157_create_table_cuti', 1),
(8, '2020_12_23_121505_create_table_overtime', 1),
(9, '2020_12_23_121836_create_table_salary', 1),
(10, '2020_12_23_122258_create_table_schedule', 1),
(11, '2021_01_02_135908_create_table_attendance', 1),
(12, '2021_01_02_141320_create_add_field', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-01-13 12:15:00', '2024-01-13 12:15:00'),
(2, 'karyawan', 'Karyawan', '2024-01-13 12:15:00', '2024-01-13 12:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_absensi`
--

CREATE TABLE `tb_absensi` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(10) UNSIGNED NOT NULL,
  `attendance_id` int(10) UNSIGNED NOT NULL,
  `bulan_ke` int(11) NOT NULL,
  `jumlah_lembur` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Staff','Daily Worker') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_absen` date NOT NULL,
  `waktu_masuk` time NOT NULL,
  `waktu_keluar` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_absensi`
--

INSERT INTO `tb_absensi` (`id`, `schedule_id`, `attendance_id`, `bulan_ke`, `jumlah_lembur`, `code`, `periode`, `status`, `tanggal_absen`, `waktu_masuk`, `waktu_keluar`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 0, 0, '', 'januari-2024', 'Staff', '2024-01-14', '00:00:00', '00:00:00', '2024-01-14 07:10:23', '2024-01-14 07:10:23'),
(2, 5, 1, 0, 0, '', 'januari-2024', 'Staff', '2024-01-14', '00:00:00', '00:00:00', '2024-01-14 07:10:23', '2024-01-14 07:10:23'),
(3, 4, 2, 0, 0, '', 'januari-2024', 'Staff', '2024-01-15', '00:00:00', '00:00:00', '2024-01-14 07:10:47', '2024-01-14 07:10:47'),
(4, 5, 3, 0, 0, '', 'januari-2024', 'Staff', '2024-01-15', '00:00:00', '00:00:00', '2024-01-14 07:10:48', '2024-01-14 07:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_attendance`
--

CREATE TABLE `tb_attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singkatan` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_attendance`
--

INSERT INTO `tb_attendance` (`id`, `name`, `label`, `singkatan`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Present', 'badge badge-success', 'H', 1, '2024-01-13 12:15:01', '2024-01-13 12:15:01'),
(2, 'Permision', 'badge badge-warning', 'I', 0, '2024-01-13 12:15:02', '2024-01-13 12:15:02'),
(3, 'Sick', 'badge badge-info', 'S', 0, '2024-01-13 12:15:02', '2024-01-13 12:15:02'),
(4, 'Alpha', 'badge badge-danger', 'A', 0, '2024-01-13 12:15:02', '2024-01-13 12:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cuti`
--

CREATE TABLE `tb_cuti` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `jumlah_cuti` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_cuti`
--

INSERT INTO `tb_cuti` (`id`, `staff_id`, `jumlah_cuti`, `tgl_mulai`, `tgl_selesai`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(3, 2, 0, '2024-01-14', '2024-01-14', 'Liburan', '2', '2024-01-14 07:15:42', '2024-01-14 07:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `tb_departement`
--

CREATE TABLE `tb_departement` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_departement`
--

INSERT INTO `tb_departement` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrasi', '2024-01-13 12:15:02', '2024-01-13 12:19:57'),
(2, 'Software Development', '2024-01-13 12:15:02', '2024-01-13 12:20:17'),
(3, 'IT Infrastructure', '2024-01-13 12:15:02', '2024-01-13 12:20:31'),
(4, 'Information Security', '2024-01-13 12:15:02', '2024-01-13 12:20:42'),
(5, 'Network', '2024-01-14 07:06:11', '2024-01-14 07:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_overtime`
--

CREATE TABLE `tb_overtime` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `jumlah_overtime` double NOT NULL DEFAULT 0,
  `tgl_overtime` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_position`
--

CREATE TABLE `tb_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Staff','Daily Worker') COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_position`
--

INSERT INTO `tb_position` (`id`, `name`, `status`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'CHEIF', 'Staff', 3000000, '2024-01-13 12:15:00', '2024-01-13 12:30:01'),
(2, 'Manager', 'Staff', 5000000, '2024-01-13 12:15:01', '2024-01-13 12:15:01'),
(3, 'Supervisor', 'Staff', 3500000, '2024-01-13 12:15:01', '2024-01-13 12:15:01'),
(4, 'Head', 'Staff', 6000000, '2024-01-13 12:15:01', '2024-01-13 12:15:01'),
(5, 'Helper', 'Staff', 3000000, '2024-01-13 12:15:01', '2024-01-13 12:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_salary`
--

CREATE TABLE `tb_salary` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `salary` double NOT NULL DEFAULT 0,
  `uang_overtime` double NOT NULL DEFAULT 0,
  `pot_bpjs` double NOT NULL DEFAULT 0,
  `tgl_salary` date NOT NULL,
  `periode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transportasi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double DEFAULT 0,
  `status_gaji` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_overtime` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_salary`
--

INSERT INTO `tb_salary` (`id`, `staff_id`, `salary`, `uang_overtime`, `pot_bpjs`, `tgl_salary`, `periode`, `transportasi`, `total`, `status_gaji`, `status`, `jumlah_overtime`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 3, 3000000, 50000, 100000, '2024-01-14', 'Januari-2024', '150000', 3650000, 'Lunas', 'Staff', '8', '2024-01-14 07:09:17', '2024-01-14 07:09:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_schedule`
--

CREATE TABLE `tb_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `tgl_masuk` date NOT NULL,
  `ket_schedule` enum('Morning(05:00-14:00)','Afternoon(13:00-22:00)','Middle Morning(10:00-19:00)','Middle Afternoon(12:00-21:00)','Evening (19:00-04:00)','Mignight (22:00-07:00)') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Staff','Daily Worker') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_schedule`
--

INSERT INTO `tb_schedule` (`id`, `staff_id`, `tgl_masuk`, `ket_schedule`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, '2024-01-14', 'Morning(05:00-14:00)', 'Staff', '2024-01-14 07:07:00', '2024-01-14 07:07:00'),
(5, 3, '2024-01-14', 'Afternoon(13:00-22:00)', 'Staff', '2024-01-14 07:08:11', '2024-01-14 07:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `departement_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `addres` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startdate` date NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_staff`
--

INSERT INTO `tb_staff` (`id`, `position_id`, `departement_id`, `users_id`, `name`, `birth`, `addres`, `startdate`, `phone`, `created_at`, `updated_at`, `deleted_at`, `photo`) VALUES
(1, 2, 1, 1, 'AFRIALDY SYAPUTRA', '1998-04-01', 'Jalan Srengseng Sawah, Jakarta Selatan', '2020-01-13', '081296154504', '2024-01-13 12:15:03', '2024-01-13 12:38:05', NULL, 'img/uploads/profile/3e4d20a36e4dfb18d5f89eeaf9772d25.jpg'),
(2, 2, 3, 2, 'MUHAMMAD TEGAR', '2002-01-01', 'Jalan Pancoran, Jakarta', '2024-01-01', '085773888841', '2024-01-13 12:21:55', '2024-01-13 12:31:50', NULL, 'img/uploads/profile/9fc78011f70f3a182f91d6a6fda44330.png'),
(3, 1, 4, 3, 'RHENALDY JOSEPHAN', '2022-01-04', 'Jalan Tanjung Barat, Jakarta', '2024-01-04', '087895012814', '2024-01-13 12:40:05', '2024-01-13 12:42:29', NULL, 'img/uploads/profile/7ce5bb2983911a1db2b7738a3b6b176a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `email`, `name`, `username`, `password`, `foto`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'admin@gmail.com', 'Administrator', 'admin', '$2y$10$GHJ8A3XkEksfVaRMucDG5uUBxYDLCQWJHDhFJ6D.N1sDnX3bowQke', NULL, NULL, '2024-01-13 12:15:02', '2024-01-13 12:15:02', NULL),
(2, 2, NULL, 'Muhammad Tegar', 'tegar123', '$2y$10$ACsQ.tsq7shaxSoyQJ5bHeMZsctpqbO7n28EIoFpnv0cW8poOq0pO', NULL, NULL, '2024-01-13 12:21:55', '2024-01-13 12:21:55', NULL),
(3, 2, NULL, 'Rhenaldy Josephan', 'rhenaldy123', '$2y$10$0PcsAmEWzM1Th0X3Mw6qm.FXhJd8OcbpjUah2UCj/7aB5HtMzV5mW', NULL, NULL, '2024-01-13 12:40:05', '2024-01-13 12:40:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_absensi_attendance_id_foreign` (`attendance_id`);

--
-- Indexes for table `tb_attendance`
--
ALTER TABLE `tb_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_cuti`
--
ALTER TABLE `tb_cuti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cuti_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `tb_departement`
--
ALTER TABLE `tb_departement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_overtime`
--
ALTER TABLE `tb_overtime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_overtime_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `tb_position`
--
ALTER TABLE `tb_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_salary`
--
ALTER TABLE `tb_salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_salary_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `tb_schedule`
--
ALTER TABLE `tb_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_schedule_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_staff_position_id_foreign` (`position_id`),
  ADD KEY `tb_staff_departement_id_foreign` (`departement_id`),
  ADD KEY `tb_staff_users_id_foreign` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_attendance`
--
ALTER TABLE `tb_attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_cuti`
--
ALTER TABLE `tb_cuti`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_departement`
--
ALTER TABLE `tb_departement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_overtime`
--
ALTER TABLE `tb_overtime`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_position`
--
ALTER TABLE `tb_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_salary`
--
ALTER TABLE `tb_salary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_schedule`
--
ALTER TABLE `tb_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD CONSTRAINT `tb_absensi_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `tb_attendance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_cuti`
--
ALTER TABLE `tb_cuti`
  ADD CONSTRAINT `tb_cuti_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `tb_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_overtime`
--
ALTER TABLE `tb_overtime`
  ADD CONSTRAINT `tb_overtime_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `tb_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_salary`
--
ALTER TABLE `tb_salary`
  ADD CONSTRAINT `tb_salary_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `tb_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_schedule`
--
ALTER TABLE `tb_schedule`
  ADD CONSTRAINT `tb_schedule_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `tb_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD CONSTRAINT `tb_staff_departement_id_foreign` FOREIGN KEY (`departement_id`) REFERENCES `tb_departement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_staff_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `tb_position` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_staff_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
