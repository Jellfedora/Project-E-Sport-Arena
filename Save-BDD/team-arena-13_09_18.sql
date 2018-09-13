-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 13 Septembre 2018 à 21:03
-- Version du serveur :  5.7.23-0ubuntu0.18.04.1
-- Version de PHP :  7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `team-arena`
--

-- --------------------------------------------------------

--
-- Structure de la table `ec_address`
--

CREATE TABLE `ec_address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `city` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `zip` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `company_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_affiliate_rule`
--

CREATE TABLE `ec_affiliate_rule` (
  `affiliate_rule_id` int(11) NOT NULL,
  `rule_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rule_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rule_amount` float(15,3) NOT NULL DEFAULT '0.000',
  `rule_limit` int(11) NOT NULL DEFAULT '0',
  `rule_active` tinyint(1) NOT NULL DEFAULT '1',
  `rule_recurring` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_affiliate_rule_to_affiliate`
--

CREATE TABLE `ec_affiliate_rule_to_affiliate` (
  `rule_to_account_id` int(11) NOT NULL,
  `affiliate_rule_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_affiliate_rule_to_product`
--

CREATE TABLE `ec_affiliate_rule_to_product` (
  `rule_to_product_id` int(11) NOT NULL,
  `affiliate_rule_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_bundle`
--

CREATE TABLE `ec_bundle` (
  `bundle_id` int(11) NOT NULL,
  `key_product_id` int(11) NOT NULL DEFAULT '0',
  `bundled_product_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_category`
--

CREATE TABLE `ec_category` (
  `category_id` int(11) NOT NULL,
  `is_demo_item` tinyint(1) NOT NULL DEFAULT '0',
  `category_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `short_description` text COLLATE utf8mb4_unicode_520_ci,
  `image` text COLLATE utf8mb4_unicode_520_ci,
  `featured_category` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_categoryitem`
--

CREATE TABLE `ec_categoryitem` (
  `categoryitem_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_code`
--

CREATE TABLE `ec_code` (
  `code_id` int(11) NOT NULL,
  `code_val` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `orderdetail_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_country`
--

CREATE TABLE `ec_country` (
  `id_cnt` int(11) NOT NULL,
  `name_cnt` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `iso2_cnt` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `iso3_cnt` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL,
  `vat_rate_cnt` float(9,3) NOT NULL DEFAULT '0.000',
  `ship_to_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_country`
--

INSERT INTO `ec_country` (`id_cnt`, `name_cnt`, `iso2_cnt`, `iso3_cnt`, `sort_order`, `vat_rate_cnt`, `ship_to_active`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 10, 0.000, 1),
(2, 'Albania', 'AL', 'ALB', 11, 0.000, 1),
(3, 'Algeria', 'DZ', 'DZA', 12, 0.000, 1),
(4, 'American Samoa', 'AS', 'ASM', 13, 0.000, 1),
(5, 'Andorra', 'AD', 'AND', 14, 0.000, 1),
(6, 'Angola', 'AO', 'AGO', 15, 0.000, 1),
(7, 'Anguilla', 'AI', 'AIA', 16, 0.000, 1),
(8, 'Antarctica', 'AQ', 'ATA', 17, 0.000, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 18, 0.000, 1),
(10, 'Argentina', 'AR', 'ARG', 19, 0.000, 1),
(11, 'Armenia', 'AM', 'ARM', 20, 0.000, 1),
(12, 'Aruba', 'AW', 'ABW', 21, 0.000, 1),
(13, 'Australia', 'AU', 'AUS', 3, 0.000, 1),
(14, 'Austria', 'AT', 'AUT', 23, 0.000, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', 24, 0.000, 1),
(16, 'Bahamas', 'BS', 'BHS', 25, 0.000, 1),
(17, 'Bahrain', 'BH', 'BHR', 26, 0.000, 1),
(18, 'Bangladesh', 'BD', 'BGD', 27, 0.000, 1),
(19, 'Barbados', 'BB', 'BRB', 28, 0.000, 1),
(20, 'Belarus', 'BY', 'BLR', 29, 0.000, 1),
(21, 'Belgium', 'BE', 'BEL', 30, 0.000, 1),
(22, 'Belize', 'BZ', 'BLZ', 31, 0.000, 1),
(23, 'Benin', 'BJ', 'BEN', 32, 0.000, 1),
(24, 'Bermuda', 'BM', 'BMU', 33, 0.000, 1),
(25, 'Bhutan', 'BT', 'BTN', 34, 0.000, 1),
(26, 'Bolivia', 'BO', 'BOL', 35, 0.000, 1),
(28, 'Botswana', 'BW', 'BWA', 36, 0.000, 1),
(29, 'Bouvet Island', 'BV', 'BVT', 37, 0.000, 1),
(30, 'Brazil', 'BR', 'BRA', 38, 0.000, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 39, 0.000, 1),
(33, 'Bulgaria', 'BG', 'BGR', 40, 0.000, 1),
(34, 'Burkina Faso', 'BF', 'BFA', 41, 0.000, 1),
(35, 'Burundi', 'BI', 'BDI', 42, 0.000, 1),
(36, 'Cambodia', 'KH', 'KHM', 43, 0.000, 1),
(37, 'Cameroon', 'CM', 'CMR', 44, 0.000, 1),
(38, 'Canada', 'CA', 'CAN', 2, 0.000, 1),
(39, 'Cape Verde', 'CV', 'CPV', 46, 0.000, 1),
(40, 'Cayman Islands', 'KY', 'CYM', 47, 0.000, 1),
(42, 'Chad', 'TD', 'TCD', 48, 0.000, 1),
(43, 'Chile', 'CL', 'CHL', 49, 0.000, 1),
(44, 'China', 'CN', 'CHN', 50, 0.000, 1),
(45, 'Christmas Island', 'CX', 'CXR', 51, 0.000, 1),
(47, 'Colombia', 'CO', 'COL', 52, 0.000, 1),
(48, 'Comoros', 'KM', 'COM', 53, 0.000, 1),
(49, 'Congo', 'CG', 'COG', 54, 0.000, 1),
(50, 'Cook Islands', 'CK', 'COK', 55, 0.000, 1),
(51, 'Costa Rica', 'CR', 'CRI', 56, 0.000, 1),
(52, 'Cote D\'\'Ivoire', 'CI', 'CIV', 57, 0.000, 1),
(53, 'Croatia', 'HR', 'HRV', 58, 0.000, 1),
(54, 'Cuba', 'CU', 'CUB', 59, 0.000, 1),
(55, 'Cyprus', 'CY', 'CYP', 60, 0.000, 1),
(56, 'Czech Republic', 'CZ', 'CZE', 61, 0.000, 1),
(57, 'Denmark', 'DK', 'DNK', 62, 0.000, 1),
(58, 'Djibouti', 'DJ', 'DJI', 63, 0.000, 1),
(59, 'Dominica', 'DM', 'DMA', 64, 0.000, 1),
(60, 'Dominican Republic', 'DO', 'DOM', 65, 0.000, 1),
(61, 'East Timor', 'TP', 'TMP', 66, 0.000, 1),
(62, 'Ecuador', 'EC', 'ECU', 67, 0.000, 1),
(63, 'Egypt', 'EG', 'EGY', 68, 0.000, 1),
(64, 'El Salvador', 'SV', 'SLV', 69, 0.000, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 70, 0.000, 1),
(66, 'Eritrea', 'ER', 'ERI', 71, 0.000, 1),
(67, 'Estonia', 'EE', 'EST', 72, 0.000, 1),
(68, 'Ethiopia', 'ET', 'ETH', 73, 0.000, 1),
(70, 'Faroe Islands', 'FO', 'FRO', 74, 0.000, 1),
(71, 'Fiji', 'FJ', 'FJI', 75, 0.000, 1),
(72, 'Finland', 'FI', 'FIN', 76, 0.000, 1),
(73, 'France', 'FR', 'FRA', 77, 0.000, 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 78, 0.000, 1),
(75, 'French Guiana', 'GF', 'GUF', 79, 0.000, 1),
(76, 'French Polynesia', 'PF', 'PYF', 80, 0.000, 1),
(78, 'Gabon', 'GA', 'GAB', 81, 0.000, 1),
(79, 'Gambia', 'GM', 'GMB', 82, 0.000, 1),
(80, 'Georgia', 'GE', 'GEO', 83, 0.000, 1),
(81, 'Germany', 'DE', 'DEU', 84, 0.000, 1),
(82, 'Ghana', 'GH', 'GHA', 85, 0.000, 1),
(83, 'Gibraltar', 'GI', 'GIB', 86, 0.000, 1),
(84, 'Greece', 'GR', 'GRC', 87, 0.000, 1),
(85, 'Greenland', 'GL', 'GRL', 88, 0.000, 1),
(86, 'Grenada', 'GD', 'GRD', 89, 0.000, 1),
(87, 'Guadeloupe', 'GP', 'GLP', 90, 0.000, 1),
(88, 'Guam', 'GU', 'GUM', 91, 0.000, 1),
(89, 'Guatemala', 'GT', 'GTM', 92, 0.000, 1),
(90, 'Guinea', 'GN', 'GIN', 93, 0.000, 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 94, 0.000, 1),
(92, 'Guyana', 'GY', 'GUY', 95, 0.000, 1),
(93, 'Haiti', 'HT', 'HTI', 96, 0.000, 1),
(95, 'Honduras', 'HN', 'HND', 97, 0.000, 1),
(96, 'Hong Kong', 'HK', 'HKG', 98, 0.000, 1),
(97, 'Hungary', 'HU', 'HUN', 99, 0.000, 1),
(98, 'Iceland', 'IS', 'ISL', 100, 0.000, 1),
(99, 'India', 'IN', 'IND', 101, 0.000, 1),
(100, 'Indonesia', 'ID', 'IDN', 102, 0.000, 1),
(102, 'Iraq', 'IQ', 'IRQ', 103, 0.000, 1),
(103, 'Ireland', 'IE', 'IRL', 104, 0.000, 1),
(104, 'Israel', 'IL', 'ISR', 105, 0.000, 1),
(105, 'Italy', 'IT', 'ITA', 106, 0.000, 1),
(106, 'Jamaica', 'JM', 'JAM', 107, 0.000, 1),
(107, 'Japan', 'JP', 'JPN', 108, 0.000, 1),
(108, 'Jordan', 'JO', 'JOR', 109, 0.000, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 110, 0.000, 1),
(110, 'Kenya', 'KE', 'KEN', 111, 0.000, 1),
(111, 'Kiribati', 'KI', 'KIR', 112, 0.000, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 113, 0.000, 1),
(114, 'Kuwait', 'KW', 'KWT', 114, 0.000, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 115, 0.000, 1),
(117, 'Latvia', 'LV', 'LVA', 116, 0.000, 1),
(118, 'Lebanon', 'LB', 'LBN', 117, 0.000, 1),
(119, 'Lesotho', 'LS', 'LSO', 118, 0.000, 1),
(120, 'Liberia', 'LR', 'LBR', 119, 0.000, 1),
(122, 'Liechtenstein', 'LI', 'LIE', 120, 0.000, 1),
(123, 'Lithuania', 'LT', 'LTU', 121, 0.000, 1),
(124, 'Luxembourg', 'LU', 'LUX', 122, 0.000, 1),
(125, 'Macau', 'MO', 'MAC', 123, 0.000, 1),
(127, 'Madagascar', 'MG', 'MDG', 124, 0.000, 1),
(128, 'Malawi', 'MW', 'MWI', 125, 0.000, 1),
(129, 'Malaysia', 'MY', 'MYS', 126, 0.000, 1),
(130, 'Maldives', 'MV', 'MDV', 127, 0.000, 1),
(131, 'Mali', 'ML', 'MLI', 128, 0.000, 1),
(132, 'Malta', 'MT', 'MLT', 129, 0.000, 1),
(133, 'Marshall Islands', 'MH', 'MHL', 130, 0.000, 1),
(134, 'Martinique', 'MQ', 'MTQ', 131, 0.000, 1),
(135, 'Mauritania', 'MR', 'MRT', 132, 0.000, 1),
(136, 'Mauritius', 'MU', 'MUS', 133, 0.000, 1),
(137, 'Mayotte', 'YT', 'MYT', 134, 0.000, 1),
(138, 'Mexico', 'MX', 'MEX', 135, 0.000, 1),
(141, 'Monaco', 'MC', 'MCO', 136, 0.000, 1),
(142, 'Mongolia', 'MN', 'MNG', 137, 0.000, 1),
(143, 'Montserrat', 'MS', 'MSR', 138, 0.000, 1),
(144, 'Morocco', 'MA', 'MAR', 139, 0.000, 1),
(145, 'Mozambique', 'MZ', 'MOZ', 140, 0.000, 1),
(146, 'Myanmar', 'MM', 'MMR', 141, 0.000, 1),
(147, 'Namibia', 'NA', 'NAM', 142, 0.000, 1),
(148, 'Nauru', 'NR', 'NRU', 143, 0.000, 1),
(149, 'Nepal', 'NP', 'NPL', 144, 0.000, 1),
(150, 'Netherlands', 'NL', 'NLD', 145, 0.000, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 146, 0.000, 1),
(152, 'New Caledonia', 'NC', 'NCL', 147, 0.000, 1),
(153, 'New Zealand', 'NZ', 'NZL', 148, 0.000, 1),
(154, 'Nicaragua', 'NI', 'NIC', 149, 0.000, 1),
(155, 'Niger', 'NE', 'NER', 150, 0.000, 1),
(156, 'Nigeria', 'NG', 'NGA', 151, 0.000, 1),
(157, 'Niue', 'NU', 'NIU', 152, 0.000, 1),
(158, 'Norfolk Island', 'NF', 'NFK', 153, 0.000, 1),
(160, 'Norway', 'NO', 'NOR', 154, 0.000, 1),
(161, 'Oman', 'OM', 'OMN', 155, 0.000, 1),
(162, 'Pakistan', 'PK', 'PAK', 156, 0.000, 1),
(163, 'Palau', 'PW', 'PLW', 157, 0.000, 1),
(164, 'Panama', 'PA', 'PAN', 158, 0.000, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 159, 0.000, 1),
(166, 'Paraguay', 'PY', 'PRY', 160, 0.000, 1),
(167, 'Peru', 'PE', 'PER', 161, 0.000, 1),
(168, 'Philippines', 'PH', 'PHL', 162, 0.000, 1),
(169, 'Pitcairn', 'PN', 'PCN', 163, 0.000, 1),
(170, 'Poland', 'PL', 'POL', 164, 0.000, 1),
(171, 'Portugal', 'PT', 'PRT', 165, 0.000, 1),
(172, 'Puerto Rico', 'PR', 'PRI', 166, 0.000, 1),
(173, 'Qatar', 'QA', 'QAT', 167, 0.000, 1),
(174, 'Reunion', 'RE', 'REU', 168, 0.000, 1),
(175, 'Romania', 'RO', 'ROM', 169, 0.000, 1),
(176, 'Russian Federation', 'RU', 'RUS', 170, 0.000, 1),
(177, 'Rwanda', 'RW', 'RWA', 171, 0.000, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 172, 0.000, 1),
(179, 'Saint Lucia', 'LC', 'LCA', 173, 0.000, 1),
(181, 'Samoa', 'WS', 'WSM', 174, 0.000, 1),
(182, 'San Marino', 'SM', 'SMR', 175, 0.000, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 176, 0.000, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 177, 0.000, 1),
(185, 'Senegal', 'SN', 'SEN', 178, 0.000, 1),
(186, 'Seychelles', 'SC', 'SYC', 179, 0.000, 1),
(187, 'Sierra Leone', 'SL', 'SLE', 180, 0.000, 1),
(188, 'Singapore', 'SG', 'SGP', 181, 0.000, 1),
(190, 'Slovenia', 'SI', 'SVN', 182, 0.000, 1),
(191, 'Solomon Islands', 'SB', 'SLB', 183, 0.000, 1),
(192, 'Somalia', 'SO', 'SOM', 184, 0.000, 1),
(193, 'South Africa', 'ZA', 'ZAF', 185, 0.000, 1),
(195, 'Spain', 'ES', 'ESP', 186, 0.000, 1),
(196, 'Sri Lanka', 'LK', 'LKA', 187, 0.000, 1),
(197, 'St. Helena', 'SH', 'SHN', 188, 0.000, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 189, 0.000, 1),
(199, 'Sudan', 'SD', 'SDN', 190, 0.000, 1),
(200, 'Suriname', 'SR', 'SUR', 191, 0.000, 1),
(202, 'Swaziland', 'SZ', 'SWZ', 192, 0.000, 1),
(203, 'Sweden', 'SE', 'SWE', 193, 0.000, 1),
(204, 'Switzerland', 'CH', 'CHE', 194, 0.000, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 195, 0.000, 1),
(206, 'Taiwan', 'TW', 'TWN', 196, 0.000, 1),
(207, 'Tajikistan', 'TJ', 'TJK', 197, 0.000, 1),
(209, 'Thailand', 'TH', 'THA', 198, 0.000, 1),
(210, 'Togo', 'TG', 'TGO', 199, 0.000, 1),
(211, 'Tokelau', 'TK', 'TKL', 200, 0.000, 1),
(212, 'Tonga', 'TO', 'TON', 201, 0.000, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 202, 0.000, 1),
(214, 'Tunisia', 'TN', 'TUN', 203, 0.000, 1),
(215, 'Turkey', 'TR', 'TUR', 204, 0.000, 1),
(216, 'Turkmenistan', 'TM', 'TKM', 205, 0.000, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 206, 0.000, 1),
(218, 'Tuvalu', 'TV', 'TUV', 207, 0.000, 1),
(219, 'Uganda', 'UG', 'UGA', 208, 0.000, 1),
(220, 'Ukraine', 'UA', 'UKR', 209, 0.000, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 210, 0.000, 1),
(222, 'United Kingdom', 'GB', 'GBR', 211, 0.000, 1),
(223, 'United States', 'US', 'USA', 1, 0.000, 1),
(224, 'US Minor Outlying Islands', 'UM', 'UMI', 213, 0.000, 1),
(225, 'Uruguay', 'UY', 'URY', 214, 0.000, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 215, 0.000, 1),
(227, 'Vanuatu', 'VU', 'VUT', 216, 0.000, 1),
(229, 'Venezuela', 'VE', 'VEN', 217, 0.000, 1),
(230, 'Viet Nam', 'VN', 'VNM', 218, 0.000, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 219, 0.000, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 220, 0.000, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 221, 0.000, 1),
(234, 'Western Sahara', 'EH', 'ESH', 222, 0.000, 1),
(235, 'Yemen', 'YE', 'YEM', 223, 0.000, 1),
(236, 'Yugoslavia', 'YU', 'YUG', 224, 0.000, 1),
(237, 'Zaire', 'ZR', 'ZAR', 225, 0.000, 1),
(238, 'Zambia', 'ZM', 'ZMB', 226, 0.000, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 227, 0.000, 1),
(240, 'Slovakia', 'SK', 'SVK', 182, 0.000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ec_customfield`
--

CREATE TABLE `ec_customfield` (
  `customfield_id` int(11) NOT NULL,
  `table_name` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `field_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `field_label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_customfielddata`
--

CREATE TABLE `ec_customfielddata` (
  `customfielddata_id` int(11) NOT NULL,
  `customfield_id` int(11) DEFAULT NULL,
  `table_id` int(11) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_download`
--

CREATE TABLE `ec_download` (
  `download_id` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `download_count` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `download_file_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_amazon_download` tinyint(1) NOT NULL DEFAULT '0',
  `amazon_key` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_giftcard`
--

CREATE TABLE `ec_giftcard` (
  `giftcard_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `amount` float(15,3) NOT NULL DEFAULT '0.000',
  `message` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_live_rate_cache`
--

CREATE TABLE `ec_live_rate_cache` (
  `live_rate_cache_id` int(11) NOT NULL,
  `ec_cart_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rate_data` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_manufacturer`
--

CREATE TABLE `ec_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `is_demo_item` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_manufacturer`
--

INSERT INTO `ec_manufacturer` (`manufacturer_id`, `is_demo_item`, `name`, `clicks`, `post_id`) VALUES
(1, 0, 'E Sport Arena Bordeaux', 0, 132);

-- --------------------------------------------------------

--
-- Structure de la table `ec_menulevel1`
--

CREATE TABLE `ec_menulevel1` (
  `menulevel1_id` int(11) NOT NULL,
  `is_demo_item` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `seo_description` blob,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_menulevel2`
--

CREATE TABLE `ec_menulevel2` (
  `menulevel2_id` int(11) NOT NULL,
  `is_demo_item` tinyint(1) NOT NULL DEFAULT '0',
  `menulevel1_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `seo_description` blob,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_menulevel3`
--

CREATE TABLE `ec_menulevel3` (
  `menulevel3_id` int(11) NOT NULL,
  `is_demo_item` tinyint(1) NOT NULL DEFAULT '0',
  `menulevel2_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `seo_description` blob,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_option`
--

CREATE TABLE `ec_option` (
  `option_id` int(11) NOT NULL,
  `is_demo_item` tinyint(1) NOT NULL DEFAULT '0',
  `option_name` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_label` text COLLATE utf8mb4_unicode_520_ci,
  `option_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'combo',
  `option_required` tinyint(1) NOT NULL DEFAULT '1',
  `option_error_text` text COLLATE utf8mb4_unicode_520_ci,
  `option_meta` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_optionitem`
--

CREATE TABLE `ec_optionitem` (
  `optionitem_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL DEFAULT '0',
  `optionitem_name` text COLLATE utf8mb4_unicode_520_ci,
  `optionitem_price` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_price_onetime` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_price_override` float(15,3) NOT NULL DEFAULT '-1.000',
  `optionitem_price_multiplier` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_price_per_character` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_weight` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_weight_onetime` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_weight_override` float(15,3) NOT NULL DEFAULT '-1.000',
  `optionitem_weight_multiplier` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_order` int(11) NOT NULL DEFAULT '1',
  `optionitem_icon` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_initial_value` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_model_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_allow_download` tinyint(1) NOT NULL DEFAULT '1',
  `optionitem_disallow_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `optionitem_initially_selected` tinyint(1) NOT NULL DEFAULT '0',
  `optionitem_download_override_file` text COLLATE utf8mb4_unicode_520_ci,
  `optionitem_download_addition_file` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_optionitemimage`
--

CREATE TABLE `ec_optionitemimage` (
  `optionitemimage_id` int(11) NOT NULL,
  `optionitem_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `image1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_optionitemquantity`
--

CREATE TABLE `ec_optionitemquantity` (
  `optionitemquantity_id` int(11) NOT NULL,
  `product_id` int(17) NOT NULL DEFAULT '0',
  `optionitem_id_1` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_2` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_3` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_4` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_5` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_option_to_product`
--

CREATE TABLE `ec_option_to_product` (
  `option_to_product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `role_label` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'all',
  `option_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_order`
--

CREATE TABLE `ec_order` (
  `order_id` int(11) NOT NULL,
  `is_demo_item` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_level` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'shopper',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderstatus_id` int(11) NOT NULL DEFAULT '5',
  `order_weight` float(15,3) NOT NULL DEFAULT '0.000',
  `sub_total` float(15,3) NOT NULL DEFAULT '0.000',
  `tax_total` float(15,3) NOT NULL DEFAULT '0.000',
  `shipping_total` float(15,3) NOT NULL DEFAULT '0.000',
  `discount_total` float(15,3) NOT NULL DEFAULT '0.000',
  `vat_total` float(15,3) NOT NULL DEFAULT '0.000',
  `vat_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `duty_total` float(15,3) NOT NULL DEFAULT '0.000',
  `gst_total` float(15,3) NOT NULL DEFAULT '0.000',
  `gst_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `pst_total` float(15,3) NOT NULL DEFAULT '0.000',
  `pst_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `hst_total` float(15,3) NOT NULL DEFAULT '0.000',
  `hst_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `grand_total` float(15,3) NOT NULL DEFAULT '0.000',
  `refund_total` float(15,3) NOT NULL DEFAULT '0.000',
  `promo_code` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `giftcard_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `use_expedited_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_carrier` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_service_code` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_address_line_1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_address_line_2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_zip` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_address_line_1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_address_line_2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_zip` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vat_registration_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_email_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_transaction_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_payer_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_viewed` tinyint(1) NOT NULL DEFAULT '0',
  `order_notes` text COLLATE utf8mb4_unicode_520_ci,
  `order_customer_notes` blob,
  `txn_id` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `payment_txn_id` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `edit_sequence` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `quickbooks_status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Not Queued',
  `credit_memo_txn_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `card_holder_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `creditcard_digits` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cc_exp_month` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cc_exp_year` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fraktjakt_order_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fraktjakt_shipment_id` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `stripe_charge_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `nets_transaction_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_id` int(11) NOT NULL DEFAULT '0',
  `order_gateway` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `affirm_charge_id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_company_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_company_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `guest_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `agreed_to_terms` tinyint(1) NOT NULL DEFAULT '0',
  `order_ip_address` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `gateway_transaction_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_orderdetail`
--

CREATE TABLE `ec_orderdetail` (
  `orderdetail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `model_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unit_price` float(15,3) NOT NULL DEFAULT '0.000',
  `total_price` float(15,3) NOT NULL DEFAULT '0.000',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `image1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `optionitem_id_1` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_2` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_3` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_4` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_5` int(11) NOT NULL DEFAULT '0',
  `optionitem_name_1` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_name_2` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_name_3` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_name_4` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_name_5` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_label_1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_label_2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_label_3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_label_4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_label_5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_price_1` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_price_2` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_price_3` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_price_4` float(15,3) NOT NULL DEFAULT '0.000',
  `optionitem_price_5` float(15,3) NOT NULL DEFAULT '0.000',
  `use_advanced_optionset` tinyint(1) NOT NULL DEFAULT '0',
  `giftcard_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipper_id` int(11) DEFAULT '0',
  `shipper_first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipper_last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `gift_card_message` text COLLATE utf8mb4_unicode_520_ci,
  `gift_card_from_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `gift_card_to_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_download` tinyint(1) NOT NULL DEFAULT '0',
  `is_giftcard` tinyint(1) NOT NULL DEFAULT '0',
  `is_taxable` tinyint(1) NOT NULL DEFAULT '1',
  `is_shippable` tinyint(1) NOT NULL DEFAULT '1',
  `download_file_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `download_key` text COLLATE utf8mb4_unicode_520_ci,
  `maximum_downloads_allowed` int(11) NOT NULL DEFAULT '0',
  `download_timelimit_seconds` int(11) DEFAULT '0',
  `is_amazon_download` tinyint(1) NOT NULL DEFAULT '0',
  `amazon_key` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `is_deconetwork` tinyint(1) NOT NULL DEFAULT '0',
  `deconetwork_id` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_product_code` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_options` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_color_code` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_product_id` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_image_link` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `gift_card_email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `include_code` tinyint(1) NOT NULL DEFAULT '0',
  `subscription_signup_fee` float(15,3) NOT NULL DEFAULT '0.000',
  `stock_adjusted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_orderstatus`
--

CREATE TABLE `ec_orderstatus` (
  `status_id` int(11) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `is_approved` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_orderstatus`
--

INSERT INTO `ec_orderstatus` (`status_id`, `order_status`, `is_approved`) VALUES
(1, 'Status Not Found', 0),
(2, 'Order Shipped', 1),
(3, 'Order Confirmed', 1),
(4, 'Order on Hold', 0),
(5, 'Order Started', 0),
(6, 'Card Approved', 1),
(7, 'Card Denied', 0),
(8, 'Third Party Pending', 0),
(9, 'Third Party Error', 0),
(10, 'Third Party Approved', 1),
(11, 'Ready for Pickup', 1),
(12, 'Pending Approval', 0),
(14, 'Direct Deposit Pending', 0),
(15, 'Direct Deposit Received', 1),
(16, 'Refunded Order', 0),
(17, 'Partial Refund', 1),
(18, 'Order Picked Up', 1),
(19, 'Order Cancelled', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ec_order_option`
--

CREATE TABLE `ec_order_option` (
  `order_option_id` int(11) NOT NULL,
  `orderdetail_id` int(11) NOT NULL DEFAULT '0',
  `option_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_name` text COLLATE utf8mb4_unicode_520_ci,
  `option_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'combo',
  `option_value` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `option_price_change` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_allow_download` tinyint(1) NOT NULL DEFAULT '1',
  `option_label` text COLLATE utf8mb4_unicode_520_ci,
  `option_to_product_id` int(11) NOT NULL DEFAULT '0',
  `option_order` int(11) NOT NULL DEFAULT '0',
  `download_override_file` text COLLATE utf8mb4_unicode_520_ci,
  `download_addition_file` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_pageoption`
--

CREATE TABLE `ec_pageoption` (
  `pageoption_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `option_type` varchar(155) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_perpage`
--

CREATE TABLE `ec_perpage` (
  `perpage_id` int(11) NOT NULL,
  `perpage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_perpage`
--

INSERT INTO `ec_perpage` (`perpage_id`, `perpage`) VALUES
(1, 50),
(2, 25),
(3, 10);

-- --------------------------------------------------------

--
-- Structure de la table `ec_pricepoint`
--

CREATE TABLE `ec_pricepoint` (
  `pricepoint_id` int(11) NOT NULL,
  `is_less_than` tinyint(1) NOT NULL DEFAULT '0',
  `is_greater_than` tinyint(1) NOT NULL DEFAULT '0',
  `low_point` float(15,3) NOT NULL DEFAULT '0.000',
  `high_point` float(15,3) DEFAULT '0.000',
  `pricepoint_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_pricepoint`
--

INSERT INTO `ec_pricepoint` (`pricepoint_id`, `is_less_than`, `is_greater_than`, `low_point`, `high_point`, `pricepoint_order`) VALUES
(1, 1, 0, 0.000, 10.000, 0),
(2, 0, 0, 25.000, 49.990, 4),
(3, 0, 0, 50.000, 99.990, 5),
(4, 0, 0, 100.000, 299.990, 6),
(5, 0, 2, 299.990, 0.000, 7),
(6, 0, 0, 10.000, 14.990, 1),
(7, 0, 0, 15.000, 19.990, 2),
(8, 0, 0, 20.000, 24.990, 3);

-- --------------------------------------------------------

--
-- Structure de la table `ec_pricetier`
--

CREATE TABLE `ec_pricetier` (
  `pricetier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `price` float(15,3) NOT NULL DEFAULT '0.000',
  `quantity` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_product`
--

CREATE TABLE `ec_product` (
  `product_id` int(11) NOT NULL,
  `is_demo_item` tinyint(1) NOT NULL DEFAULT '0',
  `model_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `activate_in_store` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `specifications` text COLLATE utf8mb4_unicode_520_ci,
  `order_completed_note` text COLLATE utf8mb4_unicode_520_ci,
  `order_completed_email_note` text COLLATE utf8mb4_unicode_520_ci,
  `order_completed_details_note` text COLLATE utf8mb4_unicode_520_ci,
  `price` float(15,3) NOT NULL DEFAULT '0.000',
  `list_price` float(15,3) NOT NULL DEFAULT '0.000',
  `product_cost` float(15,3) NOT NULL DEFAULT '0.000',
  `vat_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `handling_price` float(15,3) NOT NULL DEFAULT '0.000',
  `handling_price_each` float(15,3) NOT NULL DEFAULT '0.000',
  `stock_quantity` int(7) NOT NULL DEFAULT '0',
  `min_purchase_quantity` int(11) NOT NULL DEFAULT '0',
  `max_purchase_quantity` int(11) NOT NULL DEFAULT '0',
  `weight` float(15,3) NOT NULL DEFAULT '0.000',
  `width` double(15,3) NOT NULL DEFAULT '1.000',
  `height` double(15,3) NOT NULL DEFAULT '1.000',
  `length` double(15,3) NOT NULL DEFAULT '1.000',
  `seo_description` text COLLATE utf8mb4_unicode_520_ci,
  `seo_keywords` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `use_specifications` tinyint(1) NOT NULL DEFAULT '0',
  `use_customer_reviews` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_id` int(11) NOT NULL DEFAULT '0',
  `download_file_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_id_1` int(11) NOT NULL DEFAULT '0',
  `option_id_2` int(11) NOT NULL DEFAULT '0',
  `option_id_3` int(11) NOT NULL DEFAULT '0',
  `option_id_4` int(11) NOT NULL DEFAULT '0',
  `option_id_5` int(11) NOT NULL DEFAULT '0',
  `use_advanced_optionset` tinyint(1) NOT NULL DEFAULT '0',
  `menulevel1_id_1` int(11) NOT NULL DEFAULT '0',
  `menulevel1_id_2` int(11) NOT NULL DEFAULT '0',
  `menulevel1_id_3` int(11) NOT NULL DEFAULT '0',
  `menulevel2_id_1` int(11) NOT NULL DEFAULT '0',
  `menulevel2_id_2` int(11) NOT NULL DEFAULT '0',
  `menulevel2_id_3` int(11) NOT NULL DEFAULT '0',
  `menulevel3_id_1` int(11) NOT NULL DEFAULT '0',
  `menulevel3_id_2` int(11) NOT NULL DEFAULT '0',
  `menulevel3_id_3` int(11) NOT NULL DEFAULT '0',
  `featured_product_id_1` int(11) NOT NULL DEFAULT '0',
  `featured_product_id_2` int(11) NOT NULL DEFAULT '0',
  `featured_product_id_3` int(11) NOT NULL DEFAULT '0',
  `featured_product_id_4` int(11) NOT NULL DEFAULT '0',
  `is_giftcard` tinyint(1) NOT NULL DEFAULT '0',
  `is_download` tinyint(1) NOT NULL DEFAULT '0',
  `is_donation` tinyint(1) NOT NULL DEFAULT '0',
  `is_special` tinyint(1) NOT NULL DEFAULT '0',
  `is_taxable` tinyint(1) NOT NULL DEFAULT '1',
  `is_shippable` tinyint(1) NOT NULL DEFAULT '1',
  `is_subscription_item` tinyint(1) NOT NULL DEFAULT '0',
  `is_preorder` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` tinyint(1) NOT NULL DEFAULT '0',
  `added_to_db_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `show_on_startup` tinyint(1) NOT NULL DEFAULT '0',
  `use_optionitem_images` tinyint(1) NOT NULL DEFAULT '0',
  `use_optionitem_quantity_tracking` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `last_viewed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `show_stock_quantity` tinyint(1) NOT NULL DEFAULT '1',
  `maximum_downloads_allowed` int(11) NOT NULL DEFAULT '0',
  `download_timelimit_seconds` int(11) NOT NULL DEFAULT '0',
  `list_id` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `edit_sequence` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `quickbooks_status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Not Queued',
  `income_account_ref` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Online Sales',
  `cogs_account_ref` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Cost of Goods Sold',
  `asset_account_ref` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Inventory Asset',
  `quickbooks_parent_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `quickbooks_parent_list_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_bill_length` int(11) NOT NULL DEFAULT '1',
  `subscription_bill_period` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'M',
  `subscription_bill_duration` int(11) NOT NULL DEFAULT '0',
  `trial_period_days` int(11) NOT NULL DEFAULT '0',
  `stripe_plan_added` tinyint(1) NOT NULL DEFAULT '0',
  `subscription_plan_id` int(11) NOT NULL DEFAULT '0',
  `allow_multiple_subscription_purchases` tinyint(1) NOT NULL DEFAULT '1',
  `membership_page` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `is_amazon_download` tinyint(1) NOT NULL DEFAULT '0',
  `amazon_key` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `catalog_mode` tinyint(1) NOT NULL DEFAULT '0',
  `catalog_mode_phrase` varchar(1024) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `inquiry_mode` tinyint(1) NOT NULL DEFAULT '0',
  `inquiry_url` varchar(1024) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deconetwork` tinyint(1) NOT NULL DEFAULT '0',
  `deconetwork_mode` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'designer',
  `deconetwork_product_id` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_size_id` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_color_id` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_design_id` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `short_description` text COLLATE utf8mb4_unicode_520_ci,
  `display_type` int(11) NOT NULL DEFAULT '1',
  `image_hover_type` int(11) NOT NULL DEFAULT '3',
  `tag_type` int(11) NOT NULL DEFAULT '0',
  `tag_bg_color` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tag_text_color` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tag_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image_effect_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'none',
  `include_code` tinyint(1) NOT NULL DEFAULT '0',
  `TIC` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '00000',
  `subscription_signup_fee` float(15,3) NOT NULL DEFAULT '0.000',
  `subscription_unique_id` int(11) NOT NULL DEFAULT '0',
  `subscription_prorate` tinyint(1) NOT NULL DEFAULT '1',
  `allow_backorders` tinyint(1) NOT NULL DEFAULT '0',
  `backorder_fill_date` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_class_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_product_google_attributes`
--

CREATE TABLE `ec_product_google_attributes` (
  `product_google_attribute_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_value` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_promocode`
--

CREATE TABLE `ec_promocode` (
  `promocode_id` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `is_dollar_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_percentage_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_shipping_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_free_item_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_me_based` tinyint(1) NOT NULL DEFAULT '0',
  `by_manufacturer_id` tinyint(1) NOT NULL DEFAULT '0',
  `by_category_id` tinyint(1) NOT NULL DEFAULT '0',
  `by_product_id` tinyint(1) NOT NULL DEFAULT '0',
  `by_all_products` int(11) NOT NULL DEFAULT '0',
  `promo_dollar` float(15,3) NOT NULL DEFAULT '0.000',
  `promo_percentage` float(15,3) NOT NULL DEFAULT '0.000',
  `promo_shipping` float(15,3) NOT NULL DEFAULT '0.000',
  `promo_free_item` float(15,3) NOT NULL DEFAULT '0.000',
  `promo_for_me` float(15,3) NOT NULL DEFAULT '0.000',
  `manufacturer_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `message` blob NOT NULL,
  `max_redemptions` int(11) NOT NULL DEFAULT '999',
  `times_redeemed` int(11) NOT NULL DEFAULT '0',
  `expiration_date` datetime DEFAULT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'forever',
  `duration_in_months` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_promotion`
--

CREATE TABLE `ec_promotion` (
  `promotion_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime DEFAULT '0000-00-00 00:00:00',
  `product_id_1` int(11) NOT NULL DEFAULT '0',
  `product_id_2` int(11) NOT NULL DEFAULT '0',
  `product_id_3` int(11) NOT NULL DEFAULT '0',
  `manufacturer_id_1` int(11) NOT NULL DEFAULT '0',
  `manufacturer_id_2` int(11) NOT NULL DEFAULT '0',
  `manufacturer_id_3` int(11) NOT NULL DEFAULT '0',
  `category_id_1` int(11) NOT NULL DEFAULT '0',
  `category_id_2` int(11) NOT NULL DEFAULT '0',
  `category_id_3` int(11) NOT NULL DEFAULT '0',
  `price1` float(15,3) NOT NULL DEFAULT '0.000',
  `price2` float(15,3) NOT NULL DEFAULT '0.000',
  `price3` float(15,3) NOT NULL DEFAULT '0.000',
  `percentage1` float(15,3) NOT NULL DEFAULT '0.000',
  `percentage2` float(15,3) NOT NULL DEFAULT '0.000',
  `percentage3` float(15,3) NOT NULL DEFAULT '0.000',
  `number1` int(11) NOT NULL DEFAULT '0',
  `number2` int(11) NOT NULL DEFAULT '0',
  `number3` int(11) NOT NULL DEFAULT '0',
  `promo_limit` int(11) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_response`
--

CREATE TABLE `ec_response` (
  `response_id` int(11) NOT NULL,
  `is_error` tinyint(1) NOT NULL DEFAULT '0',
  `processor` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `response_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `response_text` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_review`
--

CREATE TABLE `ec_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `rating` int(2) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` mediumblob NOT NULL,
  `date_submitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_role`
--

CREATE TABLE `ec_role` (
  `role_id` int(11) NOT NULL,
  `role_label` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `admin_access` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_role`
--

INSERT INTO `ec_role` (`role_id`, `role_label`, `admin_access`) VALUES
(1, 'admin', 1),
(2, 'shopper', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ec_roleaccess`
--

CREATE TABLE `ec_roleaccess` (
  `roleaccess_id` int(11) NOT NULL,
  `role_label` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `admin_panel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_roleprice`
--

CREATE TABLE `ec_roleprice` (
  `roleprice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `role_label` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `role_price` float(15,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_setting`
--

CREATE TABLE `ec_setting` (
  `setting_id` int(11) NOT NULL,
  `site_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `reg_code` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `storeversion` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `storetype` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'wordpress',
  `storepage` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'store',
  `cartpage` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'cart',
  `accountpage` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'account',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Europe/London',
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'method',
  `shipping_expedite_rate` float(11,2) NOT NULL DEFAULT '0.00',
  `shipping_handling_rate` float(11,2) NOT NULL DEFAULT '0.00',
  `ups_access_license_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ups_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ups_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ups_ship_from_zip` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ups_shipper_number` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ups_country_code` varchar(9) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'US',
  `ups_weight_type` varchar(19) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'LBS',
  `ups_conversion_rate` float(9,3) NOT NULL DEFAULT '1.000',
  `usps_user_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `usps_ship_from_zip` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fedex_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fedex_account_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fedex_meter_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fedex_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fedex_ship_from_zip` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fedex_weight_units` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'LB',
  `fedex_country_code` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'US',
  `fedex_conversion_rate` float(9,3) NOT NULL DEFAULT '1.000',
  `fedex_test_account` tinyint(1) NOT NULL DEFAULT '0',
  `auspost_api_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `auspost_ship_from_zip` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `dhl_site_id` varchar(155) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `dhl_password` varchar(155) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `dhl_ship_from_country` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'US',
  `dhl_ship_from_zip` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `dhl_weight_unit` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'LB',
  `dhl_test_mode` tinyint(1) NOT NULL DEFAULT '0',
  `fraktjakt_customer_id` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fraktjakt_login_key` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fraktjakt_conversion_rate` double(15,3) NOT NULL DEFAULT '1.000',
  `fraktjakt_test_mode` tinyint(1) NOT NULL DEFAULT '0',
  `fraktjakt_address` varchar(120) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fraktjakt_city` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fraktjakt_state` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fraktjakt_zip` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fraktjakt_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ups_ship_from_state` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ups_negotiated_rates` tinyint(1) NOT NULL DEFAULT '0',
  `canadapost_username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `canadapost_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `canadapost_customer_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `canadapost_contract_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `canadapost_test_mode` tinyint(1) NOT NULL DEFAULT '0',
  `canadapost_ship_from_zip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_setting`
--

INSERT INTO `ec_setting` (`setting_id`, `site_url`, `reg_code`, `storeversion`, `storetype`, `storepage`, `cartpage`, `accountpage`, `timezone`, `shipping_method`, `shipping_expedite_rate`, `shipping_handling_rate`, `ups_access_license_number`, `ups_user_id`, `ups_password`, `ups_ship_from_zip`, `ups_shipper_number`, `ups_country_code`, `ups_weight_type`, `ups_conversion_rate`, `usps_user_name`, `usps_ship_from_zip`, `fedex_key`, `fedex_account_number`, `fedex_meter_number`, `fedex_password`, `fedex_ship_from_zip`, `fedex_weight_units`, `fedex_country_code`, `fedex_conversion_rate`, `fedex_test_account`, `auspost_api_key`, `auspost_ship_from_zip`, `dhl_site_id`, `dhl_password`, `dhl_ship_from_country`, `dhl_ship_from_zip`, `dhl_weight_unit`, `dhl_test_mode`, `fraktjakt_customer_id`, `fraktjakt_login_key`, `fraktjakt_conversion_rate`, `fraktjakt_test_mode`, `fraktjakt_address`, `fraktjakt_city`, `fraktjakt_state`, `fraktjakt_zip`, `fraktjakt_country`, `ups_ship_from_state`, `ups_negotiated_rates`, `canadapost_username`, `canadapost_password`, `canadapost_customer_number`, `canadapost_contract_id`, `canadapost_test_mode`, `canadapost_ship_from_zip`) VALUES
(1, 'localhost/Project/Project-E-Sport-Arena/Wp-Arena/wp', '', '1.0.0', 'wordpress', '6', '7', '8', 'America/Los_Angeles', 'price', 0.00, 0.00, '', '', '', '', '', '', '', 1.000, '', '', '', '', '', '', '', 'LB', 'US', 1.000, 0, '', '', '', '', '', '', '', 0, '', '', 1.000, 0, '', '', '', '', '', '', 0, '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `ec_shippingrate`
--

CREATE TABLE `ec_shippingrate` (
  `shippingrate_id` int(11) NOT NULL,
  `is_demo_item` tinyint(1) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `is_price_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_weight_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_method_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_quantity_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_percentage_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_ups_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_usps_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_fedex_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_auspost_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_dhl_based` tinyint(1) NOT NULL DEFAULT '0',
  `is_canadapost_based` tinyint(1) NOT NULL DEFAULT '0',
  `trigger_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `shipping_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `shipping_label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_order` int(11) NOT NULL DEFAULT '0',
  `shipping_code` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_override_rate` float(11,3) DEFAULT NULL,
  `free_shipping_at` float(15,3) NOT NULL DEFAULT '-1.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_shippingrate`
--

INSERT INTO `ec_shippingrate` (`shippingrate_id`, `is_demo_item`, `zone_id`, `is_price_based`, `is_weight_based`, `is_method_based`, `is_quantity_based`, `is_percentage_based`, `is_ups_based`, `is_usps_based`, `is_fedex_based`, `is_auspost_based`, `is_dhl_based`, `is_canadapost_based`, `trigger_rate`, `shipping_rate`, `shipping_label`, `shipping_order`, `shipping_code`, `shipping_override_rate`, `free_shipping_at`) VALUES
(51, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000, 5.000, '', 0, '', 0.000, -1.000);

-- --------------------------------------------------------

--
-- Structure de la table `ec_shipping_class`
--

CREATE TABLE `ec_shipping_class` (
  `shipping_class_id` int(11) NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_shipping_class_to_rate`
--

CREATE TABLE `ec_shipping_class_to_rate` (
  `shipping_class_to_rate_id` int(11) NOT NULL,
  `shipping_class_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_state`
--

CREATE TABLE `ec_state` (
  `id_sta` int(11) NOT NULL,
  `idcnt_sta` int(11) NOT NULL DEFAULT '0',
  `code_sta` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `name_sta` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `group_sta` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ship_to_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_state`
--

INSERT INTO `ec_state` (`id_sta`, `idcnt_sta`, `code_sta`, `name_sta`, `sort_order`, `group_sta`, `ship_to_active`) VALUES
(1, 223, 'AL', 'Alabama', 9, '', 1),
(2, 223, 'AK', 'Alaska', 10, '', 1),
(4, 223, 'AZ', 'Arizona', 11, '', 1),
(5, 223, 'AR', 'Arkansas', 12, '', 1),
(12, 223, 'CA', 'California', 13, '', 1),
(13, 223, 'CO', 'Colorado', 14, '', 1),
(14, 223, 'CT', 'Connecticut', 15, '', 1),
(15, 223, 'DE', 'Delaware', 16, '', 1),
(16, 223, 'DC', 'District of Columbia', 17, '', 1),
(18, 223, 'FL', 'Florida', 18, '', 1),
(19, 223, 'GA', 'Georgia', 19, '', 1),
(21, 223, 'HI', 'Hawaii', 21, '', 1),
(22, 223, 'ID', 'Idaho', 22, '', 1),
(23, 223, 'IL', 'Illinois', 23, '', 1),
(24, 223, 'IN', 'Indiana', 24, '', 1),
(25, 223, 'IA', 'Iowa', 25, '', 1),
(26, 223, 'KS', 'Kansas', 26, '', 1),
(27, 223, 'KY', 'Kentucky', 27, '', 1),
(28, 223, 'LA', 'Louisiana', 28, '', 1),
(29, 223, 'ME', 'Maine', 29, '', 1),
(31, 223, 'MD', 'Maryland', 30, '', 1),
(32, 223, 'MA', 'Massachusetts', 31, '', 1),
(33, 223, 'MI', 'Michigan', 32, '', 1),
(34, 223, 'MN', 'Minnesota', 33, '', 1),
(35, 223, 'MS', 'Mississippi', 34, '', 1),
(36, 223, 'MO', 'Missouri', 35, '', 1),
(37, 223, 'MT', 'Montana', 36, '', 1),
(38, 223, 'NE', 'Nebraska', 37, '', 1),
(39, 223, 'NV', 'Nevada', 38, '', 1),
(40, 223, 'NH', 'New Hampshire', 39, '', 1),
(41, 223, 'NJ', 'New Jersey', 40, '', 1),
(42, 223, 'NM', 'New Mexico', 41, '', 1),
(43, 223, 'NY', 'New York', 42, '', 1),
(44, 223, 'NC', 'North Carolina', 43, '', 1),
(45, 223, 'ND', 'North Dakota', 44, '', 1),
(47, 223, 'OH', 'Ohio', 45, '', 1),
(48, 223, 'OK', 'Oklahoma', 46, '', 1),
(49, 223, 'OR', 'Oregon', 47, '', 1),
(51, 223, 'PA', 'Pennsylvania', 48, '', 1),
(52, 223, 'PR', 'Puerto Rico', 49, '', 1),
(53, 223, 'RI', 'Rhode Island', 50, '', 1),
(54, 223, 'SC', 'South Carolina', 51, '', 1),
(55, 223, 'SD', 'South Dakota', 52, '', 1),
(56, 223, 'TN', 'Tennessee', 53, '', 1),
(57, 223, 'TX', 'Texas', 54, '', 1),
(58, 223, 'UT', 'Utah', 55, '', 1),
(59, 223, 'VT', 'Vermont', 56, '', 1),
(60, 223, 'VI', 'Virgin Islands', 57, '', 1),
(61, 223, 'VA', 'Virginia', 58, '', 1),
(62, 223, 'WA', 'Washington', 59, '', 1),
(63, 223, 'WV', 'West Virginia', 60, '', 1),
(64, 223, 'WI', 'Wisconsin', 61, '', 1),
(65, 223, 'WY', 'Wyoming', 62, '', 1),
(66, 38, 'AB', 'Alberta', 100, '', 1),
(67, 38, 'BC', 'British Columbia', 101, '', 1),
(68, 38, 'MB', 'Manitoba', 102, '', 1),
(69, 38, 'NF', 'Newfoundland', 103, '', 1),
(70, 38, 'NB', 'New Brunswick', 104, '', 1),
(71, 38, 'NS', 'Nova Scotia', 105, '', 1),
(72, 38, 'NT', 'Northwest Territories', 106, '', 1),
(73, 38, 'NU', 'Nunavut', 107, '', 1),
(74, 38, 'ON', 'Ontario', 108, '', 1),
(75, 38, 'PE', 'Prince Edward Island', 109, '', 1),
(76, 38, 'QC', 'Quebec', 110, '', 1),
(77, 38, 'SK', 'Saskatchewan', 111, '', 1),
(78, 38, 'YT', 'Yukon Territory', 112, '', 1),
(79, 13, 'ACT', 'Australian Capital Territory', 113, '', 1),
(80, 13, 'CX', 'Christmas Island', 114, '', 1),
(81, 13, 'CC', 'Cocos Islands', 115, '', 1),
(82, 13, 'HM', 'Heard Island and McDonald Islands', 116, '', 1),
(83, 13, 'NSW', 'New South Wales', 117, '', 1),
(84, 13, 'NF', 'Norfolk Island', 118, '', 1),
(85, 13, 'NT', 'Northern Territory', 119, '', 1),
(86, 13, 'QLD', 'Queensland', 120, '', 1),
(87, 13, 'SA', 'South Australia', 121, '', 1),
(88, 13, 'TAS', 'Tasmania', 122, '', 1),
(89, 13, 'VIC', 'Victoria', 123, '', 1),
(90, 13, 'WA', 'Western Australia', 124, '', 1),
(91, 222, 'Avon', 'Avon', 125, 'England', 1),
(92, 222, 'Bedfordshire', 'Bedfordshire', 126, 'England', 1),
(93, 222, 'Berkshire', 'Berkshire', 127, 'England', 1),
(94, 222, 'Buckinghamshire', 'Buckinghamshire', 128, 'England', 1),
(95, 222, 'Cambridgeshire', 'Cambridgeshire', 129, 'England', 1),
(96, 222, 'Cheshire', 'Cheshire', 130, 'England', 1),
(97, 222, 'Cleveland', 'Cleveland', 131, 'England', 1),
(98, 222, 'Cornwall', 'Cornwall', 132, 'England', 1),
(99, 222, 'Cumbria', 'Cumbria', 133, 'England', 1),
(100, 222, 'Derbyshire', 'Derbyshire', 134, 'England', 1),
(101, 222, 'Devon', 'Devon', 135, 'England', 1),
(102, 222, 'Dorset', 'Dorset', 136, 'England', 1),
(103, 222, 'Durham', 'Durham', 137, 'England', 1),
(104, 222, 'East Sussex', 'East Sussex', 138, 'England', 1),
(105, 222, 'Essex', 'Essex', 139, 'England', 1),
(106, 222, 'Gloucestershire', 'Gloucestershire', 140, 'England', 1),
(107, 222, 'Hampshire', 'Hampshire', 141, 'England', 1),
(108, 222, 'Herefordshire', 'Herefordshire', 142, 'England', 1),
(109, 222, 'Hertfordshire', 'Hertfordshire', 143, 'England', 1),
(110, 222, 'Isle of Wight', 'Isle of Wight', 144, 'England', 1),
(111, 222, 'Kent', 'Kent', 145, 'England', 1),
(112, 222, 'Lancashire', 'Lancashire', 146, 'England', 1),
(113, 222, 'Leicestershire', 'Leicestershire', 147, 'England', 1),
(114, 222, 'Lincolnshire', 'Lincolnshire', 148, 'England', 1),
(115, 222, 'London', 'London', 149, 'England', 1),
(116, 222, 'Merseyside', 'Merseyside', 150, 'England', 1),
(117, 222, 'Middlesex', 'Middlesex', 151, 'England', 1),
(118, 222, 'Norfolk', 'Norfolk', 152, 'England', 1),
(119, 222, 'Northamptonshire', 'Northamptonshire', 153, 'England', 1),
(120, 222, 'Northumberland', 'Northumberland', 154, 'England', 1),
(121, 222, 'North Humberside', 'North Humberside', 155, 'England', 1),
(122, 222, 'North Yorkshire', 'North Yorkshire', 156, 'England', 1),
(123, 222, 'Nottinghamshire', 'Nottinghamshire', 157, 'England', 1),
(124, 222, 'Oxfordshire', 'Oxfordshire', 158, 'England', 1),
(125, 222, 'Rutland', 'Rutland', 159, 'England', 1),
(126, 222, 'Shropshire', 'Shropshire', 160, 'England', 1),
(127, 222, 'Somerset', 'Somerset', 161, 'England', 1),
(128, 222, 'South Humberside', 'South Humberside', 162, 'England', 1),
(129, 222, 'South Yorkshire', 'South Yorkshire', 163, 'England', 1),
(130, 222, 'Staffordshire', 'Staffordshire', 164, 'England', 1),
(131, 222, 'Suffolk', 'Suffolk', 165, 'England', 1),
(132, 222, 'Surrey', 'Surrey', 166, 'England', 1),
(133, 222, 'Tyne and Wear', 'Tyne and Wear', 167, 'England', 1),
(134, 222, 'Warwickshire', 'Warwickshire', 168, 'England', 1),
(135, 222, 'West Midlands', 'West Midlands', 169, 'England', 1),
(136, 222, 'West Sussex', 'West Sussex', 170, 'England', 1),
(137, 222, 'West Yorkshire', 'West Yorkshire', 171, 'England', 1),
(138, 222, 'Wiltshire', 'Wiltshire', 172, 'England', 1),
(139, 222, 'Worcestershire', 'Worcestershire', 173, 'England', 1),
(140, 222, 'Clwyd', 'Clwyd', 174, 'Wales', 1),
(141, 222, 'Dyfed', 'Dyfed', 175, 'Wales', 1),
(142, 222, 'Gwent', 'Gwent', 176, 'Wales', 1),
(143, 222, 'Gwynedd', 'Gwynedd', 177, 'Wales', 1),
(144, 222, 'Mid Glamorgan', 'Mid Glamorgan', 178, 'Wales', 1),
(145, 222, 'Powys', 'Powys', 179, 'Wales', 1),
(146, 222, 'South Glamorgan', 'South Glamorgan', 180, 'Wales', 1),
(147, 222, 'West Glamorgan', 'West Glamorgan', 181, 'Wales', 1),
(148, 222, 'Aberdeenshire', 'Aberdeenshire', 182, 'Scotland', 1),
(149, 222, 'Angus', 'Angus', 183, 'Scotland', 1),
(150, 222, 'Argyll', 'Argyll', 184, 'Scotland', 1),
(151, 222, 'Ayrshire', 'Ayrshire', 185, 'Scotland', 1),
(152, 222, 'Banffshire', 'Banffshire', 186, 'Scotland', 1),
(153, 222, 'Berwickshire', 'Berwickshire', 187, 'Scotland', 1),
(154, 222, 'Bute', 'Bute', 188, 'Scotland', 1),
(155, 222, 'Caithness', 'Caithness', 189, 'Scotland', 1),
(156, 222, 'Clackmannanshire', 'Clackmannanshire', 190, 'Scotland', 1),
(157, 222, 'Dumfriesshire', 'Dumfriesshire', 191, 'Scotland', 1),
(158, 222, 'Dunbartonshire', 'Dunbartonshire', 192, 'Scotland', 1),
(159, 222, 'East Lothian', 'East Lothian', 193, 'Scotland', 1),
(160, 222, 'Fife', 'Fife', 194, 'Scotland', 1),
(161, 222, 'Inverness-shire', 'Inverness-shire', 195, 'Scotland', 1),
(162, 222, 'Kincardineshire', 'Kincardineshire', 196, 'Scotland', 1),
(163, 222, 'Kinross-shire', 'Kinross-shire', 197, 'Scotland', 1),
(164, 222, 'Kirkcudbrightshire', 'Kirkcudbrightshire', 198, 'Scotland', 1),
(165, 222, 'Lanarkshire', 'Lanarkshire', 199, 'Scotland', 1),
(166, 222, 'Midlothian', 'Midlothian', 200, 'Scotland', 1),
(167, 222, 'Moray', 'Moray', 201, 'Scotland', 1),
(168, 222, 'Nairnshire', 'Nairnshire', 202, 'Scotland', 1),
(169, 222, 'Orkney', 'Orkney', 203, 'Scotland', 1),
(170, 222, 'Peeblesshire', 'Peeblesshire', 204, 'Scotland', 1),
(171, 222, 'Perthshire', 'Perthshire', 205, 'Scotland', 1),
(172, 222, 'Renfrewshire', 'Renfrewshire', 206, 'Scotland', 1),
(173, 222, 'Ross-shire', 'Ross-shire', 207, 'Scotland', 1),
(174, 222, 'Roxburghshire', 'Roxburghshire', 208, 'Scotland', 1),
(175, 222, 'Selkirkshire', 'Selkirkshire', 209, 'Scotland', 1),
(176, 222, 'Shetland', 'Shetland', 210, 'Scotland', 1),
(177, 222, 'Stirlingshire', 'Stirlingshire', 211, 'Scotland', 1),
(178, 222, 'Sutherland', 'Sutherland', 212, 'Scotland', 1),
(179, 222, 'West Lothian', 'West Lothian', 213, 'Scotland', 1),
(180, 222, 'Wigtownshire', 'Wigtownshire', 214, 'Scotland', 1),
(181, 222, 'Antrim', 'Antrim', 215, 'Northern Ireland', 1),
(182, 222, 'Down', 'Down', 217, 'Northern Ireland', 1),
(183, 222, 'Armagh', 'Armagh', 216, 'Northern Ireland', 1),
(184, 222, 'Fermanagh', 'Fermanagh', 218, 'Northern Ireland', 1),
(185, 222, 'Londonderry', 'Londonderry', 219, 'Northern Ireland', 1),
(186, 222, 'Tyrone', 'Tyrone', 220, 'Northern Ireland', 1),
(187, 30, 'AL', 'Alagoas', 221, '', 1),
(188, 30, 'AM', 'Amazonas', 222, '', 1),
(189, 30, 'BA', 'Bahia', 223, '', 1),
(190, 30, 'CE', 'Cearà', 224, '', 1),
(191, 30, 'DF', 'Distrito Federal', 225, '', 1),
(192, 30, 'ES', 'Espìrito Santo', 226, '', 1),
(193, 30, 'GO', 'Goias', 227, '', 1),
(194, 30, 'MA', 'Maranhao', 228, '', 1),
(195, 30, 'MT', 'Mato Grosso', 229, '', 1),
(196, 30, 'MS', 'Mato Grosso Do Sul', 230, '', 1),
(197, 30, 'MG', 'Minas Gerais', 231, '', 1),
(198, 30, 'PA', 'Parà', 232, '', 1),
(199, 30, 'PB', 'Paraìba', 233, '', 1),
(200, 30, 'PR', 'Paranà', 234, '', 1),
(201, 30, 'PE', 'Pernambuco', 235, '', 1),
(202, 30, 'PI', 'Piauì', 236, '', 1),
(203, 30, 'RJ', 'Rio de Janeiro', 237, '', 1),
(204, 30, 'RN', 'Rio Grande do Norte', 238, '', 1),
(205, 30, 'RS', 'Dio Grande do Sul', 239, '', 1),
(206, 30, 'RO', 'Rondônia', 240, '', 1),
(207, 30, 'SC', 'Santa Catarina', 241, '', 1),
(208, 30, 'SP', 'Sao Paulo', 242, '', 1),
(209, 30, 'SE', 'Sergipe', 243, '', 1),
(210, 44, 'ANH', 'Anhui', 244, '', 1),
(211, 44, 'BEI', 'Beijing', 245, '', 1),
(212, 44, 'CHO', 'Chongqing', 246, '', 1),
(213, 44, 'FUJ', 'Fujian', 247, '', 1),
(214, 44, 'GAN', 'Gansu', 248, '', 1),
(215, 44, 'GDG', 'Guangdong', 249, '', 1),
(216, 44, 'GXI', 'Guangxi', 250, '', 1),
(217, 44, 'GUI', 'Guizhou', 251, '', 1),
(218, 44, 'HAI', 'Hainan', 252, '', 1),
(219, 44, 'HEB', 'Hebei', 253, '', 1),
(220, 44, 'HEI', 'Heilongjiang', 254, '', 1),
(221, 44, 'HEN', 'Henan', 255, '', 1),
(222, 44, 'HUB', 'Hubei', 256, '', 1),
(223, 44, 'HUN', 'Hunan', 257, '', 1),
(224, 44, 'JSU', 'Jiangsu', 258, '', 1),
(225, 44, 'JXI', 'Jiangxi', 259, '', 1),
(226, 44, 'JIL', 'Jilin', 260, '', 1),
(227, 44, 'LIA', 'Liaoning', 261, '', 1),
(228, 44, 'MON', 'Nei Mongol', 262, '', 1),
(229, 44, 'NIN', 'Ningxia', 263, '', 1),
(230, 44, 'QIN', 'Qinghai', 264, '', 1),
(231, 44, 'SHA', 'Shaanxi', 265, '', 1),
(232, 44, 'SHD', 'Shandong', 266, '', 1),
(233, 44, 'SHH', 'Shanghai', 267, '', 1),
(234, 44, 'SHX', 'Shanxi', 268, '', 1),
(235, 44, 'SIC', 'Sichuan', 269, '', 1),
(236, 44, 'TIA', 'TIanjin', 270, '', 1),
(237, 44, 'XIN', 'Xinjiang', 271, '', 1),
(238, 44, 'XIZ', 'Xizang', 272, '', 1),
(239, 44, 'YUN', 'Yunnan', 273, '', 1),
(240, 44, 'ZHE', 'Zhejiang', 274, '', 1),
(241, 99, 'AND', 'Andhra Pradesh', 275, '', 1),
(242, 99, 'ASS', 'Assam', 276, '', 1),
(243, 99, 'BIH', 'Bihar', 277, '', 1),
(244, 99, 'CHH', 'Chhattisgarh', 278, '', 1),
(245, 99, 'DEL', 'Delhi', 279, '', 1),
(246, 99, 'GOA', 'Goa', 280, '', 1),
(247, 99, 'GUJ', 'Gujarat', 281, '', 1),
(248, 99, 'HAR', 'Haryana', 282, '', 1),
(249, 99, 'HIM', 'Himachal Pradesh', 283, '', 1),
(250, 99, 'JAM', 'Jammu & Kashmir', 284, '', 1),
(251, 99, 'JHA', 'Jharkhand', 285, '', 1),
(252, 99, 'KAR', 'Karnataka', 286, '', 1),
(253, 99, 'KER', 'Kerala', 287, '', 1),
(254, 99, 'MAD', 'Madhya Pradesh', 288, '', 1),
(255, 99, 'MAH', 'Maharashtra', 289, '', 1),
(256, 99, 'MEG', 'Meghalaya', 290, '', 1),
(257, 99, 'ORI', 'Orissa', 291, '', 1),
(258, 99, 'PON', 'Pondicherry', 292, '', 1),
(259, 99, 'PUN', 'Punjab', 293, '', 1),
(260, 99, 'RAJ', 'Rajasthan', 294, '', 1),
(261, 99, 'TAM', 'Tamil Nadu', 295, '', 1),
(262, 99, 'UTT', 'Uttar Pradesh', 296, '', 1),
(263, 99, 'UTR', 'Uttaranchal', 297, '', 1),
(264, 99, 'WES', 'West Bengal', 298, '', 1),
(265, 107, 'AIC', 'Aichi', 299, '', 1),
(266, 107, 'AKT', 'Akita', 300, '', 1),
(267, 107, 'AMR', 'Aomori', 301, '', 1),
(268, 107, 'CHB', 'Chiba', 302, '', 1),
(269, 107, 'EHM', 'Ehime', 303, '', 1),
(270, 107, 'FKI', 'Fukui', 304, '', 1),
(271, 107, 'FKO', 'Fukuoka', 305, '', 1),
(272, 107, 'FSM', 'Fukushima', 306, '', 1),
(273, 107, 'GFU', 'Gifu', 307, '', 1),
(274, 107, 'GUM', 'Gunma', 308, '', 1),
(275, 107, 'HRS', 'Hiroshima', 309, '', 1),
(276, 107, 'HKD', 'Hokkaido', 310, '', 1),
(277, 107, 'HYG', 'Hyogo', 311, '', 1),
(278, 107, 'IBR', 'Ibaraki', 312, '', 1),
(279, 107, 'IKW', 'Ishikawa', 313, '', 1),
(280, 107, 'IWT', 'Iwate', 314, '', 1),
(281, 107, 'KGW', 'Kagawa', 315, '', 1),
(282, 107, 'KGS', 'Kagoshima', 316, '', 1),
(283, 107, 'KNG', 'Kanagawa', 317, '', 1),
(284, 107, 'KCH', 'Kochi', 318, '', 1),
(285, 107, 'KMM', 'Kumamoto', 319, '', 1),
(286, 107, 'KYT', 'Kyoto', 320, '', 1),
(287, 107, 'MIE', 'Mie', 321, '', 1),
(288, 107, 'MYG', 'Miyagi', 322, '', 1),
(289, 107, 'MYZ', 'Miyazaki', 323, '', 1),
(290, 107, 'NGN', 'Nagano', 324, '', 1),
(291, 107, 'NGS', 'Nagasaki', 325, '', 1),
(292, 107, 'NRA', 'Nara', 326, '', 1),
(293, 107, 'NGT', 'Niigata', 327, '', 1),
(294, 107, 'OTA', 'Oita', 328, '', 1),
(295, 107, 'OKY', 'Okayama', 329, '', 1),
(296, 107, 'OKN', 'Okinawa', 330, '', 1),
(297, 107, 'OSK', 'Osaka', 331, '', 1),
(298, 107, 'SAG', 'Saga', 332, '', 1),
(299, 107, 'STM', 'Saitama', 333, '', 1),
(300, 107, 'SHG', 'Shiga', 334, '', 1),
(301, 107, 'SMN', 'Shimane', 335, '', 1),
(302, 107, 'SZK', 'Shizuoka', 336, '', 1),
(303, 107, 'TOC', 'Tochigi', 337, '', 1),
(304, 107, 'TKS', 'Tokushima', 338, '', 1),
(305, 107, 'TKY', 'Tokyo', 335, '', 1),
(306, 107, 'TTR', 'Tottori', 336, '', 1),
(307, 107, 'TYM', 'Toyama', 337, '', 1),
(308, 107, 'WKY', 'Wakayama', 338, '', 1),
(309, 107, 'YGT', 'Yamagata', 339, '', 1),
(310, 107, 'YGC', 'Yamaguchi', 340, '', 1),
(311, 107, 'YNS', 'Yamanashi', 341, '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ec_subscriber`
--

CREATE TABLE `ec_subscriber` (
  `subscriber_id` int(11) NOT NULL,
  `email` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_subscription`
--

CREATE TABLE `ec_subscription` (
  `subscription_id` int(11) NOT NULL,
  `subscription_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'paypal',
  `subscription_status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Active',
  `title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_country` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'US',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `model_number` varchar(510) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `price` double(21,3) NOT NULL DEFAULT '0.000',
  `payment_length` int(11) NOT NULL DEFAULT '1',
  `payment_period` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `payment_duration` int(11) NOT NULL DEFAULT '0',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_payment_date` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `next_payment_date` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `number_payments_completed` int(11) NOT NULL DEFAULT '1',
  `paypal_txn_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_txn_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_subscr_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `stripe_subscription_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `num_failed_payment` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_subscription_plan`
--

CREATE TABLE `ec_subscription_plan` (
  `subscription_plan_id` int(11) NOT NULL,
  `plan_title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `can_downgrade` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_taxrate`
--

CREATE TABLE `ec_taxrate` (
  `taxrate_id` int(11) NOT NULL,
  `tax_by_state` tinyint(1) NOT NULL DEFAULT '0',
  `tax_by_country` tinyint(1) NOT NULL DEFAULT '0',
  `tax_by_duty` tinyint(1) NOT NULL DEFAULT '0',
  `tax_by_vat` tinyint(1) NOT NULL DEFAULT '0',
  `tax_by_single_vat` tinyint(1) NOT NULL DEFAULT '0',
  `tax_by_all` tinyint(1) NOT NULL DEFAULT '0',
  `state_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `country_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `duty_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `vat_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `vat_added` tinyint(1) NOT NULL DEFAULT '0',
  `vat_included` tinyint(1) NOT NULL DEFAULT '0',
  `all_rate` float(15,3) NOT NULL DEFAULT '0.000',
  `state_code` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country_code` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vat_country_code` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `duty_exempt_country_code` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_tempcart`
--

CREATE TABLE `ec_tempcart` (
  `tempcart_id` int(11) NOT NULL,
  `session_id` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) DEFAULT '0',
  `grid_quantity` int(11) DEFAULT '0',
  `gift_card_message` blob,
  `gift_card_from_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `gift_card_to_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `optionitem_id_1` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_2` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_3` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_4` int(11) NOT NULL DEFAULT '0',
  `optionitem_id_5` int(11) NOT NULL DEFAULT '0',
  `donation_price` float(15,3) NOT NULL DEFAULT '0.000',
  `last_changed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deconetwork` tinyint(1) NOT NULL DEFAULT '0',
  `deconetwork_id` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_product_code` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_options` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_edit_link` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_color_code` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_product_id` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_image_link` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `deconetwork_discount` float(15,3) NOT NULL DEFAULT '0.000',
  `deconetwork_tax` float(15,3) NOT NULL DEFAULT '0.000',
  `deconetwork_total` float(15,3) NOT NULL DEFAULT '0.000',
  `deconetwork_version` int(11) NOT NULL DEFAULT '1',
  `gift_card_email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `abandoned_cart_email_sent` int(11) NOT NULL DEFAULT '0',
  `hide_from_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_tempcart_data`
--

CREATE TABLE `ec_tempcart_data` (
  `tempcart_data_id` int(11) NOT NULL,
  `tempcart_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `session_id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `giftcard` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_company_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_address_line_1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_address_line_2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_zip` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_selector` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_company_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_address_line_2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_address_line_1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_zip` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `create_account` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_notes` text COLLATE utf8mb4_unicode_520_ci,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `estimate_shipping_zip` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `expedited_shipping` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `estimate_shipping_country` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `is_guest` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `guest_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_option1` text COLLATE utf8mb4_unicode_520_ci,
  `subscription_option2` text COLLATE utf8mb4_unicode_520_ci,
  `subscription_option3` text COLLATE utf8mb4_unicode_520_ci,
  `subscription_option4` text COLLATE utf8mb4_unicode_520_ci,
  `subscription_option5` text COLLATE utf8mb4_unicode_520_ci,
  `subscription_advanced_option` text COLLATE utf8mb4_unicode_520_ci,
  `subscription_quantity` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `convert_to` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `translate_to` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `taxcloud_tax_amount` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `taxcloud_address_verified` tinyint(1) NOT NULL DEFAULT '0',
  `perpage` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vat_registration_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_tempcart_optionitem`
--

CREATE TABLE `ec_tempcart_optionitem` (
  `tempcart_optionitem_id` int(11) NOT NULL,
  `tempcart_id` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  `optionitem_id` int(11) NOT NULL DEFAULT '0',
  `optionitem_value` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `optionitem_model_number` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_tempcart_optionitem`
--

INSERT INTO `ec_tempcart_optionitem` (`tempcart_optionitem_id`, `tempcart_id`, `option_id`, `optionitem_id`, `optionitem_value`, `session_id`, `optionitem_model_number`) VALUES
(1, 999999999, 3, 3, 'test', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ec_timezone`
--

CREATE TABLE `ec_timezone` (
  `timezone_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `identifier` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_timezone`
--

INSERT INTO `ec_timezone` (`timezone_id`, `name`, `identifier`) VALUES
(1, '(GMT-12:00) International Date Line West', 'Pacific/Wake'),
(2, '(GMT-11:00) Midway Island', 'Pacific/Apia'),
(3, '(GMT-11:00) Samoa', 'Pacific/Apia'),
(4, '(GMT-10:00) Hawaii', 'Pacific/Honolulu'),
(5, '(GMT-09:00) Alaska', 'America/Anchorage'),
(6, '(GMT-08:00) Pacific Time (US & Canada) Tijuana', 'America/Los_Angeles'),
(7, '(GMT-07:00) Arizona', 'America/Phoenix'),
(8, '(GMT-07:00) Chihuahua', 'America/Chihuahua'),
(9, '(GMT-07:00) La Paz', 'America/Chihuahua'),
(10, '(GMT-07:00) Mazatlan', 'America/Chihuahua'),
(11, '(GMT-07:00) Mountain Time (US & Canada)', 'America/Denver'),
(12, '(GMT-06:00) Central America', 'America/Managua'),
(13, '(GMT-06:00) Central Time (US & Canada)', 'America/Chicago'),
(14, '(GMT-06:00) Guadalajara', 'America/Mexico_City'),
(15, '(GMT-06:00) Mexico City', 'America/Mexico_City'),
(16, '(GMT-06:00) Monterrey', 'America/Mexico_City'),
(17, '(GMT-06:00) Saskatchewan', 'America/Regina'),
(18, '(GMT-05:00) Bogota', 'America/Bogota'),
(19, '(GMT-05:00) Eastern Time (US & Canada)', 'America/New_York'),
(20, '(GMT-05:00) Indiana (East)', 'America/Indiana/Indianapolis'),
(21, '(GMT-05:00) Lima', 'America/Bogota'),
(22, '(GMT-05:00) Quito', 'America/Bogota'),
(23, '(GMT-04:00) Atlantic Time (Canada)', 'America/Halifax'),
(24, '(GMT-04:00) Caracas', 'America/Caracas'),
(25, '(GMT-04:00) La Paz', 'America/Caracas'),
(26, '(GMT-04:00) Santiago', 'America/Santiago'),
(27, '(GMT-03:30) Newfoundland', 'America/St_Johns'),
(28, '(GMT-03:00) Brasilia', 'America/Sao_Paulo'),
(29, '(GMT-03:00) Buenos Aires', 'America/Argentina/Buenos_Aires'),
(30, '(GMT-03:00) Georgetown', 'America/Argentina/Buenos_Aires'),
(31, '(GMT-03:00) Greenland', 'America/Godthab'),
(32, '(GMT-02:00) Mid-Atlantic', 'America/Noronha'),
(33, '(GMT-01:00) Azores', 'Atlantic/Azores'),
(34, '(GMT-01:00) Cape Verde Is.', 'Atlantic/Cape_Verde'),
(35, '(GMT) Casablanca', 'Africa/Casablanca'),
(36, '(GMT) Edinburgh', 'Europe/London'),
(37, '(GMT) Greenwich Mean Time : Dublin', 'Europe/London'),
(38, '(GMT) Lisbon', 'Europe/London'),
(39, '(GMT) London', 'Europe/London'),
(40, '(GMT) Monrovia', 'Africa/Casablanca'),
(41, '(GMT+01:00) Amsterdam', 'Europe/Berlin'),
(42, '(GMT+01:00) Belgrade', 'Europe/Belgrade'),
(43, '(GMT+01:00) Berlin', 'Europe/Berlin'),
(44, '(GMT+01:00) Bern', 'Europe/Berlin'),
(45, '(GMT+01:00) Bratislava', 'Europe/Belgrade'),
(46, '(GMT+01:00) Brussels', 'Europe/Paris'),
(47, '(GMT+01:00) Budapest', 'Europe/Belgrade'),
(48, '(GMT+01:00) Copenhagen', 'Europe/Paris'),
(49, '(GMT+01:00) Ljubljana', 'Europe/Belgrade'),
(50, '(GMT+01:00) Madrid', 'Europe/Paris'),
(51, '(GMT+01:00) Paris', 'Europe/Paris'),
(52, '(GMT+01:00) Prague', 'Europe/Belgrade'),
(53, '(GMT+01:00) Rome', 'Europe/Berlin'),
(54, '(GMT+01:00) Sarajevo', 'Europe/Sarajevo'),
(55, '(GMT+01:00) Skopje', 'Europe/Sarajevo'),
(56, '(GMT+01:00) Stockholm', 'Europe/Berlin'),
(57, '(GMT+01:00) Vienna', 'Europe/Berlin'),
(58, '(GMT+01:00) Warsaw', 'Europe/Sarajevo'),
(59, '(GMT+01:00) West Central Africa', 'Africa/Lagos'),
(60, '(GMT+01:00) Zagreb', 'Europe/Sarajevo'),
(61, '(GMT+02:00) Athens', 'Europe/Istanbul'),
(62, '(GMT+02:00) Bucharest', 'Europe/Bucharest'),
(63, '(GMT+02:00) Cairo', 'Africa/Cairo'),
(64, '(GMT+02:00) Harare', 'Africa/Johannesburg'),
(65, '(GMT+02:00) Helsinki', 'Europe/Helsinki'),
(66, '(GMT+02:00) Istanbul', 'Europe/Istanbul'),
(67, '(GMT+02:00) Jerusalem', 'Asia/Jerusalem'),
(68, '(GMT+02:00) Kyiv', 'Europe/Helsinki'),
(69, '(GMT+02:00) Minsk', 'Europe/Istanbul'),
(70, '(GMT+02:00) Pretoria', 'Africa/Johannesburg'),
(71, '(GMT+02:00) Riga', 'Europe/Helsinki'),
(72, '(GMT+02:00) Sofia', 'Europe/Helsinki'),
(73, '(GMT+02:00) Tallinn', 'Europe/Helsinki'),
(74, '(GMT+02:00) Vilnius', 'Europe/Helsinki'),
(75, '(GMT+03:00) Baghdad', 'Asia/Baghdad'),
(76, '(GMT+03:00) Kuwait', 'Asia/Riyadh'),
(77, '(GMT+03:00) Moscow', 'Europe/Moscow'),
(78, '(GMT+03:00) Nairobi', 'Africa/Nairobi'),
(79, '(GMT+03:00) Riyadh', 'Asia/Riyadh'),
(80, '(GMT+03:00) St. Petersburg', 'Europe/Moscow'),
(81, '(GMT+03:00) Volgograd', 'Europe/Moscow'),
(82, '(GMT+03:30) Tehran', 'Asia/Tehran'),
(83, '(GMT+04:00) Abu Dhabi', 'Asia/Muscat'),
(84, '(GMT+04:00) Baku', 'Asia/Tbilisi'),
(85, '(GMT+04:00) Muscat', 'Asia/Muscat'),
(86, '(GMT+04:00) Tbilisi', 'Asia/Tbilisi'),
(87, '(GMT+04:00) Yerevan', 'Asia/Tbilisi'),
(88, '(GMT+04:30) Kabul', 'Asia/Kabul'),
(89, '(GMT+05:00) Ekaterinburg', 'Asia/Yekaterinburg'),
(90, '(GMT+05:00) Islamabad', 'Asia/Karachi'),
(91, '(GMT+05:00) Karachi', 'Asia/Karachi'),
(92, '(GMT+05:00) Tashkent', 'Asia/Karachi'),
(93, '(GMT+05:30) Chennai', 'Asia/Calcutta'),
(94, '(GMT+05:30) Kolkata', 'Asia/Calcutta'),
(95, '(GMT+05:30) Mumbai', 'Asia/Calcutta'),
(96, '(GMT+05:30) New Delhi', 'Asia/Calcutta'),
(97, '(GMT+05:45) Kathmandu', 'Asia/Katmandu'),
(98, '(GMT+06:00) Almaty', 'Asia/Novosibirsk'),
(99, '(GMT+06:00) Astana', 'Asia/Dhaka'),
(100, '(GMT+06:00) Dhaka', 'Asia/Dhaka'),
(101, '(GMT+06:00) Novosibirsk', 'Asia/Novosibirsk'),
(102, '(GMT+06:00) Sri Jayawardenepura', 'Asia/Colombo'),
(103, '(GMT+06:30) Rangoon', 'Asia/Rangoon'),
(104, '(GMT+07:00) Bangkok', 'Asia/Bangkok'),
(105, '(GMT+07:00) Hanoi', 'Asia/Bangkok'),
(106, '(GMT+07:00) Jakarta', 'Asia/Bangkok'),
(107, '(GMT+07:00) Krasnoyarsk', 'Asia/Krasnoyarsk'),
(108, '(GMT+08:00) Beijing', 'Asia/Hong_Kong'),
(109, '(GMT+08:00) Chongqing', 'Asia/Hong_Kong'),
(110, '(GMT+08:00) Hong Kong', 'Asia/Hong_Kong'),
(111, '(GMT+08:00) Irkutsk', 'Asia/Irkutsk'),
(112, '(GMT+08:00) Kuala Lumpur', 'Asia/Singapore'),
(113, '(GMT+08:00) Perth', 'Australia/Perth'),
(114, '(GMT+08:00) Singapore', 'Asia/Singapore'),
(115, '(GMT+08:00) Taipei', 'Asia/Taipei'),
(116, '(GMT+08:00) Ulaan Bataar', 'Asia/Irkutsk'),
(117, '(GMT+08:00) Urumqi', 'Asia/Hong_Kong'),
(118, '(GMT+09:00) Osaka', 'Asia/Tokyo'),
(119, '(GMT+09:00) Sapporo', 'Asia/Tokyo'),
(120, '(GMT+09:00) Seoul', 'Asia/Seoul'),
(121, '(GMT+09:00) Tokyo', 'Asia/Tokyo'),
(122, '(GMT+09:00) Yakutsk', 'Asia/Yakutsk'),
(123, '(GMT+09:30) Adelaide', 'Australia/Adelaide'),
(124, '(GMT+09:30) Darwin', 'Australia/Darwin'),
(125, '(GMT+10:00) Brisbane', 'Australia/Brisbane'),
(126, '(GMT+10:00) Canberra', 'Australia/Sydney'),
(127, '(GMT+10:00) Guam', 'Pacific/Guam'),
(128, '(GMT+10:00) Hobart', 'Australia/Hobart'),
(129, '(GMT+10:00) Melbourne', 'Australia/Sydney'),
(130, '(GMT+10:00) Port Moresby', 'Pacific/Guam'),
(131, '(GMT+10:00) Sydney', 'Australia/Sydney'),
(132, '(GMT+10:00) Vladivostok', 'Asia/Vladivostok'),
(133, '(GMT+11:00) Magadan', 'Asia/Magadan'),
(134, '(GMT+11:00) New Caledonia', 'Asia/Magadan'),
(135, '(GMT+11:00) Solomon Is.', 'Asia/Magadan'),
(136, '(GMT+12:00) Auckland', 'Pacific/Auckland'),
(137, '(GMT+12:00) Fiji', 'Pacific/Fiji'),
(138, '(GMT+12:00) Kamchatka', 'Pacific/Fiji'),
(139, '(GMT+12:00) Marshall Is.', 'Pacific/Fiji'),
(140, '(GMT+12:00) Wellington', 'Pacific/Auckland');

-- --------------------------------------------------------

--
-- Structure de la table `ec_user`
--

CREATE TABLE `ec_user` (
  `user_id` int(11) NOT NULL,
  `is_demo_item` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `list_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `edit_sequence` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `quickbooks_status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Not Queued',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `default_billing_address_id` int(11) NOT NULL DEFAULT '0',
  `default_shipping_address_id` int(11) NOT NULL DEFAULT '0',
  `user_level` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'shopper',
  `is_subscriber` tinyint(1) NOT NULL DEFAULT '0',
  `realauth_registered` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_customer_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `default_card_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `default_card_last4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `exclude_tax` tinyint(1) NOT NULL DEFAULT '0',
  `exclude_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `user_notes` text COLLATE utf8mb4_unicode_520_ci,
  `vat_registration_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_webhook`
--

CREATE TABLE `ec_webhook` (
  `webhook_id` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `webhook_type` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `webhook_data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ec_zone`
--

CREATE TABLE `ec_zone` (
  `zone_id` int(11) NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_zone`
--

INSERT INTO `ec_zone` (`zone_id`, `zone_name`) VALUES
(1, 'North America'),
(2, 'South America'),
(3, 'Europe'),
(4, 'Africa'),
(5, 'Asia'),
(6, 'Australia'),
(7, 'Oceania'),
(8, 'Lower 48 States'),
(9, 'Alaska and Hawaii');

-- --------------------------------------------------------

--
-- Structure de la table `ec_zone_to_location`
--

CREATE TABLE `ec_zone_to_location` (
  `zone_to_location_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `iso2_cnt` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `code_sta` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ec_zone_to_location`
--

INSERT INTO `ec_zone_to_location` (`zone_to_location_id`, `zone_id`, `iso2_cnt`, `code_sta`) VALUES
(1, 1, 'AI', ''),
(2, 1, 'AQ', ''),
(3, 1, 'AW', ''),
(4, 1, 'BS', ''),
(5, 1, 'BB', ''),
(6, 1, 'BM', ''),
(7, 1, 'BZ', ''),
(8, 1, 'CA', ''),
(9, 1, 'KY', ''),
(10, 1, 'CR', ''),
(11, 1, 'CU', ''),
(12, 1, 'DM', ''),
(13, 1, 'DO', ''),
(14, 1, 'SV', ''),
(15, 1, 'GL', ''),
(16, 1, 'GD', ''),
(17, 1, 'GP', ''),
(18, 1, 'GT', ''),
(19, 1, 'HT', ''),
(20, 1, 'HN', ''),
(21, 1, 'JM', ''),
(22, 1, 'MQ', ''),
(23, 1, 'MX', ''),
(24, 1, 'MS', ''),
(25, 1, 'NI', ''),
(26, 1, 'PA', ''),
(27, 1, 'PR', ''),
(28, 1, 'KN', ''),
(29, 1, 'LC', ''),
(30, 1, 'TT', ''),
(31, 1, 'TC', ''),
(32, 1, 'US', ''),
(33, 1, 'VI', ''),
(34, 2, 'AR', ''),
(35, 2, 'BO', ''),
(36, 2, 'BR', ''),
(37, 2, 'CL', ''),
(38, 2, 'CO', ''),
(39, 2, 'EC', ''),
(40, 2, 'GF', ''),
(41, 2, 'GY', ''),
(42, 2, 'PY', ''),
(43, 2, 'PE', ''),
(44, 2, 'SR', ''),
(45, 2, 'UY', ''),
(46, 2, 'VE', ''),
(47, 6, 'AU', ''),
(48, 7, 'AS', ''),
(49, 7, 'AU', ''),
(50, 7, 'CK', ''),
(51, 7, 'FJ', ''),
(52, 7, 'PF', ''),
(53, 7, 'GU', ''),
(54, 7, 'KI', ''),
(55, 7, 'MH', ''),
(56, 7, 'NR', ''),
(57, 7, 'NC', ''),
(58, 7, 'NZ', ''),
(59, 7, 'NU', ''),
(60, 7, 'NF', ''),
(61, 7, 'PW', ''),
(62, 7, 'PG', ''),
(63, 7, 'PN', ''),
(64, 7, 'WS', ''),
(65, 7, 'SB', ''),
(66, 7, 'TK', ''),
(67, 7, 'TO', ''),
(68, 7, 'TV', ''),
(69, 7, 'VU', ''),
(70, 7, 'WF', ''),
(71, 3, 'AL', ''),
(72, 3, 'AD', ''),
(73, 3, 'AT', ''),
(74, 3, 'BY', ''),
(75, 3, 'BE', ''),
(76, 3, 'BG', ''),
(77, 3, 'HR', ''),
(78, 3, 'CZ', ''),
(79, 3, 'DK', ''),
(80, 3, 'EE', ''),
(81, 3, 'FO', ''),
(82, 3, 'FI', ''),
(83, 3, 'FR', ''),
(84, 3, 'DE', ''),
(85, 3, 'GI', ''),
(86, 3, 'GR', ''),
(87, 3, 'HU', ''),
(88, 3, 'IS', ''),
(89, 3, 'IE', ''),
(90, 3, 'IT', ''),
(91, 3, 'LV', ''),
(92, 3, 'LI', ''),
(93, 3, 'LT', ''),
(94, 3, 'LU', ''),
(95, 3, 'MT', ''),
(96, 3, 'MC', ''),
(97, 3, 'NL', ''),
(98, 3, 'NO', ''),
(99, 3, 'PL', ''),
(100, 3, 'PT', ''),
(101, 3, 'RO', ''),
(102, 3, 'RU', ''),
(103, 3, 'SM', ''),
(104, 3, 'SI', ''),
(105, 3, 'ES', ''),
(106, 3, 'SE', ''),
(107, 3, 'CH', ''),
(108, 3, 'UA', ''),
(109, 3, 'GB', ''),
(110, 4, 'DZ', ''),
(111, 4, 'AO', ''),
(112, 4, 'BJ', ''),
(113, 4, 'BW', ''),
(114, 4, 'BF', ''),
(115, 4, 'BI', ''),
(116, 4, 'CM', ''),
(117, 4, 'CV', ''),
(118, 4, 'TD', ''),
(119, 4, 'KM', ''),
(120, 4, 'CG', ''),
(121, 4, 'CI', ''),
(122, 4, 'DJ', ''),
(123, 4, 'EG', ''),
(124, 4, 'GQ', ''),
(125, 4, 'ER', ''),
(126, 4, 'ET', ''),
(127, 4, 'GA', ''),
(128, 4, 'GM', ''),
(129, 4, 'GH', ''),
(130, 4, 'GN', ''),
(131, 4, 'GW', ''),
(132, 4, 'KE', ''),
(133, 4, 'LS', ''),
(134, 4, 'LR', ''),
(135, 4, 'MG', ''),
(136, 4, 'MW', ''),
(137, 4, 'ML', ''),
(138, 4, 'MR', ''),
(139, 4, 'MU', ''),
(140, 4, 'YT', ''),
(141, 4, 'MA', ''),
(142, 4, 'MZ', ''),
(143, 4, 'NA', ''),
(144, 4, 'NE', ''),
(145, 4, 'NG', ''),
(146, 4, 'RE', ''),
(147, 4, 'RW', ''),
(148, 4, 'ST', ''),
(149, 4, 'SN', ''),
(150, 4, 'SC', ''),
(151, 4, 'SL', ''),
(152, 4, 'SO', ''),
(153, 4, 'ZA', ''),
(154, 4, 'SD', ''),
(155, 4, 'SZ', ''),
(156, 4, 'TG', ''),
(157, 4, 'TN', ''),
(158, 4, 'UG', ''),
(159, 4, 'ZM', ''),
(160, 4, 'ZW', ''),
(161, 5, 'AF', ''),
(162, 5, 'AM', ''),
(163, 5, 'AZ', ''),
(164, 5, 'BH', ''),
(165, 5, 'BD', ''),
(166, 5, 'BT', ''),
(167, 5, 'BN', ''),
(168, 5, 'KH', ''),
(169, 5, 'CN', ''),
(170, 5, 'CX', ''),
(171, 5, 'CY', ''),
(172, 5, 'TP', ''),
(173, 5, 'GE', ''),
(174, 5, 'HK', ''),
(175, 5, 'IN', ''),
(176, 5, 'ID', ''),
(177, 5, 'IQ', ''),
(178, 5, 'IL', ''),
(179, 5, 'JP', ''),
(180, 5, 'JO', ''),
(181, 5, 'KZ', ''),
(182, 5, 'KW', ''),
(183, 5, 'KG', ''),
(184, 5, 'LB', ''),
(185, 5, 'MO', ''),
(186, 5, 'MY', ''),
(187, 5, 'MV', ''),
(188, 5, 'MN', ''),
(189, 5, 'MM', ''),
(190, 5, 'NP', ''),
(191, 5, 'OM', ''),
(192, 5, 'PK', ''),
(193, 5, 'PH', ''),
(194, 5, 'QA', ''),
(195, 5, 'SA', ''),
(196, 5, 'SG', ''),
(197, 5, 'LK', ''),
(198, 5, 'TW', ''),
(199, 5, 'TJ', ''),
(200, 5, 'TH', ''),
(201, 5, 'TR', ''),
(202, 5, 'TM', ''),
(203, 5, 'AE', ''),
(204, 5, 'UZ', ''),
(205, 5, 'VN', ''),
(206, 5, 'YE', ''),
(207, 9, 'US', 'HI'),
(208, 9, 'US', 'AK'),
(209, 8, 'US', 'AL'),
(210, 8, 'US', 'AZ'),
(211, 8, 'US', 'AR'),
(212, 8, 'US', 'CA'),
(213, 8, 'US', 'CO'),
(214, 8, 'US', 'CT'),
(215, 8, 'US', 'DE'),
(216, 8, 'US', 'FL'),
(217, 8, 'US', 'GA'),
(218, 8, 'US', 'ID'),
(219, 8, 'US', 'IL'),
(220, 8, 'US', 'IN'),
(221, 8, 'US', 'IA'),
(222, 8, 'US', 'KS'),
(223, 8, 'US', 'KY'),
(224, 8, 'US', 'LA'),
(225, 8, 'US', 'ME'),
(226, 8, 'US', 'MD'),
(227, 8, 'US', 'MA'),
(228, 8, 'US', 'MI'),
(229, 8, 'US', 'MN'),
(230, 8, 'US', 'MS'),
(231, 8, 'US', 'MO'),
(232, 8, 'US', 'MT'),
(233, 8, 'US', 'NE'),
(234, 8, 'US', 'NV'),
(235, 8, 'US', 'NH'),
(236, 8, 'US', 'NJ'),
(237, 8, 'US', 'NM'),
(238, 8, 'US', 'NY'),
(239, 8, 'US', 'NC'),
(240, 8, 'US', 'ND'),
(241, 8, 'US', 'OH'),
(242, 8, 'US', 'OK'),
(243, 8, 'US', 'OR'),
(244, 8, 'US', 'PA'),
(245, 8, 'US', 'RI'),
(246, 8, 'US', 'SC'),
(247, 8, 'US', 'SD'),
(248, 8, 'US', 'TN'),
(249, 8, 'US', 'TX'),
(250, 8, 'US', 'UT'),
(251, 8, 'US', 'VT'),
(252, 8, 'US', 'VA'),
(253, 8, 'US', 'WA'),
(254, 8, 'US', 'WV'),
(255, 8, 'US', 'WI'),
(256, 8, 'US', 'WY'),
(257, 3, 'DC', ''),
(258, 8, 'US', 'DC');

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Cours/Wordpress/Projet/ATTENTION_DOSSIER_PROJET/Project-E-Sport-Arena/Wp-Arena/wp', 'yes'),
(2, 'home', 'http://localhost/Cours/Wordpress/Projet/ATTENTION_DOSSIER_PROJET/Project-E-Sport-Arena/Wp-Arena/', 'yes'),
(3, 'blogname', 'E Sport Arena Bordeaux', 'yes'),
(4, 'blogdescription', 'Esport arena bordeaux', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'arenambj@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:139:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"tournoi/?$\";s:30:\"index.php?post_type=tournament\";s:40:\"tournoi/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=tournament&feed=$matches[1]\";s:35:\"tournoi/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=tournament&feed=$matches[1]\";s:27:\"tournoi/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=tournament&paged=$matches[1]\";s:56:\"^Project/Project-E-Sport-Arena/Wp-Arena/store/([^/]*)/?$\";s:30:\"index.php?ec_store=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"tournoi/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"tournoi/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"tournoi/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"tournoi/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"tournoi/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"tournoi/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"tournoi/([^/]+)/embed/?$\";s:43:\"index.php?tournament=$matches[1]&embed=true\";s:28:\"tournoi/([^/]+)/trackback/?$\";s:37:\"index.php?tournament=$matches[1]&tb=1\";s:48:\"tournoi/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?tournament=$matches[1]&feed=$matches[2]\";s:43:\"tournoi/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?tournament=$matches[1]&feed=$matches[2]\";s:36:\"tournoi/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?tournament=$matches[1]&paged=$matches[2]\";s:43:\"tournoi/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?tournament=$matches[1]&cpage=$matches[2]\";s:32:\"tournoi/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?tournament=$matches[1]&page=$matches[2]\";s:24:\"tournoi/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"tournoi/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"tournoi/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"tournoi/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"tournoi/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"tournoi/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"jeu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?jeu=$matches[1]&feed=$matches[2]\";s:39:\"jeu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?jeu=$matches[1]&feed=$matches[2]\";s:20:\"jeu/([^/]+)/embed/?$\";s:36:\"index.php?jeu=$matches[1]&embed=true\";s:32:\"jeu/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?jeu=$matches[1]&paged=$matches[2]\";s:14:\"jeu/([^/]+)/?$\";s:25:\"index.php?jeu=$matches[1]\";s:45:\"team/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:40:\"team/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:21:\"team/([^/]+)/embed/?$\";s:37:\"index.php?team=$matches[1]&embed=true\";s:33:\"team/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&paged=$matches[2]\";s:15:\"team/([^/]+)/?$\";s:26:\"index.php?team=$matches[1]\";s:72:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:82:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:102:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:97:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:97:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:78:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:61:\"Project/Project-E-Sport-Arena/Wp-Arena/store/([^/]+)/embed/?$\";s:41:\"index.php?ec_store=$matches[1]&embed=true\";s:65:\"Project/Project-E-Sport-Arena/Wp-Arena/store/([^/]+)/trackback/?$\";s:35:\"index.php?ec_store=$matches[1]&tb=1\";s:85:\"Project/Project-E-Sport-Arena/Wp-Arena/store/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?ec_store=$matches[1]&feed=$matches[2]\";s:80:\"Project/Project-E-Sport-Arena/Wp-Arena/store/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?ec_store=$matches[1]&feed=$matches[2]\";s:73:\"Project/Project-E-Sport-Arena/Wp-Arena/store/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?ec_store=$matches[1]&paged=$matches[2]\";s:80:\"Project/Project-E-Sport-Arena/Wp-Arena/store/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?ec_store=$matches[1]&cpage=$matches[2]\";s:69:\"Project/Project-E-Sport-Arena/Wp-Arena/store/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?ec_store=$matches[1]&page=$matches[2]\";s:61:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:71:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:91:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:86:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:86:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:67:\"Project/Project-E-Sport-Arena/Wp-Arena/store/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:35:\"oarena-settings/oarena-settings.php\";i:1;s:31:\"what-the-file/what-the-file.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'oarena', 'yes'),
(41, 'stylesheet', 'oarena', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:26:\"wp-easycart/wpeasycart.php\";s:12:\"ec_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'cron', 'a:6:{i:1536868048;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1536871648;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536915238;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536918310;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536928887;a:1:{s:26:\"ACFFA_refresh_latest_icons\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'fresh_site', '0', 'yes'),
(113, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(119, '_site_transient_timeout_browser_2665c4e8d15b45d0fedc5882bfaf8cc4', '1537174060', 'no'),
(120, '_site_transient_browser_2665c4e8d15b45d0fedc5882bfaf8cc4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.132\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(121, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536592882;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '0', 'no'),
(126, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1536890084', 'no'),
(127, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:17:\"WordCamp Lausanne\";s:3:\"url\";s:34:\"https://2018.lausanne.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-09-28 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Lausanne, Switzerland\";s:7:\"country\";s:2:\"CH\";s:8:\"latitude\";d:46.5162846;s:9:\"longitude\";d:6.6382397;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:17:\"Contributor\'s day\";s:3:\"url\";s:66:\"https://www.meetup.com/Lausanne-WordPress-Meetup/events/254561142/\";s:6:\"meetup\";s:25:\"Lausanne WordPress Meetup\";s:10:\"meetup_url\";s:49:\"https://www.meetup.com/Lausanne-WordPress-Meetup/\";s:4:\"date\";s:19:\"2018-09-28 10:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Lausanne, Switzerland\";s:7:\"country\";s:2:\"ch\";s:8:\"latitude\";d:46.51735;s:9:\"longitude\";d:6.562811;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:54:\"Membres de WPGVA : Qui vient au WordCamp Lausanne ? :)\";s:3:\"url\";s:57:\"https://www.meetup.com/geneva-wordpress/events/251407007/\";s:6:\"meetup\";s:29:\"Geneva WordPress Meetup Group\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/geneva-wordpress/\";s:4:\"date\";s:19:\"2018-09-29 08:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Lausanne, Switzerland\";s:7:\"country\";s:2:\"ch\";s:8:\"latitude\";d:46.516251;s:9:\"longitude\";d:6.63814;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:22:\"WordCamp Lausanne 2018\";s:3:\"url\";s:66:\"https://www.meetup.com/Lausanne-WordPress-Meetup/events/251351269/\";s:6:\"meetup\";s:25:\"Lausanne WordPress Meetup\";s:10:\"meetup_url\";s:49:\"https://www.meetup.com/Lausanne-WordPress-Meetup/\";s:4:\"date\";s:19:\"2018-09-29 09:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Lausanne, Switzerland\";s:7:\"country\";s:2:\"ch\";s:8:\"latitude\";d:46.516251;s:9:\"longitude\";d:6.63814;}}i:4;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Verona\";s:3:\"url\";s:32:\"https://2018.verona.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-10-12 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Verona, Italy\";s:7:\"country\";s:2:\"IT\";s:8:\"latitude\";d:45.4400101;s:9:\"longitude\";d:10.9720133;}}}}', 'no'),
(141, 'WPLANG', 'fr_FR', 'yes'),
(142, 'new_admin_email', 'arenambj@gmail.com', 'yes'),
(195, 'recently_activated', 'a:2:{s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";i:1536819673;s:30:\"advanced-custom-fields/acf.php\";i:1536819670;}', 'yes'),
(198, 'whatthefile-install-date', '2018-09-10', 'no'),
(199, 'theme_mods_oarena', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"header\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536846791;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(214, 'current_theme', 'oArena', 'yes'),
(215, 'theme_switched', '', 'yes'),
(289, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(336, '_transient_timeout_plugin_slugs', '1536951466', 'no'),
(337, '_transient_plugin_slugs', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";i:2;s:21:\"hello-dolly/hello.php\";i:3;s:35:\"oarena-settings/oarena-settings.php\";i:4;s:31:\"what-the-file/what-the-file.php\";}', 'no'),
(338, 'acf_version', '5.7.2', 'yes'),
(344, 'team_children', 'a:0:{}', 'yes'),
(350, 'category_children', 'a:0:{}', 'yes'),
(351, 'ACFFA_current_version', '4.7.0', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(352, 'ACFFA_icon_data', 'a:1:{s:5:\"4.7.0\";a:3:{s:4:\"list\";a:676:{s:0:\"\";s:0:\"\";s:8:\"fa-500px\";s:14:\"&#xf26e; 500px\";s:15:\"fa-address-book\";s:21:\"&#xf2b9; address-book\";s:17:\"fa-address-book-o\";s:23:\"&#xf2ba; address-book-o\";s:15:\"fa-address-card\";s:21:\"&#xf2bb; address-card\";s:17:\"fa-address-card-o\";s:23:\"&#xf2bc; address-card-o\";s:9:\"fa-adjust\";s:15:\"&#xf042; adjust\";s:6:\"fa-adn\";s:12:\"&#xf170; adn\";s:15:\"fa-align-center\";s:21:\"&#xf037; align-center\";s:16:\"fa-align-justify\";s:22:\"&#xf039; align-justify\";s:13:\"fa-align-left\";s:19:\"&#xf036; align-left\";s:14:\"fa-align-right\";s:20:\"&#xf038; align-right\";s:9:\"fa-amazon\";s:15:\"&#xf270; amazon\";s:12:\"fa-ambulance\";s:18:\"&#xf0f9; ambulance\";s:38:\"fa-american-sign-language-interpreting\";s:44:\"&#xf2a3; american-sign-language-interpreting\";s:9:\"fa-anchor\";s:15:\"&#xf13d; anchor\";s:10:\"fa-android\";s:16:\"&#xf17b; android\";s:12:\"fa-angellist\";s:18:\"&#xf209; angellist\";s:20:\"fa-angle-double-down\";s:26:\"&#xf103; angle-double-down\";s:20:\"fa-angle-double-left\";s:26:\"&#xf100; angle-double-left\";s:21:\"fa-angle-double-right\";s:27:\"&#xf101; angle-double-right\";s:18:\"fa-angle-double-up\";s:24:\"&#xf102; angle-double-up\";s:13:\"fa-angle-down\";s:19:\"&#xf107; angle-down\";s:13:\"fa-angle-left\";s:19:\"&#xf104; angle-left\";s:14:\"fa-angle-right\";s:20:\"&#xf105; angle-right\";s:11:\"fa-angle-up\";s:17:\"&#xf106; angle-up\";s:8:\"fa-apple\";s:14:\"&#xf179; apple\";s:10:\"fa-archive\";s:16:\"&#xf187; archive\";s:13:\"fa-area-chart\";s:19:\"&#xf1fe; area-chart\";s:20:\"fa-arrow-circle-down\";s:26:\"&#xf0ab; arrow-circle-down\";s:20:\"fa-arrow-circle-left\";s:26:\"&#xf0a8; arrow-circle-left\";s:22:\"fa-arrow-circle-o-down\";s:28:\"&#xf01a; arrow-circle-o-down\";s:22:\"fa-arrow-circle-o-left\";s:28:\"&#xf190; arrow-circle-o-left\";s:23:\"fa-arrow-circle-o-right\";s:29:\"&#xf18e; arrow-circle-o-right\";s:20:\"fa-arrow-circle-o-up\";s:26:\"&#xf01b; arrow-circle-o-up\";s:21:\"fa-arrow-circle-right\";s:27:\"&#xf0a9; arrow-circle-right\";s:18:\"fa-arrow-circle-up\";s:24:\"&#xf0aa; arrow-circle-up\";s:13:\"fa-arrow-down\";s:19:\"&#xf063; arrow-down\";s:13:\"fa-arrow-left\";s:19:\"&#xf060; arrow-left\";s:14:\"fa-arrow-right\";s:20:\"&#xf061; arrow-right\";s:11:\"fa-arrow-up\";s:17:\"&#xf062; arrow-up\";s:9:\"fa-arrows\";s:15:\"&#xf047; arrows\";s:13:\"fa-arrows-alt\";s:19:\"&#xf0b2; arrows-alt\";s:11:\"fa-arrows-h\";s:17:\"&#xf07e; arrows-h\";s:11:\"fa-arrows-v\";s:17:\"&#xf07d; arrows-v\";s:30:\"fa-assistive-listening-systems\";s:36:\"&#xf2a2; assistive-listening-systems\";s:11:\"fa-asterisk\";s:17:\"&#xf069; asterisk\";s:5:\"fa-at\";s:11:\"&#xf1fa; at\";s:20:\"fa-audio-description\";s:26:\"&#xf29e; audio-description\";s:11:\"fa-backward\";s:17:\"&#xf04a; backward\";s:16:\"fa-balance-scale\";s:22:\"&#xf24e; balance-scale\";s:6:\"fa-ban\";s:12:\"&#xf05e; ban\";s:11:\"fa-bandcamp\";s:17:\"&#xf2d5; bandcamp\";s:12:\"fa-bar-chart\";s:18:\"&#xf080; bar-chart\";s:10:\"fa-barcode\";s:16:\"&#xf02a; barcode\";s:7:\"fa-bars\";s:13:\"&#xf0c9; bars\";s:7:\"fa-bath\";s:13:\"&#xf2cd; bath\";s:16:\"fa-battery-empty\";s:22:\"&#xf244; battery-empty\";s:15:\"fa-battery-full\";s:21:\"&#xf240; battery-full\";s:15:\"fa-battery-half\";s:21:\"&#xf242; battery-half\";s:18:\"fa-battery-quarter\";s:24:\"&#xf243; battery-quarter\";s:25:\"fa-battery-three-quarters\";s:31:\"&#xf241; battery-three-quarters\";s:6:\"fa-bed\";s:12:\"&#xf236; bed\";s:7:\"fa-beer\";s:13:\"&#xf0fc; beer\";s:10:\"fa-behance\";s:16:\"&#xf1b4; behance\";s:17:\"fa-behance-square\";s:23:\"&#xf1b5; behance-square\";s:7:\"fa-bell\";s:13:\"&#xf0f3; bell\";s:9:\"fa-bell-o\";s:15:\"&#xf0a2; bell-o\";s:13:\"fa-bell-slash\";s:19:\"&#xf1f6; bell-slash\";s:15:\"fa-bell-slash-o\";s:21:\"&#xf1f7; bell-slash-o\";s:10:\"fa-bicycle\";s:16:\"&#xf206; bicycle\";s:13:\"fa-binoculars\";s:19:\"&#xf1e5; binoculars\";s:16:\"fa-birthday-cake\";s:22:\"&#xf1fd; birthday-cake\";s:12:\"fa-bitbucket\";s:18:\"&#xf171; bitbucket\";s:19:\"fa-bitbucket-square\";s:25:\"&#xf172; bitbucket-square\";s:12:\"fa-black-tie\";s:18:\"&#xf27e; black-tie\";s:8:\"fa-blind\";s:14:\"&#xf29d; blind\";s:12:\"fa-bluetooth\";s:18:\"&#xf293; bluetooth\";s:14:\"fa-bluetooth-b\";s:20:\"&#xf294; bluetooth-b\";s:7:\"fa-bold\";s:13:\"&#xf032; bold\";s:7:\"fa-bolt\";s:13:\"&#xf0e7; bolt\";s:7:\"fa-bomb\";s:13:\"&#xf1e2; bomb\";s:7:\"fa-book\";s:13:\"&#xf02d; book\";s:11:\"fa-bookmark\";s:17:\"&#xf02e; bookmark\";s:13:\"fa-bookmark-o\";s:19:\"&#xf097; bookmark-o\";s:10:\"fa-braille\";s:16:\"&#xf2a1; braille\";s:12:\"fa-briefcase\";s:18:\"&#xf0b1; briefcase\";s:6:\"fa-btc\";s:12:\"&#xf15a; btc\";s:6:\"fa-bug\";s:12:\"&#xf188; bug\";s:11:\"fa-building\";s:17:\"&#xf1ad; building\";s:13:\"fa-building-o\";s:19:\"&#xf0f7; building-o\";s:11:\"fa-bullhorn\";s:17:\"&#xf0a1; bullhorn\";s:11:\"fa-bullseye\";s:17:\"&#xf140; bullseye\";s:6:\"fa-bus\";s:12:\"&#xf207; bus\";s:13:\"fa-buysellads\";s:19:\"&#xf20d; buysellads\";s:13:\"fa-calculator\";s:19:\"&#xf1ec; calculator\";s:11:\"fa-calendar\";s:17:\"&#xf073; calendar\";s:19:\"fa-calendar-check-o\";s:25:\"&#xf274; calendar-check-o\";s:19:\"fa-calendar-minus-o\";s:25:\"&#xf272; calendar-minus-o\";s:13:\"fa-calendar-o\";s:19:\"&#xf133; calendar-o\";s:18:\"fa-calendar-plus-o\";s:24:\"&#xf271; calendar-plus-o\";s:19:\"fa-calendar-times-o\";s:25:\"&#xf273; calendar-times-o\";s:9:\"fa-camera\";s:15:\"&#xf030; camera\";s:15:\"fa-camera-retro\";s:21:\"&#xf083; camera-retro\";s:6:\"fa-car\";s:12:\"&#xf1b9; car\";s:13:\"fa-caret-down\";s:19:\"&#xf0d7; caret-down\";s:13:\"fa-caret-left\";s:19:\"&#xf0d9; caret-left\";s:14:\"fa-caret-right\";s:20:\"&#xf0da; caret-right\";s:22:\"fa-caret-square-o-down\";s:28:\"&#xf150; caret-square-o-down\";s:22:\"fa-caret-square-o-left\";s:28:\"&#xf191; caret-square-o-left\";s:23:\"fa-caret-square-o-right\";s:29:\"&#xf152; caret-square-o-right\";s:20:\"fa-caret-square-o-up\";s:26:\"&#xf151; caret-square-o-up\";s:11:\"fa-caret-up\";s:17:\"&#xf0d8; caret-up\";s:18:\"fa-cart-arrow-down\";s:24:\"&#xf218; cart-arrow-down\";s:12:\"fa-cart-plus\";s:18:\"&#xf217; cart-plus\";s:5:\"fa-cc\";s:11:\"&#xf20a; cc\";s:10:\"fa-cc-amex\";s:16:\"&#xf1f3; cc-amex\";s:17:\"fa-cc-diners-club\";s:23:\"&#xf24c; cc-diners-club\";s:14:\"fa-cc-discover\";s:20:\"&#xf1f2; cc-discover\";s:9:\"fa-cc-jcb\";s:15:\"&#xf24b; cc-jcb\";s:16:\"fa-cc-mastercard\";s:22:\"&#xf1f1; cc-mastercard\";s:12:\"fa-cc-paypal\";s:18:\"&#xf1f4; cc-paypal\";s:12:\"fa-cc-stripe\";s:18:\"&#xf1f5; cc-stripe\";s:10:\"fa-cc-visa\";s:16:\"&#xf1f0; cc-visa\";s:14:\"fa-certificate\";s:20:\"&#xf0a3; certificate\";s:15:\"fa-chain-broken\";s:21:\"&#xf127; chain-broken\";s:8:\"fa-check\";s:14:\"&#xf00c; check\";s:15:\"fa-check-circle\";s:21:\"&#xf058; check-circle\";s:17:\"fa-check-circle-o\";s:23:\"&#xf05d; check-circle-o\";s:15:\"fa-check-square\";s:21:\"&#xf14a; check-square\";s:17:\"fa-check-square-o\";s:23:\"&#xf046; check-square-o\";s:22:\"fa-chevron-circle-down\";s:28:\"&#xf13a; chevron-circle-down\";s:22:\"fa-chevron-circle-left\";s:28:\"&#xf137; chevron-circle-left\";s:23:\"fa-chevron-circle-right\";s:29:\"&#xf138; chevron-circle-right\";s:20:\"fa-chevron-circle-up\";s:26:\"&#xf139; chevron-circle-up\";s:15:\"fa-chevron-down\";s:21:\"&#xf078; chevron-down\";s:15:\"fa-chevron-left\";s:21:\"&#xf053; chevron-left\";s:16:\"fa-chevron-right\";s:22:\"&#xf054; chevron-right\";s:13:\"fa-chevron-up\";s:19:\"&#xf077; chevron-up\";s:8:\"fa-child\";s:14:\"&#xf1ae; child\";s:9:\"fa-chrome\";s:15:\"&#xf268; chrome\";s:9:\"fa-circle\";s:15:\"&#xf111; circle\";s:11:\"fa-circle-o\";s:17:\"&#xf10c; circle-o\";s:17:\"fa-circle-o-notch\";s:23:\"&#xf1ce; circle-o-notch\";s:14:\"fa-circle-thin\";s:20:\"&#xf1db; circle-thin\";s:12:\"fa-clipboard\";s:18:\"&#xf0ea; clipboard\";s:10:\"fa-clock-o\";s:16:\"&#xf017; clock-o\";s:8:\"fa-clone\";s:14:\"&#xf24d; clone\";s:8:\"fa-cloud\";s:14:\"&#xf0c2; cloud\";s:17:\"fa-cloud-download\";s:23:\"&#xf0ed; cloud-download\";s:15:\"fa-cloud-upload\";s:21:\"&#xf0ee; cloud-upload\";s:7:\"fa-code\";s:13:\"&#xf121; code\";s:12:\"fa-code-fork\";s:18:\"&#xf126; code-fork\";s:10:\"fa-codepen\";s:16:\"&#xf1cb; codepen\";s:11:\"fa-codiepie\";s:17:\"&#xf284; codiepie\";s:9:\"fa-coffee\";s:15:\"&#xf0f4; coffee\";s:6:\"fa-cog\";s:12:\"&#xf013; cog\";s:7:\"fa-cogs\";s:13:\"&#xf085; cogs\";s:10:\"fa-columns\";s:16:\"&#xf0db; columns\";s:10:\"fa-comment\";s:16:\"&#xf075; comment\";s:12:\"fa-comment-o\";s:18:\"&#xf0e5; comment-o\";s:13:\"fa-commenting\";s:19:\"&#xf27a; commenting\";s:15:\"fa-commenting-o\";s:21:\"&#xf27b; commenting-o\";s:11:\"fa-comments\";s:17:\"&#xf086; comments\";s:13:\"fa-comments-o\";s:19:\"&#xf0e6; comments-o\";s:10:\"fa-compass\";s:16:\"&#xf14e; compass\";s:11:\"fa-compress\";s:17:\"&#xf066; compress\";s:17:\"fa-connectdevelop\";s:23:\"&#xf20e; connectdevelop\";s:9:\"fa-contao\";s:15:\"&#xf26d; contao\";s:12:\"fa-copyright\";s:18:\"&#xf1f9; copyright\";s:19:\"fa-creative-commons\";s:25:\"&#xf25e; creative-commons\";s:14:\"fa-credit-card\";s:20:\"&#xf09d; credit-card\";s:18:\"fa-credit-card-alt\";s:24:\"&#xf283; credit-card-alt\";s:7:\"fa-crop\";s:13:\"&#xf125; crop\";s:13:\"fa-crosshairs\";s:19:\"&#xf05b; crosshairs\";s:7:\"fa-css3\";s:13:\"&#xf13c; css3\";s:7:\"fa-cube\";s:13:\"&#xf1b2; cube\";s:8:\"fa-cubes\";s:14:\"&#xf1b3; cubes\";s:10:\"fa-cutlery\";s:16:\"&#xf0f5; cutlery\";s:11:\"fa-dashcube\";s:17:\"&#xf210; dashcube\";s:11:\"fa-database\";s:17:\"&#xf1c0; database\";s:7:\"fa-deaf\";s:13:\"&#xf2a4; deaf\";s:12:\"fa-delicious\";s:18:\"&#xf1a5; delicious\";s:10:\"fa-desktop\";s:16:\"&#xf108; desktop\";s:13:\"fa-deviantart\";s:19:\"&#xf1bd; deviantart\";s:10:\"fa-diamond\";s:16:\"&#xf219; diamond\";s:7:\"fa-digg\";s:13:\"&#xf1a6; digg\";s:15:\"fa-dot-circle-o\";s:21:\"&#xf192; dot-circle-o\";s:11:\"fa-download\";s:17:\"&#xf019; download\";s:11:\"fa-dribbble\";s:17:\"&#xf17d; dribbble\";s:10:\"fa-dropbox\";s:16:\"&#xf16b; dropbox\";s:9:\"fa-drupal\";s:15:\"&#xf1a9; drupal\";s:7:\"fa-edge\";s:13:\"&#xf282; edge\";s:10:\"fa-eercast\";s:16:\"&#xf2da; eercast\";s:8:\"fa-eject\";s:14:\"&#xf052; eject\";s:13:\"fa-ellipsis-h\";s:19:\"&#xf141; ellipsis-h\";s:13:\"fa-ellipsis-v\";s:19:\"&#xf142; ellipsis-v\";s:9:\"fa-empire\";s:15:\"&#xf1d1; empire\";s:11:\"fa-envelope\";s:17:\"&#xf0e0; envelope\";s:13:\"fa-envelope-o\";s:19:\"&#xf003; envelope-o\";s:16:\"fa-envelope-open\";s:22:\"&#xf2b6; envelope-open\";s:18:\"fa-envelope-open-o\";s:24:\"&#xf2b7; envelope-open-o\";s:18:\"fa-envelope-square\";s:24:\"&#xf199; envelope-square\";s:9:\"fa-envira\";s:15:\"&#xf299; envira\";s:9:\"fa-eraser\";s:15:\"&#xf12d; eraser\";s:7:\"fa-etsy\";s:13:\"&#xf2d7; etsy\";s:6:\"fa-eur\";s:12:\"&#xf153; eur\";s:11:\"fa-exchange\";s:17:\"&#xf0ec; exchange\";s:14:\"fa-exclamation\";s:20:\"&#xf12a; exclamation\";s:21:\"fa-exclamation-circle\";s:27:\"&#xf06a; exclamation-circle\";s:23:\"fa-exclamation-triangle\";s:29:\"&#xf071; exclamation-triangle\";s:9:\"fa-expand\";s:15:\"&#xf065; expand\";s:15:\"fa-expeditedssl\";s:21:\"&#xf23e; expeditedssl\";s:16:\"fa-external-link\";s:22:\"&#xf08e; external-link\";s:23:\"fa-external-link-square\";s:29:\"&#xf14c; external-link-square\";s:6:\"fa-eye\";s:12:\"&#xf06e; eye\";s:12:\"fa-eye-slash\";s:18:\"&#xf070; eye-slash\";s:13:\"fa-eyedropper\";s:19:\"&#xf1fb; eyedropper\";s:11:\"fa-facebook\";s:17:\"&#xf09a; facebook\";s:20:\"fa-facebook-official\";s:26:\"&#xf230; facebook-official\";s:18:\"fa-facebook-square\";s:24:\"&#xf082; facebook-square\";s:16:\"fa-fast-backward\";s:22:\"&#xf049; fast-backward\";s:15:\"fa-fast-forward\";s:21:\"&#xf050; fast-forward\";s:6:\"fa-fax\";s:12:\"&#xf1ac; fax\";s:9:\"fa-female\";s:15:\"&#xf182; female\";s:14:\"fa-fighter-jet\";s:20:\"&#xf0fb; fighter-jet\";s:7:\"fa-file\";s:13:\"&#xf15b; file\";s:17:\"fa-file-archive-o\";s:23:\"&#xf1c6; file-archive-o\";s:15:\"fa-file-audio-o\";s:21:\"&#xf1c7; file-audio-o\";s:14:\"fa-file-code-o\";s:20:\"&#xf1c9; file-code-o\";s:15:\"fa-file-excel-o\";s:21:\"&#xf1c3; file-excel-o\";s:15:\"fa-file-image-o\";s:21:\"&#xf1c5; file-image-o\";s:9:\"fa-file-o\";s:15:\"&#xf016; file-o\";s:13:\"fa-file-pdf-o\";s:19:\"&#xf1c1; file-pdf-o\";s:20:\"fa-file-powerpoint-o\";s:26:\"&#xf1c4; file-powerpoint-o\";s:12:\"fa-file-text\";s:18:\"&#xf15c; file-text\";s:14:\"fa-file-text-o\";s:20:\"&#xf0f6; file-text-o\";s:15:\"fa-file-video-o\";s:21:\"&#xf1c8; file-video-o\";s:14:\"fa-file-word-o\";s:20:\"&#xf1c2; file-word-o\";s:10:\"fa-files-o\";s:16:\"&#xf0c5; files-o\";s:7:\"fa-film\";s:13:\"&#xf008; film\";s:9:\"fa-filter\";s:15:\"&#xf0b0; filter\";s:7:\"fa-fire\";s:13:\"&#xf06d; fire\";s:20:\"fa-fire-extinguisher\";s:26:\"&#xf134; fire-extinguisher\";s:10:\"fa-firefox\";s:16:\"&#xf269; firefox\";s:14:\"fa-first-order\";s:20:\"&#xf2b0; first-order\";s:7:\"fa-flag\";s:13:\"&#xf024; flag\";s:17:\"fa-flag-checkered\";s:23:\"&#xf11e; flag-checkered\";s:9:\"fa-flag-o\";s:15:\"&#xf11d; flag-o\";s:8:\"fa-flask\";s:14:\"&#xf0c3; flask\";s:9:\"fa-flickr\";s:15:\"&#xf16e; flickr\";s:11:\"fa-floppy-o\";s:17:\"&#xf0c7; floppy-o\";s:9:\"fa-folder\";s:15:\"&#xf07b; folder\";s:11:\"fa-folder-o\";s:17:\"&#xf114; folder-o\";s:14:\"fa-folder-open\";s:20:\"&#xf07c; folder-open\";s:16:\"fa-folder-open-o\";s:22:\"&#xf115; folder-open-o\";s:7:\"fa-font\";s:13:\"&#xf031; font\";s:15:\"fa-font-awesome\";s:21:\"&#xf2b4; font-awesome\";s:12:\"fa-fonticons\";s:18:\"&#xf280; fonticons\";s:15:\"fa-fort-awesome\";s:21:\"&#xf286; fort-awesome\";s:11:\"fa-forumbee\";s:17:\"&#xf211; forumbee\";s:10:\"fa-forward\";s:16:\"&#xf04e; forward\";s:13:\"fa-foursquare\";s:19:\"&#xf180; foursquare\";s:17:\"fa-free-code-camp\";s:23:\"&#xf2c5; free-code-camp\";s:10:\"fa-frown-o\";s:16:\"&#xf119; frown-o\";s:11:\"fa-futbol-o\";s:17:\"&#xf1e3; futbol-o\";s:10:\"fa-gamepad\";s:16:\"&#xf11b; gamepad\";s:8:\"fa-gavel\";s:14:\"&#xf0e3; gavel\";s:6:\"fa-gbp\";s:12:\"&#xf154; gbp\";s:13:\"fa-genderless\";s:19:\"&#xf22d; genderless\";s:13:\"fa-get-pocket\";s:19:\"&#xf265; get-pocket\";s:5:\"fa-gg\";s:11:\"&#xf260; gg\";s:12:\"fa-gg-circle\";s:18:\"&#xf261; gg-circle\";s:7:\"fa-gift\";s:13:\"&#xf06b; gift\";s:6:\"fa-git\";s:12:\"&#xf1d3; git\";s:13:\"fa-git-square\";s:19:\"&#xf1d2; git-square\";s:9:\"fa-github\";s:15:\"&#xf09b; github\";s:13:\"fa-github-alt\";s:19:\"&#xf113; github-alt\";s:16:\"fa-github-square\";s:22:\"&#xf092; github-square\";s:9:\"fa-gitlab\";s:15:\"&#xf296; gitlab\";s:8:\"fa-glass\";s:14:\"&#xf000; glass\";s:8:\"fa-glide\";s:14:\"&#xf2a5; glide\";s:10:\"fa-glide-g\";s:16:\"&#xf2a6; glide-g\";s:8:\"fa-globe\";s:14:\"&#xf0ac; globe\";s:9:\"fa-google\";s:15:\"&#xf1a0; google\";s:14:\"fa-google-plus\";s:20:\"&#xf0d5; google-plus\";s:23:\"fa-google-plus-official\";s:29:\"&#xf2b3; google-plus-official\";s:21:\"fa-google-plus-square\";s:27:\"&#xf0d4; google-plus-square\";s:16:\"fa-google-wallet\";s:22:\"&#xf1ee; google-wallet\";s:17:\"fa-graduation-cap\";s:23:\"&#xf19d; graduation-cap\";s:11:\"fa-gratipay\";s:17:\"&#xf184; gratipay\";s:7:\"fa-grav\";s:13:\"&#xf2d6; grav\";s:11:\"fa-h-square\";s:17:\"&#xf0fd; h-square\";s:14:\"fa-hacker-news\";s:20:\"&#xf1d4; hacker-news\";s:16:\"fa-hand-lizard-o\";s:22:\"&#xf258; hand-lizard-o\";s:14:\"fa-hand-o-down\";s:20:\"&#xf0a7; hand-o-down\";s:14:\"fa-hand-o-left\";s:20:\"&#xf0a5; hand-o-left\";s:15:\"fa-hand-o-right\";s:21:\"&#xf0a4; hand-o-right\";s:12:\"fa-hand-o-up\";s:18:\"&#xf0a6; hand-o-up\";s:15:\"fa-hand-paper-o\";s:21:\"&#xf256; hand-paper-o\";s:15:\"fa-hand-peace-o\";s:21:\"&#xf25b; hand-peace-o\";s:17:\"fa-hand-pointer-o\";s:23:\"&#xf25a; hand-pointer-o\";s:14:\"fa-hand-rock-o\";s:20:\"&#xf255; hand-rock-o\";s:18:\"fa-hand-scissors-o\";s:24:\"&#xf257; hand-scissors-o\";s:15:\"fa-hand-spock-o\";s:21:\"&#xf259; hand-spock-o\";s:14:\"fa-handshake-o\";s:20:\"&#xf2b5; handshake-o\";s:10:\"fa-hashtag\";s:16:\"&#xf292; hashtag\";s:8:\"fa-hdd-o\";s:14:\"&#xf0a0; hdd-o\";s:9:\"fa-header\";s:15:\"&#xf1dc; header\";s:13:\"fa-headphones\";s:19:\"&#xf025; headphones\";s:8:\"fa-heart\";s:14:\"&#xf004; heart\";s:10:\"fa-heart-o\";s:16:\"&#xf08a; heart-o\";s:12:\"fa-heartbeat\";s:18:\"&#xf21e; heartbeat\";s:10:\"fa-history\";s:16:\"&#xf1da; history\";s:7:\"fa-home\";s:13:\"&#xf015; home\";s:13:\"fa-hospital-o\";s:19:\"&#xf0f8; hospital-o\";s:12:\"fa-hourglass\";s:18:\"&#xf254; hourglass\";s:16:\"fa-hourglass-end\";s:22:\"&#xf253; hourglass-end\";s:17:\"fa-hourglass-half\";s:23:\"&#xf252; hourglass-half\";s:14:\"fa-hourglass-o\";s:20:\"&#xf250; hourglass-o\";s:18:\"fa-hourglass-start\";s:24:\"&#xf251; hourglass-start\";s:8:\"fa-houzz\";s:14:\"&#xf27c; houzz\";s:8:\"fa-html5\";s:14:\"&#xf13b; html5\";s:11:\"fa-i-cursor\";s:17:\"&#xf246; i-cursor\";s:11:\"fa-id-badge\";s:17:\"&#xf2c1; id-badge\";s:10:\"fa-id-card\";s:16:\"&#xf2c2; id-card\";s:12:\"fa-id-card-o\";s:18:\"&#xf2c3; id-card-o\";s:6:\"fa-ils\";s:12:\"&#xf20b; ils\";s:7:\"fa-imdb\";s:13:\"&#xf2d8; imdb\";s:8:\"fa-inbox\";s:14:\"&#xf01c; inbox\";s:9:\"fa-indent\";s:15:\"&#xf03c; indent\";s:11:\"fa-industry\";s:17:\"&#xf275; industry\";s:7:\"fa-info\";s:13:\"&#xf129; info\";s:14:\"fa-info-circle\";s:20:\"&#xf05a; info-circle\";s:6:\"fa-inr\";s:12:\"&#xf156; inr\";s:12:\"fa-instagram\";s:18:\"&#xf16d; instagram\";s:20:\"fa-internet-explorer\";s:26:\"&#xf26b; internet-explorer\";s:10:\"fa-ioxhost\";s:16:\"&#xf208; ioxhost\";s:9:\"fa-italic\";s:15:\"&#xf033; italic\";s:9:\"fa-joomla\";s:15:\"&#xf1aa; joomla\";s:6:\"fa-jpy\";s:12:\"&#xf157; jpy\";s:11:\"fa-jsfiddle\";s:17:\"&#xf1cc; jsfiddle\";s:6:\"fa-key\";s:12:\"&#xf084; key\";s:13:\"fa-keyboard-o\";s:19:\"&#xf11c; keyboard-o\";s:6:\"fa-krw\";s:12:\"&#xf159; krw\";s:11:\"fa-language\";s:17:\"&#xf1ab; language\";s:9:\"fa-laptop\";s:15:\"&#xf109; laptop\";s:9:\"fa-lastfm\";s:15:\"&#xf202; lastfm\";s:16:\"fa-lastfm-square\";s:22:\"&#xf203; lastfm-square\";s:7:\"fa-leaf\";s:13:\"&#xf06c; leaf\";s:10:\"fa-leanpub\";s:16:\"&#xf212; leanpub\";s:10:\"fa-lemon-o\";s:16:\"&#xf094; lemon-o\";s:13:\"fa-level-down\";s:19:\"&#xf149; level-down\";s:11:\"fa-level-up\";s:17:\"&#xf148; level-up\";s:12:\"fa-life-ring\";s:18:\"&#xf1cd; life-ring\";s:14:\"fa-lightbulb-o\";s:20:\"&#xf0eb; lightbulb-o\";s:13:\"fa-line-chart\";s:19:\"&#xf201; line-chart\";s:7:\"fa-link\";s:13:\"&#xf0c1; link\";s:11:\"fa-linkedin\";s:17:\"&#xf0e1; linkedin\";s:18:\"fa-linkedin-square\";s:24:\"&#xf08c; linkedin-square\";s:9:\"fa-linode\";s:15:\"&#xf2b8; linode\";s:8:\"fa-linux\";s:14:\"&#xf17c; linux\";s:7:\"fa-list\";s:13:\"&#xf03a; list\";s:11:\"fa-list-alt\";s:17:\"&#xf022; list-alt\";s:10:\"fa-list-ol\";s:16:\"&#xf0cb; list-ol\";s:10:\"fa-list-ul\";s:16:\"&#xf0ca; list-ul\";s:17:\"fa-location-arrow\";s:23:\"&#xf124; location-arrow\";s:7:\"fa-lock\";s:13:\"&#xf023; lock\";s:18:\"fa-long-arrow-down\";s:24:\"&#xf175; long-arrow-down\";s:18:\"fa-long-arrow-left\";s:24:\"&#xf177; long-arrow-left\";s:19:\"fa-long-arrow-right\";s:25:\"&#xf178; long-arrow-right\";s:16:\"fa-long-arrow-up\";s:22:\"&#xf176; long-arrow-up\";s:13:\"fa-low-vision\";s:19:\"&#xf2a8; low-vision\";s:8:\"fa-magic\";s:14:\"&#xf0d0; magic\";s:9:\"fa-magnet\";s:15:\"&#xf076; magnet\";s:7:\"fa-male\";s:13:\"&#xf183; male\";s:6:\"fa-map\";s:12:\"&#xf279; map\";s:13:\"fa-map-marker\";s:19:\"&#xf041; map-marker\";s:8:\"fa-map-o\";s:14:\"&#xf278; map-o\";s:10:\"fa-map-pin\";s:16:\"&#xf276; map-pin\";s:12:\"fa-map-signs\";s:18:\"&#xf277; map-signs\";s:7:\"fa-mars\";s:13:\"&#xf222; mars\";s:14:\"fa-mars-double\";s:20:\"&#xf227; mars-double\";s:14:\"fa-mars-stroke\";s:20:\"&#xf229; mars-stroke\";s:16:\"fa-mars-stroke-h\";s:22:\"&#xf22b; mars-stroke-h\";s:16:\"fa-mars-stroke-v\";s:22:\"&#xf22a; mars-stroke-v\";s:9:\"fa-maxcdn\";s:15:\"&#xf136; maxcdn\";s:11:\"fa-meanpath\";s:17:\"&#xf20c; meanpath\";s:9:\"fa-medium\";s:15:\"&#xf23a; medium\";s:9:\"fa-medkit\";s:15:\"&#xf0fa; medkit\";s:9:\"fa-meetup\";s:15:\"&#xf2e0; meetup\";s:8:\"fa-meh-o\";s:14:\"&#xf11a; meh-o\";s:10:\"fa-mercury\";s:16:\"&#xf223; mercury\";s:12:\"fa-microchip\";s:18:\"&#xf2db; microchip\";s:13:\"fa-microphone\";s:19:\"&#xf130; microphone\";s:19:\"fa-microphone-slash\";s:25:\"&#xf131; microphone-slash\";s:8:\"fa-minus\";s:14:\"&#xf068; minus\";s:15:\"fa-minus-circle\";s:21:\"&#xf056; minus-circle\";s:15:\"fa-minus-square\";s:21:\"&#xf146; minus-square\";s:17:\"fa-minus-square-o\";s:23:\"&#xf147; minus-square-o\";s:11:\"fa-mixcloud\";s:17:\"&#xf289; mixcloud\";s:9:\"fa-mobile\";s:15:\"&#xf10b; mobile\";s:7:\"fa-modx\";s:13:\"&#xf285; modx\";s:8:\"fa-money\";s:14:\"&#xf0d6; money\";s:9:\"fa-moon-o\";s:15:\"&#xf186; moon-o\";s:13:\"fa-motorcycle\";s:19:\"&#xf21c; motorcycle\";s:16:\"fa-mouse-pointer\";s:22:\"&#xf245; mouse-pointer\";s:8:\"fa-music\";s:14:\"&#xf001; music\";s:9:\"fa-neuter\";s:15:\"&#xf22c; neuter\";s:14:\"fa-newspaper-o\";s:20:\"&#xf1ea; newspaper-o\";s:15:\"fa-object-group\";s:21:\"&#xf247; object-group\";s:17:\"fa-object-ungroup\";s:23:\"&#xf248; object-ungroup\";s:16:\"fa-odnoklassniki\";s:22:\"&#xf263; odnoklassniki\";s:23:\"fa-odnoklassniki-square\";s:29:\"&#xf264; odnoklassniki-square\";s:11:\"fa-opencart\";s:17:\"&#xf23d; opencart\";s:9:\"fa-openid\";s:15:\"&#xf19b; openid\";s:8:\"fa-opera\";s:14:\"&#xf26a; opera\";s:16:\"fa-optin-monster\";s:22:\"&#xf23c; optin-monster\";s:10:\"fa-outdent\";s:16:\"&#xf03b; outdent\";s:12:\"fa-pagelines\";s:18:\"&#xf18c; pagelines\";s:14:\"fa-paint-brush\";s:20:\"&#xf1fc; paint-brush\";s:14:\"fa-paper-plane\";s:20:\"&#xf1d8; paper-plane\";s:16:\"fa-paper-plane-o\";s:22:\"&#xf1d9; paper-plane-o\";s:12:\"fa-paperclip\";s:18:\"&#xf0c6; paperclip\";s:12:\"fa-paragraph\";s:18:\"&#xf1dd; paragraph\";s:8:\"fa-pause\";s:14:\"&#xf04c; pause\";s:15:\"fa-pause-circle\";s:21:\"&#xf28b; pause-circle\";s:17:\"fa-pause-circle-o\";s:23:\"&#xf28c; pause-circle-o\";s:6:\"fa-paw\";s:12:\"&#xf1b0; paw\";s:9:\"fa-paypal\";s:15:\"&#xf1ed; paypal\";s:9:\"fa-pencil\";s:15:\"&#xf040; pencil\";s:16:\"fa-pencil-square\";s:22:\"&#xf14b; pencil-square\";s:18:\"fa-pencil-square-o\";s:24:\"&#xf044; pencil-square-o\";s:10:\"fa-percent\";s:16:\"&#xf295; percent\";s:8:\"fa-phone\";s:14:\"&#xf095; phone\";s:15:\"fa-phone-square\";s:21:\"&#xf098; phone-square\";s:12:\"fa-picture-o\";s:18:\"&#xf03e; picture-o\";s:12:\"fa-pie-chart\";s:18:\"&#xf200; pie-chart\";s:13:\"fa-pied-piper\";s:19:\"&#xf2ae; pied-piper\";s:17:\"fa-pied-piper-alt\";s:23:\"&#xf1a8; pied-piper-alt\";s:16:\"fa-pied-piper-pp\";s:22:\"&#xf1a7; pied-piper-pp\";s:12:\"fa-pinterest\";s:18:\"&#xf0d2; pinterest\";s:14:\"fa-pinterest-p\";s:20:\"&#xf231; pinterest-p\";s:19:\"fa-pinterest-square\";s:25:\"&#xf0d3; pinterest-square\";s:8:\"fa-plane\";s:14:\"&#xf072; plane\";s:7:\"fa-play\";s:13:\"&#xf04b; play\";s:14:\"fa-play-circle\";s:20:\"&#xf144; play-circle\";s:16:\"fa-play-circle-o\";s:22:\"&#xf01d; play-circle-o\";s:7:\"fa-plug\";s:13:\"&#xf1e6; plug\";s:7:\"fa-plus\";s:13:\"&#xf067; plus\";s:14:\"fa-plus-circle\";s:20:\"&#xf055; plus-circle\";s:14:\"fa-plus-square\";s:20:\"&#xf0fe; plus-square\";s:16:\"fa-plus-square-o\";s:22:\"&#xf196; plus-square-o\";s:10:\"fa-podcast\";s:16:\"&#xf2ce; podcast\";s:12:\"fa-power-off\";s:18:\"&#xf011; power-off\";s:8:\"fa-print\";s:14:\"&#xf02f; print\";s:15:\"fa-product-hunt\";s:21:\"&#xf288; product-hunt\";s:15:\"fa-puzzle-piece\";s:21:\"&#xf12e; puzzle-piece\";s:5:\"fa-qq\";s:11:\"&#xf1d6; qq\";s:9:\"fa-qrcode\";s:15:\"&#xf029; qrcode\";s:11:\"fa-question\";s:17:\"&#xf128; question\";s:18:\"fa-question-circle\";s:24:\"&#xf059; question-circle\";s:20:\"fa-question-circle-o\";s:26:\"&#xf29c; question-circle-o\";s:8:\"fa-quora\";s:14:\"&#xf2c4; quora\";s:13:\"fa-quote-left\";s:19:\"&#xf10d; quote-left\";s:14:\"fa-quote-right\";s:20:\"&#xf10e; quote-right\";s:9:\"fa-random\";s:15:\"&#xf074; random\";s:10:\"fa-ravelry\";s:16:\"&#xf2d9; ravelry\";s:8:\"fa-rebel\";s:14:\"&#xf1d0; rebel\";s:10:\"fa-recycle\";s:16:\"&#xf1b8; recycle\";s:9:\"fa-reddit\";s:15:\"&#xf1a1; reddit\";s:15:\"fa-reddit-alien\";s:21:\"&#xf281; reddit-alien\";s:16:\"fa-reddit-square\";s:22:\"&#xf1a2; reddit-square\";s:10:\"fa-refresh\";s:16:\"&#xf021; refresh\";s:13:\"fa-registered\";s:19:\"&#xf25d; registered\";s:9:\"fa-renren\";s:15:\"&#xf18b; renren\";s:9:\"fa-repeat\";s:15:\"&#xf01e; repeat\";s:8:\"fa-reply\";s:14:\"&#xf112; reply\";s:12:\"fa-reply-all\";s:18:\"&#xf122; reply-all\";s:10:\"fa-retweet\";s:16:\"&#xf079; retweet\";s:7:\"fa-road\";s:13:\"&#xf018; road\";s:9:\"fa-rocket\";s:15:\"&#xf135; rocket\";s:6:\"fa-rss\";s:12:\"&#xf09e; rss\";s:13:\"fa-rss-square\";s:19:\"&#xf143; rss-square\";s:6:\"fa-rub\";s:12:\"&#xf158; rub\";s:9:\"fa-safari\";s:15:\"&#xf267; safari\";s:11:\"fa-scissors\";s:17:\"&#xf0c4; scissors\";s:9:\"fa-scribd\";s:15:\"&#xf28a; scribd\";s:9:\"fa-search\";s:15:\"&#xf002; search\";s:15:\"fa-search-minus\";s:21:\"&#xf010; search-minus\";s:14:\"fa-search-plus\";s:20:\"&#xf00e; search-plus\";s:9:\"fa-sellsy\";s:15:\"&#xf213; sellsy\";s:9:\"fa-server\";s:15:\"&#xf233; server\";s:8:\"fa-share\";s:14:\"&#xf064; share\";s:12:\"fa-share-alt\";s:18:\"&#xf1e0; share-alt\";s:19:\"fa-share-alt-square\";s:25:\"&#xf1e1; share-alt-square\";s:15:\"fa-share-square\";s:21:\"&#xf14d; share-square\";s:17:\"fa-share-square-o\";s:23:\"&#xf045; share-square-o\";s:9:\"fa-shield\";s:15:\"&#xf132; shield\";s:7:\"fa-ship\";s:13:\"&#xf21a; ship\";s:15:\"fa-shirtsinbulk\";s:21:\"&#xf214; shirtsinbulk\";s:15:\"fa-shopping-bag\";s:21:\"&#xf290; shopping-bag\";s:18:\"fa-shopping-basket\";s:24:\"&#xf291; shopping-basket\";s:16:\"fa-shopping-cart\";s:22:\"&#xf07a; shopping-cart\";s:9:\"fa-shower\";s:15:\"&#xf2cc; shower\";s:10:\"fa-sign-in\";s:16:\"&#xf090; sign-in\";s:16:\"fa-sign-language\";s:22:\"&#xf2a7; sign-language\";s:11:\"fa-sign-out\";s:17:\"&#xf08b; sign-out\";s:9:\"fa-signal\";s:15:\"&#xf012; signal\";s:14:\"fa-simplybuilt\";s:20:\"&#xf215; simplybuilt\";s:10:\"fa-sitemap\";s:16:\"&#xf0e8; sitemap\";s:11:\"fa-skyatlas\";s:17:\"&#xf216; skyatlas\";s:8:\"fa-skype\";s:14:\"&#xf17e; skype\";s:8:\"fa-slack\";s:14:\"&#xf198; slack\";s:10:\"fa-sliders\";s:16:\"&#xf1de; sliders\";s:13:\"fa-slideshare\";s:19:\"&#xf1e7; slideshare\";s:10:\"fa-smile-o\";s:16:\"&#xf118; smile-o\";s:11:\"fa-snapchat\";s:17:\"&#xf2ab; snapchat\";s:17:\"fa-snapchat-ghost\";s:23:\"&#xf2ac; snapchat-ghost\";s:18:\"fa-snapchat-square\";s:24:\"&#xf2ad; snapchat-square\";s:14:\"fa-snowflake-o\";s:20:\"&#xf2dc; snowflake-o\";s:7:\"fa-sort\";s:13:\"&#xf0dc; sort\";s:17:\"fa-sort-alpha-asc\";s:23:\"&#xf15d; sort-alpha-asc\";s:18:\"fa-sort-alpha-desc\";s:24:\"&#xf15e; sort-alpha-desc\";s:18:\"fa-sort-amount-asc\";s:24:\"&#xf160; sort-amount-asc\";s:19:\"fa-sort-amount-desc\";s:25:\"&#xf161; sort-amount-desc\";s:11:\"fa-sort-asc\";s:17:\"&#xf0de; sort-asc\";s:12:\"fa-sort-desc\";s:18:\"&#xf0dd; sort-desc\";s:19:\"fa-sort-numeric-asc\";s:25:\"&#xf162; sort-numeric-asc\";s:20:\"fa-sort-numeric-desc\";s:26:\"&#xf163; sort-numeric-desc\";s:13:\"fa-soundcloud\";s:19:\"&#xf1be; soundcloud\";s:16:\"fa-space-shuttle\";s:22:\"&#xf197; space-shuttle\";s:10:\"fa-spinner\";s:16:\"&#xf110; spinner\";s:8:\"fa-spoon\";s:14:\"&#xf1b1; spoon\";s:10:\"fa-spotify\";s:16:\"&#xf1bc; spotify\";s:9:\"fa-square\";s:15:\"&#xf0c8; square\";s:11:\"fa-square-o\";s:17:\"&#xf096; square-o\";s:17:\"fa-stack-exchange\";s:23:\"&#xf18d; stack-exchange\";s:17:\"fa-stack-overflow\";s:23:\"&#xf16c; stack-overflow\";s:7:\"fa-star\";s:13:\"&#xf005; star\";s:12:\"fa-star-half\";s:18:\"&#xf089; star-half\";s:14:\"fa-star-half-o\";s:20:\"&#xf123; star-half-o\";s:9:\"fa-star-o\";s:15:\"&#xf006; star-o\";s:8:\"fa-steam\";s:14:\"&#xf1b6; steam\";s:15:\"fa-steam-square\";s:21:\"&#xf1b7; steam-square\";s:16:\"fa-step-backward\";s:22:\"&#xf048; step-backward\";s:15:\"fa-step-forward\";s:21:\"&#xf051; step-forward\";s:14:\"fa-stethoscope\";s:20:\"&#xf0f1; stethoscope\";s:14:\"fa-sticky-note\";s:20:\"&#xf249; sticky-note\";s:16:\"fa-sticky-note-o\";s:22:\"&#xf24a; sticky-note-o\";s:7:\"fa-stop\";s:13:\"&#xf04d; stop\";s:14:\"fa-stop-circle\";s:20:\"&#xf28d; stop-circle\";s:16:\"fa-stop-circle-o\";s:22:\"&#xf28e; stop-circle-o\";s:14:\"fa-street-view\";s:20:\"&#xf21d; street-view\";s:16:\"fa-strikethrough\";s:22:\"&#xf0cc; strikethrough\";s:14:\"fa-stumbleupon\";s:20:\"&#xf1a4; stumbleupon\";s:21:\"fa-stumbleupon-circle\";s:27:\"&#xf1a3; stumbleupon-circle\";s:12:\"fa-subscript\";s:18:\"&#xf12c; subscript\";s:9:\"fa-subway\";s:15:\"&#xf239; subway\";s:11:\"fa-suitcase\";s:17:\"&#xf0f2; suitcase\";s:8:\"fa-sun-o\";s:14:\"&#xf185; sun-o\";s:14:\"fa-superpowers\";s:20:\"&#xf2dd; superpowers\";s:14:\"fa-superscript\";s:20:\"&#xf12b; superscript\";s:8:\"fa-table\";s:14:\"&#xf0ce; table\";s:9:\"fa-tablet\";s:15:\"&#xf10a; tablet\";s:13:\"fa-tachometer\";s:19:\"&#xf0e4; tachometer\";s:6:\"fa-tag\";s:12:\"&#xf02b; tag\";s:7:\"fa-tags\";s:13:\"&#xf02c; tags\";s:8:\"fa-tasks\";s:14:\"&#xf0ae; tasks\";s:7:\"fa-taxi\";s:13:\"&#xf1ba; taxi\";s:11:\"fa-telegram\";s:17:\"&#xf2c6; telegram\";s:13:\"fa-television\";s:19:\"&#xf26c; television\";s:16:\"fa-tencent-weibo\";s:22:\"&#xf1d5; tencent-weibo\";s:11:\"fa-terminal\";s:17:\"&#xf120; terminal\";s:14:\"fa-text-height\";s:20:\"&#xf034; text-height\";s:13:\"fa-text-width\";s:19:\"&#xf035; text-width\";s:5:\"fa-th\";s:11:\"&#xf00a; th\";s:11:\"fa-th-large\";s:17:\"&#xf009; th-large\";s:10:\"fa-th-list\";s:16:\"&#xf00b; th-list\";s:12:\"fa-themeisle\";s:18:\"&#xf2b2; themeisle\";s:20:\"fa-thermometer-empty\";s:26:\"&#xf2cb; thermometer-empty\";s:19:\"fa-thermometer-full\";s:25:\"&#xf2c7; thermometer-full\";s:19:\"fa-thermometer-half\";s:25:\"&#xf2c9; thermometer-half\";s:22:\"fa-thermometer-quarter\";s:28:\"&#xf2ca; thermometer-quarter\";s:29:\"fa-thermometer-three-quarters\";s:35:\"&#xf2c8; thermometer-three-quarters\";s:13:\"fa-thumb-tack\";s:19:\"&#xf08d; thumb-tack\";s:14:\"fa-thumbs-down\";s:20:\"&#xf165; thumbs-down\";s:16:\"fa-thumbs-o-down\";s:22:\"&#xf088; thumbs-o-down\";s:14:\"fa-thumbs-o-up\";s:20:\"&#xf087; thumbs-o-up\";s:12:\"fa-thumbs-up\";s:18:\"&#xf164; thumbs-up\";s:9:\"fa-ticket\";s:15:\"&#xf145; ticket\";s:8:\"fa-times\";s:14:\"&#xf00d; times\";s:15:\"fa-times-circle\";s:21:\"&#xf057; times-circle\";s:17:\"fa-times-circle-o\";s:23:\"&#xf05c; times-circle-o\";s:7:\"fa-tint\";s:13:\"&#xf043; tint\";s:13:\"fa-toggle-off\";s:19:\"&#xf204; toggle-off\";s:12:\"fa-toggle-on\";s:18:\"&#xf205; toggle-on\";s:12:\"fa-trademark\";s:18:\"&#xf25c; trademark\";s:8:\"fa-train\";s:14:\"&#xf238; train\";s:14:\"fa-transgender\";s:20:\"&#xf224; transgender\";s:18:\"fa-transgender-alt\";s:24:\"&#xf225; transgender-alt\";s:8:\"fa-trash\";s:14:\"&#xf1f8; trash\";s:10:\"fa-trash-o\";s:16:\"&#xf014; trash-o\";s:7:\"fa-tree\";s:13:\"&#xf1bb; tree\";s:9:\"fa-trello\";s:15:\"&#xf181; trello\";s:14:\"fa-tripadvisor\";s:20:\"&#xf262; tripadvisor\";s:9:\"fa-trophy\";s:15:\"&#xf091; trophy\";s:8:\"fa-truck\";s:14:\"&#xf0d1; truck\";s:6:\"fa-try\";s:12:\"&#xf195; try\";s:6:\"fa-tty\";s:12:\"&#xf1e4; tty\";s:9:\"fa-tumblr\";s:15:\"&#xf173; tumblr\";s:16:\"fa-tumblr-square\";s:22:\"&#xf174; tumblr-square\";s:9:\"fa-twitch\";s:15:\"&#xf1e8; twitch\";s:10:\"fa-twitter\";s:16:\"&#xf099; twitter\";s:17:\"fa-twitter-square\";s:23:\"&#xf081; twitter-square\";s:11:\"fa-umbrella\";s:17:\"&#xf0e9; umbrella\";s:12:\"fa-underline\";s:18:\"&#xf0cd; underline\";s:7:\"fa-undo\";s:13:\"&#xf0e2; undo\";s:19:\"fa-universal-access\";s:25:\"&#xf29a; universal-access\";s:13:\"fa-university\";s:19:\"&#xf19c; university\";s:9:\"fa-unlock\";s:15:\"&#xf09c; unlock\";s:13:\"fa-unlock-alt\";s:19:\"&#xf13e; unlock-alt\";s:9:\"fa-upload\";s:15:\"&#xf093; upload\";s:6:\"fa-usb\";s:12:\"&#xf287; usb\";s:6:\"fa-usd\";s:12:\"&#xf155; usd\";s:7:\"fa-user\";s:13:\"&#xf007; user\";s:14:\"fa-user-circle\";s:20:\"&#xf2bd; user-circle\";s:16:\"fa-user-circle-o\";s:22:\"&#xf2be; user-circle-o\";s:10:\"fa-user-md\";s:16:\"&#xf0f0; user-md\";s:9:\"fa-user-o\";s:15:\"&#xf2c0; user-o\";s:12:\"fa-user-plus\";s:18:\"&#xf234; user-plus\";s:14:\"fa-user-secret\";s:20:\"&#xf21b; user-secret\";s:13:\"fa-user-times\";s:19:\"&#xf235; user-times\";s:8:\"fa-users\";s:14:\"&#xf0c0; users\";s:8:\"fa-venus\";s:14:\"&#xf221; venus\";s:15:\"fa-venus-double\";s:21:\"&#xf226; venus-double\";s:13:\"fa-venus-mars\";s:19:\"&#xf228; venus-mars\";s:10:\"fa-viacoin\";s:16:\"&#xf237; viacoin\";s:9:\"fa-viadeo\";s:15:\"&#xf2a9; viadeo\";s:16:\"fa-viadeo-square\";s:22:\"&#xf2aa; viadeo-square\";s:15:\"fa-video-camera\";s:21:\"&#xf03d; video-camera\";s:8:\"fa-vimeo\";s:14:\"&#xf27d; vimeo\";s:15:\"fa-vimeo-square\";s:21:\"&#xf194; vimeo-square\";s:7:\"fa-vine\";s:13:\"&#xf1ca; vine\";s:5:\"fa-vk\";s:11:\"&#xf189; vk\";s:23:\"fa-volume-control-phone\";s:29:\"&#xf2a0; volume-control-phone\";s:14:\"fa-volume-down\";s:20:\"&#xf027; volume-down\";s:13:\"fa-volume-off\";s:19:\"&#xf026; volume-off\";s:12:\"fa-volume-up\";s:18:\"&#xf028; volume-up\";s:8:\"fa-weibo\";s:14:\"&#xf18a; weibo\";s:9:\"fa-weixin\";s:15:\"&#xf1d7; weixin\";s:11:\"fa-whatsapp\";s:17:\"&#xf232; whatsapp\";s:13:\"fa-wheelchair\";s:19:\"&#xf193; wheelchair\";s:17:\"fa-wheelchair-alt\";s:23:\"&#xf29b; wheelchair-alt\";s:7:\"fa-wifi\";s:13:\"&#xf1eb; wifi\";s:14:\"fa-wikipedia-w\";s:20:\"&#xf266; wikipedia-w\";s:15:\"fa-window-close\";s:21:\"&#xf2d3; window-close\";s:17:\"fa-window-close-o\";s:23:\"&#xf2d4; window-close-o\";s:18:\"fa-window-maximize\";s:24:\"&#xf2d0; window-maximize\";s:18:\"fa-window-minimize\";s:24:\"&#xf2d1; window-minimize\";s:17:\"fa-window-restore\";s:23:\"&#xf2d2; window-restore\";s:10:\"fa-windows\";s:16:\"&#xf17a; windows\";s:12:\"fa-wordpress\";s:18:\"&#xf19a; wordpress\";s:13:\"fa-wpbeginner\";s:19:\"&#xf297; wpbeginner\";s:13:\"fa-wpexplorer\";s:19:\"&#xf2de; wpexplorer\";s:10:\"fa-wpforms\";s:16:\"&#xf298; wpforms\";s:9:\"fa-wrench\";s:15:\"&#xf0ad; wrench\";s:7:\"fa-xing\";s:13:\"&#xf168; xing\";s:14:\"fa-xing-square\";s:20:\"&#xf169; xing-square\";s:15:\"fa-y-combinator\";s:21:\"&#xf23b; y-combinator\";s:8:\"fa-yahoo\";s:14:\"&#xf19e; yahoo\";s:7:\"fa-yelp\";s:13:\"&#xf1e9; yelp\";s:8:\"fa-yoast\";s:14:\"&#xf2b1; yoast\";s:10:\"fa-youtube\";s:16:\"&#xf167; youtube\";s:15:\"fa-youtube-play\";s:21:\"&#xf16a; youtube-play\";s:17:\"fa-youtube-square\";s:23:\"&#xf166; youtube-square\";}s:7:\"details\";a:675:{s:9:\"fa-meetup\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-meetup\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-meetup\";s:3:\"hex\";s:5:\"\\f2e0\";s:7:\"unicode\";s:8:\"&#xf2e0;\";}s:13:\"fa-wpexplorer\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-wpexplorer\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-wpexplorer\";s:3:\"hex\";s:5:\"\\f2de\";s:7:\"unicode\";s:8:\"&#xf2de;\";}s:14:\"fa-superpowers\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-superpowers\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-superpowers\";s:3:\"hex\";s:5:\"\\f2dd\";s:7:\"unicode\";s:8:\"&#xf2dd;\";}s:14:\"fa-snowflake-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-snowflake-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-snowflake-o\";s:3:\"hex\";s:5:\"\\f2dc\";s:7:\"unicode\";s:8:\"&#xf2dc;\";}s:12:\"fa-microchip\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-microchip\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-microchip\";s:3:\"hex\";s:5:\"\\f2db\";s:7:\"unicode\";s:8:\"&#xf2db;\";}s:10:\"fa-eercast\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-eercast\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-eercast\";s:3:\"hex\";s:5:\"\\f2da\";s:7:\"unicode\";s:8:\"&#xf2da;\";}s:10:\"fa-ravelry\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-ravelry\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-ravelry\";s:3:\"hex\";s:5:\"\\f2d9\";s:7:\"unicode\";s:8:\"&#xf2d9;\";}s:7:\"fa-imdb\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-imdb\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-imdb\";s:3:\"hex\";s:5:\"\\f2d8\";s:7:\"unicode\";s:8:\"&#xf2d8;\";}s:7:\"fa-etsy\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-etsy\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-etsy\";s:3:\"hex\";s:5:\"\\f2d7\";s:7:\"unicode\";s:8:\"&#xf2d7;\";}s:7:\"fa-grav\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-grav\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-grav\";s:3:\"hex\";s:5:\"\\f2d6\";s:7:\"unicode\";s:8:\"&#xf2d6;\";}s:11:\"fa-bandcamp\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-bandcamp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-bandcamp\";s:3:\"hex\";s:5:\"\\f2d5\";s:7:\"unicode\";s:8:\"&#xf2d5;\";}s:17:\"fa-window-close-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-window-close-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-window-close-o\";s:3:\"hex\";s:5:\"\\f2d4\";s:7:\"unicode\";s:8:\"&#xf2d4;\";}s:15:\"fa-window-close\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-window-close\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-window-close\";s:3:\"hex\";s:5:\"\\f2d3\";s:7:\"unicode\";s:8:\"&#xf2d3;\";}s:17:\"fa-window-restore\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-window-restore\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-window-restore\";s:3:\"hex\";s:5:\"\\f2d2\";s:7:\"unicode\";s:8:\"&#xf2d2;\";}s:18:\"fa-window-minimize\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-window-minimize\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-window-minimize\";s:3:\"hex\";s:5:\"\\f2d1\";s:7:\"unicode\";s:8:\"&#xf2d1;\";}s:18:\"fa-window-maximize\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-window-maximize\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-window-maximize\";s:3:\"hex\";s:5:\"\\f2d0\";s:7:\"unicode\";s:8:\"&#xf2d0;\";}s:10:\"fa-podcast\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-podcast\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-podcast\";s:3:\"hex\";s:5:\"\\f2ce\";s:7:\"unicode\";s:8:\"&#xf2ce;\";}s:7:\"fa-bath\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bath\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bath\";s:3:\"hex\";s:5:\"\\f2cd\";s:7:\"unicode\";s:8:\"&#xf2cd;\";}s:9:\"fa-shower\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-shower\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-shower\";s:3:\"hex\";s:5:\"\\f2cc\";s:7:\"unicode\";s:8:\"&#xf2cc;\";}s:20:\"fa-thermometer-empty\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-thermometer-empty\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-thermometer-empty\";s:3:\"hex\";s:5:\"\\f2cb\";s:7:\"unicode\";s:8:\"&#xf2cb;\";}s:22:\"fa-thermometer-quarter\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-thermometer-quarter\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-thermometer-quarter\";s:3:\"hex\";s:5:\"\\f2ca\";s:7:\"unicode\";s:8:\"&#xf2ca;\";}s:19:\"fa-thermometer-half\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-thermometer-half\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-thermometer-half\";s:3:\"hex\";s:5:\"\\f2c9\";s:7:\"unicode\";s:8:\"&#xf2c9;\";}s:29:\"fa-thermometer-three-quarters\";a:4:{s:7:\"element\";s:67:\"<i class=\"fa fa-thermometer-three-quarters\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:29:\"fa-thermometer-three-quarters\";s:3:\"hex\";s:5:\"\\f2c8\";s:7:\"unicode\";s:8:\"&#xf2c8;\";}s:19:\"fa-thermometer-full\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-thermometer-full\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-thermometer-full\";s:3:\"hex\";s:5:\"\\f2c7\";s:7:\"unicode\";s:8:\"&#xf2c7;\";}s:11:\"fa-telegram\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-telegram\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-telegram\";s:3:\"hex\";s:5:\"\\f2c6\";s:7:\"unicode\";s:8:\"&#xf2c6;\";}s:17:\"fa-free-code-camp\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-free-code-camp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-free-code-camp\";s:3:\"hex\";s:5:\"\\f2c5\";s:7:\"unicode\";s:8:\"&#xf2c5;\";}s:8:\"fa-quora\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-quora\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-quora\";s:3:\"hex\";s:5:\"\\f2c4\";s:7:\"unicode\";s:8:\"&#xf2c4;\";}s:12:\"fa-id-card-o\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-id-card-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-id-card-o\";s:3:\"hex\";s:5:\"\\f2c3\";s:7:\"unicode\";s:8:\"&#xf2c3;\";}s:10:\"fa-id-card\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-id-card\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-id-card\";s:3:\"hex\";s:5:\"\\f2c2\";s:7:\"unicode\";s:8:\"&#xf2c2;\";}s:11:\"fa-id-badge\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-id-badge\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-id-badge\";s:3:\"hex\";s:5:\"\\f2c1\";s:7:\"unicode\";s:8:\"&#xf2c1;\";}s:9:\"fa-user-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-user-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-user-o\";s:3:\"hex\";s:5:\"\\f2c0\";s:7:\"unicode\";s:8:\"&#xf2c0;\";}s:16:\"fa-user-circle-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-user-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-user-circle-o\";s:3:\"hex\";s:5:\"\\f2be\";s:7:\"unicode\";s:8:\"&#xf2be;\";}s:14:\"fa-user-circle\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-user-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-user-circle\";s:3:\"hex\";s:5:\"\\f2bd\";s:7:\"unicode\";s:8:\"&#xf2bd;\";}s:17:\"fa-address-card-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-address-card-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-address-card-o\";s:3:\"hex\";s:5:\"\\f2bc\";s:7:\"unicode\";s:8:\"&#xf2bc;\";}s:15:\"fa-address-card\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-address-card\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-address-card\";s:3:\"hex\";s:5:\"\\f2bb\";s:7:\"unicode\";s:8:\"&#xf2bb;\";}s:17:\"fa-address-book-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-address-book-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-address-book-o\";s:3:\"hex\";s:5:\"\\f2ba\";s:7:\"unicode\";s:8:\"&#xf2ba;\";}s:15:\"fa-address-book\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-address-book\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-address-book\";s:3:\"hex\";s:5:\"\\f2b9\";s:7:\"unicode\";s:8:\"&#xf2b9;\";}s:9:\"fa-linode\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-linode\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-linode\";s:3:\"hex\";s:5:\"\\f2b8\";s:7:\"unicode\";s:8:\"&#xf2b8;\";}s:18:\"fa-envelope-open-o\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-envelope-open-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-envelope-open-o\";s:3:\"hex\";s:5:\"\\f2b7\";s:7:\"unicode\";s:8:\"&#xf2b7;\";}s:16:\"fa-envelope-open\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-envelope-open\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-envelope-open\";s:3:\"hex\";s:5:\"\\f2b6\";s:7:\"unicode\";s:8:\"&#xf2b6;\";}s:14:\"fa-handshake-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-handshake-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-handshake-o\";s:3:\"hex\";s:5:\"\\f2b5\";s:7:\"unicode\";s:8:\"&#xf2b5;\";}s:15:\"fa-font-awesome\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-font-awesome\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-font-awesome\";s:3:\"hex\";s:5:\"\\f2b4\";s:7:\"unicode\";s:8:\"&#xf2b4;\";}s:23:\"fa-google-plus-official\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-google-plus-official\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-google-plus-official\";s:3:\"hex\";s:5:\"\\f2b3\";s:7:\"unicode\";s:8:\"&#xf2b3;\";}s:12:\"fa-themeisle\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-themeisle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-themeisle\";s:3:\"hex\";s:5:\"\\f2b2\";s:7:\"unicode\";s:8:\"&#xf2b2;\";}s:8:\"fa-yoast\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-yoast\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-yoast\";s:3:\"hex\";s:5:\"\\f2b1\";s:7:\"unicode\";s:8:\"&#xf2b1;\";}s:14:\"fa-first-order\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-first-order\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-first-order\";s:3:\"hex\";s:5:\"\\f2b0\";s:7:\"unicode\";s:8:\"&#xf2b0;\";}s:13:\"fa-pied-piper\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-pied-piper\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-pied-piper\";s:3:\"hex\";s:5:\"\\f2ae\";s:7:\"unicode\";s:8:\"&#xf2ae;\";}s:18:\"fa-snapchat-square\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-snapchat-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-snapchat-square\";s:3:\"hex\";s:5:\"\\f2ad\";s:7:\"unicode\";s:8:\"&#xf2ad;\";}s:17:\"fa-snapchat-ghost\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-snapchat-ghost\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-snapchat-ghost\";s:3:\"hex\";s:5:\"\\f2ac\";s:7:\"unicode\";s:8:\"&#xf2ac;\";}s:11:\"fa-snapchat\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-snapchat\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-snapchat\";s:3:\"hex\";s:5:\"\\f2ab\";s:7:\"unicode\";s:8:\"&#xf2ab;\";}s:16:\"fa-viadeo-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-viadeo-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-viadeo-square\";s:3:\"hex\";s:5:\"\\f2aa\";s:7:\"unicode\";s:8:\"&#xf2aa;\";}s:9:\"fa-viadeo\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-viadeo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-viadeo\";s:3:\"hex\";s:5:\"\\f2a9\";s:7:\"unicode\";s:8:\"&#xf2a9;\";}s:13:\"fa-low-vision\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-low-vision\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-low-vision\";s:3:\"hex\";s:5:\"\\f2a8\";s:7:\"unicode\";s:8:\"&#xf2a8;\";}s:16:\"fa-sign-language\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-sign-language\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-sign-language\";s:3:\"hex\";s:5:\"\\f2a7\";s:7:\"unicode\";s:8:\"&#xf2a7;\";}s:10:\"fa-glide-g\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-glide-g\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-glide-g\";s:3:\"hex\";s:5:\"\\f2a6\";s:7:\"unicode\";s:8:\"&#xf2a6;\";}s:8:\"fa-glide\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-glide\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-glide\";s:3:\"hex\";s:5:\"\\f2a5\";s:7:\"unicode\";s:8:\"&#xf2a5;\";}s:7:\"fa-deaf\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-deaf\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-deaf\";s:3:\"hex\";s:5:\"\\f2a4\";s:7:\"unicode\";s:8:\"&#xf2a4;\";}s:38:\"fa-american-sign-language-interpreting\";a:4:{s:7:\"element\";s:76:\"<i class=\"fa fa-american-sign-language-interpreting\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:38:\"fa-american-sign-language-interpreting\";s:3:\"hex\";s:5:\"\\f2a3\";s:7:\"unicode\";s:8:\"&#xf2a3;\";}s:30:\"fa-assistive-listening-systems\";a:4:{s:7:\"element\";s:68:\"<i class=\"fa fa-assistive-listening-systems\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:30:\"fa-assistive-listening-systems\";s:3:\"hex\";s:5:\"\\f2a2\";s:7:\"unicode\";s:8:\"&#xf2a2;\";}s:10:\"fa-braille\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-braille\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-braille\";s:3:\"hex\";s:5:\"\\f2a1\";s:7:\"unicode\";s:8:\"&#xf2a1;\";}s:23:\"fa-volume-control-phone\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-volume-control-phone\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-volume-control-phone\";s:3:\"hex\";s:5:\"\\f2a0\";s:7:\"unicode\";s:8:\"&#xf2a0;\";}s:20:\"fa-audio-description\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-audio-description\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-audio-description\";s:3:\"hex\";s:5:\"\\f29e\";s:7:\"unicode\";s:8:\"&#xf29e;\";}s:8:\"fa-blind\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-blind\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-blind\";s:3:\"hex\";s:5:\"\\f29d\";s:7:\"unicode\";s:8:\"&#xf29d;\";}s:20:\"fa-question-circle-o\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-question-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-question-circle-o\";s:3:\"hex\";s:5:\"\\f29c\";s:7:\"unicode\";s:8:\"&#xf29c;\";}s:17:\"fa-wheelchair-alt\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-wheelchair-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-wheelchair-alt\";s:3:\"hex\";s:5:\"\\f29b\";s:7:\"unicode\";s:8:\"&#xf29b;\";}s:19:\"fa-universal-access\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-universal-access\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-universal-access\";s:3:\"hex\";s:5:\"\\f29a\";s:7:\"unicode\";s:8:\"&#xf29a;\";}s:9:\"fa-envira\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-envira\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-envira\";s:3:\"hex\";s:5:\"\\f299\";s:7:\"unicode\";s:8:\"&#xf299;\";}s:10:\"fa-wpforms\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-wpforms\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-wpforms\";s:3:\"hex\";s:5:\"\\f298\";s:7:\"unicode\";s:8:\"&#xf298;\";}s:13:\"fa-wpbeginner\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-wpbeginner\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-wpbeginner\";s:3:\"hex\";s:5:\"\\f297\";s:7:\"unicode\";s:8:\"&#xf297;\";}s:9:\"fa-gitlab\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-gitlab\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-gitlab\";s:3:\"hex\";s:5:\"\\f296\";s:7:\"unicode\";s:8:\"&#xf296;\";}s:10:\"fa-percent\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-percent\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-percent\";s:3:\"hex\";s:5:\"\\f295\";s:7:\"unicode\";s:8:\"&#xf295;\";}s:14:\"fa-bluetooth-b\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-bluetooth-b\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-bluetooth-b\";s:3:\"hex\";s:5:\"\\f294\";s:7:\"unicode\";s:8:\"&#xf294;\";}s:12:\"fa-bluetooth\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-bluetooth\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-bluetooth\";s:3:\"hex\";s:5:\"\\f293\";s:7:\"unicode\";s:8:\"&#xf293;\";}s:10:\"fa-hashtag\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-hashtag\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-hashtag\";s:3:\"hex\";s:5:\"\\f292\";s:7:\"unicode\";s:8:\"&#xf292;\";}s:18:\"fa-shopping-basket\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-shopping-basket\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-shopping-basket\";s:3:\"hex\";s:5:\"\\f291\";s:7:\"unicode\";s:8:\"&#xf291;\";}s:15:\"fa-shopping-bag\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-shopping-bag\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-shopping-bag\";s:3:\"hex\";s:5:\"\\f290\";s:7:\"unicode\";s:8:\"&#xf290;\";}s:16:\"fa-stop-circle-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-stop-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-stop-circle-o\";s:3:\"hex\";s:5:\"\\f28e\";s:7:\"unicode\";s:8:\"&#xf28e;\";}s:14:\"fa-stop-circle\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-stop-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-stop-circle\";s:3:\"hex\";s:5:\"\\f28d\";s:7:\"unicode\";s:8:\"&#xf28d;\";}s:17:\"fa-pause-circle-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-pause-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-pause-circle-o\";s:3:\"hex\";s:5:\"\\f28c\";s:7:\"unicode\";s:8:\"&#xf28c;\";}s:15:\"fa-pause-circle\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-pause-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-pause-circle\";s:3:\"hex\";s:5:\"\\f28b\";s:7:\"unicode\";s:8:\"&#xf28b;\";}s:9:\"fa-scribd\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-scribd\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-scribd\";s:3:\"hex\";s:5:\"\\f28a\";s:7:\"unicode\";s:8:\"&#xf28a;\";}s:11:\"fa-mixcloud\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-mixcloud\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-mixcloud\";s:3:\"hex\";s:5:\"\\f289\";s:7:\"unicode\";s:8:\"&#xf289;\";}s:15:\"fa-product-hunt\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-product-hunt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-product-hunt\";s:3:\"hex\";s:5:\"\\f288\";s:7:\"unicode\";s:8:\"&#xf288;\";}s:6:\"fa-usb\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-usb\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-usb\";s:3:\"hex\";s:5:\"\\f287\";s:7:\"unicode\";s:8:\"&#xf287;\";}s:15:\"fa-fort-awesome\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-fort-awesome\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-fort-awesome\";s:3:\"hex\";s:5:\"\\f286\";s:7:\"unicode\";s:8:\"&#xf286;\";}s:7:\"fa-modx\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-modx\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-modx\";s:3:\"hex\";s:5:\"\\f285\";s:7:\"unicode\";s:8:\"&#xf285;\";}s:11:\"fa-codiepie\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-codiepie\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-codiepie\";s:3:\"hex\";s:5:\"\\f284\";s:7:\"unicode\";s:8:\"&#xf284;\";}s:18:\"fa-credit-card-alt\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-credit-card-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-credit-card-alt\";s:3:\"hex\";s:5:\"\\f283\";s:7:\"unicode\";s:8:\"&#xf283;\";}s:7:\"fa-edge\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-edge\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-edge\";s:3:\"hex\";s:5:\"\\f282\";s:7:\"unicode\";s:8:\"&#xf282;\";}s:15:\"fa-reddit-alien\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-reddit-alien\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-reddit-alien\";s:3:\"hex\";s:5:\"\\f281\";s:7:\"unicode\";s:8:\"&#xf281;\";}s:12:\"fa-fonticons\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-fonticons\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-fonticons\";s:3:\"hex\";s:5:\"\\f280\";s:7:\"unicode\";s:8:\"&#xf280;\";}s:12:\"fa-black-tie\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-black-tie\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-black-tie\";s:3:\"hex\";s:5:\"\\f27e\";s:7:\"unicode\";s:8:\"&#xf27e;\";}s:8:\"fa-vimeo\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-vimeo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-vimeo\";s:3:\"hex\";s:5:\"\\f27d\";s:7:\"unicode\";s:8:\"&#xf27d;\";}s:8:\"fa-houzz\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-houzz\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-houzz\";s:3:\"hex\";s:5:\"\\f27c\";s:7:\"unicode\";s:8:\"&#xf27c;\";}s:15:\"fa-commenting-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-commenting-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-commenting-o\";s:3:\"hex\";s:5:\"\\f27b\";s:7:\"unicode\";s:8:\"&#xf27b;\";}s:13:\"fa-commenting\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-commenting\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-commenting\";s:3:\"hex\";s:5:\"\\f27a\";s:7:\"unicode\";s:8:\"&#xf27a;\";}s:6:\"fa-map\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-map\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-map\";s:3:\"hex\";s:5:\"\\f279\";s:7:\"unicode\";s:8:\"&#xf279;\";}s:8:\"fa-map-o\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-map-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-map-o\";s:3:\"hex\";s:5:\"\\f278\";s:7:\"unicode\";s:8:\"&#xf278;\";}s:12:\"fa-map-signs\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-map-signs\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-map-signs\";s:3:\"hex\";s:5:\"\\f277\";s:7:\"unicode\";s:8:\"&#xf277;\";}s:10:\"fa-map-pin\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-map-pin\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-map-pin\";s:3:\"hex\";s:5:\"\\f276\";s:7:\"unicode\";s:8:\"&#xf276;\";}s:11:\"fa-industry\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-industry\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-industry\";s:3:\"hex\";s:5:\"\\f275\";s:7:\"unicode\";s:8:\"&#xf275;\";}s:19:\"fa-calendar-check-o\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-calendar-check-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-calendar-check-o\";s:3:\"hex\";s:5:\"\\f274\";s:7:\"unicode\";s:8:\"&#xf274;\";}s:19:\"fa-calendar-times-o\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-calendar-times-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-calendar-times-o\";s:3:\"hex\";s:5:\"\\f273\";s:7:\"unicode\";s:8:\"&#xf273;\";}s:19:\"fa-calendar-minus-o\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-calendar-minus-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-calendar-minus-o\";s:3:\"hex\";s:5:\"\\f272\";s:7:\"unicode\";s:8:\"&#xf272;\";}s:18:\"fa-calendar-plus-o\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-calendar-plus-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-calendar-plus-o\";s:3:\"hex\";s:5:\"\\f271\";s:7:\"unicode\";s:8:\"&#xf271;\";}s:9:\"fa-amazon\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-amazon\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-amazon\";s:3:\"hex\";s:5:\"\\f270\";s:7:\"unicode\";s:8:\"&#xf270;\";}s:8:\"fa-500px\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-500px\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-500px\";s:3:\"hex\";s:5:\"\\f26e\";s:7:\"unicode\";s:8:\"&#xf26e;\";}s:9:\"fa-contao\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-contao\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-contao\";s:3:\"hex\";s:5:\"\\f26d\";s:7:\"unicode\";s:8:\"&#xf26d;\";}s:13:\"fa-television\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-television\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-television\";s:3:\"hex\";s:5:\"\\f26c\";s:7:\"unicode\";s:8:\"&#xf26c;\";}s:20:\"fa-internet-explorer\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-internet-explorer\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-internet-explorer\";s:3:\"hex\";s:5:\"\\f26b\";s:7:\"unicode\";s:8:\"&#xf26b;\";}s:8:\"fa-opera\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-opera\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-opera\";s:3:\"hex\";s:5:\"\\f26a\";s:7:\"unicode\";s:8:\"&#xf26a;\";}s:10:\"fa-firefox\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-firefox\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-firefox\";s:3:\"hex\";s:5:\"\\f269\";s:7:\"unicode\";s:8:\"&#xf269;\";}s:9:\"fa-chrome\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-chrome\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-chrome\";s:3:\"hex\";s:5:\"\\f268\";s:7:\"unicode\";s:8:\"&#xf268;\";}s:9:\"fa-safari\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-safari\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-safari\";s:3:\"hex\";s:5:\"\\f267\";s:7:\"unicode\";s:8:\"&#xf267;\";}s:14:\"fa-wikipedia-w\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-wikipedia-w\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-wikipedia-w\";s:3:\"hex\";s:5:\"\\f266\";s:7:\"unicode\";s:8:\"&#xf266;\";}s:13:\"fa-get-pocket\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-get-pocket\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-get-pocket\";s:3:\"hex\";s:5:\"\\f265\";s:7:\"unicode\";s:8:\"&#xf265;\";}s:23:\"fa-odnoklassniki-square\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-odnoklassniki-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-odnoklassniki-square\";s:3:\"hex\";s:5:\"\\f264\";s:7:\"unicode\";s:8:\"&#xf264;\";}s:16:\"fa-odnoklassniki\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-odnoklassniki\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-odnoklassniki\";s:3:\"hex\";s:5:\"\\f263\";s:7:\"unicode\";s:8:\"&#xf263;\";}s:14:\"fa-tripadvisor\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-tripadvisor\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-tripadvisor\";s:3:\"hex\";s:5:\"\\f262\";s:7:\"unicode\";s:8:\"&#xf262;\";}s:12:\"fa-gg-circle\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-gg-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-gg-circle\";s:3:\"hex\";s:5:\"\\f261\";s:7:\"unicode\";s:8:\"&#xf261;\";}s:5:\"fa-gg\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-gg\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-gg\";s:3:\"hex\";s:5:\"\\f260\";s:7:\"unicode\";s:8:\"&#xf260;\";}s:19:\"fa-creative-commons\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-creative-commons\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-creative-commons\";s:3:\"hex\";s:5:\"\\f25e\";s:7:\"unicode\";s:8:\"&#xf25e;\";}s:13:\"fa-registered\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-registered\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-registered\";s:3:\"hex\";s:5:\"\\f25d\";s:7:\"unicode\";s:8:\"&#xf25d;\";}s:12:\"fa-trademark\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-trademark\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-trademark\";s:3:\"hex\";s:5:\"\\f25c\";s:7:\"unicode\";s:8:\"&#xf25c;\";}s:15:\"fa-hand-peace-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-hand-peace-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-hand-peace-o\";s:3:\"hex\";s:5:\"\\f25b\";s:7:\"unicode\";s:8:\"&#xf25b;\";}s:17:\"fa-hand-pointer-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-hand-pointer-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-hand-pointer-o\";s:3:\"hex\";s:5:\"\\f25a\";s:7:\"unicode\";s:8:\"&#xf25a;\";}s:15:\"fa-hand-spock-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-hand-spock-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-hand-spock-o\";s:3:\"hex\";s:5:\"\\f259\";s:7:\"unicode\";s:8:\"&#xf259;\";}s:16:\"fa-hand-lizard-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-hand-lizard-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-hand-lizard-o\";s:3:\"hex\";s:5:\"\\f258\";s:7:\"unicode\";s:8:\"&#xf258;\";}s:18:\"fa-hand-scissors-o\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-hand-scissors-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-hand-scissors-o\";s:3:\"hex\";s:5:\"\\f257\";s:7:\"unicode\";s:8:\"&#xf257;\";}s:15:\"fa-hand-paper-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-hand-paper-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-hand-paper-o\";s:3:\"hex\";s:5:\"\\f256\";s:7:\"unicode\";s:8:\"&#xf256;\";}s:14:\"fa-hand-rock-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-hand-rock-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-hand-rock-o\";s:3:\"hex\";s:5:\"\\f255\";s:7:\"unicode\";s:8:\"&#xf255;\";}s:12:\"fa-hourglass\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-hourglass\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-hourglass\";s:3:\"hex\";s:5:\"\\f254\";s:7:\"unicode\";s:8:\"&#xf254;\";}s:16:\"fa-hourglass-end\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-hourglass-end\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-hourglass-end\";s:3:\"hex\";s:5:\"\\f253\";s:7:\"unicode\";s:8:\"&#xf253;\";}s:17:\"fa-hourglass-half\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-hourglass-half\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-hourglass-half\";s:3:\"hex\";s:5:\"\\f252\";s:7:\"unicode\";s:8:\"&#xf252;\";}s:18:\"fa-hourglass-start\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-hourglass-start\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-hourglass-start\";s:3:\"hex\";s:5:\"\\f251\";s:7:\"unicode\";s:8:\"&#xf251;\";}s:14:\"fa-hourglass-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-hourglass-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-hourglass-o\";s:3:\"hex\";s:5:\"\\f250\";s:7:\"unicode\";s:8:\"&#xf250;\";}s:16:\"fa-balance-scale\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-balance-scale\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-balance-scale\";s:3:\"hex\";s:5:\"\\f24e\";s:7:\"unicode\";s:8:\"&#xf24e;\";}s:8:\"fa-clone\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-clone\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-clone\";s:3:\"hex\";s:5:\"\\f24d\";s:7:\"unicode\";s:8:\"&#xf24d;\";}s:17:\"fa-cc-diners-club\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-cc-diners-club\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-cc-diners-club\";s:3:\"hex\";s:5:\"\\f24c\";s:7:\"unicode\";s:8:\"&#xf24c;\";}s:9:\"fa-cc-jcb\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-cc-jcb\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-cc-jcb\";s:3:\"hex\";s:5:\"\\f24b\";s:7:\"unicode\";s:8:\"&#xf24b;\";}s:16:\"fa-sticky-note-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-sticky-note-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-sticky-note-o\";s:3:\"hex\";s:5:\"\\f24a\";s:7:\"unicode\";s:8:\"&#xf24a;\";}s:14:\"fa-sticky-note\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-sticky-note\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-sticky-note\";s:3:\"hex\";s:5:\"\\f249\";s:7:\"unicode\";s:8:\"&#xf249;\";}s:17:\"fa-object-ungroup\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-object-ungroup\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-object-ungroup\";s:3:\"hex\";s:5:\"\\f248\";s:7:\"unicode\";s:8:\"&#xf248;\";}s:15:\"fa-object-group\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-object-group\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-object-group\";s:3:\"hex\";s:5:\"\\f247\";s:7:\"unicode\";s:8:\"&#xf247;\";}s:11:\"fa-i-cursor\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-i-cursor\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-i-cursor\";s:3:\"hex\";s:5:\"\\f246\";s:7:\"unicode\";s:8:\"&#xf246;\";}s:16:\"fa-mouse-pointer\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-mouse-pointer\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-mouse-pointer\";s:3:\"hex\";s:5:\"\\f245\";s:7:\"unicode\";s:8:\"&#xf245;\";}s:16:\"fa-battery-empty\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-battery-empty\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-battery-empty\";s:3:\"hex\";s:5:\"\\f244\";s:7:\"unicode\";s:8:\"&#xf244;\";}s:18:\"fa-battery-quarter\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-battery-quarter\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-battery-quarter\";s:3:\"hex\";s:5:\"\\f243\";s:7:\"unicode\";s:8:\"&#xf243;\";}s:15:\"fa-battery-half\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-battery-half\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-battery-half\";s:3:\"hex\";s:5:\"\\f242\";s:7:\"unicode\";s:8:\"&#xf242;\";}s:25:\"fa-battery-three-quarters\";a:4:{s:7:\"element\";s:63:\"<i class=\"fa fa-battery-three-quarters\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:25:\"fa-battery-three-quarters\";s:3:\"hex\";s:5:\"\\f241\";s:7:\"unicode\";s:8:\"&#xf241;\";}s:15:\"fa-battery-full\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-battery-full\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-battery-full\";s:3:\"hex\";s:5:\"\\f240\";s:7:\"unicode\";s:8:\"&#xf240;\";}s:15:\"fa-expeditedssl\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-expeditedssl\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-expeditedssl\";s:3:\"hex\";s:5:\"\\f23e\";s:7:\"unicode\";s:8:\"&#xf23e;\";}s:11:\"fa-opencart\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-opencart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-opencart\";s:3:\"hex\";s:5:\"\\f23d\";s:7:\"unicode\";s:8:\"&#xf23d;\";}s:16:\"fa-optin-monster\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-optin-monster\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-optin-monster\";s:3:\"hex\";s:5:\"\\f23c\";s:7:\"unicode\";s:8:\"&#xf23c;\";}s:15:\"fa-y-combinator\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-y-combinator\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-y-combinator\";s:3:\"hex\";s:5:\"\\f23b\";s:7:\"unicode\";s:8:\"&#xf23b;\";}s:9:\"fa-medium\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-medium\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-medium\";s:3:\"hex\";s:5:\"\\f23a\";s:7:\"unicode\";s:8:\"&#xf23a;\";}s:9:\"fa-subway\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-subway\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-subway\";s:3:\"hex\";s:5:\"\\f239\";s:7:\"unicode\";s:8:\"&#xf239;\";}s:8:\"fa-train\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-train\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-train\";s:3:\"hex\";s:5:\"\\f238\";s:7:\"unicode\";s:8:\"&#xf238;\";}s:10:\"fa-viacoin\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-viacoin\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-viacoin\";s:3:\"hex\";s:5:\"\\f237\";s:7:\"unicode\";s:8:\"&#xf237;\";}s:6:\"fa-bed\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-bed\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-bed\";s:3:\"hex\";s:5:\"\\f236\";s:7:\"unicode\";s:8:\"&#xf236;\";}s:13:\"fa-user-times\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-user-times\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-user-times\";s:3:\"hex\";s:5:\"\\f235\";s:7:\"unicode\";s:8:\"&#xf235;\";}s:12:\"fa-user-plus\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-user-plus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-user-plus\";s:3:\"hex\";s:5:\"\\f234\";s:7:\"unicode\";s:8:\"&#xf234;\";}s:9:\"fa-server\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-server\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-server\";s:3:\"hex\";s:5:\"\\f233\";s:7:\"unicode\";s:8:\"&#xf233;\";}s:11:\"fa-whatsapp\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-whatsapp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-whatsapp\";s:3:\"hex\";s:5:\"\\f232\";s:7:\"unicode\";s:8:\"&#xf232;\";}s:14:\"fa-pinterest-p\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-pinterest-p\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-pinterest-p\";s:3:\"hex\";s:5:\"\\f231\";s:7:\"unicode\";s:8:\"&#xf231;\";}s:20:\"fa-facebook-official\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-facebook-official\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-facebook-official\";s:3:\"hex\";s:5:\"\\f230\";s:7:\"unicode\";s:8:\"&#xf230;\";}s:13:\"fa-genderless\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-genderless\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-genderless\";s:3:\"hex\";s:5:\"\\f22d\";s:7:\"unicode\";s:8:\"&#xf22d;\";}s:9:\"fa-neuter\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-neuter\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-neuter\";s:3:\"hex\";s:5:\"\\f22c\";s:7:\"unicode\";s:8:\"&#xf22c;\";}s:16:\"fa-mars-stroke-h\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-mars-stroke-h\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-mars-stroke-h\";s:3:\"hex\";s:5:\"\\f22b\";s:7:\"unicode\";s:8:\"&#xf22b;\";}s:16:\"fa-mars-stroke-v\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-mars-stroke-v\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-mars-stroke-v\";s:3:\"hex\";s:5:\"\\f22a\";s:7:\"unicode\";s:8:\"&#xf22a;\";}s:14:\"fa-mars-stroke\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-mars-stroke\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-mars-stroke\";s:3:\"hex\";s:5:\"\\f229\";s:7:\"unicode\";s:8:\"&#xf229;\";}s:13:\"fa-venus-mars\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-venus-mars\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-venus-mars\";s:3:\"hex\";s:5:\"\\f228\";s:7:\"unicode\";s:8:\"&#xf228;\";}s:14:\"fa-mars-double\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-mars-double\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-mars-double\";s:3:\"hex\";s:5:\"\\f227\";s:7:\"unicode\";s:8:\"&#xf227;\";}s:15:\"fa-venus-double\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-venus-double\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-venus-double\";s:3:\"hex\";s:5:\"\\f226\";s:7:\"unicode\";s:8:\"&#xf226;\";}s:18:\"fa-transgender-alt\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-transgender-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-transgender-alt\";s:3:\"hex\";s:5:\"\\f225\";s:7:\"unicode\";s:8:\"&#xf225;\";}s:14:\"fa-transgender\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-transgender\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-transgender\";s:3:\"hex\";s:5:\"\\f224\";s:7:\"unicode\";s:8:\"&#xf224;\";}s:10:\"fa-mercury\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-mercury\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-mercury\";s:3:\"hex\";s:5:\"\\f223\";s:7:\"unicode\";s:8:\"&#xf223;\";}s:7:\"fa-mars\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-mars\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-mars\";s:3:\"hex\";s:5:\"\\f222\";s:7:\"unicode\";s:8:\"&#xf222;\";}s:8:\"fa-venus\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-venus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-venus\";s:3:\"hex\";s:5:\"\\f221\";s:7:\"unicode\";s:8:\"&#xf221;\";}s:12:\"fa-heartbeat\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-heartbeat\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-heartbeat\";s:3:\"hex\";s:5:\"\\f21e\";s:7:\"unicode\";s:8:\"&#xf21e;\";}s:14:\"fa-street-view\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-street-view\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-street-view\";s:3:\"hex\";s:5:\"\\f21d\";s:7:\"unicode\";s:8:\"&#xf21d;\";}s:13:\"fa-motorcycle\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-motorcycle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-motorcycle\";s:3:\"hex\";s:5:\"\\f21c\";s:7:\"unicode\";s:8:\"&#xf21c;\";}s:14:\"fa-user-secret\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-user-secret\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-user-secret\";s:3:\"hex\";s:5:\"\\f21b\";s:7:\"unicode\";s:8:\"&#xf21b;\";}s:7:\"fa-ship\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-ship\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-ship\";s:3:\"hex\";s:5:\"\\f21a\";s:7:\"unicode\";s:8:\"&#xf21a;\";}s:10:\"fa-diamond\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-diamond\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-diamond\";s:3:\"hex\";s:5:\"\\f219\";s:7:\"unicode\";s:8:\"&#xf219;\";}s:18:\"fa-cart-arrow-down\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-cart-arrow-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-cart-arrow-down\";s:3:\"hex\";s:5:\"\\f218\";s:7:\"unicode\";s:8:\"&#xf218;\";}s:12:\"fa-cart-plus\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-cart-plus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-cart-plus\";s:3:\"hex\";s:5:\"\\f217\";s:7:\"unicode\";s:8:\"&#xf217;\";}s:11:\"fa-skyatlas\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-skyatlas\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-skyatlas\";s:3:\"hex\";s:5:\"\\f216\";s:7:\"unicode\";s:8:\"&#xf216;\";}s:14:\"fa-simplybuilt\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-simplybuilt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-simplybuilt\";s:3:\"hex\";s:5:\"\\f215\";s:7:\"unicode\";s:8:\"&#xf215;\";}s:15:\"fa-shirtsinbulk\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-shirtsinbulk\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-shirtsinbulk\";s:3:\"hex\";s:5:\"\\f214\";s:7:\"unicode\";s:8:\"&#xf214;\";}s:9:\"fa-sellsy\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-sellsy\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-sellsy\";s:3:\"hex\";s:5:\"\\f213\";s:7:\"unicode\";s:8:\"&#xf213;\";}s:10:\"fa-leanpub\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-leanpub\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-leanpub\";s:3:\"hex\";s:5:\"\\f212\";s:7:\"unicode\";s:8:\"&#xf212;\";}s:11:\"fa-forumbee\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-forumbee\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-forumbee\";s:3:\"hex\";s:5:\"\\f211\";s:7:\"unicode\";s:8:\"&#xf211;\";}s:11:\"fa-dashcube\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-dashcube\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-dashcube\";s:3:\"hex\";s:5:\"\\f210\";s:7:\"unicode\";s:8:\"&#xf210;\";}s:17:\"fa-connectdevelop\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-connectdevelop\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-connectdevelop\";s:3:\"hex\";s:5:\"\\f20e\";s:7:\"unicode\";s:8:\"&#xf20e;\";}s:13:\"fa-buysellads\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-buysellads\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-buysellads\";s:3:\"hex\";s:5:\"\\f20d\";s:7:\"unicode\";s:8:\"&#xf20d;\";}s:11:\"fa-meanpath\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-meanpath\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-meanpath\";s:3:\"hex\";s:5:\"\\f20c\";s:7:\"unicode\";s:8:\"&#xf20c;\";}s:6:\"fa-ils\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-ils\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-ils\";s:3:\"hex\";s:5:\"\\f20b\";s:7:\"unicode\";s:8:\"&#xf20b;\";}s:5:\"fa-cc\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-cc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-cc\";s:3:\"hex\";s:5:\"\\f20a\";s:7:\"unicode\";s:8:\"&#xf20a;\";}s:12:\"fa-angellist\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-angellist\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-angellist\";s:3:\"hex\";s:5:\"\\f209\";s:7:\"unicode\";s:8:\"&#xf209;\";}s:10:\"fa-ioxhost\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-ioxhost\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-ioxhost\";s:3:\"hex\";s:5:\"\\f208\";s:7:\"unicode\";s:8:\"&#xf208;\";}s:6:\"fa-bus\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-bus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-bus\";s:3:\"hex\";s:5:\"\\f207\";s:7:\"unicode\";s:8:\"&#xf207;\";}s:10:\"fa-bicycle\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-bicycle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-bicycle\";s:3:\"hex\";s:5:\"\\f206\";s:7:\"unicode\";s:8:\"&#xf206;\";}s:12:\"fa-toggle-on\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-toggle-on\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-toggle-on\";s:3:\"hex\";s:5:\"\\f205\";s:7:\"unicode\";s:8:\"&#xf205;\";}s:13:\"fa-toggle-off\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-toggle-off\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-toggle-off\";s:3:\"hex\";s:5:\"\\f204\";s:7:\"unicode\";s:8:\"&#xf204;\";}s:16:\"fa-lastfm-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-lastfm-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-lastfm-square\";s:3:\"hex\";s:5:\"\\f203\";s:7:\"unicode\";s:8:\"&#xf203;\";}s:9:\"fa-lastfm\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-lastfm\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-lastfm\";s:3:\"hex\";s:5:\"\\f202\";s:7:\"unicode\";s:8:\"&#xf202;\";}s:13:\"fa-line-chart\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-line-chart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-line-chart\";s:3:\"hex\";s:5:\"\\f201\";s:7:\"unicode\";s:8:\"&#xf201;\";}s:12:\"fa-pie-chart\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-pie-chart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-pie-chart\";s:3:\"hex\";s:5:\"\\f200\";s:7:\"unicode\";s:8:\"&#xf200;\";}s:13:\"fa-area-chart\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-area-chart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-area-chart\";s:3:\"hex\";s:5:\"\\f1fe\";s:7:\"unicode\";s:8:\"&#xf1fe;\";}s:16:\"fa-birthday-cake\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-birthday-cake\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-birthday-cake\";s:3:\"hex\";s:5:\"\\f1fd\";s:7:\"unicode\";s:8:\"&#xf1fd;\";}s:14:\"fa-paint-brush\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-paint-brush\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-paint-brush\";s:3:\"hex\";s:5:\"\\f1fc\";s:7:\"unicode\";s:8:\"&#xf1fc;\";}s:13:\"fa-eyedropper\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-eyedropper\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-eyedropper\";s:3:\"hex\";s:5:\"\\f1fb\";s:7:\"unicode\";s:8:\"&#xf1fb;\";}s:5:\"fa-at\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-at\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-at\";s:3:\"hex\";s:5:\"\\f1fa\";s:7:\"unicode\";s:8:\"&#xf1fa;\";}s:12:\"fa-copyright\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-copyright\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-copyright\";s:3:\"hex\";s:5:\"\\f1f9\";s:7:\"unicode\";s:8:\"&#xf1f9;\";}s:8:\"fa-trash\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-trash\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-trash\";s:3:\"hex\";s:5:\"\\f1f8\";s:7:\"unicode\";s:8:\"&#xf1f8;\";}s:15:\"fa-bell-slash-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-bell-slash-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-bell-slash-o\";s:3:\"hex\";s:5:\"\\f1f7\";s:7:\"unicode\";s:8:\"&#xf1f7;\";}s:13:\"fa-bell-slash\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-bell-slash\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-bell-slash\";s:3:\"hex\";s:5:\"\\f1f6\";s:7:\"unicode\";s:8:\"&#xf1f6;\";}s:12:\"fa-cc-stripe\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-cc-stripe\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-cc-stripe\";s:3:\"hex\";s:5:\"\\f1f5\";s:7:\"unicode\";s:8:\"&#xf1f5;\";}s:12:\"fa-cc-paypal\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-cc-paypal\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-cc-paypal\";s:3:\"hex\";s:5:\"\\f1f4\";s:7:\"unicode\";s:8:\"&#xf1f4;\";}s:10:\"fa-cc-amex\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-cc-amex\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-cc-amex\";s:3:\"hex\";s:5:\"\\f1f3\";s:7:\"unicode\";s:8:\"&#xf1f3;\";}s:14:\"fa-cc-discover\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-cc-discover\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-cc-discover\";s:3:\"hex\";s:5:\"\\f1f2\";s:7:\"unicode\";s:8:\"&#xf1f2;\";}s:16:\"fa-cc-mastercard\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-cc-mastercard\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-cc-mastercard\";s:3:\"hex\";s:5:\"\\f1f1\";s:7:\"unicode\";s:8:\"&#xf1f1;\";}s:10:\"fa-cc-visa\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-cc-visa\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-cc-visa\";s:3:\"hex\";s:5:\"\\f1f0\";s:7:\"unicode\";s:8:\"&#xf1f0;\";}s:16:\"fa-google-wallet\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-google-wallet\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-google-wallet\";s:3:\"hex\";s:5:\"\\f1ee\";s:7:\"unicode\";s:8:\"&#xf1ee;\";}s:9:\"fa-paypal\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-paypal\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-paypal\";s:3:\"hex\";s:5:\"\\f1ed\";s:7:\"unicode\";s:8:\"&#xf1ed;\";}s:13:\"fa-calculator\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-calculator\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-calculator\";s:3:\"hex\";s:5:\"\\f1ec\";s:7:\"unicode\";s:8:\"&#xf1ec;\";}s:7:\"fa-wifi\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-wifi\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-wifi\";s:3:\"hex\";s:5:\"\\f1eb\";s:7:\"unicode\";s:8:\"&#xf1eb;\";}s:14:\"fa-newspaper-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-newspaper-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-newspaper-o\";s:3:\"hex\";s:5:\"\\f1ea\";s:7:\"unicode\";s:8:\"&#xf1ea;\";}s:7:\"fa-yelp\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-yelp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-yelp\";s:3:\"hex\";s:5:\"\\f1e9\";s:7:\"unicode\";s:8:\"&#xf1e9;\";}s:9:\"fa-twitch\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-twitch\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-twitch\";s:3:\"hex\";s:5:\"\\f1e8\";s:7:\"unicode\";s:8:\"&#xf1e8;\";}s:13:\"fa-slideshare\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-slideshare\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-slideshare\";s:3:\"hex\";s:5:\"\\f1e7\";s:7:\"unicode\";s:8:\"&#xf1e7;\";}s:7:\"fa-plug\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-plug\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-plug\";s:3:\"hex\";s:5:\"\\f1e6\";s:7:\"unicode\";s:8:\"&#xf1e6;\";}s:13:\"fa-binoculars\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-binoculars\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-binoculars\";s:3:\"hex\";s:5:\"\\f1e5\";s:7:\"unicode\";s:8:\"&#xf1e5;\";}s:6:\"fa-tty\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-tty\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-tty\";s:3:\"hex\";s:5:\"\\f1e4\";s:7:\"unicode\";s:8:\"&#xf1e4;\";}s:11:\"fa-futbol-o\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-futbol-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-futbol-o\";s:3:\"hex\";s:5:\"\\f1e3\";s:7:\"unicode\";s:8:\"&#xf1e3;\";}s:7:\"fa-bomb\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bomb\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bomb\";s:3:\"hex\";s:5:\"\\f1e2\";s:7:\"unicode\";s:8:\"&#xf1e2;\";}s:19:\"fa-share-alt-square\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-share-alt-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-share-alt-square\";s:3:\"hex\";s:5:\"\\f1e1\";s:7:\"unicode\";s:8:\"&#xf1e1;\";}s:12:\"fa-share-alt\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-share-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-share-alt\";s:3:\"hex\";s:5:\"\\f1e0\";s:7:\"unicode\";s:8:\"&#xf1e0;\";}s:10:\"fa-sliders\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-sliders\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-sliders\";s:3:\"hex\";s:5:\"\\f1de\";s:7:\"unicode\";s:8:\"&#xf1de;\";}s:12:\"fa-paragraph\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-paragraph\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-paragraph\";s:3:\"hex\";s:5:\"\\f1dd\";s:7:\"unicode\";s:8:\"&#xf1dd;\";}s:9:\"fa-header\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-header\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-header\";s:3:\"hex\";s:5:\"\\f1dc\";s:7:\"unicode\";s:8:\"&#xf1dc;\";}s:14:\"fa-circle-thin\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-circle-thin\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-circle-thin\";s:3:\"hex\";s:5:\"\\f1db\";s:7:\"unicode\";s:8:\"&#xf1db;\";}s:10:\"fa-history\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-history\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-history\";s:3:\"hex\";s:5:\"\\f1da\";s:7:\"unicode\";s:8:\"&#xf1da;\";}s:16:\"fa-paper-plane-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-paper-plane-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-paper-plane-o\";s:3:\"hex\";s:5:\"\\f1d9\";s:7:\"unicode\";s:8:\"&#xf1d9;\";}s:14:\"fa-paper-plane\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-paper-plane\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-paper-plane\";s:3:\"hex\";s:5:\"\\f1d8\";s:7:\"unicode\";s:8:\"&#xf1d8;\";}s:9:\"fa-weixin\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-weixin\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-weixin\";s:3:\"hex\";s:5:\"\\f1d7\";s:7:\"unicode\";s:8:\"&#xf1d7;\";}s:5:\"fa-qq\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-qq\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-qq\";s:3:\"hex\";s:5:\"\\f1d6\";s:7:\"unicode\";s:8:\"&#xf1d6;\";}s:16:\"fa-tencent-weibo\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-tencent-weibo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-tencent-weibo\";s:3:\"hex\";s:5:\"\\f1d5\";s:7:\"unicode\";s:8:\"&#xf1d5;\";}s:14:\"fa-hacker-news\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-hacker-news\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-hacker-news\";s:3:\"hex\";s:5:\"\\f1d4\";s:7:\"unicode\";s:8:\"&#xf1d4;\";}s:6:\"fa-git\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-git\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-git\";s:3:\"hex\";s:5:\"\\f1d3\";s:7:\"unicode\";s:8:\"&#xf1d3;\";}s:13:\"fa-git-square\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-git-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-git-square\";s:3:\"hex\";s:5:\"\\f1d2\";s:7:\"unicode\";s:8:\"&#xf1d2;\";}s:9:\"fa-empire\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-empire\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-empire\";s:3:\"hex\";s:5:\"\\f1d1\";s:7:\"unicode\";s:8:\"&#xf1d1;\";}s:8:\"fa-rebel\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-rebel\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-rebel\";s:3:\"hex\";s:5:\"\\f1d0\";s:7:\"unicode\";s:8:\"&#xf1d0;\";}s:17:\"fa-circle-o-notch\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-circle-o-notch\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-circle-o-notch\";s:3:\"hex\";s:5:\"\\f1ce\";s:7:\"unicode\";s:8:\"&#xf1ce;\";}s:12:\"fa-life-ring\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-life-ring\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-life-ring\";s:3:\"hex\";s:5:\"\\f1cd\";s:7:\"unicode\";s:8:\"&#xf1cd;\";}s:11:\"fa-jsfiddle\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-jsfiddle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-jsfiddle\";s:3:\"hex\";s:5:\"\\f1cc\";s:7:\"unicode\";s:8:\"&#xf1cc;\";}s:10:\"fa-codepen\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-codepen\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-codepen\";s:3:\"hex\";s:5:\"\\f1cb\";s:7:\"unicode\";s:8:\"&#xf1cb;\";}s:7:\"fa-vine\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-vine\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-vine\";s:3:\"hex\";s:5:\"\\f1ca\";s:7:\"unicode\";s:8:\"&#xf1ca;\";}s:14:\"fa-file-code-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-file-code-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-file-code-o\";s:3:\"hex\";s:5:\"\\f1c9\";s:7:\"unicode\";s:8:\"&#xf1c9;\";}s:15:\"fa-file-video-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-file-video-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-file-video-o\";s:3:\"hex\";s:5:\"\\f1c8\";s:7:\"unicode\";s:8:\"&#xf1c8;\";}s:15:\"fa-file-audio-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-file-audio-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-file-audio-o\";s:3:\"hex\";s:5:\"\\f1c7\";s:7:\"unicode\";s:8:\"&#xf1c7;\";}s:17:\"fa-file-archive-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-file-archive-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-file-archive-o\";s:3:\"hex\";s:5:\"\\f1c6\";s:7:\"unicode\";s:8:\"&#xf1c6;\";}s:15:\"fa-file-image-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-file-image-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-file-image-o\";s:3:\"hex\";s:5:\"\\f1c5\";s:7:\"unicode\";s:8:\"&#xf1c5;\";}s:20:\"fa-file-powerpoint-o\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-file-powerpoint-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-file-powerpoint-o\";s:3:\"hex\";s:5:\"\\f1c4\";s:7:\"unicode\";s:8:\"&#xf1c4;\";}s:15:\"fa-file-excel-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-file-excel-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-file-excel-o\";s:3:\"hex\";s:5:\"\\f1c3\";s:7:\"unicode\";s:8:\"&#xf1c3;\";}s:14:\"fa-file-word-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-file-word-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-file-word-o\";s:3:\"hex\";s:5:\"\\f1c2\";s:7:\"unicode\";s:8:\"&#xf1c2;\";}s:13:\"fa-file-pdf-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-file-pdf-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-file-pdf-o\";s:3:\"hex\";s:5:\"\\f1c1\";s:7:\"unicode\";s:8:\"&#xf1c1;\";}s:11:\"fa-database\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-database\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-database\";s:3:\"hex\";s:5:\"\\f1c0\";s:7:\"unicode\";s:8:\"&#xf1c0;\";}s:13:\"fa-soundcloud\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-soundcloud\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-soundcloud\";s:3:\"hex\";s:5:\"\\f1be\";s:7:\"unicode\";s:8:\"&#xf1be;\";}s:13:\"fa-deviantart\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-deviantart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-deviantart\";s:3:\"hex\";s:5:\"\\f1bd\";s:7:\"unicode\";s:8:\"&#xf1bd;\";}s:10:\"fa-spotify\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-spotify\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-spotify\";s:3:\"hex\";s:5:\"\\f1bc\";s:7:\"unicode\";s:8:\"&#xf1bc;\";}s:7:\"fa-tree\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-tree\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-tree\";s:3:\"hex\";s:5:\"\\f1bb\";s:7:\"unicode\";s:8:\"&#xf1bb;\";}s:7:\"fa-taxi\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-taxi\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-taxi\";s:3:\"hex\";s:5:\"\\f1ba\";s:7:\"unicode\";s:8:\"&#xf1ba;\";}s:6:\"fa-car\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-car\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-car\";s:3:\"hex\";s:5:\"\\f1b9\";s:7:\"unicode\";s:8:\"&#xf1b9;\";}s:10:\"fa-recycle\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-recycle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-recycle\";s:3:\"hex\";s:5:\"\\f1b8\";s:7:\"unicode\";s:8:\"&#xf1b8;\";}s:15:\"fa-steam-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-steam-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-steam-square\";s:3:\"hex\";s:5:\"\\f1b7\";s:7:\"unicode\";s:8:\"&#xf1b7;\";}s:8:\"fa-steam\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-steam\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-steam\";s:3:\"hex\";s:5:\"\\f1b6\";s:7:\"unicode\";s:8:\"&#xf1b6;\";}s:17:\"fa-behance-square\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-behance-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-behance-square\";s:3:\"hex\";s:5:\"\\f1b5\";s:7:\"unicode\";s:8:\"&#xf1b5;\";}s:10:\"fa-behance\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-behance\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-behance\";s:3:\"hex\";s:5:\"\\f1b4\";s:7:\"unicode\";s:8:\"&#xf1b4;\";}s:8:\"fa-cubes\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-cubes\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-cubes\";s:3:\"hex\";s:5:\"\\f1b3\";s:7:\"unicode\";s:8:\"&#xf1b3;\";}s:7:\"fa-cube\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-cube\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-cube\";s:3:\"hex\";s:5:\"\\f1b2\";s:7:\"unicode\";s:8:\"&#xf1b2;\";}s:8:\"fa-spoon\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-spoon\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-spoon\";s:3:\"hex\";s:5:\"\\f1b1\";s:7:\"unicode\";s:8:\"&#xf1b1;\";}s:6:\"fa-paw\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-paw\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-paw\";s:3:\"hex\";s:5:\"\\f1b0\";s:7:\"unicode\";s:8:\"&#xf1b0;\";}s:8:\"fa-child\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-child\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-child\";s:3:\"hex\";s:5:\"\\f1ae\";s:7:\"unicode\";s:8:\"&#xf1ae;\";}s:11:\"fa-building\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-building\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-building\";s:3:\"hex\";s:5:\"\\f1ad\";s:7:\"unicode\";s:8:\"&#xf1ad;\";}s:6:\"fa-fax\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-fax\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-fax\";s:3:\"hex\";s:5:\"\\f1ac\";s:7:\"unicode\";s:8:\"&#xf1ac;\";}s:11:\"fa-language\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-language\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-language\";s:3:\"hex\";s:5:\"\\f1ab\";s:7:\"unicode\";s:8:\"&#xf1ab;\";}s:9:\"fa-joomla\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-joomla\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-joomla\";s:3:\"hex\";s:5:\"\\f1aa\";s:7:\"unicode\";s:8:\"&#xf1aa;\";}s:9:\"fa-drupal\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-drupal\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-drupal\";s:3:\"hex\";s:5:\"\\f1a9\";s:7:\"unicode\";s:8:\"&#xf1a9;\";}s:17:\"fa-pied-piper-alt\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-pied-piper-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-pied-piper-alt\";s:3:\"hex\";s:5:\"\\f1a8\";s:7:\"unicode\";s:8:\"&#xf1a8;\";}s:16:\"fa-pied-piper-pp\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-pied-piper-pp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-pied-piper-pp\";s:3:\"hex\";s:5:\"\\f1a7\";s:7:\"unicode\";s:8:\"&#xf1a7;\";}s:7:\"fa-digg\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-digg\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-digg\";s:3:\"hex\";s:5:\"\\f1a6\";s:7:\"unicode\";s:8:\"&#xf1a6;\";}s:12:\"fa-delicious\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-delicious\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-delicious\";s:3:\"hex\";s:5:\"\\f1a5\";s:7:\"unicode\";s:8:\"&#xf1a5;\";}s:14:\"fa-stumbleupon\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-stumbleupon\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-stumbleupon\";s:3:\"hex\";s:5:\"\\f1a4\";s:7:\"unicode\";s:8:\"&#xf1a4;\";}s:21:\"fa-stumbleupon-circle\";a:4:{s:7:\"element\";s:59:\"<i class=\"fa fa-stumbleupon-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:21:\"fa-stumbleupon-circle\";s:3:\"hex\";s:5:\"\\f1a3\";s:7:\"unicode\";s:8:\"&#xf1a3;\";}s:16:\"fa-reddit-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-reddit-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-reddit-square\";s:3:\"hex\";s:5:\"\\f1a2\";s:7:\"unicode\";s:8:\"&#xf1a2;\";}s:9:\"fa-reddit\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-reddit\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-reddit\";s:3:\"hex\";s:5:\"\\f1a1\";s:7:\"unicode\";s:8:\"&#xf1a1;\";}s:9:\"fa-google\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-google\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-google\";s:3:\"hex\";s:5:\"\\f1a0\";s:7:\"unicode\";s:8:\"&#xf1a0;\";}s:8:\"fa-yahoo\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-yahoo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-yahoo\";s:3:\"hex\";s:5:\"\\f19e\";s:7:\"unicode\";s:8:\"&#xf19e;\";}s:17:\"fa-graduation-cap\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-graduation-cap\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-graduation-cap\";s:3:\"hex\";s:5:\"\\f19d\";s:7:\"unicode\";s:8:\"&#xf19d;\";}s:13:\"fa-university\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-university\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-university\";s:3:\"hex\";s:5:\"\\f19c\";s:7:\"unicode\";s:8:\"&#xf19c;\";}s:9:\"fa-openid\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-openid\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-openid\";s:3:\"hex\";s:5:\"\\f19b\";s:7:\"unicode\";s:8:\"&#xf19b;\";}s:12:\"fa-wordpress\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-wordpress\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-wordpress\";s:3:\"hex\";s:5:\"\\f19a\";s:7:\"unicode\";s:8:\"&#xf19a;\";}s:18:\"fa-envelope-square\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-envelope-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-envelope-square\";s:3:\"hex\";s:5:\"\\f199\";s:7:\"unicode\";s:8:\"&#xf199;\";}s:8:\"fa-slack\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-slack\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-slack\";s:3:\"hex\";s:5:\"\\f198\";s:7:\"unicode\";s:8:\"&#xf198;\";}s:16:\"fa-space-shuttle\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-space-shuttle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-space-shuttle\";s:3:\"hex\";s:5:\"\\f197\";s:7:\"unicode\";s:8:\"&#xf197;\";}s:16:\"fa-plus-square-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-plus-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-plus-square-o\";s:3:\"hex\";s:5:\"\\f196\";s:7:\"unicode\";s:8:\"&#xf196;\";}s:6:\"fa-try\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-try\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-try\";s:3:\"hex\";s:5:\"\\f195\";s:7:\"unicode\";s:8:\"&#xf195;\";}s:15:\"fa-vimeo-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-vimeo-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-vimeo-square\";s:3:\"hex\";s:5:\"\\f194\";s:7:\"unicode\";s:8:\"&#xf194;\";}s:13:\"fa-wheelchair\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-wheelchair\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-wheelchair\";s:3:\"hex\";s:5:\"\\f193\";s:7:\"unicode\";s:8:\"&#xf193;\";}s:15:\"fa-dot-circle-o\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-dot-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-dot-circle-o\";s:3:\"hex\";s:5:\"\\f192\";s:7:\"unicode\";s:8:\"&#xf192;\";}s:22:\"fa-caret-square-o-left\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-caret-square-o-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-caret-square-o-left\";s:3:\"hex\";s:5:\"\\f191\";s:7:\"unicode\";s:8:\"&#xf191;\";}s:22:\"fa-arrow-circle-o-left\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-arrow-circle-o-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-arrow-circle-o-left\";s:3:\"hex\";s:5:\"\\f190\";s:7:\"unicode\";s:8:\"&#xf190;\";}s:23:\"fa-arrow-circle-o-right\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-arrow-circle-o-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-arrow-circle-o-right\";s:3:\"hex\";s:5:\"\\f18e\";s:7:\"unicode\";s:8:\"&#xf18e;\";}s:17:\"fa-stack-exchange\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-stack-exchange\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-stack-exchange\";s:3:\"hex\";s:5:\"\\f18d\";s:7:\"unicode\";s:8:\"&#xf18d;\";}s:12:\"fa-pagelines\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-pagelines\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-pagelines\";s:3:\"hex\";s:5:\"\\f18c\";s:7:\"unicode\";s:8:\"&#xf18c;\";}s:9:\"fa-renren\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-renren\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-renren\";s:3:\"hex\";s:5:\"\\f18b\";s:7:\"unicode\";s:8:\"&#xf18b;\";}s:8:\"fa-weibo\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-weibo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-weibo\";s:3:\"hex\";s:5:\"\\f18a\";s:7:\"unicode\";s:8:\"&#xf18a;\";}s:5:\"fa-vk\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-vk\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-vk\";s:3:\"hex\";s:5:\"\\f189\";s:7:\"unicode\";s:8:\"&#xf189;\";}s:6:\"fa-bug\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-bug\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-bug\";s:3:\"hex\";s:5:\"\\f188\";s:7:\"unicode\";s:8:\"&#xf188;\";}s:10:\"fa-archive\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-archive\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-archive\";s:3:\"hex\";s:5:\"\\f187\";s:7:\"unicode\";s:8:\"&#xf187;\";}s:9:\"fa-moon-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-moon-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-moon-o\";s:3:\"hex\";s:5:\"\\f186\";s:7:\"unicode\";s:8:\"&#xf186;\";}s:8:\"fa-sun-o\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-sun-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-sun-o\";s:3:\"hex\";s:5:\"\\f185\";s:7:\"unicode\";s:8:\"&#xf185;\";}s:11:\"fa-gratipay\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-gratipay\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-gratipay\";s:3:\"hex\";s:5:\"\\f184\";s:7:\"unicode\";s:8:\"&#xf184;\";}s:7:\"fa-male\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-male\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-male\";s:3:\"hex\";s:5:\"\\f183\";s:7:\"unicode\";s:8:\"&#xf183;\";}s:9:\"fa-female\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-female\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-female\";s:3:\"hex\";s:5:\"\\f182\";s:7:\"unicode\";s:8:\"&#xf182;\";}s:9:\"fa-trello\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-trello\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-trello\";s:3:\"hex\";s:5:\"\\f181\";s:7:\"unicode\";s:8:\"&#xf181;\";}s:13:\"fa-foursquare\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-foursquare\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-foursquare\";s:3:\"hex\";s:5:\"\\f180\";s:7:\"unicode\";s:8:\"&#xf180;\";}s:8:\"fa-skype\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-skype\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-skype\";s:3:\"hex\";s:5:\"\\f17e\";s:7:\"unicode\";s:8:\"&#xf17e;\";}s:11:\"fa-dribbble\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-dribbble\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-dribbble\";s:3:\"hex\";s:5:\"\\f17d\";s:7:\"unicode\";s:8:\"&#xf17d;\";}s:8:\"fa-linux\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-linux\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-linux\";s:3:\"hex\";s:5:\"\\f17c\";s:7:\"unicode\";s:8:\"&#xf17c;\";}s:10:\"fa-android\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-android\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-android\";s:3:\"hex\";s:5:\"\\f17b\";s:7:\"unicode\";s:8:\"&#xf17b;\";}s:10:\"fa-windows\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-windows\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-windows\";s:3:\"hex\";s:5:\"\\f17a\";s:7:\"unicode\";s:8:\"&#xf17a;\";}s:8:\"fa-apple\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-apple\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-apple\";s:3:\"hex\";s:5:\"\\f179\";s:7:\"unicode\";s:8:\"&#xf179;\";}s:19:\"fa-long-arrow-right\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-long-arrow-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-long-arrow-right\";s:3:\"hex\";s:5:\"\\f178\";s:7:\"unicode\";s:8:\"&#xf178;\";}s:18:\"fa-long-arrow-left\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-long-arrow-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-long-arrow-left\";s:3:\"hex\";s:5:\"\\f177\";s:7:\"unicode\";s:8:\"&#xf177;\";}s:16:\"fa-long-arrow-up\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-long-arrow-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-long-arrow-up\";s:3:\"hex\";s:5:\"\\f176\";s:7:\"unicode\";s:8:\"&#xf176;\";}s:18:\"fa-long-arrow-down\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-long-arrow-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-long-arrow-down\";s:3:\"hex\";s:5:\"\\f175\";s:7:\"unicode\";s:8:\"&#xf175;\";}s:16:\"fa-tumblr-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-tumblr-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-tumblr-square\";s:3:\"hex\";s:5:\"\\f174\";s:7:\"unicode\";s:8:\"&#xf174;\";}s:9:\"fa-tumblr\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-tumblr\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-tumblr\";s:3:\"hex\";s:5:\"\\f173\";s:7:\"unicode\";s:8:\"&#xf173;\";}s:19:\"fa-bitbucket-square\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-bitbucket-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-bitbucket-square\";s:3:\"hex\";s:5:\"\\f172\";s:7:\"unicode\";s:8:\"&#xf172;\";}s:12:\"fa-bitbucket\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-bitbucket\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-bitbucket\";s:3:\"hex\";s:5:\"\\f171\";s:7:\"unicode\";s:8:\"&#xf171;\";}s:6:\"fa-adn\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-adn\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-adn\";s:3:\"hex\";s:5:\"\\f170\";s:7:\"unicode\";s:8:\"&#xf170;\";}s:9:\"fa-flickr\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-flickr\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-flickr\";s:3:\"hex\";s:5:\"\\f16e\";s:7:\"unicode\";s:8:\"&#xf16e;\";}s:12:\"fa-instagram\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-instagram\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-instagram\";s:3:\"hex\";s:5:\"\\f16d\";s:7:\"unicode\";s:8:\"&#xf16d;\";}s:17:\"fa-stack-overflow\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-stack-overflow\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-stack-overflow\";s:3:\"hex\";s:5:\"\\f16c\";s:7:\"unicode\";s:8:\"&#xf16c;\";}s:10:\"fa-dropbox\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-dropbox\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-dropbox\";s:3:\"hex\";s:5:\"\\f16b\";s:7:\"unicode\";s:8:\"&#xf16b;\";}s:15:\"fa-youtube-play\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-youtube-play\";s:3:\"hex\";s:5:\"\\f16a\";s:7:\"unicode\";s:8:\"&#xf16a;\";}s:14:\"fa-xing-square\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-xing-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-xing-square\";s:3:\"hex\";s:5:\"\\f169\";s:7:\"unicode\";s:8:\"&#xf169;\";}s:7:\"fa-xing\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-xing\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-xing\";s:3:\"hex\";s:5:\"\\f168\";s:7:\"unicode\";s:8:\"&#xf168;\";}s:10:\"fa-youtube\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-youtube\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-youtube\";s:3:\"hex\";s:5:\"\\f167\";s:7:\"unicode\";s:8:\"&#xf167;\";}s:17:\"fa-youtube-square\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-youtube-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-youtube-square\";s:3:\"hex\";s:5:\"\\f166\";s:7:\"unicode\";s:8:\"&#xf166;\";}s:14:\"fa-thumbs-down\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-thumbs-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-thumbs-down\";s:3:\"hex\";s:5:\"\\f165\";s:7:\"unicode\";s:8:\"&#xf165;\";}s:12:\"fa-thumbs-up\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-thumbs-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-thumbs-up\";s:3:\"hex\";s:5:\"\\f164\";s:7:\"unicode\";s:8:\"&#xf164;\";}s:20:\"fa-sort-numeric-desc\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-sort-numeric-desc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-sort-numeric-desc\";s:3:\"hex\";s:5:\"\\f163\";s:7:\"unicode\";s:8:\"&#xf163;\";}s:19:\"fa-sort-numeric-asc\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-sort-numeric-asc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-sort-numeric-asc\";s:3:\"hex\";s:5:\"\\f162\";s:7:\"unicode\";s:8:\"&#xf162;\";}s:19:\"fa-sort-amount-desc\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-sort-amount-desc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-sort-amount-desc\";s:3:\"hex\";s:5:\"\\f161\";s:7:\"unicode\";s:8:\"&#xf161;\";}s:18:\"fa-sort-amount-asc\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-sort-amount-asc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-sort-amount-asc\";s:3:\"hex\";s:5:\"\\f160\";s:7:\"unicode\";s:8:\"&#xf160;\";}s:18:\"fa-sort-alpha-desc\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-sort-alpha-desc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-sort-alpha-desc\";s:3:\"hex\";s:5:\"\\f15e\";s:7:\"unicode\";s:8:\"&#xf15e;\";}s:17:\"fa-sort-alpha-asc\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-sort-alpha-asc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-sort-alpha-asc\";s:3:\"hex\";s:5:\"\\f15d\";s:7:\"unicode\";s:8:\"&#xf15d;\";}s:12:\"fa-file-text\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-file-text\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-file-text\";s:3:\"hex\";s:5:\"\\f15c\";s:7:\"unicode\";s:8:\"&#xf15c;\";}s:7:\"fa-file\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-file\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-file\";s:3:\"hex\";s:5:\"\\f15b\";s:7:\"unicode\";s:8:\"&#xf15b;\";}s:6:\"fa-btc\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-btc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-btc\";s:3:\"hex\";s:5:\"\\f15a\";s:7:\"unicode\";s:8:\"&#xf15a;\";}s:6:\"fa-krw\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-krw\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-krw\";s:3:\"hex\";s:5:\"\\f159\";s:7:\"unicode\";s:8:\"&#xf159;\";}s:6:\"fa-rub\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-rub\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-rub\";s:3:\"hex\";s:5:\"\\f158\";s:7:\"unicode\";s:8:\"&#xf158;\";}s:6:\"fa-jpy\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-jpy\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-jpy\";s:3:\"hex\";s:5:\"\\f157\";s:7:\"unicode\";s:8:\"&#xf157;\";}s:6:\"fa-inr\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-inr\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-inr\";s:3:\"hex\";s:5:\"\\f156\";s:7:\"unicode\";s:8:\"&#xf156;\";}s:6:\"fa-usd\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-usd\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-usd\";s:3:\"hex\";s:5:\"\\f155\";s:7:\"unicode\";s:8:\"&#xf155;\";}s:6:\"fa-gbp\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-gbp\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-gbp\";s:3:\"hex\";s:5:\"\\f154\";s:7:\"unicode\";s:8:\"&#xf154;\";}s:6:\"fa-eur\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-eur\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-eur\";s:3:\"hex\";s:5:\"\\f153\";s:7:\"unicode\";s:8:\"&#xf153;\";}s:23:\"fa-caret-square-o-right\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-caret-square-o-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-caret-square-o-right\";s:3:\"hex\";s:5:\"\\f152\";s:7:\"unicode\";s:8:\"&#xf152;\";}s:20:\"fa-caret-square-o-up\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-caret-square-o-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-caret-square-o-up\";s:3:\"hex\";s:5:\"\\f151\";s:7:\"unicode\";s:8:\"&#xf151;\";}s:22:\"fa-caret-square-o-down\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-caret-square-o-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-caret-square-o-down\";s:3:\"hex\";s:5:\"\\f150\";s:7:\"unicode\";s:8:\"&#xf150;\";}s:10:\"fa-compass\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-compass\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-compass\";s:3:\"hex\";s:5:\"\\f14e\";s:7:\"unicode\";s:8:\"&#xf14e;\";}s:15:\"fa-share-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-share-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-share-square\";s:3:\"hex\";s:5:\"\\f14d\";s:7:\"unicode\";s:8:\"&#xf14d;\";}s:23:\"fa-external-link-square\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-external-link-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-external-link-square\";s:3:\"hex\";s:5:\"\\f14c\";s:7:\"unicode\";s:8:\"&#xf14c;\";}s:16:\"fa-pencil-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-pencil-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-pencil-square\";s:3:\"hex\";s:5:\"\\f14b\";s:7:\"unicode\";s:8:\"&#xf14b;\";}s:15:\"fa-check-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-check-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-check-square\";s:3:\"hex\";s:5:\"\\f14a\";s:7:\"unicode\";s:8:\"&#xf14a;\";}s:13:\"fa-level-down\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-level-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-level-down\";s:3:\"hex\";s:5:\"\\f149\";s:7:\"unicode\";s:8:\"&#xf149;\";}s:11:\"fa-level-up\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-level-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-level-up\";s:3:\"hex\";s:5:\"\\f148\";s:7:\"unicode\";s:8:\"&#xf148;\";}s:17:\"fa-minus-square-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-minus-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-minus-square-o\";s:3:\"hex\";s:5:\"\\f147\";s:7:\"unicode\";s:8:\"&#xf147;\";}s:15:\"fa-minus-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-minus-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-minus-square\";s:3:\"hex\";s:5:\"\\f146\";s:7:\"unicode\";s:8:\"&#xf146;\";}s:9:\"fa-ticket\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-ticket\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-ticket\";s:3:\"hex\";s:5:\"\\f145\";s:7:\"unicode\";s:8:\"&#xf145;\";}s:14:\"fa-play-circle\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-play-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-play-circle\";s:3:\"hex\";s:5:\"\\f144\";s:7:\"unicode\";s:8:\"&#xf144;\";}s:13:\"fa-rss-square\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-rss-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-rss-square\";s:3:\"hex\";s:5:\"\\f143\";s:7:\"unicode\";s:8:\"&#xf143;\";}s:13:\"fa-ellipsis-v\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-ellipsis-v\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-ellipsis-v\";s:3:\"hex\";s:5:\"\\f142\";s:7:\"unicode\";s:8:\"&#xf142;\";}s:13:\"fa-ellipsis-h\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-ellipsis-h\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-ellipsis-h\";s:3:\"hex\";s:5:\"\\f141\";s:7:\"unicode\";s:8:\"&#xf141;\";}s:11:\"fa-bullseye\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-bullseye\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-bullseye\";s:3:\"hex\";s:5:\"\\f140\";s:7:\"unicode\";s:8:\"&#xf140;\";}s:13:\"fa-unlock-alt\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-unlock-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-unlock-alt\";s:3:\"hex\";s:5:\"\\f13e\";s:7:\"unicode\";s:8:\"&#xf13e;\";}s:9:\"fa-anchor\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-anchor\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-anchor\";s:3:\"hex\";s:5:\"\\f13d\";s:7:\"unicode\";s:8:\"&#xf13d;\";}s:7:\"fa-css3\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-css3\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-css3\";s:3:\"hex\";s:5:\"\\f13c\";s:7:\"unicode\";s:8:\"&#xf13c;\";}s:8:\"fa-html5\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-html5\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-html5\";s:3:\"hex\";s:5:\"\\f13b\";s:7:\"unicode\";s:8:\"&#xf13b;\";}s:22:\"fa-chevron-circle-down\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-chevron-circle-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-chevron-circle-down\";s:3:\"hex\";s:5:\"\\f13a\";s:7:\"unicode\";s:8:\"&#xf13a;\";}s:20:\"fa-chevron-circle-up\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-chevron-circle-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-chevron-circle-up\";s:3:\"hex\";s:5:\"\\f139\";s:7:\"unicode\";s:8:\"&#xf139;\";}s:23:\"fa-chevron-circle-right\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-chevron-circle-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-chevron-circle-right\";s:3:\"hex\";s:5:\"\\f138\";s:7:\"unicode\";s:8:\"&#xf138;\";}s:22:\"fa-chevron-circle-left\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-chevron-circle-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-chevron-circle-left\";s:3:\"hex\";s:5:\"\\f137\";s:7:\"unicode\";s:8:\"&#xf137;\";}s:9:\"fa-maxcdn\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-maxcdn\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-maxcdn\";s:3:\"hex\";s:5:\"\\f136\";s:7:\"unicode\";s:8:\"&#xf136;\";}s:9:\"fa-rocket\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-rocket\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-rocket\";s:3:\"hex\";s:5:\"\\f135\";s:7:\"unicode\";s:8:\"&#xf135;\";}s:20:\"fa-fire-extinguisher\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-fire-extinguisher\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-fire-extinguisher\";s:3:\"hex\";s:5:\"\\f134\";s:7:\"unicode\";s:8:\"&#xf134;\";}s:13:\"fa-calendar-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-calendar-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-calendar-o\";s:3:\"hex\";s:5:\"\\f133\";s:7:\"unicode\";s:8:\"&#xf133;\";}s:9:\"fa-shield\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-shield\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-shield\";s:3:\"hex\";s:5:\"\\f132\";s:7:\"unicode\";s:8:\"&#xf132;\";}s:19:\"fa-microphone-slash\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-microphone-slash\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-microphone-slash\";s:3:\"hex\";s:5:\"\\f131\";s:7:\"unicode\";s:8:\"&#xf131;\";}s:13:\"fa-microphone\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-microphone\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-microphone\";s:3:\"hex\";s:5:\"\\f130\";s:7:\"unicode\";s:8:\"&#xf130;\";}s:15:\"fa-puzzle-piece\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-puzzle-piece\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-puzzle-piece\";s:3:\"hex\";s:5:\"\\f12e\";s:7:\"unicode\";s:8:\"&#xf12e;\";}s:9:\"fa-eraser\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-eraser\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-eraser\";s:3:\"hex\";s:5:\"\\f12d\";s:7:\"unicode\";s:8:\"&#xf12d;\";}s:12:\"fa-subscript\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-subscript\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-subscript\";s:3:\"hex\";s:5:\"\\f12c\";s:7:\"unicode\";s:8:\"&#xf12c;\";}s:14:\"fa-superscript\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-superscript\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-superscript\";s:3:\"hex\";s:5:\"\\f12b\";s:7:\"unicode\";s:8:\"&#xf12b;\";}s:14:\"fa-exclamation\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-exclamation\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-exclamation\";s:3:\"hex\";s:5:\"\\f12a\";s:7:\"unicode\";s:8:\"&#xf12a;\";}s:7:\"fa-info\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-info\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-info\";s:3:\"hex\";s:5:\"\\f129\";s:7:\"unicode\";s:8:\"&#xf129;\";}s:11:\"fa-question\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-question\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-question\";s:3:\"hex\";s:5:\"\\f128\";s:7:\"unicode\";s:8:\"&#xf128;\";}s:15:\"fa-chain-broken\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-chain-broken\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-chain-broken\";s:3:\"hex\";s:5:\"\\f127\";s:7:\"unicode\";s:8:\"&#xf127;\";}s:12:\"fa-code-fork\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-code-fork\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-code-fork\";s:3:\"hex\";s:5:\"\\f126\";s:7:\"unicode\";s:8:\"&#xf126;\";}s:7:\"fa-crop\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-crop\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-crop\";s:3:\"hex\";s:5:\"\\f125\";s:7:\"unicode\";s:8:\"&#xf125;\";}s:17:\"fa-location-arrow\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-location-arrow\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-location-arrow\";s:3:\"hex\";s:5:\"\\f124\";s:7:\"unicode\";s:8:\"&#xf124;\";}s:14:\"fa-star-half-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-star-half-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-star-half-o\";s:3:\"hex\";s:5:\"\\f123\";s:7:\"unicode\";s:8:\"&#xf123;\";}s:12:\"fa-reply-all\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-reply-all\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-reply-all\";s:3:\"hex\";s:5:\"\\f122\";s:7:\"unicode\";s:8:\"&#xf122;\";}s:7:\"fa-code\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-code\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-code\";s:3:\"hex\";s:5:\"\\f121\";s:7:\"unicode\";s:8:\"&#xf121;\";}s:11:\"fa-terminal\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-terminal\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-terminal\";s:3:\"hex\";s:5:\"\\f120\";s:7:\"unicode\";s:8:\"&#xf120;\";}s:17:\"fa-flag-checkered\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-flag-checkered\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-flag-checkered\";s:3:\"hex\";s:5:\"\\f11e\";s:7:\"unicode\";s:8:\"&#xf11e;\";}s:9:\"fa-flag-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-flag-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-flag-o\";s:3:\"hex\";s:5:\"\\f11d\";s:7:\"unicode\";s:8:\"&#xf11d;\";}s:13:\"fa-keyboard-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-keyboard-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-keyboard-o\";s:3:\"hex\";s:5:\"\\f11c\";s:7:\"unicode\";s:8:\"&#xf11c;\";}s:10:\"fa-gamepad\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-gamepad\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-gamepad\";s:3:\"hex\";s:5:\"\\f11b\";s:7:\"unicode\";s:8:\"&#xf11b;\";}s:8:\"fa-meh-o\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-meh-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-meh-o\";s:3:\"hex\";s:5:\"\\f11a\";s:7:\"unicode\";s:8:\"&#xf11a;\";}s:10:\"fa-frown-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-frown-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-frown-o\";s:3:\"hex\";s:5:\"\\f119\";s:7:\"unicode\";s:8:\"&#xf119;\";}s:10:\"fa-smile-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-smile-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-smile-o\";s:3:\"hex\";s:5:\"\\f118\";s:7:\"unicode\";s:8:\"&#xf118;\";}s:16:\"fa-folder-open-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-folder-open-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-folder-open-o\";s:3:\"hex\";s:5:\"\\f115\";s:7:\"unicode\";s:8:\"&#xf115;\";}s:11:\"fa-folder-o\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-folder-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-folder-o\";s:3:\"hex\";s:5:\"\\f114\";s:7:\"unicode\";s:8:\"&#xf114;\";}s:13:\"fa-github-alt\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-github-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-github-alt\";s:3:\"hex\";s:5:\"\\f113\";s:7:\"unicode\";s:8:\"&#xf113;\";}s:8:\"fa-reply\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-reply\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-reply\";s:3:\"hex\";s:5:\"\\f112\";s:7:\"unicode\";s:8:\"&#xf112;\";}s:9:\"fa-circle\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-circle\";s:3:\"hex\";s:5:\"\\f111\";s:7:\"unicode\";s:8:\"&#xf111;\";}s:10:\"fa-spinner\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-spinner\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-spinner\";s:3:\"hex\";s:5:\"\\f110\";s:7:\"unicode\";s:8:\"&#xf110;\";}s:14:\"fa-quote-right\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-quote-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-quote-right\";s:3:\"hex\";s:5:\"\\f10e\";s:7:\"unicode\";s:8:\"&#xf10e;\";}s:13:\"fa-quote-left\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-quote-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-quote-left\";s:3:\"hex\";s:5:\"\\f10d\";s:7:\"unicode\";s:8:\"&#xf10d;\";}s:11:\"fa-circle-o\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-circle-o\";s:3:\"hex\";s:5:\"\\f10c\";s:7:\"unicode\";s:8:\"&#xf10c;\";}s:9:\"fa-mobile\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-mobile\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-mobile\";s:3:\"hex\";s:5:\"\\f10b\";s:7:\"unicode\";s:8:\"&#xf10b;\";}s:9:\"fa-tablet\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-tablet\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-tablet\";s:3:\"hex\";s:5:\"\\f10a\";s:7:\"unicode\";s:8:\"&#xf10a;\";}s:9:\"fa-laptop\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-laptop\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-laptop\";s:3:\"hex\";s:5:\"\\f109\";s:7:\"unicode\";s:8:\"&#xf109;\";}s:10:\"fa-desktop\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-desktop\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-desktop\";s:3:\"hex\";s:5:\"\\f108\";s:7:\"unicode\";s:8:\"&#xf108;\";}s:13:\"fa-angle-down\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-angle-down\";s:3:\"hex\";s:5:\"\\f107\";s:7:\"unicode\";s:8:\"&#xf107;\";}s:11:\"fa-angle-up\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-angle-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-angle-up\";s:3:\"hex\";s:5:\"\\f106\";s:7:\"unicode\";s:8:\"&#xf106;\";}s:14:\"fa-angle-right\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-angle-right\";s:3:\"hex\";s:5:\"\\f105\";s:7:\"unicode\";s:8:\"&#xf105;\";}s:13:\"fa-angle-left\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-angle-left\";s:3:\"hex\";s:5:\"\\f104\";s:7:\"unicode\";s:8:\"&#xf104;\";}s:20:\"fa-angle-double-down\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-angle-double-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-angle-double-down\";s:3:\"hex\";s:5:\"\\f103\";s:7:\"unicode\";s:8:\"&#xf103;\";}s:18:\"fa-angle-double-up\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-angle-double-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-angle-double-up\";s:3:\"hex\";s:5:\"\\f102\";s:7:\"unicode\";s:8:\"&#xf102;\";}s:21:\"fa-angle-double-right\";a:4:{s:7:\"element\";s:59:\"<i class=\"fa fa-angle-double-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:21:\"fa-angle-double-right\";s:3:\"hex\";s:5:\"\\f101\";s:7:\"unicode\";s:8:\"&#xf101;\";}s:20:\"fa-angle-double-left\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-angle-double-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-angle-double-left\";s:3:\"hex\";s:5:\"\\f100\";s:7:\"unicode\";s:8:\"&#xf100;\";}s:14:\"fa-plus-square\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-plus-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-plus-square\";s:3:\"hex\";s:5:\"\\f0fe\";s:7:\"unicode\";s:8:\"&#xf0fe;\";}s:11:\"fa-h-square\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-h-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-h-square\";s:3:\"hex\";s:5:\"\\f0fd\";s:7:\"unicode\";s:8:\"&#xf0fd;\";}s:7:\"fa-beer\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-beer\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-beer\";s:3:\"hex\";s:5:\"\\f0fc\";s:7:\"unicode\";s:8:\"&#xf0fc;\";}s:14:\"fa-fighter-jet\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-fighter-jet\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-fighter-jet\";s:3:\"hex\";s:5:\"\\f0fb\";s:7:\"unicode\";s:8:\"&#xf0fb;\";}s:9:\"fa-medkit\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-medkit\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-medkit\";s:3:\"hex\";s:5:\"\\f0fa\";s:7:\"unicode\";s:8:\"&#xf0fa;\";}s:12:\"fa-ambulance\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-ambulance\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-ambulance\";s:3:\"hex\";s:5:\"\\f0f9\";s:7:\"unicode\";s:8:\"&#xf0f9;\";}s:13:\"fa-hospital-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-hospital-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-hospital-o\";s:3:\"hex\";s:5:\"\\f0f8\";s:7:\"unicode\";s:8:\"&#xf0f8;\";}s:13:\"fa-building-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-building-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-building-o\";s:3:\"hex\";s:5:\"\\f0f7\";s:7:\"unicode\";s:8:\"&#xf0f7;\";}s:14:\"fa-file-text-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-file-text-o\";s:3:\"hex\";s:5:\"\\f0f6\";s:7:\"unicode\";s:8:\"&#xf0f6;\";}s:10:\"fa-cutlery\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-cutlery\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-cutlery\";s:3:\"hex\";s:5:\"\\f0f5\";s:7:\"unicode\";s:8:\"&#xf0f5;\";}s:9:\"fa-coffee\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-coffee\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-coffee\";s:3:\"hex\";s:5:\"\\f0f4\";s:7:\"unicode\";s:8:\"&#xf0f4;\";}s:9:\"fa-bell-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-bell-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-bell-o\";s:3:\"hex\";s:5:\"\\f0a2\";s:7:\"unicode\";s:8:\"&#xf0a2;\";}s:11:\"fa-suitcase\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-suitcase\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-suitcase\";s:3:\"hex\";s:5:\"\\f0f2\";s:7:\"unicode\";s:8:\"&#xf0f2;\";}s:14:\"fa-stethoscope\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-stethoscope\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-stethoscope\";s:3:\"hex\";s:5:\"\\f0f1\";s:7:\"unicode\";s:8:\"&#xf0f1;\";}s:10:\"fa-user-md\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-user-md\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-user-md\";s:3:\"hex\";s:5:\"\\f0f0\";s:7:\"unicode\";s:8:\"&#xf0f0;\";}s:15:\"fa-cloud-upload\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-cloud-upload\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-cloud-upload\";s:3:\"hex\";s:5:\"\\f0ee\";s:7:\"unicode\";s:8:\"&#xf0ee;\";}s:17:\"fa-cloud-download\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-cloud-download\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-cloud-download\";s:3:\"hex\";s:5:\"\\f0ed\";s:7:\"unicode\";s:8:\"&#xf0ed;\";}s:11:\"fa-exchange\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-exchange\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-exchange\";s:3:\"hex\";s:5:\"\\f0ec\";s:7:\"unicode\";s:8:\"&#xf0ec;\";}s:14:\"fa-lightbulb-o\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-lightbulb-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-lightbulb-o\";s:3:\"hex\";s:5:\"\\f0eb\";s:7:\"unicode\";s:8:\"&#xf0eb;\";}s:12:\"fa-clipboard\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-clipboard\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-clipboard\";s:3:\"hex\";s:5:\"\\f0ea\";s:7:\"unicode\";s:8:\"&#xf0ea;\";}s:11:\"fa-umbrella\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-umbrella\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-umbrella\";s:3:\"hex\";s:5:\"\\f0e9\";s:7:\"unicode\";s:8:\"&#xf0e9;\";}s:10:\"fa-sitemap\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-sitemap\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-sitemap\";s:3:\"hex\";s:5:\"\\f0e8\";s:7:\"unicode\";s:8:\"&#xf0e8;\";}s:7:\"fa-bolt\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bolt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bolt\";s:3:\"hex\";s:5:\"\\f0e7\";s:7:\"unicode\";s:8:\"&#xf0e7;\";}s:13:\"fa-comments-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-comments-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-comments-o\";s:3:\"hex\";s:5:\"\\f0e6\";s:7:\"unicode\";s:8:\"&#xf0e6;\";}s:12:\"fa-comment-o\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-comment-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-comment-o\";s:3:\"hex\";s:5:\"\\f0e5\";s:7:\"unicode\";s:8:\"&#xf0e5;\";}s:13:\"fa-tachometer\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-tachometer\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-tachometer\";s:3:\"hex\";s:5:\"\\f0e4\";s:7:\"unicode\";s:8:\"&#xf0e4;\";}s:8:\"fa-gavel\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-gavel\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-gavel\";s:3:\"hex\";s:5:\"\\f0e3\";s:7:\"unicode\";s:8:\"&#xf0e3;\";}s:7:\"fa-undo\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-undo\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-undo\";s:3:\"hex\";s:5:\"\\f0e2\";s:7:\"unicode\";s:8:\"&#xf0e2;\";}s:11:\"fa-linkedin\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-linkedin\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-linkedin\";s:3:\"hex\";s:5:\"\\f0e1\";s:7:\"unicode\";s:8:\"&#xf0e1;\";}s:11:\"fa-envelope\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-envelope\";s:3:\"hex\";s:5:\"\\f0e0\";s:7:\"unicode\";s:8:\"&#xf0e0;\";}s:11:\"fa-sort-asc\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-sort-asc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-sort-asc\";s:3:\"hex\";s:5:\"\\f0de\";s:7:\"unicode\";s:8:\"&#xf0de;\";}s:12:\"fa-sort-desc\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-sort-desc\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-sort-desc\";s:3:\"hex\";s:5:\"\\f0dd\";s:7:\"unicode\";s:8:\"&#xf0dd;\";}s:7:\"fa-sort\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-sort\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-sort\";s:3:\"hex\";s:5:\"\\f0dc\";s:7:\"unicode\";s:8:\"&#xf0dc;\";}s:10:\"fa-columns\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-columns\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-columns\";s:3:\"hex\";s:5:\"\\f0db\";s:7:\"unicode\";s:8:\"&#xf0db;\";}s:14:\"fa-caret-right\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-caret-right\";s:3:\"hex\";s:5:\"\\f0da\";s:7:\"unicode\";s:8:\"&#xf0da;\";}s:13:\"fa-caret-left\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-caret-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-caret-left\";s:3:\"hex\";s:5:\"\\f0d9\";s:7:\"unicode\";s:8:\"&#xf0d9;\";}s:11:\"fa-caret-up\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-caret-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-caret-up\";s:3:\"hex\";s:5:\"\\f0d8\";s:7:\"unicode\";s:8:\"&#xf0d8;\";}s:13:\"fa-caret-down\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-caret-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-caret-down\";s:3:\"hex\";s:5:\"\\f0d7\";s:7:\"unicode\";s:8:\"&#xf0d7;\";}s:8:\"fa-money\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-money\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-money\";s:3:\"hex\";s:5:\"\\f0d6\";s:7:\"unicode\";s:8:\"&#xf0d6;\";}s:14:\"fa-google-plus\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-google-plus\";s:3:\"hex\";s:5:\"\\f0d5\";s:7:\"unicode\";s:8:\"&#xf0d5;\";}s:21:\"fa-google-plus-square\";a:4:{s:7:\"element\";s:59:\"<i class=\"fa fa-google-plus-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:21:\"fa-google-plus-square\";s:3:\"hex\";s:5:\"\\f0d4\";s:7:\"unicode\";s:8:\"&#xf0d4;\";}s:19:\"fa-pinterest-square\";a:4:{s:7:\"element\";s:57:\"<i class=\"fa fa-pinterest-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:19:\"fa-pinterest-square\";s:3:\"hex\";s:5:\"\\f0d3\";s:7:\"unicode\";s:8:\"&#xf0d3;\";}s:12:\"fa-pinterest\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-pinterest\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-pinterest\";s:3:\"hex\";s:5:\"\\f0d2\";s:7:\"unicode\";s:8:\"&#xf0d2;\";}s:8:\"fa-truck\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-truck\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-truck\";s:3:\"hex\";s:5:\"\\f0d1\";s:7:\"unicode\";s:8:\"&#xf0d1;\";}s:8:\"fa-magic\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-magic\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-magic\";s:3:\"hex\";s:5:\"\\f0d0\";s:7:\"unicode\";s:8:\"&#xf0d0;\";}s:8:\"fa-table\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-table\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-table\";s:3:\"hex\";s:5:\"\\f0ce\";s:7:\"unicode\";s:8:\"&#xf0ce;\";}s:12:\"fa-underline\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-underline\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-underline\";s:3:\"hex\";s:5:\"\\f0cd\";s:7:\"unicode\";s:8:\"&#xf0cd;\";}s:16:\"fa-strikethrough\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-strikethrough\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-strikethrough\";s:3:\"hex\";s:5:\"\\f0cc\";s:7:\"unicode\";s:8:\"&#xf0cc;\";}s:10:\"fa-list-ol\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-list-ol\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-list-ol\";s:3:\"hex\";s:5:\"\\f0cb\";s:7:\"unicode\";s:8:\"&#xf0cb;\";}s:10:\"fa-list-ul\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-list-ul\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-list-ul\";s:3:\"hex\";s:5:\"\\f0ca\";s:7:\"unicode\";s:8:\"&#xf0ca;\";}s:7:\"fa-bars\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bars\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bars\";s:3:\"hex\";s:5:\"\\f0c9\";s:7:\"unicode\";s:8:\"&#xf0c9;\";}s:9:\"fa-square\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-square\";s:3:\"hex\";s:5:\"\\f0c8\";s:7:\"unicode\";s:8:\"&#xf0c8;\";}s:11:\"fa-floppy-o\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-floppy-o\";s:3:\"hex\";s:5:\"\\f0c7\";s:7:\"unicode\";s:8:\"&#xf0c7;\";}s:12:\"fa-paperclip\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-paperclip\";s:3:\"hex\";s:5:\"\\f0c6\";s:7:\"unicode\";s:8:\"&#xf0c6;\";}s:10:\"fa-files-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-files-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-files-o\";s:3:\"hex\";s:5:\"\\f0c5\";s:7:\"unicode\";s:8:\"&#xf0c5;\";}s:11:\"fa-scissors\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-scissors\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-scissors\";s:3:\"hex\";s:5:\"\\f0c4\";s:7:\"unicode\";s:8:\"&#xf0c4;\";}s:8:\"fa-flask\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-flask\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-flask\";s:3:\"hex\";s:5:\"\\f0c3\";s:7:\"unicode\";s:8:\"&#xf0c3;\";}s:8:\"fa-cloud\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-cloud\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-cloud\";s:3:\"hex\";s:5:\"\\f0c2\";s:7:\"unicode\";s:8:\"&#xf0c2;\";}s:7:\"fa-link\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-link\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-link\";s:3:\"hex\";s:5:\"\\f0c1\";s:7:\"unicode\";s:8:\"&#xf0c1;\";}s:8:\"fa-users\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-users\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-users\";s:3:\"hex\";s:5:\"\\f0c0\";s:7:\"unicode\";s:8:\"&#xf0c0;\";}s:13:\"fa-arrows-alt\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-arrows-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-arrows-alt\";s:3:\"hex\";s:5:\"\\f0b2\";s:7:\"unicode\";s:8:\"&#xf0b2;\";}s:12:\"fa-briefcase\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-briefcase\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-briefcase\";s:3:\"hex\";s:5:\"\\f0b1\";s:7:\"unicode\";s:8:\"&#xf0b1;\";}s:9:\"fa-filter\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-filter\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-filter\";s:3:\"hex\";s:5:\"\\f0b0\";s:7:\"unicode\";s:8:\"&#xf0b0;\";}s:8:\"fa-tasks\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-tasks\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-tasks\";s:3:\"hex\";s:5:\"\\f0ae\";s:7:\"unicode\";s:8:\"&#xf0ae;\";}s:9:\"fa-wrench\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-wrench\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-wrench\";s:3:\"hex\";s:5:\"\\f0ad\";s:7:\"unicode\";s:8:\"&#xf0ad;\";}s:8:\"fa-globe\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-globe\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-globe\";s:3:\"hex\";s:5:\"\\f0ac\";s:7:\"unicode\";s:8:\"&#xf0ac;\";}s:20:\"fa-arrow-circle-down\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-arrow-circle-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-arrow-circle-down\";s:3:\"hex\";s:5:\"\\f0ab\";s:7:\"unicode\";s:8:\"&#xf0ab;\";}s:18:\"fa-arrow-circle-up\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-arrow-circle-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-arrow-circle-up\";s:3:\"hex\";s:5:\"\\f0aa\";s:7:\"unicode\";s:8:\"&#xf0aa;\";}s:21:\"fa-arrow-circle-right\";a:4:{s:7:\"element\";s:59:\"<i class=\"fa fa-arrow-circle-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:21:\"fa-arrow-circle-right\";s:3:\"hex\";s:5:\"\\f0a9\";s:7:\"unicode\";s:8:\"&#xf0a9;\";}s:20:\"fa-arrow-circle-left\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-arrow-circle-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-arrow-circle-left\";s:3:\"hex\";s:5:\"\\f0a8\";s:7:\"unicode\";s:8:\"&#xf0a8;\";}s:14:\"fa-hand-o-down\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-hand-o-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-hand-o-down\";s:3:\"hex\";s:5:\"\\f0a7\";s:7:\"unicode\";s:8:\"&#xf0a7;\";}s:12:\"fa-hand-o-up\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-hand-o-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-hand-o-up\";s:3:\"hex\";s:5:\"\\f0a6\";s:7:\"unicode\";s:8:\"&#xf0a6;\";}s:14:\"fa-hand-o-left\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-hand-o-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-hand-o-left\";s:3:\"hex\";s:5:\"\\f0a5\";s:7:\"unicode\";s:8:\"&#xf0a5;\";}s:15:\"fa-hand-o-right\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-hand-o-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-hand-o-right\";s:3:\"hex\";s:5:\"\\f0a4\";s:7:\"unicode\";s:8:\"&#xf0a4;\";}s:14:\"fa-certificate\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-certificate\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-certificate\";s:3:\"hex\";s:5:\"\\f0a3\";s:7:\"unicode\";s:8:\"&#xf0a3;\";}s:7:\"fa-bell\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bell\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bell\";s:3:\"hex\";s:5:\"\\f0f3\";s:7:\"unicode\";s:8:\"&#xf0f3;\";}s:11:\"fa-bullhorn\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-bullhorn\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-bullhorn\";s:3:\"hex\";s:5:\"\\f0a1\";s:7:\"unicode\";s:8:\"&#xf0a1;\";}s:8:\"fa-hdd-o\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-hdd-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-hdd-o\";s:3:\"hex\";s:5:\"\\f0a0\";s:7:\"unicode\";s:8:\"&#xf0a0;\";}s:6:\"fa-rss\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-rss\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-rss\";s:3:\"hex\";s:5:\"\\f09e\";s:7:\"unicode\";s:8:\"&#xf09e;\";}s:14:\"fa-credit-card\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-credit-card\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-credit-card\";s:3:\"hex\";s:5:\"\\f09d\";s:7:\"unicode\";s:8:\"&#xf09d;\";}s:9:\"fa-unlock\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-unlock\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-unlock\";s:3:\"hex\";s:5:\"\\f09c\";s:7:\"unicode\";s:8:\"&#xf09c;\";}s:9:\"fa-github\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-github\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-github\";s:3:\"hex\";s:5:\"\\f09b\";s:7:\"unicode\";s:8:\"&#xf09b;\";}s:11:\"fa-facebook\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-facebook\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-facebook\";s:3:\"hex\";s:5:\"\\f09a\";s:7:\"unicode\";s:8:\"&#xf09a;\";}s:10:\"fa-twitter\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-twitter\";s:3:\"hex\";s:5:\"\\f099\";s:7:\"unicode\";s:8:\"&#xf099;\";}s:15:\"fa-phone-square\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-phone-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-phone-square\";s:3:\"hex\";s:5:\"\\f098\";s:7:\"unicode\";s:8:\"&#xf098;\";}s:13:\"fa-bookmark-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-bookmark-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-bookmark-o\";s:3:\"hex\";s:5:\"\\f097\";s:7:\"unicode\";s:8:\"&#xf097;\";}s:11:\"fa-square-o\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-square-o\";s:3:\"hex\";s:5:\"\\f096\";s:7:\"unicode\";s:8:\"&#xf096;\";}s:8:\"fa-phone\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-phone\";s:3:\"hex\";s:5:\"\\f095\";s:7:\"unicode\";s:8:\"&#xf095;\";}s:10:\"fa-lemon-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-lemon-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-lemon-o\";s:3:\"hex\";s:5:\"\\f094\";s:7:\"unicode\";s:8:\"&#xf094;\";}s:9:\"fa-upload\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-upload\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-upload\";s:3:\"hex\";s:5:\"\\f093\";s:7:\"unicode\";s:8:\"&#xf093;\";}s:16:\"fa-github-square\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-github-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-github-square\";s:3:\"hex\";s:5:\"\\f092\";s:7:\"unicode\";s:8:\"&#xf092;\";}s:9:\"fa-trophy\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-trophy\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-trophy\";s:3:\"hex\";s:5:\"\\f091\";s:7:\"unicode\";s:8:\"&#xf091;\";}s:10:\"fa-sign-in\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-sign-in\";s:3:\"hex\";s:5:\"\\f090\";s:7:\"unicode\";s:8:\"&#xf090;\";}s:16:\"fa-external-link\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-external-link\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-external-link\";s:3:\"hex\";s:5:\"\\f08e\";s:7:\"unicode\";s:8:\"&#xf08e;\";}s:13:\"fa-thumb-tack\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-thumb-tack\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-thumb-tack\";s:3:\"hex\";s:5:\"\\f08d\";s:7:\"unicode\";s:8:\"&#xf08d;\";}s:18:\"fa-linkedin-square\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-linkedin-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-linkedin-square\";s:3:\"hex\";s:5:\"\\f08c\";s:7:\"unicode\";s:8:\"&#xf08c;\";}s:11:\"fa-sign-out\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-sign-out\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-sign-out\";s:3:\"hex\";s:5:\"\\f08b\";s:7:\"unicode\";s:8:\"&#xf08b;\";}s:10:\"fa-heart-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-heart-o\";s:3:\"hex\";s:5:\"\\f08a\";s:7:\"unicode\";s:8:\"&#xf08a;\";}s:12:\"fa-star-half\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-star-half\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-star-half\";s:3:\"hex\";s:5:\"\\f089\";s:7:\"unicode\";s:8:\"&#xf089;\";}s:16:\"fa-thumbs-o-down\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-thumbs-o-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-thumbs-o-down\";s:3:\"hex\";s:5:\"\\f088\";s:7:\"unicode\";s:8:\"&#xf088;\";}s:14:\"fa-thumbs-o-up\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-thumbs-o-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-thumbs-o-up\";s:3:\"hex\";s:5:\"\\f087\";s:7:\"unicode\";s:8:\"&#xf087;\";}s:11:\"fa-comments\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-comments\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-comments\";s:3:\"hex\";s:5:\"\\f086\";s:7:\"unicode\";s:8:\"&#xf086;\";}s:7:\"fa-cogs\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-cogs\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-cogs\";s:3:\"hex\";s:5:\"\\f085\";s:7:\"unicode\";s:8:\"&#xf085;\";}s:6:\"fa-key\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-key\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-key\";s:3:\"hex\";s:5:\"\\f084\";s:7:\"unicode\";s:8:\"&#xf084;\";}s:15:\"fa-camera-retro\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-camera-retro\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-camera-retro\";s:3:\"hex\";s:5:\"\\f083\";s:7:\"unicode\";s:8:\"&#xf083;\";}s:18:\"fa-facebook-square\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-facebook-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-facebook-square\";s:3:\"hex\";s:5:\"\\f082\";s:7:\"unicode\";s:8:\"&#xf082;\";}s:17:\"fa-twitter-square\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-twitter-square\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-twitter-square\";s:3:\"hex\";s:5:\"\\f081\";s:7:\"unicode\";s:8:\"&#xf081;\";}s:12:\"fa-bar-chart\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-bar-chart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-bar-chart\";s:3:\"hex\";s:5:\"\\f080\";s:7:\"unicode\";s:8:\"&#xf080;\";}s:11:\"fa-arrows-h\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-arrows-h\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-arrows-h\";s:3:\"hex\";s:5:\"\\f07e\";s:7:\"unicode\";s:8:\"&#xf07e;\";}s:11:\"fa-arrows-v\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-arrows-v\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-arrows-v\";s:3:\"hex\";s:5:\"\\f07d\";s:7:\"unicode\";s:8:\"&#xf07d;\";}s:14:\"fa-folder-open\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-folder-open\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-folder-open\";s:3:\"hex\";s:5:\"\\f07c\";s:7:\"unicode\";s:8:\"&#xf07c;\";}s:9:\"fa-folder\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-folder\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-folder\";s:3:\"hex\";s:5:\"\\f07b\";s:7:\"unicode\";s:8:\"&#xf07b;\";}s:16:\"fa-shopping-cart\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-shopping-cart\";s:3:\"hex\";s:5:\"\\f07a\";s:7:\"unicode\";s:8:\"&#xf07a;\";}s:10:\"fa-retweet\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-retweet\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-retweet\";s:3:\"hex\";s:5:\"\\f079\";s:7:\"unicode\";s:8:\"&#xf079;\";}s:15:\"fa-chevron-down\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-chevron-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-chevron-down\";s:3:\"hex\";s:5:\"\\f078\";s:7:\"unicode\";s:8:\"&#xf078;\";}s:13:\"fa-chevron-up\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-chevron-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-chevron-up\";s:3:\"hex\";s:5:\"\\f077\";s:7:\"unicode\";s:8:\"&#xf077;\";}s:9:\"fa-magnet\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-magnet\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-magnet\";s:3:\"hex\";s:5:\"\\f076\";s:7:\"unicode\";s:8:\"&#xf076;\";}s:10:\"fa-comment\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-comment\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-comment\";s:3:\"hex\";s:5:\"\\f075\";s:7:\"unicode\";s:8:\"&#xf075;\";}s:9:\"fa-random\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-random\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-random\";s:3:\"hex\";s:5:\"\\f074\";s:7:\"unicode\";s:8:\"&#xf074;\";}s:11:\"fa-calendar\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-calendar\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-calendar\";s:3:\"hex\";s:5:\"\\f073\";s:7:\"unicode\";s:8:\"&#xf073;\";}s:8:\"fa-plane\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-plane\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-plane\";s:3:\"hex\";s:5:\"\\f072\";s:7:\"unicode\";s:8:\"&#xf072;\";}s:23:\"fa-exclamation-triangle\";a:4:{s:7:\"element\";s:61:\"<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:23:\"fa-exclamation-triangle\";s:3:\"hex\";s:5:\"\\f071\";s:7:\"unicode\";s:8:\"&#xf071;\";}s:12:\"fa-eye-slash\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-eye-slash\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-eye-slash\";s:3:\"hex\";s:5:\"\\f070\";s:7:\"unicode\";s:8:\"&#xf070;\";}s:6:\"fa-eye\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-eye\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-eye\";s:3:\"hex\";s:5:\"\\f06e\";s:7:\"unicode\";s:8:\"&#xf06e;\";}s:7:\"fa-fire\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-fire\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-fire\";s:3:\"hex\";s:5:\"\\f06d\";s:7:\"unicode\";s:8:\"&#xf06d;\";}s:7:\"fa-leaf\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-leaf\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-leaf\";s:3:\"hex\";s:5:\"\\f06c\";s:7:\"unicode\";s:8:\"&#xf06c;\";}s:7:\"fa-gift\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-gift\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-gift\";s:3:\"hex\";s:5:\"\\f06b\";s:7:\"unicode\";s:8:\"&#xf06b;\";}s:21:\"fa-exclamation-circle\";a:4:{s:7:\"element\";s:59:\"<i class=\"fa fa-exclamation-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:21:\"fa-exclamation-circle\";s:3:\"hex\";s:5:\"\\f06a\";s:7:\"unicode\";s:8:\"&#xf06a;\";}s:11:\"fa-asterisk\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-asterisk\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-asterisk\";s:3:\"hex\";s:5:\"\\f069\";s:7:\"unicode\";s:8:\"&#xf069;\";}s:8:\"fa-minus\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-minus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-minus\";s:3:\"hex\";s:5:\"\\f068\";s:7:\"unicode\";s:8:\"&#xf068;\";}s:7:\"fa-plus\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-plus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-plus\";s:3:\"hex\";s:5:\"\\f067\";s:7:\"unicode\";s:8:\"&#xf067;\";}s:11:\"fa-compress\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-compress\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-compress\";s:3:\"hex\";s:5:\"\\f066\";s:7:\"unicode\";s:8:\"&#xf066;\";}s:9:\"fa-expand\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-expand\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-expand\";s:3:\"hex\";s:5:\"\\f065\";s:7:\"unicode\";s:8:\"&#xf065;\";}s:8:\"fa-share\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-share\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-share\";s:3:\"hex\";s:5:\"\\f064\";s:7:\"unicode\";s:8:\"&#xf064;\";}s:13:\"fa-arrow-down\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-arrow-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-arrow-down\";s:3:\"hex\";s:5:\"\\f063\";s:7:\"unicode\";s:8:\"&#xf063;\";}s:11:\"fa-arrow-up\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-arrow-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-arrow-up\";s:3:\"hex\";s:5:\"\\f062\";s:7:\"unicode\";s:8:\"&#xf062;\";}s:14:\"fa-arrow-right\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-arrow-right\";s:3:\"hex\";s:5:\"\\f061\";s:7:\"unicode\";s:8:\"&#xf061;\";}s:13:\"fa-arrow-left\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-arrow-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-arrow-left\";s:3:\"hex\";s:5:\"\\f060\";s:7:\"unicode\";s:8:\"&#xf060;\";}s:6:\"fa-ban\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-ban\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-ban\";s:3:\"hex\";s:5:\"\\f05e\";s:7:\"unicode\";s:8:\"&#xf05e;\";}s:17:\"fa-check-circle-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-check-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-check-circle-o\";s:3:\"hex\";s:5:\"\\f05d\";s:7:\"unicode\";s:8:\"&#xf05d;\";}s:17:\"fa-times-circle-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-times-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-times-circle-o\";s:3:\"hex\";s:5:\"\\f05c\";s:7:\"unicode\";s:8:\"&#xf05c;\";}s:13:\"fa-crosshairs\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-crosshairs\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-crosshairs\";s:3:\"hex\";s:5:\"\\f05b\";s:7:\"unicode\";s:8:\"&#xf05b;\";}s:14:\"fa-info-circle\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-info-circle\";s:3:\"hex\";s:5:\"\\f05a\";s:7:\"unicode\";s:8:\"&#xf05a;\";}s:18:\"fa-question-circle\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-question-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-question-circle\";s:3:\"hex\";s:5:\"\\f059\";s:7:\"unicode\";s:8:\"&#xf059;\";}s:15:\"fa-check-circle\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-check-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-check-circle\";s:3:\"hex\";s:5:\"\\f058\";s:7:\"unicode\";s:8:\"&#xf058;\";}s:15:\"fa-times-circle\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-times-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-times-circle\";s:3:\"hex\";s:5:\"\\f057\";s:7:\"unicode\";s:8:\"&#xf057;\";}s:15:\"fa-minus-circle\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-minus-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-minus-circle\";s:3:\"hex\";s:5:\"\\f056\";s:7:\"unicode\";s:8:\"&#xf056;\";}s:14:\"fa-plus-circle\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-plus-circle\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-plus-circle\";s:3:\"hex\";s:5:\"\\f055\";s:7:\"unicode\";s:8:\"&#xf055;\";}s:16:\"fa-chevron-right\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-chevron-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-chevron-right\";s:3:\"hex\";s:5:\"\\f054\";s:7:\"unicode\";s:8:\"&#xf054;\";}s:15:\"fa-chevron-left\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-chevron-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-chevron-left\";s:3:\"hex\";s:5:\"\\f053\";s:7:\"unicode\";s:8:\"&#xf053;\";}s:8:\"fa-eject\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-eject\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-eject\";s:3:\"hex\";s:5:\"\\f052\";s:7:\"unicode\";s:8:\"&#xf052;\";}s:15:\"fa-step-forward\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-step-forward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-step-forward\";s:3:\"hex\";s:5:\"\\f051\";s:7:\"unicode\";s:8:\"&#xf051;\";}s:15:\"fa-fast-forward\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-fast-forward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-fast-forward\";s:3:\"hex\";s:5:\"\\f050\";s:7:\"unicode\";s:8:\"&#xf050;\";}s:10:\"fa-forward\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-forward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-forward\";s:3:\"hex\";s:5:\"\\f04e\";s:7:\"unicode\";s:8:\"&#xf04e;\";}s:7:\"fa-stop\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-stop\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-stop\";s:3:\"hex\";s:5:\"\\f04d\";s:7:\"unicode\";s:8:\"&#xf04d;\";}s:8:\"fa-pause\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-pause\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-pause\";s:3:\"hex\";s:5:\"\\f04c\";s:7:\"unicode\";s:8:\"&#xf04c;\";}s:7:\"fa-play\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-play\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-play\";s:3:\"hex\";s:5:\"\\f04b\";s:7:\"unicode\";s:8:\"&#xf04b;\";}s:11:\"fa-backward\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-backward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-backward\";s:3:\"hex\";s:5:\"\\f04a\";s:7:\"unicode\";s:8:\"&#xf04a;\";}s:16:\"fa-fast-backward\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-fast-backward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-fast-backward\";s:3:\"hex\";s:5:\"\\f049\";s:7:\"unicode\";s:8:\"&#xf049;\";}s:16:\"fa-step-backward\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-step-backward\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-step-backward\";s:3:\"hex\";s:5:\"\\f048\";s:7:\"unicode\";s:8:\"&#xf048;\";}s:9:\"fa-arrows\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-arrows\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-arrows\";s:3:\"hex\";s:5:\"\\f047\";s:7:\"unicode\";s:8:\"&#xf047;\";}s:17:\"fa-check-square-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-check-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-check-square-o\";s:3:\"hex\";s:5:\"\\f046\";s:7:\"unicode\";s:8:\"&#xf046;\";}s:17:\"fa-share-square-o\";a:4:{s:7:\"element\";s:55:\"<i class=\"fa fa-share-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:17:\"fa-share-square-o\";s:3:\"hex\";s:5:\"\\f045\";s:7:\"unicode\";s:8:\"&#xf045;\";}s:18:\"fa-pencil-square-o\";a:4:{s:7:\"element\";s:56:\"<i class=\"fa fa-pencil-square-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:18:\"fa-pencil-square-o\";s:3:\"hex\";s:5:\"\\f044\";s:7:\"unicode\";s:8:\"&#xf044;\";}s:7:\"fa-tint\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-tint\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-tint\";s:3:\"hex\";s:5:\"\\f043\";s:7:\"unicode\";s:8:\"&#xf043;\";}s:9:\"fa-adjust\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-adjust\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-adjust\";s:3:\"hex\";s:5:\"\\f042\";s:7:\"unicode\";s:8:\"&#xf042;\";}s:13:\"fa-map-marker\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-map-marker\";s:3:\"hex\";s:5:\"\\f041\";s:7:\"unicode\";s:8:\"&#xf041;\";}s:9:\"fa-pencil\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-pencil\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-pencil\";s:3:\"hex\";s:5:\"\\f040\";s:7:\"unicode\";s:8:\"&#xf040;\";}s:12:\"fa-picture-o\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-picture-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-picture-o\";s:3:\"hex\";s:5:\"\\f03e\";s:7:\"unicode\";s:8:\"&#xf03e;\";}s:15:\"fa-video-camera\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-video-camera\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-video-camera\";s:3:\"hex\";s:5:\"\\f03d\";s:7:\"unicode\";s:8:\"&#xf03d;\";}s:9:\"fa-indent\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-indent\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-indent\";s:3:\"hex\";s:5:\"\\f03c\";s:7:\"unicode\";s:8:\"&#xf03c;\";}s:10:\"fa-outdent\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-outdent\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-outdent\";s:3:\"hex\";s:5:\"\\f03b\";s:7:\"unicode\";s:8:\"&#xf03b;\";}s:7:\"fa-list\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-list\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-list\";s:3:\"hex\";s:5:\"\\f03a\";s:7:\"unicode\";s:8:\"&#xf03a;\";}s:16:\"fa-align-justify\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-align-justify\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-align-justify\";s:3:\"hex\";s:5:\"\\f039\";s:7:\"unicode\";s:8:\"&#xf039;\";}s:14:\"fa-align-right\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-align-right\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-align-right\";s:3:\"hex\";s:5:\"\\f038\";s:7:\"unicode\";s:8:\"&#xf038;\";}s:15:\"fa-align-center\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-align-center\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-align-center\";s:3:\"hex\";s:5:\"\\f037\";s:7:\"unicode\";s:8:\"&#xf037;\";}s:13:\"fa-align-left\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-align-left\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-align-left\";s:3:\"hex\";s:5:\"\\f036\";s:7:\"unicode\";s:8:\"&#xf036;\";}s:13:\"fa-text-width\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-text-width\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-text-width\";s:3:\"hex\";s:5:\"\\f035\";s:7:\"unicode\";s:8:\"&#xf035;\";}s:14:\"fa-text-height\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-text-height\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-text-height\";s:3:\"hex\";s:5:\"\\f034\";s:7:\"unicode\";s:8:\"&#xf034;\";}s:9:\"fa-italic\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-italic\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-italic\";s:3:\"hex\";s:5:\"\\f033\";s:7:\"unicode\";s:8:\"&#xf033;\";}s:7:\"fa-bold\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-bold\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-bold\";s:3:\"hex\";s:5:\"\\f032\";s:7:\"unicode\";s:8:\"&#xf032;\";}s:7:\"fa-font\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-font\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-font\";s:3:\"hex\";s:5:\"\\f031\";s:7:\"unicode\";s:8:\"&#xf031;\";}s:9:\"fa-camera\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-camera\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-camera\";s:3:\"hex\";s:5:\"\\f030\";s:7:\"unicode\";s:8:\"&#xf030;\";}s:8:\"fa-print\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-print\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-print\";s:3:\"hex\";s:5:\"\\f02f\";s:7:\"unicode\";s:8:\"&#xf02f;\";}s:11:\"fa-bookmark\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-bookmark\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-bookmark\";s:3:\"hex\";s:5:\"\\f02e\";s:7:\"unicode\";s:8:\"&#xf02e;\";}s:7:\"fa-book\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-book\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-book\";s:3:\"hex\";s:5:\"\\f02d\";s:7:\"unicode\";s:8:\"&#xf02d;\";}s:7:\"fa-tags\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-tags\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-tags\";s:3:\"hex\";s:5:\"\\f02c\";s:7:\"unicode\";s:8:\"&#xf02c;\";}s:6:\"fa-tag\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-tag\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-tag\";s:3:\"hex\";s:5:\"\\f02b\";s:7:\"unicode\";s:8:\"&#xf02b;\";}s:10:\"fa-barcode\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-barcode\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-barcode\";s:3:\"hex\";s:5:\"\\f02a\";s:7:\"unicode\";s:8:\"&#xf02a;\";}s:9:\"fa-qrcode\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-qrcode\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-qrcode\";s:3:\"hex\";s:5:\"\\f029\";s:7:\"unicode\";s:8:\"&#xf029;\";}s:12:\"fa-volume-up\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-volume-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-volume-up\";s:3:\"hex\";s:5:\"\\f028\";s:7:\"unicode\";s:8:\"&#xf028;\";}s:14:\"fa-volume-down\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-volume-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-volume-down\";s:3:\"hex\";s:5:\"\\f027\";s:7:\"unicode\";s:8:\"&#xf027;\";}s:13:\"fa-volume-off\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-volume-off\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-volume-off\";s:3:\"hex\";s:5:\"\\f026\";s:7:\"unicode\";s:8:\"&#xf026;\";}s:13:\"fa-headphones\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-headphones\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-headphones\";s:3:\"hex\";s:5:\"\\f025\";s:7:\"unicode\";s:8:\"&#xf025;\";}s:7:\"fa-flag\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-flag\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-flag\";s:3:\"hex\";s:5:\"\\f024\";s:7:\"unicode\";s:8:\"&#xf024;\";}s:7:\"fa-lock\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-lock\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-lock\";s:3:\"hex\";s:5:\"\\f023\";s:7:\"unicode\";s:8:\"&#xf023;\";}s:11:\"fa-list-alt\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-list-alt\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-list-alt\";s:3:\"hex\";s:5:\"\\f022\";s:7:\"unicode\";s:8:\"&#xf022;\";}s:10:\"fa-refresh\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-refresh\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-refresh\";s:3:\"hex\";s:5:\"\\f021\";s:7:\"unicode\";s:8:\"&#xf021;\";}s:9:\"fa-repeat\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-repeat\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-repeat\";s:3:\"hex\";s:5:\"\\f01e\";s:7:\"unicode\";s:8:\"&#xf01e;\";}s:16:\"fa-play-circle-o\";a:4:{s:7:\"element\";s:54:\"<i class=\"fa fa-play-circle-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:16:\"fa-play-circle-o\";s:3:\"hex\";s:5:\"\\f01d\";s:7:\"unicode\";s:8:\"&#xf01d;\";}s:8:\"fa-inbox\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-inbox\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-inbox\";s:3:\"hex\";s:5:\"\\f01c\";s:7:\"unicode\";s:8:\"&#xf01c;\";}s:20:\"fa-arrow-circle-o-up\";a:4:{s:7:\"element\";s:58:\"<i class=\"fa fa-arrow-circle-o-up\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:20:\"fa-arrow-circle-o-up\";s:3:\"hex\";s:5:\"\\f01b\";s:7:\"unicode\";s:8:\"&#xf01b;\";}s:22:\"fa-arrow-circle-o-down\";a:4:{s:7:\"element\";s:60:\"<i class=\"fa fa-arrow-circle-o-down\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:22:\"fa-arrow-circle-o-down\";s:3:\"hex\";s:5:\"\\f01a\";s:7:\"unicode\";s:8:\"&#xf01a;\";}s:11:\"fa-download\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-download\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-download\";s:3:\"hex\";s:5:\"\\f019\";s:7:\"unicode\";s:8:\"&#xf019;\";}s:7:\"fa-road\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-road\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-road\";s:3:\"hex\";s:5:\"\\f018\";s:7:\"unicode\";s:8:\"&#xf018;\";}s:10:\"fa-clock-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-clock-o\";s:3:\"hex\";s:5:\"\\f017\";s:7:\"unicode\";s:8:\"&#xf017;\";}s:9:\"fa-file-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-file-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-file-o\";s:3:\"hex\";s:5:\"\\f016\";s:7:\"unicode\";s:8:\"&#xf016;\";}s:7:\"fa-home\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-home\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-home\";s:3:\"hex\";s:5:\"\\f015\";s:7:\"unicode\";s:8:\"&#xf015;\";}s:10:\"fa-trash-o\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-trash-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-trash-o\";s:3:\"hex\";s:5:\"\\f014\";s:7:\"unicode\";s:8:\"&#xf014;\";}s:6:\"fa-cog\";a:4:{s:7:\"element\";s:44:\"<i class=\"fa fa-cog\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:6:\"fa-cog\";s:3:\"hex\";s:5:\"\\f013\";s:7:\"unicode\";s:8:\"&#xf013;\";}s:9:\"fa-signal\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-signal\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-signal\";s:3:\"hex\";s:5:\"\\f012\";s:7:\"unicode\";s:8:\"&#xf012;\";}s:12:\"fa-power-off\";a:4:{s:7:\"element\";s:50:\"<i class=\"fa fa-power-off\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:12:\"fa-power-off\";s:3:\"hex\";s:5:\"\\f011\";s:7:\"unicode\";s:8:\"&#xf011;\";}s:15:\"fa-search-minus\";a:4:{s:7:\"element\";s:53:\"<i class=\"fa fa-search-minus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:15:\"fa-search-minus\";s:3:\"hex\";s:5:\"\\f010\";s:7:\"unicode\";s:8:\"&#xf010;\";}s:14:\"fa-search-plus\";a:4:{s:7:\"element\";s:52:\"<i class=\"fa fa-search-plus\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:14:\"fa-search-plus\";s:3:\"hex\";s:5:\"\\f00e\";s:7:\"unicode\";s:8:\"&#xf00e;\";}s:8:\"fa-times\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-times\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-times\";s:3:\"hex\";s:5:\"\\f00d\";s:7:\"unicode\";s:8:\"&#xf00d;\";}s:8:\"fa-check\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-check\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-check\";s:3:\"hex\";s:5:\"\\f00c\";s:7:\"unicode\";s:8:\"&#xf00c;\";}s:10:\"fa-th-list\";a:4:{s:7:\"element\";s:48:\"<i class=\"fa fa-th-list\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:10:\"fa-th-list\";s:3:\"hex\";s:5:\"\\f00b\";s:7:\"unicode\";s:8:\"&#xf00b;\";}s:5:\"fa-th\";a:4:{s:7:\"element\";s:43:\"<i class=\"fa fa-th\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:5:\"fa-th\";s:3:\"hex\";s:5:\"\\f00a\";s:7:\"unicode\";s:8:\"&#xf00a;\";}s:11:\"fa-th-large\";a:4:{s:7:\"element\";s:49:\"<i class=\"fa fa-th-large\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:11:\"fa-th-large\";s:3:\"hex\";s:5:\"\\f009\";s:7:\"unicode\";s:8:\"&#xf009;\";}s:7:\"fa-film\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-film\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-film\";s:3:\"hex\";s:5:\"\\f008\";s:7:\"unicode\";s:8:\"&#xf008;\";}s:7:\"fa-user\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-user\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-user\";s:3:\"hex\";s:5:\"\\f007\";s:7:\"unicode\";s:8:\"&#xf007;\";}s:9:\"fa-star-o\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-star-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-star-o\";s:3:\"hex\";s:5:\"\\f006\";s:7:\"unicode\";s:8:\"&#xf006;\";}s:7:\"fa-star\";a:4:{s:7:\"element\";s:45:\"<i class=\"fa fa-star\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:7:\"fa-star\";s:3:\"hex\";s:5:\"\\f005\";s:7:\"unicode\";s:8:\"&#xf005;\";}s:8:\"fa-heart\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-heart\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-heart\";s:3:\"hex\";s:5:\"\\f004\";s:7:\"unicode\";s:8:\"&#xf004;\";}s:13:\"fa-envelope-o\";a:4:{s:7:\"element\";s:51:\"<i class=\"fa fa-envelope-o\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:13:\"fa-envelope-o\";s:3:\"hex\";s:5:\"\\f003\";s:7:\"unicode\";s:8:\"&#xf003;\";}s:9:\"fa-search\";a:4:{s:7:\"element\";s:47:\"<i class=\"fa fa-search\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:9:\"fa-search\";s:3:\"hex\";s:5:\"\\f002\";s:7:\"unicode\";s:8:\"&#xf002;\";}s:8:\"fa-music\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-music\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-music\";s:3:\"hex\";s:5:\"\\f001\";s:7:\"unicode\";s:8:\"&#xf001;\";}s:8:\"fa-glass\";a:4:{s:7:\"element\";s:46:\"<i class=\"fa fa-glass\" aria-hidden=\"true\"></i>\";s:5:\"class\";s:8:\"fa-glass\";s:3:\"hex\";s:5:\"\\f000\";s:7:\"unicode\";s:8:\"&#xf000;\";}}s:6:\"prefix\";s:3:\"fa-\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(387, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1536861533', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(388, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Sep 2018 05:36:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wpfr.net/wordpress-gutenberg/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2018 09:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"éditeur visuel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2117903\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1474:\"Gutenberg arrive à grand pas, alors voici un résumé de tout ce qu&#8217;il faut savoir sur le nouvel éditeur visuel de WordPress au travers de questions / réponses ! Difficile de marcher tranquillement dans le quartier WordPress sans entendre parler de ce fameux Gutenberg ! C&#8217;est un nouvel éditeur ? C&#8217;est un nouveau page builder<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i6NQjnc9uiQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wordpress-gutenberg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wpfr.net/wordpress-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 08:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2107099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WPFR sponsor du WP Tech Lyon !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 07:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2082223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Loi anti-fraude et l’e-commerce : les informations officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Jan 2018 14:51:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"Loi anti-fraude\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2072415\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1503:\"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"39\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/election-bureau-wpfr-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Jan 2018 11:30:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2041252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1530:\"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/election-bureau-wpfr-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"PHP Tour Montpellier 2018 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Jan 2018 10:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2035309\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le point sur les certifications WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/point-certifications-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 17:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2001761\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1552:\"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/point-certifications-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/point-certifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"4Kli3pp97o8QNr6/SAxaLa1oQ4g\";s:13:\"last-modified\";s:29:\"Thu, 13 Sep 2018 05:40:46 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Thu, 13 Sep 2018 05:58:53 GMT\";s:7:\"expires\";s:29:\"Thu, 13 Sep 2018 05:58:53 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:40:\"quic=\":443\"; ma=2592000; v=\"44,43,39,35\"\";}}s:5:\"build\";s:14:\"20180802214832\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(389, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1536861534', 'no'),
(390, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1536818334', 'no'),
(391, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1536861534', 'no'),
(392, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"Les 25 meilleurs plugins WordPress incontournables (édition 2018)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/LEtV9kSr0Ck/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"https://wpmarmite.com/meilleurs-plugins-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=meilleurs-plugins-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 12 Sep 2018 06:01:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:314:\"\n		        \n56 000. Soit le nombre de plugins WordPress présents sur le répertoire officiel, au moment d’écrire ces lignes. Et je ne vous parle même pas de ceux présents sur des...\nL’article Les 25 meilleurs plugins WordPress incontournables (édition 2018) est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:691:\"<p><img width=\"1500\" height=\"750\" src=\"https://wpmarmite.com/wp-content/uploads/2018/09/plugins.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>56 000. Soit le nombre de plugins WordPress présents sur le répertoire officiel, au moment d’écrire ces lignes. Et je ne vous parle même pas de ceux présents sur des...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/meilleurs-plugins-wordpress/\">Les 25 meilleurs plugins WordPress incontournables (édition 2018)</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/LEtV9kSr0Ck\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"https://wpmarmite.com/meilleurs-plugins-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=meilleurs-plugins-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"Maintenance pour WordPress : opération nettoyage en profondeur\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/k1Xq66K9KaY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wpchannel.com/wordpress/tutoriels-wordpress/maintenance-wordpress-nettoyage/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 11 Sep 2018 06:55:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:450:\"\n		        Maintenir à jour un site WordPress consiste en une série d&#8217;opérations techniques allant de la simple mise à jour d&#8217;extension ou de thème à un nettoyage en profondeur de votre base de données. En tant que spécialiste de la maintenance de site sous WordPress, je me suis donné pour challenge d&#8217;optimiser au mieux WP Channel fort d&#8217;un historique de bientôt 10 ans d&#8217;existence. Mener [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:713:\"<div class=\"post-thumbnail\"><img width=\"356\" height=\"327\" src=\"https://wpchannel.com/images/2018/01/lego-star-wars-356x327.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" /></div>Maintenir à jour un site WordPress consiste en une série d&#8217;opérations techniques allant de la simple mise à jour d&#8217;extension ou de thème à un nettoyage en profondeur de votre base de données. En tant que spécialiste de la maintenance de site sous WordPress, je me suis donné pour challenge d&#8217;optimiser au mieux WP Channel fort d&#8217;un historique de bientôt 10 ans d&#8217;existence. Mener [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/k1Xq66K9KaY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wpchannel.com/wordpress/tutoriels-wordpress/maintenance-wordpress-nettoyage/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Passer son site WordPress en HTTPS : le guide complet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/MhTNg3XdEpI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wpchannel.com/wordpress/tutoriels-wordpress/passer-site-wordpress-https-guide-complet/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 06 Sep 2018 08:28:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:405:\"\n		        Comment basculer votre site sous WordPress de HTTP à HTTPS ? Avec le déploiement massif des certificats gratuits proposés par Let&#8217;s Encrypt &#8211; un projet mondial soutenu par de gros acteurs du Web, plus de 60% des sites français sont passés à HTTPS&#8230; pour le meilleur et pour le pire ! Ce tutoriel fait suite au meetup WP Bordeaux du 8 février 2018 qui [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:673:\"<div class=\"post-thumbnail\"><img width=\"356\" height=\"327\" src=\"https://wpchannel.com/images/2018/08/wordpress-ssl-https-356x327.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" /></div>Comment basculer votre site sous WordPress de HTTP à HTTPS ? Avec le déploiement massif des certificats gratuits proposés par Let&#8217;s Encrypt &#8211; un projet mondial soutenu par de gros acteurs du Web, plus de 60% des sites français sont passés à HTTPS&#8230; pour le meilleur et pour le pire ! Ce tutoriel fait suite au meetup WP Bordeaux du 8 février 2018 qui [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/MhTNg3XdEpI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wpchannel.com/wordpress/tutoriels-wordpress/passer-site-wordpress-https-guide-complet/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Comment créer aisément des Landing Pages sur WordPress ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/nMIyImIpORg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"https://wpmarmite.com/landing-page-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=landing-page-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 05 Sep 2018 06:30:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:340:\"\n		        \nPage d’accueil, page produit pour les sites e-commerce, page de contact… La structure d’un site web est généralement assez attendue, et il existe moult bonnes pratiques qui vous expliqueront comment...\nL’article Comment créer aisément des Landing Pages sur WordPress ? est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:714:\"<p><img width=\"1500\" height=\"750\" src=\"https://wpmarmite.com/wp-content/uploads/2018/09/landing-1.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Page d’accueil, page produit pour les sites e-commerce, page de contact… La structure d’un site web est généralement assez attendue, et il existe moult bonnes pratiques qui vous expliqueront comment...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/landing-page-wordpress/\">Comment créer aisément des Landing Pages sur WordPress ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/nMIyImIpORg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"https://wpmarmite.com/landing-page-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=landing-page-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WordCamp Nice 2018: ma première participation en tant qu’orateur!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/TfbYqOFZXKM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://www.thivinfo.com/blog/wordcamp-nice-2018-ma-premiere-participation-en-tant-quorateur/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 30 Aug 2018 18:35:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:684:\"\n		        Le 19 octobre 2018 aura lieu un évènement très important sur la cote d&#8217;azur&#8230; le prochain rendez-vous important pour la communauté WordPress aura lieu à Nice! Lors de ce Nice WordCamp 2018  aura lieu ma première conférence ! Qu&#8217;est ce qu&#8217;un WordCamp? Je ne dévoilerais bien sur pas le contenu de cette conférence de 20 minutes avant mais le programme étant dévoilé et la billetterie ouverte, il est grand temps que vous en connaissiez le titre et le sujet au moins 😉 D’esclavagiste à Développeur WordPress: itinéraire d’une reconversion réussie! Vous exercez une activité et avez envie d&#8217;en changer ? Vous…		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:754:\"Le 19 octobre 2018 aura lieu un évènement très important sur la cote d&#8217;azur&#8230; le prochain rendez-vous important pour la communauté WordPress aura lieu à Nice! Lors de ce Nice WordCamp 2018  aura lieu ma première conférence ! Qu&#8217;est ce qu&#8217;un WordCamp? Je ne dévoilerais bien sur pas le contenu de cette conférence de 20 minutes avant mais le programme étant dévoilé et la billetterie ouverte, il est grand temps que vous en connaissiez le titre et le sujet au moins 😉 D’esclavagiste à Développeur WordPress: itinéraire d’une reconversion réussie! Vous exercez une activité et avez envie d&#8217;en changer ? Vous…<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/TfbYqOFZXKM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://www.thivinfo.com/blog/wordcamp-nice-2018-ma-premiere-participation-en-tant-quorateur/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Le fichier robots.txt de votre site WordPress est-il optimisé ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/e2LfTeUMTFc/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"https://wpmarmite.com/robots-txt-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=robots-txt-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Aug 2018 06:00:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:310:\"\n		        \nSi je vous demande de me définir ce qu’est un fichier robots.txt sur WordPress, êtes-vous capable de me donner une réponse du tac au tac ? Pas facile, n’est-ce pas...\nL’article Le fichier robots.txt de votre site WordPress est-il optimisé ? est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:682:\"<p><img width=\"1500\" height=\"750\" src=\"https://wpmarmite.com/wp-content/uploads/2018/08/robot.txt.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Si je vous demande de me définir ce qu’est un fichier robots.txt sur WordPress, êtes-vous capable de me donner une réponse du tac au tac ? Pas facile, n’est-ce pas...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/robots-txt-wordpress/\">Le fichier robots.txt de votre site WordPress est-il optimisé ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/e2LfTeUMTFc\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"https://wpmarmite.com/robots-txt-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=robots-txt-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Quel plugin choisir pour installer un captcha sur WordPress ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/eLm2D0c6tK8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://wpmarmite.com/captcha-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=captcha-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 Aug 2018 06:00:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:307:\"\n		        \nVoilà un truc qui peut vous rendre zinzin, vous faire passer pour un déficient visuel, ou un illettré. Voire les trois en même temps. Ce truc, c’est un captcha. Ça...\nL’article Quel plugin choisir pour installer un captcha sur WordPress ? est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:674:\"<p><img width=\"1500\" height=\"750\" src=\"https://wpmarmite.com/wp-content/uploads/2018/08/captcha.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Voilà un truc qui peut vous rendre zinzin, vous faire passer pour un déficient visuel, ou un illettré. Voire les trois en même temps. Ce truc, c’est un captcha. Ça...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/captcha-wordpress/\">Quel plugin choisir pour installer un captcha sur WordPress ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/eLm2D0c6tK8\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://wpmarmite.com/captcha-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=captcha-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"define(), constant() et cie : Le guide complet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"http://feedproxy.google.com/~r/wpfr/~3/vvfk9nq4i7c/define-constant-et-cie-le-guide-complet-110236.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://boiteaweb.fr/define-constant-et-cie-le-guide-complet-110236.html\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 20 Aug 2018 06:00:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:455:\"\n		        Il devient rare qu\'une extension, un thème, un projet PHP ne contienne pas de constantes PHP. Vous en utilisez surement aussi. Voici quelques subtilités qui devraient vous laisser perplexe, je vais non seulement jouer avec le code mais aussi avec les versions PHP pour nous rappeler à tous que la rétrocompatibilité est toujours au rendez-vous.\nThe post define(), constant() et cie : Le guide complet appeared first on BoiteAWeb.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:691:\"<p>Il devient rare qu\'une extension, un thème, un projet PHP ne contienne pas de constantes PHP. Vous en utilisez surement aussi. Voici quelques subtilités qui devraient vous laisser perplexe, je vais non seulement jouer avec le code mais aussi avec les versions PHP pour nous rappeler à tous que la rétrocompatibilité est toujours au rendez-vous.</p>\n<p>The post <a rel=\"nofollow\" href=\"https://boiteaweb.fr/define-constant-et-cie-le-guide-complet-110236.html\">define(), constant() et cie : Le guide complet</a> appeared first on <a rel=\"nofollow\" href=\"https://boiteaweb.fr\">BoiteAWeb</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/vvfk9nq4i7c\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://boiteaweb.fr/define-constant-et-cie-le-guide-complet-110236.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"2jJyDtZSlhSfPhjHhPfulPQs5Sk\";s:13:\"last-modified\";s:29:\"Thu, 13 Sep 2018 05:57:16 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Thu, 13 Sep 2018 05:58:54 GMT\";s:7:\"expires\";s:29:\"Thu, 13 Sep 2018 05:58:54 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:40:\"quic=\":443\"; ma=2592000; v=\"44,43,39,35\"\";}}s:5:\"build\";s:14:\"20180802214832\";}', 'no'),
(393, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1536861534', 'no'),
(394, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1536818334', 'no'),
(395, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1536861534', 'no'),
(396, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\'>Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/LEtV9kSr0Ck/\'>Les 25 meilleurs plugins WordPress incontournables (édition 2018)</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/k1Xq66K9KaY/\'>Maintenance pour WordPress : opération nettoyage en profondeur</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/MhTNg3XdEpI/\'>Passer son site WordPress en HTTPS : le guide complet</a></li></ul></div>', 'no'),
(402, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1536847245;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(412, '_site_transient_timeout_available_translations', '1536855158', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(413, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-11 21:04:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-23 07:27:43\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-26 07:51:00\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-05 05:34:46\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-05 11:25:11\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-27 10:53:54\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-07-06 08:46:24\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 07:45:31\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-10 07:31:38\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 17:01:04\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 09:59:15\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 20:38:16\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 21:44:38\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 13:34:08\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 00:25:28\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-01 16:09:29\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-21 14:41:13\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-06 13:31:53\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 20:43:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 11:18:39\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 10:46:48\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 12:18:54\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-06 16:13:32\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-10 07:48:09\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 10:46:11\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 08:49:46\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-14 10:04:37\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 10:29:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-05 07:38:36\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-05 06:05:23\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-21 12:12:01\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-08 20:47:16\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-08 15:27:34\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 09:42:27\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 07:24:43\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-13 11:25:09\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 08:56:33\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-06 12:43:59\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-05 09:45:40\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-11 07:56:35\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 15:06:12\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 14:22:52\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-08 09:33:19\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 08:15:10\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-28 12:46:02\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 09:01:19\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 20:59:54\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-12 10:07:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-08 19:05:26\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-05 14:19:18\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-03 10:59:52\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-11 09:51:37\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no'),
(415, '_site_transient_timeout_theme_roots', '1536848682', 'no'),
(416, '_site_transient_theme_roots', 'a:3:{s:6:\"oarena\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(421, 'theme_mods_boutique', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536846860;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(422, 'storefront_nux_fresh_site', '0', 'yes'),
(424, 'storefront_nux_dismissed', '1', 'yes'),
(426, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1536847246;s:7:\"checked\";a:3:{s:6:\"oarena\";s:5:\"1.0.0\";s:10:\"storefront\";s:5:\"2.3.3\";s:15:\"twentyseventeen\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:10:\"storefront\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"2.3.3\";s:7:\"updated\";s:19:\"2018-09-06 15:07:42\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/storefront/2.3.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.7\";s:7:\"updated\";s:19:\"2017-11-16 15:29:10\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.7/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(427, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1536857890', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(428, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4505;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2988;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2586;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2451;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1884;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1680;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1673;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1459;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1405;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1402;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1397;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1336;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1283;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1242;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1115;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1072;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1042;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1038;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:922;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:893;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:834;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:814;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:807;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:733;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:704;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:696;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:690;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:681;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:667;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:659;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:658;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:648;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:645;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:618;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:616;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:616;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:606;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:600;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:598;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:576;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:553;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:545;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:542;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:532;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:527;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:516;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:516;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:515;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:510;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:500;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:496;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:491;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:487;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:481;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:480;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:460;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:458;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:454;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:446;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:443;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:438;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:422;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:421;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:419;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:419;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:414;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:409;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:389;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:375;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:374;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:371;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:366;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:364;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:361;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:360;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:354;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:348;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:348;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:347;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:343;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:339;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:338;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:334;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:329;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:328;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:312;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:309;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:307;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:304;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:303;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:302;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:301;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:300;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:298;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:294;}}', 'no'),
(430, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1536865041;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.2\";s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";s:5:\"2.1.2\";s:21:\"hello-dolly/hello.php\";s:3:\"1.6\";s:35:\"oarena-settings/oarena-settings.php\";s:5:\"1.0.0\";s:31:\"what-the-file/what-the-file.php\";s:5:\"1.5.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2018-04-27 10:03:32\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/advanced-custom-fields-font-awesome\";s:4:\"slug\";s:35:\"advanced-custom-fields-font-awesome\";s:6:\"plugin\";s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";s:11:\"new_version\";s:5:\"2.1.2\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/advanced-custom-fields-font-awesome/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/advanced-custom-fields-font-awesome.2.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/icon-256x256.jpg?rev=1016227\";s:2:\"1x\";s:88:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/icon-128x128.jpg?rev=1016227\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/banner-772x250.jpg?rev=859936\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"hello-dolly/hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:21:\"hello-dolly/hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"what-the-file/what-the-file.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/what-the-file\";s:4:\"slug\";s:13:\"what-the-file\";s:6:\"plugin\";s:31:\"what-the-file/what-the-file.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/what-the-file/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/what-the-file.1.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609\";s:2:\"1x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-128x128.png?rev=1223609\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(431, 'ec_option_is_installed', '1', 'yes'),
(432, 'ec_option_storepage', '133', 'yes'),
(433, 'ec_option_cartpage', '134', 'yes'),
(434, 'ec_option_accountpage', '135', 'yes'),
(435, 'ec_option_default_manufacturer', '1', 'yes'),
(436, 'ec_option_store_locale', 'US', 'yes'),
(437, 'ec_option_setup_wizard_done', '0', 'yes'),
(438, 'ec_option_setup_wizard_step', '0', 'yes'),
(439, 'ec_option_review_complete', '0', 'yes'),
(440, 'ec_option_db_version', '1_30', 'yes'),
(441, 'ec_option_show_lite_message', '1', 'yes'),
(442, 'ec_option_new_linking_setup', '0', 'yes'),
(443, 'ec_option_show_install_message', '0', 'yes'),
(444, 'ec_option_added_custom_post_type', '2', 'yes'),
(445, 'ec_option_hide_admin_notice', '0', 'yes'),
(446, 'ec_option_hide_design_help_video', '0', 'yes'),
(447, 'ec_option_design_saved', '0', 'yes'),
(448, 'ec_option_amfphp_fix', '1', 'yes'),
(449, 'ec_option_track_user_clicks', '1', 'yes'),
(450, 'ec_option_cart_use_session_support', '0', 'yes'),
(451, 'ec_option_admin_display_sales_goal', '1', 'yes'),
(452, 'ec_option_admin_sales_goal', '1', 'yes'),
(453, 'ec_option_newsletter_done', '0', 'yes'),
(454, 'ec_option_allow_tracking', '0', 'yes'),
(455, 'ec_option_weight', 'lbs', 'yes'),
(456, 'ec_option_base_currency', 'USD', 'yes'),
(457, 'ec_option_currency', '$', 'yes'),
(458, 'ec_option_currency_symbol_location', '1', 'yes'),
(459, 'ec_option_currency_negative_location', '1', 'yes'),
(460, 'ec_option_currency_decimal_symbol', '.', 'yes'),
(461, 'ec_option_currency_decimal_places', '2', 'yes'),
(462, 'ec_option_currency_thousands_seperator', ',', 'yes'),
(463, 'ec_option_show_currency_code', '0', 'yes'),
(464, 'ec_option_default_store_filter', '0', 'yes'),
(465, 'ec_option_default_payment_type', 'manual_bill', 'yes'),
(466, 'ec_option_shipping_type', 'price', 'yes'),
(467, 'ec_option_express_shipping_price', '9.99', 'yes'),
(468, 'ec_option_reg_code', '', 'yes'),
(469, 'ec_option_order_from_email', 'youremail@url.com', 'yes'),
(470, 'ec_option_password_from_email', 'youremail@url.com', 'yes'),
(471, 'ec_option_bcc_email_addresses', 'youremail@url.com', 'yes'),
(472, 'ec_option_use_state_dropdown', '1', 'yes'),
(473, 'ec_option_use_country_dropdown', '1', 'yes'),
(474, 'ec_option_estimate_shipping_zip', '1', 'yes'),
(475, 'ec_option_estimate_shipping_country', '1', 'yes'),
(476, 'ec_option_stylesheettype', '1', 'yes'),
(477, 'ec_option_googleanalyticsid', 'UA-XXXXXXX-X', 'yes'),
(478, 'ec_option_use_rtl', '0', 'yes'),
(479, 'ec_option_allow_guest', '1', 'yes'),
(480, 'ec_option_use_shipping', '1', 'yes'),
(481, 'ec_option_hide_shipping_rate_page1', '0', 'yes'),
(482, 'ec_option_user_order_notes', '0', 'yes'),
(483, 'ec_option_terms_link', 'http://yoursite.com/termsandconditions', 'yes'),
(484, 'ec_option_privacy_link', 'http://yoursite.com/privacypolicy', 'yes'),
(485, 'ec_option_email_type', 'mail', 'yes'),
(486, 'ec_option_require_account_address', '0', 'yes'),
(487, 'ec_option_use_wp_mail', '0', 'yes'),
(488, 'ec_option_product_layout_type', 'grid_only', 'yes'),
(489, 'ec_option_show_featured_categories', '0', 'yes'),
(490, 'ec_option_product_filter_0', '1', 'yes'),
(491, 'ec_option_product_filter_1', '1', 'yes'),
(492, 'ec_option_product_filter_2', '1', 'yes'),
(493, 'ec_option_product_filter_3', '1', 'yes'),
(494, 'ec_option_product_filter_4', '1', 'yes'),
(495, 'ec_option_product_filter_5', '1', 'yes'),
(496, 'ec_option_product_filter_6', '1', 'yes'),
(497, 'ec_option_product_filter_7', '1', 'yes'),
(498, 'ec_option_show_giftcards', '1', 'yes'),
(499, 'ec_option_show_coupons', '1', 'yes'),
(500, 'ec_option_match_store_meta', '0', 'yes'),
(501, 'ec_option_use_old_linking_style', '1', 'yes'),
(502, 'ec_option_no_vat_on_shipping', '0', 'yes'),
(503, 'ec_option_display_as_catalog', '0', 'yes'),
(504, 'ec_option_addtocart_return_to_product', '0', 'yes'),
(505, 'ec_option_exchange_rates', 'EUR=.73,GBP=.6,JPY=101.9', 'yes'),
(506, 'ec_option_require_email_validation', '0', 'yes'),
(507, 'ec_option_display_country_top', '1', 'yes'),
(508, 'ec_option_use_address2', '1', 'yes'),
(509, 'ec_option_use_smart_states', '1', 'yes'),
(510, 'ec_option_show_account_subscriptions_link', '1', 'yes'),
(511, 'ec_option_gift_card_shipping_allowed', '1', 'yes'),
(512, 'ec_option_collect_shipping_for_subscriptions', '0', 'yes'),
(513, 'ec_option_skip_cart_login', '0', 'yes'),
(514, 'ec_option_use_contact_name', '1', 'yes'),
(515, 'ec_option_collect_user_phone', '1', 'yes'),
(516, 'ec_option_enable_company_name', '1', 'yes'),
(517, 'ec_option_skip_shipping_page', '0', 'yes'),
(518, 'ec_option_skip_reivew_screen', '0', 'yes'),
(519, 'ec_option_require_terms_agreement', '0', 'yes'),
(520, 'ec_option_show_menu_cart_icon', '0', 'yes'),
(521, 'ec_option_cart_menu_id', '0', 'yes'),
(522, 'ec_option_amazon_key', '', 'yes'),
(523, 'ec_option_amazon_secret', '', 'yes'),
(525, 'ec_option_amazon_bucket', '', 'yes'),
(527, 'ec_option_amazon_bucket_region', '', 'yes'),
(528, 'ec_option_deconetwork_url', '', 'yes'),
(530, 'ec_option_deconetwork_password', '', 'yes'),
(532, 'ec_option_tax_cloud_api_id', '', 'yes'),
(534, 'ec_option_tax_cloud_api_key', '', 'yes'),
(536, 'ec_option_tax_cloud_address', '', 'yes'),
(538, 'ec_option_tax_cloud_city', '', 'yes'),
(540, 'ec_option_tax_cloud_state', '', 'yes'),
(542, 'ec_option_tax_cloud_zip', '', 'yes'),
(544, 'ec_option_restrict_store', '0', 'yes'),
(546, 'ec_option_enable_user_notes', '0', 'yes'),
(548, 'ec_option_enable_newsletter_popup', '0', 'yes'),
(550, 'ec_option_use_estimate_shipping', '1', 'yes'),
(552, 'ec_option_use_custom_post_theme_template', '0', 'yes'),
(554, 'ec_option_show_email_on_receipt', '0', 'yes'),
(556, 'ec_option_show_breadcrumbs', '1', 'yes'),
(558, 'ec_option_show_model_number', '1', 'yes'),
(559, 'ec_option_show_categories', '1', 'yes'),
(561, 'ec_option_show_manufacturer', '1', 'yes'),
(562, 'ec_option_send_signup_email', '0', 'yes'),
(563, 'ec_option_show_magnification', '1', 'yes'),
(565, 'ec_option_show_large_popup', '1', 'yes'),
(567, 'ec_option_enable_product_paging', '1', 'yes'),
(569, 'ec_option_show_sort_box', '1', 'yes'),
(571, 'ec_option_customer_review_require_login', '0', 'yes'),
(573, 'ec_option_customer_review_show_user_name', '0', 'yes'),
(575, 'ec_option_no_rounded_corners', '0', 'yes'),
(577, 'ec_option_font_main', '0', 'yes'),
(579, 'ec_option_hide_live_editor', '0', 'yes'),
(581, 'ec_option_hide_price_seasonal', '0', 'yes'),
(583, 'ec_option_hide_price_inquiry', '0', 'yes'),
(585, 'ec_option_enable_easy_canada_tax', '0', 'yes'),
(587, 'ec_option_collect_alberta_tax', '1', 'yes'),
(589, 'ec_option_collect_british_columbia_tax', '1', 'yes'),
(591, 'ec_option_collect_manitoba_tax', '1', 'yes'),
(593, 'ec_option_collect_new_brunswick_tax', '1', 'yes'),
(595, 'ec_option_collect_newfoundland_tax', '1', 'yes'),
(597, 'ec_option_collect_northwest_territories_tax', '1', 'yes'),
(599, 'ec_option_collect_nova_scotia_tax', '1', 'yes'),
(601, 'ec_option_collect_nunavut_tax', '1', 'yes'),
(603, 'ec_option_collect_ontario_tax', '1', 'yes'),
(605, 'ec_option_collect_prince_edward_island_tax', '1', 'yes'),
(607, 'ec_option_collect_quebec_tax', '1', 'yes'),
(609, 'ec_option_collect_saskatchewan_tax', '1', 'yes'),
(611, 'ec_option_collect_yukon_tax', '1', 'yes'),
(613, 'ec_option_add_local_pickup', '0', 'yes'),
(615, 'ec_option_collect_tax_on_shipping', '0', 'yes'),
(617, 'ec_option_show_multiple_vat_pricing', '0', 'yes'),
(619, 'ec_option_hide_cart_icon_on_empty', '0', 'yes'),
(621, 'ec_option_canada_tax_options', '0', 'yes'),
(623, 'ec_option_deconetwork_allow_blank_products', '0', 'yes'),
(625, 'ec_option_ship_items_seperately', '0', 'yes'),
(627, 'ec_option_default_dynamic_sizing', '1', 'yes'),
(629, 'ec_option_subscription_one_only', '1', 'yes'),
(631, 'ec_option_enable_gateway_log', '1', 'yes'),
(633, 'ec_option_enable_metric_unit_display', '0', 'yes'),
(635, 'ec_option_use_live_search', '1', 'yes'),
(637, 'ec_option_search_title', '1', 'yes'),
(639, 'ec_option_search_model_number', '1', 'yes'),
(641, 'ec_option_search_manufacturer', '1', 'yes'),
(643, 'ec_option_search_description', '1', 'yes'),
(645, 'ec_option_search_short_description', '1', 'yes'),
(647, 'ec_option_search_menu', '1', 'yes'),
(649, 'ec_option_show_image_on_receipt', '1', 'yes'),
(651, 'ec_option_search_by_or', '1', 'yes'),
(653, 'ec_option_custom_third_party', 'Gateway Name', 'yes'),
(655, 'ec_option_show_card_holder_name', '1', 'yes'),
(657, 'ec_option_show_stock_quantity', '1', 'yes'),
(659, 'ec_option_send_low_stock_emails', '0', 'yes'),
(661, 'ec_option_send_out_of_stock_emails', '0', 'yes'),
(663, 'ec_option_low_stock_trigger_total', '5', 'yes'),
(665, 'ec_option_show_delivery_days_live_shipping', '1', 'yes'),
(667, 'ec_option_model_number_extension', '-', 'yes'),
(669, 'ec_option_collect_vat_registration_number', '0', 'yes'),
(671, 'ec_option_validate_vat_registration_number', '0', 'yes'),
(673, 'ec_option_vatlayer_api_key', '', 'yes'),
(675, 'ec_option_vat_custom_rate', '0', 'yes'),
(677, 'ec_option_fedex_use_net_charge', '1', 'yes'),
(679, 'ec_option_static_ship_items_seperately', '0', 'yes'),
(681, 'ec_option_google_adwords_conversion_id', '', 'yes'),
(683, 'ec_option_google_adwords_language', 'en', 'yes'),
(685, 'ec_option_google_adwords_format', '3', 'yes'),
(687, 'ec_option_google_adwords_color', 'ffffff', 'yes'),
(689, 'ec_option_google_adwords_label', '', 'yes'),
(691, 'ec_option_google_adwords_currency', 'USD', 'yes'),
(693, 'ec_option_google_adwords_remarketing_only', 'false', 'yes'),
(695, 'ec_option_default_country', '0', 'yes'),
(697, 'ec_option_show_subscriber_feature', '1', 'yes'),
(699, 'ec_option_require_account_terms', '0', 'yes'),
(701, 'ec_option_use_inquiry_form', '1', 'yes'),
(703, 'ec_option_order_use_smtp', '0', 'yes'),
(705, 'ec_option_order_from_smtp_host', '', 'yes'),
(707, 'ec_option_order_from_smtp_encryption_type', 'ssl', 'yes'),
(709, 'ec_option_order_from_smtp_port', '465', 'yes'),
(711, 'ec_option_order_from_smtp_username', '', 'yes'),
(713, 'ec_option_order_from_smtp_password', '', 'yes'),
(715, 'ec_option_password_use_smtp', '0', 'yes'),
(717, 'ec_option_password_from_smtp_host', '', 'yes'),
(719, 'ec_option_password_from_smtp_encryption_type', 'ssl', 'yes'),
(721, 'ec_option_password_from_smtp_port', '465', 'yes'),
(723, 'ec_option_password_from_smtp_username', '', 'yes'),
(725, 'ec_option_password_from_smtp_password', '', 'yes'),
(727, 'ec_option_minimum_order_total', '0.00', 'yes'),
(729, 'wpeasycart_abandoned_cart_automation', '0', 'yes'),
(731, 'ec_option_tiered_price_format', '1', 'yes'),
(733, 'ec_option_demo_data_installed', '0', 'yes'),
(735, 'ec_subscriptions_use_first_order_details', '0', 'yes'),
(737, 'ec_option_packing_slip_show_pricing', '1', 'yes'),
(739, 'ec_option_fb_pixel', '', 'yes'),
(741, 'ec_option_tiered_price_by_option', '0', 'yes'),
(743, 'ec_option_enable_recaptcha', '0', 'yes'),
(745, 'ec_option_recaptcha_site_key', '', 'yes'),
(747, 'ec_option_recaptcha_secret_key', '', 'yes'),
(749, 'ec_option_use_direct_deposit', '1', 'yes'),
(751, 'ec_option_direct_deposit_message', 'You have selected a manual payment method.', 'yes'),
(753, 'ec_option_use_affirm', '0', 'yes'),
(755, 'ec_option_affirm_public_key', '', 'yes'),
(757, 'ec_option_affirm_private_key', '', 'yes'),
(759, 'ec_option_affirm_financial_product', '', 'yes'),
(761, 'ec_option_affirm_sandbox_account', '0', 'yes'),
(763, 'ec_option_use_visa', '1', 'yes'),
(765, 'ec_option_use_delta', '0', 'yes'),
(767, 'ec_option_use_uke', '0', 'yes'),
(769, 'ec_option_use_discover', '1', 'yes'),
(771, 'ec_option_use_mastercard', '1', 'yes'),
(773, 'ec_option_use_mcdebit', '0', 'yes'),
(775, 'ec_option_use_amex', '1', 'yes'),
(776, 'ec_option_use_jcb', '0', 'yes'),
(778, 'ec_option_use_diners', '0', 'yes'),
(780, 'ec_option_use_laser', '0', 'yes'),
(782, 'ec_option_use_maestro', '0', 'yes'),
(784, 'ec_option_payment_process_method', '0', 'yes'),
(786, 'ec_option_payment_third_party', '0', 'yes'),
(788, 'ec_option_2checkout_thirdparty_sid', '', 'yes'),
(790, 'ec_option_2checkout_thirdparty_currency_code', 'USD', 'yes'),
(791, 'ec_option_2checkout_thirdparty_lang', 'en', 'yes'),
(793, 'ec_option_2checkout_thirdparty_purchase_step', 'payment-method', 'yes'),
(795, 'ec_option_2checkout_thirdparty_demo_mode', '0', 'yes'),
(797, 'ec_option_2checkout_thirdparty_sandbox_mode', '0', 'yes'),
(799, 'ec_option_2checkout_thirdparty_secret_word', '', 'yes'),
(801, 'ec_option_authorize_login_id', '', 'yes'),
(803, 'ec_option_authorize_trans_key', '', 'yes'),
(805, 'ec_option_authorize_test_mode', '0', 'yes'),
(807, 'ec_option_authorize_developer_account', '0', 'yes'),
(809, 'ec_option_authorize_use_legacy_url', '0', 'yes'),
(811, 'ec_option_authorize_currency_code', 'USD', 'yes'),
(813, 'ec_option_beanstream_merchant_id', '', 'yes'),
(815, 'ec_option_beanstream_api_passcode', '', 'yes'),
(817, 'ec_option_braintree_merchant_id', '', 'yes'),
(819, 'ec_option_braintree_merchant_account_id', '', 'yes'),
(821, 'ec_option_braintree_public_key', '', 'yes'),
(822, 'ec_option_braintree_private_key', '', 'yes'),
(824, 'ec_option_braintree_currency', 'USD', 'yes'),
(826, 'ec_option_braintree_environment', 'sandbox', 'yes'),
(828, 'ec_option_cardinal_processor_id', '', 'yes'),
(830, 'ec_option_cardinal_merchant_id', '', 'yes'),
(832, 'ec_option_cardinal_password', '', 'yes'),
(834, 'ec_option_cardinal_currency', '840,', 'yes'),
(836, 'ec_option_cardinal_test_mode', '0', 'yes'),
(838, 'ec_option_paypoint_merchant_id', '', 'yes'),
(840, 'ec_option_paypoint_vpn_password', '0', 'yes'),
(842, 'ec_option_paypoint_test_mode', '0', 'yes'),
(844, 'ec_option_chronopay_currency', '', 'yes'),
(846, 'ec_option_chronopay_product_id', '', 'yes'),
(848, 'ec_option_chronopay_shared_secret', '', 'yes'),
(850, 'ec_option_dwolla_thirdparty_key', '', 'yes'),
(852, 'ec_option_dwolla_thirdparty_secret', '', 'yes'),
(854, 'ec_option_dwolla_thirdparty_test_mode', '0', 'yes'),
(856, 'ec_option_dwolla_thirdparty_account_id', '812-xxx-xxxx', 'yes'),
(858, 'ec_option_versapay_id', '', 'yes'),
(860, 'ec_option_versapay_password', '', 'yes'),
(862, 'ec_option_versapay_language', 'en', 'yes'),
(864, 'ec_option_eway_use_rapid_pay', '0', 'yes'),
(866, 'ec_option_eway_customer_id', '', 'yes'),
(868, 'ec_option_eway_api_key', '', 'yes'),
(870, 'ec_option_eway_api_password', '', 'yes'),
(872, 'ec_option_eway_client_key', '', 'yes'),
(874, 'ec_option_eway_test_mode', '0', 'yes'),
(876, 'ec_option_eway_test_mode_success', '1', 'yes'),
(878, 'ec_option_firstdata_login_id', '', 'yes'),
(880, 'ec_option_firstdata_pem_file', '', 'yes'),
(882, 'ec_option_firstdata_host', 'secure.linkpt.net', 'yes'),
(883, 'ec_option_firstdata_port', '1129', 'yes'),
(885, 'ec_option_firstdata_test_mode', '0', 'yes'),
(887, 'ec_option_firstdata_use_ssl_cert', '0', 'yes'),
(889, 'ec_option_firstdatae4_exact_id', '', 'yes'),
(891, 'ec_option_firstdatae4_password', '', 'yes'),
(893, 'ec_option_firstdatae4_key_id', '', 'yes'),
(895, 'ec_option_firstdatae4_key', '', 'yes'),
(897, 'ec_option_firstdatae4_language', 'EN', 'yes'),
(899, 'ec_option_firstdatae4_currency', 'USD', 'yes'),
(901, 'ec_option_firstdatae4_test_mode', '0', 'yes'),
(903, 'ec_option_goemerchant_gateway_id', '', 'yes'),
(905, 'ec_option_goemerchant_processor_id', '', 'yes'),
(907, 'ec_option_goemerchant_trans_center_id', '', 'yes'),
(909, 'ec_option_intuit_oauth_version', '1', 'yes'),
(911, 'ec_option_intuit_app_token', '', 'yes'),
(913, 'ec_option_intuit_consumer_key', '', 'yes'),
(915, 'ec_option_intuit_consumer_secret', '', 'yes'),
(917, 'ec_option_intuit_currency', 'USD', 'yes'),
(919, 'ec_option_intuit_test_mode', '0', 'yes'),
(921, 'ec_option_intuit_realm_id', '', 'yes'),
(923, 'ec_option_intuit_access_token', '', 'yes'),
(925, 'ec_option_intuit_access_token_secret', '', 'yes'),
(927, 'ec_option_intuit_last_authorized', '0', 'yes'),
(929, 'ec_option_intuit_refresh_token', '', 'yes'),
(931, 'ec_option_nmi_3ds', '0', 'yes'),
(933, 'ec_option_nmi_api_key', '', 'yes'),
(935, 'ec_option_nmi_username', '', 'yes'),
(937, 'ec_option_nmi_password', '', 'yes'),
(939, 'ec_option_nmi_currency', 'USD', 'yes'),
(941, 'ec_option_nmi_processor_id', '', 'yes'),
(943, 'ec_option_nmi_ship_from_zip', '', 'yes'),
(945, 'ec_option_nmi_commodity_code', '', 'yes'),
(947, 'ec_option_nets_merchant_id', '', 'yes'),
(949, 'ec_option_nets_token', '', 'yes'),
(951, 'ec_option_nets_currency', 'USD', 'yes'),
(953, 'ec_option_nets_test_mode', '0', 'yes'),
(955, 'ec_option_migs_signature', '', 'yes'),
(957, 'ec_option_migs_access_code', '', 'yes'),
(959, 'ec_option_migs_merchant_id', '', 'yes'),
(961, 'ec_option_moneris_ca_store_id', '', 'yes'),
(963, 'ec_option_moneris_ca_api_token', '', 'yes'),
(965, 'ec_option_moneris_ca_test_mode', '0', 'yes'),
(967, 'ec_option_moneris_us_store_id', '', 'yes'),
(969, 'ec_option_moneris_us_api_token', '', 'yes'),
(971, 'ec_option_moneris_us_test_mode', '0', 'yes'),
(973, 'ec_option_payfast_merchant_id', '', 'yes'),
(975, 'ec_option_payfast_merchant_key', '', 'yes'),
(977, 'ec_option_payfast_passphrase', '', 'yes'),
(979, 'ec_option_payfast_sandbox', '0', 'yes'),
(981, 'ec_option_payfort_access_code', '', 'yes'),
(983, 'ec_option_payfort_merchant_id', '', 'yes'),
(985, 'ec_option_payfort_request_phrase', '', 'yes'),
(987, 'ec_option_payfort_response_phrase', '', 'yes'),
(989, 'ec_option_payfort_sha_type', 'sha256', 'yes'),
(991, 'ec_option_payfort_language', 'en', 'yes'),
(993, 'ec_option_payfort_currency_code', 'USD', 'yes'),
(995, 'ec_option_payfort_use_sadad', '0', 'yes'),
(997, 'ec_option_payfort_use_naps', '0', 'yes'),
(999, 'ec_option_payfort_sadad_olp', '', 'yes'),
(1001, 'ec_option_payfort_use_currency_service', '0', 'yes'),
(1003, 'ec_option_payfort_test_mode', '1', 'yes'),
(1005, 'ec_option_payline_username', '', 'yes'),
(1007, 'ec_option_payline_password', '', 'yes'),
(1009, 'ec_option_payline_currency', 'USD', 'yes'),
(1011, 'ec_option_payment_express_username', '', 'yes'),
(1013, 'ec_option_payment_express_password', '', 'yes'),
(1015, 'ec_option_payment_express_currency', 'NZD', 'yes'),
(1017, 'ec_option_payment_express_developer_account', '0', 'yes'),
(1019, 'ec_option_payment_express_thirdparty_username', '', 'yes'),
(1021, 'ec_option_payment_express_thirdparty_key', '', 'yes'),
(1023, 'ec_option_payment_express_thirdparty_currency', 'NZD', 'yes'),
(1025, 'ec_option_paypal_use_sandbox', '0', 'yes'),
(1027, 'ec_option_paypal_email', '', 'yes'),
(1029, 'ec_option_paypal_enable_pay_now', '0', 'yes'),
(1031, 'ec_option_paypal_enable_credit', '0', 'yes'),
(1033, 'ec_option_paypal_sandbox_merchant_id', '', 'yes'),
(1035, 'ec_option_paypal_sandbox_app_id', '', 'yes'),
(1037, 'ec_option_paypal_sandbox_secret', '', 'yes'),
(1039, 'ec_option_paypal_sandbox_access_token', '', 'yes'),
(1041, 'ec_option_paypal_sandbox_access_token_expires', '0', 'yes'),
(1043, 'ec_option_paypal_sandbox_webhook_id', '', 'yes'),
(1045, 'ec_option_paypal_production_merchant_id', '', 'yes'),
(1047, 'ec_option_paypal_production_app_id', '', 'yes'),
(1048, 'ec_option_paypal_production_secret', '', 'yes'),
(1050, 'ec_option_paypal_production_access_token', '', 'yes'),
(1052, 'ec_option_paypal_production_access_token_expires', '0', 'yes'),
(1054, 'ec_option_paypal_production_webhook_id', '', 'yes'),
(1056, 'ec_option_paypal_marketing_solution_cid_sandbox', '', 'yes'),
(1058, 'ec_option_paypal_marketing_solution_cid_production', '', 'yes'),
(1060, 'ec_option_paypal_currency_code', 'USD', 'yes'),
(1062, 'ec_option_paypal_use_selected_currency', '0', 'yes'),
(1064, 'ec_option_paypal_charset', 'UTF-8', 'yes'),
(1066, 'ec_option_paypal_lc', 'en', 'yes'),
(1068, 'ec_option_paypal_weight_unit', 'lbs', 'yes'),
(1070, 'ec_option_paypal_collect_shipping', '0', 'yes'),
(1072, 'ec_option_paypal_send_shipping_address', '0', 'yes'),
(1074, 'ec_option_paypal_button_color', 'gold', 'yes'),
(1076, 'ec_option_paypal_button_shape', 'rect', 'yes'),
(1078, 'ec_option_paypal_express_page1_checkout', '1', 'yes'),
(1080, 'ec_option_paypal_advanced_test_mode', '0', 'yes'),
(1082, 'ec_option_paypal_advanced_vendor', '', 'yes'),
(1083, 'ec_option_paypal_advanced_partner', '', 'yes'),
(1085, 'ec_option_paypal_advanced_user', '', 'yes'),
(1087, 'ec_option_paypal_advanced_password', '', 'yes'),
(1089, 'ec_option_paypal_pro_test_mode', '0', 'yes'),
(1091, 'ec_option_paypal_pro_vendor', '', 'yes'),
(1093, 'ec_option_paypal_pro_partner', '', 'yes'),
(1095, 'ec_option_paypal_pro_user', '', 'yes'),
(1097, 'ec_option_paypal_pro_password', '', 'yes'),
(1099, 'ec_option_paypal_pro_currency', 'USD', 'yes'),
(1101, 'ec_option_paypal_payments_pro_test_mode', '0', 'yes'),
(1103, 'ec_option_paypal_payments_pro_user', '', 'yes'),
(1105, 'ec_option_paypal_payments_pro_password', '', 'yes'),
(1107, 'ec_option_paypal_payments_pro_signature', '', 'yes'),
(1109, 'ec_option_paypal_payments_pro_currency', 'USD', 'yes'),
(1111, 'ec_option_skrill_merchant_id', '', 'yes'),
(1113, 'ec_option_skrill_company_name', '', 'yes'),
(1115, 'ec_option_skrill_email', '', 'yes'),
(1117, 'ec_option_skrill_language', 'EN', 'yes'),
(1119, 'ec_option_realex_thirdparty_type', 'legacy', 'yes'),
(1121, 'ec_option_realex_thirdparty_merchant_id', '', 'yes'),
(1123, 'ec_option_realex_thirdparty_secret', '', 'yes'),
(1125, 'ec_option_realex_thirdparty_account', 'redirect', 'yes'),
(1127, 'ec_option_realex_thirdparty_currency', 'GBP', 'yes'),
(1129, 'ec_option_realex_merchant_id', '', 'yes'),
(1131, 'ec_option_realex_secret', '', 'yes'),
(1133, 'ec_option_realex_currency', 'GBP', 'yes'),
(1135, 'ec_option_realex_3dsecure', '0', 'yes'),
(1137, 'ec_option_realex_test_mode', '0', 'yes'),
(1139, 'ec_option_redsys_merchant_code', '', 'yes'),
(1141, 'ec_option_redsys_terminal', '', 'yes'),
(1143, 'ec_option_redsys_currency', '978', 'yes'),
(1145, 'ec_option_redsys_key', '', 'yes'),
(1147, 'ec_option_redsys_test_mode', '0', 'yes'),
(1149, 'ec_option_sagepay_vendor', '', 'yes'),
(1151, 'ec_option_sagepay_currency', 'USD', 'yes'),
(1153, 'ec_option_sagepay_simulator', '0', 'yes'),
(1155, 'ec_option_sagepay_testmode', '0', 'yes'),
(1157, 'ec_option_sagepayus_mid', '999999999997', 'yes'),
(1159, 'ec_option_sagepayus_mkey', 'A1B2C3D4E5F6', 'yes'),
(1161, 'ec_option_sagepayus_application_id', 'SAGETEST1', 'yes'),
(1163, 'ec_option_sagepay_paynow_za_service_key', '', 'yes'),
(1165, 'ec_option_securenet_id', '', 'yes'),
(1167, 'ec_option_securenet_secure_key', '', 'yes'),
(1169, 'ec_option_securenet_use_sandbox', '0', 'yes'),
(1171, 'ec_option_securepay_merchant_id', '', 'yes'),
(1173, 'ec_option_securepay_password', '', 'yes'),
(1175, 'ec_option_securepay_currency', 'AUD', 'yes'),
(1177, 'ec_option_securepay_test_mode', '0', 'yes'),
(1179, 'ec_option_skrill_currency_code', 'USD', 'yes'),
(1181, 'ec_option_square_access_token', '', 'yes'),
(1183, 'ec_option_square_token_expires', '', 'yes'),
(1185, 'ec_option_square_application_id', '', 'yes'),
(1187, 'ec_option_square_location_id', '0', 'yes'),
(1189, 'ec_option_square_currency', 'USD', 'yes'),
(1191, 'ec_option_psigate_store_id', 'teststore', 'yes'),
(1193, 'ec_option_psigate_passphrase', 'psigate1234', 'yes'),
(1195, 'ec_option_psigate_test_mode', '1', 'yes'),
(1197, 'ec_option_use_proxy', '0', 'yes'),
(1199, 'ec_option_proxy_address', '0', 'yes'),
(1201, 'ec_option_stripe_api_key', '', 'yes'),
(1203, 'ec_option_stripe_public_api_key', '', 'yes'),
(1205, 'ec_option_stripe_currency', 'USD', 'yes'),
(1207, 'ec_option_stripe_enable_ideal', '0', 'yes'),
(1209, 'ec_option_stripe_order_create_customer', '0', 'yes'),
(1211, 'ec_option_stripe_connect_use_sandbox', '0', 'yes'),
(1213, 'ec_option_stripe_connect_sandbox_access_token', '', 'yes'),
(1215, 'ec_option_stripe_connect_sandbox_refresh_token', '', 'yes'),
(1217, 'ec_option_stripe_connect_sandbox_publishable_key', '', 'yes'),
(1219, 'ec_option_stripe_connect_sandbox_user_id', '', 'yes'),
(1221, 'ec_option_stripe_connect_production_access_token', '', 'yes'),
(1223, 'ec_option_stripe_connect_production_refresh_token', '', 'yes'),
(1225, 'ec_option_stripe_connect_production_publishable_key', '', 'yes'),
(1227, 'ec_option_stripe_connect_production_user_id', '', 'yes'),
(1229, 'ec_option_virtualmerchant_ssl_merchant_id', '', 'yes'),
(1231, 'ec_option_virtualmerchant_ssl_user_id', '', 'yes'),
(1233, 'ec_option_virtualmerchant_ssl_pin', '', 'yes'),
(1235, 'ec_option_virtualmerchant_currency', 'USD', 'yes'),
(1237, 'ec_option_virtualmerchant_demo_account', '0', 'yes'),
(1239, 'ec_option_dhl_account_number', '', 'yes'),
(1241, 'ec_option_language', 'en-us', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1243, 'ec_option_language_data', '{\"en-us\":{\"label\":\"US English\",\"options\":{\"sort_bar\":{\"label\":\"Product Page Sort Menu\",\"options\":{\"sort_by_price_low\":{\"title\":\"Product Page Sort Box Item 1\",\"value\":\"Price Low-High\"},\"sort_by_price_high\":{\"title\":\"Product Page Sort Box Item 2\",\"value\":\"Price High-Low\"},\"sort_by_title_a\":{\"title\":\"Product Page Sort Box Item 3\",\"value\":\"Title A-Z\"},\"sort_by_title_z\":{\"title\":\"Product Page Sort Box Item 4\",\"value\":\"Title Z-A\"},\"sort_by_newest\":{\"title\":\"Product Page Sort Box Item 5\",\"value\":\"Newest\"},\"sort_by_rating\":{\"title\":\"Product Page Sort Box Item 6\",\"value\":\"Best Rating\"},\"sort_by_most_viewed\":{\"title\":\"Product Page Sort Box Item 7\",\"value\":\"Most Viewed\"},\"sort_default\":{\"title\":\"Product Page Sort Box Default\",\"value\":\"Default Sorting\"}}},\"product_page\":{\"label\":\"Product Page\",\"options\":{\"product_quick_view\":{\"title\":\"Product Quick View Label\",\"value\":\"Quickview\"},\"product_design_now\":{\"title\":\"Product Design Now Label\",\"value\":\"DESIGN NOW\"},\"product_no_results\":{\"title\":\"Product Page No Results\",\"value\":\"No Results Found\"},\"product_items_per_page\":{\"title\":\"Product Page Items per Page\",\"value\":\"Items Per Page:\"},\"product_paging_page\":{\"title\":\"Product Page Page in Page a of b\",\"value\":\"Page\"},\"product_paging_of\":{\"title\":\"Product Page of in Page a of b\",\"value\":\"of\"},\"product_showing\":{\"title\":\"Product Page Num Results Showing\",\"value\":\"Showing\"},\"product_all\":{\"title\":\"Product Page Num Results all\",\"value\":\"all\"},\"product_results\":{\"title\":\"Product Page Num Results\",\"value\":\"Results\"},\"product_view_cart\":{\"title\":\"Product Page View Cart\",\"value\":\"View Cart\"},\"product_product_added_note\":{\"title\":\"Product Page Added to Cart Note\",\"value\":\"Product successfully added to your cart.\"},\"product_product_view_per_page\":{\"title\":\"Product Page View in Per Page\",\"value\":\"View\"},\"product_page_restricted_line_1\":{\"title\":\"Restricted Product Line 1\",\"value\":\"OPEN ACCESS IS NOT ALLOWED FOR THE STORE\"},\"product_page_restricted_line_2\":{\"title\":\"Restricted Product Line 2 Prior to Link\",\"value\":\"Please log in or create an account by\"},\"product_page_restricted_link_text\":{\"title\":\"Restricted Product Link Text\",\"value\":\"clicking here\"},\"product_page_restricted_line_3\":{\"title\":\"Restricted Product Line 2 Post Link\",\"value\":\". Your account may need to be verified before you will be able to access the store.\"},\"product_page_start_trial_1\":{\"title\":\"Start Your Trial Text Part 1\",\"value\":\"Start Your\"},\"product_page_start_trial_2\":{\"title\":\"Start Your Trial Text Part 2\",\"value\":\"Day Free Trial Today!\"},\"product_inc_vat_text\":{\"title\":\"Including VAT Text\",\"value\":\"inc VAT\"},\"product_excluding_vat_text\":{\"title\":\"Excluding VAT Text\",\"value\":\"excluding VAT\"}}},\"quick_view\":{\"label\":\"Quick View Panel\",\"options\":{\"quick_view_gift_card_message\":{\"title\":\"Gift Card Message Title\",\"value\":\"SPECIAL MESSAGE\"},\"quick_view_gift_card_to_name\":{\"title\":\"Gift Card To Name Title\",\"value\":\"TO\"},\"quick_view_gift_card_from_name\":{\"title\":\"Gift Card From Name Title\",\"value\":\"FROM\"},\"quick_view_quantity\":{\"title\":\"Quantity Title\",\"value\":\"QUANTITY\"},\"quick_view_remaining\":{\"title\":\"label in x items remaining\",\"value\":\"remaining\"},\"quick_view_add_to_cart\":{\"title\":\"Add to Cart Button\",\"value\":\"ADD TO CART\"},\"quick_view_select_options\":{\"title\":\"Product details missing options error text\",\"value\":\"Please select all options for this product.\"},\"quick_view_view_full_details\":{\"title\":\"Link Text View Full Product Details\",\"value\":\"View Full Product Details\"}}},\"product_details\":{\"label\":\"Product Details Page\",\"options\":{\"product_details_donation_label\":{\"title\":\"Your Donation Label\",\"value\":\"Your Donation: \"},\"product_details_minimum_donation\":{\"title\":\"Your Donation Minimum Label\",\"value\":\"minimum donation:\"},\"product_details_gift_card_message\":{\"title\":\"Store Gift Card Message\",\"value\":\"Include a Message\"},\"product_details_gift_card_to_name\":{\"title\":\"Gift Card To Name Title\",\"value\":\"TO\"},\"product_details_gift_card_from_name\":{\"title\":\"Gift Card From Name Title\",\"value\":\"FROM\"},\"product_details_quantity\":{\"title\":\"Quantity Label\",\"value\":\"Quantity\"},\"product_details_remaining\":{\"title\":\"x remaining\",\"value\":\"remaining\"},\"product_details_x_of_y\":{\"title\":\"page text divider\",\"value\":\"of\"},\"product_details_model_number\":{\"title\":\"model number text\",\"value\":\"model number\"},\"product_details_reduced_price\":{\"title\":\"reduced price text\",\"value\":\"REDUCED PRICE YOU SAVE\"},\"product_details_description\":{\"title\":\"Description Title\",\"value\":\"Description\"},\"product_details_customer_reviews\":{\"title\":\"Customer Reviews Title\",\"value\":\"Customer Reviews\"},\"product_details_specifications\":{\"title\":\"Specifications Title\",\"value\":\"Specifications\"},\"product_details_customer_rating\":{\"title\":\"Customer Rating\",\"value\":\"Overall Customer Rating\"},\"product_details_review_based_on\":{\"title\":\"Review Based ON\",\"value\":\"based on \"},\"product_details_review\":{\"title\":\"Review\",\"value\":\"review\"},\"product_details_review_no_reviews\":{\"title\":\"Product Details, Customer Reviews, No Reviews\",\"value\":\"There are no reviews yet, submit yours in the box provided.\"},\"product_details_add_to_cart\":{\"title\":\"Add to Cart button text\",\"value\":\"ADD TO CART\"},\"product_details_added_to_cart\":{\"title\":\"Checkout Now button text\",\"value\":\"CHECKOUT NOW\"},\"product_details_select_options\":{\"title\":\"Select Options Button\",\"value\":\"Select Options\"},\"product_details_out_of_stock\":{\"title\":\"Out of Stock Text\",\"value\":\"OUT OF STOCK\"},\"product_details_sign_up_now\":{\"title\":\"Sign Up Now Text\",\"value\":\"SIGN UP NOW\"},\"product_details_inquiry_title\":{\"title\":\"Inquiry Title\",\"value\":\"Submit Product Inquiry\"},\"product_details_inquiry_error\":{\"title\":\"Inquiry Error Text\",\"value\":\"Please fill out all required fields\"},\"product_details_inquiry_name\":{\"title\":\"Inquiry Name\",\"value\":\"*Your Name:\"},\"product_details_inquiry_email\":{\"title\":\"Inquiry Email\",\"value\":\"*Your Email:\"},\"product_details_inquiry_message\":{\"title\":\"Inquire Button Text\",\"value\":\"*Your Message:\"},\"product_details_inquire\":{\"title\":\"Inquire Button Text\",\"value\":\"SUBMIT INQUIRY\"},\"product_details_inquiry_send_copy\":{\"title\":\"Inquiry - Send Copy\",\"value\":\"Please send me a copy\"},\"product_details_inquiry_thank_you\":{\"title\":\"Inquiry Thank You Note\",\"value\":\"Thank you for submitting a product inquiry and we will get back to you as soon as possible.\"},\"product_details_minimum_quantity_text1\":{\"title\":\"Min Purchase Amount Text Part 1\",\"value\":\"Minimum purchase amount of\"},\"product_details_minimum_quantity_text2\":{\"title\":\"Min Purchase Amount Text Part 2\",\"value\":\"is required\"},\"product_details_maximum_quantity_text1\":{\"title\":\"Max Purchase Amount Text Part 1\",\"value\":\"Maximum purchase amount of\"},\"product_details_maximum_quantity_text2\":{\"title\":\"Max Purchase Amount Text Part 2\",\"value\":\"is allowed\"},\"product_details_handling_fee_notice1\":{\"title\":\"One Time Handling Fee Part 1\",\"value\":\"*A one-time handling fee of\"},\"product_details_handling_fee_notice2\":{\"title\":\"One Time Handling Fee Part 2\",\"value\":\"will be added to your shipping total at checkout.\"},\"product_details_handling_fee_each_notice1\":{\"title\":\"Handling Fee Each Part 1\",\"value\":\"*A handling fee of\"},\"product_details_handling_fee_each_notice2\":{\"title\":\"Handling Fee Each Part 2\",\"value\":\"per item will be added to your shipping total at checkout.\"},\"product_details_signup_fee_notice1\":{\"title\":\"One Time Sign-up Fee Part 1\",\"value\":\"*A one-time sign-up fee of\"},\"product_details_signup_fee_notice2\":{\"title\":\"One Time Sign-up Fee Part 2\",\"value\":\"will be added to your first payment total.\"},\"product_details_home_link\":{\"title\":\"Home Breadcrumbs Link\",\"value\":\"Home\"},\"product_details_store_link\":{\"title\":\"Store Breadcrumbs Link\",\"value\":\"Shop\"},\"product_details_reviews_text\":{\"title\":\"Store Reviews Count\",\"value\":\"Reviews\"},\"product_details_gift_card_recipient_name\":{\"title\":\"Store Gift Card To Name\",\"value\":\"Recipient\'s Name\"},\"product_details_gift_card_recipient_email\":{\"title\":\"Store Gift Card To Email\",\"value\":\"Recipient\'s Email\"},\"product_details_gift_card_sender_name\":{\"title\":\"Store Gift Card Sender\'s Name\",\"value\":\"Sender\'s Name\"},\"product_details_donation_amount\":{\"title\":\"Store Donation Amount\",\"value\":\"Donation Amount\"},\"product_details_loading_options\":{\"title\":\"Store Loading Options\",\"value\":\"Loading Available Options\"},\"product_details_missing_option\":{\"title\":\"Store Missing Option\",\"value\":\"Missing Option:\"},\"product_details_maximum_quantity\":{\"title\":\"Store Maximum Quantity Exceeded\",\"value\":\"Maximum quantity exceeded\"},\"product_details_one_time_addition1\":{\"title\":\"Store One Time Addition 1\",\"value\":\"A one-time price of\"},\"product_details_one_time_addition2\":{\"title\":\"Store One Time Addition 2\",\"value\":\"will be added to your order.\"},\"product_details_left_in_stock\":{\"title\":\"Store Left in Stock\",\"value\":\"Left in Stock\"},\"product_details_categories\":{\"title\":\"Store Categories\",\"value\":\"Categories:\"},\"product_details_manufacturer\":{\"title\":\"Store Manufacturer\",\"value\":\"Manufacturer:\"},\"product_details_related_products\":{\"title\":\"Store Related Products\",\"value\":\"Related Products\"},\"product_details_tier_buy\":{\"title\":\"Tiered Pricing buy x at y\",\"value\":\"Buy\"},\"product_details_tier_buy_at\":{\"title\":\"Tiered Pricing buy x at y\",\"value\":\"at\"},\"product_details_tier_or_more\":{\"title\":\"Tiered Pricing buy x or more\",\"value\":\"or more\"},\"product_details_tier_each\":{\"title\":\"Tiered Pricing buy x at y each\",\"value\":\"each\"},\"product_details_gift_card_error\":{\"title\":\"Gift Card Option Error Text\",\"value\":\"Missing Gift Card Options\"},\"product_details_donation_error\":{\"title\":\"Donation Amount Error Text\",\"value\":\"Invalid donation amount entered. Please enter a minimum value of\"},\"product_details_your_price\":{\"title\":\"Your Price:\",\"value\":\"Your Price:\"},\"product_details_backorder_until\":{\"title\":\"Backorder UNTIL date, until\",\"value\":\"until\"},\"product_details_backordered\":{\"title\":\"BACKORDERED until date\",\"value\":\"Backordered\"},\"product_details_some_backordered\":{\"title\":\"Some BACKORDERED\",\"value\":\"Some items are backordered, only\"},\"product_details_some_backordered_remaining\":{\"title\":\"Some BACKORDERED remaining\",\"value\":\"remaining.\"},\"product_details_backordered_message\":{\"title\":\"Backordered message in cart\",\"value\":\"Some items in your cart are currently out of stock and on backorder.\"},\"product_details_vat_included\":{\"title\":\"Including VAT\",\"value\":\"Including\"},\"product_details_vat_excluded\":{\"title\":\"Excluding VAT\",\"value\":\"Excluding\"},\"product_details_backorder_button\":{\"title\":\"Backorder Button\",\"value\":\"BACKORDER NOW\"},\"product_details_reviews_for_text\":{\"title\":\"Reviews for\",\"value\":\"Reviews for\"},\"product_details_as_low_as\":{\"title\":\"As low as\",\"value\":\"As low as\"},\"product_details_subscription_day\":{\"title\":\"Subscription Day Label\",\"value\":\"day\"},\"product_details_subscription_week\":{\"title\":\"Subscription Week Label\",\"value\":\"week\"},\"product_details_subscription_month\":{\"title\":\"Subscription Month Label Short\",\"value\":\"mo\"},\"product_details_subscription_month_full\":{\"title\":\"Subscription Month Label Full\",\"value\":\"months\"},\"product_details_subscription_duration_divider\":{\"title\":\"Subscription duration limit dividing word\",\"value\":\"for\"},\"product_details_subscription_year\":{\"title\":\"Subscription Year Label\",\"value\":\"year\"}}},\"customer_review\":{\"label\":\"Customer Review Panel\",\"options\":{\"customer_review_title\":{\"title\":\"Product Details Rating Box Title\",\"value\":\"Write a Review\"},\"customer_review_choose_rating\":{\"title\":\"Product Details Rating Box Choose Rating\",\"value\":\"choose a rating\"},\"customer_review_enter_title\":{\"title\":\"Product Details Rating Box Choose Title\",\"value\":\"enter a review title\"},\"customer_review_enter_description\":{\"title\":\"Product Details Rating Box Choose Description\",\"value\":\"enter a review description\"},\"customer_review_select_option\":{\"title\":\"Product Details Default Select Option Text\",\"value\":\"select an option\"},\"customer_review_close_button\":{\"title\":\"Product Details Rating Box Close Button\",\"value\":\"Close\"},\"customer_review_submit_button\":{\"title\":\"Product Details Rating Box Submit Button\",\"value\":\"Submit Review\"},\"product_details_write_a_review\":{\"title\":\"Product Details Write a Review Button\",\"value\":\"Write a Review\"},\"product_details_add_a_review_for\":{\"title\":\"Store Add a Review\",\"value\":\"Add a review for\"},\"product_details_your_review_title\":{\"title\":\"Store Review title\",\"value\":\"Your Review Title\"},\"product_details_your_review_rating\":{\"title\":\"Store Review Rating\",\"value\":\"Your Rating\"},\"product_details_your_review_message\":{\"title\":\"Store Review Message\",\"value\":\"Your Review\"},\"product_details_your_review_submit\":{\"title\":\"Store Review Submit\",\"value\":\"SUBMIT\"},\"product_details_review_submitted_button\":{\"title\":\"Product Details Review Submitted Button\",\"value\":\"REVIEW SUBMITTED\"},\"product_details_submitting_review\":{\"title\":\"Store Submitting Review\",\"value\":\"Submitting Your Review, Please Wait\"},\"product_details_review_submitted\":{\"title\":\"Store Review Submitted\",\"value\":\"Your Review Has Been Submitted Successfully\"},\"product_details_review_log_in_first\":{\"title\":\"Log in to Review\",\"value\":\"Please sign in or create an account to submit a review for this product.\"},\"product_details_review_anonymous_reviewer\":{\"title\":\"Anonymous Reviewer Name\",\"value\":\"Anonymous\"},\"review_error\":{\"title\":\"Store Review Error Missing Data\",\"value\":\"You must include a title, rating, and message in your review.\"}}},\"cart\":{\"label\":\"Cart\",\"options\":{\"cart_title\":{\"title\":\"Checkout Cart Title\",\"value\":\"SHOPPING CART\"},\"cart_checkout_details_title\":{\"title\":\"Checkout Details Title\",\"value\":\"CHECKOUT DETAILS\"},\"cart_submit_payment_title\":{\"title\":\"Submit Payment Title\",\"value\":\"SUBMIT PAYMENT\"},\"your_cart_title\":{\"title\":\"Your Cart Title\",\"value\":\"YOUR CART\"},\"cart_empty_cart\":{\"title\":\"Checkout, Empty Cart Message\",\"value\":\"There are no items in your cart.\"},\"cart_checkout\":{\"title\":\"Checkout Page, Checkout Button\",\"value\":\"Checkout\"},\"cart_continue_shopping\":{\"title\":\"Checkout Page, Continue Shopping Link\",\"value\":\"Continue Shopping\"},\"cart_header_column1\":{\"title\":\"Cart Header, Column 1\",\"value\":\"Product\"},\"cart_header_column2\":{\"title\":\"Cart Header, Column 2\",\"value\":\"Details\"},\"cart_header_column3\":{\"title\":\"Cart Header, Column 3\",\"value\":\"Price\"},\"cart_header_column4\":{\"title\":\"Cart Header, Column 4\",\"value\":\"Quantity\"},\"cart_header_column5\":{\"title\":\"Cart Header, Column 5\",\"value\":\"Total\"},\"cart_header_column6\":{\"title\":\"Cart Header, Column 6\",\"value\":\"Actions\"},\"cart_item_vat_text\":{\"title\":\"Cart Item, Included Vat\",\"value\":\"VAT @\"},\"cart_item_update_button\":{\"title\":\"Cart Item, Update Button\",\"value\":\"UPDATE\"},\"cart_item_remove_button\":{\"title\":\"Cart Item, Remove Button\",\"value\":\"REMOVE\"},\"cart_item_adjustment\":{\"title\":\"Cart Item, Adjustment per Item\",\"value\":\"per item\"},\"cart_item_new_price_option\":{\"title\":\"Cart Item, Price Override Text\",\"value\":\"Item Price of\"},\"cart_menu_icon_label\":{\"title\":\"Cart in Menu, Item\",\"value\":\"Item\"},\"cart_menu_icon_label_plural\":{\"title\":\"Cart in Menu, Items\",\"value\":\"Items\"},\"deconetwork_edit\":{\"title\":\"Deconetwork, Edit Design\",\"value\":\"Edit Design\"},\"cart_order_adjustment\":{\"title\":\"Cart Item, Adjustment per Order\",\"value\":\"per order\"},\"cart_return_to_store\":{\"title\":\"Empty Cart, Return to store\",\"value\":\"RETURN TO STORE\"},\"cartitem_max_error\":{\"title\":\"Max Quantity Exceeded Error\",\"value\":\"Maximum Quantity Exceeded\"},\"cartitem_min_error\":{\"title\":\"Min Quantity Required Error\",\"value\":\"Minimum Quantity Required\"},\"cart_please_wait\":{\"title\":\"Cart Please Wait\",\"value\":\"Please Wait\"},\"cart_item_adjustment_per_character\":{\"title\":\"Cart Per Character Adjustment\",\"value\":\"Per Character\"},\"cart_minimum_purchase_amount1\":{\"title\":\"A Minimum Order Amount of\",\"value\":\"A Minimum Order Amount of\"},\"cart_minimum_purchase_amount2\":{\"title\":\"Min Required Text 2\",\"value\":\"is Required\"}}},\"cart_form_notices\":{\"label\":\"Cart - Form Error Notices\",\"options\":{\"cart_notice_is_required\":{\"title\":\"Cart, Notice, Is Required Field\",\"value\":\"is a required field\"},\"cart_notice_item_must_match\":{\"title\":\"Cart, Notice, Items Must Match\",\"value\":\"must match\"},\"cart_notice_billing_first_name\":{\"title\":\"Cart, Notice, Billing, First Name\",\"value\":\"Billing First Name\"},\"cart_notice_billing_last_name\":{\"title\":\"Cart, Notice, Billing, Last Name\",\"value\":\"Billing Last Name\"},\"cart_notice_billing_address\":{\"title\":\"Cart, Notice, Billing, Address\",\"value\":\"Billing Address\"},\"cart_notice_billing_city\":{\"title\":\"Cart, Notice, Billing, City\",\"value\":\"Billing City\"},\"cart_notice_billing_state\":{\"title\":\"Cart, Notice, Billing, State\",\"value\":\"Billing State\"},\"cart_notice_billing_zip_code\":{\"title\":\"Cart, Notice, Billing, Zip Code\",\"value\":\"Billing Zip Code\"},\"cart_notice_billing_country\":{\"title\":\"Cart, Notice, Billing, Country\",\"value\":\"Billing Country\"},\"cart_notice_billing_phone\":{\"title\":\"Cart, Notice, Billing, Phone\",\"value\":\"Billing Phone\"},\"cart_notice_shipping_first_name\":{\"title\":\"Cart, Notice, Shipping, First Name\",\"value\":\"Shipping First Name\"},\"cart_notice_shipping_last_name\":{\"title\":\"Cart, Notice, Shipping, Last Name\",\"value\":\"Shipping Last Name\"},\"cart_notice_shipping_address\":{\"title\":\"Cart, Notice, Shipping, Address\",\"value\":\"Shipping Address\"},\"cart_notice_shipping_city\":{\"title\":\"Cart, Notice, Shipping, City\",\"value\":\"Shipping City\"},\"cart_notice_shipping_state\":{\"title\":\"Cart, Notice, Shipping, State\",\"value\":\"Shipping State\"},\"cart_notice_shipping_zip_code\":{\"title\":\"Cart, Notice, Shipping, Zip Code\",\"value\":\"Shipping Zip Code\"},\"cart_notice_shipping_country\":{\"title\":\"Cart, Notice, Shipping, Country\",\"value\":\"Shipping Country\"},\"cart_notice_shipping_phone\":{\"title\":\"Cart, Notice, Shipping, Phone\",\"value\":\"Shipping Phone\"},\"cart_notice_contact_first_name\":{\"title\":\"Cart, Notice, Contact First Name\",\"value\":\"Contact First Name\"},\"cart_notice_contact_last_name\":{\"title\":\"Cart, Notice, Contact Last Name\",\"value\":\"Contact Last Name\"},\"cart_notice_email\":{\"title\":\"Cart, Notice, Email\",\"value\":\"Email\"},\"cart_notice_retype_email\":{\"title\":\"Cart, Notice, Retype Email\",\"value\":\"Retype Email\"},\"cart_notice_emails_match\":{\"title\":\"Cart, Notice, Emails Match\",\"value\":\"Emails\"},\"cart_notice_password\":{\"title\":\"Cart, Notice, Password\",\"value\":\"Password\"},\"cart_notice_retype_password\":{\"title\":\"Cart, Notice, Retype Password\",\"value\":\"Retype Password\"},\"cart_notice_passwords_match\":{\"title\":\"Cart, Notice, Passwords Match\",\"value\":\"Passwords\"},\"cart_notice_length_error\":{\"title\":\"Cart, Notice, Password Format\",\"value\":\"Please enter a password of at least 6 characters\"},\"cart_notice_payment_card_type\":{\"title\":\"Cart, Notice, Card Type\",\"value\":\"Card Type\"},\"cart_notice_payment_card_holder_name\":{\"title\":\"Cart, Notice, Card Holder Required\",\"value\":\"Card Holder Name\"},\"cart_notice_payment_card_number\":{\"title\":\"Cart, Notice, Card Number Required\",\"value\":\"Card Number\"},\"cart_notice_payment_card_number_error\":{\"title\":\"Cart, Notice, Card Number Required\",\"value\":\"The credit card number entered is invalid\"},\"cart_notice_payment_card_exp_month\":{\"title\":\"Cart, Notice, EXP Month Required\",\"value\":\"Expiration Month\"},\"cart_notice_payment_card_exp_year\":{\"title\":\"Cart, Notice, EXP Year Required\",\"value\":\"Expiration Year\"},\"cart_notice_payment_card_code\":{\"title\":\"Cart, Notice, Security Code Required\",\"value\":\"Security Code\"},\"cart_notice_please_enter_your\":{\"title\":\"Cart, Notice, Please Enter Your\",\"value\":\"Please enter your\"},\"cart_notice_please_select_your\":{\"title\":\"Cart, Notice, Please Select Your\",\"value\":\"Please select your\"},\"cart_notice_please_enter_valid\":{\"title\":\"Cart, Notice, Please Enter Valid\",\"value\":\"Please enter a valid\"},\"cart_notice_emails_do_not_match\":{\"title\":\"Cart, Notice, Email Do Not Match\",\"value\":\"Your email addresses do not match\"},\"cart_notice_passwords_do_not_match\":{\"title\":\"Cart, Notice, Passwords Do Not Match\",\"value\":\"Your passwords do not match\"},\"cart_notice_checkout_details_errors\":{\"title\":\"Cart, Notice, Checkout Details Errors\",\"value\":\"Please correct the errors in your checkout details\"},\"cart_notice_payment_accept_terms\":{\"title\":\"Cart, Notice, Please Accept Terms\",\"value\":\"Please agree to the terms and conditions\"},\"cart_notice_payment_correct_errors\":{\"title\":\"Cart, Notice, Payment Correct Errors\",\"value\":\"Please correct the errors to your checkout information above\"}}},\"cart_process\":{\"label\":\"Cart - Progress Bar\",\"options\":{\"cart_process_cart_link\":{\"title\":\"Cart, Progress, Cart\",\"value\":\"Cart\"},\"cart_process_shipping_link\":{\"title\":\"Cart, Progress, Address\",\"value\":\"Address\"},\"cart_process_review_link\":{\"title\":\"Cart, Progress, Cart\",\"value\":\"Review\\/Pay\"},\"cart_process_complete_link\":{\"title\":\"Cart, Progress, Complete\",\"value\":\"Complete\"}}},\"cart_coupons\":{\"label\":\"Cart - Enter Coupons and Gift Cards\",\"options\":{\"cart_coupon_title\":{\"title\":\"Cart, Coupon Title\",\"value\":\"Coupon\"},\"cart_gift_card_title\":{\"title\":\"Cart, Gift Card Title\",\"value\":\"Gift Card\"},\"cart_coupon_sub_title\":{\"title\":\"Cart, Coupons Sub-Title\",\"value\":\"Redeem coupon codes or gift cards by entering them below.\"},\"cart_redeem_gift_card\":{\"title\":\"Cart, Redeem Gift Card Button\",\"value\":\"Redeem Gift Card\"},\"cart_apply_coupon\":{\"title\":\"Cart, Apply Coupon Button\",\"value\":\"Apply Coupon\"},\"cart_invalid_coupon\":{\"title\":\"Cart, Invalid Coupon\",\"value\":\"Not a valid coupon code\"},\"cart_not_applicable_coupon\":{\"title\":\"Cart, Not Applicable Coupon\",\"value\":\"Coupon code does not apply to this product\"},\"cart_max_exceeded_coupon\":{\"title\":\"Cart, Max Coupon Use Exceeded\",\"value\":\"Max uses exceeded\"},\"cart_invalid_giftcard\":{\"title\":\"Cart, Invalid Gift Card\",\"value\":\"Not a valid gift card number\"},\"cart_enter_coupon\":{\"title\":\"Cart, Enter Coupon Hint\",\"value\":\"Enter Coupon Code\"},\"cart_enter_gift_code\":{\"title\":\"Cart, Enter Gift Card Hint\",\"value\":\"Enter Gift Card\"},\"cart_coupon_expired\":{\"title\":\"Cart, Coupon Code Expired\",\"value\":\"Coupon Has Expired\"}}},\"cart_estimate_shipping\":{\"label\":\"Cart - Estimate Shipping\",\"options\":{\"cart_estimate_shipping_title\":{\"title\":\"Cart, Estimate Shipping Title\",\"value\":\"Estimate Shipping Costs\"},\"cart_estimate_shipping_sub_title\":{\"title\":\"Cart, Estimate Shipping Sub Title\",\"value\":\"Please enter your zip code to estimate shipping costs.\"},\"cart_estimate_shipping_input_country_label\":{\"title\":\"Cart, Estimate Shipping, Input Label Country\",\"value\":\"Country:\"},\"cart_estimate_shipping_select_one\":{\"title\":\"Cart, Estimate Shipping, Select one for country box\",\"value\":\"Select One\"},\"cart_estimate_shipping_input_label\":{\"title\":\"Cart, Estimate Shipping, Input Label Zip Code\",\"value\":\"Zip Code:\"},\"cart_estimate_shipping_button\":{\"title\":\"Cart, Estimate Shipping Button\",\"value\":\"Estimate Shipping\"},\"cart_estimate_shipping_standard\":{\"title\":\"Cart, Standard Shipping Label\",\"value\":\"Standard Shipping\"},\"cart_estimate_shipping_free\":{\"title\":\"Cart, Free Shipping Label\",\"value\":\"Free Local Pickup\"},\"cart_estimate_shipping_express\":{\"title\":\"Cart, Express Shipping Label\",\"value\":\"Ship Express\"},\"cart_estimate_shipping_error\":{\"title\":\"Cart, Mismatch Postal Code Error\",\"value\":\"Your postal code does not match our store\'s country. Shipping rates will be determined after you have entered your shipping information\"},\"cart_estimate_shipping_hint\":{\"title\":\"Cart, Estimate Shipping Hint\",\"value\":\"Enter Zip Code\"},\"delivery_in\":{\"title\":\"Cart, Live Shipping Delivery In (Days)\",\"value\":\"delivery in\"},\"delivery_days\":{\"title\":\"Cart, Live Shipping (Delivery In) Days\",\"value\":\"days\"}}},\"cart_totals\":{\"label\":\"Cart - Cart Totals\",\"options\":{\"cart_totals_title\":{\"title\":\"Cart, Cart Totals Title\",\"value\":\"Cart Totals\"},\"cart_totals_subtotal\":{\"title\":\"Cart, Cart Totals, Subtotal\",\"value\":\"Cart Subtotal\"},\"cart_totals_shipping\":{\"title\":\"Cart, Cart Totals, Shipping\",\"value\":\"Shipping\"},\"cart_totals_tax\":{\"title\":\"Cart, Cart Totals, Tax\",\"value\":\"Tax\"},\"cart_totals_discounts\":{\"title\":\"Cart, Cart Totals, Discounts\",\"value\":\"Discounts\"},\"cart_totals_vat\":{\"title\":\"Cart, Cart Totals, VAT\",\"value\":\"VAT\"},\"cart_totals_duty\":{\"title\":\"Cart, Cart Totals, Duty\",\"value\":\"Duty\"},\"cart_totals_grand_total\":{\"title\":\"Cart, Cart Totals, Grand Total\",\"value\":\"Grand Total\"},\"cart_totals_label\":{\"title\":\"Cart Totals Label\",\"value\":\"Cart Totals\"}}},\"cart_login\":{\"label\":\"Cart - Cart Login\",\"options\":{\"cart_login_title\":{\"title\":\"Cart, Login Title\",\"value\":\"Returning Customer\"},\"cart_login_sub_title\":{\"title\":\"Cart, Login Sub Title\",\"value\":\"To checkout with an existing account, please sign in below.\"},\"cart_login_email_label\":{\"title\":\"Cart, Login, Email Label\",\"value\":\"Email Address\"},\"cart_login_password_label\":{\"title\":\"Cart, Login, Password Label\",\"value\":\"Password\"},\"cart_login_button\":{\"title\":\"Cart, Login Button\",\"value\":\"SIGN IN\"},\"cart_login_forgot_password_link\":{\"title\":\"Cart, Login, Forgot Password Link\",\"value\":\"Forgot Your Password?\"},\"cart_login_account_information_title\":{\"title\":\"Cart, Login Complete Title\",\"value\":\"Account Information\"},\"cart_login_account_information_text\":{\"title\":\"Cart, Login Complete Text\",\"value\":\"You are currently checking out as \"},\"cart_login_account_a_guest_text\":{\"title\":\"Cart, Login Complete, a guest\",\"value\":\"a guest\"},\"cart_login_account_information_text2\":{\"title\":\"Cart, Login Complete Text Part 2\",\"value\":\" to checkout with a different account.\"},\"cart_login_account_information_logout_link\":{\"title\":\"Cart, Login Complete, Logout Link\",\"value\":\"click here\"}}},\"cart_guest_checkout\":{\"label\":\"Cart - Guest Checkout\",\"options\":{\"cart_guest_title\":{\"title\":\"Cart, Login, Guest Checkout Title\",\"value\":\"Checkout Without an Account\"},\"cart_guest_sub_title\":{\"title\":\"Cart, Login, Guest Checkout Sub Title\",\"value\":\"Not registered? Checkout without an existing account.\"},\"cart_guest_message\":{\"title\":\"Cart, Login, Guest Checkout Message\",\"value\":\"No account? Continue as a guest.<br\\/>You will have an opportunity to create an account later.\"},\"cart_guest_button\":{\"title\":\"Cart, Login, Guest Checkout Button\",\"value\":\"CONTINUE TO CHECKOUT\"}}},\"cart_subscription_guest_checkout\":{\"label\":\"Cart - Subscription No Account Checkout\",\"options\":{\"cart_subscription_guest_title\":{\"title\":\"Cart, Login, Subscription No Account Title\",\"value\":\"Create Account on Checkout\"},\"cart_subscription_guest_sub_title\":{\"title\":\"Cart, Login, Subscription No Account Sub Title\",\"value\":\"Not registered? Checkout without an existing account.\"},\"cart_subscription_guest_message\":{\"title\":\"Cart, Login, Subscription No Account Message\",\"value\":\"No account? No problem.<br\\/>You will have an opportunity to create an account later.\"},\"cart_subscription_guest_button\":{\"title\":\"Cart, Login, Guest Checkout Button\",\"value\":\"CONTINUE TO CHECKOUT\"}}},\"cart_billing_information\":{\"label\":\"Cart - Billing Information\",\"options\":{\"cart_billing_information_title\":{\"title\":\"Cart, Billing Information Title\",\"value\":\"Billing Information\"},\"cart_billing_information_first_name\":{\"title\":\"Cart, Billing, First Name Label\",\"value\":\"First Name\"},\"cart_billing_information_last_name\":{\"title\":\"Cart, Billing, Last Name Label\",\"value\":\"Last Name\"},\"cart_billing_information_address\":{\"title\":\"Cart, Billing, Address Label\",\"value\":\"Address\"},\"cart_billing_information_address2\":{\"title\":\"Cart, Billing, Address 2 Label\",\"value\":\"Address 2\"},\"cart_billing_information_city\":{\"title\":\"Cart, Billing, City Label\",\"value\":\"City\"},\"cart_billing_information_state\":{\"title\":\"Cart, Billing, State Label\",\"value\":\"State\"},\"cart_billing_information_select_state\":{\"title\":\"Cart, Billing, Default No State Selected\",\"value\":\"Select a State\"},\"cart_billing_information_select_province\":{\"title\":\"Cart, Billing, Default No Province Selected\",\"value\":\"Select a Province\"},\"cart_billing_information_select_county\":{\"title\":\"Cart, Billing, Default No County Selected\",\"value\":\"Select a County\"},\"cart_billing_information_select_other\":{\"title\":\"Cart, Billing, Default None Selected\",\"value\":\"Select One\"},\"cart_billing_information_country\":{\"title\":\"Cart, Billing, Country Label\",\"value\":\"Country\"},\"cart_billing_information_select_country\":{\"title\":\"Cart, Billing, Country Menu, Default None Selected\",\"value\":\"Select a Country\"},\"cart_billing_information_zip\":{\"title\":\"Cart, Billing, Zip Label\",\"value\":\"Zip Code\"},\"cart_billing_information_phone\":{\"title\":\"Cart, Billing, Phone Label\",\"value\":\"Phone\"},\"cart_billing_information_ship_to_this\":{\"title\":\"Cart, Billing, Use Billing Radio\",\"value\":\"Ship to this address\"},\"cart_billing_information_ship_to_different\":{\"title\":\"Cart, Billing, Use Shipping Radio\",\"value\":\"SHIP TO DIFFERENT ADDRESS\"},\"cart_billing_information_company_name\":{\"title\":\"Cart, Billing, Company Name Label\",\"value\":\"Company Name\"},\"cart_billing_information_vat_registration_number\":{\"title\":\"Cart, Billing, VAT Registration Number Label\",\"value\":\"VAT Registration Number\"}}},\"cart_shipping_information\":{\"label\":\"Cart - Shipping Information\",\"options\":{\"cart_shipping_information_title\":{\"title\":\"Cart, Shipping Information Title\",\"value\":\"Shipping Information\"},\"cart_shipping_information_first_name\":{\"title\":\"Cart, Shipping, First Name Label\",\"value\":\"First Name\"},\"cart_shipping_information_last_name\":{\"title\":\"Cart, Shipping, Last Name Label\",\"value\":\"Last Name\"},\"cart_shipping_information_address\":{\"title\":\"Cart, Shipping, Address Label\",\"value\":\"Address\"},\"cart_shipping_information_address2\":{\"title\":\"Cart, Shipping, Address 2 Label\",\"value\":\"Address 2\"},\"cart_shipping_information_city\":{\"title\":\"Cart, Shipping, City Label\",\"value\":\"City\"},\"cart_shipping_information_state\":{\"title\":\"Cart, Shipping, State Label\",\"value\":\"State\"},\"cart_shipping_information_select_state\":{\"title\":\"Cart, Shipping, Default No State Selected\",\"value\":\"Select a State\"},\"cart_shipping_information_select_province\":{\"title\":\"Cart, Shipping, Default No Province Selected\",\"value\":\"Select a Province\"},\"cart_shipping_information_select_county\":{\"title\":\"Cart, Shipping, Default No County Selected\",\"value\":\"Select a County\"},\"cart_shipping_information_select_other\":{\"title\":\"Cart, Shipping, Default None Selected\",\"value\":\"Select One\"},\"cart_shipping_information_country\":{\"title\":\"Cart, Shipping, Country Label\",\"value\":\"Country\"},\"cart_shipping_information_select_country\":{\"title\":\"Cart, Shipping, Country Menu, Default None Selected\",\"value\":\"Select a Country\"},\"cart_shipping_information_zip\":{\"title\":\"Cart, Shipping, Zip Label\",\"value\":\"Zip Code\"},\"cart_shipping_information_phone\":{\"title\":\"Cart, Shipping, Phone Label\",\"value\":\"Phone\"},\"cart_shipping_information_company_name\":{\"title\":\"Cart, Shipping, Company Name Label\",\"value\":\"Company Name\"}}},\"cart_contact_information\":{\"label\":\"Cart - Contact Information\",\"options\":{\"cart_contact_information_title\":{\"title\":\"Cart, Contact Information Title\",\"value\":\"Contact Information\"},\"cart_contact_information_first_name\":{\"title\":\"Cart, Contact Information, First Name Label\",\"value\":\"First Name\"},\"cart_contact_information_last_name\":{\"title\":\"Cart, Contact Information, Last Name Label\",\"value\":\"Last Name\"},\"cart_contact_information_email\":{\"title\":\"Cart, Contact Information, Email Label\",\"value\":\"Email\"},\"cart_contact_information_retype_email\":{\"title\":\"Cart, Contact Information, Retype Email Label\",\"value\":\"Retype Email\"},\"cart_contact_information_create_account\":{\"title\":\"Cart, Contact Information, Create Account Label\",\"value\":\"Create Account\"},\"cart_contact_information_password\":{\"title\":\"Cart, Contact Information, Password Label\",\"value\":\"Password\"},\"cart_contact_information_retype_password\":{\"title\":\"Cart, Contact Information, Retype Password Label\",\"value\":\"Retype Password\"},\"cart_contact_information_subscribe\":{\"title\":\"Cart, Contact Information, Subscribe Label\",\"value\":\"Would you like to receive emails and updates from us?\"},\"cart_contact_information_continue_button\":{\"title\":\"Cart, Contact Information, Continue Button\",\"value\":\"CONTINUE\"},\"cart_contact_information_continue_payment\":{\"title\":\"Cart, Contact Information, Continue to Payment\",\"value\":\"CONTINUE TO PAYMENT\"},\"cart_contact_information_continue_shipping\":{\"title\":\"Cart, Contact Information, Continue to Shipping\",\"value\":\"CONTINUE TO SHIPPING\"}}},\"cart_shipping_method\":{\"label\":\"Cart - Shipping Method\",\"options\":{\"cart_shipping_method_title\":{\"title\":\"Cart, Shipping Method, Title\",\"value\":\"Shipping Method\"},\"cart_shipping_method_continue_button\":{\"title\":\"Cart, Shipping Method Continue Button\",\"value\":\"CONTINUE\"},\"cart_shipping_method_please_select_one\":{\"title\":\"Cart, Shipping please select one\",\"value\":\"Please select a shipping method\"},\"cart_shipping_update_shipping\":{\"title\":\"Cart, Update Shipping\",\"value\":\"Update Shipping\"},\"cart_shipping_no_rates_available\":{\"title\":\"Cart, No Shipping Rates Available\",\"value\":\"There are no available shipping methods in your area. Contact us to complete your order.\"}}},\"cart_address_review\":{\"label\":\"Cart - Address Review\",\"options\":{\"cart_address_review_title\":{\"title\":\"Cart, Address Information Title\",\"value\":\"Address Information\"},\"cart_address_review_billing_title\":{\"title\":\"Cart, Address Review, Billing Title\",\"value\":\"Billing Address\"},\"cart_address_review_shipping_title\":{\"title\":\"Cart, Address Review, Shipping Title\",\"value\":\"Shipping Address\"},\"cart_address_review_edit_link\":{\"title\":\"Cart, Address Review, Edit Link\",\"value\":\"Edit Address or Shipping Options\"},\"cart_address_review_edit_link2\":{\"title\":\"Cart, Address Review, Edit Link\",\"value\":\"Edit Address Information\"}}},\"cart_payment_information\":{\"label\":\"Cart - Payment Information\",\"options\":{\"cart_payment_information_title\":{\"title\":\"Cart, Payment Information Title\",\"value\":\"Payment Information\"},\"cart_payment_information_manual_payment\":{\"title\":\"Cart, Payment Information, Manual Payment Label\",\"value\":\"Pay by Direct Deposit\"},\"cart_payment_information_affirm\":{\"title\":\"Cart, Payment Information, Affirm Payment Label\",\"value\":\"Pay with Easy Monthly Payments\"},\"cart_payment_information_third_party\":{\"title\":\"Cart, Payment Information, Third Party Payment Label\",\"value\":\"Pay Using\"},\"cart_payment_information_third_party_first\":{\"title\":\"Cart, Payment Information, Third Party Text, Part 1\",\"value\":\"You will be redirected to\"},\"cart_payment_information_third_party_second\":{\"title\":\"Cart, Payment Information, Third Party Text, Part 2\",\"value\":\"when you click submit order to complete your payment.\"},\"cart_payment_information_credit_card\":{\"title\":\"Cart, Payment Information, Credit Card Payment Label\",\"value\":\"Pay by Credit Card\"},\"cart_payment_information_payment_method\":{\"title\":\"Cart, Payment Information, Payment Method Label\",\"value\":\"Payment Method\"},\"cart_payment_information_card_holder_name\":{\"title\":\"Cart, Payment Information, Card Holder Label\",\"value\":\"Card Holder Name\"},\"cart_payment_information_card_number\":{\"title\":\"Cart, Payment Information, Card Number Label\",\"value\":\"Card Number\"},\"cart_payment_information_expiration_date\":{\"title\":\"Cart, Payment Information, Expiration Date Label\",\"value\":\"Expiration Date\"},\"cart_payment_information_security_code\":{\"title\":\"Cart, Payment Information, Security Code Label\",\"value\":\"Security Code\"},\"cart_payment_information_checkout_text\":{\"title\":\"Cart, Payment Information, Checkout Text\",\"value\":\"By submitting your order, you are agreeing to the [terms]terms and conditions[\\/terms] and [privacy]privacy policy[\\/privacy] of our website.  Once you click submit order, the checkout process is complete and no changes can be made to your order. Thank you for shopping with us!\"},\"cart_payment_information_review_checkout_text\":{\"title\":\"Cart, Payment Information, Review Checkout Text\",\"value\":\"Before submitting your order and making it final, you will be given a chance to review and confirm the final totals. Please click the review order button when you are ready to review, confirm, and submit your order.\"},\"cart_payment_information_review_order_button\":{\"title\":\"Cart, Payment Information, Review Order Button\",\"value\":\"REVIEW ORDER\"},\"cart_payment_information_submit_order_button\":{\"title\":\"Cart, Payment Information, Submit Order Button\",\"value\":\"SUBMIT ORDER\"},\"cart_payment_information_cancel_order_button\":{\"title\":\"Cart, Payment Information, Edit Order Button\",\"value\":\"EDIT ORDER\"},\"cart_payment_information_order_notes_title\":{\"title\":\"Cart, Payment Information, Customer Notes Title\",\"value\":\"ORDER NOTES\"},\"cart_payment_information_order_notes_message\":{\"title\":\"Cart, Payment Information, Customer Notes Message\",\"value\":\"If you have any special requests for your order please enter them here.\"},\"cart_payment_information_review_title\":{\"title\":\"Cart, Review Cart Title\",\"value\":\"REVIEW YOUR CART\"},\"cart_payment_information_edit_cart_link\":{\"title\":\"Cart, edit cart items link\",\"value\":\"edit cart items\"},\"cart_payment_information_edit_billing_link\":{\"title\":\"Cart, edit billing link\",\"value\":\"edit billing address\"},\"cart_payment_information_edit_shipping_link\":{\"title\":\"Cart, edit shipping link\",\"value\":\"edit shipping address\"},\"cart_payment_information_edit_shipping_method_link\":{\"title\":\"Cart, edit shipping link\",\"value\":\"edit shipping method\"},\"cart_payment_review_totals_title\":{\"title\":\"Cart, Review Total Title\",\"value\":\"REVIEW CART TOTALS\"},\"cart_payment_review_agree\":{\"title\":\"Cart, Review Agree Text\",\"value\":\"I agree to the terms and conditions of this site.\"},\"cart_change_payment_method\":{\"title\":\"Cart, Change Payment Method\",\"value\":\"change payment method\"}}},\"cart_success\":{\"label\":\"Order Receipt\",\"options\":{\"cart_payment_receipt_order_details_link\":{\"title\":\"Email Receipt, Link to Account\",\"value\":\"View Order Details\"},\"cart_payment_receipt_subscription_details_link\":{\"title\":\"Email Receipt, Link to Subscription\",\"value\":\"View Subscription Details\"},\"cart_payment_receipt_title\":{\"title\":\"Email Receipt Title\",\"value\":\"Order Confirmation - Order Number\"},\"cart_payment_complete_line_1\":{\"title\":\"Cart, Payment Complete, Line 1\",\"value\":\"Dear:\"},\"cart_payment_complete_line_2\":{\"title\":\"Cart, Payment Complete, Line 2\",\"value\":\"Thank you for your order! Your Reference Number is:\"},\"cart_payment_complete_line_3\":{\"title\":\"Cart, Payment Complete, Line 3\",\"value\":\"Below is a summary of order. You can check the status of your order and all the details by visiting our website and logging into your account.\"},\"cart_payment_complete_line_4\":{\"title\":\"Cart, Payment Complete, Line 4\",\"value\":\"Please keep this as a record of your order!\"},\"cart_payment_complete_line_5\":{\"title\":\"Cart, Payment Complete, Line 5\",\"value\":\"Click Here to View Your Membership Content\"},\"cart_payment_complete_click_here\":{\"title\":\"Cart, Payment Complete, Click Here\",\"value\":\"Click Here\"},\"cart_payment_complete_to_view_order\":{\"title\":\"Cart, Payment Complete, To View Order\",\"value\":\"to View Your Order\"},\"cart_payment_complete_billing_label\":{\"title\":\"Cart, Payment Complete, Billing Label\",\"value\":\"Billing Address\"},\"cart_payment_complete_shipping_label\":{\"title\":\"Cart, Payment Complete, Shipping Label\",\"value\":\"Shipping Address\"},\"cart_payment_complete_details_header_1\":{\"title\":\"Cart, Payment Complete, Header 1\",\"value\":\"Product\"},\"cart_payment_complete_details_header_2\":{\"title\":\"Cart, Payment Complete, Header 2\",\"value\":\"Qty\"},\"cart_payment_complete_details_header_3\":{\"title\":\"Cart, Payment Complete, Header 3\",\"value\":\"Price\"},\"cart_payment_complete_details_header_4\":{\"title\":\"Cart, Payment Complete, Header 4\",\"value\":\"Ext Price\"},\"cart_payment_complete_order_totals_subtotal\":{\"title\":\"Cart, Payment Complete, Subtotal\",\"value\":\"Subtotal\"},\"cart_payment_complete_order_totals_shipping\":{\"title\":\"Cart, Payment Complete, Shipping\",\"value\":\"Shipping\"},\"cart_payment_complete_order_totals_tax\":{\"title\":\"Cart, Payment Complete, Tax\",\"value\":\"Tax\"},\"cart_payment_complete_order_totals_discount\":{\"title\":\"Cart, Payment Complete, Discount\",\"value\":\"Discount\"},\"cart_payment_complete_order_totals_vat\":{\"title\":\"Cart, Payment Complete, VAT\",\"value\":\"VAT @\"},\"cart_payment_complete_order_totals_duty\":{\"title\":\"Cart, Payment Complete, Duty\",\"value\":\"Duty\"},\"cart_payment_complete_order_totals_grand_total\":{\"title\":\"Cart, Payment Complete, Order Total\",\"value\":\"Order Total\"},\"cart_payment_complete_bottom_line_1\":{\"title\":\"Cart, Payment Complete, Bottom Line 1\",\"value\":\"Please double check your order when you receive it and let us know immediately if there are any concerns or issues. We always value your business and hope you enjoy your product.\"},\"cart_payment_complete_bottom_line_2\":{\"title\":\"Cart, Payment Complete, Bottom Line 2\",\"value\":\"Thank you very much!\"},\"cart_success_thank_you_title\":{\"title\":\"Cart, Payment Complete, Thank You Title\",\"value\":\"Thank you for your order\"},\"cart_success_order_number_is\":{\"title\":\"Cart, Payment Complete, Your Order Number\",\"value\":\"Order number is:\"},\"cart_success_will_receive_email\":{\"title\":\"Cart, Payment Complete, Will receive email\",\"value\":\"You will receive an email confirmation shortly at\"},\"cart_success_print_receipt_text\":{\"title\":\"Cart, Payment Complete, Print Receipt Link Text\",\"value\":\"Print Receipt\"},\"cart_success_save_order_text\":{\"title\":\"Cart, Payment Complete, Save Your Info\",\"value\":\"Save your information for next time\"},\"cart_success_create_password\":{\"title\":\"Cart, Payment Complete, Create Password\",\"value\":\"Create Password:\"},\"cart_success_verify_password\":{\"title\":\"Cart, Payment Complete, Verify Password\",\"value\":\"Verify Password:\"},\"cart_success_password_hint\":{\"title\":\"Cart, Payment Complete, Password Hint\",\"value\":\"(6-12 Characters)\"},\"cart_success_create_account\":{\"title\":\"Cart, Payment Complete, Create Account\",\"value\":\"Create Account\"},\"cart_giftcard_receipt_title\":{\"title\":\"Cart, Gift Card Email Subject\",\"value\":\"Gift Card Delivery\"},\"cart_giftcard_receipt_header\":{\"title\":\"Cart, Gift Card Header\",\"value\":\"Your Gift Card\"},\"cart_giftcard_receipt_to\":{\"title\":\"Cart, Gift Card To\",\"value\":\"To\"},\"cart_giftcard_receipt_from\":{\"title\":\"Cart, Gift Card From\",\"value\":\"From\"},\"cart_giftcard_receipt_id\":{\"title\":\"Cart, Gift Card ID Label\",\"value\":\"Your Gift Card ID\"},\"cart_giftcard_receipt_amount\":{\"title\":\"Cart, Gift Card Amount\",\"value\":\"Gift Card Total\"},\"cart_giftcard_receipt_message\":{\"title\":\"Cart, Gift Card Message\",\"value\":\"You can redeem your gift card during checkout at\"},\"cart_downloads_available\":{\"title\":\"Cart Success, Downloads Available\",\"value\":\"Your order includes downloads and are available in your account.\"},\"cart_downloads_unavailable\":{\"title\":\"Cart Success, Downloads Unavailable\",\"value\":\"Your order includes downloads, but your payment has not yet been approved. Once payment has been approved your downloads will be available in your account.\"},\"cart_downloads_click_to_go\":{\"title\":\"Cart Success, Downloads Click to go Text\",\"value\":\"Click to go there now.\"},\"cart_success_view_downloads\":{\"title\":\"Cart Success, View Downloads\",\"value\":\"View Downloads\"}}},\"subscription_trial\":{\"label\":\"Subscription Trial Email\",\"options\":{\"trial_message_1\":{\"title\":\"Subscription Trial Part 1\",\"value\":\"Thank you for signing up! Your\"},\"trial_message_2\":{\"title\":\"Subscription Trial Part 2\",\"value\":\"day free trial of\"},\"trial_message_3\":{\"title\":\"Subscription Trial Part 3\",\"value\":\"has now started! If you have any questions or concerns during your trial, please contact us, we are happy to help.\"},\"trial_message_4\":{\"title\":\"Subscription Trial Part 4\",\"value\":\"We hope you stick with us, but if you decide this isn\'t for you, you may cancel at any time prior to the end of your trial to prevent being charged. To cancel, log into your account, click manage subscriptions, view your subscription, and cancel on the details page.\"},\"trial_message_link\":{\"title\":\"View Subscription Information\",\"value\":\"View Subscription Information\"},\"subscription_trial_email_title\":{\"title\":\"Subscription Trial Email Title\",\"value\":\"Your Trial Has Started\"},\"trial_ending_message_1\":{\"title\":\"Subscription Trial Ending Part 1\",\"value\":\"Your\"},\"trial_ending_message_2\":{\"title\":\"Subscription Trial Part 2\",\"value\":\"day free trial of\"},\"trial_ending_message_3\":{\"title\":\"Subscription Trial Part 3\",\"value\":\"is ending in only 3 days! If you have any questions or concerns, please contact us! We are happy to help.\"},\"trial_ending_message_4\":{\"title\":\"Subscription Trial Part 4\",\"value\":\"We hope you stick with us, but if you decide this isn\'t for you, you may cancel at any time prior to the end of your trial to prevent being charged. To cancel, log into your account, click manage subscriptions, view your subscription, and cancel on the details page.\"},\"trial_ending_message_link\":{\"title\":\"View Subscription Information\",\"value\":\"View Subscription Information\"},\"subscription_trial_ending_email_title\":{\"title\":\"Subscription Trial Email Title\",\"value\":\"Your Trial is Ending in 3 Days\"}}},\"subscription_ended\":{\"label\":\"Subscription Ended Email\",\"options\":{\"ended_message_1\":{\"title\":\"Subscription Ended Part 1\",\"value\":\"Your subscription with us has either ended, been cancelled, or expired due to too many failed payments.\"},\"ended_message_2\":{\"title\":\"Subscription Ended Part 2\",\"value\":\"We are sorry to see you go and hope you return. If this subscription was cancelled by accident, you may click the link below to purchase a new subscription.\"},\"ended_details\":{\"title\":\"Subscription Ended Details\",\"value\":\"The following subscription has ended:\"},\"emded_message_link\":{\"title\":\"Start a New Subscription\",\"value\":\"Start a New Subscription\"},\"subscription_ended_email_title\":{\"title\":\"Subscription Ended Email Title\",\"value\":\"Your Subscription Has Ended\"}}},\"account_login\":{\"label\":\"Account - Login\",\"options\":{\"account_login_title\":{\"title\":\"Account, Login Title\",\"value\":\"Returning Customer\"},\"account_login_sub_title\":{\"title\":\"Account, Login Sub Title\",\"value\":\"Sign in below to access your existing account.\"},\"account_login_email_label\":{\"title\":\"Account, Login, Email Label\",\"value\":\"Email Address\"},\"account_login_password_label\":{\"title\":\"Account, Login, Password Label\",\"value\":\"Password\"},\"account_login_button\":{\"title\":\"Account, Login Button\",\"value\":\"SIGN IN\"},\"account_login_forgot_password_link\":{\"title\":\"Account, Login, Forgot Password Link\",\"value\":\"Forgot Your Password?\"},\"account_login_account_information_title\":{\"title\":\"Account, Login Complete Title\",\"value\":\"Account Information\"},\"account_login_account_information_text\":{\"title\":\"Account, Login Complete Text\",\"value\":\"You are currently checking out as Demo User. To checkout with a different account,\"},\"account_login_account_information_logout_link\":{\"title\":\"Account, Login Complete, Logout Link\",\"value\":\"click here\"},\"account_new_user_title\":{\"title\":\"Account, Login, New User Title\",\"value\":\"New User\"},\"account_new_user_sub_title\":{\"title\":\"Account, Login, New User Sub Title\",\"value\":\"Not registered? Click the button below\"},\"account_new_user_message\":{\"title\":\"Account, Login, New User Message\",\"value\":\"No account? Create an account to take full advantage of this website.\"},\"account_new_user_button\":{\"title\":\"Account, Login, New User Button\",\"value\":\"CREATE ACCOUNT\"}}},\"account_forgot_password\":{\"label\":\"Account - Forgot Password\",\"options\":{\"account_forgot_password_title\":{\"title\":\"Account, Retrieve Password Title\",\"value\":\"Retrieve Your Password\"},\"account_forgot_password_email_label\":{\"title\":\"Account, Retrieve Password Email Label\",\"value\":\"Email\"},\"account_forgot_password_button\":{\"title\":\"Account, Retrieve Password Button\",\"value\":\"RETRIEVE PASSWORD\"}}},\"account_validation_email\":{\"label\":\"Account - Validation Email\",\"options\":{\"account_validation_email_message\":{\"title\":\"Account, Short Validate Email Message\",\"value\":\"To activate your account, please click the link below.\"},\"account_validation_email_title\":{\"title\":\"Account, Activate Your Account Title\",\"value\":\"Please Activate Your Account\"},\"account_validation_email_link\":{\"title\":\"Account, Activate Your Account Link\",\"value\":\"Click Here to Activate\"}}},\"account_register\":{\"label\":\"Account - Register\",\"options\":{\"account_register_title\":{\"title\":\"Account, Register Title\",\"value\":\"Create an Account\"},\"account_register_first_name\":{\"title\":\"Account, Register, First Name Label\",\"value\":\"First Name\"},\"account_register_last_name\":{\"title\":\"Account, Register, Last Name Label\",\"value\":\"Last Name\"},\"account_register_email\":{\"title\":\"Account, Register, Email Label\",\"value\":\"Email Address\"},\"account_register_password\":{\"title\":\"Account, Register, Password Label\",\"value\":\"Password\"},\"account_register_retype_password\":{\"title\":\"Account, Register, Re-type Password Label\",\"value\":\"Re-type Password\"},\"account_register_subscribe\":{\"title\":\"Account, Register, Subscribe Text\",\"value\":\"Would you like to subscribe to our email list?\"},\"account_register_agree_terms\":{\"title\":\"Account, Register, Agree Terms Text\",\"value\":\"Do you agree to our website terms, data policy, and cookies policy?\"},\"account_register_button\":{\"title\":\"Account, Register Button\",\"value\":\"REGISTER\"},\"account_billing_information_user_notes\":{\"title\":\"Account, Billing, User Notes\",\"value\":\"Additional Information about your Registration\"},\"account_register_email_title\":{\"title\":\"Account, Register Email Title\",\"value\":\"New EasyCart Registration\"},\"account_register_email_message\":{\"title\":\"Account, Register Email Message\",\"value\":\"New Registration with Email Address:\"}}},\"account_navigation\":{\"label\":\"Account - Navigation\",\"options\":{\"account_navigation_title\":{\"title\":\"Account, Navigation Title\",\"value\":\"Account Navigation\"},\"account_navigation_basic_inforamtion\":{\"title\":\"Account, Navigation, Basic Information Link\",\"value\":\"basic information\"},\"account_navigation_orders\":{\"title\":\"Account, Navigation, View Orders Link\",\"value\":\"view orders\"},\"account_navigation_password\":{\"title\":\"Account, Navigation, Change Password Link\",\"value\":\"change password\"},\"account_navigation_subscriptions\":{\"title\":\"Account, Navigation, Subscriptions Link\",\"value\":\"manage subscriptions\"},\"account_navigation_payment_methods\":{\"title\":\"Account, Navigation, Payments Link\",\"value\":\"manage payment methods\"},\"account_navigation_sign_out\":{\"title\":\"Account, Navigation, Sign Out Link\",\"value\":\"sign out\"},\"account_navigation_dashboard\":{\"title\":\"Account, Navigation, Dashboard Link\",\"value\":\"account dashboard\"},\"account_navigation_billing_information\":{\"title\":\"Account, Navigation, Billing Link\",\"value\":\"billing information\"},\"account_navigation_shipping_information\":{\"title\":\"Account, Navigation, Shipping Link\",\"value\":\"shipping information\"}}},\"account_dashboard\":{\"label\":\"Account - Dashboard\",\"options\":{\"account_dashboard_recent_orders_title\":{\"title\":\"Account, Dashboard, Recent Orders Title\",\"value\":\"Recent Orders\"},\"account_dashboard_recent_orders_none\":{\"title\":\"Account, Dashboard, Recent Order, No Orders\",\"value\":\"No Orders Have Been Placed\"},\"account_dashboard_all_orders_linke\":{\"title\":\"Account, Dashboard, All Orders Link\",\"value\":\"VIEW ALL ORDERS\"},\"account_dashboard_order_placed\":{\"title\":\"Account, Dashboard, Order Placed Label\",\"value\":\"ORDER PLACED\"},\"account_dashboard_order_total\":{\"title\":\"Account, Dashboard, Total Label\",\"value\":\"TOTAL\"},\"account_dashboard_order_ship_to\":{\"title\":\"Account, Dashboard, Ship To Label\",\"value\":\"SHIP TO\"},\"account_dashboard_order_order_label\":{\"title\":\"Account, Dashboard, Order Label\",\"value\":\"ORDER\"},\"account_dashboard_order_view_details\":{\"title\":\"Account, Dashboard, View Details Link\",\"value\":\"View Details\"},\"account_dashboard_order_buy_item_again\":{\"title\":\"Account, Dashboard, Buy Item Again\",\"value\":\"Buy Item Again\"},\"account_dashboard_preference_title\":{\"title\":\"Account, Dashboard, Preference Title\",\"value\":\"Account Preferences\"},\"account_dashboard_email_title\":{\"title\":\"Account, Dashboard, Email Title\",\"value\":\"Your Primary Email\"},\"account_dashboard_email_edit_link\":{\"title\":\"Account, Dashboard, Email Edit Link\",\"value\":\"edit\"},\"account_dashboard_email_note\":{\"title\":\"Account, Dashboard, Email Note\",\"value\":\"(This is used to log in)\"},\"account_dashboard_billing_title\":{\"title\":\"Account, Dashboard, Billing Title\",\"value\":\"Billing Address\"},\"account_dashboard_billing_link\":{\"title\":\"Account, Dashboard, Billing Edit Link\",\"value\":\"edit billing address\"},\"account_dashboard_shipping_title\":{\"title\":\"Account, Dashboard, Shipping Title\",\"value\":\"Shipping Address\"},\"account_dashboard_shipping_link\":{\"title\":\"Account, Dashboard, Shipping Edit Link\",\"value\":\"edit shipping address\"}}},\"account_personal_information\":{\"label\":\"Account - Edit Personal Information\",\"options\":{\"account_personal_information_title\":{\"title\":\"Account, Personal Information Title\",\"value\":\"Personal Information\"},\"account_personal_information_sub_title\":{\"title\":\"Account, Personal Information Sub Title\",\"value\":\"Please note: Changes made to your account information, including shipping addresses, will only affect new orders. All previously placed orders will be sent to the address listed on the date of purchase.\"},\"account_personal_information_first_name\":{\"title\":\"Account, Personal Information, First Name Label\",\"value\":\"First Name\"},\"account_personal_information_last_name\":{\"title\":\"Account, Personal Information, Last Name Label\",\"value\":\"Last Name\"},\"account_personal_information_email\":{\"title\":\"Account, Personal Information, Email Label\",\"value\":\"Email Address\"},\"account_personal_information_subscribe\":{\"title\":\"Account, Personal Information, Subscribe Label\",\"value\":\"Would you like to subscribe to our newsletter?\"},\"account_personal_information_update_button\":{\"title\":\"Account, Personal Information, Update Button\",\"value\":\"UPDATE\"},\"account_personal_information_cancel_link\":{\"title\":\"Account, Personal Information, Cancel Link\",\"value\":\"CANCEL\"}}},\"account_password\":{\"label\":\"Account - Edit Password\",\"options\":{\"account_password_title\":{\"title\":\"Account, Password Title\",\"value\":\"Edit Your Password\"},\"account_password_sub_title\":{\"title\":\"Account, Password Sub Title\",\"value\":\"Please note: Once you change your password you will be required to use the new password each time you log into our site.\"},\"account_password_current_password\":{\"title\":\"Account, Password, Current Password Label\",\"value\":\"Current Password\"},\"account_password_new_password\":{\"title\":\"Account, Password, New Password Label\",\"value\":\"New Password\"},\"account_password_retype_new_password\":{\"title\":\"Account, Password, Retype New Password Label\",\"value\":\"Retype New Password\"},\"account_password_update_button\":{\"title\":\"Account, Password, Update Button\",\"value\":\"UPDATE\"},\"account_password_cancel_button\":{\"title\":\"Account, Password, Cancel Link\",\"value\":\"CANCEL\"}}},\"account_billing_information\":{\"label\":\"Account - Edit Billing Information\",\"options\":{\"account_billing_information_title\":{\"title\":\"Account, Billing Information Title\",\"value\":\"Billing Information\"},\"account_billing_information_first_name\":{\"title\":\"Account, Billing Information, First Name Label\",\"value\":\"First Name\"},\"account_billing_information_last_name\":{\"title\":\"Account, Billing Information, Last Name Label\",\"value\":\"Last Name\"},\"account_billing_information_address\":{\"title\":\"Account, Billing Information, Address Label\",\"value\":\"Address\"},\"account_billing_information_address2\":{\"title\":\"Account, Billing Information, Address 2 Label\",\"value\":\"Address 2\"},\"account_billing_information_city\":{\"title\":\"Account, Billing Information, City Label\",\"value\":\"City\"},\"account_billing_information_state\":{\"title\":\"Account, Billing Information, State Label\",\"value\":\"State\"},\"account_billing_information_default_no_state\":{\"title\":\"Account, Billing Information, No State Label\",\"value\":\"Select a State\"},\"account_billing_information_zip\":{\"title\":\"Account, Billing Information, Zip Label\",\"value\":\"Zip Code\"},\"account_billing_information_country\":{\"title\":\"Account, Billing Information, Country Label\",\"value\":\"Country\"},\"account_billing_information_default_no_country\":{\"title\":\"Account, Billing Information, No Country Label\",\"value\":\"Select a Country\"},\"account_billing_information_phone\":{\"title\":\"Account, Billing Information, Phone Label\",\"value\":\"Phone\"},\"account_billing_information_update_button\":{\"title\":\"Account, Billing Information, Update Button\",\"value\":\"UPDATE\"},\"account_billing_information_cancel\":{\"title\":\"Account, Billing Information, Cancel Link\",\"value\":\"CANCEL\"}}},\"account_shipping_information\":{\"label\":\"Account - Edit Shipping Information\",\"options\":{\"account_shipping_information_title\":{\"title\":\"Account, Shipping Information Title\",\"value\":\"Shipping Information\"},\"account_shipping_information_first_name\":{\"title\":\"Account, Shipping Information, First Name Label\",\"value\":\"First Name\"},\"account_shipping_information_last_name\":{\"title\":\"Account, Shipping Information, Last Name Label\",\"value\":\"Last Name\"},\"account_shipping_information_address\":{\"title\":\"Account, Shipping Information, Address Label\",\"value\":\"Address\"},\"account_shipping_information_address2\":{\"title\":\"Account, Shipping Information, Address 2 Label\",\"value\":\"Address 2\"},\"account_shipping_information_city\":{\"title\":\"Account, Shipping Information, City Label\",\"value\":\"City\"},\"account_shipping_information_state\":{\"title\":\"Account, Shipping Information, State Label\",\"value\":\"State\"},\"account_shipping_information_default_no_state\":{\"title\":\"Account, Shipping Information, No State Label\",\"value\":\"Select a State\"},\"account_shipping_information_zip\":{\"title\":\"Account, Shipping Information, Zip Label\",\"value\":\"Zip Code\"},\"account_shipping_information_country\":{\"title\":\"Account, Shipping Information, Country Label\",\"value\":\"Country\"},\"account_shipping_information_default_no_country\":{\"title\":\"Account, Shipping Information, No Country Label\",\"value\":\"Select a Country\"},\"account_shipping_information_phone\":{\"title\":\"Account, Shipping Information, Phone Label\",\"value\":\"Phone\"},\"account_shipping_information_update_button\":{\"title\":\"Account, Shipping Information, Update Button\",\"value\":\"UPDATE\"},\"account_shipping_information_cancel\":{\"title\":\"Account, Shipping Information, Cancel Link\",\"value\":\"CANCEL\"}}},\"account_orders\":{\"label\":\"Account - Orders\",\"options\":{\"account_orders_title\":{\"title\":\"Account, Orders Title\",\"value\":\"Your Order History\"},\"account_orders_header_1\":{\"title\":\"Account, Orders, Header 1\",\"value\":\"ID\"},\"account_orders_header_2\":{\"title\":\"Account, Orders, Header 2\",\"value\":\"Date\"},\"account_orders_header_3\":{\"title\":\"Account, Orders, Header 3\",\"value\":\"Total\"},\"account_orders_header_4\":{\"title\":\"Account, Orders, Header 4\",\"value\":\"Status\"},\"account_orders_view_order_button\":{\"title\":\"Account, Orders, View Order Button\",\"value\":\"VIEW ORDER\"}}},\"account_forgot_password_email\":{\"label\":\"Account - Forgot Password Recovery Email\",\"options\":{\"account_forgot_password_email_title\":{\"title\":\"Account, Password Recovery Email, Email Title\",\"value\":\"Your New Password\"},\"account_forgot_password_email_dear\":{\"title\":\"Account, Password Recovery Email, Dear User\",\"value\":\"Dear\"},\"account_forgot_password_email_your_new_password\":{\"title\":\"Account, Password Recovery Email, Your New Password\",\"value\":\"Your new password is:\"},\"account_forgot_password_email_change_password\":{\"title\":\"Account, Password Recovery Email, Change Password Text\",\"value\":\"Be sure to log into your account and change your password to something you can remember.\"},\"account_forgot_password_email_thank_you\":{\"title\":\"Account, Password Recovery Email, Thank You Text\",\"value\":\"Thank You Very much!\"}}},\"account_order_details\":{\"label\":\"Account - Order Details\",\"options\":{\"account_orders_details_order_info_title\":{\"title\":\"Account, Orders Details, Order Information Title\",\"value\":\"Order Information\"},\"account_orders_details_your_order_title\":{\"title\":\"Account, Orders Details, Your Order Title\",\"value\":\"Your Order\"},\"account_orders_details_order_number\":{\"title\":\"Account, Orders Details, Order Number Label\",\"value\":\"Order Number:\"},\"account_orders_details_order_date\":{\"title\":\"Account, Orders Details, Order Date Label\",\"value\":\"Order Date:\"},\"account_orders_details_order_status\":{\"title\":\"Account, Orders Details, Order Status Label\",\"value\":\"Order Status:\"},\"account_orders_details_order_tracking\":{\"title\":\"Account, Orders Details, Order Tracking Label\",\"value\":\"Tracking Number:\"},\"account_orders_details_shipping_method\":{\"title\":\"Account, Orders Details, Shipping Method Label\",\"value\":\"Shipping Method:\"},\"account_orders_details_coupon_code\":{\"title\":\"Account, Orders Details, Coupon Code Label\",\"value\":\"Coupon Code:\"},\"account_orders_details_gift_card\":{\"title\":\"Account, Orders Details, Gift Card Label\",\"value\":\"Gift Card:\"},\"account_orders_details_view_subscription\":{\"title\":\"Account, Orders Details, View Subscription\",\"value\":\"View Subscription Details\"},\"account_orders_details_billing_label\":{\"title\":\"Account, Orders Details, Billing Label\",\"value\":\"Billing Address\"},\"account_orders_details_shipping_label\":{\"title\":\"Account, Orders Details, Shipping Label\",\"value\":\"Shipping Address\"},\"account_orders_details_payment_method\":{\"title\":\"Account, Orders Details, Payment Method\",\"value\":\"Payment Method:\"},\"account_order_details_payment_method_manual\":{\"title\":\"Account, Order Details, Payment Method, Manual Bill Label\",\"value\":\"Direct Deposit\"},\"account_orders_details_subtotal\":{\"title\":\"Account, Orders Details, Subtotal\",\"value\":\"Sub Total:\"},\"account_orders_details_tax_total\":{\"title\":\"Account, Orders Details, Tax Total\",\"value\":\"Tax Total:\"},\"account_orders_details_shipping_total\":{\"title\":\"Account, Orders Details, Shipping Total\",\"value\":\"Shipping Total:\"},\"account_orders_details_discount_total\":{\"title\":\"Account, Orders Details, Discount Total\",\"value\":\"Discount Total:\"},\"account_orders_details_duty_total\":{\"title\":\"Account, Orders Details, Duty Total\",\"value\":\"Duty Total:\"},\"account_orders_details_vat_total\":{\"title\":\"Account, Orders Details, VAT Total\",\"value\":\"VAT Total:\"},\"account_orders_details_refund_total\":{\"title\":\"Account, Orders Details, Refund Total\",\"value\":\"Refunded Amount:\"},\"account_orders_details_grand_total\":{\"title\":\"Account, Orders Details, Grand Total\",\"value\":\"Order Total:\"},\"account_orders_details_header_1\":{\"title\":\"Account, Orders Details, Header 1\",\"value\":\"Product\"},\"account_orders_details_header_2\":{\"title\":\"Account, Orders Details, Header 2\",\"value\":\"Options\"},\"account_orders_details_header_3\":{\"title\":\"Account, Orders Details, Header 3\",\"value\":\"Price\"},\"account_orders_details_header_4\":{\"title\":\"Account, Orders Details, Header 4\",\"value\":\"Quantity\"},\"account_orders_details_header_5\":{\"title\":\"Account, Orders Details, Header 5\",\"value\":\"Total\"},\"account_orders_details_gift_message\":{\"title\":\"Account, Orders Details, Gift Card Message\",\"value\":\"message: \"},\"account_orders_details_gift_from\":{\"title\":\"Account, Orders Details, Gift Card From\",\"value\":\"from: \"},\"account_orders_details_gift_to\":{\"title\":\"Account, Orders Details, Gift Card To\",\"value\":\"to: \"},\"account_orders_details_gift_card_id\":{\"title\":\"Account, Orders Details, Gift Card ID\",\"value\":\"Gift Card Code: \"},\"account_orders_details_print_online\":{\"title\":\"Account, Orders Details, Print Online Link\",\"value\":\"Print Online\"},\"account_orders_details_download\":{\"title\":\"Account, Orders Details, Download\",\"value\":\"Download\"},\"account_orders_details_downloads_used\":{\"title\":\"Account, Orders Details, Downloads Used\",\"value\":\"Downloads Used\"},\"account_orders_details_downloads_expire_time\":{\"title\":\"Account, Orders Details, Download Expiration\",\"value\":\"Download Expires On:\"},\"account_orders_details_your_codes\":{\"title\":\"Account, Orders Details, Your Codes\",\"value\":\"Your Code(s):\"},\"complete_payment\":{\"title\":\"Account, Orders Details, Complete Payment\",\"value\":\"Complete Order Payment\"},\"order_status_status_not_found\":{\"title\":\"Account, Orders Status, Status Not Found\",\"value\":\"Status Not Found\"},\"order_status_order_shipped\":{\"title\":\"Account, Orders Status, Order Shipped\",\"value\":\"Order Shipped\"},\"order_status_order_confirmed\":{\"title\":\"Account, Orders Status, Order Confirmed\",\"value\":\"Order Confirmed\"},\"order_status_order_on_hold\":{\"title\":\"Account, Orders Status, Order on Hold\",\"value\":\"Order on Hold\"},\"order_status_order_started\":{\"title\":\"Account, Orders Status, Order Started\",\"value\":\"Order Started\"},\"order_status_card_approved\":{\"title\":\"Account, Orders Status, Card Approved\",\"value\":\"Card Approved\"},\"order_status_card_denied\":{\"title\":\"Account, Orders Status, Card Denied\",\"value\":\"Card Denied\"},\"order_status_third_party_pending\":{\"title\":\"Account, Orders Status, Third Party Pending\",\"value\":\"Third Party Pending\"},\"order_status_third_party_error\":{\"title\":\"Account, Orders Status, Third Party Error\",\"value\":\"Third Party Error\"},\"order_status_third_party_approved\":{\"title\":\"Account, Orders Status, Third Party Approved\",\"value\":\"Third Party Approved\"},\"order_status_ready_for_pickup\":{\"title\":\"Account, Orders Status, Ready for Pickup\",\"value\":\"Ready for Pickup\"},\"order_status_pending_approval\":{\"title\":\"Account, Orders Status, Pending Approval\",\"value\":\"Pending Approval\"},\"order_status_direct_deposit_pending\":{\"title\":\"Account, Orders Status, Direct Deposit Pending\",\"value\":\"Direct Deposit Pending\"},\"order_status_direct_deposit_received\":{\"title\":\"Account, Orders Status, Direct Deposit Received\",\"value\":\"Direct Deposit Received\"},\"order_status_refunded_order\":{\"title\":\"Account, Orders Status, Refunded Order\",\"value\":\"Refunded Order\"},\"order_status_partial_refund\":{\"title\":\"Account, Orders Status, Partial Refund\",\"value\":\"Partial Refund\"},\"order_status_order_picked_up\":{\"title\":\"Account, Orders Status, Order Picked UP\",\"value\":\"Order Picked Up\"},\"no_order_found\":{\"title\":\"Account, No Order Found\",\"value\":\"Order was not found or is not associated with the account you are currently logged into\"},\"return_to_dashboard\":{\"title\":\"Account, Return to Dashboard\",\"value\":\"Return to Account Dashboard\"}}},\"account_subscriptions\":{\"label\":\"Account - Subscriptions\",\"options\":{\"account_subscriptions_title\":{\"title\":\"Account, Subscriptions Title\",\"value\":\"Your Active Subscriptions\"},\"account_canceled_subscriptions_title\":{\"title\":\"Account, Canceled Subscriptions Title\",\"value\":\"Your Canceled Subscriptions\"},\"account_subscriptions_header_1\":{\"title\":\"Account, Subscriptions, Header 1\",\"value\":\"Subscription Name\"},\"account_subscriptions_header_2\":{\"title\":\"Account, Subscriptions, Header 2\",\"value\":\"Next Bill Date\"},\"account_subscriptions_header_3\":{\"title\":\"Account, Subscriptions, Header 3\",\"value\":\"Last Charged\"},\"account_subscriptions_header_4\":{\"title\":\"Account, Subscriptions, Header 4\",\"value\":\"Price\\/Cycle\"},\"account_subscriptions_view_subscription_button\":{\"title\":\"Account, Subscriptions, View Details Button\",\"value\":\"VIEW DETAILS\"},\"account_subscriptions_none_found\":{\"title\":\"Account, Subscriptions, None Found\",\"value\":\"There are no subscriptions associated with your account.\"},\"update_subscription_subtitle\":{\"title\":\"Account, Subscription Details, Credit Card Note\",\"value\":\"You are not required to update your credit card information.\"},\"save_changes_button\":{\"title\":\"Account, Subscription Details, Save Changes Button\",\"value\":\"SAVE CHANGES\"},\"cancel_subscription_button\":{\"title\":\"Account, Subscription Details, Cancel Subscription Button\",\"value\":\"CANCEL SUBSCRIPTION\"},\"cancel_subscription_confirm_text\":{\"title\":\"Account, Subscription Details, Cancel Subscription Button\",\"value\":\"Are you sure you would like to cancel this subscription?\"},\"subscription_details_next_billing\":{\"title\":\"Account, Subscription Details, Next Billing Date\",\"value\":\"Next Billing Date\"},\"subscription_details_last_payment\":{\"title\":\"Account, Subscription Details, Last Payment Date\",\"value\":\"Last Payment Date\"},\"subscription_details_current_billing\":{\"title\":\"Account, Subscription Details, Current Billing Title\",\"value\":\"Current Billing Method\"},\"subscription_details_notice\":{\"title\":\"Account, Subscription Details, User Notice\",\"value\":\"*NOTICE: any changes to the billing method or subscription plan will take effect in the next billing cycle. Pricing changes will be prorated beginning immediately and will be reflected on your next bill.\"},\"subscription_details_past_payments\":{\"title\":\"Account, Subscription Details, Past Payments Title\",\"value\":\"Past Payments\"}}},\"ec_errors\":{\"label\":\"Store Error Text\",\"options\":{\"login_failed\":{\"title\":\"Account, User Login Failed\",\"value\":\"The username or password you entered is incorrect.\"},\"register_email_error\":{\"title\":\"Account Registration Email In Use Error\",\"value\":\"The email you have entered already has an account.\"},\"no_reset_email_found\":{\"title\":\"No Email Found Error\",\"value\":\"The email address you entered was not found.\"},\"personal_information_update_error\":{\"title\":\"Account, updating personal info error\",\"value\":\"An error occurred while updating your personal information.\"},\"password_wrong_current\":{\"title\":\"Wrong password entered Error\",\"value\":\"The current password you entered did not match your account password.\"},\"password_no_match\":{\"title\":\"Passwords do not match Error\",\"value\":\"The new password and the retype new password values did not match.\"},\"password_update_error\":{\"title\":\"password update error\",\"value\":\"An error occurred while updating your password.\"},\"billing_information_error\":{\"title\":\"Account, billing information update error\",\"value\":\"An error occurred while updating your billing information.\"},\"shipping_information_error\":{\"title\":\"Account, shipping information update error\",\"value\":\"An error occurred while updating your shipping information.\"},\"email_exists_error\":{\"title\":\"Cart, create account on checkout, email exists\",\"value\":\"This email already has an account. Please login or use a different email address to continue.\"},\"3dsecure_failed\":{\"title\":\"Cart, Optional, Error message when 3D Secure Fails, Gateway Dependent\",\"value\":\"Your payment could not completed because the 3D Secure method failed. Please try your payment again. If your problem persists, please contact us to have the issue resolved.\"},\"manualbill_failed\":{\"title\":\"Cart, Optional, Manual billing failed, Gateway Dependent\",\"value\":\"Your payment could not completed, manual billing failed. Please try again.\"},\"thirdparty_failed\":{\"title\":\"Cart, Optional, Third Party Failed, Gateway Dependent\",\"value\":\"Your payment could not completed, third party failed. Please try again.\"},\"payment_failed\":{\"title\":\"Cart, Optional, Credit Card Failed, Gateway Dependent\",\"value\":\"Your payment could not completed because your credit card could not be verified. Please check your credit card information and try again. If your problem persists, please contact us to complete payment.\"},\"ideal_failed\":{\"title\":\"Cart, Optional, iDEAL Failed, Gateway Dependent\",\"value\":\"Your payment has failed to complete, please try again or contact us if you continue to have problems.\"},\"already_subscribed\":{\"title\":\"Cart, Optional, Already Subscribed, Gateway Dependent\",\"value\":\"You have already subscribed to this product. Please visit your account to manage your active subscriptions.\"},\"subscription_not_found\":{\"title\":\"Account, Subscription Not Found Error\",\"value\":\"An unknown error occurred in which the subscription you are trying to purchase was not found in our system. Please try again and contact us if you have continued difficulties.\"},\"invalid_address\":{\"title\":\"Cart, Invalid Live Shipping Address\",\"value\":\"Something is wrong with the address you have entered. Please check your city, state, zip, and country to make sure the values are correct.\"},\"activation_error\":{\"title\":\"Account, Activation Error\",\"value\":\"An error has occurred while attempting to activate your account. Please contact us to have the issue resolved.\"},\"not_activated\":{\"title\":\"Account, Not Activated\",\"value\":\"The account you are attempting to access has not been activated. Please activate your account through the activation email sent when you signed up for an account or contact us if you are having problems.\"},\"subscription_update_failed\":{\"title\":\"Account, Subscription Update Error\",\"value\":\"There was a problem while updating your subscription, please try again or contact us if you continue to have problems.\"},\"subscription_cancel_failed\":{\"title\":\"Account, Subscription Cancel Error\",\"value\":\"There was a problem while cancelling your subscription, please try again or contact us if you continue to have problems.\"},\"user_insert_error\":{\"title\":\"Account, Subscription User Insert Error\",\"value\":\"There was a problem creating your user account in our subscription system. Please contact us to complete your transaction.\"},\"subscription_added_failed\":{\"title\":\"Account, Subscription Plan Added Error\",\"value\":\"There was an internal problem while creating this product in our subscription service. Please contact us to complete your transaction.\"},\"subscription_failed\":{\"title\":\"Account, Subscription Creation Error\",\"value\":\"There was a problem while creating your subscription in our system. Please contact us to complete your transaction.\"},\"nets_processing\":{\"title\":\"Account, Nets Error Level Authorize\",\"value\":\"While completing your order at Nets Netaxept, an error occurred. You may complete your order at any time by clicking the button below.\"},\"nets_processing_payment\":{\"title\":\"Account, Nets Error Level Capture\",\"value\":\"Your payment has been authorized at Nets Netaxept, but there seems to have been an issue in our system. Please contact us to complete your order.\"},\"subscription_payment_failed_title\":{\"title\":\"Cart, Subscription Payment Failed\",\"value\":\"Payment Failed\"},\"subscription_payment_failed_text\":{\"title\":\"Cart, Subscription Payment Failed Text\",\"value\":\"The payment has failed for one of your subscriptions. Please click the link below to update your credit card information.\"},\"subscription_payment_failed_link\":{\"title\":\"Cart, Subscription Payment Failed Link\",\"value\":\"Click to Update Billing\"},\"minquantity\":{\"title\":\"Store, Minimum Quantity Error\",\"value\":\"This product requires a minimum purchase quantity.\"},\"missing_gift_card_options\":{\"title\":\"Store, Missing Gift Card Options\",\"value\":\"Missing Gift Card Options\"},\"missing_inquiry_options\":{\"title\":\"Store, Missing Inquiry Options\",\"value\":\"Missing Inquiry Options\"},\"session_expired\":{\"title\":\"Store, Session Expired\",\"value\":\"Your session has expired, please enter your checkout information again to complete your order.\"},\"invalid_vat_number\":{\"title\":\"Cart, Invalid VAT Number Entered\",\"value\":\"Your VAT registration number is invalid. Please leave this field empty or correct the error to continue.\"},\"missing_payment_method\":{\"title\":\"Cart, Select a Payment Method\",\"value\":\"You must select a payment method to continue.\"},\"cart_stock_invalid\":{\"title\":\"Cart, Items are out of stock\",\"value\":\"We apologize for the inconvenience, but some of the items in your cart are either no longer in stock or the quantity you were attempting to purchase exceeds what is left in stock. Please notice that your cart has been updated to reflect what remains in stock. Thank you.\"}}},\"ec_success\":{\"label\":\"Store Success Text\",\"options\":{\"personal_information_updated\":{\"title\":\"Account Personal Information Update Success\",\"value\":\"Your personal information was updated successfully.\"},\"password_updated\":{\"title\":\"Account Personal Information Update Success\",\"value\":\"Your password was updated successfully.\"},\"billing_information_updated\":{\"title\":\"Account Billing Update Success\",\"value\":\"Your billing information was updated successfully.\"},\"shipping_information_updated\":{\"title\":\"Account Shipping Update Success\",\"value\":\"Your shipping information was updated successfully.\"},\"reset_email_sent\":{\"title\":\"Account Email Sent Success\",\"value\":\"Your new password has been sent to your email address.\"},\"cart_account_created\":{\"title\":\"Cart, Create Account, Account Created Success Text\",\"value\":\"Your account has been created, all orders will now be associated with your new account.\"},\"cart_account_free_order\":{\"title\":\"Cart, Order Type, Gift Card, Free Order\",\"value\":\"Free Order\"},\"store_added_to_cart\":{\"title\":\"Store, Added Item to Cart\",\"value\":\"You have successfully added [prod_title] to your cart.\"},\"activation_success\":{\"title\":\"Account, Activation Success\",\"value\":\"You have successfully activated your account\"},\"validation_required\":{\"title\":\"Account, Validation Required\",\"value\":\"You have successfully created an account, but your email needs to be validated. An email has been sent to your account with instructions on how to complete the registration process. Contact us if you have any questions.\"},\"subscription_updated\":{\"title\":\"Account, Subscription Updated\",\"value\":\"Your subscription has been updated successfully.\"},\"subscription_canceled\":{\"title\":\"Account, Subscription Canceled\",\"value\":\"Your subscription has been canceled.\"},\"inquiry_sent\":{\"title\":\"Store, Inquiry Sent\",\"value\":\"Your product inquiry has been sent successfully.\"},\"add_to_cart_success\":{\"title\":\"Store, Added to Cart\",\"value\":\"Successfully Added to your Shopping Cart\"},\"adding_to_cart\":{\"title\":\"Store, Adding to Cart\",\"value\":\"Adding to Cart...\"}}},\"ec_shipping_email\":{\"label\":\"Shipping Emailer\",\"options\":{\"shipping_email_title\":{\"title\":\"Shipping Email Title\",\"value\":\"Shipping Confirmation - Order Number\"},\"shipping_dear\":{\"title\":\"Shipping Dear Customer\",\"value\":\"Dear\"},\"shipping_subtitle1\":{\"title\":\"Order Shipped First Half\",\"value\":\"Your recent order  with the number\"},\"shipping_subtitle2\":{\"title\":\"Order Shipped Second Half\",\"value\":\"has been shipped! You should be receiving it within a short time period.\"},\"shipping_description\":{\"title\":\"Order Shipped Description\",\"value\":\"You may check the status of your order by visiting your carrier\'s website and using the following tracking number.\"},\"shipping_carrier\":{\"title\":\"Order Shipped Carrier\",\"value\":\"Package Carrier:\"},\"shipping_tracking\":{\"title\":\"Order Shipped Tracking Number\",\"value\":\"Package Tracking Number:\"},\"shipping_billing_label\":{\"title\":\"Billing Label\",\"value\":\"Billing Address\"},\"shipping_shipping_label\":{\"title\":\"Shipping Label\",\"value\":\"Shipping Address\"},\"shipping_product\":{\"title\":\"Product Label\",\"value\":\"Product\"},\"shipping_quantity\":{\"title\":\"Quantity Label\",\"value\":\"Qty\"},\"shipping_unit_price\":{\"title\":\"Unit Price Label\",\"value\":\"Unit Price\"},\"shipping_total_price\":{\"title\":\"Total Price Label\",\"value\":\"Ext Price\"},\"shipping_final_note1\":{\"title\":\"Shipping Emailer Final Note Line 1\",\"value\":\"Please double check your order when you receive it and let us know immediately if there are any concerns or issues. We always value your business and hope you enjoy your product.\"},\"shipping_final_note2\":{\"title\":\"Shipping Emailer Final Note Line 2\",\"value\":\"Thank you very much!\"}}},\"ec_login_widget\":{\"label\":\"Login Widget\",\"options\":{\"hello_text\":{\"title\":\"Hello\",\"value\":\"Hello\"},\"dashboard_text\":{\"title\":\"Dashboard\",\"value\":\"Dashboard\"},\"order_history_text\":{\"title\":\"Order History\",\"value\":\"Order History\"},\"billing_info_text\":{\"title\":\"Billing Information\",\"value\":\"Billing Information\"},\"shipping_info_text\":{\"title\":\"Shipping Information\",\"value\":\"Shipping Information\"},\"change_password_text\":{\"title\":\"Change Password\",\"value\":\"Change Password\"},\"sign_out_text\":{\"title\":\"Sign Out\",\"value\":\"Sign Out\"}}},\"ec_minicart_widget\":{\"label\":\"Minicart Widget\",\"options\":{\"subtotal_text\":{\"title\":\"Minicart Widget, Subtotal Text\",\"value\":\"SUBTOTAL\"},\"checkout_button_text\":{\"title\":\"Minicart Widget, Checkout Button Text\",\"value\":\"CHECKOUT\"}}},\"ec_pricepoint_widget\":{\"label\":\"Price Point Widget\",\"options\":{\"less_than\":{\"title\":\"Less Than Text\",\"value\":\"Less Than\"},\"greater_than\":{\"title\":\"Greater Than Text\",\"value\":\"Greater Than\"}}},\"ec_newsletter_popup\":{\"label\":\"Newsletter Popup\",\"options\":{\"signup_form_title\":{\"title\":\"Signup Form Title\",\"value\":\"Newsletter Signup\"},\"signup_form_subtitle\":{\"title\":\"Signup Form Subtitle\",\"value\":\"Sign up now and never miss a thing!\"},\"signup_form_email_placeholder\":{\"title\":\"Signup Form Email Placeholder\",\"value\":\"email address\"},\"signup_form_name_placeholder\":{\"title\":\"Signup Form Name Placeholder\",\"value\":\"your name\"},\"signup_form_button_text\":{\"title\":\"Signup Form Button\",\"value\":\"SUBMIT\"},\"signup_form_success_title\":{\"title\":\"Signup Success Title\",\"value\":\"You\'re Signed Up!\"},\"signup_form_success_subtitle\":{\"title\":\"Signup Success Subtitle\",\"value\":\"Now that you are signed up, we will send you exclusive offers periodically.\"}}},\"ec_abandoned_cart_email\":{\"label\":\"Abandoned Cart Email\",\"options\":{\"email_title\":{\"title\":\"Email Title\",\"value\":\"You Left Items in Your Cart\"},\"something_in_cart\":{\"title\":\"Main Title, Something in Cart\",\"value\":\"THERE\'S SOMETHING IN YOUR CART.\"},\"complete_question\":{\"title\":\"Informational Text\",\"value\":\"Would you like to complete your purchase?\"},\"complete_checkout\":{\"title\":\"Complete Checkout Button\",\"value\":\"Complete Checkout\"}}},\"language_code\":{\"label\":\"Language Code\",\"options\":{\"code\":{\"title\":\"Do Not Change\",\"value\":\"EN\"}}}}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1245, 'ec_option_use_seperate_language_forms', '1', 'yes'),
(1247, 'ec_option_base_theme', '0', 'yes'),
(1249, 'ec_option_base_layout', '0', 'yes'),
(1251, 'ec_option_latest_theme', 'base-responsive-v3', 'yes'),
(1253, 'ec_option_latest_layout', 'base-responsive-v3', 'yes'),
(1255, 'ec_option_caching_on', '1', 'yes'),
(1257, 'ec_option_cache_update_period', '2', 'yes'),
(1259, 'ec_option_cached_date', '0', 'yes'),
(1261, 'ec_option_custom_css', '', 'yes'),
(1263, 'ec_option_css_replacements', 'main_color=#242424,second_color=#6b6b6b,third_color=#adadad,title_color=#0f0f0f,text_color=#141414,link_color=#242424,link_hover_color=#121212,sale_color=#900,backdrop_color=#333,content_bg=#FFF,error_text=#900,error_color=#F1D9D9,error_color2=#FF0606,success_text=#333,success_color=#E6FFE6,success_color2=#6FFF47', 'yes'),
(1265, 'ec_option_font_replacements', 'title_font=Arial, Helvetica, sans-serif:::subtitle_font=Arial, Helvetica, sans-serif:::content_font=Arial, Helvetica, sans-serif', 'yes'),
(1267, 'ec_option_responsive_sizes', 'size_level1_high=479:::size_level2_low=480:::size_level2_high=767:::size_level3_low=768:::size_level3_high=960:::size_level4_low=961:::size_level4_high=1300:::size_level5_low=1301', 'yes'),
(1269, 'ec_option_details_main_color', '#222222', 'yes'),
(1271, 'ec_option_details_second_color', '#666666', 'yes'),
(1273, 'ec_option_use_dark_bg', '0', 'yes'),
(1275, 'ec_option_default_product_type', '1', 'yes'),
(1277, 'ec_option_default_product_image_hover_type', '3', 'yes'),
(1279, 'ec_option_default_product_image_effect_type', 'none', 'yes'),
(1281, 'ec_option_default_quick_view', '0', 'yes'),
(1283, 'ec_option_default_desktop_columns', '3', 'yes'),
(1285, 'ec_option_default_desktop_image_height', '310px', 'yes'),
(1287, 'ec_option_default_laptop_columns', '3', 'yes'),
(1289, 'ec_option_default_laptop_image_height', '310px', 'yes'),
(1291, 'ec_option_default_tablet_wide_columns', '2', 'yes'),
(1293, 'ec_option_default_tablet_wide_image_height', '310px', 'yes'),
(1295, 'ec_option_default_tablet_columns', '2', 'yes'),
(1297, 'ec_option_default_tablet_image_height', '380px', 'yes'),
(1299, 'ec_option_default_smartphone_columns', '1', 'yes'),
(1301, 'ec_option_default_smartphone_image_height', '270px', 'yes'),
(1303, 'ec_option_details_columns_desktop', '2', 'yes'),
(1305, 'ec_option_details_columns_laptop', '2', 'yes'),
(1307, 'ec_option_details_columns_tablet_wide', '1', 'yes'),
(1309, 'ec_option_details_columns_tablet', '1', 'yes'),
(1311, 'ec_option_details_columns_smartphone', '1', 'yes'),
(1313, 'ec_option_cart_columns_desktop', '2', 'yes'),
(1315, 'ec_option_cart_columns_laptop', '2', 'yes'),
(1317, 'ec_option_cart_columns_tablet_wide', '1', 'yes'),
(1319, 'ec_option_cart_columns_tablet', '1', 'yes'),
(1321, 'ec_option_cart_columns_smartphone', '1', 'yes'),
(1323, 'ec_option_email_logo', '', 'yes'),
(1325, 'ec_option_use_facebook_icon', '1', 'yes'),
(1326, 'ec_option_use_twitter_icon', '1', 'yes'),
(1328, 'ec_option_use_delicious_icon', '1', 'yes'),
(1330, 'ec_option_use_myspace_icon', '1', 'yes'),
(1332, 'ec_option_use_linkedin_icon', '1', 'yes'),
(1334, 'ec_option_use_email_icon', '1', 'yes'),
(1336, 'ec_option_use_digg_icon', '1', 'yes'),
(1338, 'ec_option_use_googleplus_icon', '1', 'yes'),
(1340, 'ec_option_use_pinterest_icon', '1', 'yes'),
(1342, 'ec_option_checklist_state', '', 'yes'),
(1344, 'ec_option_checklist_currency', '', 'yes'),
(1346, 'ec_option_checklist_default_payment', '', 'yes'),
(1348, 'ec_option_checklist_guest', '', 'yes'),
(1350, 'ec_option_checklist_shipping_enabled', '', 'yes'),
(1352, 'ec_option_checklist_checkout_notes', '', 'yes'),
(1354, 'ec_option_checklist_billing_registration', '', 'yes'),
(1356, 'ec_option_checklist_google_analytics', '', 'yes'),
(1358, 'ec_option_checklist_manual_billing', '', 'yes'),
(1360, 'ec_option_checklist_third_party_complete', '', 'yes'),
(1362, 'ec_option_checklist_third_party', '', 'yes'),
(1364, 'ec_option_checklist_has_paypal', '', 'yes'),
(1366, 'ec_option_checklist_has_skrill', '', 'yes'),
(1368, 'ec_option_checklist_has_paymentexpress_thirdparty', '', 'yes'),
(1370, 'ec_option_checklist_has_realex_thirdparty', '', 'yes'),
(1372, 'ec_option_checklist_credit_cart_complete', '', 'yes'),
(1374, 'ec_option_checklist_credit_card', '', 'yes'),
(1376, 'ec_option_checklist_credit_card_location', '', 'yes'),
(1378, 'ec_option_checklist_tax_complete', '', 'yes'),
(1380, 'ec_option_checklist_tax_choice', '', 'yes'),
(1382, 'ec_option_checklist_shipping_complete', '', 'yes'),
(1384, 'ec_option_checklist_shipping_choice', '', 'yes'),
(1386, 'ec_checklist_shipping_use_ups', '', 'yes'),
(1388, 'ec_checklist_shipping_use_usps', '', 'yes'),
(1390, 'ec_checklist_shipping_use_fedex', '', 'yes'),
(1392, 'ec_checklist_shipping_use_auspost', '', 'yes'),
(1394, 'ec_checklist_shipping_use_dhl', '', 'yes'),
(1396, 'ec_option_checklist_language_complete', '', 'yes'),
(1398, 'ec_option_checklist_theme_complete', '', 'yes'),
(1400, 'ec_option_checklist_colorization_complete', '', 'yes'),
(1402, 'ec_option_checklist_logo_added_complete', '', 'yes'),
(1404, 'ec_option_checklist_admin_embedded_complete', '', 'yes'),
(1406, 'ec_option_checklist_admin_consoles_complete', '', 'yes'),
(1408, 'ec_option_checklist_page', '', 'yes'),
(1410, 'ec_option_quickbooks_user', '', 'yes'),
(1412, 'ec_option_quickbooks_password', '', 'yes'),
(1414, 'ec_option_wpoptions_version', '4_1_2', 'yes'),
(1416, 'ec_option_db_insert_v4', '1', 'yes'),
(1418, 'ec_option_db_new_version', '58', 'yes'),
(1421, 'ec_option_data_folders_installed', '4_1_2', 'yes'),
(1422, 'widget_ec_categorywidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1423, 'widget_ec_cartwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1424, 'widget_ec_colorwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1425, 'widget_ec_currencywidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1426, 'widget_ec_donationwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1427, 'widget_ec_groupwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1428, 'widget_ec_languagewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1429, 'widget_ec_loginwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1430, 'widget_ec_manufacturerwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1431, 'widget_ec_menuwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1432, 'widget_ec_newsletterwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1433, 'widget_ec_pricepointwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1434, 'widget_ec_productwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1435, 'widget_ec_searchwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1436, 'widget_ec_specialswidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1437, 'ec_option_v3_fix', '1', 'yes'),
(1438, 'ec_option_published_check', '4_1_2', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(75, 32, '_edit_last', '1'),
(76, 32, '_edit_lock', '1536758671:1'),
(77, 33, '_edit_last', '1'),
(78, 33, '_edit_lock', '1536744605:1'),
(79, 34, '_edit_last', '1'),
(80, 34, '_edit_lock', '1536743903:1'),
(81, 35, '_edit_last', '1'),
(82, 35, '_edit_lock', '1536738076:1'),
(85, 36, '_edit_last', '1'),
(86, 36, '_edit_lock', '1536756430:1'),
(88, 38, '_edit_last', '1'),
(89, 38, '_edit_lock', '1536738200:1'),
(90, 39, '_edit_last', '1'),
(91, 39, '_edit_lock', '1536738291:1'),
(92, 40, '_edit_last', '1'),
(93, 40, '_edit_lock', '1536743911:1'),
(99, 43, '_wp_attached_file', '2018/09/wow-legion-pvp-season-1.jpg'),
(100, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:35:\"2018/09/wow-legion-pvp-season-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"wow-legion-pvp-season-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"wow-legion-pvp-season-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"wow-legion-pvp-season-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"wow-legion-pvp-season-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"wow-legion-pvp-season-1-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 44, '_wp_attached_file', '2018/09/World-Of-Warcraft-MMORPG-Free-To-Play.jpg'),
(102, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:49:\"2018/09/World-Of-Warcraft-MMORPG-Free-To-Play.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"World-Of-Warcraft-MMORPG-Free-To-Play-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"World-Of-Warcraft-MMORPG-Free-To-Play-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"World-Of-Warcraft-MMORPG-Free-To-Play-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"World-Of-Warcraft-MMORPG-Free-To-Play-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:49:\"World-Of-Warcraft-MMORPG-Free-To-Play-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 45, '_wp_attached_file', '2018/09/World-of-warcraft-Legion-sur-pc-1920x1080.jpg'),
(104, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:53:\"2018/09/World-of-warcraft-Legion-sur-pc-1920x1080.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"World-of-warcraft-Legion-sur-pc-1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"World-of-warcraft-Legion-sur-pc-1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:53:\"World-of-warcraft-Legion-sur-pc-1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:54:\"World-of-warcraft-Legion-sur-pc-1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:53:\"World-of-warcraft-Legion-sur-pc-1920x1080-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 46, '_wp_attached_file', '2018/09/téléchargement-4.jpeg'),
(106, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:31:\"2018/09/téléchargement-4.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"téléchargement-4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"téléchargement-4-300x168.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 47, '_wp_attached_file', '2018/09/téléchargement-3.jpeg'),
(108, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:31:\"2018/09/téléchargement-3.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"téléchargement-3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"téléchargement-3-300x168.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 48, '_wp_attached_file', '2018/09/téléchargement-2.jpeg'),
(110, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:168;s:4:\"file\";s:31:\"2018/09/téléchargement-2.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"téléchargement-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 49, '_wp_attached_file', '2018/09/téléchargement-1.jpeg'),
(112, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:310;s:6:\"height\";i:163;s:4:\"file\";s:31:\"2018/09/téléchargement-1.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"téléchargement-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"téléchargement-1-300x158.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 50, '_wp_attached_file', '2018/09/téléchargement.jpeg'),
(114, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:29:\"2018/09/téléchargement.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"téléchargement-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"téléchargement-300x168.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 51, '_wp_attached_file', '2018/09/Super_Hunter_Void_03.png'),
(116, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1279;s:6:\"height\";i:720;s:4:\"file\";s:32:\"2018/09/Super_Hunter_Void_03.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Super_Hunter_Void_03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Super_Hunter_Void_03-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Super_Hunter_Void_03-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Super_Hunter_Void_03-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"Super_Hunter_Void_03-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 52, '_wp_attached_file', '2018/09/league_of_legends_wallpaper__hd__by_muamerart-d7a94xg.jpg'),
(118, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1191;s:6:\"height\";i:670;s:4:\"file\";s:65:\"2018/09/league_of_legends_wallpaper__hd__by_muamerart-d7a94xg.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"league_of_legends_wallpaper__hd__by_muamerart-d7a94xg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:65:\"league_of_legends_wallpaper__hd__by_muamerart-d7a94xg-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:65:\"league_of_legends_wallpaper__hd__by_muamerart-d7a94xg-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:66:\"league_of_legends_wallpaper__hd__by_muamerart-d7a94xg-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:65:\"league_of_legends_wallpaper__hd__by_muamerart-d7a94xg-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 53, '_wp_attached_file', '2018/09/images.jpeg'),
(120, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:19:\"2018/09/images.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"images-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"images-300x168.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 54, '_wp_attached_file', '2018/09/heroes-of-the-storm-sanssaint.jpg'),
(122, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1017;s:4:\"file\";s:41:\"2018/09/heroes-of-the-storm-sanssaint.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"heroes-of-the-storm-sanssaint-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"heroes-of-the-storm-sanssaint-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"heroes-of-the-storm-sanssaint-768x407.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:407;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"heroes-of-the-storm-sanssaint-1024x542.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:542;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:41:\"heroes-of-the-storm-sanssaint-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 55, '_wp_attached_file', '2018/09/header.jpg'),
(124, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:460;s:6:\"height\";i:215;s:4:\"file\";s:18:\"2018/09/header.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"header-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 56, '_wp_attached_file', '2018/09/Counter-Strike-Global-Offensive-League-810x400.jpg'),
(126, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:400;s:4:\"file\";s:58:\"2018/09/Counter-Strike-Global-Offensive-League-810x400.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"Counter-Strike-Global-Offensive-League-810x400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"Counter-Strike-Global-Offensive-League-810x400-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"Counter-Strike-Global-Offensive-League-810x400-768x379.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:379;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:58:\"Counter-Strike-Global-Offensive-League-810x400-500x400.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 57, '_wp_attached_file', '2018/09/clashbannerimage.jpg'),
(128, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:28:\"2018/09/clashbannerimage.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"clashbannerimage-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"clashbannerimage-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"clashbannerimage-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"clashbannerimage-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"clashbannerimage-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 58, '_wp_attached_file', '2018/09/20120614125741J-600x436.jpg'),
(130, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:436;s:4:\"file\";s:35:\"2018/09/20120614125741J-600x436.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"20120614125741J-600x436-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"20120614125741J-600x436-300x218.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"20120614125741J-600x436-500x436.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 59, '_wp_attached_file', '2018/09/7722552_ef300364-5a61-11e8-9d8c-dfa9d3cb9e59-1_1000x625.jpg'),
(132, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:625;s:4:\"file\";s:67:\"2018/09/7722552_ef300364-5a61-11e8-9d8c-dfa9d3cb9e59-1_1000x625.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:67:\"7722552_ef300364-5a61-11e8-9d8c-dfa9d3cb9e59-1_1000x625-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:67:\"7722552_ef300364-5a61-11e8-9d8c-dfa9d3cb9e59-1_1000x625-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:67:\"7722552_ef300364-5a61-11e8-9d8c-dfa9d3cb9e59-1_1000x625-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:67:\"7722552_ef300364-5a61-11e8-9d8c-dfa9d3cb9e59-1_1000x625-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 60, '_wp_attached_file', '2018/09/29963.jpeg'),
(134, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:590;s:6:\"height\";i:336;s:4:\"file\";s:18:\"2018/09/29963.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"29963-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"29963-300x171.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"29963-500x336.jpeg\";s:5:\"width\";i:500;s:6:\"height\";i:336;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 61, '_wp_attached_file', '2018/09/61MzXqYNi6L._SS500.jpg'),
(136, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2018/09/61MzXqYNi6L._SS500.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"61MzXqYNi6L._SS500-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"61MzXqYNi6L._SS500-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 62, '_wp_attached_file', '2018/09/t2_vs_logo.jpg'),
(138, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:310;s:4:\"file\";s:22:\"2018/09/t2_vs_logo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"t2_vs_logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"t2_vs_logo-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"t2_vs_logo-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 63, '_wp_attached_file', '2018/09/Esports-top4.jpg'),
(140, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:860;s:6:\"height\";i:491;s:4:\"file\";s:24:\"2018/09/Esports-top4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Esports-top4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Esports-top4-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Esports-top4-768x438.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:438;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"Esports-top4-500x491.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:491;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 64, '_wp_attached_file', '2018/09/eSport-Heroes-of-the-Storm.jpg'),
(142, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:38:\"2018/09/eSport-Heroes-of-the-Storm.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"eSport-Heroes-of-the-Storm-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"eSport-Heroes-of-the-Storm-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"eSport-Heroes-of-the-Storm-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:38:\"eSport-Heroes-of-the-Storm-500x450.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 65, '_wp_attached_file', '2018/09/esport-808x454.jpg'),
(144, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:808;s:6:\"height\";i:454;s:4:\"file\";s:26:\"2018/09/esport-808x454.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"esport-808x454-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"esport-808x454-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"esport-808x454-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"esport-808x454-500x454.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:454;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 66, '_wp_attached_file', '2018/09/cybe.jpg'),
(146, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:506;s:4:\"file\";s:16:\"2018/09/cybe.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"cybe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"cybe-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"cybe-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"cybe-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(147, 67, '_wp_attached_file', '2018/09/6Y8JQ83I8E1O1517352911655.jpg'),
(148, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:37:\"2018/09/6Y8JQ83I8E1O1517352911655.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"6Y8JQ83I8E1O1517352911655-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"6Y8JQ83I8E1O1517352911655-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"6Y8JQ83I8E1O1517352911655-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"6Y8JQ83I8E1O1517352911655-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:37:\"6Y8JQ83I8E1O1517352911655-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 77, '_edit_last', '1'),
(222, 77, '_edit_lock', '1536742307:1'),
(223, 77, '_thumbnail_id', '52'),
(225, 78, '_edit_last', '1'),
(226, 78, '_edit_lock', '1536740660:1'),
(227, 78, '_thumbnail_id', '53'),
(229, 79, '_edit_last', '1'),
(230, 79, '_edit_lock', '1536740637:1'),
(233, 79, '_thumbnail_id', '44'),
(235, 81, '_edit_last', '1'),
(236, 81, '_edit_lock', '1536755246:1'),
(237, 81, '_thumbnail_id', '47'),
(240, 82, '_edit_last', '1'),
(241, 82, '_edit_lock', '1536754891:1'),
(242, 82, '_thumbnail_id', '56'),
(244, 85, '_wp_attached_file', '2018/09/Batman_66_-_Adam_West_as_Batman_2.jpg'),
(245, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:999;s:6:\"height\";i:1384;s:4:\"file\";s:45:\"2018/09/Batman_66_-_Adam_West_as_Batman_2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"Batman_66_-_Adam_West_as_Batman_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"Batman_66_-_Adam_West_as_Batman_2-217x300.jpg\";s:5:\"width\";i:217;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"Batman_66_-_Adam_West_as_Batman_2-768x1064.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1064;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"Batman_66_-_Adam_West_as_Batman_2-739x1024.jpg\";s:5:\"width\";i:739;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:45:\"Batman_66_-_Adam_West_as_Batman_2-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(246, 84, '_edit_last', '1'),
(247, 84, '_edit_lock', '1536818238:1'),
(265, 90, '_edit_last', '1'),
(266, 90, '_edit_lock', '1536818202:1'),
(267, 91, '_edit_last', '1'),
(268, 91, '_edit_lock', '1536751931:1'),
(280, 32, '_wp_trash_meta_status', 'publish'),
(281, 32, '_wp_trash_meta_time', '1536756786'),
(282, 32, '_wp_desired_post_slug', 'accueil'),
(283, 36, '_wp_trash_meta_status', 'publish'),
(284, 36, '_wp_trash_meta_time', '1536756786'),
(285, 36, '_wp_desired_post_slug', 'actualites'),
(286, 33, '_wp_trash_meta_status', 'publish'),
(287, 33, '_wp_trash_meta_time', '1536756787'),
(288, 33, '_wp_desired_post_slug', 'boutique'),
(289, 35, '_wp_trash_meta_status', 'publish'),
(290, 35, '_wp_trash_meta_time', '1536756787'),
(291, 35, '_wp_desired_post_slug', 'contact'),
(292, 34, '_wp_trash_meta_status', 'publish'),
(293, 34, '_wp_trash_meta_time', '1536756787'),
(294, 34, '_wp_desired_post_slug', 'les-tournois'),
(295, 38, '_wp_trash_meta_status', 'publish'),
(296, 38, '_wp_trash_meta_time', '1536756787'),
(297, 38, '_wp_desired_post_slug', 'login-sign-up'),
(298, 39, '_wp_trash_meta_status', 'publish'),
(299, 39, '_wp_trash_meta_time', '1536756788'),
(300, 39, '_wp_desired_post_slug', 'membres'),
(301, 40, '_wp_trash_meta_status', 'publish'),
(302, 40, '_wp_trash_meta_time', '1536756788'),
(303, 40, '_wp_desired_post_slug', 'teams'),
(304, 94, '_menu_item_type', 'post_type_archive'),
(305, 94, '_menu_item_menu_item_parent', '0'),
(306, 94, '_menu_item_object_id', '-14'),
(307, 94, '_menu_item_object', 'tournament'),
(308, 94, '_menu_item_target', ''),
(309, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(310, 94, '_menu_item_xfn', ''),
(311, 94, '_menu_item_url', ''),
(367, 101, '_edit_last', '1'),
(368, 101, '_edit_lock', '1536767793:1'),
(369, 102, '_menu_item_type', 'post_type'),
(370, 102, '_menu_item_menu_item_parent', '0'),
(371, 102, '_menu_item_object_id', '101'),
(372, 102, '_menu_item_object', 'page'),
(373, 102, '_menu_item_target', ''),
(374, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(375, 102, '_menu_item_xfn', ''),
(376, 102, '_menu_item_url', ''),
(387, 105, '_edit_last', '1'),
(388, 105, '_edit_lock', '1536820154:1'),
(389, 90, '_wp_old_slug', 'tournois-de-noel'),
(390, 106, '_edit_lock', '1536838769:1'),
(391, 106, '_edit_last', '1'),
(392, 107, '_wp_attached_file', '2018/09/Batman_66_-_Adam_West_as_Batman_2.jpg'),
(393, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:999;s:6:\"height\";i:1384;s:4:\"file\";s:45:\"2018/09/Batman_66_-_Adam_West_as_Batman_2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"Batman_66_-_Adam_West_as_Batman_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"Batman_66_-_Adam_West_as_Batman_2-217x300.jpg\";s:5:\"width\";i:217;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"Batman_66_-_Adam_West_as_Batman_2-768x1064.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1064;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"Batman_66_-_Adam_West_as_Batman_2-739x1024.jpg\";s:5:\"width\";i:739;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:45:\"Batman_66_-_Adam_West_as_Batman_2-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(394, 106, '_thumbnail_id', '107'),
(395, 108, '_edit_lock', '1536763856:1'),
(396, 108, '_edit_last', '1'),
(397, 109, '_wp_attached_file', '2018/09/Old_goku_by_totyjarcor-d5rvb1q.jpg'),
(398, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:496;s:6:\"height\";i:479;s:4:\"file\";s:42:\"2018/09/Old_goku_by_totyjarcor-d5rvb1q.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"Old_goku_by_totyjarcor-d5rvb1q-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Old_goku_by_totyjarcor-d5rvb1q-300x290.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(399, 108, '_thumbnail_id', '109'),
(400, 111, '_edit_lock', '1536763895:1'),
(401, 111, '_edit_last', '1'),
(402, 112, '_wp_attached_file', '2018/09/olympique-marseille-820x360.png'),
(403, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:820;s:6:\"height\";i:360;s:4:\"file\";s:39:\"2018/09/olympique-marseille-820x360.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"olympique-marseille-820x360-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"olympique-marseille-820x360-300x132.png\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"olympique-marseille-820x360-768x337.png\";s:5:\"width\";i:768;s:6:\"height\";i:337;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:39:\"olympique-marseille-820x360-500x360.png\";s:5:\"width\";i:500;s:6:\"height\";i:360;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(404, 111, '_thumbnail_id', '112'),
(405, 113, '_edit_lock', '1536819864:1'),
(406, 113, '_edit_last', '1'),
(407, 105, '_wp_page_template', 'template-parts/contact-form.php'),
(408, 115, '_edit_lock', '1536764974:1'),
(409, 116, '_edit_lock', '1536765011:1'),
(410, 119, '_edit_lock', '1536765106:1'),
(411, 120, '_edit_lock', '1536766227:1'),
(412, 120, '_edit_last', '1'),
(413, 120, '_wp_page_template', 'template-parts/contact-form.php'),
(414, 120, '_wp_trash_meta_status', 'publish'),
(415, 120, '_wp_trash_meta_time', '1536766468'),
(416, 120, '_wp_desired_post_slug', 'contact-2'),
(417, 121, '_edit_lock', '1536844073:1'),
(418, 121, '_edit_last', '1'),
(419, 121, '_wp_page_template', 'default'),
(420, 124, '_menu_item_type', 'post_type'),
(421, 124, '_menu_item_menu_item_parent', '0'),
(422, 124, '_menu_item_object_id', '105'),
(423, 124, '_menu_item_object', 'page'),
(424, 124, '_menu_item_target', ''),
(425, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(426, 124, '_menu_item_xfn', ''),
(427, 124, '_menu_item_url', ''),
(429, 125, '_edit_lock', '1536774234:1'),
(430, 127, '_edit_lock', '1536819635:1'),
(431, 128, '_edit_lock', '1536838376:1'),
(432, 129, '_edit_lock', '1536819656:1'),
(433, 130, '_edit_lock', '1536832069:1'),
(434, 130, '_edit_last', '1'),
(436, 106, '_wp_trash_meta_status', 'publish'),
(437, 106, '_wp_trash_meta_time', '1536838913'),
(438, 106, '_wp_desired_post_slug', 'tournoi-des-trous-de-balle'),
(439, 131, '_edit_lock', '1536838930:1'),
(440, 131, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2018-09-10 08:47:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 08:47:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cours/Wordpress/Projet/ATTENTION_DOSSIER_PROJET/Project-E-Sport-Arena/Wp-Arena/wp/?p=4', 0, 'post', '', 0),
(6, 1, '2018-09-10 11:20:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 11:20:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cours/Wordpress/Projet/ATTENTION_DOSSIER_PROJET/Project-E-Sport-Arena/Wp-Arena/?p=6', 0, 'post', '', 0),
(32, 1, '2018-09-12 07:37:36', '2018-09-12 07:37:36', 'Arena Esport est une agence de recrutement unique en son genre basée sur différents jeux. Nous travaillons à vous trouver l\'équipe qui répond le mieux à vos attentes. Il suffit de déposer un formulaire et d\'attendre votre équipe !', 'Accueil', '', 'trash', 'closed', 'closed', '', 'accueil__trashed', '', '', '2018-09-12 12:53:06', '2018-09-12 12:53:06', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-09-12 07:39:36', '2018-09-12 07:39:36', 'Je suis une page de billetterie', 'Boutique', '', 'trash', 'closed', 'closed', '', 'boutique__trashed', '', '', '2018-09-12 12:53:07', '2018-09-12 12:53:07', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-09-12 07:41:34', '2018-09-12 07:41:34', 'Je suis une page qui contient tout les tournois', 'Les tournois', '', 'trash', 'closed', 'closed', '', 'les-tournois__trashed', '', '', '2018-09-12 12:53:07', '2018-09-12 12:53:07', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-09-12 07:43:23', '2018-09-12 07:43:23', 'Je suis la page contact', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2018-09-12 12:53:07', '2018-09-12 12:53:07', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-09-12 07:44:13', '2018-09-12 07:44:13', 'Je suis la page qui contient toutes les actualités', 'Actualités', '', 'trash', 'closed', 'closed', '', 'actualites__trashed', '', '', '2018-09-12 12:53:06', '2018-09-12 12:53:06', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=36', 0, 'page', '', 0),
(38, 1, '2018-09-12 07:45:37', '2018-09-12 07:45:37', '<span style=\"font-weight: 400;\">Je suis une page de formulaire d’inscription pour sign\r\n</span><span style=\"font-weight: 400;\">une page de formulaire de connexion pour login\r\n</span><span style=\"font-weight: 400;\">Déconnexion </span>', 'Login/ sign up', '', 'trash', 'closed', 'closed', '', 'login-sign-up__trashed', '', '', '2018-09-12 12:53:07', '2018-09-12 12:53:07', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-09-12 07:46:43', '2018-09-12 07:46:43', 'Je suis une page pour voir les listes des membres et rechercher des membres', 'Membres', '', 'trash', 'closed', 'closed', '', 'membres__trashed', '', '', '2018-09-12 12:53:08', '2018-09-12 12:53:08', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=39', 0, 'page', '', 0),
(40, 1, '2018-09-12 07:48:15', '2018-09-12 07:48:15', 'Je suis une page pour avoir la liste des teams et pour  en rechercher', 'Teams', '', 'trash', 'closed', 'closed', '', 'teams__trashed', '', '', '2018-09-12 12:53:08', '2018-09-12 12:53:08', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-09-12 07:48:19', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 07:48:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=41', 0, 'page', '', 0),
(43, 1, '2018-09-12 07:54:27', '2018-09-12 07:54:27', '', 'wow-legion-pvp-season-1', '', 'inherit', 'open', 'closed', '', 'wow-legion-pvp-season-1', '', '', '2018-09-12 07:54:27', '2018-09-12 07:54:27', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/wow-legion-pvp-season-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-09-12 07:54:29', '2018-09-12 07:54:29', '', 'World-Of-Warcraft-MMORPG-Free-To-Play', '', 'inherit', 'open', 'closed', '', 'world-of-warcraft-mmorpg-free-to-play', '', '', '2018-09-12 07:54:29', '2018-09-12 07:54:29', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/World-Of-Warcraft-MMORPG-Free-To-Play.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-09-12 07:54:31', '2018-09-12 07:54:31', '', 'World-of-warcraft-Legion-sur-pc-1920x1080', '', 'inherit', 'open', 'closed', '', 'world-of-warcraft-legion-sur-pc-1920x1080', '', '', '2018-09-12 07:54:31', '2018-09-12 07:54:31', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/World-of-warcraft-Legion-sur-pc-1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-09-12 07:54:33', '2018-09-12 07:54:33', '', 'téléchargement (4)', '', 'inherit', 'open', 'closed', '', 'telechargement-4', '', '', '2018-09-12 07:54:33', '2018-09-12 07:54:33', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/téléchargement-4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-09-12 07:54:35', '2018-09-12 07:54:35', '', 'téléchargement (3)', '', 'inherit', 'open', 'closed', '', 'telechargement-3', '', '', '2018-09-12 07:54:35', '2018-09-12 07:54:35', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/téléchargement-3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-09-12 07:54:36', '2018-09-12 07:54:36', '', 'téléchargement (2)', '', 'inherit', 'open', 'closed', '', 'telechargement-2', '', '', '2018-09-12 07:54:36', '2018-09-12 07:54:36', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/téléchargement-2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-09-12 07:54:38', '2018-09-12 07:54:38', '', 'téléchargement (1)', '', 'inherit', 'open', 'closed', '', 'telechargement-1', '', '', '2018-09-12 07:54:38', '2018-09-12 07:54:38', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/téléchargement-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-09-12 07:54:39', '2018-09-12 07:54:39', '', 'téléchargement', '', 'inherit', 'open', 'closed', '', 'telechargement', '', '', '2018-09-12 07:54:39', '2018-09-12 07:54:39', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/téléchargement.jpeg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-09-12 07:54:41', '2018-09-12 07:54:41', '', 'Super_Hunter_Void_03', '', 'inherit', 'open', 'closed', '', 'super_hunter_void_03', '', '', '2018-09-12 07:54:41', '2018-09-12 07:54:41', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/Super_Hunter_Void_03.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2018-09-12 07:54:43', '2018-09-12 07:54:43', '', 'league_of_legends_wallpaper__hd__by_muamerart-d7a94xg', '', 'inherit', 'open', 'closed', '', 'league_of_legends_wallpaper__hd__by_muamerart-d7a94xg', '', '', '2018-09-12 07:54:43', '2018-09-12 07:54:43', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/league_of_legends_wallpaper__hd__by_muamerart-d7a94xg.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-09-12 07:54:45', '2018-09-12 07:54:45', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2018-09-12 07:54:45', '2018-09-12 07:54:45', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/images.jpeg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-09-12 07:54:47', '2018-09-12 07:54:47', '', 'heroes-of-the-storm-sanssaint', '', 'inherit', 'open', 'closed', '', 'heroes-of-the-storm-sanssaint', '', '', '2018-09-12 07:54:47', '2018-09-12 07:54:47', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/heroes-of-the-storm-sanssaint.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-09-12 07:54:49', '2018-09-12 07:54:49', '', 'header', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2018-09-12 07:54:49', '2018-09-12 07:54:49', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/header.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-09-12 07:54:50', '2018-09-12 07:54:50', '', 'Counter-Strike-Global-Offensive-League-810x400', '', 'inherit', 'open', 'closed', '', 'counter-strike-global-offensive-league-810x400', '', '', '2018-09-12 07:54:50', '2018-09-12 07:54:50', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/Counter-Strike-Global-Offensive-League-810x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-09-12 07:54:52', '2018-09-12 07:54:52', '', 'clashbannerimage', '', 'inherit', 'open', 'closed', '', 'clashbannerimage', '', '', '2018-09-12 07:54:52', '2018-09-12 07:54:52', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/clashbannerimage.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-09-12 07:54:54', '2018-09-12 07:54:54', '', '20120614125741J-600x436', '', 'inherit', 'open', 'closed', '', '20120614125741j-600x436', '', '', '2018-09-12 07:54:54', '2018-09-12 07:54:54', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/20120614125741J-600x436.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-09-12 07:54:56', '2018-09-12 07:54:56', '', '7722552_ef300364-5a61-11e8-9d8c-dfa9d3cb9e59-1_1000x625', '', 'inherit', 'open', 'closed', '', '7722552_ef300364-5a61-11e8-9d8c-dfa9d3cb9e59-1_1000x625', '', '', '2018-09-12 07:54:56', '2018-09-12 07:54:56', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/7722552_ef300364-5a61-11e8-9d8c-dfa9d3cb9e59-1_1000x625.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-09-12 07:54:57', '2018-09-12 07:54:57', '', '29963', '', 'inherit', 'open', 'closed', '', '29963', '', '', '2018-09-12 07:54:57', '2018-09-12 07:54:57', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/29963.jpeg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-09-12 07:54:59', '2018-09-12 07:54:59', '', '61MzXqYNi6L._SS500', '', 'inherit', 'open', 'closed', '', '61mzxqyni6l-_ss500', '', '', '2018-09-12 07:54:59', '2018-09-12 07:54:59', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/61MzXqYNi6L._SS500.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2018-09-12 07:55:11', '2018-09-12 07:55:11', '', 't2_vs_logo', '', 'inherit', 'open', 'closed', '', 't2_vs_logo', '', '', '2018-09-12 07:55:11', '2018-09-12 07:55:11', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/t2_vs_logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-09-12 07:55:13', '2018-09-12 07:55:13', '', 'Esports-top4', '', 'inherit', 'open', 'closed', '', 'esports-top4', '', '', '2018-09-12 07:55:13', '2018-09-12 07:55:13', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/Esports-top4.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-09-12 07:55:14', '2018-09-12 07:55:14', '', 'eSport-Heroes-of-the-Storm', '', 'inherit', 'open', 'closed', '', 'esport-heroes-of-the-storm', '', '', '2018-09-12 07:55:14', '2018-09-12 07:55:14', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/eSport-Heroes-of-the-Storm.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-09-12 07:55:16', '2018-09-12 07:55:16', '', 'esport-808x454', '', 'inherit', 'open', 'closed', '', 'esport-808x454', '', '', '2018-09-12 07:55:16', '2018-09-12 07:55:16', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/esport-808x454.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-09-12 07:55:18', '2018-09-12 07:55:18', '', 'cybe', '', 'inherit', 'open', 'closed', '', 'cybe', '', '', '2018-09-12 07:55:18', '2018-09-12 07:55:18', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/cybe.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-09-12 07:55:19', '2018-09-12 07:55:19', '', '6Y8JQ83I8E1O1517352911655', '', 'inherit', 'open', 'closed', '', '6y8jq83i8e1o1517352911655', '', '', '2018-09-12 07:55:19', '2018-09-12 07:55:19', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/6Y8JQ83I8E1O1517352911655.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-09-12 07:57:59', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-12 07:57:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?p=76', 0, 'post', '', 0),
(77, 1, '2018-09-12 08:06:38', '2018-09-12 08:06:38', 'Gagnez le trophée dans Clash, le nouveau mode de tournoi pour les équipes. Trouvez des coéquipiers, écrasez vos adversaires dans des matchs à élimination directe et remportez des tonnes de récompenses. Rassemblez votre équipe !', 'Cinq au combat. Unis pour la victoire.', '', 'publish', 'open', 'open', '', 'cinq-au-combat-unis-pour-la-victoire', '', '', '2018-09-12 08:26:58', '2018-09-12 08:26:58', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?p=77', 0, 'post', '', 0),
(78, 1, '2018-09-12 08:10:05', '2018-09-12 08:10:05', 'Le programme e-sport de Heroes est bien rempli : l’Horizon Clash, l’Intercontinental Clash, le Choc de mi-saison, la Mêlée Ouest et la Mêlée Est nous attendent encore avant la finale du HGC de cette année. Suivez l’e-sport de Heroes sur Facebook, Twitter et YouTube pour ne rien manquer de l’actualité du HGC.', 'La finale du HGC revient à la BlizzCon', '', 'publish', 'open', 'open', '', 'la-finale-du-hgc-revient-a-la-blizzcon', '', '', '2018-09-12 08:26:37', '2018-09-12 08:26:37', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?p=78', 0, 'post', '', 0),
(79, 1, '2018-09-12 08:12:37', '2018-09-12 08:12:37', 'L’eSport de World of Warc<em>raft</em> gagne des niveaux ! Cette année, nous vous proposons de nouvelles façons de participer, un plus grand nombre d’équipes et toujours plus d’action en direct que vous pourrez suivre depuis chez vous. Alors, si vous avez l’esprit de compétition, lisez ce qui suit pour découvrir un aperçu de ces extraordinaires nouveautés ! Votre communauté, votre équipe et vous-même aurez de nombreuses opportunités de participer !', 'Championnat du monde d’arène World of Warcraft 2018 : décrochez le pactole !', '', 'publish', 'open', 'open', '', 'championnat-du-monde-darene-world-of-warcraft-2017-decrochez-le-pactole', '', '', '2018-09-12 08:26:14', '2018-09-12 08:26:14', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?p=79', 0, 'post', '', 0),
(81, 1, '2018-09-12 08:15:59', '2018-09-12 08:15:59', 'Profitez de l\'expérience Destiny 2 : Renégats ultime avec l\'édition numérique deluxe, qui comprend Renégats, le Passe annuel (récompenses saisonnières supplémentaires et trois contenus à venir), plus le set légendaire des Éveillés.', 'Destiny 2 Renégats', '', 'publish', 'open', 'open', '', 'destiny-2-renegats', '', '', '2018-09-12 08:25:46', '2018-09-12 08:25:46', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?p=81', 0, 'post', '', 0),
(82, 1, '2018-09-12 08:18:42', '2018-09-12 08:18:42', 'Alors que l\'ESWC fête ses 15 ans cette année, Millenium.org vous propose de revenir sur l\'histoire de l\'une des équipes les plus importantes de l\'esport tricolore, les btb (\"beat off the best\") ! Championnes du monde en 2006, rien que ça ! Elle revienne !', 'Counter-Strike : la folle histoire des btb !', '', 'publish', 'open', 'open', '', 'counter-strike-la-folle-histoire-des-btb', '', '', '2018-09-12 08:25:25', '2018-09-12 08:25:25', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?p=82', 0, 'post', '', 0),
(83, 1, '2018-09-12 08:18:49', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-12 08:18:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?p=83', 0, 'post', '', 0),
(84, 1, '2018-09-12 08:21:19', '2018-09-12 08:21:19', 'C\'est à partir d\'aujourd\'hui que les possesseurs de Call of Duty WW2 sur PS4 peuvent se procurer le DLC \"United Front\". Histoire de faire correctement les choses, Activision a mis en ligne un trailer de lancement qui permet de se rappeler que cette extension contient trois nouvelles maps pour le multi', 'CALL OF DUTY WW2', '', 'publish', 'open', 'open', '', 'call-of-duty-ww2', '', '', '2018-09-12 08:24:52', '2018-09-12 08:24:52', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?p=84', 0, 'post', '', 0),
(85, 1, '2018-09-12 08:20:03', '2018-09-12 08:20:03', '', 'Batman_\'66_-_Adam_West_as_Batman_2', '', 'inherit', 'open', 'closed', '', 'batman_66_-_adam_west_as_batman_2', '', '', '2018-09-12 08:20:03', '2018-09-12 08:20:03', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/Batman_66_-_Adam_West_as_Batman_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-09-12 09:42:48', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 09:42:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?post_type=acf-field-group&p=86', 0, 'acf-field-group', '', 0),
(87, 1, '2018-09-12 09:57:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 09:57:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=87', 0, 'tournament', '', 0),
(88, 1, '2018-09-12 09:58:39', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 09:58:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=88', 0, 'tournament', '', 0),
(89, 1, '2018-09-12 10:11:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 10:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=89', 0, 'tournament', '', 0),
(90, 1, '2018-09-12 11:33:18', '2018-09-12 11:33:18', '<div>\r\n<div>Some quick example text to build on the card title and make up the bulk of the card\'s</div>\r\n<div>content</div>\r\n</div>', 'Tournoi de Noël', '', 'publish', 'closed', 'closed', '', 'tournoi-de-noel', '', '', '2018-09-12 14:51:24', '2018-09-12 14:51:24', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&#038;p=90', 0, 'tournament', '', 0),
(91, 1, '2018-09-12 11:33:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 11:33:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=91', 0, 'tournament', '', 0),
(92, 1, '2018-09-12 12:41:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 12:41:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=acf-field-group&p=92', 0, 'acf-field-group', '', 0),
(94, 1, '2018-09-12 12:54:49', '2018-09-12 12:54:49', 'tournoi de l’arena', 'Tournois', '', 'publish', 'closed', 'closed', '', 'tournois', '', '', '2018-09-12 17:38:34', '2018-09-12 17:38:34', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?p=94', 2, 'nav_menu_item', '', 0),
(101, 1, '2018-09-12 12:56:33', '2018-09-12 12:56:33', '', 'Actualités', '', 'publish', 'closed', 'closed', '', 'actualites', '', '', '2018-09-12 12:56:33', '2018-09-12 12:56:33', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?page_id=101', 0, 'page', '', 0),
(102, 1, '2018-09-12 12:56:57', '2018-09-12 12:56:57', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2018-09-12 17:38:34', '2018-09-12 17:38:34', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?p=102', 1, 'nav_menu_item', '', 0),
(104, 1, '2018-09-12 14:19:32', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 14:19:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=104', 0, 'page', '', 0),
(105, 1, '2018-09-12 14:22:51', '2018-09-12 14:22:51', '', 'Nous contacter', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-09-13 06:31:34', '2018-09-13 06:31:34', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=105', 0, 'page', '', 0),
(106, 1, '2018-09-12 14:52:21', '2018-09-12 14:52:21', 'Quoi de mieux qu\'un tournoi de beer pong pour se chauffer avant un tournoi ?', 'Tournoi de beer-pong virtuel', '', 'trash', 'closed', 'closed', '', 'tournoi-des-trous-de-balle__trashed', '', '', '2018-09-13 11:41:53', '2018-09-13 11:41:53', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&#038;p=106', 0, 'tournament', '', 0),
(107, 1, '2018-09-12 14:52:14', '2018-09-12 14:52:14', '', 'Batman_\'66_-_Adam_West_as_Batman_2', '', 'inherit', 'open', 'closed', '', 'batman_66_-_adam_west_as_batman_2-2', '', '', '2018-09-12 14:52:14', '2018-09-12 14:52:14', '', 106, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/Batman_66_-_Adam_West_as_Batman_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-09-12 14:53:12', '2018-09-12 14:53:12', 'Sangoku et les autres au tournoi DBZ Fighter Z !!!\r\n\r\nKA-ME-HA-ME-HA', 'Budokai tenkaichi', '', 'publish', 'closed', 'closed', '', 'budokai-tenkaichi', '', '', '2018-09-12 14:53:12', '2018-09-12 14:53:12', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&#038;p=108', 0, 'tournament', '', 0),
(109, 1, '2018-09-12 14:53:05', '2018-09-12 14:53:05', '', 'Old_goku_by_totyjarcor-d5rvb1q', '', 'inherit', 'open', 'closed', '', 'old_goku_by_totyjarcor-d5rvb1q', '', '', '2018-09-12 14:53:05', '2018-09-12 14:53:05', '', 108, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/Old_goku_by_totyjarcor-d5rvb1q.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-09-12 14:53:23', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 14:53:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=110', 0, 'tournament', '', 0),
(111, 1, '2018-09-12 14:53:57', '2018-09-12 14:53:57', '1 Vs 1 ou 2 Vs 2', 'Tournoi Fifa 17', '', 'publish', 'closed', 'closed', '', 'tournoi-fifa-17', '', '', '2018-09-12 14:53:57', '2018-09-12 14:53:57', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&#038;p=111', 0, 'tournament', '', 0),
(112, 1, '2018-09-12 14:53:52', '2018-09-12 14:53:52', '', 'olympique-marseille-820x360', '', 'inherit', 'open', 'closed', '', 'olympique-marseille-820x360', '', '', '2018-09-12 14:53:52', '2018-09-12 14:53:52', '', 111, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/content/uploads/2018/09/olympique-marseille-820x360.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2018-09-12 14:54:31', '2018-09-12 14:54:31', 'Affrontez les champions du codage issus de la prestigieuse école O\'Clock !\r\n\r\nRound 1, GO !', 'Tournoi oArena', '', 'publish', 'closed', 'closed', '', 'tournoi-oarena', '', '', '2018-09-12 14:54:31', '2018-09-12 14:54:31', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&#038;p=113', 0, 'tournament', '', 0),
(114, 1, '2018-09-12 15:09:00', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 15:09:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=114', 0, 'tournament', '', 0),
(115, 1, '2018-09-12 15:09:18', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 15:09:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=115', 0, 'tournament', '', 0),
(116, 1, '2018-09-12 15:09:39', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 15:09:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=116', 0, 'tournament', '', 0),
(117, 1, '2018-09-12 15:09:43', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-12 15:09:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?p=117', 0, 'post', '', 0),
(118, 1, '2018-09-12 15:10:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 15:10:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=118', 0, 'tournament', '', 0),
(119, 1, '2018-09-12 15:10:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 15:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=119', 0, 'tournament', '', 0),
(120, 1, '2018-09-12 15:32:44', '2018-09-12 15:32:44', '', 'contact 2', '', 'trash', 'closed', 'closed', '', 'contact-2__trashed', '', '', '2018-09-12 15:34:28', '2018-09-12 15:34:28', '', 0, 'http://localhost/Projet/Project-E-Sport-Arena/Wp-Arena/?page_id=120', 0, 'page', '', 0),
(121, 1, '2018-09-12 16:00:10', '2018-09-12 16:00:10', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2018-09-13 12:58:50', '2018-09-13 12:58:50', '', 0, 'http://localhost/Cours/Wordpress/Projet/Projet-master/Project-E-Sport-Arena/Wp-Arena/?page_id=121', 0, 'page', '', 0),
(122, 1, '2018-09-12 15:36:42', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 15:36:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cours/Wordpress/Projet/Projet-master/Project-E-Sport-Arena/Wp-Arena/?page_id=122', 0, 'page', '', 0),
(123, 1, '2018-09-12 17:33:44', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 17:33:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?page_id=123', 0, 'page', '', 0),
(124, 1, '2018-09-12 17:38:34', '2018-09-12 17:38:34', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2018-09-12 17:38:34', '2018-09-12 17:38:34', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?p=124', 3, 'nav_menu_item', '', 0),
(125, 1, '2018-09-12 17:41:53', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-12 17:41:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?p=125', 0, 'post', '', 0),
(126, 1, '2018-09-13 05:59:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-13 05:59:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=126', 0, 'tournament', '', 0),
(127, 1, '2018-09-13 06:20:04', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-13 06:20:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=127', 0, 'tournament', '', 0),
(128, 1, '2018-09-13 06:20:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-13 06:20:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cours/Wordpress/Projet/Projet-master/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=128', 0, 'tournament', '', 0),
(129, 1, '2018-09-13 06:20:41', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-13 06:20:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&p=129', 0, 'tournament', '', 0),
(130, 1, '2018-09-13 09:50:10', '2018-09-13 09:50:10', 'test', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2018-09-13 09:50:10', '2018-09-13 09:50:10', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?p=130', 0, 'post', '', 0),
(131, 1, '2018-09-13 11:44:26', '2018-09-13 11:44:26', 'Quoi de mieux qu\'un tournoi de beer pong pour se chauffer avant un tournoi ?', 'Virtual tenn... Heu ... Beer Pong !', '', 'publish', 'closed', 'closed', '', 'virtual-tenn-heu-beer-pong', '', '', '2018-09-13 11:44:26', '2018-09-13 11:44:26', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/?post_type=tournament&#038;p=131', 0, 'tournament', '', 0),
(132, 1, '2018-09-13 14:02:13', '2018-09-13 14:02:13', '[ec_store manufacturerid=\"1\"]', 'E Sport Arena Bordeaux', '', 'publish', 'closed', 'closed', '', 'e-sport-arena-bordeaux', '', '', '2018-09-13 14:02:13', '2018-09-13 14:02:13', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/e-sport-arena-bordeaux/', 0, 'ec_store', '', 0),
(133, 1, '2018-09-13 14:02:13', '2018-09-13 14:02:13', '[ec_store]', 'Store', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2018-09-13 14:02:13', '2018-09-13 14:02:13', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/store/', 0, 'page', '', 0),
(134, 1, '2018-09-13 14:02:13', '2018-09-13 14:02:13', '[ec_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-09-13 14:02:13', '2018-09-13 14:02:13', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/cart/', 0, 'page', '', 0),
(135, 1, '2018-09-13 14:02:14', '2018-09-13 14:02:14', '[ec_account]', 'Account', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2018-09-13 14:02:14', '2018-09-13 14:02:14', '', 0, 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/account/', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu du haut', 'menu-du-haut', 0),
(10, 'Tournois', 'tournois', 0),
(11, 'Actualités', 'actualites', 0),
(12, 'league of legends', 'lol', 0),
(13, 'world of warcraft', 'wow', 0),
(14, 'heroes of the storm', 'hots', 0),
(15, 'destiny', 'destiny', 0),
(16, 'hearthstone', 'hs', 0),
(17, 'call of duty', 'cod', 0),
(18, 'counter strike', 'cs', 0),
(19, 'final fantasy', 'ff', 0),
(20, 'hcd', 'hcd', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(77, 10, 0),
(78, 10, 0),
(79, 10, 0),
(81, 11, 0),
(82, 10, 0),
(84, 11, 0),
(90, 13, 0),
(90, 14, 0),
(90, 16, 0),
(94, 2, 0),
(102, 2, 0),
(124, 2, 0),
(130, 11, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(10, 10, 'category', '', 0, 4),
(11, 11, 'category', '', 0, 3),
(12, 12, 'jeu', '', 0, 0),
(13, 13, 'jeu', '', 0, 1),
(14, 14, 'jeu', '', 0, 1),
(15, 15, 'jeu', '', 0, 0),
(16, 16, 'jeu', '', 0, 1),
(17, 17, 'jeu', '', 0, 0),
(18, 18, 'jeu', '', 0, 0),
(19, 19, 'jeu', '', 0, 0),
(20, 20, 'team', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'arena'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'session_tokens', 'a:10:{s:64:\"3dcf9f58fa0b26eef921f21f665d0f12b9ab0ec62da99c94878943fd500aad3e\";a:4:{s:10:\"expiration\";i:1536907779;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1536734979;}s:64:\"c1d9b1d9d1bcdcaca93912b7fd1ae48603ba85743239d80c02032b17f3c0c976\";a:4:{s:10:\"expiration\";i:1536909332;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1536736532;}s:64:\"ea3dfcbd766ce0b5325c9d1dd3189b985d4fc1dfe262331577afa55679c01341\";a:4:{s:10:\"expiration\";i:1536910619;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1536737819;}s:64:\"516508f4df3e1d9f38c864f28acfd42234e7689a43f877af0e85539bea930ffb\";a:4:{s:10:\"expiration\";i:1537956126;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1536746526;}s:64:\"11558f4a4482670eabd1a0214f30e59e607f9d53f9bca8fff761bbf690a63ad6\";a:4:{s:10:\"expiration\";i:1536930807;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1536758007;}s:64:\"63fa2eb98aab5aaa8c3204ac9d9377bf30cf45260ba8d7ed594eb9e0d083dde6\";a:4:{s:10:\"expiration\";i:1536939258;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1536766458;}s:64:\"a56d404e49785587a2de53181b89e106a9bfeeae17ee7c928c75eec87e32dfa0\";a:4:{s:10:\"expiration\";i:1536945838;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1536773038;}s:64:\"14b23a9a8b363d0512eacb3d9efed7ed561f55219e54bb19bfbbed7835d2078b\";a:4:{s:10:\"expiration\";i:1536992757;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1536819957;}s:64:\"766258c3a5804fe738dc2f078cf27dbd1cc7f06818fd95ada3265b2d39ca3bdc\";a:4:{s:10:\"expiration\";i:1537016464;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1536843664;}s:64:\"566bc4a07d8bf134e557ad92963861a649f788ca1027bbb7a4de268395369a5f\";a:4:{s:10:\"expiration\";i:1537017184;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1536844384;}}'),
(16, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1536752271'),
(20, 1, 'wp_media_library_mode', 'list'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_tournament', 'a:0:{}'),
(25, 1, 'metaboxhidden_tournament', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(27, 2, 'nickname', 'test'),
(28, 2, 'first_name', ''),
(29, 2, 'last_name', ''),
(30, 2, 'description', ''),
(31, 2, 'rich_editing', 'true'),
(32, 2, 'syntax_highlighting', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'locale', ''),
(38, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(39, 2, 'wp_user_level', '0'),
(40, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:34:\"commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(41, 1, 'screen_layout_page', '2'),
(42, 3, 'nickname', 'test5'),
(43, 3, 'first_name', ''),
(44, 3, 'last_name', ''),
(45, 3, 'description', ''),
(46, 3, 'rich_editing', 'true'),
(47, 3, 'syntax_highlighting', 'true'),
(48, 3, 'comment_shortcuts', 'false'),
(49, 3, 'admin_color', 'fresh'),
(50, 3, 'use_ssl', '0'),
(51, 3, 'show_admin_bar_front', 'true'),
(52, 3, 'locale', ''),
(53, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(54, 3, 'wp_user_level', '0'),
(55, 4, 'nickname', 'test6'),
(56, 4, 'first_name', ''),
(57, 4, 'last_name', ''),
(58, 4, 'description', ''),
(59, 4, 'rich_editing', 'true'),
(60, 4, 'syntax_highlighting', 'true'),
(61, 4, 'comment_shortcuts', 'false'),
(62, 4, 'admin_color', 'fresh'),
(63, 4, 'use_ssl', '0'),
(64, 4, 'show_admin_bar_front', 'true'),
(65, 4, 'locale', ''),
(66, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(67, 4, 'wp_user_level', '0'),
(68, 5, 'nickname', 'test7'),
(69, 5, 'first_name', ''),
(70, 5, 'last_name', ''),
(71, 5, 'description', ''),
(72, 5, 'rich_editing', 'true'),
(73, 5, 'syntax_highlighting', 'true'),
(74, 5, 'comment_shortcuts', 'false'),
(75, 5, 'admin_color', 'fresh'),
(76, 5, 'use_ssl', '0'),
(77, 5, 'show_admin_bar_front', 'true'),
(78, 5, 'locale', ''),
(79, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(80, 5, 'wp_user_level', '0'),
(81, 1, 'closedpostboxes_page', 'a:0:{}'),
(82, 1, 'metaboxhidden_page', 'a:2:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'arena', '$P$BP25cJqEsF58okPxwE8yOQj33F4zWk0', 'arena', 'arenambj@gmail.com', '', '2018-09-10 08:47:35', '', 0, 'arena'),
(2, 'test', '$P$Bs2gbkW7GbmCeaTzFphkXjzsrN9ayY1', 'test', 'test@test.fr', '', '2018-09-12 14:27:30', '', 0, 'test'),
(3, 'test5', '$P$BDHnNsxPcIfsXsMOTq5DRRi/IeQ3TS0', 'test5', 'test@mail.com', '', '2018-09-12 16:20:03', '', 0, 'test5'),
(4, 'test6', '$P$B80DHZp.8SWmX4N4PR7jPWAxcWdWno.', 'test6', 'test6@mail.com', '', '2018-09-12 16:28:47', '', 0, 'test6'),
(5, 'test7', '$P$B1PO.72rfan84B/E35YVJE9yzeYnSx0', 'test7', 'test7@mail.com', '', '2018-09-12 16:55:09', '', 0, 'test7');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ec_address`
--
ALTER TABLE `ec_address`
  ADD PRIMARY KEY (`address_id`),
  ADD UNIQUE KEY `address_id` (`address_id`),
  ADD KEY `ec_address_idx1` (`address_id`),
  ADD KEY `ec_address_idx2` (`user_id`);

--
-- Index pour la table `ec_affiliate_rule`
--
ALTER TABLE `ec_affiliate_rule`
  ADD PRIMARY KEY (`affiliate_rule_id`),
  ADD UNIQUE KEY `affiliate_rule_id` (`affiliate_rule_id`);

--
-- Index pour la table `ec_affiliate_rule_to_affiliate`
--
ALTER TABLE `ec_affiliate_rule_to_affiliate`
  ADD PRIMARY KEY (`rule_to_account_id`),
  ADD UNIQUE KEY `rule_to_account_id` (`rule_to_account_id`),
  ADD KEY `affiliate_rule_id` (`affiliate_rule_id`),
  ADD KEY `affiliate_id` (`affiliate_id`);

--
-- Index pour la table `ec_affiliate_rule_to_product`
--
ALTER TABLE `ec_affiliate_rule_to_product`
  ADD PRIMARY KEY (`rule_to_product_id`),
  ADD UNIQUE KEY `rule_to_product_id` (`rule_to_product_id`),
  ADD KEY `affiliate_rule_id` (`affiliate_rule_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `ec_bundle`
--
ALTER TABLE `ec_bundle`
  ADD PRIMARY KEY (`bundle_id`),
  ADD UNIQUE KEY `bundle_id` (`bundle_id`);

--
-- Index pour la table `ec_category`
--
ALTER TABLE `ec_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_id` (`category_id`);

--
-- Index pour la table `ec_categoryitem`
--
ALTER TABLE `ec_categoryitem`
  ADD PRIMARY KEY (`categoryitem_id`),
  ADD UNIQUE KEY `categoryitem_id` (`categoryitem_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `ec_code`
--
ALTER TABLE `ec_code`
  ADD PRIMARY KEY (`code_id`),
  ADD UNIQUE KEY `code_id` (`code_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `orderdetail_id` (`orderdetail_id`);

--
-- Index pour la table `ec_country`
--
ALTER TABLE `ec_country`
  ADD PRIMARY KEY (`id_cnt`),
  ADD KEY `iso2_cnt` (`iso2_cnt`),
  ADD KEY `iso3_cnt` (`iso3_cnt`);

--
-- Index pour la table `ec_customfield`
--
ALTER TABLE `ec_customfield`
  ADD PRIMARY KEY (`customfield_id`),
  ADD UNIQUE KEY `customfield_id` (`customfield_id`);

--
-- Index pour la table `ec_customfielddata`
--
ALTER TABLE `ec_customfielddata`
  ADD PRIMARY KEY (`customfielddata_id`);

--
-- Index pour la table `ec_download`
--
ALTER TABLE `ec_download`
  ADD PRIMARY KEY (`download_id`),
  ADD KEY `download_order_id` (`order_id`),
  ADD KEY `download_product_id` (`product_id`);

--
-- Index pour la table `ec_giftcard`
--
ALTER TABLE `ec_giftcard`
  ADD PRIMARY KEY (`giftcard_id`),
  ADD UNIQUE KEY `giftcard_id` (`giftcard_id`);

--
-- Index pour la table `ec_live_rate_cache`
--
ALTER TABLE `ec_live_rate_cache`
  ADD PRIMARY KEY (`live_rate_cache_id`);

--
-- Index pour la table `ec_manufacturer`
--
ALTER TABLE `ec_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Index pour la table `ec_menulevel1`
--
ALTER TABLE `ec_menulevel1`
  ADD PRIMARY KEY (`menulevel1_id`),
  ADD UNIQUE KEY `menu1_menulevel1_id` (`menulevel1_id`);

--
-- Index pour la table `ec_menulevel2`
--
ALTER TABLE `ec_menulevel2`
  ADD PRIMARY KEY (`menulevel2_id`),
  ADD UNIQUE KEY `menu2_menulevel2_id` (`menulevel2_id`),
  ADD KEY `menu2_menulevel1_id` (`menulevel1_id`);

--
-- Index pour la table `ec_menulevel3`
--
ALTER TABLE `ec_menulevel3`
  ADD PRIMARY KEY (`menulevel3_id`),
  ADD UNIQUE KEY `menu3_menulevel3_id` (`menulevel3_id`),
  ADD KEY `menu3_menulevel2_id` (`menulevel2_id`);

--
-- Index pour la table `ec_option`
--
ALTER TABLE `ec_option`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_option_id` (`option_id`);

--
-- Index pour la table `ec_optionitem`
--
ALTER TABLE `ec_optionitem`
  ADD PRIMARY KEY (`optionitem_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Index pour la table `ec_optionitemimage`
--
ALTER TABLE `ec_optionitemimage`
  ADD PRIMARY KEY (`optionitemimage_id`),
  ADD KEY `optionitem_id` (`optionitem_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `ec_optionitemquantity`
--
ALTER TABLE `ec_optionitemquantity`
  ADD PRIMARY KEY (`optionitemquantity_id`),
  ADD UNIQUE KEY `optionitemquantity_id` (`optionitemquantity_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `optionitem_id_1` (`optionitem_id_1`),
  ADD KEY `optionitem_id_2` (`optionitem_id_2`),
  ADD KEY `optionitem_id_3` (`optionitem_id_3`),
  ADD KEY `optionitem_id_4` (`optionitem_id_4`),
  ADD KEY `optionitem_id_5` (`optionitem_id_5`);

--
-- Index pour la table `ec_option_to_product`
--
ALTER TABLE `ec_option_to_product`
  ADD PRIMARY KEY (`option_to_product_id`),
  ADD UNIQUE KEY `option_to_product_id` (`option_to_product_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `ec_order`
--
ALTER TABLE `ec_order`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `giftcard_id` (`giftcard_id`);

--
-- Index pour la table `ec_orderdetail`
--
ALTER TABLE `ec_orderdetail`
  ADD PRIMARY KEY (`orderdetail_id`),
  ADD UNIQUE KEY `orderdetail_id` (`orderdetail_id`),
  ADD KEY `orderdetail_order_id` (`order_id`),
  ADD KEY `orderdetail_product_id` (`product_id`),
  ADD KEY `orderdetail_giftcard_id` (`giftcard_id`);

--
-- Index pour la table `ec_orderstatus`
--
ALTER TABLE `ec_orderstatus`
  ADD PRIMARY KEY (`status_id`),
  ADD UNIQUE KEY `orderstatus_status_id` (`status_id`);

--
-- Index pour la table `ec_order_option`
--
ALTER TABLE `ec_order_option`
  ADD PRIMARY KEY (`order_option_id`),
  ADD UNIQUE KEY `order_option_id` (`order_option_id`),
  ADD KEY `orderdetail_id` (`orderdetail_id`);

--
-- Index pour la table `ec_pageoption`
--
ALTER TABLE `ec_pageoption`
  ADD PRIMARY KEY (`pageoption_id`),
  ADD UNIQUE KEY `pageoption_id` (`pageoption_id`);

--
-- Index pour la table `ec_perpage`
--
ALTER TABLE `ec_perpage`
  ADD PRIMARY KEY (`perpage_id`),
  ADD UNIQUE KEY `perpageid` (`perpage_id`);

--
-- Index pour la table `ec_pricepoint`
--
ALTER TABLE `ec_pricepoint`
  ADD PRIMARY KEY (`pricepoint_id`),
  ADD UNIQUE KEY `pricepoint_pricepoint_id` (`pricepoint_id`);

--
-- Index pour la table `ec_pricetier`
--
ALTER TABLE `ec_pricetier`
  ADD PRIMARY KEY (`pricetier_id`),
  ADD UNIQUE KEY `pricetier_id` (`pricetier_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `ec_product`
--
ALTER TABLE `ec_product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_product_id` (`product_id`),
  ADD UNIQUE KEY `product_model_number` (`model_number`(191)),
  ADD KEY `product_menulevel1_id_1` (`menulevel1_id_1`,`menulevel2_id_1`,`menulevel3_id_1`),
  ADD KEY `product_menulevel1_id_2` (`menulevel1_id_2`,`menulevel2_id_2`,`menulevel3_id_2`),
  ADD KEY `product_menulevel1_id_3` (`menulevel1_id_3`,`menulevel2_id_3`,`menulevel3_id_3`),
  ADD KEY `product_manufacturer_id` (`manufacturer_id`),
  ADD KEY `product_option_id_1` (`option_id_1`),
  ADD KEY `product_option_id_2` (`option_id_2`),
  ADD KEY `product_option_id_3` (`option_id_3`),
  ADD KEY `product_option_id_4` (`option_id_4`),
  ADD KEY `product_option_id_5` (`option_id_5`);

--
-- Index pour la table `ec_product_google_attributes`
--
ALTER TABLE `ec_product_google_attributes`
  ADD PRIMARY KEY (`product_google_attribute_id`),
  ADD UNIQUE KEY `product_google_attribute_id` (`product_google_attribute_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `ec_promocode`
--
ALTER TABLE `ec_promocode`
  ADD PRIMARY KEY (`promocode_id`),
  ADD KEY `promo_manufacturer_id` (`manufacturer_id`),
  ADD KEY `promo_product_id` (`product_id`);

--
-- Index pour la table `ec_promotion`
--
ALTER TABLE `ec_promotion`
  ADD PRIMARY KEY (`promotion_id`),
  ADD UNIQUE KEY `promotion_promotion_id` (`promotion_id`),
  ADD KEY `promotion_product_id_1` (`product_id_1`),
  ADD KEY `promotion_product_id_2` (`product_id_2`),
  ADD KEY `promotion_product_id_3` (`product_id_3`),
  ADD KEY `promotion_manufacturer_id_1` (`manufacturer_id_1`),
  ADD KEY `promotion_manufacturer_id_2` (`manufacturer_id_2`),
  ADD KEY `promotion_manufacturer_id_3` (`manufacturer_id_3`),
  ADD KEY `promotion_category_id_1` (`category_id_1`),
  ADD KEY `promotion_category_id_2` (`category_id_2`),
  ADD KEY `promotion_category_id_3` (`category_id_3`);

--
-- Index pour la table `ec_response`
--
ALTER TABLE `ec_response`
  ADD PRIMARY KEY (`response_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `ec_review`
--
ALTER TABLE `ec_review`
  ADD PRIMARY KEY (`review_id`),
  ADD UNIQUE KEY `review_id` (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `ec_role`
--
ALTER TABLE `ec_role`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_id` (`role_id`),
  ADD KEY `role_label` (`role_label`);

--
-- Index pour la table `ec_roleaccess`
--
ALTER TABLE `ec_roleaccess`
  ADD PRIMARY KEY (`roleaccess_id`),
  ADD UNIQUE KEY `roleaccess_id` (`roleaccess_id`),
  ADD KEY `role_label` (`role_label`);

--
-- Index pour la table `ec_roleprice`
--
ALTER TABLE `ec_roleprice`
  ADD PRIMARY KEY (`roleprice_id`),
  ADD UNIQUE KEY `roleprice_id` (`roleprice_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `role_label` (`role_label`);

--
-- Index pour la table `ec_setting`
--
ALTER TABLE `ec_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Index pour la table `ec_shippingrate`
--
ALTER TABLE `ec_shippingrate`
  ADD PRIMARY KEY (`shippingrate_id`),
  ADD UNIQUE KEY `shippingrate_id` (`shippingrate_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Index pour la table `ec_shipping_class`
--
ALTER TABLE `ec_shipping_class`
  ADD PRIMARY KEY (`shipping_class_id`);

--
-- Index pour la table `ec_shipping_class_to_rate`
--
ALTER TABLE `ec_shipping_class_to_rate`
  ADD PRIMARY KEY (`shipping_class_to_rate_id`);

--
-- Index pour la table `ec_state`
--
ALTER TABLE `ec_state`
  ADD PRIMARY KEY (`id_sta`),
  ADD KEY `idcnt_sta` (`idcnt_sta`),
  ADD KEY `code_sta` (`code_sta`);

--
-- Index pour la table `ec_subscriber`
--
ALTER TABLE `ec_subscriber`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD UNIQUE KEY `subscriber_email` (`email`(191));

--
-- Index pour la table `ec_subscription`
--
ALTER TABLE `ec_subscription`
  ADD PRIMARY KEY (`subscription_id`),
  ADD UNIQUE KEY `subscription_id` (`subscription_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `ec_subscription_plan`
--
ALTER TABLE `ec_subscription_plan`
  ADD PRIMARY KEY (`subscription_plan_id`);

--
-- Index pour la table `ec_taxrate`
--
ALTER TABLE `ec_taxrate`
  ADD PRIMARY KEY (`taxrate_id`),
  ADD UNIQUE KEY `taxrate_id` (`taxrate_id`),
  ADD KEY `state_code` (`state_code`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `vat_country_code` (`vat_country_code`),
  ADD KEY `duty_exempt_country_code` (`duty_exempt_country_code`);

--
-- Index pour la table `ec_tempcart`
--
ALTER TABLE `ec_tempcart`
  ADD PRIMARY KEY (`tempcart_id`),
  ADD UNIQUE KEY `tempcart_tempcart_id` (`tempcart_id`),
  ADD KEY `tempcart_session_id` (`session_id`),
  ADD KEY `tempcart_product_id` (`product_id`),
  ADD KEY `tempcart_optionitem_id_1` (`optionitem_id_1`),
  ADD KEY `tempcart_optionitem_id_2` (`optionitem_id_2`),
  ADD KEY `tempcart_optionitem_id_3` (`optionitem_id_3`),
  ADD KEY `tempcart_optionitem_id_4` (`optionitem_id_4`),
  ADD KEY `tempcart_optionitem_id_5` (`optionitem_id_5`);

--
-- Index pour la table `ec_tempcart_data`
--
ALTER TABLE `ec_tempcart_data`
  ADD PRIMARY KEY (`tempcart_data_id`);

--
-- Index pour la table `ec_tempcart_optionitem`
--
ALTER TABLE `ec_tempcart_optionitem`
  ADD PRIMARY KEY (`tempcart_optionitem_id`),
  ADD UNIQUE KEY `tempcart_optionitem_id` (`tempcart_optionitem_id`),
  ADD KEY `tempcart_id` (`tempcart_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `optionitem_id` (`optionitem_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Index pour la table `ec_timezone`
--
ALTER TABLE `ec_timezone`
  ADD PRIMARY KEY (`timezone_id`),
  ADD UNIQUE KEY `timezone_id` (`timezone_id`);

--
-- Index pour la table `ec_user`
--
ALTER TABLE `ec_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_user_id` (`user_id`),
  ADD UNIQUE KEY `user_email` (`email`(191)),
  ADD KEY `user_password` (`password`(191)),
  ADD KEY `user_default_billing_address_id` (`default_billing_address_id`),
  ADD KEY `user_default_shipping_address_id` (`default_shipping_address_id`),
  ADD KEY `user_user_level` (`user_level`(191));

--
-- Index pour la table `ec_webhook`
--
ALTER TABLE `ec_webhook`
  ADD PRIMARY KEY (`webhook_id`),
  ADD UNIQUE KEY `webhook_id` (`webhook_id`);

--
-- Index pour la table `ec_zone`
--
ALTER TABLE `ec_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index pour la table `ec_zone_to_location`
--
ALTER TABLE `ec_zone_to_location`
  ADD PRIMARY KEY (`zone_to_location_id`);

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ec_address`
--
ALTER TABLE `ec_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_affiliate_rule`
--
ALTER TABLE `ec_affiliate_rule`
  MODIFY `affiliate_rule_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_affiliate_rule_to_affiliate`
--
ALTER TABLE `ec_affiliate_rule_to_affiliate`
  MODIFY `rule_to_account_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_affiliate_rule_to_product`
--
ALTER TABLE `ec_affiliate_rule_to_product`
  MODIFY `rule_to_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_bundle`
--
ALTER TABLE `ec_bundle`
  MODIFY `bundle_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_category`
--
ALTER TABLE `ec_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_categoryitem`
--
ALTER TABLE `ec_categoryitem`
  MODIFY `categoryitem_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_code`
--
ALTER TABLE `ec_code`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_country`
--
ALTER TABLE `ec_country`
  MODIFY `id_cnt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT pour la table `ec_customfield`
--
ALTER TABLE `ec_customfield`
  MODIFY `customfield_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_customfielddata`
--
ALTER TABLE `ec_customfielddata`
  MODIFY `customfielddata_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_live_rate_cache`
--
ALTER TABLE `ec_live_rate_cache`
  MODIFY `live_rate_cache_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_manufacturer`
--
ALTER TABLE `ec_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ec_menulevel1`
--
ALTER TABLE `ec_menulevel1`
  MODIFY `menulevel1_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_menulevel2`
--
ALTER TABLE `ec_menulevel2`
  MODIFY `menulevel2_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_menulevel3`
--
ALTER TABLE `ec_menulevel3`
  MODIFY `menulevel3_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_option`
--
ALTER TABLE `ec_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_optionitem`
--
ALTER TABLE `ec_optionitem`
  MODIFY `optionitem_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_optionitemimage`
--
ALTER TABLE `ec_optionitemimage`
  MODIFY `optionitemimage_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_optionitemquantity`
--
ALTER TABLE `ec_optionitemquantity`
  MODIFY `optionitemquantity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_option_to_product`
--
ALTER TABLE `ec_option_to_product`
  MODIFY `option_to_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_order`
--
ALTER TABLE `ec_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_orderdetail`
--
ALTER TABLE `ec_orderdetail`
  MODIFY `orderdetail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_orderstatus`
--
ALTER TABLE `ec_orderstatus`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `ec_order_option`
--
ALTER TABLE `ec_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_pageoption`
--
ALTER TABLE `ec_pageoption`
  MODIFY `pageoption_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_perpage`
--
ALTER TABLE `ec_perpage`
  MODIFY `perpage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ec_pricepoint`
--
ALTER TABLE `ec_pricepoint`
  MODIFY `pricepoint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `ec_pricetier`
--
ALTER TABLE `ec_pricetier`
  MODIFY `pricetier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_product`
--
ALTER TABLE `ec_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_product_google_attributes`
--
ALTER TABLE `ec_product_google_attributes`
  MODIFY `product_google_attribute_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_promotion`
--
ALTER TABLE `ec_promotion`
  MODIFY `promotion_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_response`
--
ALTER TABLE `ec_response`
  MODIFY `response_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_review`
--
ALTER TABLE `ec_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_role`
--
ALTER TABLE `ec_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ec_roleaccess`
--
ALTER TABLE `ec_roleaccess`
  MODIFY `roleaccess_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_roleprice`
--
ALTER TABLE `ec_roleprice`
  MODIFY `roleprice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_setting`
--
ALTER TABLE `ec_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ec_shippingrate`
--
ALTER TABLE `ec_shippingrate`
  MODIFY `shippingrate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT pour la table `ec_shipping_class`
--
ALTER TABLE `ec_shipping_class`
  MODIFY `shipping_class_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_shipping_class_to_rate`
--
ALTER TABLE `ec_shipping_class_to_rate`
  MODIFY `shipping_class_to_rate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_state`
--
ALTER TABLE `ec_state`
  MODIFY `id_sta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;
--
-- AUTO_INCREMENT pour la table `ec_subscriber`
--
ALTER TABLE `ec_subscriber`
  MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_subscription`
--
ALTER TABLE `ec_subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_subscription_plan`
--
ALTER TABLE `ec_subscription_plan`
  MODIFY `subscription_plan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_taxrate`
--
ALTER TABLE `ec_taxrate`
  MODIFY `taxrate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_tempcart`
--
ALTER TABLE `ec_tempcart`
  MODIFY `tempcart_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_tempcart_data`
--
ALTER TABLE `ec_tempcart_data`
  MODIFY `tempcart_data_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_tempcart_optionitem`
--
ALTER TABLE `ec_tempcart_optionitem`
  MODIFY `tempcart_optionitem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ec_timezone`
--
ALTER TABLE `ec_timezone`
  MODIFY `timezone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT pour la table `ec_user`
--
ALTER TABLE `ec_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ec_zone`
--
ALTER TABLE `ec_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `ec_zone_to_location`
--
ALTER TABLE `ec_zone_to_location`
  MODIFY `zone_to_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;
--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1444;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
