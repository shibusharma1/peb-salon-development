-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2025 at 01:33 PM
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
-- Database: `kantipur`
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
(1, 'We Help Clients Succeed', 'Integrated facility management services, Project support services.', NULL, 'banner-1-uaNnt9ENyWIg47wnsLKENCASluSJWetIImEF2KuU.jpg', NULL, NULL, NULL, '1', '2020-12-31 08:12:27', '2024-06-26 12:57:49'),
(3, 'Your trusted business partner', 'Local manpower supply, Sub contracting, Transportation & Recruitment Services', NULL, 'res-ban-2-rF5pbcnbdV8h8jEao5hJ8GxYoIq623t3ROnA1Lru.jpg', NULL, NULL, NULL, '1', '2021-05-21 00:21:17', '2021-05-27 15:02:18'),
(4, 'EASTERN HORIZON LOGISTICS LLC', 'Driven by Excellence, Delivered with Care', 'Leveraging deep industry knowledge', 'res-ban-1-YgO9l1lW7eMBNRYsk9DmpwYO0asWG2YOtzzTULMZ.jpg', NULL, NULL, NULL, '1', '2021-05-21 00:48:41', '2025-04-17 05:33:44');

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
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
(1, NULL, 4071, '2025-10-12 07:29:12', 1, 'template-product', NULL, 'Feed Supplement', NULL, '<p>We provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions for the poultry industry’s evolving needs by making use of natural ingredients which are homogeneously combined. Our range of swine feed additives and care products are made with herbal ingredients harnessed by advanced medical technology.We provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions for the poultry industry’s evolving needs by making use of natural ingredients which are homogeneously combinedy.</p>', NULL, 'feed-supplement', '162151995619458006', 2, NULL, 0, 1, NULL, 'pdtt-FrHvKMxiAEMOTBkrSKVYCyhiP9Scm6WqZVx9WxHG.jpg', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2021-05-20 08:27:36', '2025-10-12 05:45:44'),
(2, NULL, 3998, '2025-10-12 10:44:36', 1, 'template-product', NULL, 'Allopathic', NULL, '<p>Our range of swine feed additives and care products are made with herbal ingredients harnessed by advanced medical technology.We provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions for the poultry industry’s evolving needs by making use of natural ingredients which are homogeneously combinedy.</p>', NULL, 'allopathic', '1621520533431688350', 2, NULL, 0, 2, NULL, 'pdtt-rJz9wiBGiQ8MDO8wgipiOdamczQ6TqPaCrPhkayf.jpg', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2021-05-20 08:37:13', '2025-10-12 05:45:27'),
(3, NULL, 3841, '2025-10-12 07:24:09', 1, 'single', NULL, 'Marketing Division', NULL, '<p>provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions f</p>', NULL, 'marketing-division', '1621584016910772829', 2, NULL, 0, 3, NULL, '', '03-OZ3cKFvOhpcAkE8IPxuWXzNQXdWRaKOMydN2g925.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2021-05-21 02:15:16', '2025-10-12 05:45:33'),
(6, NULL, 0, '2025-10-09 07:43:37', 1, 'single', NULL, 'What Do We Do?', NULL, '<p class=\"uk-margin-remove\">We are on a strategic path toward achieving internationally recognized certifications:</p>\r\n<ol>\r\n<li>ISO 9001 – Quality Management System (QMS)</li>\r\n<li>ISO 14001 – Environmental Management System (EMS)</li>\r\n<li>FAMI-QS – Feed Additive and Pre-Mixture Ingredients Quality System</li>\r\n<li>WHO-GMP – Allopathic Division Certification</li>\r\n</ol>\r\n<p class=\"uk-margin-remove\">These milestones will further strengthen our commitment to global standards and sustainable growth.</p>\r\n<p> </p>', NULL, 'what-do-we-do', '1744347242959437692', 1, NULL, 0, 3, NULL, 'wdww-fkkiAkyaZKCmNvROcxzMYKQp7yPbf4ubLefokD34.webp', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-10 23:09:02', '2025-10-09 01:58:45'),
(7, NULL, 0, '2025-10-09 07:43:57', 1, 'single', NULL, 'Our Product Portfolio', NULL, '<p class=\"uk-margin-remove\">We are on a strategic path toward achieving internationally recognized certifications:</p>\r\n<ol>\r\n<li>ISO 9001 – Quality Management System (QMS)</li>\r\n<li>ISO 14001 – Environmental Management System (EMS)</li>\r\n<li>FAMI-QS – Feed Additive and Pre-Mixture Ingredients Quality System</li>\r\n<li>WHO-GMP – Allopathic Division Certification</li>\r\n</ol>\r\n<p class=\"uk-margin-remove\">These milestones will further strengthen our commitment to global standards and sustainable growth.</p>', NULL, 'our-product-portfolio', '1744347394160352190', 1, NULL, 0, 4, NULL, 'opp-ssLFWzTyRo5aZaMqEgfx46YGFIeLNjTw3ZpwUDxg.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-10 23:11:34', '2025-10-09 01:59:16'),
(8, NULL, 38, '2025-10-10 07:31:08', 1, 'template-blog', NULL, 'Safe & Effective Solutions for Livestock Care', NULL, '<p>The health of livestock plays a vital role in ensuring food security, farm productivity, and the overall well-being of rural communities. Farmers and veterinarians rely on safe and effective pharmaceutical solutions to protect animals from diseases, improve growth, and maintain high standards of animal welfare.<br><br><strong>Why Safe Solutions Matter</strong><br>Using safe veterinary medicines is essential not just for the animals but also for the people who consume animal products. High-quality pharmaceuticals reduce the risk of residues in milk, meat, and eggs, ensuring they remain safe for human consumption. By following proper guidelines, farmers can treat their animals confidently without compromising public health.Using safe veterinary medicines is essential not just for the animals but also for the people who consume animal products. High-quality pharmaceuticals reduce the risk of residues in milk, meat, and eggs, ensuring they remain safe for human consumption. By following proper guidelines, farmers can treat their animals confidently without compromising public health.<br><br><strong>Effective Care for Healthy Herds</strong><br>Using safe veterinary medicines is essential not just for the animals but also for the people who consume animal products. High-quality pharmaceuticals reduce the risk of residues in milk, meat, and eggs, ensuring they remain safe for human consumption. By following proper guidelines, farmers can treat their animals confidently without compromising public health.Using safe veterinary medicines is essential not just for the animals but also for the people who consume animal products. High-quality pharmaceuticals reduce the risk of residues in milk, meat, and eggs, ensuring they remain safe for human consumption. By following proper guidelines, farmers can treat their animals confidently without compromising public health.</p>', 'Temperature-controlled logistics to maintain product quality.', 'safe-effective-solutions-for-livestock-care', '1744350486245165655', 3, NULL, 0, 8, NULL, 'blog1-wbNMIsk3fU7BCVe4G1hAUti8sIRsVlf6wEImfCsJ.png', 'news-X0V7aqH2A1eozppLRM35EKBCPrgO2tTrnTdjfD5u.jpg', '', '', NULL, NULL, NULL, 'Admin', NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-11 00:03:06', '2025-10-12 01:44:30'),
(9, NULL, 10, '2025-10-10 07:42:15', 1, 'template-blog', NULL, 'Trusted Veterinary Medicines for Every Species', NULL, NULL, 'What Every Pet Owner Needs to Know Owning a pet is a rewarding experience, but it also comes with important responsibilities Pet Owner Needs to Know', 'trusted-veterinary-medicines-for-every-species', '1744352672581466460', 3, NULL, 0, 9, NULL, '', '', '', '', NULL, NULL, NULL, 'Not Admin', NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-11 00:39:32', '2025-10-10 01:58:11'),
(16, NULL, 0, '2025-10-09 07:42:38', 1, 'single', NULL, 'Future-Forward Vision', NULL, '<p class=\"uk-margin-remove\">We are on a strategic path toward achieving internationally recognized certifications:</p>\r\n<ol>\r\n<li>ISO 9001 – Quality Management System (QMS)</li>\r\n<li>ISO 14001 – Environmental Management System (EMS)</li>\r\n<li>FAMI-QS – Feed Additive and Pre-Mixture Ingredients Quality System</li>\r\n<li>WHO-GMP – Allopathic Division Certification</li>\r\n</ol>\r\n<p class=\"uk-margin-remove\">These milestones will further strengthen our commitment to global standards and sustainable growth.</p>', NULL, 'futureforward-vision', '1744786999788262686', 1, NULL, 0, 2, NULL, 'ffn-D44aHikc6Vy2RSPuVnvyZ5doKQGMxardEqbvAQwZ.jpg', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-16 01:18:19', '2025-10-09 01:58:32'),
(17, NULL, 0, '2025-10-09 07:06:15', 1, 'single', NULL, 'About Associate Posts', NULL, NULL, NULL, 'about-associate-posts', '1744787025840814990', 1, NULL, 0, 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-16 01:18:45', '2025-10-09 01:23:06'),
(18, NULL, 67, '2025-10-10 07:52:51', 1, 'single', NULL, 'Geologist', 'Full time', '<p>Are you detail-oriented and experienced in your field? We’re seeking skilled and energetic professionals to join our team. If you meet the requirements, apply now for exciting career opportunities in the following positions!</p>', 'We are Kantipur Pharmaceutical Lab Limited; a diverse academic background team united to care and cure animal’s health.', 'geologist', '174478961672028914', 7, NULL, 0, 16, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-16 02:01:56', '2025-10-10 02:08:58'),
(19, 0, 1, '2025-04-17 08:21:48', 1, 'template-career', NULL, 'Second Position', NULL, NULL, NULL, 'second-position', '174487812881380731', 7, 0, 0, 17, 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-17 02:37:08', '2025-04-17 02:37:20'),
(20, 0, 0, '2025-04-18 04:57:43', 1, 'single', NULL, 'Images', NULL, NULL, NULL, 'images', '1744952271932551929', 8, 0, 0, 18, 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-17 23:12:51', '2025-04-17 23:12:51'),
(21, NULL, 0, '2025-10-09 07:44:24', 1, 'single', NULL, 'Commitment', NULL, '<p>With a heartfelt promise of “Caring and Curing Animal Health with Passion and Quality”, we continue to serve farmers, integrators, and veterinarians across Nepal—ensuring healthier animals and a stronger agricultural future.</p>\r\n<h4 class=\"uk-margin-remove-bottom uk-margin-small-top uk-text-bold uk-text-primary\">Our Core Beliefs</h4>\r\n<p>We at KPL are united by a deep commitment to caring—for animals, for our customers, and for the communities we serve. These values guide our everyday actions and shape the future we are building.</p>', NULL, 'commitment', '175999430922192713', 1, NULL, 0, 19, NULL, 'cmt-H0na33EMLjnnAbEH5TI33ZZ05cJEEGE0Geth6BPi.jpg', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-09 01:33:29', '2025-10-09 01:59:35'),
(22, NULL, 0, '2025-10-10 04:59:04', 1, 'single', NULL, 'Our Mission', NULL, '<p>Our mission is to support the growth and development of the animal and poultry industries in Nepal, aiming to be a reliable and trusted partner for our customers and animal healthcare providers.</p>', NULL, 'our-mission', '1760072223583814561', 9, NULL, 0, 20, NULL, 'msnn-ovyePJEVyC7n2KkGNqFuszVdT40jfVG8SsOcHzkW.jpg', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-09 23:12:03', '2025-10-09 23:14:11'),
(23, NULL, 0, '2025-10-10 06:05:20', 1, 'single', NULL, 'OUR VISION', NULL, '<p>We aspire to be acknowledged as an industry leader, both nationally and internationally, with the goal of contributing to the overall advancement of the animal and poultry sectors in Nepal through our dedicated products and services.</p>', NULL, 'our-vision', '1760072309916762979', 9, NULL, 0, 22, NULL, 'vsn-eISe3jllCcWeeLk3EyfMv3Zv3Yw6Ut0F0JCdxwCc.jpg', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-09 23:13:29', '2025-10-10 00:21:30'),
(24, NULL, 0, '2025-10-10 06:06:54', 1, 'single', NULL, 'OUR GOALS', NULL, '<p>Our goal is to become the leading veterinary industry in Nepal in the field of Animal Feed Supplements and Quality Medicines and to expand our distribution network to reach more customers across the Globe.</p>', NULL, 'our-goals', '1760072337494537759', 9, NULL, 0, 21, NULL, 'gl-HmK11QDKVO8fnlkrTGbQVji7fond0sIkEjGtQmze.jpg', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-09 23:13:57', '2025-10-10 00:21:59');

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
(1, '1', 'Footer', 'Footer', 'Footer', 'footer', NULL, NULL, NULL, '1', '2021-05-21 01:59:47', '2021-05-21 01:59:47');

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
(1, 'ABOUT US', 'About', 'about', '<div>\r\n<div>Welcome to Kantipur Pharmaceuticals Lab Limited.</div>\r\n</div>', '<p>Established in 2073 B.S., Kantipur Pharmaceuticals Lab Limited (KPL) is a Nepal-based company committed to redefining animal healthcare. As one of the country\'s leading veterinary pharmaceutical companies, we are driven by a mission to create a healthier world for animals through “Gold-Standard” solutions and “Need-Based Innovations”KPL is driven by a singular purpose: “Caring and Curing Animal Health with passion and Quality”. At KPL, we are more than just a leader in veterinary pharmaceuticals—we are a dedicated partner in the health and well-being of animals. KPL and Team aim to provide innovative, high-quality solutions that support the care of pets, livestock, and wildlife, ensuring they live healthier, happier lives. With a commitment to sustainability, ethical practices, and continuous improvement.</p>', 'About Us', 'ABOUT US', 'posttypeTemplate-about', 'about-jJSqZbMaubYLZuKA47srApDEsCaqKWUmLeRXxoWn.jpg', 1, '1', 0, '1', '2021-05-20 08:13:06', '2025-10-10 00:25:16'),
(2, 'Feed Supplement', 'Product', 'product', NULL, '<p>We provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions for the poultry industry’s evolving needs by making use of natural ingredients which are homogeneously combined. Our range of swine feed additives and care products are made with herbal ingredients harnessed by advanced medical technology.We provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions for the poultry industry’s evolving needs by making use of natural ingredients which are homogeneously combinedy.</p>', NULL, NULL, 'page', 'pdtt-mnXOWtkUW3H6nl0y7VzsrGRTMPdwNGNXSZyGWFV0.jpg', 3, '1', 0, '1', '2021-05-20 08:13:57', '2025-10-12 01:31:38'),
(3, 'News & Articles', 'News / Blogs', 'blog', '<p>CAREER</p>', '<p>For any job opportunity, please send us your CV to info@respecttrading.com</p>', NULL, NULL, 'posttypeTemplate-blog', 'blg-Yv2enTTXdZYwfzpS2tT7dy3VsdXOi6r3op2iZMNz.jpg', 4, '1', 0, '1', '2021-05-20 08:14:13', '2025-10-10 00:41:34'),
(4, 'CONTACT US', 'Contact', 'contact', '<h2>Contact with us</h2>', '<p>euismod eu augue. Etiam vel dui arcu. Cras varius mieros pharetra, id aliquam metus venenatis. Donec sollicit</p>', NULL, NULL, 'posttypeTemplate-contact', 'blg-ORGuLNqbHxOqEXqLrmKX9hsO0qKBlcjBiELAxXkc.jpg', 7, '1', 0, '1', '2021-05-20 08:14:35', '2025-10-12 00:27:40'),
(7, NULL, 'Career', 'career', '<p>Interested in joining us. We have been conducting an active operation since 1984 in Nepal and Bhutan. Participating in Bidding in Nepal,India, Bhutan and Bangladesh. We have Executed several projects such as water supply.</p>', NULL, NULL, NULL, 'posttypeTemplate-carrer', '', 6, '1', 0, '1', '2025-04-16 01:55:42', '2025-04-16 02:17:49'),
(8, NULL, 'Partners', 'partners', NULL, NULL, NULL, NULL, NULL, '', 8, '0', 0, '1', '2025-04-17 23:11:59', '2025-04-17 23:11:59'),
(9, 'Mission and vision', 'Mission', 'mission', '<h2 class=\"uk-margin-remove-top uk-text-primary\">About Kantipur Pharmaceuticals Lab Limited.</h2>', '<p>Kantipur Pharmaceuticals Lab Limited (KPL) is a Nepal based company established in 2073 B.S. It is a leading animal healthcare company creating a healthier world for animals. Our veterinary solutions are \"Gold Standard\" &amp; \"Need Based Innovations\". We Offer Comprehensive, Innovative, High Quality and Safe Feed Supplements, Feed Nutrition Premixes, advanced and fine-tuned Phytochemical Products along with Allopathic Medicines for Dairy Cattle, Equines, Poultry, Swine &amp; Pets for Enhanced Productivity and Better Healthcare.<br><br>KPL continuously strives to attract highly efficient and experienced staff in the veterinary medicines and pharmaceutical industries to ensure the quality of our products. With a strong and professional Technical and Marketing teams and an efficient distribution network, KPL ensures Safety, Efficacy and Quality with prompt delivery of its products across Nepal through specialty distributors and authorized local dealers. KPL is aiming to be certified for ISO-9001 QMS, ISO-14001 EMS and FAMI-QS certification for Feed Division and WHO-GMP for its Allopathic Division in near future.</p>', NULL, NULL, 'posttypeTemplate-mission', 'mb-bJdtl4XSeKCttJVaNZaRrFojUDtr3IS0LQmT1nXs.jpg', 2, '1', 0, '1', '2025-10-08 01:16:12', '2025-10-10 00:26:15');

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
(1, 0, 'Kantipur PL', '985681464', '+977-01-5186602', 'info@kantipurpharma.com', 'info@kantipurpharma.com', NULL, 'KVD Complex 6th Floor, Balkumari, Lalitpur, Nepal, PIN 44700', 'Panchkhal - 06, Hokshe, Kavre', 'http://facebook.com/', 'https://www.linkedin.com/', NULL, 'https://twitter.com/?lang=en', NULL, 'https://www.instagram.com/', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d5587.017491661533!2d85.627995!3d27.641364!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eba7e5da251f8b%3A0x94616c285a8191b6!2sKantipur%20Pharmaceuticals%20Lab%20Pvt.%20Ltd.!5e1!3m2!1sen!2snp!4v1758607652267!5m2!1sen!2snp\" width=\"100%\" height=\"350\" style=\"border-radius:15px;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Founded by a team of seasoned entrepreneurs with over 30 years of expertise in the oil and gas,chemical logistics and transportation sectors.', NULL, 'Kantipur Pharmaceuticals Lab Limited.', NULL, '2025-10-12 01:18:31');

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
(81, '2020_12_10_132930_create_cl_associated_portfolios_table', 31);

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
(4, 'User', 'user@respecttrading.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'gZ5WJWWPkkNsIdzWgbmJqscWWsk0P22gLUztuE9EpUqK2YlrulTaopEPaJ0V', '2020-08-16 11:22:14', '2021-05-21 02:20:57');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_image_categories`
--
ALTER TABLE `cl_gallery_image_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cl_post_featured_images`
--
ALTER TABLE `cl_post_featured_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
