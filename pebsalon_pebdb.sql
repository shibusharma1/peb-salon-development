-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2026 at 02:25 PM
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
-- Database: `pebsalon_pebdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cl_adminmenu_user`
--

CREATE TABLE `cl_adminmenu_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `adminmenu_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_adminmenu_user`
--

INSERT INTO `cl_adminmenu_user` (`id`, `user_id`, `adminmenu_id`) VALUES
(1, 3, 1),
(11, 3, 2),
(12, 3, 4),
(13, 3, 5),
(14, 3, 12),
(25, 4, 1),
(26, 4, 2),
(27, 4, 12);

-- --------------------------------------------------------

--
-- Table structure for table `cl_admin_menu`
--

CREATE TABLE `cl_admin_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_admin_menu`
--

INSERT INTO `cl_admin_menu` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Manage Banners', '2020-08-16 08:51:13', '2020-08-16 08:51:13'),
(2, 'Manage Posts', '2020-08-16 08:52:23', '2020-08-16 08:52:23'),
(4, 'Manage Photo Gallery', '2020-08-16 08:52:38', '2020-08-16 08:52:38'),
(5, 'Manage Video Gallery', '2020-08-16 08:53:15', '2020-08-16 08:53:15'),
(9, 'Manage Users', '2020-08-16 08:53:49', '2020-08-16 08:53:49'),
(12, 'Settings', '2020-08-16 08:54:22', '2020-08-16 08:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `cl_appointments`
--

CREATE TABLE `cl_appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `service` varchar(255) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Confirmed','Cancelled') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_appointments`
--

