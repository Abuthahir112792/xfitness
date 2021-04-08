-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2021 at 06:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xfitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addresses`
--

CREATE TABLE `tbl_addresses` (
  `id` int(10) NOT NULL,
  `user_id` int(5) NOT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `building_name` varchar(100) DEFAULT NULL,
  `road_area_colony` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `alter_mobile_no` varchar(20) DEFAULT NULL,
  `address_type` varchar(30) DEFAULT NULL,
  `is_default` varchar(10) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `email`, `image`) VALUES
(1, 'Xfitness', '5f4dcc3b5aa765d61d8327deb882cf99', 'admin@Xfitness.me', '10022021080327_20217_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_android_settings`
--

CREATE TABLE `tbl_android_settings` (
  `id` int(11) NOT NULL,
  `onesignal_app_id` text NOT NULL,
  `onesignal_rest_key` text NOT NULL,
  `api_all_order_by` varchar(255) NOT NULL,
  `api_home_limit` int(5) NOT NULL DEFAULT 5,
  `api_page_limit` int(3) NOT NULL,
  `api_cat_order_by` varchar(255) NOT NULL,
  `api_cat_post_order_by` varchar(255) NOT NULL,
  `publisher_id` text NOT NULL,
  `interstital_ad` text NOT NULL,
  `interstital_ad_id` text NOT NULL,
  `interstital_ad_click` varchar(255) NOT NULL,
  `banner_ad` text NOT NULL,
  `banner_ad_id` text NOT NULL,
  `banner_ad_type` varchar(30) NOT NULL DEFAULT 'admob',
  `banner_facebook_id` text NOT NULL,
  `interstital_ad_type` varchar(30) NOT NULL DEFAULT 'admob',
  `interstital_facebook_id` text NOT NULL,
  `native_ad` varchar(20) NOT NULL DEFAULT 'false',
  `app_update_status` varchar(10) NOT NULL DEFAULT 'false',
  `app_new_version` double NOT NULL,
  `app_update_desc` text NOT NULL,
  `app_redirect_url` text NOT NULL,
  `cancel_update_status` varchar(10) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_android_settings`
--

INSERT INTO `tbl_android_settings` (`id`, `onesignal_app_id`, `onesignal_rest_key`, `api_all_order_by`, `api_home_limit`, `api_page_limit`, `api_cat_order_by`, `api_cat_post_order_by`, `publisher_id`, `interstital_ad`, `interstital_ad_id`, `interstital_ad_click`, `banner_ad`, `banner_ad_id`, `banner_ad_type`, `banner_facebook_id`, `interstital_ad_type`, `interstital_facebook_id`, `native_ad`, `app_update_status`, `app_new_version`, `app_update_desc`, `app_redirect_url`, `cancel_update_status`) VALUES
(1, '', '', 'ASC', 5, 20, 'category_name', 'DESC', 'pub-3940256099942544', 'false', 'ca-app-pub-3940256099942544/1033173712', '3', 'false', 'ca-app-pub-3940256099942544/6300978111', 'admob', 'IMG_16_9_APP_INSTALL#288347782353524_288349185686717', 'admob', 'IMG_16_9_APP_INSTALL#293685261999350_293698135331396', 'false', 'false', 2, 'kindly you can update new version app', 'https://play.google.com/store/apps/developer?id=Viaan+Parmar', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applied_coupon`
--

CREATE TABLE `tbl_applied_coupon` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `cart_id` int(10) NOT NULL,
  `cart_type` varchar(20) NOT NULL,
  `coupon_id` int(10) NOT NULL,
  `applied_on` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_details`
--

CREATE TABLE `tbl_bank_details` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `bank_holder_name` varchar(150) NOT NULL,
  `bank_holder_phone` varchar(20) NOT NULL,
  `bank_holder_email` varchar(150) NOT NULL,
  `account_no` varchar(100) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `bank_ifsc` varchar(20) NOT NULL,
  `bank_name` varchar(150) NOT NULL,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(10) NOT NULL,
  `banner_title` varchar(150) NOT NULL,
  `banner_slug` varchar(150) NOT NULL,
  `banner_desc` text NOT NULL,
  `banner_image` text NOT NULL,
  `product_ids` longtext NOT NULL,
  `offer_id` int(10) NOT NULL DEFAULT 0,
  `created_at` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `banner_title`, `banner_slug`, `banner_desc`, `banner_image`, `product_ids`, `offer_id`, `created_at`, `status`) VALUES
(1, 'HOME', 'home', '<p>HOME</p>\r\n', '03042021073046_89013.jpg', '', 0, '1617415246', 1),
(2, 'bannar1', 'bannar1', '<p>bannar1</p>\r\n', '03042021073110_80861.jpg', '', 0, '1617415270', 1),
(3, 'bannar3', 'bannar3', '<p>bannar3</p>\r\n', '03042021073131_44421.jpg', '', 0, '1617415291', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands`
--

CREATE TABLE `tbl_brands` (
  `id` int(10) NOT NULL,
  `category_id` text NOT NULL,
  `brand_name` varchar(150) NOT NULL,
  `brand_slug` varchar(150) NOT NULL,
  `brand_image` text NOT NULL,
  `created_at` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_brands`
--

INSERT INTO `tbl_brands` (`id`, `category_id`, `brand_name`, `brand_slug`, `brand_image`, `created_at`, `status`) VALUES
(3, '', 'MIZUNO', 'mizuno', '16022021050212_80019.jpg', '1613475132', 1),
(4, '', 'ATALA', 'atala', '16022021050231_1233.jpg', '1613475151', 1),
(5, '', 'RYDERS', 'ryders', '16022021050545_43492.jpg', '1613475345', 1),
(6, '', 'PEAK', 'peak', '16022021050556_32873.jpg', '1613475356', 1),
(7, '', 'BENLEE', 'benlee', '16022021050650_90966.jpg', '1613475410', 1),
(8, '', 'JOMA', 'joma', '16022021050702_60615.jpg', '1613475422', 1),
(9, '', 'IMPULSE', 'impulse', '16022021050711_36191.jpg', '1613475431', 1),
(10, '', 'BODY SOLID', 'body-solid', '16022021050724_15723.jpg', '1613475444', 1),
(11, '', 'STEELFLEX', 'steelflex', '16022021050738_76981.jpg', '1613475458', 1),
(12, '', 'PROTEUS', 'proteus', '16022021050753_26426.jpg', '1613475473', 1),
(13, '', 'LIFESPAN', 'lifespan', '16022021050804_83517.jpg', '1613475484', 1),
(14, '', 'IMPETUS', 'impetus', '16022021050816_11843.jpg', '1613475496', 1),
(15, '', 'LIFE GEAR', 'life-gear', '16022021050829_5642.jpg', '1613475509', 1),
(16, '', 'DUNLOP', 'dunlop', '16022021050841_22272.jpg', '1613475521', 1),
(17, '', 'WISH', 'wish', '16022021050853_29384.jpg', '1613475533', 1),
(18, '', 'CARLTON', 'carlton', '16022021050905_19603.jpg', '1613475545', 1),
(19, '', 'DONIC SHILDKROT', 'donic-shildkrot', '16022021050929_64802.jpg', '1613475570', 1),
(20, '', 'HARROWS', 'harrows', '16022021050943_42497.jpg', '1613475583', 1),
(21, '', 'LIFETIME', 'lifetime', '16022021050955_58150.jpg', '1613475595', 1),
(22, '', 'SS', 'ss', '16022021051023_76475.jpg', '1613475623', 1),
(23, '', 'JOEREX', 'joerex', '16022021051037_40016.jpg', '1613475637', 1),
(24, '', 'MESUCA', 'mesuca', '16022021051046_93147.jpg', '1613475646', 1),
(25, '', 'MIKASA', 'mikasa', '16022021051053_46456.jpg', '1613475653', 1),
(26, '', 'MARCY', 'marcy', '16022021051104_14676.jpg', '1613475664', 1),
(27, '', 'JILONG', 'jilong', '16022021051115_86542.jpg', '1613475675', 1),
(28, '', 'LIVEUP', 'liveup', '16022021051132_79414.jpg', '1613475692', 1),
(29, '', 'iCARE', 'icare', '16022021051144_6030.jpg', '1613475704', 1),
(30, '', 'BARRACUDA', 'barracuda', '16022021051156_32338.jpg', '1613475716', 1),
(31, '', 'KARSON', 'karson', '16022021051204_3998.jpg', '1613475724', 1),
(32, '', 'IPONG', 'ipong', '16022021051213_83205.jpg', '1613475733', 1),
(33, '', 'SUPER-K', 'super-k', '16022021051222_46938.jpg', '1613475742', 1),
(34, '', 'FOX40', 'fox40', '16022021051232_42204.jpg', '1613475752', 1),
(35, '', 'TA SPORT', 'ta-sport', '16022021051243_45285.jpg', '1613475763', 1),
(36, '', 'STRENGTH MASTER', 'strength-master', '16022021051406_77575.jpg', '1613475846', 1),
(37, '', 'TRUE', 'true', '16022021051414_97848.jpg', '1613475854', 1),
(38, '', 'GYM80', 'gym80', '16022021051425_57738.jpg', '1613475865', 1),
(39, '', 'YORK FITNESS', 'york-fitness', '16022021051435_22359.jpg', '1613475875', 1),
(40, '', 'BH', 'bh', '16022021051444_94587.jpg', '1613475884', 1),
(41, '', 'RAS', 'ras', '16022021051518_58972.jpg', '1613475918', 1),
(42, '', 'LA MER', 'la-mer', '16022021051527_20058.jpg', '1613475927', 1),
(43, '', 'RAS', 'ras', '16022021051534_42444.jpg', '1613475934', 1),
(44, '', 'CHARLY SPORT', 'charly-sport', '16022021051545_7848.jpg', '1613475945', 1),
(45, '', 'ROMA ITALY', 'roma-italy', '16022021051556_32827.jpg', '1613475956', 1),
(46, '', 'BEVERLY', 'beverly', '16022021051606_28366.jpg', '1613475966', 1),
(47, '', 'LIVEPRO', 'livepro', '16022021051615_50254.jpg', '1613475975', 1),
(48, '', 'MATRIX', 'matrix', '16022021051624_9962.jpg', '1613475984', 1),
(49, '', 'HERCULES', 'hercules', '16022021051634_35096.jpg', '1613475994', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_qty` int(5) NOT NULL DEFAULT 1,
  `product_size` varchar(10) NOT NULL DEFAULT '0',
  `created_at` varchar(150) NOT NULL,
  `cart_status` int(2) NOT NULL DEFAULT 1,
  `last_update` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `product_id`, `user_id`, `product_qty`, `product_size`, `created_at`, `cart_status`, `last_update`) VALUES
(1, 2, 1, 1, '', '1617419788', 1, '1617419986'),
(2, 1, 1, 3, '', '1617420217', 1, '1617420248'),
(3, 2, 2, 1, '', '1617420861', 1, ''),
(4, 1, 2, 2, '', '1617423965', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_tmp`
--

CREATE TABLE `tbl_cart_tmp` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_qty` int(5) NOT NULL DEFAULT 1,
  `product_size` varchar(10) NOT NULL DEFAULT '0',
  `created_at` varchar(150) NOT NULL,
  `cart_status` int(1) NOT NULL DEFAULT 1,
  `cart_unique_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) NOT NULL,
  `category_name` varchar(150) NOT NULL,
  `category_slug` varchar(150) NOT NULL,
  `category_image` text NOT NULL,
  `product_features` longtext NOT NULL,
  `set_on_home` int(1) NOT NULL DEFAULT 0,
  `created_at` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `category_slug`, `category_image`, `product_features`, `set_on_home`, `created_at`, `status`) VALUES
(6, 'INDOOR SPORTS', 'indoor-sports', '15022021065732_50228.jpg', '', 0, '1613395652', 1),
(7, 'ACCESSORIES', 'accessories', '15022021065822_6372.jpg', '', 0, '1613395703', 1),
(8, 'OUTDOOR SPORTS', 'outdoor-sports', '15022021065858_67994.jpg', '', 0, '1613395738', 1),
(9, 'GYM & FITNESS', 'gym-fitness', '15022021065944_92835.jpg', '', 0, '1613395784', 1),
(10, 'CYCLING', 'cycling', '15022021070103_22677.jpeg', '', 0, '1613395863', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_list`
--

CREATE TABLE `tbl_contact_list` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_subject` int(5) NOT NULL,
  `contact_msg` text NOT NULL,
  `created_at` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_sub`
--

CREATE TABLE `tbl_contact_sub` (
  `id` int(5) NOT NULL,
  `title` varchar(150) NOT NULL,
  `title_slug` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact_sub`
--

INSERT INTO `tbl_contact_sub` (`id`, `title`, `title_slug`, `status`, `created_at`) VALUES
(1, 'Order Cancellation', 'order-cancellation', 1, ''),
(2, 'Order Payment', 'order-payment', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `id` int(10) NOT NULL,
  `coupon_desc` text NOT NULL,
  `coupon_code` varchar(25) NOT NULL,
  `coupon_image` text NOT NULL,
  `coupon_per` int(10) NOT NULL,
  `coupon_amt` int(10) NOT NULL,
  `max_amt_status` varchar(5) NOT NULL,
  `coupon_max_amt` int(10) NOT NULL,
  `cart_status` varchar(5) NOT NULL,
  `coupon_cart_min` varchar(10) NOT NULL,
  `coupon_limit_use` int(10) NOT NULL DEFAULT 1,
  `created_at` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(10) NOT NULL,
  `faq_question` text NOT NULL,
  `faq_answer` longtext NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'faq',
  `created_at` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `faq_question`, `faq_answer`, `type`, `created_at`, `status`) VALUES
(1, 'Do We Sell Internationally?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'faq', '1578554160', 1),
(2, 'What Does \'Out of Stock\' Means?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'faq', '1578554160', 1),
(3, 'Are Items Packaged?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'faq', '1578560180', 1),
(4, 'Do you get \'Return Policy\'?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'faq', '1578560180', 1),
(5, 'Why do I see \'Delivery Charge\'?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'faq', '1578560180', 1),
(11, 'What is an EMI payment option?', 'The EMI or Equated Monthly Instalment payment option allows you to pay for your orders in easy monthly installments, provided you have a card from a partner bank. For details, including terms and condition, please click here.', 'payment', '1580361984', 1),
(12, 'How do I know if my order is eligible for an EMI?', 'If your order is eligible for an EMI purchase, you will see the EMI option, along with a table of EMI providers and their corresponding rates and tenures offered, on the product page. You can also pay for your total purchase in EMIs if your cart value is Rs 5,000 or more. However minimum purchase criteria can differ from product to product. For details please click here.', 'payment', '1580361984', 1),
(13, 'How do I know if the EMI payment process was successful?', 'As soon as you make your purchase on Tata CLiQ, you will see the full amount charged to your card. It will take the bank a few days (the time frame depends from bank to bank) to convert this into an EMI. From your next billing cycle, you will be charged the EMI amount and your credit limit will be reduced by the outstanding amount. For example, if you have made a three-month EMI purchase of RS 25,000 and your credit limit is RS 1,00,000, then your bank will block your credit limit by RS 25,000 and thus your available credit limit after the purchase will only be RS 75,000. As and when you pay your EMI every month, your credit limit will be released accordingly. For any further queries, please contact your bank.', 'payment', '1580361984', 1),
(14, 'How does the COD payment option work?', 'While making your purchase, select the Cash on Delivery payment option; you can then pay in cash when our logistics partner delivers your order to you. Please note that this option is only available at select PIN codes.', 'payment', '1580361984', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'apis/categories', 'post', '{\"type\":\"noraml\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4aae44bf-5e16-4a55-9e8f-bb3ca0f63aae\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=t4ajmb1mf3ca50pfpcca05fvjkr2k66t\",\"Content-Length\":\"0\"}', '', '::1', 1609922282, 0.433842, '1', 200),
(2, 'apis/categories', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4cd938b1-4047-4f4c-b9c8-1a1dff334c47\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=t4ajmb1mf3ca50pfpcca05fvjkr2k66t\",\"Content-Length\":\"0\"}', '', '::1', 1609922294, 0.14197, '1', 200),
(3, 'apis/categories', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"8887dbc3-7311-49c8-8043-6f6fb2aca907\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=o28ra764thbnnnh4dcqoej9r1thbdi4d\",\"Content-Length\":\"0\"}', '', '::1', 1609922593, 0.211462, '1', 200),
(4, 'apis/sub_categories', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"620a2856-1ba7-4094-83e8-21277c530ca0\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=o28ra764thbnnnh4dcqoej9r1thbdi4d\",\"Content-Length\":\"0\"}', '', '::1', 1609922660, 0.192987, '1', 200),
(5, 'apis/sub_categories', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"02f8b623-cdd5-47b9-89aa-7d13aadb394c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------839260716538184529903619\",\"Cookie\":\"ci_sessions=o28ra764thbnnnh4dcqoej9r1thbdi4d\",\"Content-Length\":\"162\",\"cat_id\":\"2\"}', '', '::1', 1609922679, 0.308934, '1', 200),
(6, 'apis/sub_categories', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"50bf3ef8-7f32-46af-a41a-479f81ca1f30\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------171645677424473264387877\",\"Cookie\":\"ci_sessions=o28ra764thbnnnh4dcqoej9r1thbdi4d\",\"Content-Length\":\"162\",\"cat_id\":\"2\"}', '', '::1', 1609923762, 0.117328, '1', 200),
(7, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ffd80d4d-c621-49c4-a026-9fea2950afb7\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------354381372622308407073007\",\"Cookie\":\"ci_sessions=imapo7larr55qlgsorqh8b0jj71osb80\",\"Content-Length\":\"162\",\"cat_id\":\"2\"}', '', '::1', 1609924869, 0.172252, '1', 200),
(8, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c3f10564-72d5-436e-8c3b-b69b0974403d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------228615073285160878488053\",\"Cookie\":\"ci_sessions=na989pq3s8c6371cnpjer55gioo2j2op\",\"Content-Length\":\"272\",\"cat_id\":\"2\",\"sub_cat_id\":\"6\"}', '', '::1', 1609924880, 0.112851, '1', 200),
(9, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c720d6f6-7b46-4adb-992c-b8857e736a55\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------387902107716935065389370\",\"Cookie\":\"ci_sessions=na989pq3s8c6371cnpjer55gioo2j2op\",\"Content-Length\":\"272\",\"cat_id\":\"1\",\"sub_cat_id\":\"1\"}', '', '::1', 1609927412, 0.298814, '1', 200),
(10, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"47ca0ca4-d4e1-40dd-bea2-d9424cb65107\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------855165123020686788783074\",\"Cookie\":\"ci_sessions=vmi54eejjumj1c3hki892bsdv4mugurn\",\"Content-Length\":\"166\",\"sub_cat_id\":\"1\"}', '', '::1', 1609927418, 0.0880859, '1', 200),
(11, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"f0a40ff2-b1ad-4254-955b-13053764e0ac\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------655919315261860613054524\",\"Cookie\":\"ci_sessions=vmi54eejjumj1c3hki892bsdv4mugurn\",\"Content-Length\":\"166\",\"sub_cat_id\":\"2\"}', '', '::1', 1609927425, 0.455589, '1', 200),
(12, 'apis/home', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e9ce5568-c6dc-4a65-9475-c72051dcaa3c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------363542462892733059887779\",\"Cookie\":\"ci_sessions=vmi54eejjumj1c3hki892bsdv4mugurn\",\"Content-Length\":\"166\",\"sub_cat_id\":\"2\"}', '', '::1', 1609927497, 0.730697, '1', 200),
(13, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"db43b3e3-63a6-432b-abe7-152580de0255\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------935286061687859106353586\",\"Cookie\":\"ci_sessions=vmi54eejjumj1c3hki892bsdv4mugurn\",\"Content-Length\":\"166\",\"sub_cat_id\":\"2\"}', '', '::1', 1609927684, 0.225484, '1', 200),
(14, 'apis/brands', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"9c7ed660-2fb9-42c1-8ee9-d4cd6803f18a\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=84bv3cm7gant4vq7ch5nv279tc7sjjcq\",\"Content-Length\":\"0\"}', '', '::1', 1609927861, 0.281311, '1', 200),
(15, 'apis/products_by_brand', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"65063681-909b-41c7-bb48-910b85893146\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=84bv3cm7gant4vq7ch5nv279tc7sjjcq\",\"Content-Length\":\"0\"}', '', '::1', 1609927955, 0.13002, '1', 200),
(16, 'apis/products_by_brand', 'post', '{\"brand_id\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4513ee9b-d55d-4908-a6d6-66f61c75625d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=84bv3cm7gant4vq7ch5nv279tc7sjjcq\",\"Content-Length\":\"0\"}', '', '::1', 1609927963, 0.0842381, '1', 200),
(17, 'apis/products_by_brand', 'post', '{\"brand_id\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a9a7e3c4-9d64-47d0-907d-6f82406e56fe\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=84bv3cm7gant4vq7ch5nv279tc7sjjcq\",\"Content-Length\":\"0\"}', '', '::1', 1609928037, 0.10701, '1', 200),
(18, 'apis/products_by_offer', 'post', '{\"brand_id\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"68134921-f1cd-45b1-9ebe-9454ea0884ad\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=84bv3cm7gant4vq7ch5nv279tc7sjjcq\",\"Content-Length\":\"0\"}', '', '::1', 1609928081, 0.122363, '1', 200),
(19, 'apis/offers', 'post', '{\"brand_id\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b485d7b3-86f2-4dee-a295-1bafc84d4215\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"0\"}', '', '::1', 1609928109, 0.0655189, '1', 200),
(20, 'apis/products_by_offer', 'post', '{\"brand_id\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b8e64c70-0c08-4c01-b76e-7701948e7f17\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"0\"}', '', '::1', 1609928171, 0.051476, '1', 200),
(21, 'apis/products_by_offer', 'post', '{\"brand_id\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a05b8285-8a21-4227-810e-f2b3a18fe1ce\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"0\"}', '', '::1', 1609928190, 0.16267, '1', 200),
(22, 'apis/products_by_offer', 'post', '{\"offer_id\":\"6\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d19d6ac7-d6ac-4166-af9d-03e8ab1a3c70\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"0\"}', '', '::1', 1609928201, 0.074703, '1', 200),
(23, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"9041f699-ab38-44cd-af17-49fb0d0bae4c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------385668813978217576817824\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"166\",\"sub_cat_id\":\"2\"}', '', '::1', 1609928223, 0.160794, '1', 200),
(24, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d3a3809a-3c19-4204-bdb9-405a3a857087\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------655247302782550172818318\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"270\",\"sub_cat_id\":\"2\",\"page\":\"1\"}', '', '::1', 1609928236, 0.126807, '1', 200),
(25, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"5e2d9328-7cd2-4dea-bf2f-ae3f1878b7cf\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------657403553766940546551475\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"270\",\"sub_cat_id\":\"2\",\"page\":\"1\"}', '', '::1', 1609928298, 0.172412, '1', 200),
(26, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e77df9de-180f-40d1-bfb1-97dbbbccc95d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------148262123123510753494088\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"270\",\"sub_cat_id\":\"2\",\"page\":\"2\"}', '', '::1', 1609928304, 0.0921888, '1', 200),
(27, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e8fc0954-04b9-468c-a653-36712374d21d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------639829265633974630553236\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"270\",\"sub_cat_id\":\"2\",\"page\":\"1\"}', '', '::1', 1609928310, 0.129233, '1', 200),
(28, 'apis/products_by_offer', 'post', '{\"offer_id\":\"6\",\"page\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a25d0287-f9bc-4a32-8c7e-f926245342b5\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"0\"}', '', '::1', 1609928342, 0.060226, '1', 200),
(29, 'apis/products_by_offer', 'post', '{\"offer_id\":\"6\",\"page\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"83fd6ef4-bd35-4d68-b693-bdfee0ff24f6\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=coqv2ogoif11i1i97a3mf2sicdndtfb7\",\"Content-Length\":\"0\"}', '', '::1', 1609928626, 0.116853, '1', 200),
(30, 'apis/products_by_offer', 'post', '{\"offer_id\":\"6\",\"page\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"9985c6dc-5aff-4d41-b0e2-7c683b9f8f57\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=sel9fei2q52i6kgsnof9ciq56nfptldn\",\"Content-Length\":\"0\"}', '', '::1', 1609928653, 0.0566831, '1', 200),
(31, 'apis/products_by_offer', 'post', '{\"offer_id\":\"6\",\"page\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"121134db-448a-446c-8883-b8ce64809be3\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=sel9fei2q52i6kgsnof9ciq56nfptldn\",\"Content-Length\":\"0\"}', '', '::1', 1609928750, 0.151443, '1', 200),
(32, 'apis/products_by_offer', 'post', '{\"offer_id\":\"6\",\"page\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"f7ec6af2-07de-4efb-b512-235c41e21abf\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=sel9fei2q52i6kgsnof9ciq56nfptldn\",\"Content-Length\":\"0\"}', '', '::1', 1609928767, 0.0264549, '1', 0),
(33, 'apis/products_by_offer', 'post', '{\"offer_id\":\"6\",\"page\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4e2432ff-1b41-4d08-953c-6c110ad8f318\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=sel9fei2q52i6kgsnof9ciq56nfptldn\",\"Content-Length\":\"0\"}', '', '::1', 1609928808, 0.0509672, '1', 0),
(34, 'apis/products_by_offer', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b8172a0c-4c86-4b57-a5c2-23d5afcd5006\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------697847225530180377006008\",\"Cookie\":\"ci_sessions=08shgq4frsg3d7439qvagjg4b359kh29\",\"Content-Length\":\"268\",\"offer_id\":\"6\",\"page\":\"1\"}', '', '::1', 1609928944, 1.4916, '1', 200),
(35, 'apis/brands', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"03fe3982-bc21-4d46-b2a5-fa82b5e2deff\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=08shgq4frsg3d7439qvagjg4b359kh29\",\"Content-Length\":\"0\"}', '', '::1', 1609929003, 0.112815, '1', 200),
(36, 'apis/products_by_brand', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"f086490c-c0ca-458f-9e01-2c27f136a59c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------254700692092331492943283\",\"Cookie\":\"ci_sessions=08shgq4frsg3d7439qvagjg4b359kh29\",\"Content-Length\":\"268\",\"brand_id\":\"1\",\"page\":\"1\"}', '', '::1', 1609929041, 0.103011, '1', 200),
(37, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"dac3d1b9-a9eb-401f-accc-f56b31d73c62\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------442279001423404296862133\",\"Cookie\":\"ci_sessions=08shgq4frsg3d7439qvagjg4b359kh29\",\"Content-Length\":\"159\",\"id\":\"12\"}', '', '::1', 1609929133, 0.101242, '1', 200),
(38, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"099e4e13-ae4c-4a44-915e-831a140c7453\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------972773949023821111898727\",\"Cookie\":\"ci_sessions=08shgq4frsg3d7439qvagjg4b359kh29\",\"Content-Length\":\"270\",\"sub_cat_id\":\"2\",\"page\":\"1\"}', '', '::1', 1609930821, 0.191631, '1', 200),
(39, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"0bd81894-cb33-44a0-95f5-a1f153cdec4b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------319818516962662317250377\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"270\",\"sub_cat_id\":\"2\",\"page\":\"1\"}', '', '::1', 1609930838, 0.105639, '1', 200),
(40, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"dfcba710-9088-4b7f-932d-55aa11776f2b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------754131005738713802424377\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"159\",\"id\":\"12\"}', '', '::1', 1609930855, 0.250803, '1', 200),
(41, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b1af5fff-6808-4411-a413-5fa51a32352c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------395269752509420489138361\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"159\",\"id\":\"12\"}', '', '::1', 1609930870, 0.0732629, '1', 200),
(42, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"72c6bb9a-5205-478c-af0b-1ee597f9ea6a\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------771916600036223271546396\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"159\",\"id\":\"12\"}', '', '::1', 1609930883, 0.161073, '1', 200),
(43, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"0b991210-3a7e-4926-a22d-1f0a2dc680af\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------419068150435237702689610\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"159\",\"id\":\"12\"}', '', '::1', 1609930916, 0.0691202, '1', 200),
(44, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"299c152c-ceb4-4d78-890a-db70977d7ca1\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------745570625737878782498945\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"159\",\"id\":\"12\"}', '', '::1', 1609930989, 0.133481, '1', 200),
(45, 'apis/get_id_by_slug', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"0536839e-7c7f-4cce-a7e9-376877dc3b2d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------411389077441050163702006\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"159\",\"id\":\"12\"}', '', '::1', 1609930999, 0.091018, '1', 200),
(46, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ae9c8418-1970-4114-9b7f-12593d953fe7\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------642440080826051534889852\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"210\",\"product_slug\":\"men-slim-fit-solid-slim-collar-casual-shirt\"}', '', '::1', 1609931051, 0.151442, '1', 200),
(47, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e65df230-d9f5-4ec8-923e-e53fcecd97ee\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------803923134145307563949146\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"159\",\"id\":\"12\"}', '', '::1', 1609931080, 0.0831082, '1', 200),
(48, 'apis/get_id_by_slug', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"cd073b26-ea45-4479-a404-49c41b4d3ca3\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------325154274148009269384764\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"210\",\"product_slug\":\"men-slim-fit-solid-slim-collar-casual-shirt\"}', '', '::1', 1609931081, 0.107538, '1', 200),
(49, 'apis/brands', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ffd23874-83b9-40ab-b49d-d92dbd6e5fe9\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=vr5tjv111g6reascsbeqf3chofl07q3f\",\"Content-Length\":\"0\"}', '', '::1', 1609931182, 0.131843, '1', 200),
(50, 'apis/brands', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"29cae38d-0525-48ef-8e18-0fb248200833\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=erojg4h896qat3bh7jm1t6h5ikpci2a0\",\"Content-Length\":\"0\"}', '', '::1', 1609931185, 0.085453, '1', 200),
(51, 'apis/coupons', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"bfa212e7-3672-4e2b-96ff-3834db31992b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=erojg4h896qat3bh7jm1t6h5ikpci2a0\",\"Content-Length\":\"0\"}', '', '::1', 1609931223, 0.167982, '1', 200),
(52, 'apis/offers', 'post', '{\"brand_id\":\"1\",\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c000e74c-6766-41b0-9209-4e8ec9520e86\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=erojg4h896qat3bh7jm1t6h5ikpci2a0\",\"Content-Length\":\"0\"}', '', '::1', 1609931261, 0.0612359, '1', 200),
(53, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e6b99b9d-7f6b-4a47-ba09-c3de52d55ead\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------450342761565547220140888\",\"Cookie\":\"ci_sessions=erojg4h896qat3bh7jm1t6h5ikpci2a0\",\"Content-Length\":\"270\",\"sub_cat_id\":\"2\",\"page\":\"1\"}', '', '::1', 1609931264, 0.097497, '1', 200),
(54, 'apis/today_deal', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d3797565-d609-4d00-b478-1b3f6576737f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=erojg4h896qat3bh7jm1t6h5ikpci2a0\",\"Content-Length\":\"0\"}', '', '::1', 1609931292, 0.172361, '1', 200),
(55, 'apis/today_deal', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"94b80683-5af3-44b7-a494-f3d8224f26a2\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=erojg4h896qat3bh7jm1t6h5ikpci2a0\",\"Content-Length\":\"0\"}', '', '::1', 1609931310, 0.085458, '1', 200),
(56, 'apis/search', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"5ac98207-cd4d-4d54-85c0-053758a16e0a\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------076299159660973395237283\",\"Cookie\":\"ci_sessions=erojg4h896qat3bh7jm1t6h5ikpci2a0\",\"Content-Length\":\"269\",\"page\":\"1\",\"keyword\":\"men\"}', '', '::1', 1609931378, 0.112048, '1', 200),
(57, 'apis/search', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"3546af03-04bf-4dce-9cb5-c8875ff2ca65\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------167009199573474754983492\",\"Cookie\":\"ci_sessions=erojg4h896qat3bh7jm1t6h5ikpci2a0\",\"Content-Length\":\"271\",\"page\":\"1\",\"keyword\":\"Women\"}', '', '::1', 1609931394, 0.1128, '1', 200),
(58, 'apis/register', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a94e336d-928d-4e79-bbcf-f9651f72abf9\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------305176631400666387124947\",\"Cookie\":\"ci_sessions=erojg4h896qat3bh7jm1t6h5ikpci2a0\",\"Content-Length\":\"517\",\"type\":\"Normal\",\"name\":\"Unais Ellias\",\"email\":\"unais.whyte@gmail.com\",\"phone\":\"31404159\"}', '', '::1', 1609931551, 0.06674, '1', 0),
(59, 'apis/register', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"56d8eb8e-e513-4ca9-8363-364ba784aba2\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------181126677273780844409967\",\"Cookie\":\"ci_sessions=4adi8q1ooe6alknvo07tq97lgko837nj\",\"Content-Length\":\"517\",\"type\":\"Normal\",\"name\":\"Unais Ellias\",\"email\":\"unais.whyte@gmail.com\",\"phone\":\"31404159\"}', '', '::1', 1609931557, 0.0706699, '1', 200),
(60, 'apis/register', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"2ae72541-27d4-467f-8d6a-bd115059b925\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------566497991161200612456159\",\"Cookie\":\"ci_sessions=4adi8q1ooe6alknvo07tq97lgko837nj\",\"Content-Length\":\"517\",\"type\":\"Normal\",\"name\":\"Unais Ellias\",\"email\":\"unais.whyte@gmail.com\",\"phone\":\"31404159\"}', '', '::1', 1609931584, 0.1876, '1', 200),
(61, 'apis/register', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e8e651fa-889b-49fa-8b71-d617a85fe65a\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------766046184220542614662010\",\"Cookie\":\"ci_sessions=4adi8q1ooe6alknvo07tq97lgko837nj\",\"Content-Length\":\"519\",\"type\":\"Normal\",\"name\":\"Unais Ellias\",\"email\":\"contact.unais@gmail.com\",\"phone\":\"31404159\"}', '', '::1', 1609931596, 0.343544, '1', 0),
(62, 'apis/register', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"6d5b922b-f0d7-46c6-9f4b-2ccbf6be262a\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------371649809568396788187138\",\"Cookie\":\"ci_sessions=4adi8q1ooe6alknvo07tq97lgko837nj\",\"Content-Length\":\"636\",\"type\":\"Normal\",\"name\":\"Unais Ellias\",\"email\":\"contact.unais@gmail.com\",\"phone\":\"31404159\",\"password\":\"Asdasd@123\"}', '', '::1', 1609931610, 0.10748, '1', 200),
(63, 'apis/register', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c75f9437-f8ed-4d91-9e98-90722f368638\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------180563356976344126955081\",\"Cookie\":\"ci_sessions=4adi8q1ooe6alknvo07tq97lgko837nj\",\"Content-Length\":\"634\",\"type\":\"Normal\",\"name\":\"Unais Ellias\",\"email\":\"unais.whyte@gmail.com\",\"phone\":\"31404159\",\"password\":\"Asdasd@123\"}', '', '::1', 1609931649, 0.104248, '1', 0),
(64, 'apis/register', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"eec755da-0706-432e-b8d8-f720002f85fe\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------374752731294645573137946\",\"Cookie\":\"ci_sessions=4adi8q1ooe6alknvo07tq97lgko837nj\",\"Content-Length\":\"751\",\"type\":\"Normal\",\"name\":\"Unais Ellias\",\"email\":\"unais.whyte@gmail.com\",\"phone\":\"31404159\",\"password\":\"Asdasd@123\",\"device_id\":\"123456778\"}', '', '::1', 1609931682, 0.051122, '1', 0),
(65, 'apis/register', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"2536cd1d-fd5e-4635-aeb4-c3c4c2992b2e\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------817353210101983495308769\",\"Cookie\":\"ci_sessions=4adi8q1ooe6alknvo07tq97lgko837nj\",\"Content-Length\":\"751\",\"type\":\"Normal\",\"name\":\"Unais Ellias\",\"email\":\"unais.whyte@gmail.com\",\"phone\":\"31404159\",\"password\":\"Asdasd@123\",\"device_id\":\"123456778\"}', '', '::1', 1609931753, 2.15973, '1', 200),
(66, 'apis/register', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"fafd4fb3-5cf9-4010-b3a5-24c291aee068\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------494377164808342424499788\",\"Cookie\":\"ci_sessions=4adi8q1ooe6alknvo07tq97lgko837nj\",\"Content-Length\":\"751\",\"type\":\"Normal\",\"name\":\"Unais Ellias\",\"email\":\"unais.whyte@gmail.com\",\"phone\":\"31404159\",\"password\":\"Asdasd@123\",\"device_id\":\"123456778\"}', '', '::1', 1609931811, 0.053019, '1', 200),
(67, 'apis/login', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d5acabee-dff3-469e-8bc3-a2ef194db489\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=4adi8q1ooe6alknvo07tq97lgko837nj\",\"Content-Length\":\"0\"}', '', '::1', 1609931893, 0.0989749, '1', 200),
(68, 'apis/login', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"bea63126-9624-4f83-b936-a96176e28f8e\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------150656819820736890926347\",\"Cookie\":\"ci_sessions=tii6r41ui397na3foo4un6rf83hac819\",\"Content-Length\":\"181\",\"email\":\"unais.whyte@gmail.com\"}', '', '::1', 1609931905, 0.101184, '1', 200),
(69, 'apis/login', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"2851978c-d1a3-4aaa-b743-5c7e73a21dc1\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------816630943426731451589231\",\"Cookie\":\"ci_sessions=tii6r41ui397na3foo4un6rf83hac819\",\"Content-Length\":\"300\",\"email\":\"unais.whyte@gmail.com\",\"password\":\"Asdasd@12345\"}', '', '::1', 1609931913, 0.104375, '1', 200),
(70, 'apis/login', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4c9f7dfd-c0a1-40df-9c33-69cc35e53c14\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------165255699371681596074636\",\"Cookie\":\"ci_sessions=tii6r41ui397na3foo4un6rf83hac819\",\"Content-Length\":\"298\",\"email\":\"unais.whyte@gmail.com\",\"password\":\"Asdasd@123\"}', '', '::1', 1609931919, 0.0813222, '1', 200),
(71, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a8ad0bf3-3368-48ae-a109-a0fe282da9a5\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------864247778369043929854299\",\"Cookie\":\"ci_sessions=tii6r41ui397na3foo4un6rf83hac819\",\"Content-Length\":\"298\",\"email\":\"unais.whyte@gmail.com\",\"password\":\"Asdasd@123\"}', '', '::1', 1609932123, 0.171056, '1', 200),
(72, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d5e96ccd-a599-47c5-a358-080b44873606\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------495985914366665775619362\",\"Cookie\":\"ci_sessions=tii6r41ui397na3foo4un6rf83hac819\",\"Content-Length\":\"273\",\"product_id\":\"4\",\"user_id\":\"1\"}', '', '::1', 1609932135, 0.147028, '1', 200),
(73, 'apis/productList_cat_sub', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"8a515f3a-1cf2-473a-b6f8-dc78ca08ba91\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------260868063670731820627713\",\"Cookie\":\"ci_sessions=tii6r41ui397na3foo4un6rf83hac819\",\"Content-Length\":\"270\",\"sub_cat_id\":\"2\",\"page\":\"1\"}', '', '::1', 1609932340, 1.6289, '1', 200),
(74, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b1ad60ba-fcfe-4aa7-8e6d-296d76c532af\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------466261710097747383688514\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"158\",\"id\":\"4\"}', '', '::1', 1609932364, 0.294496, '1', 200),
(75, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"45fe9d0b-4641-4ef2-af1f-a52ffc8a71d0\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------755810278422651448945287\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"497\",\"product_id\":\"4\",\"user_id\":\"1\",\"product_qty\":\"1\",\"product_size\":\"XL\"}', '', '::1', 1609932375, 0.0924621, '1', 200),
(76, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a025c7a9-579c-462a-a7af-7f79a5676dd6\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------220127053704374072542654\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"498\",\"product_id\":\"4\",\"user_id\":\"1\",\"product_qty\":\"10\",\"product_size\":\"XL\"}', '', '::1', 1609932411, 0.0814891, '1', 200),
(77, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a4526c70-4501-4935-acdd-077088de4efe\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------883575652457340554865609\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"497\",\"product_id\":\"4\",\"user_id\":\"1\",\"product_qty\":\"7\",\"product_size\":\"XL\"}', '', '::1', 1609932421, 0.203112, '1', 200),
(78, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"8e96aabc-5162-4469-9f7a-ed5e5fa523b2\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------091359460268808875363229\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609932487, 0.119187, '1', 200),
(79, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"42f5cb1f-6534-494c-a10c-b5357216952d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------500849908090901459501368\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"495\",\"product_id\":\"6\",\"user_id\":\"1\",\"product_qty\":\"1\",\"product_size\":\"\"}', '', '::1', 1609932532, 0.119824, '1', 200),
(80, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ae76c9cc-8ab0-4486-bbf2-4aa3f294212b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------683562205743508047716535\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609932536, 0.112232, '1', 200),
(81, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d5e6fe73-4c88-4d47-b774-9e6f81c61de8\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------585996413354930609619025\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"497\",\"product_id\":\"4\",\"user_id\":\"1\",\"product_qty\":\"1\",\"product_size\":\"XL\"}', '', '::1', 1609932547, 0.179853, '1', 200),
(82, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"3aff2dfc-af03-43c2-9d09-9b1e8657da08\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------751413151402176365824863\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609932550, 0.0772579, '1', 200),
(83, 'apis/cart_item_delete', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"186d8afd-e640-4c0b-87e9-e71b46bf6471\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------611204516097588284212077\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"270\",\"user_id\":\"1\",\"cart_id\":\"4\"}', '', '::1', 1609932611, 0.146193, '1', 200),
(84, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"2ef26c29-4799-4c11-9c2e-445f526d431f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------890191588408381280747175\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609932620, 0.0781269, '1', 200),
(85, 'apis/get_countries', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4f52da25-9155-47df-80c1-3a966ededc44\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=5qmcvdpulb1i7e6i39jnqcotpo6hu52d\",\"Content-Length\":\"0\"}', '', '::1', 1609932685, 0.118906, '1', 200),
(86, 'apis/get_countries', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"abad89cf-27c9-4b58-a817-f6ae3cbfb3b6\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------695606653105640317272132\",\"Cookie\":\"ci_sessions=er6uk47mbq17a6huk5920458i4cfei8v\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609932693, 0.0890021, '1', 200),
(87, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"78ae5b31-bb08-4453-9ea5-14375e8ab048\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------299268333486786360454590\",\"Cookie\":\"ci_sessions=er6uk47mbq17a6huk5920458i4cfei8v\",\"Content-Length\":\"1734\",\"user_id\":\"1\",\"type\":\"add\",\"pincode\":\"12345\",\"building_name\":\"Demo\",\"road_area_colony\":\"Doha\",\"city\":\"Doha\",\"district\":\"Doha\",\"state\":\"Doha\",\"country\":\"Qatar\",\"landmark\":\"\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1609932866, 0.128625, '1', 200),
(88, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"91685009-9248-4d7f-99d1-ce1ec3de1f08\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------140889718560442340097652\",\"Cookie\":\"ci_sessions=er6uk47mbq17a6huk5920458i4cfei8v\",\"Content-Length\":\"1736\",\"user_id\":\"1\",\"type\":\"edit\",\"pincode\":\"123451\",\"building_name\":\"Demo\",\"road_area_colony\":\"Doha\",\"city\":\"Doha\",\"district\":\"Doha\",\"state\":\"Doha\",\"country\":\"Qatar\",\"landmark\":\"\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1609932887, 0.0770631, '1', 200),
(89, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"6baa2ab0-1a7e-435f-b5dc-a03e1612cde8\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------426474589422193897719843\",\"Cookie\":\"ci_sessions=er6uk47mbq17a6huk5920458i4cfei8v\",\"Content-Length\":\"1735\",\"user_id\":\"1\",\"type\":\"add\",\"pincode\":\"123451\",\"building_name\":\"Demo\",\"road_area_colony\":\"Doha\",\"city\":\"Doha\",\"district\":\"Doha\",\"state\":\"Doha\",\"country\":\"Qatar\",\"landmark\":\"\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1609932932, 0.197175, '1', 200),
(90, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"26bbfa9b-7c5e-4c82-b894-d0590771dee7\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------425090236377557367398260\",\"Cookie\":\"ci_sessions=er6uk47mbq17a6huk5920458i4cfei8v\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609932978, 0.087384, '1', 200),
(91, 'apis/single_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"fca95fe3-04e0-46cf-a909-61e0e6f69d1d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------767900763682509773728482\",\"Cookie\":\"ci_sessions=er6uk47mbq17a6huk5920458i4cfei8v\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"2\"}', '', '::1', 1609933129, 0.0846398, '1', 200),
(92, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"f2b5df76-ad20-4d4b-8c2c-49176509acbe\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------375597771176609619302636\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933182, 0.0579751, '1', 200);
INSERT INTO `tbl_logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(93, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"8a1ef8d5-3675-489b-a706-5e8d5c71f167\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------071146596677457522993493\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1609933198, 0.130191, '1', 200),
(94, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"1e89046a-8da6-4def-9bd9-fe5feecc52a6\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------374092542155632702429741\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933203, 0.0393949, '1', 200),
(95, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"8399739c-573a-4c0e-99b5-108c069daf67\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------252506336443547822137454\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1609933220, 0.1254, '1', 200),
(96, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d3512a7f-7cab-4a7e-a4e9-405493d35960\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------545749559033462294094785\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933223, 0.0397439, '1', 200),
(97, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"56346149-4048-42db-a49b-6e7c1cf02099\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------810341416154454231116795\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"2\"}', '', '::1', 1609933232, 0.133635, '1', 200),
(98, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"2246fef4-b584-444d-981a-b79258be8103\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------768062146541328705574089\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933236, 0.0808229, '1', 200),
(99, 'apis/is_address_avail', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"2f609650-997a-4ce8-8776-edcea4cd6cd6\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------277642756552848699579184\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933331, 0.109462, '1', 200),
(100, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"5e5ed829-a50b-4fef-81d9-50adacbdcdec\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------491760712581443883356075\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933378, 0.085742, '1', 200),
(101, 'apis/delete_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"01d46291-3840-47ae-b8ee-05b109d78ee0\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------520877390261170208594178\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"265\",\"user_id\":\"1\",\"id\":\"1\"}', '', '::1', 1609933395, 0.225561, '1', 200),
(102, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"36f1ce97-224f-4ae5-8933-412822a8cb07\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------679555325017477667564106\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933403, 0.0398941, '1', 200),
(103, 'apis/wishlist', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"6028126c-d591-4b0e-a15d-a45deb5d6af2\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------499445778998466434372762\",\"Cookie\":\"ci_sessions=osqqg45ea9r807j3mbdtnmped7n188br\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"product_id\":\"4\"}', '', '::1', 1609933459, 0.068279, '1', 200),
(104, 'apis/my_wishlist', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ec162b0e-676e-4808-8648-cc1f541c8e1c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------250142433540201205875597\",\"Cookie\":\"ci_sessions=7b9u9fh988nd9b4vjteak1u59jcfngk7\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933494, 0.0567601, '1', 200),
(105, 'apis/empty_wishlist', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"8f8f3820-34a2-4375-83a6-e34e0f4b5cb9\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------639122779356527250878474\",\"Cookie\":\"ci_sessions=7b9u9fh988nd9b4vjteak1u59jcfngk7\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933527, 0.202502, '1', 200),
(106, 'apis/my_wishlist', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"947a941a-8a01-4773-9bd8-76c9e1b86146\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------279788005519099519520947\",\"Cookie\":\"ci_sessions=7b9u9fh988nd9b4vjteak1u59jcfngk7\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933530, 0.061111, '1', 200),
(107, 'apis/wishlist', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"33682ec4-f254-4a03-91f7-b6d12f413568\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------099638078791144612114127\",\"Cookie\":\"ci_sessions=7b9u9fh988nd9b4vjteak1u59jcfngk7\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"product_id\":\"4\"}', '', '::1', 1609933555, 0.0846581, '1', 200),
(108, 'apis/my_wishlist', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"984cee81-d985-4eda-8de5-fdf7b82d1129\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------923154563260731900525878\",\"Cookie\":\"ci_sessions=7b9u9fh988nd9b4vjteak1u59jcfngk7\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933557, 0.100525, '1', 200),
(109, 'apis/my_wishlist', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"67161ff2-bb46-4b0d-8989-50030ca1ed81\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------733640816581991737896674\",\"Cookie\":\"ci_sessions=7b9u9fh988nd9b4vjteak1u59jcfngk7\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933603, 0.153665, '1', 200),
(110, 'apis/my_wishlist', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"cca704fa-7825-484e-b39d-267dabf8fe88\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------656055701794133359592346\",\"Cookie\":\"ci_sessions=7b9u9fh988nd9b4vjteak1u59jcfngk7\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933605, 0.131357, '1', 200),
(111, 'apis/wishlist', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c5dbed84-03bd-441d-915a-a29e8c7906ee\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------653656468247112278250217\",\"Cookie\":\"ci_sessions=7b9u9fh988nd9b4vjteak1u59jcfngk7\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"product_id\":\"4\"}', '', '::1', 1609933608, 0.156929, '1', 200),
(112, 'apis/my_wishlist', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"931fc1cc-e394-4cc8-a34b-489b665e38c0\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------142833790351412071607382\",\"Cookie\":\"ci_sessions=7b9u9fh988nd9b4vjteak1u59jcfngk7\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933612, 0.0736539, '1', 200),
(113, 'apis/contact_subjects', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4733a08d-32e6-4de6-8ba5-36382d915cd1\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------745084667351950105569207\",\"Cookie\":\"ci_sessions=7b9u9fh988nd9b4vjteak1u59jcfngk7\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609933802, 0.0736761, '1', 200),
(114, 'apis/contact_subjects', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"96df9041-5945-44f1-bc38-c41c8aa53755\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=avhan6f5j387ieq2m83feqe7ertnabpd\",\"Content-Length\":\"0\"}', '', '::1', 1609933807, 0.118443, '1', 200),
(115, 'apis/contact_form', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"07b50450-4b91-4b57-b298-898493c29996\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------774186573705727764612563\",\"Cookie\":\"ci_sessions=avhan6f5j387ieq2m83feqe7ertnabpd\",\"Content-Length\":\"528\",\"contact_name\":\"unais\",\"contact_email\":\"unais@gmail.com\",\"contact_subject\":\"2\",\"contact_msg\":\"test\"}', '', '::1', 1609933923, 0.189355, '1', 200),
(116, 'apis/users_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"fca5dc4f-97a6-44d7-a114-4f3bc50ed5aa\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------478657706919847860855086\",\"Cookie\":\"ci_sessions=avhan6f5j387ieq2m83feqe7ertnabpd\",\"Content-Length\":\"166\",\"product_id\":\"4\"}', '', '::1', 1609933974, 0.0678489, '1', 200),
(117, 'apis/my_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"6826603a-cbba-4e16-97be-8a4971eaa8cb\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------794822208139337924566621\",\"Cookie\":\"ci_sessions=avhan6f5j387ieq2m83feqe7ertnabpd\",\"Content-Length\":\"166\",\"product_id\":\"4\"}', '', '::1', 1609934013, 0.054704, '1', 200),
(118, 'apis/my_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"f8e6609a-4ead-47ec-8d5e-d1d0710fa699\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------576347924109852923790534\",\"Cookie\":\"ci_sessions=avhan6f5j387ieq2m83feqe7ertnabpd\",\"Content-Length\":\"166\",\"product_id\":\"4\"}', '', '::1', 1609934018, 0.0550508, '1', 200),
(119, 'apis/my_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"74b54411-ac5d-4faf-9808-a063cb6a39f5\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------126446702478864552756085\",\"Cookie\":\"ci_sessions=avhan6f5j387ieq2m83feqe7ertnabpd\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609934025, 0.112041, '1', 200),
(120, 'apis/my_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"08d61f58-21ac-41a8-baea-c703610e9b12\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------098995516047152556078961\",\"Cookie\":\"ci_sessions=avhan6f5j387ieq2m83feqe7ertnabpd\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"product_id\":\"3\"}', '', '::1', 1609934034, 0.0550141, '1', 200),
(121, 'apis/product_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"08f84155-7a7c-4d22-a5cd-e4dcece26b41\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------271219575621350477407346\",\"Cookie\":\"ci_sessions=avhan6f5j387ieq2m83feqe7ertnabpd\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"product_id\":\"3\"}', '', '::1', 1609934131, 0.0539129, '1', 200),
(122, 'apis/product_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b503b3cf-b16f-4b12-a72c-9a7458115dd3\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------920568177784287137680860\",\"Cookie\":\"ci_sessions=6847pq50mgbi7oj6btjsu9a5ec1sd3rr\",\"Content-Length\":\"387\",\"user_id\":\"1\",\"product_id\":\"3\",\"review_desc\":\"Test\"}', '', '::1', 1609934151, 0.0380578, '1', 200),
(123, 'apis/product_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"829984b7-8561-4e3e-91d2-40ebac65859f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------228955392004920540951351\",\"Cookie\":\"ci_sessions=6847pq50mgbi7oj6btjsu9a5ec1sd3rr\",\"Content-Length\":\"491\",\"user_id\":\"1\",\"product_id\":\"3\",\"review_desc\":\"Test\",\"rate\":\"2\"}', '', '::1', 1609934156, 0.0351398, '1', 200),
(124, 'apis/product_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"bbe51337-7ff4-4f2c-80ac-4e7935d18085\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------358323932925377081910870\",\"Cookie\":\"ci_sessions=6847pq50mgbi7oj6btjsu9a5ec1sd3rr\",\"Content-Length\":\"249570\",\"user_id\":\"1\",\"product_id\":\"3\",\"review_desc\":\"Test\",\"rate\":\"2\"}', '', '::1', 1609934226, 0.144964, '1', 200),
(125, 'apis/product_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"6a16e5e9-e3fc-467f-94d7-6f34ed3a3bc5\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------653265490204619989896089\",\"Cookie\":\"ci_sessions=6847pq50mgbi7oj6btjsu9a5ec1sd3rr\",\"Content-Length\":\"249570\",\"user_id\":\"1\",\"product_id\":\"3\",\"review_desc\":\"Test\",\"rate\":\"2\"}', '', '::1', 1609934231, 0.0668461, '1', 200),
(126, 'apis/remove_review_image', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"dc1d00b0-fabe-45e7-9f2b-150e0fc7ac0e\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------708025520175681883104014\",\"Cookie\":\"ci_sessions=6847pq50mgbi7oj6btjsu9a5ec1sd3rr\",\"Content-Length\":\"381\",\"user_id\":\"1\",\"product_id\":\"3\",\"image_id\":\"1\"}', '', '::1', 1609934280, 0.130051, '1', 200),
(127, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"5de0c6ee-2f10-4337-968a-c8511180105f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------215649099305813275336142\",\"Cookie\":\"ci_sessions=6847pq50mgbi7oj6btjsu9a5ec1sd3rr\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609934493, 0.057023, '1', 200),
(128, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"8cbb8c8f-851a-497a-acdd-8eaea15940f9\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------162043807624103576614080\",\"Cookie\":\"ci_sessions=hit1ef7u48tu9lun8fboitti4crn39qu\",\"Content-Length\":\"497\",\"product_id\":\"4\",\"user_id\":\"1\",\"product_qty\":\"1\",\"product_size\":\"XL\"}', '', '::1', 1609934509, 0.047822, '1', 200),
(129, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c53d6f3a-e505-498c-9d91-b6e20bcec9d2\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------320144325409150062016617\",\"Cookie\":\"ci_sessions=hit1ef7u48tu9lun8fboitti4crn39qu\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609934511, 0.134006, '1', 200),
(130, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a8939d30-c04e-4595-be71-782cd055b72f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------357396390401621441425296\",\"Cookie\":\"ci_sessions=hit1ef7u48tu9lun8fboitti4crn39qu\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609935018, 0.124737, '1', 200),
(131, 'apis/payment', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"8f9c9b3e-cc21-4be7-a35f-a6cd2eef1d5e\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------133785481330103928995382\",\"Cookie\":\"ci_sessions=s0bm8857o63iuc8rmb6lsq36t6qkd6ji\",\"Content-Length\":\"609\",\"user_id\":\"1\",\"cart_type\":\"main_cart\",\"cart_ids\":\"6,5\",\"address_id\":\"2\",\"gateway\":\"cod\"}', '', '::1', 1609935063, 2.71089, '1', 200),
(132, 'apis/payment', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a5c6bf63-7daf-42d4-9737-e4c3cd48720c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------022188826577911477300475\",\"Cookie\":\"ci_sessions=s0bm8857o63iuc8rmb6lsq36t6qkd6ji\",\"Content-Length\":\"609\",\"user_id\":\"1\",\"cart_type\":\"main_cart\",\"cart_ids\":\"6,5\",\"address_id\":\"2\",\"gateway\":\"cod\"}', '', '::1', 1609935087, 0.138037, '1', 200),
(133, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"817f4b90-ad05-4255-b7db-0b257de338ff\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------991559261566742765971518\",\"Cookie\":\"ci_sessions=s0bm8857o63iuc8rmb6lsq36t6qkd6ji\",\"Content-Length\":\"497\",\"product_id\":\"4\",\"user_id\":\"1\",\"product_qty\":\"1\",\"product_size\":\"XL\"}', '', '::1', 1609935127, 0.111194, '1', 200),
(134, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"95dcaeac-dda4-4c2f-bad4-939d88c097f7\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------146183525002225524442723\",\"Cookie\":\"ci_sessions=s0bm8857o63iuc8rmb6lsq36t6qkd6ji\",\"Content-Length\":\"495\",\"product_id\":\"6\",\"user_id\":\"1\",\"product_qty\":\"1\",\"product_size\":\"\"}', '', '::1', 1609935133, 0.069752, '1', 200),
(135, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"1d6eba18-fc50-42d3-83a6-364559d4cacf\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------712988771637939784860611\",\"Cookie\":\"ci_sessions=s0bm8857o63iuc8rmb6lsq36t6qkd6ji\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609935135, 0.106932, '1', 200),
(136, 'apis/payment', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"15567d0d-229c-4411-b7b9-0397f1ca2e91\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------677342076046046254621913\",\"Cookie\":\"ci_sessions=s0bm8857o63iuc8rmb6lsq36t6qkd6ji\",\"Content-Length\":\"609\",\"user_id\":\"1\",\"cart_type\":\"main_cart\",\"cart_ids\":\"7,8\",\"address_id\":\"2\",\"gateway\":\"cod\"}', '', '::1', 1609935212, 0.451841, '1', 200),
(137, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b25f891b-2c31-46a6-b2e8-dba02fb26c15\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------372601597575073543530806\",\"Cookie\":\"ci_sessions=s0bm8857o63iuc8rmb6lsq36t6qkd6ji\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609935216, 0.0843649, '1', 200),
(138, 'apis/my_order', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"68a23c53-0024-4800-8c52-d6804bd26113\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------644359341933917165260392\",\"Cookie\":\"ci_sessions=s0bm8857o63iuc8rmb6lsq36t6qkd6ji\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609935313, 0.125564, '1', 200),
(139, 'apis/my_order', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"99dfd4f4-ec89-45db-a529-4bc759897b18\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------524000417708830006485852\",\"Cookie\":\"ci_sessions=s0bm8857o63iuc8rmb6lsq36t6qkd6ji\",\"Content-Length\":\"262\",\"user_id\":\"1\"}', '', '::1', 1609935384, 0.0659609, '1', 200),
(140, 'apis/order_detail', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"6ea51f38-a842-4d00-a882-c92e10342b89\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------674600892338592757620330\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"291\",\"user_id\":\"1\",\"order_unique_id\":\"ORDcnZhjk80740\"}', '', '::1', 1609935393, 0.224166, '1', 200),
(141, 'apis/order_detail', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c0cfee9f-008f-4a20-8fac-e2e5e46d6761\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------313593318197266395372784\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"401\",\"user_id\":\"1\",\"order_unique_id\":\"ORDcnZhjk80740\",\"product_id\":\"6\"}', '', '::1', 1609935404, 0.154808, '1', 200),
(142, 'apis/order_status', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a74453ff-19e2-42b2-af49-489639043d9f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------866217199824219537965622\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"381\",\"user_id\":\"1\",\"order_id\":\"2\",\"product_id\":\"6\"}', '', '::1', 1609935463, 0.074595, '1', 200),
(143, 'apis/coupons', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"5a68d245-f1c6-4368-aba5-07736163a11b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------737326376442005575506274\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609935562, 0.0822968, '1', 200),
(144, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"3aafb7a7-eed7-45f8-9f38-8d62c1bbd077\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------504794364741331810905366\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"495\",\"product_id\":\"6\",\"user_id\":\"1\",\"product_qty\":\"1\",\"product_size\":\"\"}', '', '::1', 1609935585, 0.162772, '1', 200),
(145, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"884b1ec8-2076-4e45-86e7-ef3b55f16d73\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------498218972104206333754873\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"497\",\"product_id\":\"4\",\"user_id\":\"1\",\"product_qty\":\"1\",\"product_size\":\"XL\"}', '', '::1', 1609935592, 0.13373, '1', 200),
(146, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"14ea8b1c-3d52-4280-aa92-07330968ff7f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------396286447362248890496997\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609935596, 0.0780771, '1', 200),
(147, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"70967fa2-d8a5-478c-9605-58fb64c845f0\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------020728366272758850891412\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609935601, 0.0726812, '1', 200),
(148, 'apis/coupons', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a378ee19-9f7c-4d72-9c72-4a04576cfa03\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------812738061490614974334953\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"274\",\"user_id\":\"1\",\"cart_ids\":\"10,9\"}', '', '::1', 1609935610, 0.06359, '1', 200),
(149, 'apis/coupons', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"0b873a46-c4e1-40bc-b582-22ffd821f169\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------416702253143364286308451\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"391\",\"user_id\":\"1\",\"cart_ids\":\"10,9\",\"cart_type\":\"main_cart\"}', '', '::1', 1609935624, 0.207171, '1', 200),
(150, 'apis/single_coupon', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d26c8ffb-316e-4830-98fd-436c9ba43079\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------842960726938763655786071\",\"Cookie\":\"ci_sessions=aliflbi41n9kjq8gjfm738nu93a9qdls\",\"Content-Length\":\"376\",\"user_id\":\"1\",\"cart_ids\":\"10,9\",\"id\":\"1\"}', '', '::1', 1609935691, 0.110896, '1', 200),
(151, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"3411834b-dcd3-475e-b2de-82cfb293ba01\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------532901046251766047330468\",\"Cookie\":\"ci_sessions=7dbe7fnh8vjjl1birr8pj89hke08jlkg\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609935746, 0.163376, '1', 200),
(152, 'apis/apply_coupon', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e57fc0d2-d53f-46e4-bb50-d48d51cb1d1d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------269496587840875222907176\",\"Cookie\":\"ci_sessions=7dbe7fnh8vjjl1birr8pj89hke08jlkg\",\"Content-Length\":\"500\",\"user_id\":\"1\",\"cart_ids\":\"10,9\",\"coupon_id\":\"1\",\"cart_type\":\"main_cart\"}', '', '::1', 1609935753, 0.111091, '1', 200),
(153, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"2fa89527-6898-4779-a647-5c98251ac0fd\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------543923446403573740039578\",\"Cookie\":\"ci_sessions=7dbe7fnh8vjjl1birr8pj89hke08jlkg\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1609935756, 0.0895989, '1', 200),
(154, 'apis/remove_coupon', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"bd69e7bc-5a52-485b-831e-51d36ded8fc9\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------749789987597203271818022\",\"Cookie\":\"ci_sessions=7dbe7fnh8vjjl1birr8pj89hke08jlkg\",\"Content-Length\":\"500\",\"user_id\":\"1\",\"cart_ids\":\"10,9\",\"coupon_id\":\"1\",\"cart_type\":\"main_cart\"}', '', '::1', 1609935849, 0.204442, '1', 200),
(155, 'apis/my_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"09c6f8a0-acb1-4cd3-a842-41fe3fe6a487\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------326652650098962880254283\",\"Cookie\":\"ci_sessions=7dbe7fnh8vjjl1birr8pj89hke08jlkg\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"product_id\":\"3\"}', '', '::1', 1609937225, 0.0642679, '1', 200),
(156, 'apis/my_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"a4caaeb3-644a-484a-bcf1-940327db005c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------423070053141751738985544\",\"Cookie\":\"ci_sessions=rqosjra0ejm9i5ccfvf94a0dqsho5plg\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"product_id\":\"4\"}', '', '::1', 1609937228, 0.152732, '1', 200),
(157, 'apis/product_review', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"97e3a44b-3f3c-446a-8a9f-da7128dc82cb\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------596913317733250438030385\",\"Cookie\":\"ci_sessions=rqosjra0ejm9i5ccfvf94a0dqsho5plg\",\"Content-Length\":\"285948\",\"user_id\":\"1\",\"product_id\":\"4\",\"review_desc\":\"Test\",\"rate\":\"2\"}', '', '::1', 1609937244, 0.0899129, '1', 200),
(158, 'apis/my_order', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ee9ca1a9-1c27-4930-a5a5-e76b6adc2b76\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------470872458721002785942292\",\"Cookie\":\"ci_sessions=rqosjra0ejm9i5ccfvf94a0dqsho5plg\",\"Content-Length\":\"262\",\"user_id\":\"1\"}', '', '::1', 1609937257, 0.0785861, '1', 200),
(159, 'apis/my_order', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"be358063-f5fd-4ed5-b955-6351fc4b8069\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------788192489099479400573748\",\"Cookie\":\"ci_sessions=rqosjra0ejm9i5ccfvf94a0dqsho5plg\",\"Content-Length\":\"262\",\"user_id\":\"1\"}', '', '::1', 1609937287, 0.127244, '1', 200),
(160, 'apis/my_order', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"91569835-8ac3-4052-9e82-646c6cf13d18\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------682080806260757370889277\",\"Cookie\":\"ci_sessions=rqosjra0ejm9i5ccfvf94a0dqsho5plg\",\"Content-Length\":\"262\",\"user_id\":\"1\"}', '', '::1', 1609937293, 0.0976741, '1', 200),
(161, 'apis/remove_review_image', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"bab34807-dd01-4137-8732-8e28ee2f636c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------151559600388646925647036\",\"Cookie\":\"ci_sessions=rqosjra0ejm9i5ccfvf94a0dqsho5plg\",\"Content-Length\":\"383\",\"user_id\":\"1\",\"product_id\":\"3\",\"image_id\":\"103\"}', '', '::1', 1609937407, 0.090193, '1', 200),
(162, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"671a9e71-75e7-4e08-8c33-0b6872bb7fe8\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------567429957833269816754917\",\"Cookie\":\"ci_sessions=rqosjra0ejm9i5ccfvf94a0dqsho5plg\",\"Content-Length\":\"158\",\"id\":\"4\"}', '', '::1', 1609937426, 1.87477, '1', 200),
(163, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e89d4cae-937e-43ad-87f6-663229e1ad62\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------812236578841342701392745\",\"Cookie\":\"ci_sessions=rqosjra0ejm9i5ccfvf94a0dqsho5plg\",\"Content-Length\":\"265\",\"id\":\"4\",\"user_id\":\"1\"}', '', '::1', 1609937454, 0.195365, '1', 200),
(164, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"1a63d90b-fb48-4c50-bb3f-61f0e4041520\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------113035586145691897363268\",\"Content-Length\":\"265\",\"id\":\"4\",\"user_id\":\"1\"}', '', '::1', 1610009375, 1.43483, '1', 200),
(165, 'apis/today_deal', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"5be01639-3336-4949-b789-b02d147d4e9c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=bt28gorr22juv72drfid0cr1l4n8p87m\",\"Content-Length\":\"0\"}', '', '::1', 1610009671, 0.168069, '1', 200),
(166, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e2484409-098e-4ce4-8e44-19afc20c9446\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------694754079337285342054517\",\"Cookie\":\"ci_sessions=bt28gorr22juv72drfid0cr1l4n8p87m\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610009888, 0.0873179, '1', 200),
(167, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"f6cba5f4-23e0-4428-b6a4-6e605fd442bb\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------415665441461971845213795\",\"Cookie\":\"ci_sessions=v60ukcdjb4rvghlof93jlhe8r28upfmv\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610010067, 0.087276, '1', 200),
(168, 'apis/delete_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"3ed41e99-de75-49aa-93c6-e4d55473727b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------799736932614626608569924\",\"Cookie\":\"ci_sessions=v60ukcdjb4rvghlof93jlhe8r28upfmv\",\"Content-Length\":\"265\",\"user_id\":\"1\",\"id\":\"2\"}', '', '::1', 1610010075, 0.171288, '1', 200),
(169, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"30639ec7-90fc-4d40-a15f-6b4f7958af17\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------038295051178709818832801\",\"Cookie\":\"ci_sessions=v60ukcdjb4rvghlof93jlhe8r28upfmv\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610010078, 0.087291, '1', 200),
(170, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"68858f85-0f3b-473a-8e7d-de77b39eac9e\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------203820619582682191915214\",\"Cookie\":\"ci_sessions=v60ukcdjb4rvghlof93jlhe8r28upfmv\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610010080, 0.111983, '1', 200),
(171, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4a24cdf0-bb10-48e3-b0ed-74cf57f94fd3\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------932755169151582867660995\",\"Cookie\":\"ci_sessions=v60ukcdjb4rvghlof93jlhe8r28upfmv\",\"Content-Length\":\"1735\",\"user_id\":\"1\",\"type\":\"add\",\"pincode\":\"123451\",\"building_name\":\"Demo\",\"road_area_colony\":\"Doha\",\"city\":\"Doha\",\"district\":\"Doha\",\"state\":\"Doha\",\"country\":\"Qatar\",\"landmark\":\"\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1610010135, 0.146034, '1', 200),
(172, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"8e664f7d-f638-4ceb-8318-2a6e1cb9c909\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------164274511112318709413691\",\"Cookie\":\"ci_sessions=v60ukcdjb4rvghlof93jlhe8r28upfmv\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610010139, 0.035548, '1', 200),
(173, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d9d2c5ae-dae6-4d03-8aa5-6c1cfff6dd7a\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------350683762843362621604506\",\"Cookie\":\"ci_sessions=v60ukcdjb4rvghlof93jlhe8r28upfmv\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610010143, 0.0740259, '1', 200),
(174, 'apis/order_detail', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c12dc1c5-0984-455e-a047-3860bfc6f16f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------482149366909208522706304\",\"Cookie\":\"ci_sessions=v60ukcdjb4rvghlof93jlhe8r28upfmv\",\"Content-Length\":\"401\",\"user_id\":\"1\",\"order_unique_id\":\"ORDcnZhjk80740\",\"product_id\":\"6\"}', '', '::1', 1610010437, 0.167819, '1', 200),
(175, 'apis/products_by_brand', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"9538bbb9-5c69-488e-a536-06fbd098d4f4\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------521996878237750385734063\",\"Content-Length\":\"268\",\"brand_id\":\"1\",\"page\":\"1\"}', '', '::1', 1610431530, 2.46294, '1', 200),
(176, 'apis/products_by_offer', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"3022133d-3ef6-4fe1-8a7b-1fdef80d4bbf\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------656709533826963283029846\",\"Cookie\":\"ci_sessions=bebnsgb1vd10j2mj4uv082tijtd64dl0\",\"Content-Length\":\"268\",\"offer_id\":\"6\",\"page\":\"1\"}', '', '::1', 1610431544, 0.246902, '1', 200),
(177, 'apis/products_by_offer', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e0734c34-27bf-4290-a7b5-3bd5867ca10d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------624797605376257687255561\",\"Cookie\":\"ci_sessions=bebnsgb1vd10j2mj4uv082tijtd64dl0\",\"Content-Length\":\"268\",\"offer_id\":\"6\",\"page\":\"1\"}', '', '::1', 1610431552, 0.226922, '1', 200),
(178, 'apis/today_deal', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"0ba1d67e-9a5b-472a-9061-9d91940ca3fd\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=bebnsgb1vd10j2mj4uv082tijtd64dl0\",\"Content-Length\":\"0\"}', '', '::1', 1610431711, 0.268029, '1', 200),
(179, 'apis/today_deal', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"88ce1709-8435-4ea6-b48f-3cae90007a14\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=bebnsgb1vd10j2mj4uv082tijtd64dl0\",\"Content-Length\":\"0\"}', '', '::1', 1610431743, 0.147941, '1', 200),
(180, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"7f07220e-b211-4809-a41d-0fb3b9a2e213\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------616757139082721843371866\",\"Cookie\":\"ci_sessions=bebnsgb1vd10j2mj4uv082tijtd64dl0\",\"Content-Length\":\"265\",\"id\":\"4\",\"user_id\":\"1\"}', '', '::1', 1610431789, 0.493861, '1', 200),
(181, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"05a58996-17e7-453d-929a-f34d61e6bda8\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------814708690961855596961372\",\"Cookie\":\"ci_sessions=bebnsgb1vd10j2mj4uv082tijtd64dl0\",\"Content-Length\":\"265\",\"id\":\"3\",\"user_id\":\"1\"}', '', '::1', 1610431958, 0.334477, '1', 200);
INSERT INTO `tbl_logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(182, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"343d5811-85ee-471c-a21d-91a65960096f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------979527283457254910117127\",\"Cookie\":\"ci_sessions=6k1vd122vjj6blbo73huaf0tr4ce3rrr\",\"Content-Length\":\"265\",\"id\":\"3\",\"user_id\":\"1\"}', '', '::1', 1610432187, 0.171153, '1', 200),
(183, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4fafbb54-6407-4fc9-bce1-bca4ce3172eb\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------311087027908083809292909\",\"Cookie\":\"ci_sessions=6k1vd122vjj6blbo73huaf0tr4ce3rrr\",\"Content-Length\":\"265\",\"id\":\"3\",\"user_id\":\"1\"}', '', '::1', 1610432210, 0.124482, '1', 200),
(184, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"972fcd90-59d1-4e40-9ea5-f2e0632c4cd8\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------375195555929594409281078\",\"Cookie\":\"ci_sessions=6k1vd122vjj6blbo73huaf0tr4ce3rrr\",\"Content-Length\":\"265\",\"id\":\"3\",\"user_id\":\"1\"}', '', '::1', 1610432229, 0.141047, '1', 200),
(185, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"24d40f18-4a29-4f13-b37e-a6efb9690259\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------685432926646251517470955\",\"Cookie\":\"ci_sessions=6k1vd122vjj6blbo73huaf0tr4ce3rrr\",\"Content-Length\":\"265\",\"id\":\"3\",\"user_id\":\"1\"}', '', '::1', 1610432294, 0.131777, '1', 0),
(186, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"64085fa3-9304-4635-bd91-696c924135cd\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------106725623089992654603945\",\"Cookie\":\"ci_sessions=99g9ube09ib9e3sjosqh4fj5ll7cdqnp\",\"Content-Length\":\"265\",\"id\":\"3\",\"user_id\":\"1\"}', '', '::1', 1610432312, 0.0511332, '1', 0),
(187, 'apis/today_deal', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"58820180-9b30-448d-8b5a-2ad1d37dd061\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=99g9ube09ib9e3sjosqh4fj5ll7cdqnp\",\"Content-Length\":\"0\"}', '', '::1', 1610432430, 0.0968859, '1', 200),
(188, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"3f8758ff-412e-4f53-ba11-0dfb08a57a49\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------345068276608757039274498\",\"Cookie\":\"ci_sessions=99g9ube09ib9e3sjosqh4fj5ll7cdqnp\",\"Content-Length\":\"265\",\"id\":\"3\",\"user_id\":\"1\"}', '', '::1', 1610432436, 0.224436, '1', 200),
(189, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"47f16b27-5aec-48db-b799-2e3f5452cc43\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------020707371418925902467415\",\"Cookie\":\"ci_sessions=99g9ube09ib9e3sjosqh4fj5ll7cdqnp\",\"Content-Length\":\"265\",\"id\":\"3\",\"user_id\":\"1\"}', '', '::1', 1610432457, 0.294964, '1', 200),
(190, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"f71cd3da-6db1-428f-980a-64944f1d9b2c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------744263120538802306268280\",\"Cookie\":\"ci_sessions=99g9ube09ib9e3sjosqh4fj5ll7cdqnp\",\"Content-Length\":\"265\",\"id\":\"3\",\"user_id\":\"1\"}', '', '::1', 1610432510, 0.180846, '1', 200),
(191, 'apis/single_product', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"809aeb24-f683-4ef3-b28a-f6910350811a\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------271547919064766670489812\",\"Cookie\":\"ci_sessions=99g9ube09ib9e3sjosqh4fj5ll7cdqnp\",\"Content-Length\":\"265\",\"id\":\"3\",\"user_id\":\"1\"}', '', '::1', 1610432565, 0.0755298, '1', 200),
(192, 'apis/login', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"73cc2dc2-b651-4f2e-9af4-f91dade27466\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------005563834975255622153290\",\"Cookie\":\"ci_sessions=99g9ube09ib9e3sjosqh4fj5ll7cdqnp\",\"Content-Length\":\"298\",\"email\":\"unais.whyte@gmail.com\",\"password\":\"Asdasd@123\"}', '', '::1', 1610432571, 0.135629, '1', 200),
(193, 'apis/change_password', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"09cb829f-2914-4a15-a83a-0b6f7593aae3\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------605527119720323216238123\",\"Cookie\":\"ci_sessions=99g9ube09ib9e3sjosqh4fj5ll7cdqnp\",\"Content-Length\":\"174\",\"password\":\"Asdasd@1231\"}', '', '::1', 1610432581, 0.084676, '1', 200),
(194, 'apis/change_password', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"06f97fef-2b23-4689-b206-adf94724af9a\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------850311542503282618020434\",\"Cookie\":\"ci_sessions=99g9ube09ib9e3sjosqh4fj5ll7cdqnp\",\"Content-Length\":\"281\",\"user_id\":\"1\",\"password\":\"Asdasd@1231\"}', '', '::1', 1610432605, 0.059932, '1', 200),
(195, 'apis/change_password', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ba116079-aafb-4ad9-b69e-fd59e4433af8\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------590611024173288733783213\",\"Cookie\":\"ci_sessions=bj6im99ll6s145qe1cgvhrt1nvneqett\",\"Content-Length\":\"402\",\"user_id\":\"1\",\"old_password\":\"Asdasd@1231\",\"new_password\":\"123456\"}', '', '::1', 1610432623, 0.037138, '1', 200),
(196, 'apis/change_password', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"3cb5c547-ccd9-46d0-a1a9-d0c2390b3088\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------071111682160609844726580\",\"Cookie\":\"ci_sessions=bj6im99ll6s145qe1cgvhrt1nvneqett\",\"Content-Length\":\"401\",\"user_id\":\"1\",\"old_password\":\"Asdasd@123\",\"new_password\":\"123456\"}', '', '::1', 1610432627, 0.0904009, '1', 200),
(197, 'apis/change_password', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"93b0200d-7490-46a0-9044-c6274c521c76\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------800166371298469518560718\",\"Cookie\":\"ci_sessions=bj6im99ll6s145qe1cgvhrt1nvneqett\",\"Content-Length\":\"401\",\"user_id\":\"1\",\"old_password\":\"123456\",\"new_password\":\"Asdasd@123\"}', '', '::1', 1610432635, 0.0679471, '1', 200),
(198, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"0b3d771e-eb96-4e96-a4b7-fbc6e372263b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------084421269030469628432919\",\"Cookie\":\"ci_sessions=bj6im99ll6s145qe1cgvhrt1nvneqett\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610432929, 0.119792, '1', 200),
(199, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"735ef0fc-98ef-4231-8e2f-371f8893109e\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------092344351737670982450903\",\"Cookie\":\"ci_sessions=hnkni3m3a9cjp9muv4trogm309jar03j\",\"Content-Length\":\"158\",\"id\":\"1\"}', '', '::1', 1610432960, 0.129833, '1', 200),
(200, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"38b56a8c-4cec-463c-bfe9-fb9d0bff1859\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------171324214870568458465211\",\"Cookie\":\"ci_sessions=hnkni3m3a9cjp9muv4trogm309jar03j\",\"Content-Length\":\"274\",\"id\":\"1\",\"user_name\":\"Unais EE\"}', '', '::1', 1610432976, 0.116168, '1', 200),
(201, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"062324dd-8a46-477e-9a6c-91a7e1e16ca6\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------197541723437650970553428\",\"Cookie\":\"ci_sessions=hnkni3m3a9cjp9muv4trogm309jar03j\",\"Content-Length\":\"391\",\"id\":\"1\",\"user_name\":\"Unais EE\",\"user_phone\":\"31404156\"}', '', '::1', 1610432988, 0.074789, '1', 200),
(202, 'apis/login', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"0a3aa636-0768-426c-ae70-f9894cf1f524\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------432096864535109319963331\",\"Cookie\":\"ci_sessions=hnkni3m3a9cjp9muv4trogm309jar03j\",\"Content-Length\":\"298\",\"email\":\"unais.whyte@gmail.com\",\"password\":\"Asdasd@123\"}', '', '::1', 1610432998, 0.063168, '1', 200),
(203, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ebcde8ab-3f0d-40a0-a78f-0cba43eac71f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------774539421771368276748713\",\"Cookie\":\"ci_sessions=hnkni3m3a9cjp9muv4trogm309jar03j\",\"Content-Length\":\"391\",\"id\":\"1\",\"user_name\":\"Unais EE\",\"user_phone\":\"31404151\"}', '', '::1', 1610433006, 0.058759, '1', 200),
(204, 'apis/login', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"cc2963fb-3e87-4ff8-8910-10604da91e55\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------960612103290491078595174\",\"Cookie\":\"ci_sessions=hnkni3m3a9cjp9muv4trogm309jar03j\",\"Content-Length\":\"298\",\"email\":\"unais.whyte@gmail.com\",\"password\":\"Asdasd@123\"}', '', '::1', 1610433009, 0.100926, '1', 200),
(205, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"912ebb9d-7ec3-4b99-b0bd-707652970382\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------669441901522235031918450\",\"Cookie\":\"ci_sessions=hnkni3m3a9cjp9muv4trogm309jar03j\",\"Content-Length\":\"161974\",\"id\":\"1\",\"user_name\":\"Unais EE\",\"user_phone\":\"31404151\"}', '', '::1', 1610433050, 0.368849, '1', 200),
(206, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e54d75cb-ee00-4bac-8ba4-3cdb2b1445c4\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------871687442526640900756735\",\"Cookie\":\"ci_sessions=hnkni3m3a9cjp9muv4trogm309jar03j\",\"Content-Length\":\"161974\",\"id\":\"1\",\"user_name\":\"Unais EE\",\"user_phone\":\"31404151\"}', '', '::1', 1610433130, 0.271271, '1', 200),
(207, 'apis/login', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b3fc6980-6d18-41f9-8658-d0af9cab85be\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------662328690900330213677804\",\"Cookie\":\"ci_sessions=hnkni3m3a9cjp9muv4trogm309jar03j\",\"Content-Length\":\"298\",\"email\":\"unais.whyte@gmail.com\",\"password\":\"Asdasd@123\"}', '', '::1', 1610433133, 0.038625, '1', 200),
(208, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ebb31146-3110-4ede-93bc-3d732c464eaa\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------594128723661321060457944\",\"Cookie\":\"ci_sessions=hnkni3m3a9cjp9muv4trogm309jar03j\",\"Content-Length\":\"161974\",\"id\":\"1\",\"user_name\":\"Unais EE\",\"user_phone\":\"31404151\"}', '', '::1', 1610433233, 0.290031, '1', 200),
(209, 'apis/banners', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"e3d39300-ae39-4f3a-9673-518ee039a02c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=nq4mk45vs2h132pga51m3he1vedqfh7m\",\"Content-Length\":\"0\"}', '', '::1', 1610433610, 0.0814929, '1', 200),
(210, 'apis/banners', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ee120d88-0c24-494b-9494-c7a4b34f7849\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=00f2ueb4l7e61hhtdrvgmgbl6tjmrdo3\",\"Content-Length\":\"0\"}', '', '::1', 1610433613, 0.039562, '1', 200),
(211, 'apis/banners', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c5ddab38-f9c2-443e-a9c2-14af087dd6ab\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=00f2ueb4l7e61hhtdrvgmgbl6tjmrdo3\",\"Content-Length\":\"0\"}', '', '::1', 1610433643, 0.077673, '1', 200),
(212, 'apis/banners', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"173be231-a05d-45bf-97ee-508694449143\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=00f2ueb4l7e61hhtdrvgmgbl6tjmrdo3\",\"Content-Length\":\"0\"}', '', '::1', 1610433688, 0.185834, '1', 200),
(213, 'apis/banners', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"1ee853f3-5658-46e5-80dc-1050efdea751\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=00f2ueb4l7e61hhtdrvgmgbl6tjmrdo3\",\"Content-Length\":\"0\"}', '', '::1', 1610433721, 0.145159, '1', 200),
(214, 'apis/banners', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"fa537145-bd3c-4b42-9cb5-86c595680338\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=00f2ueb4l7e61hhtdrvgmgbl6tjmrdo3\",\"Content-Length\":\"0\"}', '', '::1', 1610433908, 0.0948038, '1', 200),
(215, 'apis/banners', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"53fa3b30-6d31-4917-b6db-a1f3a5f4f16d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Cookie\":\"ci_sessions=00f2ueb4l7e61hhtdrvgmgbl6tjmrdo3\",\"Content-Length\":\"0\"}', '', '::1', 1610433926, 0.0651319, '1', 200),
(216, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"992cced8-5a46-4c55-a25e-39cf56796e9f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------327561798840055217924626\",\"Cookie\":\"ci_sessions=bnj3dtgu32s9k02pq45jem8er0mnbijm\",\"Content-Length\":\"1735\",\"user_id\":\"1\",\"type\":\"add\",\"pincode\":\"123451\",\"building_name\":\"Demo\",\"road_area_colony\":\"Doha\",\"city\":\"Doha\",\"district\":\"Doha\",\"state\":\"Doha\",\"country\":\"Qatar\",\"landmark\":\"\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1610434117, 0.171466, '1', 200),
(217, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c2a65627-2914-4408-988e-08b168d0dc0c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------069012930411595963591010\",\"Cookie\":\"ci_sessions=bnj3dtgu32s9k02pq45jem8er0mnbijm\",\"Content-Length\":\"1175\",\"user_id\":\"1\",\"type\":\"add\",\"building_number\":\"500\",\"street\":\"250\",\"zone\":\"300\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1610434679, 0.167449, '1', 200),
(218, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"700b6d48-8309-4882-b127-a1a3f469f382\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------976069366935885364025113\",\"Cookie\":\"ci_sessions=h40kss5jjrgrl0gsm5obf3cvb3favukm\",\"Content-Length\":\"1175\",\"user_id\":\"1\",\"type\":\"add\",\"building_number\":\"500\",\"street\":\"250\",\"zone\":\"300\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1610434768, 0.0530682, '1', 200),
(219, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"f030255c-3583-4b38-a3ac-6f31b2bae603\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------594975386298260103968161\",\"Cookie\":\"ci_sessions=h40kss5jjrgrl0gsm5obf3cvb3favukm\",\"Content-Length\":\"1175\",\"user_id\":\"1\",\"type\":\"add\",\"building_number\":\"500\",\"street\":\"250\",\"zone\":\"300\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1610434818, 0.114841, '1', 200),
(220, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"bec0800b-35c1-4b37-b21f-edb3d66c743b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------770099930185048331819194\",\"Cookie\":\"ci_sessions=h40kss5jjrgrl0gsm5obf3cvb3favukm\",\"Content-Length\":\"1176\",\"user_id\":\"1\",\"type\":\"edit\",\"building_number\":\"500\",\"street\":\"250\",\"zone\":\"300\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1610434910, 0.180458, '1', 200),
(221, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"3965447b-f1ae-4f95-8135-02f1413a9ed0\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------248916877038715015698404\",\"Cookie\":\"ci_sessions=h40kss5jjrgrl0gsm5obf3cvb3favukm\",\"Content-Length\":\"1278\",\"user_id\":\"1\",\"type\":\"edit\",\"building_number\":\"500\",\"street\":\"250\",\"zone\":\"300\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\",\"id\":\"1\"}', '', '::1', 1610434923, 0.0943191, '1', 200),
(222, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4f096822-27c8-4d73-9385-3b4a707007fa\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------352851439085483742854083\",\"Cookie\":\"ci_sessions=h40kss5jjrgrl0gsm5obf3cvb3favukm\",\"Content-Length\":\"1278\",\"user_id\":\"1\",\"id\":\"1\",\"type\":\"edit\",\"building_number\":\"501\",\"street\":\"250\",\"zone\":\"300\",\"name\":\"Unais\",\"email\":\"unais.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1610434947, 0.19566, '1', 200),
(223, 'apis/single_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b6435e0d-970e-4fa5-b560-08434cede081\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------019036817040704155085864\",\"Cookie\":\"ci_sessions=h40kss5jjrgrl0gsm5obf3cvb3favukm\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"2\"}', '', '::1', 1610435296, 0.0965362, '1', 200),
(224, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"5e9b26e0-ea70-4daa-9828-3e513343d459\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------467653898784268406026907\",\"Cookie\":\"ci_sessions=8rnihnubdg3a57h9dd07f0arf9b4ndf1\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610435317, 0.0528059, '1', 200),
(225, 'apis/single_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"06e1fdda-26d2-4474-81a8-06c79d8c8ab3\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------998346172186987477482067\",\"Cookie\":\"ci_sessions=8rnihnubdg3a57h9dd07f0arf9b4ndf1\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610435326, 0.0691872, '1', 200),
(226, 'apis/single_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"6acfa99b-b922-4fe4-b6b4-f7fbf651f9d9\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------664938598334696092636836\",\"Cookie\":\"ci_sessions=8rnihnubdg3a57h9dd07f0arf9b4ndf1\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610435414, 0.127492, '1', 200),
(227, 'apis/single_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"cce84d2b-4728-4d6f-b82f-609ddce3502c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------992533488473942269438139\",\"Cookie\":\"ci_sessions=8rnihnubdg3a57h9dd07f0arf9b4ndf1\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610435434, 0.109794, '1', 200),
(228, 'apis/single_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"97141a68-3a45-48b4-aebb-648840629ee4\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------636935129900153524329054\",\"Cookie\":\"ci_sessions=8rnihnubdg3a57h9dd07f0arf9b4ndf1\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610435468, 0.0685949, '1', 200),
(229, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"9beb2323-ca2d-4ff3-9ce7-285981a373af\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------427525948395208801686497\",\"Cookie\":\"ci_sessions=8rnihnubdg3a57h9dd07f0arf9b4ndf1\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610435471, 0.112655, '1', 200),
(230, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"44e762ba-6852-4f0a-a732-4601425a02c7\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------519808911486883006840574\",\"Cookie\":\"ci_sessions=8rnihnubdg3a57h9dd07f0arf9b4ndf1\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610435522, 0.0875752, '1', 200),
(231, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"27280f08-9fa0-4eb3-b3a3-79d47fb27d58\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------048800397088144577227532\",\"Cookie\":\"ci_sessions=8rnihnubdg3a57h9dd07f0arf9b4ndf1\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610435580, 0.0840399, '1', 200),
(232, 'apis/addedit_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"26dadcc5-4a2b-4c2b-94c9-71147fe46e86\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------708477433265791533145298\",\"Cookie\":\"ci_sessions=8rnihnubdg3a57h9dd07f0arf9b4ndf1\",\"Content-Length\":\"1173\",\"user_id\":\"1\",\"type\":\"add\",\"building_number\":\"200\",\"street\":\"350\",\"zone\":\"400\",\"name\":\"Demo\",\"email\":\"demo.whyte@gmail.com\",\"mobile_no\":\"31404159\",\"alter_mobile_no\":\"\",\"address_type\":\"1\"}', '', '::1', 1610435620, 0.191011, '1', 200),
(233, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b99f7f42-3ac5-48cc-b838-d10c5db59649\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------861625511634390396451514\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610435624, 0.105362, '1', 200),
(234, 'apis/single_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d48ae966-c111-4527-8634-20bf6f1f2b2c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------285224640379575672718517\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610435668, 0.0659349, '1', 200),
(235, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"aa5e6dc5-b8da-45fd-b209-db53be4115d8\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------440567818263966742890459\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"2\"}', '', '::1', 1610435674, 0.244695, '1', 200),
(236, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"2bc0bbd3-0548-4ca8-96a0-85cd38ea1181\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------220250636996118500541124\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610435686, 0.145066, '1', 200),
(237, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ef3b7094-e2b0-48e3-9f73-830eba3268c2\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------532436518211157811392665\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610435815, 0.20724, '1', 200),
(238, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"adf1b98a-0575-4eb3-b89e-8956f9a45a4b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------314626791913786725314173\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610435829, 0.0626822, '1', 200),
(239, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"994b103a-0973-4dab-9db0-ca57f9fb2f3e\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------272496356576300147804620\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"2\"}', '', '::1', 1610435837, 0.094516, '1', 200),
(240, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c6270735-c204-4d99-a11d-eb35b8523b4f\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------303892410558286097118208\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610435840, 0.059772, '1', 200),
(241, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"686fa408-97a9-4cb1-93db-99f127367b12\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------871787123714630598973951\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610435845, 0.065557, '1', 200),
(242, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"96734826-0936-4463-9962-529b46abf1ce\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------229213177466779395349057\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610435846, 0.035696, '1', 200),
(243, 'apis/is_address_avail', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"1f27122d-3ee6-426f-8ba0-85648ed65c6c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------098508987783630193369179\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610435891, 0.134875, '1', 200),
(244, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"97e78fbf-249a-436a-91cf-25e95f378349\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------063625274659254389784582\",\"Cookie\":\"ci_sessions=lvqkephlq2p2se940atijf44r679q4ej\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610435991, 0.0966051, '1', 200),
(245, 'apis/cart_add_update', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ba89d857-1c12-4667-b554-e759d4b87155\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------555531980451743948309921\",\"Cookie\":\"ci_sessions=kertn2nbmg2kc2acd2a62t4u89fshgsn\",\"Content-Length\":\"497\",\"product_id\":\"4\",\"user_id\":\"1\",\"product_qty\":\"1\",\"product_size\":\"XL\"}', '', '::1', 1610435996, 0.121672, '1', 200),
(246, 'apis/my_cart', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b1bda989-a4d1-480b-9e8d-0198bf018892\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------950280746290028167905197\",\"Cookie\":\"ci_sessions=kertn2nbmg2kc2acd2a62t4u89fshgsn\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610435998, 0.146333, '1', 200),
(247, 'apis/payment', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"dbcade04-f7c1-423b-9d19-97ce4969f442\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------442077100770326382480496\",\"Cookie\":\"ci_sessions=kertn2nbmg2kc2acd2a62t4u89fshgsn\",\"Content-Length\":\"608\",\"user_id\":\"1\",\"cart_type\":\"main_cart\",\"cart_ids\":\"12\",\"address_id\":\"1\",\"gateway\":\"cod\"}', '', '::1', 1610436136, 0.788704, '1', 200),
(248, 'apis/order_detail', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"990f0bfa-cb23-4154-84b4-148910936d79\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------755437431100053099496580\",\"Cookie\":\"ci_sessions=kertn2nbmg2kc2acd2a62t4u89fshgsn\",\"Content-Length\":\"401\",\"user_id\":\"1\",\"order_unique_id\":\"ORDcnZhjk80740\",\"product_id\":\"6\"}', '', '::1', 1610436818, 0.190001, '1', 200),
(249, 'apis/order_detail', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"b126c7b7-2dbd-46f2-8883-3e78b944647d\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------121645350304342787790491\",\"Cookie\":\"ci_sessions=tchde1ptnbvhqasbgir3a2bch7j6fnum\",\"Content-Length\":\"401\",\"user_id\":\"1\",\"order_unique_id\":\"ORDcnZhjk80740\",\"product_id\":\"6\"}', '', '::1', 1610436895, 0.162292, '1', 200),
(250, 'apis/order_detail', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"9e320b1d-5987-4da1-9e22-97d7b42a75c6\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------092443309379610528792326\",\"Cookie\":\"ci_sessions=tchde1ptnbvhqasbgir3a2bch7j6fnum\",\"Content-Length\":\"401\",\"user_id\":\"1\",\"order_unique_id\":\"ORDcnZhjk80740\",\"product_id\":\"6\"}', '', '::1', 1610436972, 0.112424, '1', 200),
(251, 'apis/login', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"d4334ae5-ad55-4b33-ab7d-0e7a9b0c0236\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------917635682607150543644776\",\"Cookie\":\"ci_sessions=tchde1ptnbvhqasbgir3a2bch7j6fnum\",\"Content-Length\":\"298\",\"email\":\"unais.whyte@gmail.com\",\"password\":\"Asdasd@123\"}', '', '::1', 1610441586, 0.060689, '1', 200),
(252, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"5927c03a-3cc6-49a9-af34-6c29f4fa988b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------589896506355272084564977\",\"Cookie\":\"ci_sessions=5ea77nmoi64tm66tslc5pof1cemp4d9k\",\"Content-Length\":\"161974\",\"id\":\"1\",\"user_name\":\"Unais EE\",\"user_phone\":\"31404151\"}', '', '::1', 1610441595, 0.278193, '1', 200),
(253, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"3761b4f6-e03d-4878-89bd-bdc238d19b38\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------202113895968257007856881\",\"Cookie\":\"ci_sessions=5ea77nmoi64tm66tslc5pof1cemp4d9k\",\"Content-Length\":\"161974\",\"id\":\"1\",\"user_name\":\"Unais EE\",\"user_phone\":\"31404151\"}', '', '::1', 1610441747, 0.28077, '1', 200),
(254, 'apis/edit_profile', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"1eb50f5c-3cef-4e77-ad35-dc54a4f63059\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------657944504481650713545600\",\"Cookie\":\"ci_sessions=5ea77nmoi64tm66tslc5pof1cemp4d9k\",\"Content-Length\":\"161974\",\"id\":\"1\",\"user_name\":\"Unais EE\",\"user_phone\":\"31404151\"}', '', '::1', 1610441752, 0.334534, '1', 200),
(255, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"71097f76-3c42-47b2-86cb-48f7f4240edb\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------692016197838840669733493\",\"Cookie\":\"ci_sessions=5ea77nmoi64tm66tslc5pof1cemp4d9k\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610443466, 0.323043, '1', 200),
(256, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"4a6f7e76-12f6-4049-9b5a-e05ee1b3985b\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------972558387526683573550382\",\"Cookie\":\"ci_sessions=9uvat8gsefscbi6n4mpv6lt1l4tsoejr\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610443667, 0.104211, '1', 200),
(257, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"15e2b8a8-acf4-41a7-944d-8e8ec9906647\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------824365544729798022871267\",\"Cookie\":\"ci_sessions=9uvat8gsefscbi6n4mpv6lt1l4tsoejr\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610443721, 0.0952771, '1', 200),
(258, 'apis/delete_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"2f33857b-fb29-426c-bf2e-35dcab8cab1c\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------731517362289757591685526\",\"Cookie\":\"ci_sessions=9uvat8gsefscbi6n4mpv6lt1l4tsoejr\",\"Content-Length\":\"265\",\"user_id\":\"1\",\"id\":\"2\"}', '', '::1', 1610447443, 0.41065, '1', 200),
(259, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"33d63563-97f7-40c8-a385-e202fdc5a155\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------077830385464121155047738\",\"Cookie\":\"ci_sessions=15prb46osmlcdupsfbd9sfflh03cbe9d\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610447448, 0.104055, '1', 200),
(260, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"0e24183e-ffbe-4d7f-bbdc-8e4880495d2e\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------457444734220280030242111\",\"Cookie\":\"ci_sessions=15prb46osmlcdupsfbd9sfflh03cbe9d\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610447499, 0.080184, '1', 200),
(261, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"5d4e5a60-49c0-4f4c-b2b2-2073c0474315\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------135870510418528606699410\",\"Cookie\":\"ci_sessions=15prb46osmlcdupsfbd9sfflh03cbe9d\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610447533, 0.189017, '1', 200),
(262, 'apis/get_addresses', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"ac618ff7-51a2-48af-aafc-1935385b6c90\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------235673452299091532341506\",\"Cookie\":\"ci_sessions=15prb46osmlcdupsfbd9sfflh03cbe9d\",\"Content-Length\":\"163\",\"user_id\":\"1\"}', '', '::1', 1610447541, 0.0888059, '1', 200),
(263, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"63199624-bb68-449b-8f85-bd94deb17724\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------393295906825787764954563\",\"Cookie\":\"ci_sessions=15prb46osmlcdupsfbd9sfflh03cbe9d\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610449824, 0.109963, '1', 200),
(264, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"7476ce3e-2491-4be9-9f51-882a7cdde8a8\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------025193629295740183968688\",\"Cookie\":\"ci_sessions=jv44jhj3l9q45ma58tvcl36tgkoht2o7\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"2\"}', '', '::1', 1610449940, 0.0568802, '1', 200),
(265, 'apis/change_address', 'post', '{\"User-Agent\":\"PostmanRuntime\\/7.26.8\",\"Accept\":\"*\\/*\",\"Cache-Control\":\"no-cache\",\"Postman-Token\":\"c6ccf680-d0f6-4bee-b9b5-f1465b65d677\",\"Host\":\"localhost\",\"Accept-Encoding\":\"gzip, deflate, br\",\"Connection\":\"keep-alive\",\"Content-Type\":\"multipart\\/form-data; boundary=--------------------------676999259479704472991390\",\"Cookie\":\"ci_sessions=jv44jhj3l9q45ma58tvcl36tgkoht2o7\",\"Content-Length\":\"273\",\"user_id\":\"1\",\"address_id\":\"1\"}', '', '::1', 1610449944, 0.190706, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(10) NOT NULL,
  `offer_title` varchar(150) NOT NULL,
  `offer_slug` varchar(150) NOT NULL,
  `offer_desc` longtext NOT NULL,
  `offer_percentage` int(10) NOT NULL,
  `offer_image` text NOT NULL,
  `created_at` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_offers`
--

INSERT INTO `tbl_offers` (`id`, `offer_title`, `offer_slug`, `offer_desc`, `offer_percentage`, `offer_image`, `created_at`, `status`) VALUES
(1, 'Offer1', 'offer1', '<p>Offer1</p>\r\n', 10, '02042021123548_28887.png', '1617347149', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `coupon_id` int(5) NOT NULL DEFAULT 0,
  `order_unique_id` text NOT NULL,
  `order_address` int(5) NOT NULL,
  `total_amt` double NOT NULL,
  `discount` varchar(10) DEFAULT '0',
  `discount_amt` double NOT NULL,
  `payable_amt` double NOT NULL,
  `new_payable_amt` double NOT NULL,
  `refund_amt` double NOT NULL DEFAULT 0,
  `refund_per` double NOT NULL DEFAULT 0,
  `order_date` varchar(150) NOT NULL,
  `delivery_date` varchar(150) NOT NULL,
  `order_status` int(2) NOT NULL DEFAULT -1,
  `delivery_charge` varchar(5) NOT NULL DEFAULT '0',
  `pincode` varchar(10) NOT NULL,
  `building_name` varchar(100) NOT NULL,
  `road_area_colony` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `alter_mobile_no` varchar(20) NOT NULL,
  `address_type` varchar(30) NOT NULL,
  `is_seen` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_items`
--

CREATE TABLE `tbl_order_items` (
  `id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_title` varchar(150) NOT NULL,
  `product_qty` int(5) NOT NULL,
  `product_mrp` double NOT NULL,
  `product_price` double NOT NULL,
  `you_save_amt` double NOT NULL DEFAULT 0,
  `product_size` varchar(10) NOT NULL,
  `total_price` double NOT NULL,
  `delivery_charge` float NOT NULL,
  `pro_order_status` int(3) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_status`
--

CREATE TABLE `tbl_order_status` (
  `id` int(20) NOT NULL,
  `order_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `status_title` varchar(100) NOT NULL,
  `status_desc` text NOT NULL,
  `created_at` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(10) NOT NULL,
  `category_id` int(5) NOT NULL,
  `sub_category_id` int(5) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `offer_id` int(10) NOT NULL DEFAULT 0,
  `product_title` varchar(255) NOT NULL,
  `product_slug` varchar(150) NOT NULL,
  `product_desc` longtext NOT NULL,
  `product_features` longtext NOT NULL,
  `featured_image` text NOT NULL,
  `featured_image2` text NOT NULL,
  `size_chart` text NOT NULL,
  `product_mrp` double NOT NULL,
  `selling_price` double NOT NULL DEFAULT 0,
  `you_save_amt` double NOT NULL DEFAULT 0,
  `you_save_per` double NOT NULL DEFAULT 0,
  `other_color_product` text NOT NULL,
  `color` varchar(100) NOT NULL,
  `product_size` text NOT NULL,
  `product_quantity` int(5) NOT NULL DEFAULT 1,
  `max_unit_buy` int(5) NOT NULL DEFAULT 1,
  `delivery_charge` float NOT NULL,
  `total_views` varchar(10) NOT NULL DEFAULT '0',
  `total_rate` int(10) NOT NULL DEFAULT 0,
  `rate_avg` double NOT NULL DEFAULT 0,
  `is_featured` int(1) DEFAULT 0,
  `today_deal` int(2) NOT NULL DEFAULT 0,
  `today_deal_date` varchar(150) NOT NULL DEFAULT '0',
  `total_sale` int(10) NOT NULL DEFAULT 0,
  `created_at` varchar(150) NOT NULL,
  `seo_title` varchar(150) NOT NULL,
  `seo_meta_description` longtext NOT NULL,
  `seo_keywords` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `category_id`, `sub_category_id`, `brand_id`, `offer_id`, `product_title`, `product_slug`, `product_desc`, `product_features`, `featured_image`, `featured_image2`, `size_chart`, `product_mrp`, `selling_price`, `you_save_amt`, `you_save_per`, `other_color_product`, `color`, `product_size`, `product_quantity`, `max_unit_buy`, `delivery_charge`, `total_views`, `total_rate`, `rate_avg`, `is_featured`, `today_deal`, `today_deal_date`, `total_sale`, `created_at`, `seo_title`, `seo_meta_description`, `seo_keywords`, `status`) VALUES
(1, 8, 74, 5, 0, 'Matrix - Suspension Elliptical E3x', 'matrix-suspension-elliptical-e3x', 'Adjustable brake pad resistance Caged pedals with adjustable straps LED window display and racing saddle Vertical and horizontal seat adjustment Built-in transport wheels and water bottle holder', '<p>An ideal exercise bike for performing cardio workouts from the comfort of home! The Reebok Fitness AR Sprint Bike is designed to deliver smooth rotation with its sturdy 14 kg flywheel. This feature-packed exercise bike boasts dual adjustable seat that facilitates both vertical and horizontal adjustment with additional foam padding. The adjustable saddle offers customisation and laid-back training for long hours. Comes equipped with heavy-duty caged pedals that provide maximum foot protection during workout, it helps users achieve best performance every time. The Reebok AR Sprint Bike offers 6 console programs via the LED window display and allows every user to track performance feedback on real-time basis with respect to distance covered, time, calories burned and so on. Making every user challenge his/her own fitness levels, the Reebok AR Fitness Sprint Bike is one of a kind workout equipment for cardio and aerobic fitness enthusiasts. The adjustable brake pad resistance facilitates workouts at increased intensity levels. Now, it is easy to explore the best way to enhance endurance level from home fitness studio.</p>\r\n\r\n<p> </p>\r\n', '02042021123833_5523.png', '02042021123833_55231.png', '', 100, 100, 0, 0, '', 'White/FFFFFF', '', 0, 10, 10, '17', 0, 0, 0, 0, '0', 0, '1617347313', 'Matrix ', 'Matrix ', 'Matrix ', 1),
(2, 9, 93, 4, 1, 'Matrix - Suspension', 'matrix-suspension', 'Adjustable brake pad resistance Caged pedals with adjustable straps LED window display and racing saddle Vertical and horizontal seat adjustment Built-in transport wheels and water bottle holder', '<p> </p>\r\n\r\n<p>An ideal exercise bike for performing cardio workouts from the comfort of home! The Reebok Fitness AR Sprint Bike is designed to deliver smooth rotation with its sturdy 14 kg flywheel. This feature-packed exercise bike boasts dual adjustable seat that facilitates both vertical and horizontal adjustment with additional foam padding. The adjustable saddle offers customisation and laid-back training for long hours. Comes equipped with heavy-duty caged pedals that provide maximum foot protection during workout, it helps users achieve best performance every time. The Reebok AR Sprint Bike offers 6 console programs via the LED window display and allows every user to track performance feedback on real-time basis with respect to distance covered, time, calories burned and so on. Making every user challenge his/her own fitness levels, the Reebok AR Fitness Sprint Bike is one of a kind workout equipment for cardio and aerobic fitness enthusiasts. The adjustable brake pad resistance facilitates workouts at increased intensity levels. Now, it is easy to explore the best way to enhance endurance level from home fitness studio.</p>\r\n\r\n<table>\r\n <tbody>\r\n  <tr>\r\n   <td>Flywheel</td>\r\n   <td>14 Kg</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Resistance level</td>\r\n   <td>15 manual resistance levels</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Resistance Type</td>\r\n   <td>Adjustable brake pad resistance</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Manual with 6 console programs</td>\r\n   <td>Manual with 6 console programs</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Console</td>\r\n   <td>LED window display</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Drive</td>\r\n   <td>Chain driven</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Pedal</td>\r\n   <td>Caged pedals with adjustable straps</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Saddle</td>\r\n   <td>Racing saddle</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Transport</td>\r\n   <td>Built-in transport wheels</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Water bottle holder</td>\r\n   <td>Yes</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Power Requirement</td>\r\n   <td>No mains power required</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Batteries</td>\r\n   <td>Included</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Seat Adjustment</td>\r\n   <td>Vertical & horizontal seat adjustment</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Seat Height</td>\r\n   <td>64 cm - 100 cm</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Max. user weight</td>\r\n   <td>100 kg</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Dimension</td>\r\n   <td>116 x 42 x 100 cm</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '02042021125243_82749.png', '02042021125243_827491.png', '', 200, 180, 20, 10, '', 'White/FFFFFF', '', 0, 5, 10, '42', 0, 0, 0, 0, '0', 0, '1617348163', 'Suspension', 'Suspension', 'Suspension', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_images`
--

CREATE TABLE `tbl_product_images` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `image_file` text NOT NULL,
  `type` varchar(60) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product_images`
--

INSERT INTO `tbl_product_images` (`id`, `parent_id`, `image_file`, `type`, `status`) VALUES
(1, 1, '02042021123833_5523.png', 'product', 1),
(2, 1, '02042021123833_55231.png', 'product', 1),
(3, 1, '02042021123833_55232.png', 'product', 1),
(4, 1, '02042021123833_55233.png', 'product', 1),
(5, 2, '02042021125243_82749.png', 'product', 1),
(6, 2, '02042021125243_827491.png', 'product', 1),
(7, 2, '02042021125243_827492.png', 'product', 1),
(8, 2, '02042021125243_827493.png', 'product', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL DEFAULT 0,
  `rating` double NOT NULL,
  `rating_desc` longtext NOT NULL,
  `created_at` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recent_viewed`
--

CREATE TABLE `tbl_recent_viewed` (
  `id` int(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `created_at` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_recent_viewed`
--

INSERT INTO `tbl_recent_viewed` (`id`, `user_id`, `product_id`, `created_at`) VALUES
(1, 1, 2, '1617420204'),
(2, 1, 0, '1617420191'),
(3, 1, 1, '1617420623'),
(4, 2, 2, '1617420941'),
(5, 2, 0, '1617422212'),
(6, 2, 1, '1617423968');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_refund`
--

CREATE TABLE `tbl_refund` (
  `id` int(10) NOT NULL,
  `bank_id` int(10) NOT NULL DEFAULT 0,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `order_id` int(10) NOT NULL,
  `order_unique_id` text NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_title` varchar(150) NOT NULL,
  `product_amt` double NOT NULL,
  `refund_pay_amt` double NOT NULL,
  `refund_per` double NOT NULL DEFAULT 0,
  `gateway` varchar(20) NOT NULL,
  `refund_reason` longtext NOT NULL,
  `last_updated` varchar(255) NOT NULL,
  `request_status` int(1) NOT NULL DEFAULT 0,
  `cancel_by` int(10) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `app_order_email` varchar(150) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `app_email` varchar(150) NOT NULL,
  `app_version` varchar(10) NOT NULL DEFAULT '1.0.0',
  `app_logo` varchar(255) NOT NULL,
  `web_favicon` varchar(150) NOT NULL,
  `app_author` varchar(255) NOT NULL,
  `app_contact` varchar(255) NOT NULL,
  `app_website` varchar(255) NOT NULL,
  `app_description` text NOT NULL,
  `app_developed_by` varchar(255) NOT NULL,
  `facebook_url` text NOT NULL,
  `twitter_url` text NOT NULL,
  `youtube_url` text NOT NULL,
  `instagram_url` text NOT NULL,
  `app_privacy_policy` text NOT NULL,
  `app_currency_code` varchar(30) NOT NULL,
  `app_currency_html_code` text NOT NULL,
  `email_otp_op_status` varchar(10) NOT NULL DEFAULT 'true',
  `cod_status` varchar(30) NOT NULL DEFAULT 'true',
  `paypal_status` varchar(30) NOT NULL DEFAULT 'true',
  `paypal_mode` varchar(10) NOT NULL,
  `paypal_client_id` text NOT NULL,
  `paypal_secret_key` text NOT NULL,
  `stripe_status` varchar(30) NOT NULL DEFAULT 'false',
  `stripe_key` text NOT NULL,
  `stripe_secret` text NOT NULL,
  `razorpay_status` varchar(20) NOT NULL DEFAULT 'false',
  `razorpay_key` text NOT NULL,
  `razorpay_secret` text NOT NULL,
  `razorpay_theme_color` varchar(30) NOT NULL DEFAULT 'eb1536',
  `google_login_status` varchar(20) NOT NULL DEFAULT 'false',
  `google_client_id` text NOT NULL,
  `google_secret_key` text NOT NULL,
  `facebook_status` varchar(20) NOT NULL DEFAULT 'false',
  `facebook_app_id` text NOT NULL,
  `facebook_app_secret` text NOT NULL,
  `home_slider_opt` varchar(6) NOT NULL DEFAULT 'true',
  `home_brand_opt` varchar(6) NOT NULL DEFAULT 'true',
  `home_category_opt` varchar(6) NOT NULL DEFAULT 'true',
  `home_offer_opt` varchar(6) NOT NULL DEFAULT 'true',
  `home_flase_opt` varchar(6) NOT NULL DEFAULT 'true',
  `home_latest_opt` varchar(6) NOT NULL DEFAULT 'true',
  `home_top_rated_opt` varchar(6) NOT NULL DEFAULT 'true',
  `min_rate` int(5) NOT NULL DEFAULT 3,
  `home_cat_wise_opt` varchar(6) NOT NULL DEFAULT 'true',
  `home_recent_opt` varchar(6) NOT NULL DEFAULT 'true',
  `app_home_slider_opt` varchar(6) NOT NULL DEFAULT 'true',
  `app_home_brand_opt` varchar(6) NOT NULL DEFAULT 'true',
  `app_home_category_opt` varchar(6) NOT NULL DEFAULT 'true',
  `app_home_offer_opt` varchar(6) NOT NULL DEFAULT 'true',
  `app_home_flase_opt` varchar(6) NOT NULL DEFAULT 'true',
  `app_home_latest_opt` varchar(6) NOT NULL DEFAULT 'true',
  `app_home_top_rated_opt` varchar(6) NOT NULL DEFAULT 'true',
  `app_home_cat_wise_opt` varchar(6) NOT NULL DEFAULT 'true',
  `app_home_recent_opt` varchar(6) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `app_order_email`, `app_name`, `app_email`, `app_version`, `app_logo`, `web_favicon`, `app_author`, `app_contact`, `app_website`, `app_description`, `app_developed_by`, `facebook_url`, `twitter_url`, `youtube_url`, `instagram_url`, `app_privacy_policy`, `app_currency_code`, `app_currency_html_code`, `email_otp_op_status`, `cod_status`, `paypal_status`, `paypal_mode`, `paypal_client_id`, `paypal_secret_key`, `stripe_status`, `stripe_key`, `stripe_secret`, `razorpay_status`, `razorpay_key`, `razorpay_secret`, `razorpay_theme_color`, `google_login_status`, `google_client_id`, `google_secret_key`, `facebook_status`, `facebook_app_id`, `facebook_app_secret`, `home_slider_opt`, `home_brand_opt`, `home_category_opt`, `home_offer_opt`, `home_flase_opt`, `home_latest_opt`, `home_top_rated_opt`, `min_rate`, `home_cat_wise_opt`, `home_recent_opt`, `app_home_slider_opt`, `app_home_brand_opt`, `app_home_category_opt`, `app_home_offer_opt`, `app_home_flase_opt`, `app_home_latest_opt`, `app_home_top_rated_opt`, `app_home_cat_wise_opt`, `app_home_recent_opt`) VALUES
(1, 'admin@Xfitness.me', 'Xfitness', 'admin@Xfitness.me', '1.0.0', '10022021080246_97768.png', '10022021080310_59877.png', 'Xfitness', '+974 31404159', 'http://www.Xfitness.me/', '<p>Xfitness</p>\r\n', 'Whytecreations', 'https://www.facebook.com/Xfitness', 'https://twitter.com/Xfitness', 'https://www.youtube.com/Xfitness', 'https://www.instagram.com/Xfitness/', '<p><strong>We are committed to protecting your privacy</strong></p>\n\n<p>We collect the minimum amount of information about you that is commensurate with providing you with a satisfactory service. This policy indicates the type of processes that may result in data being collected about you. Your use of this website gives us the right to collect that information.&nbsp;</p>\n\n<p><strong>Information Collected</strong></p>\n\n<p>We may collect any or all of the information that you give us depending on the type of transaction you enter into, including your name, address, telephone number, and email address, together with data about your use of the website. Other information that may be needed from time to time to process a request may also be collected as indicated on the website.</p>\n\n<p><strong>Information Use</strong></p>\n\n<p>We use the information collected primarily to process the task for which you visited the website. Data collected in the UK is held in accordance with the Data Protection Act. All reasonable precautions are taken to prevent unauthorised access to this information. This safeguard may require you to provide additional forms of identity should you wish to obtain information about your account details.</p>\n\n<p><strong>Cookies</strong></p>\n\n<p>Your Internet browser has the in-built facility for storing small files - &quot;cookies&quot; - that hold information which allows a website to recognise your account. Our website takes advantage of this facility to enhance your experience. You have the ability to prevent your computer from accepting cookies but, if you do, certain functionality on the website may be impaired.</p>\n\n<p><strong>Disclosing Information</strong></p>\n\n<p>We do not disclose any personal information obtained about you from this website to third parties unless you permit us to do so by ticking the relevant boxes in registration or competition forms. We may also use the information to keep in contact with you and inform you of developments associated with us. You will be given the opportunity to remove yourself from any mailing list or similar device. If at any time in the future we should wish to disclose information collected on this website to any third party, it would only be with your knowledge and consent.&nbsp;</p>\n\n<p>We may from time to time provide information of a general nature to third parties - for example, the number of individuals visiting our website or completing a registration form, but we will not use any information that could identify those individuals.&nbsp;</p>\n\n<p>In addition Dummy may work with third parties for the purpose of delivering targeted behavioural advertising to the Dummy website. Through the use of cookies, anonymous information about your use of our websites and other websites will be used to provide more relevant adverts about goods and services of interest to you. For more information on online behavioural advertising and about how to turn this feature off, please visit youronlinechoices.com/opt-out.</p>\n\n<p><strong>Changes to this Policy</strong></p>\n\n<p>Any changes to our Privacy Policy will be placed here and will supersede this version of our policy. We will take reasonable steps to draw your attention to any changes in our policy. However, to be on the safe side, we suggest that you read this document each time you use the website to ensure that it still meets with your approval.</p>\n\n<p><strong>Contacting Us</strong></p>\n\n<p>If you have any questions about our Privacy Policy, or if you want to know what information we have collected about you, please email us at hd@dummy.com. You can also correct any factual errors in that information or require us to remove your details form any list under our control.</p>\n', 'AED', 'AED.', 'true', 'true', 'false', 'sandbox', '', '', 'false', '', '', 'false', '', '', 'FF5252', 'true', '', '', 'true', '', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 3, 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_smtp_settings`
--

CREATE TABLE `tbl_smtp_settings` (
  `id` int(5) NOT NULL,
  `smtp_library` varchar(20) NOT NULL DEFAULT 'ci',
  `smtp_type` varchar(20) NOT NULL DEFAULT 'server',
  `smtp_host` varchar(150) NOT NULL,
  `smtp_email` varchar(150) NOT NULL,
  `smtp_password` text NOT NULL,
  `smtp_secure` varchar(20) NOT NULL,
  `port_no` varchar(10) NOT NULL,
  `smtp_ghost` varchar(150) NOT NULL,
  `smtp_gemail` varchar(150) NOT NULL,
  `smtp_gpassword` text NOT NULL,
  `smtp_gsecure` varchar(20) NOT NULL,
  `gport_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_smtp_settings`
--

INSERT INTO `tbl_smtp_settings` (`id`, `smtp_library`, `smtp_type`, `smtp_host`, `smtp_email`, `smtp_password`, `smtp_secure`, `port_no`, `smtp_ghost`, `smtp_gemail`, `smtp_gpassword`, `smtp_gsecure`, `gport_no`) VALUES
(1, 'phpmailer', 'server', '', '', '', 'ssl', '465', '', '', '', 'tls', 465);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_title`
--

CREATE TABLE `tbl_status_title` (
  `id` int(5) NOT NULL,
  `title` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_status_title`
--

INSERT INTO `tbl_status_title` (`id`, `title`, `status`) VALUES
(1, 'Placed', 1),
(2, 'Packed', 1),
(3, 'Shipped', 1),
(4, 'Delivered', 1),
(5, 'Cancelled', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `id` int(11) NOT NULL,
  `category_id` int(10) NOT NULL,
  `sub_category_name` varchar(150) NOT NULL,
  `sub_category_slug` varchar(150) NOT NULL,
  `sub_category_image` text NOT NULL,
  `created_at` varchar(150) NOT NULL,
  `show_on_off` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`id`, `category_id`, `sub_category_name`, `sub_category_slug`, `sub_category_image`, `created_at`, `show_on_off`, `status`) VALUES
(9, 6, 'TREADMILL 0.55HP U1', 'treadmill-055hp-u1', '15022021070559_57184.jpg', '1613396159', 0, 1),
(10, 6, 'BENCH SUB1150 GREY/BLK', 'bench-sub1150-greyblk', '15022021070901_44537.jpg', '1613396341', 0, 1),
(11, 6, 'MEDICINE BALL 9 KG MB6304 WITH WHITE LOGO', 'medicine-ball-9-kg-mb6304-with-white-logo', '15022021071100_66829.jpg', '1613396460', 0, 1),
(12, 6, 'MASSAGE CHAIR -RK1900B', 'massage-chair-rk1900b', '16022021023636_76239.jpg', '1613466396', 0, 1),
(13, 6, 'EXERCISE & BALANCE BOARD LS3170', 'exercise-balance-board-ls3170', '16022021023646_64597.jpg', '1613466406', 0, 1),
(14, 6, 'BILLARD BALL C GRADE', 'billard-ball-c-grade', '16022021023717_6268.jpg', '1613466437', 0, 1),
(15, 6, 'MS CARROM BOARD 30x30 WITH CARROM MEN,STRIKER', 'ms-carrom-board-30x30-with-carrom-menstriker', '16022021023749_73511.jpg', '1613466469', 0, 1),
(16, 6, 'ONE STATION HOME GYM YQP56 BLK', 'one-station-home-gym-yqp56-blk', '16022021023846_52535.jpg', '1613466526', 0, 1),
(17, 6, 'TPU OLYMPIC WEIGHT PLATE 15KG SJ-1014', 'tpu-olympic-weight-plate-15kg-sj-1014', '16022021024413_91015.jpg', '1613466853', 0, 1),
(18, 6, 'POMMEL TORSO EXERCISE MACHINE PT', 'pommel-torso-exercise-machine-pt', '16022021024450_31954.jpg', '1613466890', 0, 1),
(19, 6, 'GYMNASTIC BALL LS3561 ORANGE /PURPLE', 'gymnastic-ball-ls3561-orange-purple', '16022021024539_63087.jpg', '1613466939', 0, 1),
(20, 6, 'SOCCER TABLE SPAIN VS ARGENTINA', 'soccer-table-spain-vs-argentina', '16022021024603_62367.jpg', '1613466963', 0, 1),
(21, 6, '2 IN 1 SLIDEWHIZZER NORMAL SLIDE SW-04', '2-in-1-slidewhizzer-normal-slide-sw-04', '16022021024637_93226.jpg', '1613466997', 0, 1),
(22, 6, 'MASSAGE ROLLER (I ROLLER)-9 DISCS-GERMY FLAG COLR', 'massage-roller-i-roller-9-discs-germy-flag-colr', '16022021024711_77227.jpg', '1613467031', 0, 1),
(23, 6, 'KETTLE BELL PAINT BLK 8KG ZKB3', 'kettle-bell-paint-blk-8kg-zkb3', '16022021024737_97771.jpg', '1613467057', 0, 1),
(24, 6, 'TRAINING TOOL 4KG PURPLE LP8140-4', 'training-tool-4kg-purple-lp8140-4', '16022021024818_48771.jpg', '1613467098', 0, 1),
(25, 6, 'BALANCE PAD 49X40X5.5CM LP8360', 'balance-pad-49x40x55cm-lp8360', '16022021024841_36071.jpg', '1613467121', 0, 1),
(26, 6, 'WHOLE BODY HARMONIC VERTICAL VIBRATION MACHINE', 'whole-body-harmonic-vertical-vibration-machine', '16022021024916_78591.jpg', '1613467157', 0, 1),
(27, 6, '7.5FT AIR HOCKEY TABLE 90 L*48 W*32 H', '75ft-air-hockey-table-90-l48-w32-h', '16022021024946_63959.jpg', '1613467186', 0, 1),
(28, 6, 'GYM80 BUTTERFLY W HAND GRIP CN003022', 'gym80-butterfly-w-hand-grip-cn003022', '16022021025031_22294.jpg', '1613467231', 0, 1),
(29, 6, '140KG COLR FULL RUBBER BARBELL SET', '140kg-colr-full-rubber-barbell-set', '16022021025052_77619.jpg', '1613467252', 0, 1),
(30, 6, 'Bulgarian Bag 15Kgs TP1527', 'bulgarian-bag-15kgs-tp1527', '16022021025123_63164.jpg', '1613467283', 0, 1),
(31, 6, 'WEIGHTED MASSAGE BALL ASM107 BLACK', 'weighted-massage-ball-asm107-black', '16022021025151_73932.jpg', '1613467311', 0, 1),
(32, 6, '6FT AIR HOCKEY TABLE ES-AH7236-EI TA SPORT', '6ft-air-hockey-table-es-ah7236-ei-ta-sport', '16022021025210_40531.jpg', '1613467330', 0, 1),
(33, 6, 'DART GYRO TUNGSTON 80?15 / ED129 @22 GRMS', 'dart-gyro-tungston-80-b615-ed129-22-grms', '16022021025236_57006.jpg', '1613467356', 0, 1),
(34, 6, 'VINYL DUMBBELL SET TA 1KG TO 10KG KZ22-BLU', 'vinyl-dumbbell-set-ta-1kg-to-10kg-kz22-blu', '16022021025507_27843.jpg', '1613467507', 0, 1),
(35, 7, 'YORK RESISTANCE TUBE ADJUST SET SOFT GRIP HANDLE', 'york-resistance-tube-adjust-set-soft-grip-handle', '16022021025559_78977.jpg', '1613467559', 0, 1),
(36, 7, 'GYM BALL LS-3262-65 65CM WITH MASSAGE +FOOT PUMP', 'gym-ball-ls-3262-65-65cm-with-massage-foot-pump', '16022021025625_85355.jpg', '1613467585', 0, 1),
(37, 7, 'JUMP ROPE IR97168 1500G', 'jump-rope-ir97168-1500g', '16022021025712_13637.jpg', '1613467632', 0, 1),
(38, 7, 'WATER BOTTLE 550ML PB-02 GREEN', 'water-bottle-550ml-pb-02-green', '16022021025725_123.jpg', '1613467645', 0, 1),
(39, 7, 'MULTI DIPPING BAR LS9414 BLACK', 'multi-dipping-bar-ls9414-black', '16022021025753_40054.jpg', '1613467673', 0, 1),
(40, 7, 'YORK FITNESS SIT UP BAR 60251', 'york-fitness-sit-up-bar-60251', '16022021025821_51032.jpg', '1613467701', 0, 1),
(41, 7, 'I CARE YOGA SET MAT + BRICK + STRAP JIC025', 'i-care-yoga-set-mat-brick-strap-jic025', '16022021025903_87719.jpg', '1613467743', 0, 1),
(42, 7, 'Ab Roller - IRSB04', 'ab-roller-irsb04', '16022021025927_80512.jpg', '1613467767', 0, 1),
(43, 7, 'SPORTS HEAD BAND 140-1PC', 'sports-head-band-140-1pc', '16022021025955_25479.jpg', '1613467795', 0, 1),
(44, 7, 'MIZUNO Running Phone Arm 33GD9010/09 Black', 'mizuno-running-phone-arm-33gd901009-black', '16022021030040_18961.jpg', '1613467840', 0, 1),
(45, 7, 'AEROBIC STEP IR97317 90*32*15*21*27CM', 'aerobic-step-ir97317-9032152127cm', '16022021030109_85271.jpg', '1613467869', 0, 1),
(46, 7, 'ANKLE WRIST WEIGHT IR98802 1KG*2PCS', 'ankle-wrist-weight-ir98802-1kg2pcs', '16022021030119_97957.jpg', '1613467879', 0, 1),
(47, 7, 'YORK FITNESS 4\" LEATHER PADDED BELT 60216-S', 'york-fitness-4-leather-padded-belt-60216-s', '16022021030149_27503.jpg', '1613467909', 0, 1),
(48, 7, 'TRAINING GLOVES IR98858 MEDIUM', 'training-gloves-ir98858-medium', '16022021030221_24274.jpg', '1613467941', 0, 1),
(49, 7, '16-ADJUSTABLE SLIMMING HULA HOOP IR97334', '16-adjustable-slimming-hula-hoop-ir97334', '16022021030249_91703.jpg', '1613467969', 0, 1),
(50, 7, 'HAND GRIP 45KG IR97036 BLUE', 'hand-grip-45kg-ir97036-blue', '16022021030316_87412.jpg', '1613467996', 0, 1),
(51, 7, 'ASL364 3-WAY PUSH-UP TWISTER TA SPORT', 'asl364-3-way-push-up-twister-ta-sport', '16022021030357_688.jpg', '1613468037', 0, 1),
(52, 7, 'PEAK FINGER PROTECTOR H654000 BLACK/YELLOW', 'peak-finger-protector-h654000-blackyellow', '16022021030409_66656.jpg', '1613468049', 0, 1),
(53, 7, 'PEAK BACKPACK B141260 RUST RED', 'peak-backpack-b141260-rust-red', '16022021030453_80644.jpg', '1613468093', 0, 1),
(54, 7, 'YORK FITNESS SAUNA SUIT-S/M 60295', 'york-fitness-sauna-suit-sm-60295', '16022021030502_94865.jpg', '1613468102', 0, 1),
(55, 8, '50IN FITNESS TRAMPOLIONE JKL-50IN F BLACK/ORANGE', '50in-fitness-trampolione-jkl-50in-f-blackorange', '16022021031754_31283.jpeg', '1613468874', 0, 1),
(56, 8, 'AN-0508L FRISBEE BLUE TA SPORT', 'an-0508l-frisbee-blue-ta-sport', '16022021040111_32840.jpg', '1613471471', 0, 1),
(57, 8, 'COVER BATTLE ROPE LP8172-L2 BLACK', 'cover-battle-rope-lp8172-l2-black', '16022021040141_17121.jpg', '1613471501', 0, 1),
(58, 8, 'COVER BATTLE ROPE LP8172-L2 BLACK', 'cover-battle-rope-lp8172-l2-black', '16022021040142_84126.jpg', '1613471502', 0, 1),
(59, 8, '4 WHEEL SKATE PINK/HELLOKITTY B31137', '4-wheel-skate-pinkhellokitty-b31137', '16022021040208_14918.jpg', '1613471528', 0, 1),
(60, 8, 'HERCULES BICYCLE UPPERCUT 16 SS 85 SKD BLK/BLU', 'hercules-bicycle-uppercut-16-ss-85-skd-blkblu', '16022021040240_13731.jpg', '1613471560', 0, 1),
(61, 8, 'PEAK FOOTBALL Q253010 WHITE/RED', 'peak-football-q253010-whitered', '16022021040354_51346.jpg', '1613471634', 0, 1),
(62, 8, 'TURQUOISE BEACH UMBRELLA 200CM J-2019010', 'turquoise-beach-umbrella-200cm-j-2019010', '16022021040434_90730.jpg', '1613471674', 0, 1),
(63, 8, 'ATLANTIC BOAT 100 SET JL007228', 'atlantic-boat-100-set-jl007228', '16022021040519_98201.jpg', '1613471719', 0, 1),
(64, 8, 'ADULT SWIMMING VEST RC1901 BLACK', 'adult-swimming-vest-rc1901-black', '16022021040543_8358.jpg', '1613471743', 0, 1),
(65, 8, 'TA sports scooter XLM', 'ta-sports-scooter-xlm', '16022021040603_34938.jpg', '1613471763', 0, 1),
(66, 8, 'CRICKET BAT SS TON REVELUTION KW', 'cricket-bat-ss-ton-revelution-kw', '16022021040627_54760.jpg', '1613471787', 0, 1),
(67, 8, '21\'\' BASEBALL BAT+BALL JC-147P', '21-baseball-batball-jc-147p', '16022021041022_52129.jpg', '1613472022', 0, 1),
(68, 8, 'KAYAK GO-R1007 L-3000MM,W-770MM,H-270MM 21KG 1PERS', 'kayak-go-r1007-l-3000mmw-770mmh-270mm-21kg-1pers', '16022021041102_44290.jpg', '1613472062', 0, 1),
(69, 8, 'KIDS SWIMMING VEST RC1908', 'kids-swimming-vest-rc1908', '16022021041137_62782.jpg', '1613472097', 0, 1),
(70, 8, 'ATALA BICYCLE NINJA BLK/GRN 23 0115206200', 'atala-bicycle-ninja-blkgrn-23-0115206200', '16022021041214_93378.jpg', '1613472134', 0, 1),
(71, 8, 'SKATEBOARD 29 TX-2913 NEED CHANGE DESIGN TA', 'skateboard-29-tx-2913-need-change-design-ta', '16022021041342_13136.jpg', '1613472222', 0, 1),
(72, 8, 'BACKBOARD STREAMLINE 44IN REC IMPACT 1268', 'backboard-streamline-44in-rec-impact-1268', '16022021041435_29407.jpg', '1613472275', 0, 1),
(73, 8, 'KAYAK GO-R2001 L-3900MM,W-770MM,H-368MM 33KG 2PERS', 'kayak-go-r2001-l-3900mmw-770mmh-368mm-33kg-2pers', '16022021041506_88185.jpg', '1613472306', 0, 1),
(74, 8, 'TRANSPARENT WHALE RIDER JL037233NPF 57*31', 'transparent-whale-rider-jl037233npf-5731', '16022021041525_2670.jpg', '1613472325', 0, 1),
(75, 8, 'INLINE SKATE PW-150 VIOLET ALUM FRAME', 'inline-skate-pw-150-violet-alum-frame', '16022021041625_36654.jpg', '1613472385', 0, 1),
(76, 8, 'SKATE HELMET VS670 BURGUNDY', 'skate-helmet-vs670-burgundy', '16022021041643_23758.jpg', '1613472403', 0, 1),
(77, 8, 'PU MICRO FIBER VOLLEYBALL #5 BLU/WHI/YLW TYU05001Y62', 'pu-micro-fiber-volleyball-5-bluwhiylw-tyu05001y62', '16022021041701_68462.jpg', '1613472421', 0, 1),
(78, 9, 'LifeSpan Fitness TR7000i Commercial Treadmill', 'lifespan-fitness-tr7000i-commercial-treadmill', '16022021041744_4362.jpg', '1613472464', 0, 1),
(79, 9, 'DYNAMAX BALL 3 KG BLUE AND BLACK COLOUR', 'dynamax-ball-3-kg-blue-and-black-colour', '16022021041807_97165.jpg', '1613472487', 0, 1),
(80, 9, 'TRUE ELLIPTICAL-COMMERCIAL-400 W CONSOLE LED XC400-19', 'true-elliptical-commercial-400-w-console-led-xc400-19', '16022021041853_68743.jpg', '1613472533', 0, 1),
(81, 9, 'MATRIX RECUMBENT CYCLE R1X PRB302-KM', 'matrix-recumbent-cycle-r1x-prb302-km', '16022021041942_58034.jpg', '1613472582', 0, 1),
(82, 9, 'CHROME DUMBBELL IN FOAM W/CARRY HANDLE 4KG', 'chrome-dumbbell-in-foam-wcarry-handle-4kg', '16022021042009_62905.jpg', '1613472609', 0, 1),
(83, 9, 'SLAM BALL TA SBL001- 50KG', 'slam-ball-ta-sbl001-50kg', '16022021042036_99503.jpg', '1613472636', 0, 1),
(84, 9, 'Cardio Cruiser', 'cardio-cruiser', '16022021042116_6581.jpg', '1613472676', 0, 1),
(85, 9, 'HOMEFITNESS BIKE (X BIKE STYLE) F102', 'homefitness-bike-x-bike-style-f102', '16022021042135_55366.jpg', '1613472695', 0, 1),
(86, 9, 'EXERCISE FOLDABLE ROWING MACHINE MANUAL VANTAGE W5', 'exercise-foldable-rowing-machine-manual-vantage-w5', '16022021042216_26998.jpg', '1613472736', 0, 1),
(87, 9, 'YORK VINYL KETTLEBELL 2KG 10000', 'york-vinyl-kettlebell-2kg-10000', '16022021042235_87806.jpg', '1613472755', 0, 1),
(88, 9, 'MATRIX BARBELL RACK PFW96KM G3FW96P', 'matrix-barbell-rack-pfw96km-g3fw96p', '16022021042256_67545.jpg', '1613472776', 0, 1),
(89, 9, 'AIR BIKE IV8000', 'air-bike-iv8000', '16022021042314_1354.jpg', '1613472794', 0, 1),
(90, 9, 'PRO GRIP TRICEPS PRESSDOWN BARS BDHY061', 'pro-grip-triceps-pressdown-bars-bdhy061', '16022021045450_95395.jpg', '1613474690', 0, 1),
(91, 9, 'SPIN BIKE WHEEL YLW WSY18K YELLOW', 'spin-bike-wheel-ylw-wsy18k-yellow', '16022021045520_46170.jpg', '1613474720', 0, 1),
(92, 9, 'Bulgarian Bag 15Kgs TP1527', 'bulgarian-bag-15kgs-tp1527', '16022021045543_14074.jpg', '1613474743', 0, 1),
(93, 9, 'LK5200 ROWING MACHINE R520', 'lk5200-rowing-machine-r520', '16022021045623_31613.jpg', '1613474783', 0, 1),
(94, 10, 'INLINE SKATE PW-149F LDS ORANGE ALUM FRAME', 'inline-skate-pw-149f-lds-orange-alum-frame', '16022021045757_54728.jpg', '1613474877', 0, 1),
(95, 10, 'THREE WHEELED SCOOTER ADCA41194-Q FROZEN', 'three-wheeled-scooter-adca41194-q-frozen', '16022021045823_20146.jpg', '1613474903', 0, 1),
(96, 10, 'SKATE HELMET VS670 BURGUNDY', 'skate-helmet-vs670-burgundy', '16022021045849_98235.jpg', '1613474929', 0, 1),
(97, 10, 'SKATEBOARD 29 TX-2913 NEED CHANGE DESIGN TA', 'skateboard-29-tx-2913-need-change-design-ta', '16022021045900_68353.jpg', '1613474940', 0, 1),
(98, 9, 'HERCULES BICYCLE TRAILBLAZER RFS/S26 85 SKD FERRARI RED', 'hercules-bicycle-trailblazer-rfss26-85-skd-ferrari-red', '16022021045928_67091.jpg', '1613474968', 0, 1),
(99, 10, 'HERCULES BICYCLE STREETCAT 20 SS 85 SKD BLK-GRE/BLK-ORG', 'hercules-bicycle-streetcat-20-ss-85-skd-blk-greblk-org', '16022021045951_23390.jpg', '1613474991', 0, 1),
(100, 10, '4 WHEEL SKATE PINK/HELLOKITTY B31137', '4-wheel-skate-pinkhellokitty-b31137', '16022021050018_62298.jpg', '1613475018', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_unique_id` text NOT NULL,
  `gateway` varchar(30) NOT NULL,
  `payment_amt` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `razorpay_order_id` varchar(255) NOT NULL DEFAULT '0',
  `date` varchar(150) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `user_type` varchar(30) NOT NULL DEFAULT 'Normal',
  `user_name` varchar(150) NOT NULL,
  `user_email` varchar(80) NOT NULL,
  `user_phone` varchar(30) NOT NULL,
  `user_password` text NOT NULL,
  `user_image` text NOT NULL,
  `device_id` text NOT NULL,
  `player_id` varchar(150) NOT NULL DEFAULT '0',
  `created_at` varchar(150) NOT NULL,
  `auth_id` varchar(200) DEFAULT NULL,
  `register_platform` varchar(60) NOT NULL DEFAULT 'web',
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user_type`, `user_name`, `user_email`, `user_phone`, `user_password`, `user_image`, `device_id`, `player_id`, `created_at`, `auth_id`, `register_platform`, `status`) VALUES
(1, 'Normal', 'abu', 'abusuhood0@gmail.com', '123456', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0', '1617419427', NULL, 'web', 1),
(2, 'Normal', 'amir', 'amir@gmail.com', '111111111', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0', '1617420720', NULL, 'web', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verify`
--

CREATE TABLE `tbl_verify` (
  `id` int(2) NOT NULL,
  `web_envato_buyer_name` text NOT NULL,
  `web_envato_purchase_code` text NOT NULL,
  `web_envato_buyer_email` varchar(150) NOT NULL,
  `web_url` text NOT NULL,
  `web_envato_purchased_status` int(2) NOT NULL DEFAULT 0,
  `android_envato_buyer_name` text NOT NULL,
  `android_envato_purchase_code` text NOT NULL,
  `android_envato_buyer_email` varchar(150) NOT NULL,
  `package_name` varchar(150) NOT NULL,
  `android_envato_purchased_status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_verify`
--

INSERT INTO `tbl_verify` (`id`, `web_envato_buyer_name`, `web_envato_purchase_code`, `web_envato_buyer_email`, `web_url`, `web_envato_purchased_status`, `android_envato_buyer_name`, `android_envato_purchase_code`, `android_envato_buyer_email`, `package_name`, `android_envato_purchased_status`) VALUES
(1, 'sfbkeekot', '5f490cb3-d192-434c-8108-7acc5851ecee', '-', '', 1, 'sfbkeekot', '5f490cb3-d192-434c-8108-7acc5851ecee', '-', 'com.example.ecommerceapp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verify_code`
--

CREATE TABLE `tbl_verify_code` (
  `id` int(10) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `verify_code` varchar(100) NOT NULL,
  `created_at` varchar(150) NOT NULL,
  `is_verify` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_verify_code`
--

INSERT INTO `tbl_verify_code` (`id`, `user_email`, `verify_code`, `created_at`, `is_verify`) VALUES
(1, 'unais.whyte@gmail.com', '3804', '1609414470', 0),
(2, 'abusuhood0@gmail.com', '2436', '1617351672', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_settings`
--

CREATE TABLE `tbl_web_settings` (
  `id` int(2) NOT NULL,
  `site_name` text NOT NULL,
  `site_description` text NOT NULL,
  `site_keywords` text NOT NULL,
  `copyright_text` text NOT NULL,
  `web_logo_1` text NOT NULL,
  `web_logo_2` text NOT NULL,
  `web_favicon` text NOT NULL,
  `about_page_title` varchar(150) NOT NULL,
  `about_content` longtext NOT NULL,
  `about_status` varchar(10) NOT NULL DEFAULT 'true',
  `faq_content` longtext NOT NULL,
  `privacy_page_title` varchar(150) NOT NULL,
  `privacy_content` longtext NOT NULL,
  `privacy_page_status` varchar(10) NOT NULL DEFAULT 'true',
  `terms_of_use_page_title` varchar(150) NOT NULL,
  `terms_of_use_content` longtext NOT NULL,
  `terms_of_use_page_status` varchar(10) NOT NULL DEFAULT 'true',
  `refund_return_policy_page_title` varchar(150) NOT NULL,
  `refund_return_policy` longtext NOT NULL,
  `refund_return_policy_status` varchar(10) NOT NULL DEFAULT 'true',
  `cancellation_page_title` varchar(150) NOT NULL,
  `cancellation_content` longtext NOT NULL,
  `cancellation_page_status` varchar(10) NOT NULL DEFAULT 'true',
  `payments_page_title` varchar(150) NOT NULL,
  `payments_content` longtext NOT NULL,
  `payments_page_status` varchar(10) NOT NULL DEFAULT 'true',
  `contact_page_title` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(60) NOT NULL,
  `contact_email` varchar(60) NOT NULL,
  `home_ad` varchar(20) NOT NULL,
  `home_banner_ad` longtext NOT NULL,
  `product_ad` varchar(20) NOT NULL,
  `product_banner_ad` longtext NOT NULL,
  `android_app_url` text NOT NULL,
  `ios_app_url` text NOT NULL,
  `header_code` longtext NOT NULL,
  `footer_code` longtext NOT NULL,
  `libraries_load_from` varchar(10) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_web_settings`
--

INSERT INTO `tbl_web_settings` (`id`, `site_name`, `site_description`, `site_keywords`, `copyright_text`, `web_logo_1`, `web_logo_2`, `web_favicon`, `about_page_title`, `about_content`, `about_status`, `faq_content`, `privacy_page_title`, `privacy_content`, `privacy_page_status`, `terms_of_use_page_title`, `terms_of_use_content`, `terms_of_use_page_status`, `refund_return_policy_page_title`, `refund_return_policy`, `refund_return_policy_status`, `cancellation_page_title`, `cancellation_content`, `cancellation_page_status`, `payments_page_title`, `payments_content`, `payments_page_status`, `contact_page_title`, `address`, `contact_number`, `contact_email`, `home_ad`, `home_banner_ad`, `product_ad`, `product_banner_ad`, `android_app_url`, `ios_app_url`, `header_code`, `footer_code`, `libraries_load_from`) VALUES
(1, 'Xfitness', 'Xfitness', 'shopping cart', 'Copyright © 2020 <a href=\"http://www.xfitness.com\" target=\"_blank\">Xfitness.me</a>. All Rights Reserved.', '10022021080126_43739.png', '10022021080132_879252.png', '10022021080136_97491.png', 'About Us', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n', 'true', '<h3>1) What kind of customer service do you offer?</h3>\r\n\r\n<p>Our ecommerce consultants are here to answer your questions. In addition to FREE phone support, you can contact our consultants via email or live chat.</p>\r\n\r\n<h3>2) Can I build my new Ecommerce site while my other website is still live?</h3>\r\n\r\n<p>Yes! When you purchase one of our ecommerce solutions you will get a standard 3rd level domain to use while you are building your new website. When you are ready to begin hosting your new online store, you simply change your DNS settings to point your existing domain name to your new site.</p>\r\n\r\n<h3>3) Can I use my own domain name?</h3>\r\n\r\n<p>Absolutely! Simply point your domain directly to your new Network Solutions Ecommerce. You do not need to use a subdomain or any other temporary domain name placeholder.</p>\r\n\r\n<h3>4) Are there any system requirements?</h3>\r\n\r\n<p>To access your Ecommerce control panel, you must have Internet access and use a JavaScript enabled browser. The newest version of Internet Explorer, Firefox, Safari or Chrome are recommended.</p>\r\n', 'Privacy', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n', 'true', 'Terms of Use', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p> </p>\r\n', 'true', 'Refund Return Policy', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n', 'true', 'Cancellation Policy', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n', 'true', '', '', 'true', 'Contact Us', '3rd floor, Shyam Complex, Parivar Park, Near Mayani Chowk, Rajkot - 360005', '+91 922 7777 522', 'info@viaviweb.com', 'false', '', 'false', '', 'https://play.google.com/store/apps/dev?id=7157478532572017100', 'https://apps.apple.com/in/developer/vishal-pamar/id1141291247', '', '', 'cdn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `created_at` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_addresses`
--
ALTER TABLE `tbl_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_android_settings`
--
ALTER TABLE `tbl_android_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_applied_coupon`
--
ALTER TABLE `tbl_applied_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank_details`
--
ALTER TABLE `tbl_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart_tmp`
--
ALTER TABLE `tbl_cart_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact_list`
--
ALTER TABLE `tbl_contact_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact_sub`
--
ALTER TABLE `tbl_contact_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_status`
--
ALTER TABLE `tbl_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_recent_viewed`
--
ALTER TABLE `tbl_recent_viewed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_refund`
--
ALTER TABLE `tbl_refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_smtp_settings`
--
ALTER TABLE `tbl_smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_status_title`
--
ALTER TABLE `tbl_status_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_verify`
--
ALTER TABLE `tbl_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_verify_code`
--
ALTER TABLE `tbl_verify_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_web_settings`
--
ALTER TABLE `tbl_web_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_addresses`
--
ALTER TABLE `tbl_addresses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_android_settings`
--
ALTER TABLE `tbl_android_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_applied_coupon`
--
ALTER TABLE `tbl_applied_coupon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bank_details`
--
ALTER TABLE `tbl_bank_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cart_tmp`
--
ALTER TABLE `tbl_cart_tmp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_contact_list`
--
ALTER TABLE `tbl_contact_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_contact_sub`
--
ALTER TABLE `tbl_contact_sub`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_status`
--
ALTER TABLE `tbl_order_status`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_recent_viewed`
--
ALTER TABLE `tbl_recent_viewed`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_refund`
--
ALTER TABLE `tbl_refund`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_smtp_settings`
--
ALTER TABLE `tbl_smtp_settings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_status_title`
--
ALTER TABLE `tbl_status_title`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_verify`
--
ALTER TABLE `tbl_verify`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_verify_code`
--
ALTER TABLE `tbl_verify_code`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_web_settings`
--
ALTER TABLE `tbl_web_settings`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
