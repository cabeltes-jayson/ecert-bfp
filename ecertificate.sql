-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2025 at 09:36 AM
-- Server version: 11.7.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecertificate`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-03-11 20:29:31.429487'),
(2, 'auth', '0001_initial', '2025-03-11 20:29:31.619860'),
(3, 'admin', '0001_initial', '2025-03-11 20:29:31.667709'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-03-11 20:29:31.672755'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-11 20:29:31.682989'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-03-11 20:29:31.718690'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-03-11 20:29:31.733874'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-03-11 20:29:31.749605'),
(9, 'auth', '0004_alter_user_username_opts', '2025-03-11 20:29:31.754680'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-03-11 20:29:31.776518'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-03-11 20:29:31.777533'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-03-11 20:29:31.783621'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-03-11 20:29:31.798895'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-03-11 20:29:31.812614'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-03-11 20:29:31.826350'),
(16, 'auth', '0011_update_proxy_permissions', '2025-03-11 20:29:31.834990'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-03-11 20:29:31.847637'),
(18, 'sessions', '0001_initial', '2025-03-11 20:29:31.864182');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0sywahhogwo4k78mvaafhvujvdcjqpnn', '.eJxVjDEOwjAMRe-SGUW12iQ2IztniBzHIQXUSk07Ie4OlTrA-t97_2Uib2uNW9MljtmcTW9Ov1tieei0g3zn6TZbmad1GZPdFXvQZq9z1uflcP8OKrf6rTUHRQzYiyoVT5AQmIoyoAB0qA6FkVgDDQ4G8cxEHZDPDlPxYt4f9_Y4Mw:1u1NH9:-2qgdVX687aEJy7v8pzwDl2K91qdvltEqUb25T_KYM4', '2025-04-20 10:30:51.269119'),
('b83qe44svtsq05tpq57yeu48mk5i6wti', '.eJxVjDEOwjAMRe-SGUW12iQ2IztniBzHIQXUSk07Ie4OlTrA-t97_2Uib2uNW9MljtmcTW9Ov1tieei0g3zn6TZbmad1GZPdFXvQZq9z1uflcP8OKrf6rTUHRQzYiyoVT5AQmIoyoAB0qA6FkVgDDQ4G8cxEHZDPDlPxYt4f9_Y4Mw:1tz8QF:dziwJWN4r-6winoG-XzbsJNWRF_VUL7Wrcsi-t6w-LU', '2025-04-14 06:14:59.348090'),
('bsy8sqewp5io7zzyz0t07x96ms497pck', '.eJxVjDEOwjAMRe-SGUW12iQ2IztniBzHIQXUSk07Ie4OlTrA-t97_2Uib2uNW9MljtmcTW9Ov1tieei0g3zn6TZbmad1GZPdFXvQZq9z1uflcP8OKrf6rTUHRQzYiyoVT5AQmIoyoAB0qA6FkVgDDQ4G8cxEHZDPDlPxYt4f9_Y4Mw:1u1GZJ:xNqWs4uADJpPl-mZXHeml6PcpfbtAF8csY9vZP-2_Pw', '2025-04-20 03:21:09.598336'),
('ge56m69r86uuj4qx10k5m910py2xgepx', '.eJxVjDsOwjAQBe_iGlm28ZeSPmewdr0bHECOFCcV4u4QKQW0b2beS2TY1pq3zkueSFxEEqffDaE8uO2A7tBusyxzW5cJ5a7Ig3Y5zMTP6-H-HVTo9VszRCrFBxeKPcegx8Qe0bmE3kSNySCwT6NynJSlEC3ZGBwWpUGBsSTeH_IZN-o:1u86WD:ZnTrmf9NaYOhcG1SL2-FsqIOIFQX55f3Lg17xRG8eRY', '2025-05-09 00:02:13.713039'),
('mtu7x4782tekhisjv8ljscsn2jsc0ea6', '.eJxVjDEOwjAMRe-SGUW12iQ2IztniBzHIQXUSk07Ie4OlTrA-t97_2Uib2uNW9MljtmcTW9Ov1tieei0g3zn6TZbmad1GZPdFXvQZq9z1uflcP8OKrf6rTUHRQzYiyoVT5AQmIoyoAB0qA6FkVgDDQ4G8cxEHZDPDlPxYt4f9_Y4Mw:1u0xQL:YqSG53zPd881K2qlCTDJT_bHvggzv_yR9Xh3LhBpCtg', '2025-04-19 06:54:37.723433'),
('nur8tx02a08zsco8t2zf9g0r3qypopug', '.eJxVjDsOwjAQBe_iGlm28ZeSPmewdr0bHECOFCcV4u4QKQW0b2beS2TY1pq3zkueSFxEEqffDaE8uO2A7tBusyxzW5cJ5a7Ig3Y5zMTP6-H-HVTo9VszRCrFBxeKPcegx8Qe0bmE3kSNySCwT6NynJSlEC3ZGBwWpUGBsSTeH_IZN-o:1uAkdg:eMA7_wVWTcNFDgOz8HaxcHB0zjzhN7gsg191H4yr4Ac', '2025-05-16 07:16:52.355963'),
('tajmgiz8jbwg0613s9vbrz4rq4erhxr0', '.eJxVjEEOwiAQRe_C2pBCCzO4dO8ZyMBMpWpoUtqV8e7apAvd_vfef6lI21ri1mSJE6uzsur0uyXKD6k74DvV26zzXNdlSnpX9EGbvs4sz8vh_h0UauVbd4IeMTjsjYSRPZNLEgJlDmjQE4ODwVjI1gGSs2jAeDDS9WGgMYF6fwDPdTcP:1tz6rw:YBN1pweNxeoWeGU31ZLVW4nGCHcI--sGBSrFBpap6gY', '2025-04-14 04:35:28.866553');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_certificates`
--