INSERT INTO `cl_appointments` (`id`, `full_name`, `email`, `phone`, `service`, `appointment_date`, `appointment_time`, `subject`, `message`, `country`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Zephr Cherry', 'qyguge@mailinator.com', '+1 (258) 171-1174', 'Massage', '2016-06-21', '13:32:00', NULL, 'Doloribus omnis reru', NULL, 'Pending', '2026-07-05 00:25:49', '2026-07-05 00:25:49'),
(2, 'Zephr Cherry', 'qyguge@mailinator.com', '+1 (258) 171-1174', 'Massage', '2016-06-21', '13:32:00', NULL, 'Doloribus omnis reru', NULL, 'Pending', '2026-07-05 00:26:52', '2026-07-05 00:26:52'),
(3, 'Zephr Cherry', 'qyguge@mailinator.com', '+1 (258) 171-1174', 'Massage', '2016-06-21', '13:32:00', NULL, 'Doloribus omnis reru', NULL, 'Pending', '2026-07-05 00:28:25', '2026-07-05 00:28:25'),
(4, 'Quinlan Fletcher', 'guqoj@mailinator.com', '+1 (205) 717-4668', 'Waxing', '1985-09-21', '07:11:00', NULL, 'Neque laboris illum', NULL, 'Pending', '2026-07-05 00:28:38', '2026-07-05 00:28:38'),
(5, 'Quinlan Fletcher', 'guqoj@mailinator.com', '+1 (205) 717-4668', 'Waxing', '1985-09-21', '07:11:00', NULL, 'Neque laboris illum', NULL, 'Pending', '2026-07-05 00:28:42', '2026-07-05 00:28:42'),
(6, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Threading', '2026-07-05', '12:04:00', NULL, 'awefq', NULL, 'Pending', '2026-07-05 00:33:09', '2026-07-05 00:33:09'),
(7, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'aesdf', '2026-07-07', '14:00:00', NULL, 'asd', NULL, 'Pending', '2026-07-07 02:28:26', '2026-07-07 02:28:26'),
(8, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Extension', '2026-07-07', '15:30:00', NULL, 'asd', NULL, 'Pending', '2026-07-07 03:42:05', '2026-07-07 03:42:05'),
(9, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Extension', '2026-07-07', '16:30:00', NULL, 'asdasd', NULL, 'Pending', '2026-07-07 03:43:23', '2026-07-07 03:43:23'),
(10, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Extension', '2026-07-07', '17:00:00', NULL, 'zsdcvs', NULL, 'Pending', '2026-07-07 03:54:04', '2026-07-07 03:54:04'),
(11, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Extension', '2026-07-07', '17:30:00', NULL, 'sdzvasd', NULL, 'Pending', '2026-07-07 03:54:47', '2026-07-07 03:54:47'),
(12, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Extension', '2026-07-08', '09:00:00', NULL, NULL, NULL, 'Pending', '2026-07-07 03:56:24', '2026-07-07 03:56:24'),
(13, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Hair Styling', '2026-07-16', '09:00:00', NULL, 'asdas', NULL, 'Pending', '2026-07-07 03:58:28', '2026-07-07 03:58:28'),
(14, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Hair Styling', '2026-07-16', '17:30:00', NULL, 'asdas', NULL, 'Pending', '2026-07-07 04:03:23', '2026-07-07 04:03:23'),
(15, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Paint', '2026-07-30', '09:00:00', NULL, 'aGESDARW', NULL, 'Pending', '2026-07-07 04:12:19', '2026-07-07 04:12:19'),
(16, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Hair Styling', '2026-07-21', '09:00:00', NULL, 'asdas', NULL, 'Pending', '2026-07-07 04:12:36', '2026-07-07 04:12:36'),
(17, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'aesdf', '2026-07-20', '09:00:00', NULL, 'asdcDS', NULL, 'Pending', '2026-07-07 04:14:18', '2026-07-07 04:14:18'),
(18, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Hair Styling', '2026-07-15', '09:00:00', NULL, 'asdfd', NULL, 'Pending', '2026-07-07 04:21:02', '2026-07-07 04:21:02'),
(19, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Select Service', '2026-07-10', '10:30:00', NULL, 'asd', NULL, 'Pending', '2026-07-07 04:22:54', '2026-07-07 04:22:54'),
(20, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Extension', '2026-07-31', '09:00:00', NULL, 'asdcas', NULL, 'Pending', '2026-07-07 04:32:27', '2026-07-07 04:32:27'),
(21, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Paint', '2026-08-07', '09:00:00', NULL, 'aesd', NULL, 'Pending', '2026-07-07 04:33:01', '2026-07-07 04:33:01'),
(22, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Extension', '2026-08-08', '09:00:00', NULL, 'adsas', NULL, 'Pending', '2026-07-07 04:49:14', '2026-07-07 04:49:14'),
(23, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Extension', '2026-08-05', '14:30:00', NULL, 'aSdcas', NULL, 'Pending', '2026-07-07 05:20:08', '2026-07-07 05:20:08'),
(24, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Nail Extension', '2026-07-22', '09:00:00', NULL, 'asd', NULL, 'Pending', '2026-07-07 05:20:43', '2026-07-07 05:20:43'),
(25, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'aesdf', '2026-09-16', '09:00:00', NULL, 'sdvcasda', NULL, 'Pending', '2026-07-07 05:24:22', '2026-07-07 05:24:22'),
(26, 'Shibu Sharma', 'shibusharma807@gmail.com', '9819099126', 'Hair Styling', '2026-10-08', '09:00:00', NULL, 'sa', NULL, 'Pending', '2026-07-07 05:25:51', '2026-07-07 05:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `cl_associated_posts`
--

CREATE TABLE `cl_associated_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `sub_title` varchar(191) DEFAULT NULL,
  `brief` text DEFAULT NULL,
  `composition` longtext DEFAULT NULL,
  `purpose` longtext DEFAULT NULL,
  `information` longtext DEFAULT NULL,
  `thumbnail` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `uri` varchar(191) NOT NULL,
  `page_key` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_associated_posts`
--

INSERT INTO `cl_associated_posts` (`id`, `post_id`, `title`, `sub_title`, `brief`, `composition`, `purpose`, `information`, `thumbnail`, `icon`, `ordering`, `uri`, `page_key`, `created_at`, `updated_at`) VALUES
(4, 17, 'Uncompromising Quality', NULL, '<p>Every product is designed to meet rigorous standards of efficacy, safety, and performance</p>', NULL, NULL, NULL, '', NULL, 4, 'Uncompromising-Quality', '1759993793216748065', '2025-10-09 01:24:53', '2025-10-09 01:24:53'),
(5, 17, 'Technical & Marketing Support', NULL, '<p>Our specialized teams ensure optimal solutions and education for our partners.</p>', NULL, NULL, NULL, '', NULL, 5, 'Technical-Marketing-Support', '1759993810908902208', '2025-10-09 01:25:10', '2025-10-09 01:25:10'),
(6, 17, 'Expert Team', NULL, '<p>We take pride in our highly skilled professionals with deep experience in veterinary medicine and feed supplements.</p>', NULL, NULL, NULL, '', NULL, 6, 'Expert-Team', '1759993829182330052', '2025-10-09 01:25:29', '2025-10-09 01:25:29'),
(7, 17, 'Robust Distribution Network', NULL, '<p>With a presence across Nepal, we deliver timely and reliable service through specialty distributors and authorized dealers.</p>', NULL, NULL, NULL, '', NULL, 7, 'Robust-Distribution-Network', '1759993885447315800', '2025-10-09 01:26:25', '2025-10-09 01:26:25'),
(8, 1, 'Product 1', 'Brand 1', '<p>Tylosin Tartrate is a macrolide antibiotic that exerts its bacteriostatic effect by binding to the 50S ribosomal subunit of susceptible bacteria and mycoplasma. This binding inhibits the translocation step of protein synthesis by preventing the transfer of peptidyl-tRNA from the ribosomal A-site to the P-site, effectively halting the elongation of peptide chains. By disrupting protein synthesis, Tylosin tartrate suppresses bacterial and mycoplasmal growth, making it highly effective against a range of pathogens.KP Tylo-WS Powder is indicated for the treatment of:<br><br>Tylosin Tartrate is a macrolide antibiotic that exerts its bacteriostatic effect by binding to the 50S ribosomal subunit of susceptible bacteria and mycoplasma. This binding inhibits the translocation step of protein synthesis by preventing the transfer of peptidyl-tRNA from the ribosomal</p>', '<p>Each gram contains:<br>Tylosin Tartrate IP..........................................1000 mg<br>Tylosin Tartrate IP..........................................1000 mg</p>', '<div class=\"uk-scrollspy-inview\"><span class=\"heading\">Benefits of Intake:</span><br>\r\n<ol class=\"uk-margin-remove-top\">\r\n<li>For physical growth of chickens.</li>\r\n<li>For the treatment of Anemia, Rickets, weak bones in chickens.</li>\r\n<li>Solves the problem of chicken eggshells turning.</li>\r\n<li>Improve feed conversion ratio in chickens.</li>\r\n<li>Increment in production of egg and meat.</li>\r\n</ol>\r\n</div>\r\n<div class=\"uk-scrollspy-inview\"><span class=\"heading\">Purpose of Intake:</span><br>\r\n<ol class=\"uk-margin-remove-top\">\r\n<li>For physical growth of chickens.</li>\r\n<li>For the treatment of Anemia, Rickets, weak bones in chickens.</li>\r\n<li>Solves the problem of chicken eggshells turning.</li>\r\n<li>Improve feed conversion ratio in chickens.</li>\r\n<li>Increment in production of egg and meat.</li>\r\n</ol>\r\n</div>', '<div class=\"uk-margin-bottom uk-scrollspy-inview\"><span class=\"heading\">Availability:</span><br>\r\n<p class=\"uk-margin-remove\">500 ml, 1 liter, 2 liters, 5 liters.<br>Glycal Plus also available with added Vitamins and Minerals.</p>\r\n</div>\r\n<div class=\"uk-margin-bottom uk-scrollspy-inview\"><span class=\"heading\">Dosage:</span><br>\r\n<p class=\"uk-margin-remove\">Cow, Buffalo: 100 ml/day<br>Sheep, Goat: 20 ml/day<br>Or as per the recommendation of the Veterinarian.</p>\r\n</div>', 'pdtt-zWImUPmCrm77eBDSng6z2RhldZjLkf290TbphKYv.png', NULL, 8, 'Product-1', '1760255565873005821', '2025-10-12 02:07:45', '2025-10-12 05:37:50'),
(9, 1, 'Product 2', NULL, NULL, NULL, NULL, NULL, 'ffn-g5LB4E7hhV0eDIsl5F3OS04pZ1MIjrxIQ4btiYrd.jpg', NULL, 9, 'Product-2', '176025557420181584', '2025-10-12 02:07:54', '2025-10-12 04:58:50'),
(10, 1, 'Product 3', NULL, NULL, NULL, NULL, NULL, '', NULL, 10, 'Product-3', '1760255584411210798', '2025-10-12 02:08:04', '2025-10-12 02:08:04'),
(11, 2, 'Product under alo', 'Nothingg', '<p>Tylosin Tartrate is a macrolide antibiotic that exerts its bacteriostatic effect by binding to the 50S ribosomal subunit of susceptible bacteria and mycoplasma. This binding inhibits the translocation step of protein synthesis by preventing the transfer of peptidyl-tRNA from the ribosomal</p>', '<p>Each gram contains:<br>Tylosin Tartrate IP..........................................1000 mg</p>', '<div class=\"uk-scrollspy-inview\"><span class=\"heading\">Benefits of Intake:</span><br>\r\n<ol class=\"uk-margin-remove-top\">\r\n<li>For physical growth of chickens eggshells turning.</li>\r\n<li>Improve feed conversion ratio in chickens.</li>\r\n<li>Increment in production of egg and meat.</li>\r\n</ol>\r\n</div>\r\n<div class=\"uk-scrollspy-inview\"><span class=\"heading\">Purpose of Intake:</span>\r\n<ol class=\"uk-margin-remove-top\">\r\n<li>Solves the problem of chicken eggshells turning.</li>\r\n<li>Improve feed conversion ratio in chickens.</li>\r\n<li>Increment in production of egg and meat.</li>\r\n</ol>\r\n</div>', '<p><span class=\"heading\">Dosage:</span></p>\r\n<p class=\"uk-margin-remove\">Cow, Buffalo: 100 ml/day<br>Sheep, Goat: 20 ml/day<br>Or as per the recommendation of the Veterinarian.</p>', 'download-IgXdE2gVk6yJqLM346P9UUHVLGbNp9XniQ9J5SJe.jpg', NULL, 11, 'Product-under-alo', '1760268541849840268', '2025-10-12 05:44:01', '2025-10-12 05:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `cl_banner`
--

CREATE TABLE `cl_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `caption` varchar(191) DEFAULT NULL,
  `content` varchar(191) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `link_title` varchar(191) DEFAULT 'Learn More',
  `link` varchar(191) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_banner`
--

INSERT INTO `cl_banner` (`id`, `title`, `caption`, `content`, `picture`, `video`, `link_title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Luxury Beauty Experience', 'Discover Your Most Beautiful Self', 'Premium hair, beauty, skin care and wellness treatments designed to enhance your natural elegance.', 'slide1-eXsF894yU9Q56UZjViZ4wLgJ4JtWYDHqozMuvy0N.jpg', NULL, NULL, NULL, '1', '2020-12-31 08:12:27', '2026-07-04 09:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `cl_career`
--

CREATE TABLE `cl_career` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `position` varchar(150) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `cover` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_career`
--

INSERT INTO `cl_career` (`id`, `fname`, `lname`, `email`, `number`, `subject`, `message`, `country`, `position`, `cv`, `cover`, `created_at`, `updated_at`) VALUES
(3, 'Irma Hall', NULL, 'zyfonu@mailinator.com', '55', 'Animi quia sed quid', '1981', 'Colon and White Associates', '18', '1760246751-1mb.pdf', '1760246751-1mb.pdf', '2025-10-11 23:40:51', '2025-10-11 23:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `cl_country`
--

CREATE TABLE `cl_country` (
  `id` int(11) NOT NULL,
  `country` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cl_country`
--

INSERT INTO `cl_country` (`id`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Nepal', NULL, NULL),
(3, 'Aland Islands', NULL, NULL),
(4, 'Albania', NULL, NULL),
(5, 'Algeria', NULL, NULL),
(6, 'American Samoa', NULL, NULL),
(7, 'Andorra', NULL, NULL),
(8, 'Angola', NULL, NULL),
(9, 'Anguilla', NULL, NULL),
(10, 'Antarctica', NULL, NULL),
(11, 'Antigua ', NULL, NULL),
(12, 'Argentina ', NULL, NULL),
(13, 'Armenia ', NULL, NULL),
(14, 'Aruba ', NULL, NULL),
(15, 'Australia', NULL, NULL),
(16, 'Austria ', NULL, NULL),
(17, 'Azerbaijan', NULL, NULL),
(18, 'Bahamas', NULL, NULL),
(19, 'Bahrain ', NULL, NULL),
(20, 'Bangladesh', NULL, NULL),
(21, 'Barbados', NULL, NULL),
(22, 'Barbuda ', NULL, NULL),
(23, 'Belarus ', NULL, NULL),
(24, 'Belgium ', NULL, NULL),
(25, 'Belize', NULL, NULL),
(26, 'Benin ', NULL, NULL),
(27, 'Bermuda ', NULL, NULL),
(28, 'Bhutan ', NULL, NULL),
(29, 'Bolivia', NULL, NULL),
(30, 'Bosnia ', NULL, NULL),
(31, 'Botswana', NULL, NULL),
(32, 'Bouvet Island', NULL, NULL),
(33, 'Brazil', NULL, NULL),
(34, 'British Indian Ocean Territory', NULL, NULL),
(35, 'Brunei Darussalam ', NULL, NULL),
(36, 'Bulgaria ', NULL, NULL),
(37, 'Burkina Faso ', NULL, NULL),
(38, 'Burundi ', NULL, NULL),
(39, 'Caicos Islands', NULL, NULL),
(40, 'Cambodia ', NULL, NULL),
(41, 'Cameroon ', NULL, NULL),
(42, 'Canada ', NULL, NULL),
(43, 'Cape Verde', NULL, NULL),
(44, 'Cayman Islands', NULL, NULL),
(45, 'Central African Republic ', NULL, NULL),
(46, 'Chad ', NULL, NULL),
(47, 'Chile ', NULL, NULL),
(48, 'China ', NULL, NULL),
(49, 'Christmas Island', NULL, NULL),
(50, 'Cocos (Keeling) Islands ', NULL, NULL),
(51, 'Colombia', NULL, NULL),
(52, 'Comoros', NULL, NULL),
(53, 'Republic of Congo ', NULL, NULL),
(54, 'Democratic Republic of the congo', NULL, NULL),
(55, 'Cook Islands ', NULL, NULL),
(56, 'Costa Rica ', NULL, NULL),
(57, 'Cote d\'Ivoire', NULL, NULL),
(58, 'Croatia ', NULL, NULL),
(59, 'Cuba ', NULL, NULL),
(60, 'Cyprus', NULL, NULL),
(61, 'Czech Republic', NULL, NULL),
(62, 'Denmark ', NULL, NULL),
(63, 'Djibouti ', NULL, NULL),
(64, 'Dominica ', NULL, NULL),
(65, ' Dominican Republic', NULL, NULL),
(66, 'Ecuador ', NULL, NULL),
(67, 'Egypt', NULL, NULL),
(68, 'El Salvador', NULL, NULL),
(69, 'Equatorial Guinea', NULL, NULL),
(70, 'Eritrea', NULL, NULL),
(71, 'Estonia ', NULL, NULL),
(72, 'Ethiopia ', NULL, NULL),
(73, 'Falkland Islands (Malvinas)', NULL, NULL),
(74, 'Faroe Islands  ', NULL, NULL),
(75, 'Fiji', NULL, NULL),
(76, 'Finland ', NULL, NULL),
(77, 'France ', NULL, NULL),
(78, 'French Guiana', NULL, NULL),
(79, 'French Polynesia', NULL, NULL),
(80, 'French Southern Territories ', NULL, NULL),
(81, 'Futuna Islands', NULL, NULL),
(82, 'Gabon  ', NULL, NULL),
(83, 'Gambia ', NULL, NULL),
(84, 'Georgia ', NULL, NULL),
(85, 'Germany ', NULL, NULL),
(86, 'Ghana ', NULL, NULL),
(87, 'Gibraltar ', NULL, NULL),
(88, 'Greece ', NULL, NULL),
(89, 'Greenland', NULL, NULL),
(90, 'Grenada ', NULL, NULL),
(91, 'Guadeloupe', NULL, NULL),
(92, 'Guam ', NULL, NULL),
(93, 'Guatemala', NULL, NULL),
(94, 'Guernsey', NULL, NULL),
(95, 'Guinea ', NULL, NULL),
(96, 'Guinea-Bissau', NULL, NULL),
(97, 'Guyana ', NULL, NULL),
(98, 'Haiti ', NULL, NULL),
(99, 'Heard', NULL, NULL),
(100, 'Herzegovina ', NULL, NULL),
(101, 'Holy See ', NULL, NULL),
(102, 'Honduras', NULL, NULL),
(103, 'Hong Kong', NULL, NULL),
(104, 'Hungary', NULL, NULL),
(105, 'Iceland ', NULL, NULL),
(106, 'India ', NULL, NULL),
(107, 'Indonesia ', NULL, NULL),
(108, 'Iran (Islamic Republic of)', NULL, NULL),
(109, 'Iraq', NULL, NULL),
(110, 'Ireland', NULL, NULL),
(111, 'Isle of Man', NULL, NULL),
(112, 'Israel ', NULL, NULL),
(113, 'Italy', NULL, NULL),
(114, 'Jamaica', NULL, NULL),
(115, 'Jan Mayen Islands', NULL, NULL),
(116, 'Japan ', NULL, NULL),
(117, 'Jersey', NULL, NULL),
(118, 'Jordan ', NULL, NULL),
(119, 'Kazakhstan', NULL, NULL),
(120, 'Kenya', NULL, NULL),
(121, 'Kiribati ', NULL, NULL),
(122, 'Korea ', NULL, NULL),
(123, 'Korea (Democratic)', NULL, NULL),
(124, 'Kuwait ', NULL, NULL),
(125, 'Kyrgyzstan', NULL, NULL),
(126, 'Lao ', NULL, NULL),
(127, 'Latvia', NULL, NULL),
(128, 'Lebanon ', NULL, NULL),
(129, 'Lesotho ', NULL, NULL),
(130, 'Liberia', NULL, NULL),
(131, 'Libyan Arab Jamahiriya', NULL, NULL),
(132, 'Liechtenstein', NULL, NULL),
(133, 'Lithuania ', NULL, NULL),
(134, 'Luxembourg ', NULL, NULL),
(135, 'Macao', NULL, NULL),
(136, 'Macedonia ', NULL, NULL),
(137, 'Madagascar ', NULL, NULL),
(138, 'Malawi ', NULL, NULL),
(139, 'Malaysia ', NULL, NULL),
(140, 'Maldives ', NULL, NULL),
(141, 'Mali', NULL, NULL),
(142, 'Malta ', NULL, NULL),
(143, 'Marshall Islands', NULL, NULL),
(144, 'Martinique ', NULL, NULL),
(145, 'Mauritania ', NULL, NULL),
(146, 'Mauritius', NULL, NULL),
(147, 'Mayotte', NULL, NULL),
(148, 'McDonald Islands', NULL, NULL),
(149, 'Mexico ', NULL, NULL),
(150, 'Micronesia ', NULL, NULL),
(151, 'Miquelon', NULL, NULL),
(152, 'Moldova ', NULL, NULL),
(153, 'Monaco ', NULL, NULL),
(154, 'Mongolia ', NULL, NULL),
(155, 'Montenegro ', NULL, NULL),
(156, 'Montserrat', NULL, NULL),
(157, 'Morocco ', NULL, NULL),
(158, 'Mozambique', NULL, NULL),
(159, 'Myanmar ', NULL, NULL),
(160, 'Namibia ', NULL, NULL),
(161, 'Nauru', NULL, NULL),
(162, 'United States', NULL, NULL),
(163, 'Netherlands', NULL, NULL),
(164, 'Netherlands Antilles ', NULL, NULL),
(165, 'Nevis ', NULL, NULL),
(166, 'New Caledonia', NULL, NULL),
(167, 'New Zealand ', NULL, NULL),
(168, 'Nicaragua', NULL, NULL),
(169, 'Niger ', NULL, NULL),
(170, 'Nigeria', NULL, NULL),
(171, 'Niue', NULL, NULL),
(172, 'Norfolk Island ', NULL, NULL),
(173, 'Northern Mariana Islands ', NULL, NULL),
(174, 'Norway ', NULL, NULL),
(175, 'Oman ', NULL, NULL),
(176, 'Pakistan', NULL, NULL),
(177, 'Palau ', NULL, NULL),
(178, 'Palestinian Territory Occupied', NULL, NULL),
(179, 'Panama ', NULL, NULL),
(180, 'Papua New Guinea', NULL, NULL),
(181, 'Paraguay ', NULL, NULL),
(182, 'Peru ', NULL, NULL),
(183, 'Philippines ', NULL, NULL),
(184, 'Pitcairn ', NULL, NULL),
(185, 'Poland', NULL, NULL),
(186, 'Portugal', NULL, NULL),
(187, 'Principe ', NULL, NULL),
(188, 'Puerto Rico ', NULL, NULL),
(189, 'Qatar ', NULL, NULL),
(190, 'Reunion ', NULL, NULL),
(191, 'Romania ', NULL, NULL),
(192, 'Russian Federation', NULL, NULL),
(193, 'Rwanda ', NULL, NULL),
(194, 'Saint Barthelemy', NULL, NULL),
(195, 'Saint Helena', NULL, NULL),
(196, 'Saint Kitts ', NULL, NULL),
(197, 'Saint Lucia ', NULL, NULL),
(198, 'Saint Martin (French part)', NULL, NULL),
(199, 'Saint Pierre ', NULL, NULL),
(200, 'Saint Vincent ', NULL, NULL),
(201, 'Samoa', NULL, NULL),
(202, 'San Marino ', NULL, NULL),
(203, 'Sao Tome ', NULL, NULL),
(204, 'Saudi Arabia', NULL, NULL),
(205, 'Senegal ', NULL, NULL),
(206, 'Serbia ', NULL, NULL),
(207, 'Seychelles ', NULL, NULL),
(208, 'Sierra Leone', NULL, NULL),
(209, 'Singapore', NULL, NULL),
(210, 'Slovakia', NULL, NULL),
(211, 'Slovenia ', NULL, NULL),
(212, 'Solomon Islands', NULL, NULL),
(213, 'Somalia ', NULL, NULL),
(214, 'South Africa', NULL, NULL),
(215, 'South Georgia ', NULL, NULL),
(216, 'South Sandwich Islands', NULL, NULL),
(217, 'Spain', NULL, NULL),
(218, 'Sri Lanka', NULL, NULL),
(219, 'Sudan', NULL, NULL),
(220, 'Suriname', NULL, NULL),
(221, 'Svalbard ', NULL, NULL),
(222, 'Swaziland ', NULL, NULL),
(223, 'Sweden ', NULL, NULL),
(224, 'Switzerland', NULL, NULL),
(225, 'Syrian Arab Republic', NULL, NULL),
(226, 'Taiwan ', NULL, NULL),
(227, 'Tajikistan ', NULL, NULL),
(228, 'Tanzania ', NULL, NULL),
(229, 'Thailand ', NULL, NULL),
(230, 'The Grenadines ', NULL, NULL),
(231, 'Timor-Leste', NULL, NULL),
(232, 'Tobago', NULL, NULL),
(233, 'Togo ', NULL, NULL),
(234, 'Tokelau', NULL, NULL),
(235, 'Tonga ', NULL, NULL),
(236, 'Trinidad ', NULL, NULL),
(237, 'Tunisia ', NULL, NULL),
(238, 'Turkey ', NULL, NULL),
(239, 'Turkmenistan ', NULL, NULL),
(240, 'Turks Islands ', NULL, NULL),
(241, 'Tuvalu', NULL, NULL),
(242, 'Uganda ', NULL, NULL),
(243, 'Ukraine ', NULL, NULL),
(244, 'United Arab Emirates', NULL, NULL),
(245, 'United Kingdom', NULL, NULL),
(246, 'Afghanistan', NULL, NULL),
(247, 'Uruguay ', NULL, NULL),
(248, 'US Minor Outlying Islands ', NULL, NULL),
(249, 'Uzbekistan ', NULL, NULL),
(250, 'Vanuatu ', NULL, NULL),
(251, 'Vatican City State ', NULL, NULL),
(252, 'Venezuela Vietnam ', NULL, NULL),
(253, 'Virgin Islands (British) ', NULL, NULL),
(254, 'Virgin Islands (US)', NULL, NULL),
(255, 'Wallis ', NULL, NULL),
(256, 'Western Sahara', NULL, NULL),
(257, 'Yemen', NULL, NULL),
(258, 'Zambia', NULL, NULL),
(259, 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_images`
--

CREATE TABLE `cl_gallery_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `picture` varchar(191) NOT NULL,
  `caption` varchar(191) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_gallery_images`
--

INSERT INTO `cl_gallery_images` (`id`, `category_id`, `picture`, `caption`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'gallery1-8br8mZxKwj9TBWWe9jeNW71os.png', 'Bridal Threading', '1', '2026-07-05 01:38:38', '2026-07-05 01:38:38'),
(2, 3, 'gallery3-4cxzbGdgzC4dQ2sTA95SrjXIm.png', 'Bridal Makeup', '1', '2026-07-05 01:39:07', '2026-07-05 01:39:07'),
(3, 4, 'gallery4-ZoThGx3EkSx5PL6v2FyN1HBN1.png', 'Nail Extension', '1', '2026-07-05 01:40:25', '2026-07-05 01:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_image_categories`
--

CREATE TABLE `cl_gallery_image_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) NOT NULL,
  `picture` varchar(191) NOT NULL,
  `caption` varchar(191) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_gallery_image_categories`
--

INSERT INTO `cl_gallery_image_categories` (`id`, `category`, `picture`, `caption`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Threading', '', 'threading', '1', '2026-07-05 01:36:30', '2026-07-05 01:36:30'),
(2, 'Brows & Lashes', '', 'lashes', '1', '2026-07-05 01:36:45', '2026-07-05 01:36:45'),
(3, 'Makeup', '', 'makeup', '1', '2026-07-05 01:36:56', '2026-07-05 01:36:56'),
(4, 'Nails', '', 'nails', '1', '2026-07-05 01:37:09', '2026-07-05 01:37:09'),
(5, 'Salon', '', 'salon', '1', '2026-07-05 01:37:20', '2026-07-05 01:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_videos`
--

CREATE TABLE `cl_gallery_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `video` text DEFAULT NULL,
  `caption` varchar(191) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_video_categories`
--

CREATE TABLE `cl_gallery_video_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) NOT NULL,
  `video` varchar(191) DEFAULT NULL,
  `caption` varchar(191) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_gallery_video_categories`
--

INSERT INTO `cl_gallery_video_categories` (`id`, `category`, `video`, `caption`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Video Category1', 'Video Category1', 'Video Category1', '1', '2018-10-09 00:17:42', '2018-10-09 00:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `cl_init`
--

CREATE TABLE `cl_init` (
  `id` int(11) NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cl_init`
--

INSERT INTO `cl_init` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, '123', 1, '2018-12-10 04:48:12', '2018-12-11 01:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `cl_inquiry`
--

CREATE TABLE `cl_inquiry` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_log`
--

CREATE TABLE `cl_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_banner`
--

CREATE TABLE `cl_multiple_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner_id` int(11) DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `caption` varchar(191) DEFAULT NULL,
  `content` varchar(191) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_document`
--

CREATE TABLE `cl_multiple_document` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `key_string` varchar(100) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `document` varchar(191) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_image`
--

CREATE TABLE `cl_multiple_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_multiple_image`
--

INSERT INTO `cl_multiple_image` (`id`, `post_id`, `title`, `file_name`, `created_at`, `updated_at`) VALUES
(2, 10, 'cons22', 'team-ESJFkS61trROCQCoU0zve0k5mpDRMi6GUBisu3NJ.jpeg', '2025-04-15 02:15:34', '2025-04-15 02:21:24'),
(3, 20, NULL, 'client-1-7sAP4Wpm9RykgMyQUVYiE0CJTDeCuvezszIH07Dc.png', '2025-04-17 23:14:51', '2025-04-17 23:14:51'),
(4, 20, NULL, 'client-2-rsVtuComxVQ9ENdBo3EURabRySJDA6mTGiHC8hN0.png', '2025-04-17 23:15:35', '2025-04-17 23:15:35'),
(5, 20, NULL, 'client-4-yFfHF6yQ4OppWwQfjRJ8vLBiERLkg1DT9rVefxeD.png', '2025-04-17 23:15:42', '2025-04-17 23:15:42'),
(6, 20, NULL, 'client-5-SkuH9wkpy0iZpsrs2noqKjXw6qfDqhj2PJ67mVYy.png', '2025-04-17 23:15:48', '2025-04-17 23:15:48'),
(7, 20, NULL, 'client-6-2qU1Dr1VqPOFWsojqDbXPV5Yyt8HG7IQ8wT9GgcG.png', '2025-04-17 23:15:56', '2025-04-17 23:15:56'),
(8, 20, NULL, 'client-4-lPpqIFcWZWmEJZ9YUOz7zPvreTIOhrnA6oZFXHgI.png', '2025-04-17 23:42:42', '2025-04-17 23:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_video`
--

CREATE TABLE `cl_multiple_video` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `video` text NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_posts`
--

CREATE TABLE `cl_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(11) DEFAULT 0,
  `visiter` int(11) DEFAULT 0,
  `post_date` datetime DEFAULT NULL,
  `post_author` int(11) NOT NULL DEFAULT 1,
  `template` varchar(191) DEFAULT NULL,
  `template_child` varchar(100) DEFAULT NULL,
  `post_title` text DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `post_content` longtext DEFAULT NULL,
  `post_excerpt` text DEFAULT NULL,
  `uri` varchar(191) NOT NULL,
  `page_key` varchar(191) NOT NULL DEFAULT '0',
  `post_type` int(11) DEFAULT 0,
  `post_category` int(11) DEFAULT 0,
  `post_parent` int(11) DEFAULT 0,
  `post_order` int(11) DEFAULT 0,
  `home_order` int(11) DEFAULT 0,
  `banner` varchar(191) DEFAULT NULL,
  `page_thumbnail` varchar(191) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `page_video` varchar(191) DEFAULT NULL,
  `meta_keyword` varchar(191) DEFAULT NULL,
  `meta_description` varchar(191) DEFAULT NULL,
  `associated_title` varchar(191) DEFAULT NULL,
  `external_link` varchar(191) DEFAULT NULL,
  `price` varchar(11) DEFAULT NULL,
  `post_tags` varchar(191) DEFAULT NULL,
  `project_status` tinyint(1) DEFAULT 0,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `global_post` tinyint(4) DEFAULT 0,
  `published` enum('1','0') NOT NULL DEFAULT '1',
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `is_draft` enum('1','0') NOT NULL DEFAULT '0',
  `is_trashed` enum('1','0') NOT NULL DEFAULT '0',
  `show_in_home` enum('0','1') DEFAULT '0',
  `is_password_protected` enum('1','0') NOT NULL DEFAULT '0',
  `comment` enum('1','0') NOT NULL DEFAULT '0',
  `lang` enum('en','np') NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_posts`
--

INSERT INTO `cl_posts` (`id`, `uid`, `visiter`, `post_date`, `post_author`, `template`, `template_child`, `post_title`, `sub_title`, `post_content`, `post_excerpt`, `uri`, `page_key`, `post_type`, `post_category`, `post_parent`, `post_order`, `home_order`, `banner`, `page_thumbnail`, `thumbnail`, `icon`, `page_video`, `meta_keyword`, `meta_description`, `associated_title`, `external_link`, `price`, `post_tags`, `project_status`, `status`, `global_post`, `published`, `is_active`, `is_draft`, `is_trashed`, `show_in_home`, `is_password_protected`, `comment`, `lang`, `created_at`, `updated_at`) VALUES
(26, NULL, 33, '2026-07-06 06:06:39', 1, 'template-service-detail', NULL, 'Hair Styling', NULL, '<p>Transform your nails with our premium nail extension services, designed to enhance both beauty and confidence. Our expert nail technicians carefully craft flawless extensions that add length, strength, and elegance while maintaining a natural and comfortable feel. Whether you prefer a classic, sophisticated style or trendy nail art, we offer customized solutions tailored to your preferences. Using high-quality products and precise techniques, we ensure long-lasting durability, smooth finishing, and a luxurious look that complements your personal style.</p>', 'Professional styling, coloring and hair treatment services designed for your unique look.(Brief)', 'hair-styling', '1783271964652103393', 11, 3, 0, 23, NULL, 'pic4-aNj2ey4s8MP1VdDFWOkJKm1RJ5TH3Kzq88SPS04W.jpg', 'pic2-EnQ7QNRO5rhwWoNLM7kDwmgReDSxfSts78MiEijC.jpg', '', '', NULL, NULL, NULL, NULL, NULL, '343', NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-05 11:34:24', '2026-07-07 06:29:21'),
(28, NULL, 23, '2026-07-06 12:29:15', 1, 'template-offer-detail', NULL, 'Summer Beauty Package', NULL, '<p>&lt;h3&gt;Treatment Highlights&lt;/h3&gt; &lt;p&gt; Our Hot Stone Massage combines traditional massage techniques with heated volcanic stones to improve blood circulation, ease muscle tension and promote complete relaxation. &lt;/p&gt; &lt;ul&gt; &lt;li&gt;90 Minute Session - Full body relaxation&lt;/li&gt; &lt;li&gt;Premium Oils - Natural essential oils&lt;/li&gt; &lt;li&gt;Muscle Relief - Reduce stress &amp; tension&lt;/li&gt; &lt;li&gt;Certified Therapist - Experienced professionals&lt;/li&gt; &lt;/ul&gt;</p>', 'Explore more exclusive beauty and wellness packages carefully designed to elevate your self-care experience with luxury treatments and professional care.', 'summer-beauty-package', '1783272999776108979', 13, 0, 0, 24, NULL, 'nailextension-aU3QEWGXKStw0R3XQ1VyvLY10GB1JzA3SdHfYswN.png', 'pic3-NHgdRrfQnQFfgTbGPUZy0O60cEwGJX87rsDabyeS.jpg', '', '', NULL, NULL, NULL, NULL, NULL, '8', NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-05 11:51:39', '2026-07-06 11:16:26'),
(29, 0, 0, '2026-07-05 05:45:04', 1, 'single', NULL, 'Eyebrow Shape', NULL, NULL, NULL, 'eyebrow-shape', '1783273531108072498', 14, 8, 0, 25, 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '5', NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-05 12:00:31', '2026-07-05 12:00:31'),
(30, 0, 0, '2026-07-05 05:45:47', 1, 'single', NULL, 'Upper Lip', NULL, NULL, NULL, 'upper-lip', '1783273559225293259', 14, 8, 0, 26, 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '10', NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-05 12:00:59', '2026-07-05 12:00:59'),
(31, 0, 0, '2026-07-05 05:46:11', 1, 'single', NULL, 'Gold Facial', NULL, NULL, NULL, 'gold-facial', '1783273586566419636', 14, 10, 26, 27, 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '15', NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-05 12:01:26', '2026-07-05 12:01:26'),
(32, 0, 0, '2026-07-05 05:46:30', 1, 'single', NULL, 'Luxury Facial', NULL, NULL, NULL, 'luxury-facial', '1783273603741848806', 14, 10, 0, 28, 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '25', NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-05 12:01:43', '2026-07-05 12:01:43'),
(33, 0, 0, '2026-07-05 05:46:51', 1, 'single', NULL, 'Gel Polish', NULL, NULL, 'Gel Polish', 'gel-polish', '1783273619228558845', 14, 12, 0, 29, 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '18', NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-05 12:01:59', '2026-07-05 12:01:59'),
(34, NULL, 10, '2026-07-06 06:06:26', 1, 'template-service-detail', NULL, 'Nail Extension', NULL, '<p>Transform your nails with our premium nail extension services, designed to enhance both beauty and confidence. Our expert nail technicians carefully craft flawless extensions that add length, strength, and elegance while maintaining a natural and comfortable feel. Whether you prefer a classic, sophisticated style or trendy nail art, we offer customized solutions tailored to your preferences. Using high-quality products and precise techniques, we ensure long-lasting durability, smooth finishing, and a luxurious look that complements your personal style.</p>', 'Brief', 'nail-extension', '1783314939709872991', 11, 6, 0, 30, NULL, 'about-banner-VlPXzBsMuAWYL40qRYixlDkgP4vMP0UwdVX37WRj.png', 'nailextension-8xJx917TUlfq9XDoZEGzZjwYWIB0MtdQiS8Jfpcr.png', '', '', NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-05 23:30:39', '2026-07-07 06:31:25'),
(37, 0, 2, '2026-07-06 05:57:58', 1, 'template-service-detail', NULL, 'aesdf', NULL, '<p>asdf</p>', 'aewfs', 'aesdf', '1783317513910765726', 11, 4, 0, 32, 0, 'favicon-3hGqKbDLEy3Kdqc3yF21EAzRZ9D5AqMD9mz5rHwf.png', 'nailextension-cNZfFwtltmpUV0aIfNeIVqsBSh0gNXnZkjB59eza.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-06 00:13:33', '2026-07-06 02:16:30'),
(40, 0, 3, '2026-07-06 10:06:34', 1, 'template-service-detail', NULL, 'Nail Paint', NULL, '<p>asd</p>', 'asdf', 'nail-paint', '1783332421195430874', 11, 6, 0, 35, 0, 'nailextension-uxGgrzOPadK1bCi679Vvnwe0rPDc96baRSE2hjyO.png', 'founder-LiiFjNluC5vsDptYj9aSGdNESZSQ3dOa8zOERjMw.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-06 04:22:01', '2026-07-07 06:35:02'),
(41, 0, 0, '2026-07-06 10:07:11', 1, NULL, NULL, 'Nail paint Offer', NULL, NULL, NULL, 'nail-paint-offer', '1783332448945065831', 14, NULL, 40, 0, 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '78', NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-06 04:22:28', '2026-07-06 04:22:28'),
(42, NULL, 13, '2026-07-06 10:45:05', 1, 'template-offer-detail', NULL, 'Summer Beauty Package New', NULL, '<p>&lt;div class=\"space-y-4\"&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Luxury Facial Treatment&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Professional Manicure&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Skin Hydration Therapy&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Complimentary Consultation&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;/div&gt;</p>', 'Refresh your look this season with our exclusive Summer Beauty Package including facial, manicure, and beauty essentials at a special discounted price.', 'summer-beauty-package-new', '1783334705773641857', 13, 0, 0, 36, NULL, 'pic1-Tc4GC74Ui4HbFMO78b7i1q5AehLZ56bta7UZqCVj.jpg', 'pic1-wCDWU7SeRaU4zUt7PqGSh7e39cpecQjPG7Nx1lKv.jpg', '', '', NULL, NULL, NULL, NULL, NULL, '49', NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-06 05:00:05', '2026-07-07 06:34:23'),
(43, 0, 11, '2026-07-06 10:46:05', 1, 'template-offer-detail', NULL, 'Bridal Glow Package', NULL, '<p>&lt;div class=\"space-y-4\"&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Diamond Facial Treatment&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Luxury Manicure &amp; Pedicure&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Eyebrow Shaping &amp; Tinting&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Professional Makeup Consultation&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;/div&gt;</p>', 'Prepare for your special day with our premium bridal beauty package designed to leave you radiant, confident, and picture-perfect.', 'bridal-glow-package', '178333479148034160', 13, 0, 0, 37, 0, 'gallery3-kxdoi2W4mh9rQnWJvwn4vpW7SJb1ZWa0BbJAKwu6.png', '', '', '', NULL, NULL, NULL, NULL, NULL, '129', NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-06 05:01:31', '2026-07-06 23:12:44'),
(44, NULL, 27, '2026-07-06 12:27:58', 1, 'template-offer-detail', NULL, 'Luxury Relaxation Package', NULL, '<p>&lt;h3&gt;Treatment Highlights&lt;/h3&gt; &lt;p&gt; Our Hot Stone Massage combines traditional massage techniques with heated volcanic stones to improve blood circulation, ease muscle tension and promote complete relaxation. &lt;/p&gt; &lt;ul&gt; &lt;li&gt;90 Minute Session - Full body relaxation&lt;/li&gt; &lt;li&gt;Premium Oils - Natural essential oils&lt;/li&gt; &lt;li&gt;Muscle Relief - Reduce stress &amp; tension&lt;/li&gt; &lt;li&gt;Certified Therapist - Experienced professionals&lt;/li&gt; &lt;/ul&gt;</p>', 'Indulge in complete relaxation with our carefully curated spa and beauty experience designed to rejuvenate your body and mind.', 'luxury-relaxation-package', '1783334828770231900', 13, 0, 0, 38, NULL, 'pic3-r8BRF6BB0Tl2z4WfgMP5uOk9uMxQRkTr5Mb9tkaP.jpg', '', '', '', NULL, NULL, NULL, NULL, NULL, '89', NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-06 05:02:08', '2026-07-06 10:38:18'),
(45, NULL, 4, '2026-07-07 12:19:44', 1, 'template-offer-detail', NULL, 'Ultimate Self-Care Package', NULL, '<p>&lt;div class=\"space-y-4\"&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Premium Facial Therapy&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Luxury Full Body Massage&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Manicure &amp; Pedicure Session&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;div class=\"flex items-center gap-3\"&gt;<br>&lt;i class=\"ri-check-line text-primary\"&gt;&lt;/i&gt;<br>&lt;span&gt;Beauty Consultation &amp; Aftercare Advice&lt;/span&gt;<br>&lt;/div&gt;</p>\r\n<p>&lt;/div&gt;</p>', 'Experience the perfect combination of beauty, wellness, and relaxation with our all-inclusive self-care package.', 'ultimate-selfcare-package', '1783334860590498102', 13, 0, 0, 39, NULL, 'pic4-bMRhSyqoBHCQoUmIqKpZFHRFmb2HiAHC4sZw3yge.jpg', 'pic1-FmSUZgYftmUrvTbnPCaNA2QaDPbY6vLzmaxSWEuI.jpg', '', '', NULL, NULL, NULL, NULL, NULL, '99', NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-06 05:02:40', '2026-07-07 06:34:58'),
(46, NULL, 0, '2026-07-06 05:12:40', 1, 'single', NULL, 'Sabita Bhari', 'NVQ Level 3', '<p>&lt;p class=\"mt-6 text-muted text-[16px] lg:text-[17px] leading-8\"&gt; Professional Elegance Beauty was established in 2012 with a vision to provide premium beauty services, exceptional customer satisfaction and professional treatment standards. &lt;/p&gt; &lt;p class=\"mt-6 text-muted text-[16px] lg:text-[17px] leading-8\"&gt; Today, the salon proudly serves clients with personalized beauty treatments while maintaining internationally recognized professional standards. &lt;/p&gt;</p>', 'Qualified beauty therapist with NVQ Level 3 and more than 10 years of experience in beauty, skincare and professional salon treatments.', 'sabita-bhari', '178335795916691895', 1, 0, 0, 40, NULL, 'founder-l0jBesFsAktTqrsCNfxjeqkVO6ypx6N6wEJ8eJd6.png', 'founder-UfQOTzaWHJz2Zuabb3dDVITtxkSMBhdbvk8Umoy7.png', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-06 11:27:39', '2026-07-06 11:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_categories`
--

CREATE TABLE `cl_post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_type` varchar(191) NOT NULL,
  `category` varchar(191) NOT NULL,
  `category_caption` varchar(191) DEFAULT NULL,
  `category_content` text DEFAULT NULL,
  `uri` varchar(191) NOT NULL,
  `ordering` int(11) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_post_categories`
--

INSERT INTO `cl_post_categories` (`id`, `post_type`, `category`, `category_caption`, `category_content`, `uri`, `ordering`, `thumbnail`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(2, '11', 'Threading', 'Professional threading services for precise,\n                    long-lasting hair removal and beautifully\n                    defined features.', 'Threading', 'threading', NULL, NULL, NULL, '1', '2026-07-05 11:08:32', '2026-07-05 11:08:32'),
(3, '11', 'Waxing', 'Professional threading services for precise,\n                    long-lasting hair removal and beautifully\n                    defined features.', 'Waxing', 'waxing', NULL, NULL, NULL, '1', '2026-07-05 11:08:51', '2026-07-05 11:08:51'),
(4, '11', 'Facial', 'Professional threading services for precise,\n                    long-lasting hair removal and beautifully\n                    defined features.', 'Facial', 'facial', NULL, NULL, NULL, '1', '2026-07-05 11:09:25', '2026-07-05 11:09:25'),
(5, '11', 'Massage', 'Professional threading services for precise,\n                    long-lasting hair removal and beautifully\n                    defined features.', 'Massage', 'massage', NULL, NULL, NULL, '1', '2026-07-05 11:09:42', '2026-07-05 11:09:42'),
(6, '11', 'Nails', 'Professional threading services for precise,\n                    long-lasting hair removal and beautifully\n                    defined features.', 'Nails', 'nails', NULL, NULL, NULL, '1', '2026-07-05 11:09:59', '2026-07-05 11:09:59'),
(7, '11', 'IPL', 'Professional threading services for precise,\n                    long-lasting hair removal and beautifully\n                    defined features.', 'IPL', 'ipl', NULL, NULL, NULL, '1', '2026-07-05 11:10:16', '2026-07-05 11:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_featured_images`
--

CREATE TABLE `cl_post_featured_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `featured_image` varchar(191) DEFAULT NULL,
  `featured_image_caption` varchar(191) DEFAULT NULL,
  `featured_image_status` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_type`
--

CREATE TABLE `cl_post_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(50) DEFAULT '0',
  `post_type` varchar(191) NOT NULL,
  `uri` varchar(191) NOT NULL,
  `caption` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `template` varchar(100) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `is_menu` enum('0','1') NOT NULL DEFAULT '0',
  `is_footer_menu` tinyint(1) DEFAULT 0,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_post_type`
--

INSERT INTO `cl_post_type` (`id`, `uid`, `post_type`, `uri`, `caption`, `content`, `meta_keyword`, `meta_description`, `template`, `banner`, `ordering`, `is_menu`, `is_footer_menu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Professional Beauty Treatments', 'About Us', 'about', '<p>Beauty With Passion, Elegance With Purpose</p>', '<div class=\"mt-10 space-y-8\">\r\n<div class=\"flex gap-4\" data-aos=\"fade-right\" data-aos-delay=\"100\">\r\n<div class=\"w-10 h-10 rounded-full bg-primary text-white flex items-center justify-center\">1</div>\r\n<p>From North - Wellington Street Car Park</p>\r\n</div>\r\n<div class=\"flex gap-4\" data-aos=\"fade-right\" data-aos-delay=\"200\">\r\n<div class=\"w-10 h-10 rounded-full bg-primary text-white flex items-center justify-center\">2</div>\r\n<p>From South - Riding Car Park</p>\r\n</div>\r\n<div class=\"flex gap-4\" data-aos=\"fade-right\" data-aos-delay=\"300\">\r\n<div class=\"w-10 h-10 rounded-full bg-primary text-white flex items-center justify-center\">3</div>\r\n<p>From East - St Michael\'s Car Park</p>\r\n</div>\r\n</div>', 'About Us', 'ABOUT US', 'posttypeTemplate-about', 'about-banner-FSTVfQuty0rsE76F1u14jf1wy74AYdUL56IQtsgX.png', 1, '1', 0, '1', '2021-05-20 08:13:06', '2026-07-05 01:19:43'),
(4, 'Professional Elegance Beauty', 'Contact Us', 'contact', '<p>Whether you\'re booking your next beauty treatment, looking for professional advice, or simply have a question, our team would love to hear from you.</p>', '<div class=\"mt-10 space-y-8\">\r\n<div class=\"flex gap-4\" data-aos=\"fade-right\" data-aos-delay=\"100\">\r\n<div class=\"w-10 h-10 rounded-full bg-primary text-white flex items-center justify-center\">1</div>\r\n<p>From North - Wellington Street Car Park</p>\r\n</div>\r\n<div class=\"flex gap-4\" data-aos=\"fade-right\" data-aos-delay=\"200\">\r\n<div class=\"w-10 h-10 rounded-full bg-primary text-white flex items-center justify-center\">2</div>\r\n<p>From South - Riding Car Park</p>\r\n</div>\r\n<div class=\"flex gap-4\" data-aos=\"fade-right\" data-aos-delay=\"300\">\r\n<div class=\"w-10 h-10 rounded-full bg-primary text-white flex items-center justify-center\">3</div>\r\n<p>From East - St Michael\'s Car Park</p>\r\n</div>\r\n</div>', NULL, NULL, 'posttypeTemplate-contact', 'nailextension-ucpaVCDVa7B8alm1YC8SsuPIqx56kO4azjGWj2r0.png', 6, '1', 0, '1', '2021-05-20 08:14:35', '2026-07-05 11:04:06'),
(10, 'Let\'s Connect', 'Book Appointment', 'bookappointment', '<p>Whether you\'re booking your next beauty treatment, looking for professional advice, or simply have a question, our team would love to hear from you.</p>', '<p>Complete the form below and we\'ll confirm your appointment shortly.</p>', NULL, NULL, 'posttypeTemplate-bookappointment', 'nailextension-VVycIHChXVDp7ZEpBeYKnRk049OCiGED28qziHsm.png', 7, '0', 0, '1', NULL, '2026-07-05 11:04:20'),
(11, 'Our Expertise', 'Service', 'service', '<p>Discover premium beauty and wellness treatments tailored to enhance your natural elegance.</p>', '<p>Discover premium beauty and wellness treatments tailored to enhance your natural elegance.</p>', NULL, NULL, 'posttypeTemplate-services', 'services-banner-aw9GPzLo7mlQMxbiWmHBP0OwFi3mwjSsXMyubiwJ.png', 2, '1', 0, '1', NULL, '2026-07-05 11:01:09'),
(12, 'Gallery', 'Gallery', 'photogallery', '<p>caption</p>', '<p>Content</p>', NULL, NULL, 'posttypeTemplate-gallery', NULL, 5, '1', 0, '1', NULL, '2026-07-05 11:03:42'),
(13, 'Exclusive Offers', 'Offers', 'offer', '<p>Discover premium beauty and wellness treatments tailored to enhance your natural elegance.</p>', '<p>Explore more exclusive beauty and wellness packages carefully designed to elevate your self-care experience with luxury treatments and professional care.</p>', NULL, NULL, 'posttypeTemplate-offers', 'services-banner-TyTFlbq0NPI9oVoR8XNOR9Ri5lrnk3TMD967U4rK.png', 3, '1', 0, '1', NULL, '2026-07-06 05:09:11'),
(14, 'Professional Beauty Treatments', 'Pricing', 'pricing', '<p>Discover our complete range of beauty, skincare, nail, facial, massage and wellness treatments with transparent pricing.</p>', '<p>Discover our complete range of beauty, skincare, nail, facial, massage and wellness treatments with transparent pricing.</p>', NULL, NULL, 'posttypeTemplate-pricing', 'services-banner-sJ0kCv5nCthT3uh3dtgtZ8JzIkefcptiFoIy0JLL.png', 4, '1', 0, '1', NULL, '2026-07-06 03:50:40'),
(15, 'Terms and Conditions', 'Terms and Conditions', 'terms-and-conditions', '<p>Terms and Conditions</p>', '<div>\r\n<div>&lt;li&gt; Promotional offers are subject to availability and must be mentioned at the time of booking. &lt;/li&gt;</div>\r\n<div>&lt;li&gt; Offers cannot be combined with any other discounts or promotional vouchers. &lt;/li&gt;</div>\r\n<div>&lt;li&gt; Prices and services may change without prior notice. &lt;/li&gt;</div>\r\n<div>&lt;li&gt; We reserve the right to refuse service where necessary. &lt;/li&gt;</div>\r\n</div>', NULL, NULL, 'posttypeTemplate-terms-and-conditions', 'services-banner-B7YYXFfpmmnrUXY2RJgoEG0NmahmgMU9tcmv23NM.png', 8, '0', 0, '1', NULL, '2026-07-07 05:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_videos`
--

CREATE TABLE `cl_post_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `featured_video` varchar(191) DEFAULT NULL,
  `featured_video_caption` varchar(191) DEFAULT NULL,
  `featured_video_status` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_roles`
--

CREATE TABLE `cl_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_roles`
--

INSERT INTO `cl_roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', '2018-07-01 09:56:16', '2020-08-16 14:47:31'),
(2, 'Admin', '2018-07-01 09:56:34', '2020-08-16 14:47:43'),
(3, 'General', '2020-08-16 14:47:05', '2020-08-16 14:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `cl_settings`
--

CREATE TABLE `cl_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_of_inquiries` int(11) DEFAULT 0,
  `site_name` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `phone2` varchar(50) DEFAULT NULL,
  `email_primary` varchar(191) DEFAULT NULL,
  `email_secondary` varchar(191) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(191) DEFAULT NULL,
  `linkedin_link` varchar(191) DEFAULT NULL,
  `youtube_link` varchar(191) DEFAULT NULL,
  `twitter_link` varchar(191) DEFAULT NULL,
  `google_plus` varchar(100) DEFAULT NULL,
  `instagram_link` varchar(100) DEFAULT NULL,
  `meta_key` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `welcome_title` varchar(255) DEFAULT NULL,
  `welcome_text` text DEFAULT NULL,
  `copyright_text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_settings`
--

INSERT INTO `cl_settings` (`id`, `num_of_inquiries`, `site_name`, `phone`, `phone2`, `email_primary`, `email_secondary`, `website`, `address`, `address2`, `facebook_link`, `linkedin_link`, `youtube_link`, `twitter_link`, `google_plus`, `instagram_link`, `meta_key`, `meta_description`, `google_map`, `welcome_title`, `welcome_text`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 0, 'Peb Salon', '07453297379', '01604 315 484', 'pebsalon@gmail.com', NULL, NULL, '63a Abington Street, Northampton NN1 2BH (Opposite the Public Library)', 'Panchkhal - 06, Hokshe, Kavre', 'https://www.facebook.com/Professional-Elegance-Beauty-497528170267782/', NULL, 'https://www.youtube.com/', 'https://twitter.com/ProfessionalElegance@Pebsalon', NULL, 'https://www.instagram.com/professional_elegance_beauty/?hl=en', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2010.5843009171663!2d-0.8917553!3d52.2389937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48770edb14239eb7%3A0x3a32e6077f65f3a3!2sProfessional%20Elegance%20Beauty!5e1!3m2!1sen!2snp!4v1782324074755!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" class=\"w-full h-full\" referrerpolicy=\"strict-origin-when-cross-origin\"></iframe>', 'Experience luxury beauty treatments, skincare, wellness therapies and professional salon services designed to enhance your natural elegance.', 'Discover Your Most Beautiful Self', 'Professional Elegance Beauty Salon. All Rights Reserved.', NULL, '2026-07-04 11:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(20, 'database', 'default', '{\"uuid\":\"e0ec9a76-c033-4afd-8dff-548ac29f856a\",\"displayName\":\"App\\\\Mail\\\\ContactMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:20:\\\"App\\\\Mail\\\\ContactMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"shibusharma807@gmail.com\\\";}}s:6:\\\"mailer\\\";s:8:\\\"sendmail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'InvalidArgumentException: Mailer [sendmail] is not defined. in D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php:115\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(99): Illuminate\\Mail\\MailManager->resolve(\'sendmail\')\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(77): Illuminate\\Mail\\MailManager->get(\'sendmail\')\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(202): Illuminate\\Mail\\MailManager->mailer(\'sendmail\')\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 {main}', '2026-07-07 04:41:40'),
(21, 'database', 'default', '{\"uuid\":\"c3becd55-6ac9-4ea6-abaa-e9169ca210a5\",\"displayName\":\"App\\\\Mail\\\\ContactMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:20:\\\"App\\\\Mail\\\\ContactMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"shibusharma807@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'TypeError: Symfony\\Component\\Mailer\\Transport\\Dsn::__construct(): Argument #2 ($host) must be of type string, null given, called in D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php on line 187 and defined in D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\Dsn.php:28\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(187): Symfony\\Component\\Mailer\\Transport\\Dsn->__construct(\'\', NULL, NULL, Object(SensitiveParameterValue), NULL, Array)\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(166): Illuminate\\Mail\\MailManager->createSmtpTransport(Array)\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(124): Illuminate\\Mail\\MailManager->createSymfonyTransport(Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(99): Illuminate\\Mail\\MailManager->resolve(\'smtp\')\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(77): Illuminate\\Mail\\MailManager->get(\'smtp\')\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(202): Illuminate\\Mail\\MailManager->mailer(\'smtp\')\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2026-07-07 04:41:40'),
(22, 'database', 'default', '{\"uuid\":\"831d557a-5288-41c1-9fed-cfe3db6568bc\",\"displayName\":\"App\\\\Mail\\\\ContactMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:20:\\\"App\\\\Mail\\\\ContactMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"shibusharma807@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'TypeError: Symfony\\Component\\Mailer\\Transport\\Dsn::__construct(): Argument #2 ($host) must be of type string, null given, called in D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php on line 187 and defined in D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\Dsn.php:28\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(187): Symfony\\Component\\Mailer\\Transport\\Dsn->__construct(\'\', NULL, NULL, Object(SensitiveParameterValue), NULL, Array)\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(166): Illuminate\\Mail\\MailManager->createSmtpTransport(Array)\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(124): Illuminate\\Mail\\MailManager->createSymfonyTransport(Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(99): Illuminate\\Mail\\MailManager->resolve(\'smtp\')\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(77): Illuminate\\Mail\\MailManager->get(\'smtp\')\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(202): Illuminate\\Mail\\MailManager->mailer(\'smtp\')\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2026-07-07 04:41:40'),
(23, 'database', 'default', '{\"uuid\":\"2fe23387-4ce3-46c1-8784-9003b0632ff8\",\"displayName\":\"App\\\\Mail\\\\ContactMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:20:\\\"App\\\\Mail\\\\ContactMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"shibusharma807@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'TypeError: Symfony\\Component\\Mailer\\Transport\\Dsn::__construct(): Argument #2 ($host) must be of type string, null given, called in D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php on line 187 and defined in D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\Dsn.php:28\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(187): Symfony\\Component\\Mailer\\Transport\\Dsn->__construct(\'\', NULL, NULL, Object(SensitiveParameterValue), NULL, Array)\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(166): Illuminate\\Mail\\MailManager->createSmtpTransport(Array)\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(124): Illuminate\\Mail\\MailManager->createSymfonyTransport(Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(99): Illuminate\\Mail\\MailManager->resolve(\'smtp\')\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(77): Illuminate\\Mail\\MailManager->get(\'smtp\')\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(202): Illuminate\\Mail\\MailManager->mailer(\'smtp\')\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2026-07-07 04:41:40');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(24, 'database', 'default', '{\"uuid\":\"37561cea-ce22-4632-bc8e-0f5cbee2065d\",\"displayName\":\"App\\\\Mail\\\\ContactMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:20:\\\"App\\\\Mail\\\\ContactMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"shibusharma807@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'TypeError: Symfony\\Component\\Mailer\\Transport\\Dsn::__construct(): Argument #2 ($host) must be of type string, null given, called in D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php on line 187 and defined in D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\Dsn.php:28\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(187): Symfony\\Component\\Mailer\\Transport\\Dsn->__construct(\'\', NULL, NULL, Object(SensitiveParameterValue), NULL, Array)\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(166): Illuminate\\Mail\\MailManager->createSmtpTransport(Array)\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(124): Illuminate\\Mail\\MailManager->createSymfonyTransport(Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(99): Illuminate\\Mail\\MailManager->resolve(\'smtp\')\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(77): Illuminate\\Mail\\MailManager->get(\'smtp\')\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(202): Illuminate\\Mail\\MailManager->mailer(\'smtp\')\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2026-07-07 04:41:40'),
(25, 'database', 'default', '{\"uuid\":\"5a2a183f-a8de-481a-bed7-ac241225cdbb\",\"displayName\":\"App\\\\Mail\\\\ContactMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:20:\\\"App\\\\Mail\\\\ContactMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"shibusharma807@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'TypeError: Symfony\\Component\\Mailer\\Transport\\Dsn::__construct(): Argument #2 ($host) must be of type string, null given, called in D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php on line 187 and defined in D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\Dsn.php:28\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(187): Symfony\\Component\\Mailer\\Transport\\Dsn->__construct(\'\', NULL, NULL, Object(SensitiveParameterValue), NULL, Array)\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(166): Illuminate\\Mail\\MailManager->createSmtpTransport(Array)\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(124): Illuminate\\Mail\\MailManager->createSymfonyTransport(Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(99): Illuminate\\Mail\\MailManager->resolve(\'smtp\')\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(77): Illuminate\\Mail\\MailManager->get(\'smtp\')\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(202): Illuminate\\Mail\\MailManager->mailer(\'smtp\')\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2026-07-07 04:41:40'),
(26, 'database', 'default', '{\"uuid\":\"f8baa7b3-4b5a-45f7-95ea-2e5926dcc576\",\"displayName\":\"App\\\\Mail\\\\ContactMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:20:\\\"App\\\\Mail\\\\ContactMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"shibusharma807@gmail.com\\\";}}s:6:\\\"mailer\\\";s:8:\\\"sendmail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'InvalidArgumentException: Mailer [sendmail] is not defined. in D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php:115\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(99): Illuminate\\Mail\\MailManager->resolve(\'sendmail\')\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(77): Illuminate\\Mail\\MailManager->get(\'sendmail\')\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(202): Illuminate\\Mail\\MailManager->mailer(\'sendmail\')\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 {main}', '2026-07-07 04:41:40'),
(27, 'database', 'default', '{\"uuid\":\"9c870853-1ec8-4a61-8686-2185f6c95159\",\"displayName\":\"App\\\\Mail\\\\AdminAppointmentMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:29:\\\"App\\\\Mail\\\\AdminAppointmentMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:19:\\\"cyberlink@admin.com\\\";}}s:6:\\\"mailer\\\";s:6:\\\"resend\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Resend\\Exceptions\\ErrorException: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php:118\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php(47): Resend\\Transporters\\HttpTransporter->throwIfJsonError(Array, \'{\"statusCode\":4...\')\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(50): Resend\\Transporters\\HttpTransporter->request(Object(Resend\\ValueObjects\\Transporter\\Payload))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(62): Resend\\Service\\Email->create(Array, Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php(60): Resend\\Service\\Email->send(Array, Array)\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 {main}\n\nNext Symfony\\Component\\Mailer\\Exception\\TransportException: Request to the Resend API failed. Reason: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php:74\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 {main}', '2026-07-07 05:24:27');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(28, 'database', 'default', '{\"uuid\":\"7eac6994-1761-43f7-8ccf-6f7ca3a9db63\",\"displayName\":\"App\\\\Mail\\\\AdminAppointmentMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:29:\\\"App\\\\Mail\\\\AdminAppointmentMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"root@admin.com\\\";}}s:6:\\\"mailer\\\";s:6:\\\"resend\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Resend\\Exceptions\\ErrorException: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php:118\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php(47): Resend\\Transporters\\HttpTransporter->throwIfJsonError(Array, \'{\"statusCode\":4...\')\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(50): Resend\\Transporters\\HttpTransporter->request(Object(Resend\\ValueObjects\\Transporter\\Payload))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(62): Resend\\Service\\Email->create(Array, Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php(60): Resend\\Service\\Email->send(Array, Array)\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 {main}\n\nNext Symfony\\Component\\Mailer\\Exception\\TransportException: Request to the Resend API failed. Reason: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php:74\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 {main}', '2026-07-07 05:24:28'),
(29, 'database', 'default', '{\"uuid\":\"58ab2803-591d-49da-bec0-b27e6dd9503c\",\"displayName\":\"App\\\\Mail\\\\AdminAppointmentMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:29:\\\"App\\\\Mail\\\\AdminAppointmentMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"ss02001135@gmail.com\\\";}}s:6:\\\"mailer\\\";s:6:\\\"resend\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Resend\\Exceptions\\ErrorException: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php:118\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php(47): Resend\\Transporters\\HttpTransporter->throwIfJsonError(Array, \'{\"statusCode\":4...\')\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(50): Resend\\Transporters\\HttpTransporter->request(Object(Resend\\ValueObjects\\Transporter\\Payload))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(62): Resend\\Service\\Email->create(Array, Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php(60): Resend\\Service\\Email->send(Array, Array)\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 {main}\n\nNext Symfony\\Component\\Mailer\\Exception\\TransportException: Request to the Resend API failed. Reason: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php:74\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 {main}', '2026-07-07 05:24:29');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(30, 'database', 'default', '{\"uuid\":\"e6507008-06bd-483b-984e-fa6be2c06bcf\",\"displayName\":\"App\\\\Mail\\\\AdminAppointmentMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:29:\\\"App\\\\Mail\\\\AdminAppointmentMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"user@respecttrading.com\\\";}}s:6:\\\"mailer\\\";s:6:\\\"resend\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Resend\\Exceptions\\ErrorException: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php:118\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php(47): Resend\\Transporters\\HttpTransporter->throwIfJsonError(Array, \'{\"statusCode\":4...\')\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(50): Resend\\Transporters\\HttpTransporter->request(Object(Resend\\ValueObjects\\Transporter\\Payload))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(62): Resend\\Service\\Email->create(Array, Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php(60): Resend\\Service\\Email->send(Array, Array)\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 {main}\n\nNext Symfony\\Component\\Mailer\\Exception\\TransportException: Request to the Resend API failed. Reason: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php:74\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 {main}', '2026-07-07 05:24:29'),
(31, 'database', 'default', '{\"uuid\":\"19b000b5-8067-434c-b1f4-323251f61f02\",\"displayName\":\"App\\\\Mail\\\\AdminAppointmentMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:29:\\\"App\\\\Mail\\\\AdminAppointmentMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:19:\\\"cyberlink@admin.com\\\";}}s:6:\\\"mailer\\\";s:6:\\\"resend\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Resend\\Exceptions\\ErrorException: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php:118\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php(47): Resend\\Transporters\\HttpTransporter->throwIfJsonError(Array, \'{\"statusCode\":4...\')\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(50): Resend\\Transporters\\HttpTransporter->request(Object(Resend\\ValueObjects\\Transporter\\Payload))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(62): Resend\\Service\\Email->create(Array, Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php(60): Resend\\Service\\Email->send(Array, Array)\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 {main}\n\nNext Symfony\\Component\\Mailer\\Exception\\TransportException: Request to the Resend API failed. Reason: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php:74\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 {main}', '2026-07-07 05:25:56');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(32, 'database', 'default', '{\"uuid\":\"6b8823c5-6520-46e0-9630-0b7fb485e43d\",\"displayName\":\"App\\\\Mail\\\\AdminAppointmentMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:29:\\\"App\\\\Mail\\\\AdminAppointmentMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"root@admin.com\\\";}}s:6:\\\"mailer\\\";s:6:\\\"resend\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Resend\\Exceptions\\ErrorException: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php:118\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php(47): Resend\\Transporters\\HttpTransporter->throwIfJsonError(Array, \'{\"statusCode\":4...\')\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(50): Resend\\Transporters\\HttpTransporter->request(Object(Resend\\ValueObjects\\Transporter\\Payload))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(62): Resend\\Service\\Email->create(Array, Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php(60): Resend\\Service\\Email->send(Array, Array)\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 {main}\n\nNext Symfony\\Component\\Mailer\\Exception\\TransportException: Request to the Resend API failed. Reason: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php:74\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 {main}', '2026-07-07 05:25:57'),
(33, 'database', 'default', '{\"uuid\":\"1a35b0c9-11a4-48c5-8125-2a30ec013c35\",\"displayName\":\"App\\\\Mail\\\\AdminAppointmentMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:29:\\\"App\\\\Mail\\\\AdminAppointmentMail\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\Inquiry\\\\ContactModel\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"user@respecttrading.com\\\";}}s:6:\\\"mailer\\\";s:6:\\\"resend\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Resend\\Exceptions\\ErrorException: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php:118\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Transporters\\HttpTransporter.php(47): Resend\\Transporters\\HttpTransporter->throwIfJsonError(Array, \'{\"statusCode\":4...\')\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(50): Resend\\Transporters\\HttpTransporter->request(Object(Resend\\ValueObjects\\Transporter\\Payload))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-php\\src\\Service\\Email.php(62): Resend\\Service\\Email->create(Array, Array)\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php(60): Resend\\Service\\Email->send(Array, Array)\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 {main}\n\nNext Symfony\\Component\\Mailer\\Exception\\TransportException: Request to the Resend API failed. Reason: You can only send testing emails to your own email address (shibusharma807@gmail.com). To send emails to other recipients, please verify a domain at resend.com/domains, and change the `from` address to an email using this domain. in D:\\Cyberlink\\peb-saloon-new\\vendor\\resend\\resend-laravel\\src\\Transport\\ResendTransportFactory.php:74\nStack trace:\n#0 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Resend\\Laravel\\Transport\\ResendTransportFactory->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#1 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#2 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#3 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.admin-ap...\', Array, Object(Closure))\n#4 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#6 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#7 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#8 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#13 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#14 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#15 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#17 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#22 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#24 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#27 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#33 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 D:\\Cyberlink\\peb-saloon-new\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 D:\\Cyberlink\\peb-saloon-new\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 D:\\Cyberlink\\peb-saloon-new\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 {main}', '2026-07-07 05:25:58');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_03_28_114354_create_cl_post_metas_table', 1),
(5, '2018_03_28_114442_create_cl_post_featured_images_table', 1),
(6, '2018_03_28_114755_create_cl_post_attachments_table', 1),
(7, '2018_03_28_114834_create_cl_post_videos_table', 1),
(9, '2018_03_28_115212_create_cl_post_comments_table', 1),
(10, '2018_03_28_115358_create_cl_categories_table', 1),
(11, '2018_03_28_115432_create_cl_category_metas_table', 1),
(12, '2018_03_29_064328_create_cl_log_table', 1),
(13, '2018_05_08_114118_create_cl_userroles_table', 1),
(14, '2018_05_20_062425_create_cl_members_table', 1),
(15, '2018_06_04_092530_create_cl_roles_table', 1),
(16, '2018_06_06_123826_create_product_category_table', 1),
(17, '2018_06_07_093316_create_post_type_table', 1),
(18, '2018_06_13_071711_create_cl_post_category_table', 1),
(19, '2018_06_21_080700_create_cl_banner_table', 1),
(20, '2018_06_27_053620_create_cl_product_type_table', 2),
(21, '2018_06_28_061103_create_cl_product_brand_table', 3),
(22, '2018_06_28_061256_create_cl_currency_table', 3),
(23, '2018_06_28_061707_create_cl_product_unit_table', 3),
(26, '2018_06_29_051629_create_cl_products_table', 1),
(31, '2018_07_03_014755_create_cl_gallery_image_categories_table', 4),
(32, '2018_07_03_014814_create_cl_gallery_images_table', 4),
(35, '2018_07_03_104330_create_cl_gallery_videos_table', 6),
(37, '2018_07_03_103721_create_cl_gallery_video_categories_table', 7),
(38, '2018_07_04_061117_create_cl_post_type_table', 7),
(39, '2018_03_28_113701_create_cl_posts_table', 8),
(41, '2018_08_06_085514_create_cl_product_tag_table', 9),
(42, '2018_09_20_120321_create_cl_customer_billing_address_table', 10),
(43, '2018_09_20_120340_create_cl_customer_shipping_address_table', 10),
(44, '2018_09_24_094921_create_cl_orders_table', 11),
(45, '2018_09_25_061818_create_cl_country_table', 12),
(46, '2018_09_25_092853_create_order_product_table', 13),
(47, '2018_09_25_100703_create_cl_order_product_table', 14),
(48, '2018_10_02_031657_create_cl_settings_table', 15),
(49, '2018_11_14_092229_create_cl_tender_table', 16),
(51, '2018_11_19_042417_create_cl_tender_category', 18),
(52, '2018_11_19_075448_create_cl_tender_document_table', 19),
(53, '2018_11_16_111624_create_cl_venderdetail_table', 20),
(54, '2018_11_25_060813_create_cl_multiple_video_table', 21),
(55, '2018_11_29_065424_create_cl_multiple_document_table', 22),
(56, '2019_03_13_082841_create_newsletter_signup_table', 23),
(59, '2019_03_14_052123_create_cl_associated_posts_table', 24),
(61, '2019_03_15_090749_create_cl_dwninfo_table', 25),
(62, '2020_08_06_095339_create_cl_multiple_banner_table', 26),
(63, '2020_08_06_120936_add_banner_id_column_at_cl_multiple_banner_table', 26),
(64, '2020_08_07_084648_add_visitor_column_at_posts_table', 26),
(66, '2020_08_11_180220_create_role_user_table', 27),
(67, '2020_08_12_061740_create_foreign_keys_for_role_user_table', 27),
(68, '2020_08_16_130049_crate_admin_menu_table', 28),
(74, '2020_08_16_162623_create_adminmenu_user_table', 29),
(75, '2020_08_16_205219_crate_foreign_keys_for_adminmenu_user_table', 29),
(79, '2020_08_17_062614_add_global_post_cl_posts_table', 30),
(80, '2020_12_10_131852_create_cl_portfolio_table', 31),
(81, '2020_12_10_132930_create_cl_associated_portfolios_table', 31),
(82, '2019_08_19_000000_create_failed_jobs_table', 32),
(83, '2026_07_05_053156_create_appointments_table', 32),
(84, '2026_07_07_081011_create_jobs_table', 33);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(12, 3, 4, NULL, NULL),
(16, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `pin` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `pin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'root@admin.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'dTZzbGy7fPEeAhfTJVXSlM45x3UJO0PSU97DI1iynbAnjJmmXUgGmdLlFprr', '2018-06-24 04:33:34', '2018-06-24 04:33:34'),
(3, 'Cyberlink', 'cyberlink@admin.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'HIkZJXV8D2vLsWpW6xHFAUOQ6Pe4LsFJw6ywP5RbgEGu1hqIz6wyyNrS5RWi', '2020-08-16 10:32:43', '2020-08-16 11:21:35'),
(4, 'User', 'user@respecttrading.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'gZ5WJWWPkkNsIdzWgbmJqscWWsk0P22gLUztuE9EpUqK2YlrulTaopEPaJ0V', '2020-08-16 11:22:14', '2021-05-21 02:20:57'),
(5, 'Shibu Sharma', 'shibusharma807@gmail.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'HIkZJXV8D2vLsWpW6xHFAUOQ6Pe4LsFJw6ywP5RbgEGu1hqIz6wyyNrS5RWi', '2020-08-16 11:22:14', '2020-08-16 11:22:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cl_adminmenu_user_user_id_foreign` (`user_id`),
  ADD KEY `cl_adminmenu_user_adminmenu_id_foreign` (`adminmenu_id`);

--
-- Indexes for table `cl_admin_menu`
--
ALTER TABLE `cl_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_appointments`
--
ALTER TABLE `cl_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_associated_posts`
--
ALTER TABLE `cl_associated_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_banner`
--
ALTER TABLE `cl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_career`
--
ALTER TABLE `cl_career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_country`
--
ALTER TABLE `cl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_images`
--
ALTER TABLE `cl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_image_categories`
--
ALTER TABLE `cl_gallery_image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_videos`
--
ALTER TABLE `cl_gallery_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_video_categories`
--
ALTER TABLE `cl_gallery_video_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_init`
--
ALTER TABLE `cl_init`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_inquiry`
--
ALTER TABLE `cl_inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_log`
--
ALTER TABLE `cl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_banner`
--
ALTER TABLE `cl_multiple_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_document`
--
ALTER TABLE `cl_multiple_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_image`
--
ALTER TABLE `cl_multiple_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_video`
--
ALTER TABLE `cl_multiple_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_posts`
--
ALTER TABLE `cl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_featured_images`
--
ALTER TABLE `cl_post_featured_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_videos`
--
ALTER TABLE `cl_post_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_roles`
--
ALTER TABLE `cl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_settings`
--
ALTER TABLE `cl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cl_admin_menu`
--
ALTER TABLE `cl_admin_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cl_appointments`
--
ALTER TABLE `cl_appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cl_associated_posts`
--
ALTER TABLE `cl_associated_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cl_banner`
--
ALTER TABLE `cl_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cl_career`
--
ALTER TABLE `cl_career`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cl_country`
--
ALTER TABLE `cl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `cl_gallery_images`
--
ALTER TABLE `cl_gallery_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cl_gallery_image_categories`
--
ALTER TABLE `cl_gallery_image_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cl_gallery_videos`
--
ALTER TABLE `cl_gallery_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_video_categories`
--
ALTER TABLE `cl_gallery_video_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cl_init`
--
ALTER TABLE `cl_init`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cl_inquiry`
--
ALTER TABLE `cl_inquiry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cl_log`
--
ALTER TABLE `cl_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_banner`
--
ALTER TABLE `cl_multiple_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_document`
--
ALTER TABLE `cl_multiple_document`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_image`
--
ALTER TABLE `cl_multiple_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cl_multiple_video`
--
ALTER TABLE `cl_multiple_video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_posts`
--
ALTER TABLE `cl_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cl_post_featured_images`
--
ALTER TABLE `cl_post_featured_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cl_post_videos`
--
ALTER TABLE `cl_post_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_roles`
--
ALTER TABLE `cl_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cl_settings`
--
ALTER TABLE `cl_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  ADD CONSTRAINT `cl_adminmenu_user_adminmenu_id_foreign` FOREIGN KEY (`adminmenu_id`) REFERENCES `cl_admin_menu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cl_adminmenu_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `cl_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