CREATE TABLE `tbl_certificates` (
  `certificate_id` int(11) NOT NULL,
  `type` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_certificates`
--

INSERT INTO `tbl_certificates` (`certificate_id`, `type`) VALUES
(1, 'Appearance'),
(2, 'Internship'),
(3, 'Commendation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`course_id`, `course_name`) VALUES
(1, 'Information Technology'),
(2, 'Criminology'),
(3, 'Technology Communication Management');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`role_id`, `role_name`) VALUES
(1, 'SPO1'),
(2, 'FO1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schools`
--

CREATE TABLE `tbl_schools` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_schools`
--

INSERT INTO `tbl_schools` (`school_id`, `school_name`) VALUES
(1, 'University of Science and Technology of Southern Philippines'),
(2, 'Southern de Oro Philippines College'),
(3, 'Cagayan de Oro College'),
(4, 'Informatics');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stations`
--

CREATE TABLE `tbl_stations` (
  `station_id` int(11) NOT NULL,
  `station_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_stations`
--

INSERT INTO `tbl_stations` (`station_id`, `station_name`) VALUES
(1, 'STATION 1'),
(2, 'STATION 2'),
(3, 'STATION 3'),
(4, 'STATION 4'),
(5, 'STATION 5'),
(6, 'STATION 6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usercertificates`
--

CREATE TABLE `tbl_usercertificates` (
  `usercertificate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `certificate_id` int(11) DEFAULT NULL,
  `userschool_id` int(11) DEFAULT NULL,
  `userstation_id` int(11) DEFAULT NULL,
  `usercourse_id` int(11) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `render_time` varchar(255) DEFAULT NULL,
  `date_started` date DEFAULT NULL,
  `date_ended` date DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `duration` date DEFAULT NULL,
  `personnel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usercourses`
--

CREATE TABLE `tbl_usercourses` (
  `usercourse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_usercourses`
--

INSERT INTO `tbl_usercourses` (`usercourse_id`, `user_id`, `course_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 5, 1),
(4, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userroles`
--

CREATE TABLE `tbl_userroles` (
  `userrole_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(55) NOT NULL,
  `middlename` varchar(55) DEFAULT NULL,
  `lastname` varchar(55) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(55) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `gender`, `email_address`, `contact_number`, `status`, `created_at`, `updated_at`, `is_superuser`, `last_login`) VALUES
(2, '2021302064', 'pbkdf2_sha256$870000$5x1cSTlejHnV0RjcrLABhh$c3tuIqsdNbvsp/7chmZaW3I6VdwFB1TXuNbpCbCFbQk=', 'Jay Emerald', 'Viado', 'Chaves', 'Male', 'chaves.jayemerald@gmail.com', '09275127353', 'Active', '2025-03-11 13:00:31', '2025-03-11 13:00:31', 0, '2025-03-31 04:35:28'),
(3, 'cjayson', 'pbkdf2_sha256$870000$ptRAwmcQ2BIiZz9NlCZmMt$qjTNa7RvJd9NM9B0XNJSsuWIaERntuNA3xXi9aYhou4=', 'Jayson', NULL, 'Cabeltes', 'Male', 'cabeltes.jayson7@gmail.com', '09362829453', 'Active', '2025-03-30 10:54:47', '2025-03-30 10:54:47', 0, '2025-04-20 02:54:40'),
(5, 'single_user', '', 'Retchel John', 'V.', 'Langeras', 'Male', 'langeras.retchel@gmail.com', '09362829453', 'Active', '2025-03-30 17:52:36', '2025-03-30 17:52:36', 0, NULL),
(6, 'single_user', '', 'Jan Paul Tadeos', 'Broxas', 'Capin', 'Male', 'capin.janpaul@gmail.com', '09362829453', 'Active', '2025-03-30 17:54:14', '2025-03-30 17:54:14', 0, NULL),
(7, 'single_user', '', 'Mike John Paul', NULL, 'Caña', 'Male', 'cana.johnpaul@gmail.com', '', 'Active', '2025-03-30 20:05:57', '2025-03-30 20:05:57', 0, NULL),
(9, 'admin', 'pbkdf2_sha256$870000$SNYRkTqaKmn2IiBaQZRfg3$eOGcwnwyo2XhzmrnV02dr6MIcoLGRKeJOC0AmQxXEmk=', 'BFP', NULL, 'Admin', 'Male', '', '', 'Active', '2025-04-19 18:56:58', '2025-04-19 18:56:58', 0, '2025-05-02 07:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userschools`
--

CREATE TABLE `tbl_userschools` (
  `userschool_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_userschools`
--

INSERT INTO `tbl_userschools` (`userschool_id`, `user_id`, `school_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 5, 1),
(4, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userstations`
--

CREATE TABLE `tbl_userstations` (
  `userstation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_userstations`
--

INSERT INTO `tbl_userstations` (`userstation_id`, `user_id`, `station_id`) VALUES
(1, 2, 1),
(2, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `tbl_certificates`
--
ALTER TABLE `tbl_certificates`
  ADD PRIMARY KEY (`certificate_id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_schools`
--
ALTER TABLE `tbl_schools`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `tbl_stations`
--
ALTER TABLE `tbl_stations`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `tbl_usercertificates`
--
ALTER TABLE `tbl_usercertificates`
  ADD PRIMARY KEY (`usercertificate_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `certificate_id` (`certificate_id`),
  ADD KEY `userschool_id` (`userschool_id`),
  ADD KEY `userstation_id` (`userstation_id`),
  ADD KEY `usercourse_id` (`usercourse_id`);

--
-- Indexes for table `tbl_usercourses`
--
ALTER TABLE `tbl_usercourses`
  ADD PRIMARY KEY (`usercourse_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tbl_userroles`
--
ALTER TABLE `tbl_userroles`
  ADD PRIMARY KEY (`userrole_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_userschools`
--
ALTER TABLE `tbl_userschools`
  ADD PRIMARY KEY (`userschool_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `tbl_userstations`
--
ALTER TABLE `tbl_userstations`
  ADD PRIMARY KEY (`userstation_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `station_id` (`station_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_certificates`
--
ALTER TABLE `tbl_certificates`
  MODIFY `certificate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_schools`
--
ALTER TABLE `tbl_schools`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_stations`
--
ALTER TABLE `tbl_stations`
  MODIFY `station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_usercertificates`
--
ALTER TABLE `tbl_usercertificates`
  MODIFY `usercertificate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_usercourses`
--
ALTER TABLE `tbl_usercourses`
  MODIFY `usercourse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_userroles`
--
ALTER TABLE `tbl_userroles`
  MODIFY `userrole_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_userschools`
--
ALTER TABLE `tbl_userschools`
  MODIFY `userschool_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_userstations`
--
ALTER TABLE `tbl_userstations`
  MODIFY `userstation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tbl_usercertificates`
--
ALTER TABLE `tbl_usercertificates`
  ADD CONSTRAINT `tbl_usercertificates_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`),
  ADD CONSTRAINT `tbl_usercertificates_ibfk_2` FOREIGN KEY (`certificate_id`) REFERENCES `tbl_certificates` (`certificate_id`),
  ADD CONSTRAINT `tbl_usercertificates_ibfk_3` FOREIGN KEY (`userschool_id`) REFERENCES `tbl_userschools` (`userschool_id`),
  ADD CONSTRAINT `tbl_usercertificates_ibfk_4` FOREIGN KEY (`userstation_id`) REFERENCES `tbl_userstations` (`userstation_id`),
  ADD CONSTRAINT `tbl_usercertificates_ibfk_5` FOREIGN KEY (`usercourse_id`) REFERENCES `tbl_usercourses` (`usercourse_id`);

--
-- Constraints for table `tbl_usercourses`
--
ALTER TABLE `tbl_usercourses`
  ADD CONSTRAINT `tbl_usercourses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`),
  ADD CONSTRAINT `tbl_usercourses_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `tbl_courses` (`course_id`);

--
-- Constraints for table `tbl_userroles`
--
ALTER TABLE `tbl_userroles`
  ADD CONSTRAINT `tbl_userroles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`),
  ADD CONSTRAINT `tbl_userroles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`role_id`);

--
-- Constraints for table `tbl_userschools`
--
ALTER TABLE `tbl_userschools`
  ADD CONSTRAINT `tbl_userschools_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`),
  ADD CONSTRAINT `tbl_userschools_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `tbl_schools` (`school_id`);

--
-- Constraints for table `tbl_userstations`
--
ALTER TABLE `tbl_userstations`
  ADD CONSTRAINT `tbl_userstations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`),
  ADD CONSTRAINT `tbl_userstations_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `tbl_stations` (`station_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
