-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2026 at 03:14 PM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prom_sql_prominence_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtocarts`
--

CREATE TABLE `addtocarts` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `phone`, `description`, `document`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '+201063887871', '123456', 'uploads/applications/2BiYJDDk5STG1yesPVFPd.png', 0, '2026-01-09 12:51:54', '2026-01-09 12:51:54'),
(2, 5, '0599353502', NULL, 'uploads/applications/5FTlr3zNIFWTdupE24TOF.pdf', 1, '2026-03-04 11:02:57', '2026-03-04 17:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(255) NOT NULL,
  `course_id` bigint(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `questions` longtext DEFAULT NULL,
  `question_file` varchar(255) DEFAULT NULL,
  `total_marks` int(255) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `is_popular` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `thumbnail`, `banner`, `keywords`, `is_popular`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'ما هي البرمجة؟ دليل المبتدئين', 'what-is-programming', '<p>تعرف على أساسيات البرمجة ولماذا تعتبر من أهم مهارات العصر الحديث.</p>', 'programming-thumb.jpg', 'programming-banner.jpg', '[{\"value\":\"برمجة\"},{\"value\":\"تعلم البرمجة\"}]', 1, 1, '2026-02-04 19:56:24', '2026-02-04 19:56:24'),
(2, 1, '2', 'أفضل تقنيات تطوير الويب في 2026', 'best-web-development-technologies-2026', '<p>نستعرض أحدث تقنيات تطوير الويب المستخدمة في سوق العمل.</p>', 'web-thumb.jpg', 'web-banner.jpg', '[{\"value\":\"تطوير الويب\"},{\"value\":\"Frontend\"},{\"value\":\"Backend\"}]', 1, 1, '2026-02-04 19:56:24', '2026-02-04 19:56:24'),
(3, 1, '3', 'مقدمة في الذكاء الاصطناعي', 'introduction-to-ai', '<p>شرح مبسط لمفاهيم الذكاء الاصطناعي وتعلم الآلة.</p>', 'ai-thumb.jpg', 'ai-banner.jpg', '[{\"value\":\"ذكاء اصطناعي\"},{\"value\":\"AI\"}]', 0, 1, '2026-02-04 19:56:24', '2026-02-04 19:56:24'),
(4, 1, '4', 'كيف تبدأ في التسويق الرقمي؟', 'start-digital-marketing', '<p>دليل شامل للمبتدئين في مجال التسويق الإلكتروني.</p>', 'marketing-thumb.jpg', 'marketing-banner.jpg', '[{\"value\":\"تسويق رقمي\"},{\"value\":\"SEO\"}]', 0, 1, '2026-02-04 19:56:24', '2026-02-04 19:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `subtitle`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'البرمجة', 'مقالات البرمجة والتطوير', 'programming', '2026-02-04 19:56:16', '2026-02-04 19:56:16'),
(2, 'تطوير الويب', 'Frontend & Backend', 'web-development', '2026-02-04 19:56:16', '2026-02-04 19:56:16'),
(3, 'الذكاء الاصطناعي', 'AI & Machine Learning', 'artificial-intelligence', '2026-02-04 19:56:16', '2026-02-04 19:56:16'),
(4, 'التسويق الرقمي', 'Digital Marketing', 'digital-marketing', '2026-02-04 19:56:16', '2026-02-04 19:56:16'),
(5, 'التصميم', 'Graphic & UI/UX Design', 'design', '2026-02-04 19:56:16', '2026-02-04 19:56:16'),
(6, 'ريادة الأعمال', 'Business & Startups', 'business', '2026-02-04 19:56:16', '2026-02-04 19:56:16'),
(7, 'الأمن السيبراني', 'Cyber Security', 'cyber-security', '2026-02-04 19:56:16', '2026-02-04 19:56:16');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `check` int(11) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `likes` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_likes`
--

CREATE TABLE `blog_likes` (
  `id` int(255) NOT NULL,
  `blog_id` int(255) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bootcamps`
--

CREATE TABLE `bootcamps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `is_paid` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT NULL,
  `discounted_price` double DEFAULT NULL,
  `publish_date` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `faqs` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `outcomes` longtext DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bootcamps`
--

INSERT INTO `bootcamps` (`id`, `user_id`, `title`, `slug`, `category_id`, `description`, `short_description`, `is_paid`, `price`, `discount_flag`, `discounted_price`, `publish_date`, `thumbnail`, `faqs`, `requirements`, `outcomes`, `meta_keywords`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'sdasd', 'sdasd', 3, '<p>sadasda</p>', 'sadasd', 0, NULL, NULL, NULL, 1777053600, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-04-26 09:45:38', '2026-04-26 09:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `bootcamp_categories`
--

CREATE TABLE `bootcamp_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bootcamp_categories`
--

INSERT INTO `bootcamp_categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'دبلومات المحاسبة والإدارة المالية', 'diplomas-accounting', '2026-03-16 12:08:49', '2026-03-16 12:08:49'),
(2, 'دبلومات الموارد البشرية', 'diplomas-hr', '2026-03-16 12:08:49', '2026-03-16 12:08:49'),
(3, 'دبلومات إدارة الأعمال', 'diplomas-business', '2026-03-16 12:08:49', '2026-03-16 12:08:49'),
(4, 'دبلومات الإدارة الطبية', 'diplomas-medical', '2026-03-16 12:08:49', '2026-03-16 12:08:49'),
(5, 'دبلومات التسويق والمبيعات', 'diplomas-marketing', '2026-03-16 12:08:49', '2026-03-16 12:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `bootcamp_live_classes`
--

CREATE TABLE `bootcamp_live_classes` (
  `id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `joining_data` longtext DEFAULT NULL,
  `force_stop` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bootcamp_modules`
--

CREATE TABLE `bootcamp_modules` (
  `id` int(11) NOT NULL,
  `bootcamp_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `publish_date` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL,
  `restriction` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bootcamp_modules`
--

INSERT INTO `bootcamp_modules` (`id`, `bootcamp_id`, `title`, `publish_date`, `expiry_date`, `restriction`, `sort`, `created_at`, `updated_at`) VALUES
(1, 1, '1 dasd', 1777140000, 1777140000, '1', NULL, '2026-04-26 09:45:57', '2026-04-26 09:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `bootcamp_purchases`
--

CREATE TABLE `bootcamp_purchases` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bootcamp_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_revenue` double DEFAULT NULL,
  `instructor_revenue` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bootcamp_resources`
--

CREATE TABLE `bootcamp_resources` (
  `id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `upload_type` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `builder_pages`
--

CREATE TABLE `builder_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `html` longtext DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `is_permanent` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `edit_home_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `builder_pages`
--

INSERT INTO `builder_pages` (`id`, `name`, `html`, `identifier`, `is_permanent`, `status`, `edit_home_id`, `created_at`, `updated_at`) VALUES
(12, 'Elegant', '', 'elegant', 1, 0, NULL, '2024-08-27 04:25:11', '2026-01-20 09:43:21'),
(13, 'Kindergarden', NULL, 'kindergarden', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-20 09:43:21'),
(14, 'Cooking', NULL, 'cooking', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-20 09:43:21'),
(15, 'University', NULL, 'university', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-20 09:43:21'),
(16, 'Language', NULL, 'language', 1, 0, NULL, '2024-08-27 04:25:11', '2026-01-20 09:43:21'),
(17, 'Development', NULL, 'development', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-20 09:43:21'),
(18, 'Marketplace', NULL, 'marketplace', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-20 09:43:21'),
(19, 'Meditation', NULL, 'meditation', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-20 09:43:21'),
(23, 'Default', '[\"top_bar\",\"header\",\"hero_banner\",\"features\",\"category\",\"featured_courses\",\"about_us\",\"testimonial\",\"blog\",\"footer\"]', NULL, NULL, 1, NULL, '2024-08-27 04:25:11', '2026-01-20 09:43:21'),
(24, 'main home', NULL, NULL, NULL, NULL, NULL, '2026-01-20 09:43:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `course_id` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 6, 5, '2026-04-04 21:38:01', '2026-04-04 15:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `category_logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `slug`, `icon`, `sort`, `status`, `keywords`, `description`, `thumbnail`, `category_logo`, `created_at`, `updated_at`) VALUES
(1, 0, 'البرمجة', 'programming', 'code-icon', 1, 1, 'برمجة, تطوير, كود', 'دورات تعليم البرمجة وتطوير البرمجيات', NULL, NULL, '2026-02-04 12:57:49', '2026-02-04 12:57:49'),
(2, 0, 'تصميم الجرافيك', 'graphic-design', 'design-icon', 2, 1, 'تصميم, جرافيك, فوتوشوب', 'تعلم تصميم الجرافيك والهوية البصرية', NULL, NULL, '2026-02-04 12:57:49', '2026-02-04 12:57:49'),
(3, 0, 'تطوير الويب', 'web-development', 'web-icon', 3, 1, 'ويب, مواقع, frontend, backend', 'تعلم تطوير مواقع الويب الحديثة', NULL, NULL, '2026-02-04 12:57:49', '2026-02-04 12:57:49'),
(4, 0, 'تطوير تطبيقات الموبايل', 'mobile-development', 'mobile-icon', 4, 1, 'تطبيقات, اندرويد, ios', 'إنشاء تطبيقات Android و iOS', NULL, NULL, '2026-02-04 12:57:49', '2026-02-04 12:57:49'),
(5, 0, 'التسويق الرقمي', 'digital-marketing', 'marketing-icon', 5, 1, 'تسويق, سوشيال ميديا, seo', 'تعلم التسويق الإلكتروني وإدارة الحملات', NULL, NULL, '2026-02-04 12:57:49', '2026-02-04 12:57:49'),
(6, 0, 'الأعمال وريادة المشاريع', 'business', 'business-icon', 6, 1, 'بيزنس, ريادة, إدارة', 'دورات إدارة الأعمال وريادة المشاريع', NULL, NULL, '2026-02-04 12:57:49', '2026-02-04 12:57:49'),
(7, 0, 'اللغات', 'languages', 'language-icon', 7, 1, 'لغات, انجليزي, تعلم', 'تعلم اللغات الأجنبية باحتراف', NULL, NULL, '2026-02-04 12:57:49', '2026-02-04 12:57:49'),
(8, 0, 'الذكاء الاصطناعي', 'artificial-intelligence', 'ai-icon', 8, 1, 'ذكاء اصطناعي, تعلم آلي', 'دورات الذكاء الاصطناعي وتعلم الآلة', NULL, NULL, '2026-02-04 12:57:49', '2026-02-04 12:57:49'),
(9, 0, 'الأمن السيبراني', 'cyber-security', 'security-icon', 9, 1, 'أمن معلومات, اختراق', 'تعلم أساسيات وحماية الأمن السيبراني', NULL, NULL, '2026-02-04 12:57:49', '2026-02-04 12:57:49'),
(10, 0, 'الكتب الإلكترونية', 'ebooks', 'ebook-icon', 10, 1, 'كتب, pdf, تعليم', 'مكتبة الكتب الإلكترونية التعليمية', NULL, NULL, '2026-02-04 12:57:49', '2026-02-04 12:57:49'),
(11, 0, 'العلوم الاجتماعية', 'العلوم-الاجتماعية', 'fas fa-align-justify', 0, NULL, 'علوم نفسية واجتماعية', NULL, NULL, NULL, '2026-03-04 16:52:07', '2026-03-04 16:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `certificate_number` varchar(255) DEFAULT NULL,
  `issued_at` timestamp NULL DEFAULT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT 1,
  `revocation_reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(21) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `has_read` int(11) DEFAULT 0,
  `replied` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `message`, `has_read`, `replied`, `created_at`, `updated_at`) VALUES
(1, 'Lori Shultz', 'yiyayova@gmail.com', '610146674', 'Dorpsstraat 132', 'Hello,\r\n\r\nWe have a special opportunity that could significantly boost traffic and visibility for your website prominence.academy.\r\n\r\nWhat if you could drive real, targeted website traffic automatically using AI — without paid ads, complicated setups, or ongoing management?\r\n\r\nThat’s exactly what AI Traffic Whale delivers.\r\n\r\nAI Traffic Whale uses advanced AI technology to generate consistent, high-quality traffic from multiple sources, helping websites increase exposure, improve engagement, and grow faster — all on autopilot. No technical skills required, no monthly ad spend, and no complex tools to manage.\r\n\r\nYou set it up once, and the AI does the work for you.\r\n\r\n������ See how it works here: https://traffic.vinhgrowth.com\r\n\r\nYou are receiving this message because we believe this offer may be relevant to your website.\r\n\r\nIf you do not wish to receive further communications from us, please click here to UNSUBSCRIBE:\r\n\r\nhttps://vinhgrowth.com/unsubscribe?domain=prominence.academy\r\n\r\nAddress: 60 Crown Street, London\r\n\r\nLooking out for you,\r\n\r\nLori Shultz', 0, 0, '2026-01-28 01:49:39', '2026-01-28 01:49:39'),
(2, 'Ankit S', 'info@bestaiseocompany.com', '(949) 508-0277', 'Oudelandhof 174', 'Hey team prominence.academy,\r\n\r\nHope your doing well!\r\n\r\nI just following your website and realized that despite having a good design; but it was not ranking high on any of the Search Engines (Google, Yahoo & Bing) for most of the keywords related to your business.\r\n\r\nWe can place your website on Google\'s 1st page.\r\n\r\n*  Top ranking on Google search!\r\n*  Improve website clicks and views!\r\n*  Increase Your Leads, clients & Revenue!\r\n\r\nInterested? Please provide your name, contact information, and email.\r\n\r\nBests Regards,\r\nAnkit\r\nBest AI SEO Company\r\nAccounts Manager\r\nwww.bestaiseocompany.com\r\nPhone No: +1 (949) 508-0277', 0, 0, '2026-01-29 23:18:10', '2026-01-29 23:18:10'),
(3, 'Mr Zynqor mr_zynqor', 'zynqoretech@gmail.com', '+201061198142', 'Aswan', 'fdgsdg', 0, 0, '2026-02-07 09:38:10', '2026-02-07 09:38:10'),
(4, 'Allen Bell', 'allen.bell3456@gmail.com', '134152991', '73 Rue Saint Germain', 'Hi,\r\n\r\nI recently came across your website and noticed a few areas where improvements could significantly enhance your visibility on Google.\r\n\r\nWith a well-planned SEO strategy, you can attract more relevant traffic, improve your search rankings, and generate higher-quality inquiries for your business.\r\n\r\nI’d be glad to share insights on how we can strengthen your online presence, along with details of my SEO services and pricing.\r\n\r\nLet me know a convenient time to connect.\r\n\r\nRegards,\r\n\r\nAllen', 0, 0, '2026-03-26 06:08:37', '2026-03-26 06:08:37'),
(5, 'Jayrn Smith', 'mackey.warren@msn.com', '951451613', 'Muhlenstrasse 56', 'Hi, it’s Jayrn.\r\n\r\nWant to find \"hidden money\" in your business? Dan shares exactly how to exponentially increase your cashflow and the value of your company with these 5 Key Strategies. \r\n\r\nFind out how to find your customer \"trigger points\" so you know how to market and sell to them. And the best part is... it\'s way easier than you think!\r\n\r\nLearn More: https://marketersmentor.com/hidden-money.php?refer=prominence.academy\r\n\r\nJayrn\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=prominence.academy', 0, 0, '2026-03-28 09:00:53', '2026-03-28 09:00:53'),
(6, 'Jayrn Smith', 'horn.julieta@gmail.com', '142727285', '7 Place Du Jeu De Paume', 'Hi, it’s Jayrn.\r\n\r\nEvery market has one rule: He who can spend the most to acquire a customer, wins. But here’s the question nobody answers: How do you actually do it?\r\n\r\nIn this video, Darcy Juarez walk through the single number that separates the amateurs from the market dominators—Maximum Allowable Cost Per Acquisition. \r\n\r\nGet this wrong, and you’ll bleed cash. Get it right, and you’ll buy customers at scale while your competitors are stuck Googling cheaper ad hacks.\r\n\r\nWatch it here: https://marketersmentor.com/crush-your-competition.php?refer=prominence.academy\r\n\r\n\r\nTo multiplying your leverage,\r\nJayrn\r\n\r\nP.S.: I’m Jayrn, a digital marketer and e-commerce seller with a passion for sharing knowledge. I share proven strategies, tips, and resources to help you grow your online business.\r\n\r\n\r\n\r\nMy Blog:\r\nhttps://www.jayrn.com\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=prominence.academy', 0, 0, '2026-04-17 17:59:39', '2026-04-17 17:59:39'),
(7, 'Jake Rover', 'k2za.unsworn423@passmail.com', '6992100863', 'Salzburgerstrasse 65', 'Hi would you like to acquire the domain name ominence.com?', 0, 0, '2026-04-20 20:23:50', '2026-04-20 20:23:50'),
(8, 'Jayrn Smith', 'sibley.kerstin23@gmail.com', '22103661', 'Hundslevgyden 65', 'Hey,it’s Jayrn.\r\n\r\nThere’s a pattern I keep seeing…\r\n\r\nPeople who *work hard*, try different strategies, even invest in tools…\r\n\r\n…but still don’t see consistent results.\r\n\r\nIt’s not because they’re lazy.\r\nIt’s not because they’re unlucky.\r\n\r\nIt’s because they’re following **disconnected advice**.\r\n\r\nOne strategy here.\r\nAnother tactic there.\r\n\r\nNo real understanding of what actually drives revenue.\r\n\r\nAnd when you don’t understand the “why”…\r\n\r\nYou’re stuck guessing.\r\n\r\n---\r\n\r\nThat’s exactly where I was.\r\n\r\nUntil I started studying something different:\r\n\r\nNot surface-level tactics…\r\n\r\n…but the **actual thinking behind successful marketing campaigns**.\r\n\r\nThat’s when things finally started to click.\r\n\r\n---\r\n\r\nIf you want to see what I mean, take a look at this:\r\n\r\n������ https://marketersmentor.com/NO-BS-Letter.php?refer=prominence.academy\r\n\r\nEven just reading the page will shift how you think about marketing.\r\n\r\nMore tomorrow.\r\n\r\n—\r\nJayrn\r\n\r\nP.S.: I’m Jayrn, a digital marketer and e-commerce seller with a passion for sharing knowledge. I share proven strategies, tips, and resources to help you grow your online business.\r\n\r\n\r\n\r\nMy Blog:\r\nhttps://www.jayrn.com\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=prominence.academy', 0, 0, '2026-04-22 02:44:21', '2026-04-22 02:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `dial_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `dial_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '+93', NULL, '2024-10-02 02:55:33'),
(2, 'Aland Islands', 'AX', '+358', NULL, '2024-10-02 03:00:27'),
(3, 'Albania', 'AL', '+355', NULL, NULL),
(4, 'Algeria', 'DZ', '+213', NULL, NULL),
(5, 'AmericanSamoa', 'AS', '+1684', NULL, NULL),
(6, 'Andorra', 'AD', '+376', NULL, NULL),
(7, 'Angola', 'AO', '+244', NULL, NULL),
(8, 'Anguilla', 'AI', '+1264', NULL, NULL),
(9, 'Antarctica', 'AQ', '+672', NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', '+1268', NULL, NULL),
(11, 'Argentina', 'AR', '+54', NULL, NULL),
(12, 'Armenia', 'AM', '+374', NULL, NULL),
(13, 'Aruba', 'AW', '+297', NULL, NULL),
(14, 'Australia', 'AU', '+61', NULL, NULL),
(15, 'Austria', 'AT', '+43', NULL, NULL),
(16, 'Azerbaijan', 'AZ', '+994', NULL, NULL),
(17, 'Bahamas', 'BS', '+1242', NULL, NULL),
(18, 'Bahrain', 'BH', '+973', NULL, '2024-10-02 03:00:48'),
(19, 'Bangladesh', 'BD', '+880', NULL, NULL),
(20, 'Barbados', 'BB', '+1246', NULL, NULL),
(21, 'Belarus', 'BY', '+375', NULL, NULL),
(22, 'Belgium', 'BE', '+32', NULL, NULL),
(23, 'Belize', 'BZ', '+501', NULL, NULL),
(24, 'Benin', 'BJ', '+229', NULL, NULL),
(25, 'Bermuda', 'BM', '+1441', NULL, NULL),
(26, 'Bhutan', 'BT', '+975', NULL, NULL),
(27, 'Bolivia, Plurination', 'BO', '+591', NULL, NULL),
(28, 'Bosnia and Herzegovi', 'BA', '+387', NULL, NULL),
(29, 'Botswana', 'BW', '+267', NULL, NULL),
(30, 'Brazil', 'BR', '+55', NULL, NULL),
(31, 'British Indian Ocean', 'IO', '+246', NULL, NULL),
(32, 'Brunei Darussalam', 'BN', '+673', NULL, NULL),
(33, 'Bulgaria', 'BG', '+359', NULL, NULL),
(34, 'Burkina Faso', 'BF', '+226', NULL, NULL),
(35, 'Burundi', 'BI', '+257', NULL, NULL),
(36, 'Cambodia', 'KH', '+855', NULL, NULL),
(37, 'Cameroon', 'CM', '+237', NULL, NULL),
(38, 'Canada', 'CA', '+1', NULL, NULL),
(39, 'Cape Verde', 'CV', '+238', NULL, NULL),
(40, 'Cayman Islands', 'KY', '+ 345', NULL, NULL),
(41, 'Central African Repu', 'CF', '+236', NULL, NULL),
(42, 'Chad', 'TD', '+235', NULL, NULL),
(43, 'Chile', 'CL', '+56', NULL, NULL),
(44, 'China', 'CN', '+86', NULL, NULL),
(45, 'Christmas Island', 'CX', '+61', NULL, NULL),
(46, 'Cocos (Keeling) Isla', 'CC', '+61', NULL, NULL),
(47, 'Colombia', 'CO', '+57', NULL, NULL),
(48, 'Comoros', 'KM', '+269', NULL, NULL),
(49, 'Congo', 'CG', '+242', NULL, NULL),
(50, 'Congo, The Democrati', 'CD', '+243', NULL, NULL),
(51, 'Cook Islands', 'CK', '+682', NULL, NULL),
(52, 'Costa Rica', 'CR', '+506', NULL, NULL),
(53, 'Cote d\'Ivoire', 'CI', '+225', NULL, NULL),
(54, 'Croatia', 'HR', '+385', NULL, NULL),
(55, 'Cuba', 'CU', '+53', NULL, NULL),
(56, 'Cyprus', 'CY', '+357', NULL, NULL),
(57, 'Czech Republic', 'CZ', '+420', NULL, NULL),
(58, 'Denmark', 'DK', '+45', NULL, NULL),
(59, 'Djibouti', 'DJ', '+253', NULL, NULL),
(60, 'Dominica', 'DM', '+1767', NULL, NULL),
(61, 'Dominican Republic', 'DO', '+1849', NULL, NULL),
(62, 'Ecuador', 'EC', '+593', NULL, NULL),
(63, 'Egypt', 'EG', '+20', NULL, NULL),
(64, 'El Salvador', 'SV', '+503', NULL, NULL),
(65, 'Equatorial Guinea', 'GQ', '+240', NULL, NULL),
(66, 'Eritrea', 'ER', '+291', NULL, NULL),
(67, 'Estonia', 'EE', '+372', NULL, NULL),
(68, 'Ethiopia', 'ET', '+251', NULL, NULL),
(69, 'Falkland Islands (Ma', 'FK', '+500', NULL, NULL),
(70, 'Faroe Islands', 'FO', '+298', NULL, NULL),
(71, 'Fiji', 'FJ', '+679', NULL, NULL),
(72, 'Finland', 'FI', '+358', NULL, NULL),
(73, 'France', 'FR', '+33', NULL, NULL),
(74, 'French Guiana', 'GF', '+594', NULL, NULL),
(75, 'French Polynesia', 'PF', '+689', NULL, NULL),
(76, 'Gabon', 'GA', '+241', NULL, NULL),
(77, 'Gambia', 'GM', '+220', NULL, NULL),
(78, 'Georgia', 'GE', '+995', NULL, NULL),
(79, 'Germany', 'DE', '+49', NULL, NULL),
(80, 'Ghana', 'GH', '+233', NULL, NULL),
(81, 'Gibraltar', 'GI', '+350', NULL, NULL),
(82, 'Greece', 'GR', '+30', NULL, NULL),
(83, 'Greenland', 'GL', '+299', NULL, NULL),
(84, 'Grenada', 'GD', '+1473', NULL, NULL),
(85, 'Guadeloupe', 'GP', '+590', NULL, NULL),
(86, 'Guam', 'GU', '+1671', NULL, NULL),
(87, 'Guatemala', 'GT', '+502', NULL, NULL),
(88, 'Guernsey', 'GG', '+44', NULL, NULL),
(89, 'Guinea', 'GN', '+224', NULL, NULL),
(90, 'Guinea-Bissau', 'GW', '+245', NULL, NULL),
(91, 'Guyana', 'GY', '+595', NULL, NULL),
(92, 'Haiti', 'HT', '+509', NULL, NULL),
(93, 'Holy See (Vatican Ci', 'VA', '+379', NULL, NULL),
(94, 'Honduras', 'HN', '+504', NULL, NULL),
(95, 'Hong Kong', 'HK', '+852', NULL, NULL),
(96, 'Hungary', 'HU', '+36', NULL, NULL),
(97, 'Iceland', 'IS', '+354', NULL, NULL),
(98, 'India', 'IN', '+91', NULL, NULL),
(99, 'Indonesia', 'ID', '+62', NULL, NULL),
(100, 'Iran, Islamic Republ', 'IR', '+98', NULL, NULL),
(101, 'Iraq', 'IQ', '+964', NULL, NULL),
(102, 'Ireland', 'IE', '+353', NULL, NULL),
(103, 'Isle of Man', 'IM', '+44', NULL, NULL),
(104, 'Israel', 'IL', '+972', NULL, NULL),
(105, 'Italy', 'IT', '+39', NULL, NULL),
(106, 'Jamaica', 'JM', '+1876', NULL, NULL),
(107, 'Japan', 'JP', '+81', NULL, NULL),
(108, 'Jersey', 'JE', '+44', NULL, NULL),
(109, 'Jordan', 'JO', '+962', NULL, NULL),
(110, 'Kazakhstan', 'KZ', '+7 7', NULL, NULL),
(111, 'Kenya', 'KE', '+254', NULL, NULL),
(112, 'Kiribati', 'KI', '+686', NULL, NULL),
(113, 'Korea, Democratic Pe', 'KP', '+850', NULL, NULL),
(114, 'Korea, Republic of S', 'KR', '+82', NULL, NULL),
(115, 'Kuwait', 'KW', '+965', NULL, NULL),
(116, 'Kyrgyzstan', 'KG', '+996', NULL, NULL),
(117, 'Laos', 'LA', '+856', NULL, NULL),
(118, 'Latvia', 'LV', '+371', NULL, NULL),
(119, 'Lebanon', 'LB', '+961', NULL, NULL),
(120, 'Lesotho', 'LS', '+266', NULL, NULL),
(121, 'Liberia', 'LR', '+231', NULL, NULL),
(122, 'Libyan Arab Jamahiri', 'LY', '+218', NULL, NULL),
(123, 'Liechtenstein', 'LI', '+423', NULL, NULL),
(124, 'Lithuania', 'LT', '+370', NULL, NULL),
(125, 'Luxembourg', 'LU', '+352', NULL, NULL),
(126, 'Macao', 'MO', '+853', NULL, NULL),
(127, 'Macedonia', 'MK', '+389', NULL, NULL),
(128, 'Madagascar', 'MG', '+261', NULL, NULL),
(129, 'Malawi', 'MW', '+265', NULL, NULL),
(130, 'Malaysia', 'MY', '+60', NULL, NULL),
(131, 'Maldives', 'MV', '+960', NULL, NULL),
(132, 'Mali', 'ML', '+223', NULL, NULL),
(133, 'Malta', 'MT', '+356', NULL, NULL),
(134, 'Marshall Islands', 'MH', '+692', NULL, NULL),
(135, 'Martinique', 'MQ', '+596', NULL, NULL),
(136, 'Mauritania', 'MR', '+222', NULL, NULL),
(137, 'Mauritius', 'MU', '+230', NULL, NULL),
(138, 'Mayotte', 'YT', '+262', NULL, NULL),
(139, 'Mexico', 'MX', '+52', NULL, NULL),
(140, 'Micronesia, Federate', 'FM', '+691', NULL, NULL),
(141, 'Moldova', 'MD', '+373', NULL, NULL),
(142, 'Monaco', 'MC', '+377', NULL, NULL),
(143, 'Mongolia', 'MN', '+976', NULL, NULL),
(144, 'Montenegro', 'ME', '+382', NULL, NULL),
(145, 'Montserrat', 'MS', '+1664', NULL, NULL),
(146, 'Morocco', 'MA', '+212', NULL, NULL),
(147, 'Mozambique', 'MZ', '+258', NULL, NULL),
(148, 'Myanmar', 'MM', '+95', NULL, NULL),
(149, 'Namibia', 'NA', '+264', NULL, NULL),
(150, 'Nauru', 'NR', '+674', NULL, NULL),
(151, 'Nepal', 'NP', '+977', NULL, NULL),
(152, 'Netherlands', 'NL', '+31', NULL, NULL),
(153, 'Netherlands Antilles', 'AN', '+599', NULL, NULL),
(154, 'New Caledonia', 'NC', '+687', NULL, NULL),
(155, 'New Zealand', 'NZ', '+64', NULL, NULL),
(156, 'Nicaragua', 'NI', '+505', NULL, NULL),
(157, 'Niger', 'NE', '+227', NULL, NULL),
(158, 'Nigeria', 'NG', '+234', NULL, NULL),
(159, 'Niue', 'NU', '+683', NULL, NULL),
(160, 'Norfolk Island', 'NF', '+672', NULL, NULL),
(161, 'Northern Mariana Isl', 'MP', '+1670', NULL, NULL),
(162, 'Norway', 'NO', '+47', NULL, NULL),
(163, 'Oman', 'OM', '+968', NULL, NULL),
(164, 'Pakistan', 'PK', '+92', NULL, NULL),
(165, 'Palau', 'PW', '+680', NULL, NULL),
(166, 'Palestinian Territor', 'PS', '+970', NULL, NULL),
(167, 'Panama', 'PA', '+507', NULL, NULL),
(168, 'Papua New Guinea', 'PG', '+675', NULL, NULL),
(169, 'Paraguay', 'PY', '+595', NULL, NULL),
(170, 'Peru', 'PE', '+51', NULL, NULL),
(171, 'Philippines', 'PH', '+63', NULL, NULL),
(172, 'Pitcairn', 'PN', '+872', NULL, NULL),
(173, 'Poland', 'PL', '+48', NULL, NULL),
(174, 'Portugal', 'PT', '+351', NULL, NULL),
(175, 'Puerto Rico', 'PR', '+1939', NULL, NULL),
(176, 'Qatar', 'QA', '+974', NULL, NULL),
(177, 'Romania', 'RO', '+40', NULL, NULL),
(178, 'Russia', 'RU', '+7', NULL, NULL),
(179, 'Rwanda', 'RW', '+250', NULL, NULL),
(180, 'Reunion', 'RE', '+262', NULL, NULL),
(181, 'Saint Barthelemy', 'BL', '+590', NULL, NULL),
(182, 'Saint Helena, Ascens', 'SH', '+290', NULL, NULL),
(183, 'Saint Kitts and Nevi', 'KN', '+1869', NULL, NULL),
(184, 'Saint Lucia', 'LC', '+1758', NULL, NULL),
(185, 'Saint Martin', 'MF', '+590', NULL, NULL),
(186, 'Saint Pierre and Miq', 'PM', '+508', NULL, NULL),
(187, 'Saint Vincent and th', 'VC', '+1784', NULL, NULL),
(188, 'Samoa', 'WS', '+685', NULL, NULL),
(189, 'San Marino', 'SM', '+378', NULL, NULL),
(190, 'Sao Tome and Princip', 'ST', '+239', NULL, NULL),
(191, 'Saudi Arabia', 'SA', '+966', NULL, NULL),
(192, 'Senegal', 'SN', '+221', NULL, NULL),
(193, 'Serbia', 'RS', '+381', NULL, NULL),
(194, 'Seychelles', 'SC', '+248', NULL, NULL),
(195, 'Sierra Leone', 'SL', '+232', NULL, NULL),
(196, 'Singapore', 'SG', '+65', NULL, NULL),
(197, 'Slovakia', 'SK', '+421', NULL, NULL),
(198, 'Slovenia', 'SI', '+386', NULL, NULL),
(199, 'Solomon Islands', 'SB', '+677', NULL, NULL),
(200, 'Somalia', 'SO', '+252', NULL, NULL),
(201, 'South Africa', 'ZA', '+27', NULL, NULL),
(202, 'South Georgia and th', 'GS', '+500', NULL, NULL),
(203, 'Spain', 'ES', '+34', NULL, NULL),
(204, 'Sri Lanka', 'LK', '+94', NULL, NULL),
(205, 'Sudan', 'SD', '+249', NULL, NULL),
(206, 'Suriname', 'SR', '+597', NULL, NULL),
(207, 'Svalbard and Jan May', 'SJ', '+47', NULL, NULL),
(208, 'Swaziland', 'SZ', '+268', NULL, NULL),
(209, 'Sweden', 'SE', '+46', NULL, NULL),
(210, 'Switzerland', 'CH', '+41', NULL, NULL),
(211, 'Syrian Arab Republic', 'SY', '+963', NULL, NULL),
(212, 'Taiwan', 'TW', '+886', NULL, NULL),
(213, 'Tajikistan', 'TJ', '+992', NULL, NULL),
(214, 'Tanzania, United Rep', 'TZ', '+255', NULL, NULL),
(215, 'Thailand', 'TH', '+66', NULL, NULL),
(216, 'Timor-Leste', 'TL', '+670', NULL, NULL),
(217, 'Togo', 'TG', '+228', NULL, NULL),
(218, 'Tokelau', 'TK', '+690', NULL, NULL),
(219, 'Tonga', 'TO', '+676', NULL, NULL),
(220, 'Trinidad and Tobago', 'TT', '+1868', NULL, NULL),
(221, 'Tunisia', 'TN', '+216', NULL, NULL),
(222, 'Turkey', 'TR', '+90', NULL, NULL),
(223, 'Turkmenistan', 'TM', '+993', NULL, NULL),
(224, 'Turks and Caicos Isl', 'TC', '+1649', NULL, NULL),
(225, 'Tuvalu', 'TV', '+688', NULL, NULL),
(226, 'Uganda', 'UG', '+256', NULL, NULL),
(227, 'Ukraine', 'UA', '+380', NULL, NULL),
(228, 'United Arab Emirates', 'AE', '+971', NULL, NULL),
(229, 'United Kingdom', 'GB', '+44', NULL, NULL),
(230, 'United States', 'US', '+1', NULL, NULL),
(231, 'Uruguay', 'UY', '+598', NULL, NULL),
(232, 'Uzbekistan', 'UZ', '+998', NULL, NULL),
(233, 'Vanuatu', 'VU', '+678', NULL, NULL),
(234, 'Venezuela, Bolivaria', 'VE', '+58', NULL, NULL),
(235, 'Vietnam', 'VN', '+84', NULL, NULL),
(236, 'Virgin Islands, Brit', 'VG', '+1284', NULL, NULL),
(237, 'Virgin Islands, U.S.', 'VI', '+1340', NULL, NULL),
(238, 'Wallis and Futuna', 'WF', '+681', NULL, NULL),
(239, 'Yemen', 'YE', '+967', NULL, NULL),
(240, 'Zambia', 'ZM', '+260', NULL, NULL),
(241, 'Zimbabwe', 'ZW', '+263', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `expiry` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `is_paid` int(11) DEFAULT NULL,
  `is_best` int(11) NOT NULL DEFAULT 0,
  `price` double DEFAULT NULL,
  `discounted_price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT NULL,
  `enable_drip_content` int(11) DEFAULT NULL,
  `drip_content_settings` longtext DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `requirements` mediumtext DEFAULT NULL,
  `outcomes` mediumtext DEFAULT NULL,
  `faqs` mediumtext DEFAULT NULL,
  `instructor_ids` text DEFAULT NULL,
  `average_rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `expiry_period` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `short_description`, `user_id`, `category_id`, `course_type`, `status`, `level`, `language`, `is_paid`, `is_best`, `price`, `discounted_price`, `discount_flag`, `enable_drip_content`, `drip_content_settings`, `meta_keywords`, `meta_description`, `thumbnail`, `banner`, `preview`, `description`, `requirements`, `outcomes`, `faqs`, `instructor_ids`, `average_rating`, `created_at`, `updated_at`, `expiry_period`) VALUES
(1, 'Full Stack Web Development', 'full-stack-web-development', 'Become a full stack developer', 3, 5, 'general', 'active', 'intermediate', 'english', 1, 1, 250, 199, 1, 1, '{\"lesson_completion_role\":\"percentage\",\"minimum_percentage\":\"40\"}', 'html,css,js,laravel,react', 'Full stack web development course', 'uploads/course-thumbnail/fullstack.jpg', 'uploads/course-banner/fullstack.jpg', NULL, '<p>Complete roadmap to become a professional full stack developer.</p>', '', NULL, NULL, '[\"3\"]', 5, '2026-02-04 18:13:37', '2026-02-04 18:13:37', 730),
(2, 'Laravel Fundamentals', 'laravel-fundamentals', 'Learn Laravel from scratch with real projects', 1, 2, 'general', 'active', 'beginner', 'english', 0, 1, NULL, NULL, 0, 0, NULL, 'laravel,php,backend', 'Beginner Laravel course', 'uploads/course-thumbnail/laravel.jpg', 'uploads/course-banner/laravel.jpg', NULL, '<p>This course covers Laravel basics, routing, controllers, and views.</p>', ' ', NULL, NULL, '[\"1\"]', 5, '2026-02-04 18:13:37', '2026-02-04 18:13:37', NULL),
(3, 'Advanced Laravel & APIs', 'advanced-laravel-apis', 'Build scalable APIs with Laravel', 1, 2, 'general', 'active', 'advanced', 'english', 1, 1, 120, 89, 1, 1, '{\"lesson_completion_role\":\"percentage\",\"minimum_percentage\":\"50\"}', 'laravel,api,backend', 'Advanced Laravel API course', 'uploads/course-thumbnail/laravel-api.jpg', NULL, NULL, '<p>Deep dive into Laravel APIs, authentication, queues, and performance.</p>', '', NULL, NULL, '[\"1\",\"2\"]', 4, '2026-02-04 18:13:37', '2026-02-04 18:13:37', 365),
(4, 'تعلم SQL من الصفر', 'learn-sql-arabic', 'دورة شاملة لتعلم قواعد البيانات SQL', 2, 3, 'general', 'active', 'beginner', 'arabic', 0, 0, NULL, NULL, 0, 0, NULL, 'sql,database,arabic', 'تعلم SQL باللغة العربية', 'uploads/course-thumbnail/sql-ar.jpg', NULL, NULL, '<p>ستتعلم في هذه الدورة أساسيات SQL مع أمثلة عملية.</p>', ' ', NULL, NULL, '[\"2\"]', 5, '2026-02-04 18:13:37', '2026-02-04 18:13:37', NULL),
(5, 'العلاج المعرفي السلوكي', 'العلاج-المعرفي-السلوكي-5', NULL, 1, 11, 'general', 'active', 'intermediate', 'arabic', 1, 0, 99.99, NULL, NULL, 0, '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":15,\"minimum_percentage\":\"30\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"1\"]', 0, '2026-03-04 16:52:47', '2026-03-04 16:52:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT 0,
  `iyzico_supported` int(11) DEFAULT 0,
  `paystack_supported` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1, 0, 0, 0),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0, 0, 0),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0, 0, 0),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0, 0, 0),
(5, 'Argentine Peso', 'ARS', '$', 1, 1, 0, 0, 0),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0, 0, 0),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0, 0, 0),
(8, 'Australian Dollar', 'AUD', '$', 1, 1, 0, 0, 0),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0, 0, 0),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0, 0, 0),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0, 0, 0),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0, 0, 0),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0, 0, 0),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0, 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0, 0, 0),
(16, 'Belize Dollar', 'BZD', '$', 1, 1, 0, 0, 0),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0, 0, 0),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0, 0, 0),
(19, 'Bitcoin', 'BTC', '฿', 1, 1, 0, 0, 0),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0, 0, 0),
(21, 'Bosnia', 'BAM', 'KM', 1, 1, 0, 0, 0),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0, 0, 0),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 0, 0, 0),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1, 0, 0, 0),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0, 0, 0),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0, 0, 0),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0, 0, 0),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0, 0, 0),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1, 0, 0, 0),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 0, 0, 0),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0, 0, 0),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 0, 0, 0),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 0, 0, 0),
(34, 'CFP Franc', 'XPF', '₣', 1, 1, 0, 0, 0),
(35, 'Chilean Peso', 'CLP', '$', 1, 1, 0, 0, 0),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0, 0, 0),
(37, 'Colombian Peso', 'COP', '$', 1, 1, 0, 0, 0),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0, 0, 0),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 0, 0, 0),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0, 0, 0),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0, 0, 0),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0, 0, 0),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0, 0, 0),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0, 0, 0),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0, 0, 0),
(46, 'Dominican Peso', 'DOP', '$', 1, 1, 0, 0, 0),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0, 0, 0),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 0, 0, 0),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0, 0, 0),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0, 0, 0),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0, 0, 0),
(52, 'Euro', 'EUR', '€', 1, 1, 0, 0, 0),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0, 0, 0),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0, 0, 0),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 0, 0, 0),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0, 0, 0),
(57, 'German Mark', 'DEM', 'DM', 1, 1, 0, 0, 0),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 0, 0, 0),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0, 0, 0),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0, 0, 0),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0, 0, 0),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 0, 0, 0),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0, 0, 0),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0, 0, 0),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0, 0, 0),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0, 0, 0),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0, 0, 0),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0, 0, 0),
(69, 'Indian Rupee', 'INR', '₹', 1, 1, 1, 0, 0),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0, 0, 0),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0, 0, 0),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0, 0, 0),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0, 0, 0),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0, 0, 0),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0, 0, 0),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0, 0, 0),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0, 0, 0),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0, 0, 0),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 0, 0, 0),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0, 0, 0),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0, 0, 0),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0, 0, 0),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0, 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0, 0, 0),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0, 0, 0),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1, 0, 0, 0),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0, 0, 0),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0, 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0, 0, 0),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0, 0, 0),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0, 0, 0),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 0, 0, 0),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0, 0, 0),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0, 0, 0),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0, 0, 0),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0, 0, 0),
(97, 'Mexican Peso', 'MXN', '$', 1, 1, 0, 0, 0),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0, 0, 0),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0, 0, 0),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 0, 0, 0),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0, 0, 0),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0, 0, 0),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0, 0, 0),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0, 0, 0),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0, 0, 0),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0, 0, 0),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0, 0, 0),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0, 0, 0),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 0, 0, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0, 0, 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0, 0, 0),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0, 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0, 0, 0),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0, 0, 0),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0, 0, 0),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0, 0, 0),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0, 0, 0),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0, 0, 0),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0, 0, 0),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0, 0, 0),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0, 0, 0),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0, 0, 0),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 0, 0, 0),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0, 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0, 0, 0),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0, 0, 0),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0, 0, 0),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0, 0, 0),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 0, 0, 0),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0, 0, 0),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0, 0, 0),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0, 0, 0),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0, 0, 0),
(134, 'South African Rand', 'ZAR', 'R', 1, 1, 0, 0, 0),
(135, 'South Korean Won', 'KRW', '₩', 1, 1, 0, 0, 0),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0, 0, 0),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0, 0, 0),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0, 0, 0),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0, 0, 0),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0, 0, 0),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0, 0, 0),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0, 0, 0),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0, 0, 0),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0, 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 0, 0, 0),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0, 0, 0),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 0, 0, 0),
(148, 'Thai Baht', 'THB', '฿', 1, 1, 0, 0, 0),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0, 0, 0),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0, 0, 0),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0, 0, 0),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0, 1, 0),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0, 0, 0),
(154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1, 0, 0, 0),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0, 0, 0),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0, 0, 0),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0, 0, 0),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0, 0, 0),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0, 0, 0),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0, 0, 0),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0, 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0, 0, 0),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0, 0, 0),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) NOT NULL,
  `course_id` int(20) DEFAULT NULL,
  `custom_type` varchar(255) DEFAULT NULL,
  `custom_title` varchar(255) DEFAULT NULL,
  `custom_field` longtext DEFAULT NULL,
  `sorting` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_ips`
--

CREATE TABLE `device_ips` (
  `id` int(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `session_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device_ips`
--

INSERT INTO `device_ips` (`id`, `user_id`, `ip_address`, `user_agent`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 2, '172.68.234.17', 'c827615a-a852-4124-ba6e-b04a43d74004', 'HyMU63YYlmJ32YioqFqUmujCNTJCD8fvJDtbqt6r', '2026-01-07 23:30:38', '2026-01-07 23:30:38'),
(6, 5, '85.184.43.89', 'd39276d3-aabb-4700-adad-08c003834d17', '1v91Op6Xg9Yv2NEaR4eoi0E3KgTYgg2RiccN6ExZ', '2026-03-04 17:18:26', '2026-03-04 17:18:26'),
(7, 6, '82.205.4.186', '0e04bd70-0a7c-47bd-9015-0a96ba2d3de4', 'BdcWphTcueegv2V5BFdgS1KeMvRjDBXSpSit3OFk', '2026-04-04 21:38:01', '2026-04-04 21:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `ebooks`
--

CREATE TABLE `ebooks` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `publication_name` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `is_paid` int(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `discount_flag` int(255) DEFAULT NULL,
  `discounted_price` double(10,2) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `published_date` int(255) DEFAULT NULL,
  `language_id` int(255) DEFAULT NULL,
  `summary` mediumtext DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `complete` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `average_rating` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ebook_categories`
--

CREATE TABLE `ebook_categories` (
  `id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ebook_purchases`
--

CREATE TABLE `ebook_purchases` (
  `id` int(255) NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `transaction_id` longtext DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `ebook_id` int(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_revenue` float(10,2) DEFAULT NULL,
  `instructor_revenue` float(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ebook_reviews`
--

CREATE TABLE `ebook_reviews` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `ebook_id` int(255) DEFAULT NULL,
  `rating` int(255) DEFAULT NULL,
  `review` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enrollment_type` varchar(255) DEFAULT NULL,
  `entry_date` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `expiry_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `user_id`, `course_id`, `enrollment_type`, `entry_date`, `created_at`, `updated_at`, `expiry_date`) VALUES
(1, 2, 4, NULL, 1771807990, '2026-02-23 00:53:10', '2026-02-23 00:53:10', NULL);

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
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `course_id` int(255) DEFAULT NULL,
  `parent_id` int(255) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `likes` longtext DEFAULT NULL,
  `dislikes` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'banner_title', 'Start learning from the world’s pro Instructors', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(2, 'banner_sub_title', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(4, 'about_us', '<div>Limitless learning at your fingertips</div><div><br></div><div>Limitless learning at your fingertipsAdvertising a busines online includes assembling the they awesome site. Having the most well-planned on to the our SEO services keep you on the top a business Having the moston to the online.</div><div><br></div><div><br></div><div><br></div><div>Advertising a busines online includes assembling the they awesome site.</div><div><br></div><div><br></div><div>Range including technical skills</div><div>Range including technical skills</div><div>Range including technical skills</div><div><br></div>', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span></h2>', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(13, 'theme', 'default', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(15, 'cookie_status', '0', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(16, 'cookie_policy', '<h2 class=\"\">Cookie policy</h2><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(17, 'banner_image', 'uploads/banner_image/bannerimage-1767971894.png', '2023-10-31 11:08:12', '2026-01-09 20:18:14'),
(18, 'light_logo', 'uploads/light_logo/lightlogo-1767815596.png', '2023-10-31 11:08:12', '2026-01-08 00:53:16'),
(19, 'dark_logo', 'uploads/dark_logo/darklogo-1767815608.png', '2023-10-31 11:08:12', '2026-01-08 00:53:28'),
(20, 'small_logo', 'uploads/small_logo/small-logo-1712661659.jpg', '2023-10-31 11:08:12', '2024-04-09 05:20:59'),
(21, 'favicon', 'uploads/favicon/favicon-1767815703.png', '2023-10-31 11:08:12', '2026-01-08 00:55:03'),
(22, 'recaptcha_status', '0', '2023-10-31 11:08:12', '2023-11-01 23:27:24'),
(23, 'recaptcha_secretkey', 'Valid-secret-key', '2023-10-31 11:08:12', '2023-11-01 23:27:24'),
(24, 'recaptcha_sitekey', 'Valid-site-key', '2023-10-31 11:08:12', '2023-11-01 23:27:24'),
(25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(26, 'facebook', 'https://facebook.com', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(27, 'twitter', 'https://twitter.com', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(28, 'linkedin', 'https://linkedin.com', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(31, 'blog_page_title', 'Where possibilities begin', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(33, 'blog_page_banner', 'blog-page.png', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(34, 'instructors_blog_permission', '1', '2023-10-31 11:08:12', '2023-12-07 00:28:58'),
(35, 'blog_visibility_on_the_home_page', '1', '2023-10-31 11:08:12', '2023-12-07 00:28:58'),
(37, 'website_faqs', '[{\"question\":\"How to create an account?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"},{\"question\":\"Do you provide any support for this kit?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"},{\"question\":\"How to create an account?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"},{\"question\":\"How long do you provide support?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"}]', '2023-10-31 11:08:12', '2024-09-11 04:57:12'),
(38, 'motivational_speech', '[{\"title\":\"Jenny Murtagh\",\"designation\":\"Graphic Design\",\"description\":\"Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even for slightly believable randomised words.\",\"image\":\"I6zvV1Mr30YUhLfJgwje.png\"},{\"title\":\"Jenny Murtagh\",\"designation\":\"Graphic Design\",\"description\":\"Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even for slightly believable randomised words.\",\"image\":\"ZLfkhGame7sYQvqKxD0J.png\"},{\"title\":\"Jenny Murtagh\",\"designation\":\"Graphic Design\",\"description\":\"Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even for slightly believable randomised words.\",\"image\":\"xBYkXnfvmPiU3j0CzME1.png\"}]', '2023-10-31 11:08:12', '2024-09-11 04:57:18'),
(39, 'home_page', NULL, '2023-10-31 11:08:12', '2026-01-20 09:43:21'),
(40, 'contact_info', '{\"email\":\"prominence.academy@example.com\",\"phone\":\"12345678\",\"address\":\"Palestine\",\"office_hours\":\"24\",\"location\":\"\\u0627\\u0644\\u0637\\u0648\\u0644, \\u0627\\u0644\\u0639\\u0631\\u0636\"}', '2023-10-31 11:08:12', '2026-01-08 16:02:03'),
(41, 'promo_video_provider', 'youtube', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(42, 'promo_video_link', 'https://youtu.be', '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(43, 'mobile_app_link', NULL, '2023-10-31 11:08:12', '2026-01-09 20:19:26'),
(44, 'testimonials', '[\r\n    {\r\n        \"name\": \"محمد عبدالله\",\r\n        \"position\": \"مدير مشاريع\",\r\n        \"comment\": \"تجربة رائعة ومفيدة جداً. الدورة التدريبية كانت منظمة بشكل ممتاز والمدربون محترفون. استفدت كثيراً وأصبحت أكثر ثقة في مهاراتي.\",\r\n        \"image\": \"uploads/testimonials/user1.jpg\",\r\n        \"rating\": 5\r\n    },\r\n    {\r\n        \"name\": \"سارة أحمد\",\r\n        \"position\": \"مديرة تسويق\",\r\n        \"comment\": \"دورة التسويق الرقمي غيرت مسار عملي بالكامل. المحتوى عملي وقابل للتطبيق مباشرة. أنصح بها بشدة لكل من يريد التميز في هذا المجال.\",\r\n        \"image\": \"uploads/testimonials/user2.jpg\",\r\n        \"rating\": 5\r\n    },\r\n    {\r\n        \"name\": \"عمر خالد\",\r\n        \"position\": \"قائد فريق\",\r\n        \"comment\": \"برنامج تطوير المهارات القيادية ساعدني على تحسين أدائي كقائد فريق. الأدوات والتقنيات التي تعلمتها أطبقها يومياً في عملي.\",\r\n        \"image\": \"uploads/testimonials/user3.jpg\",\r\n        \"rating\": 5\r\n    },\r\n    {\r\n        \"name\": \"فاطمة حسن\",\r\n        \"position\": \"مطورة برمجيات\",\r\n        \"comment\": \"دورات البرمجة ممتازة ومصممة بشكل احترافي. تعلمت مهارات جديدة ساعدتني في الحصول على ترقية في عملي.\",\r\n        \"image\": \"uploads/testimonials/user4.jpg\",\r\n        \"rating\": 4\r\n    },\r\n    {\r\n        \"name\": \"أحمد سعيد\",\r\n        \"position\": \"رائد أعمال\",\r\n        \"comment\": \"دورة إدارة الأعمال أعطتني أدوات عملية لإدارة شركتي الناشئة بشكل أفضل. استثمار يستحق كل ريال.\",\r\n        \"image\": \"uploads/testimonials/user5.jpg\",\r\n        \"rating\": 5\r\n    },\r\n    {\r\n        \"name\": \"نورة المطيري\",\r\n        \"position\": \"مصممة جرافيك\",\r\n        \"comment\": \"تعلمت أحدث تقنيات التصميم الجرافيكي. المدربون خبراء في مجالهم والمحتوى محدث باستمرار.\",\r\n        \"image\": \"uploads/testimonials/user6.jpg\",\r\n        \"rating\": 4\r\n    }\r\n]', '2026-02-07 08:49:55', '2026-02-07 08:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_settings`
--

CREATE TABLE `home_page_settings` (
  `id` int(11) NOT NULL,
  `home_page_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `home_page_settings`
--

INSERT INTO `home_page_settings` (`id`, `home_page_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 14, 'cooking', '{\"title\":\"Become An Instructor\",\"description\":\"Training programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever since the unknown printer took a galley of type and scrambled.\\r\\n\\r\\nConsectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever since.\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=iTlsP6RfCQ8\",\"image\":\"instructor_image.jpg\"}', '2024-05-15 09:43:54', '2024-10-28 05:14:50'),
(3, 15, 'university', '{\"image\":\"default-university.webp\",\"faq_image\":\"default-university2.webp\",\"slider_items\":\"[\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=iTlsP6RfCQ8\\\"]\"}', '2024-05-16 02:31:00', '2024-09-24 06:09:07'),
(4, 17, 'development', '{\"title\":\"Leading the Way in Software Development\",\"description\":\"Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.\\r\\nTraining programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent\",\"video_url\":null,\"image\":\"default-dev-banner.webp\"}', '2024-05-18 05:40:13', '2024-05-18 08:08:06'),
(5, 13, 'kindergarden', '{\"title\":\"Creating A Community Of Life Long Learners\",\"description\":\"Training programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes.\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent\\r\\nTraining programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent\",\"video_url\":null,\"image\":\"default-community-banner.webp\"}', '2024-05-18 08:02:45', '2024-05-18 08:07:59'),
(6, 18, 'marketplace', '{\"instructor\":{\"title\":\"Become an instructor\",\"description\":\"Training programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever since the unknown printer took a galley of type and scrambled.\\r\\n\\r\\nConsectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever sinces.\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=i-rv4VQiBko\",\"image\":\"default-video-area-banner.webp\"},\"slider\":[{\"banner_title\":\"LEARN FROM TODAY\",\"banner_description\":\"Academy Starter is a community for creative people\"},{\"banner_title\":\"LEARN FROM TODAY\",\"banner_description\":\"Academy Starter is a community for creative people\"},{\"banner_title\":\"LEARN FROM TODAY\",\"banner_description\":\"Academy Starter is a community for creative people\"},{\"banner_title\":\"LEARN FROM TODAY\",\"banner_description\":\"Academy Starter is a community for creative people\"}]}', '2024-05-18 22:55:44', '2024-05-20 01:22:25'),
(7, 19, 'meditation', '{\"big_image\":\"664b020ed2bbb.png\",\"meditation\":[{\"banner_title\":\"Balance Body & Mind\",\"image\":\"664b07fa650dd.yoga-benefit-1.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"},{\"banner_title\":\"Balance Body & Minds\",\"image\":\"664b08157c7ed.yoga-benefit-2.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"},{\"banner_title\":\"Balance Body & Mind\",\"image\":\"664b08157cab8.yoga-benefit-3.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"},{\"banner_title\":\"Balance Body & Mind\",\"image\":\"664b08157d2be.yoga-benefit-4.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"},{\"banner_title\":\"Balance Body & Mind\",\"image\":\"664b08263ba18.yoga-benefit-5.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"},{\"banner_title\":\"Balance Body & Minddf\",\"image\":\"664b08263bcca.yoga-benefit-6.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"}]}', '2024-05-19 23:54:56', '2024-05-20 02:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_reviews`
--

CREATE TABLE `instructor_reviews` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `instructor_id` int(255) DEFAULT NULL,
  `rating` varchar(244) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_bases`
--

CREATE TABLE `knowledge_bases` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `knowledge_bases`
--

INSERT INTO `knowledge_bases` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'a', '2026-02-23 00:30:42', '2026-02-23 00:30:42'),
(2, 'صحة نفسية', '2026-03-04 17:26:52', '2026-03-04 17:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_topicks`
--

CREATE TABLE `knowledge_base_topicks` (
  `id` int(11) NOT NULL,
  `knowledge_base_id` bigint(20) DEFAULT NULL,
  `topic_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `knowledge_base_topicks`
--

INSERT INTO `knowledge_base_topicks` (`id`, `knowledge_base_id`, `topic_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'xzs', '<p><span style=\"background-color: rgb(255, 255, 0);\">sada&nbsp;</span></p><p><span style=\"background-color: rgb(255, 255, 0);\">awdasdasdasd</span></p><p><span style=\"background-color: rgb(255, 255, 0);\"><br></span></p>', '2026-02-23 00:33:19', '2026-02-23 00:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `direction`, `created_at`, `updated_at`) VALUES
(3, 'English', 'ltr', '2024-04-08 10:42:26', '2024-04-09 01:12:02'),
(5, 'Arabic', 'rtl', '2026-01-08 02:06:02', '2026-01-08 02:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `language_phrases`
--

CREATE TABLE `language_phrases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phrase` text DEFAULT NULL,
  `translated` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_phrases`
--

INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(1, 3, 'Log In', 'Log In', NULL, NULL),
(2, 3, 'Login', 'Login', NULL, NULL),
(3, 3, 'See your growth and get consulting support!', 'See your growth and get consulting support!', NULL, NULL),
(4, 3, 'Email', 'Email', NULL, NULL),
(5, 3, 'Your Email', 'Your Email', NULL, NULL),
(6, 3, 'Password', 'Password', NULL, NULL),
(7, 3, 'Remember Me', 'Remember Me', NULL, NULL),
(8, 3, 'Forget Password?', 'Forget Password?', NULL, NULL),
(9, 3, 'Not have an account yet?', 'Not have an account yet?', NULL, NULL),
(10, 3, 'Create Account', 'Create Account', NULL, NULL),
(11, 3, 'Home', 'Home', NULL, NULL),
(12, 3, 'Courses', 'Courses', NULL, NULL),
(13, 3, 'All Courses', 'All Courses', NULL, NULL),
(14, 3, 'Bootcamp', 'Professional Diplomas and Masters', NULL, NULL),
(15, 3, 'Search...', 'Search...', NULL, NULL),
(16, 3, 'Search courses', 'Search courses', NULL, NULL),
(17, 3, 'Cart', 'Cart', NULL, NULL),
(18, 3, 'Sign Up', 'Sign Up', NULL, NULL),
(19, 3, 'Contact with Us', 'Contact with Us', NULL, NULL),
(20, 3, 'Top Categories', 'Top Categories', NULL, NULL),
(21, 3, 'Useful links', 'Useful links', NULL, NULL),
(22, 3, 'Course', 'Course', NULL, NULL),
(23, 3, 'Blog', 'Blog', NULL, NULL),
(24, 3, 'Company', 'Company', NULL, NULL),
(25, 3, 'Phone : ', 'Phone : ', NULL, NULL),
(26, 3, 'Email : ', 'Email : ', NULL, NULL),
(27, 3, 'Email address', 'Email address', NULL, NULL),
(28, 3, 'Submit', 'Submit', NULL, NULL),
(29, 3, 'About Us', 'About Us', NULL, NULL),
(30, 3, 'Privacy Policy', 'Privacy Policy', NULL, NULL),
(31, 3, 'Terms And Use', 'Terms And Use', NULL, NULL),
(32, 3, 'Sales and Refunds', 'Sales and Refunds', NULL, NULL),
(33, 3, 'FAQ', 'FAQ', NULL, NULL),
(34, 3, 'Close', 'Close', NULL, NULL),
(35, 3, 'Are you sure?', 'Are you sure?', NULL, NULL),
(36, 3, 'You can\'t bring it back!', 'You can\'t bring it back!', NULL, NULL),
(37, 3, 'Cancel', 'Cancel', NULL, NULL),
(38, 3, 'Yes, I\'m sure', 'Yes, I\'m sure', NULL, NULL),
(39, 3, 'Just Now', 'Just Now', NULL, NULL),
(40, 3, 'Success !', 'Success !', NULL, NULL),
(41, 3, 'Attention !', 'Attention !', NULL, NULL),
(42, 3, 'An Error Occurred !', 'An Error Occurred !', NULL, NULL),
(43, 3, 'Remove from wishlist', 'Remove from wishlist', NULL, NULL),
(44, 3, 'This course added to your wishlist', 'This course added to your wishlist', NULL, NULL),
(45, 3, 'Add to wishlist', 'Add to wishlist', NULL, NULL),
(46, 3, 'This course removed from your wishlist', 'This course removed from your wishlist', NULL, NULL),
(47, 3, 'Enter your keywords', 'Enter your keywords', NULL, NULL),
(48, 3, 'Show less', 'Show less', NULL, NULL),
(49, 3, 'Show more', 'Show more', NULL, NULL),
(50, 3, 'Showing', 'Showing', NULL, NULL),
(51, 3, 'of', 'of', NULL, NULL),
(52, 3, 'data', 'data', NULL, NULL),
(53, 3, 'Grid', 'Grid', NULL, NULL),
(54, 3, 'List', 'List', NULL, NULL),
(55, 3, 'Filter', 'Filter', NULL, NULL),
(56, 3, 'Categories', 'Categories', NULL, NULL),
(57, 3, 'Price', 'Price', NULL, NULL),
(58, 3, 'Paid', 'Paid', NULL, NULL),
(59, 3, 'Discount', 'Discount', NULL, NULL),
(60, 3, 'Free', 'Free', NULL, NULL),
(61, 3, 'Level', 'Level', NULL, NULL),
(62, 3, 'Beginner', 'Beginner', NULL, NULL),
(63, 3, 'Intermediate', 'Intermediate', NULL, NULL),
(64, 3, 'Advanced', 'Advanced', NULL, NULL),
(65, 3, 'language', 'language', NULL, NULL),
(66, 3, 'English', 'English', NULL, NULL),
(67, 3, 'Spanish', 'Spanish', NULL, NULL),
(68, 3, 'Italic', 'Italic', NULL, NULL),
(69, 3, 'German', 'German', NULL, NULL),
(70, 3, 'Ratings', 'Ratings', NULL, NULL),
(71, 3, 'No data found !', 'No data found !', NULL, NULL),
(72, 3, 'Please attempt utilizing the suitable keywords in your search query to obtain more precise results.', 'Please attempt utilizing the suitable keywords in your search query to obtain more precise results.', NULL, NULL),
(73, 3, 'Back', 'Back', NULL, NULL),
(74, 3, 'Dashboard', 'Dashboard', NULL, NULL),
(75, 3, 'Number of Courses', 'Number of Courses', NULL, NULL),
(76, 3, 'Number of Lessons', 'Number of Lessons', NULL, NULL),
(77, 3, 'Number of Enrollment', 'Number of Enrollment', NULL, NULL),
(78, 3, 'Number of Students', 'Number of Students', NULL, NULL),
(79, 3, 'Number of Instructor', 'Number of Instructor', NULL, NULL),
(80, 3, 'Admin Revenue This Year', 'Admin Revenue This Year', NULL, NULL),
(81, 3, 'Admin Revenue', 'Admin Revenue', NULL, NULL),
(82, 3, 'Course Status', 'Course Status', NULL, NULL),
(83, 3, 'Explore Courses', 'Explore Courses', NULL, NULL),
(84, 3, 'Active', 'Active', NULL, NULL),
(85, 3, 'Upcoming', 'Upcoming', NULL, NULL),
(86, 3, 'Pending', 'Pending', NULL, NULL),
(87, 3, 'Private', 'Private', NULL, NULL),
(88, 3, 'Draft', 'Draft', NULL, NULL),
(89, 3, 'Inactive', 'Inactive', NULL, NULL),
(90, 3, 'Pending Requested withdrawal', 'Pending Requested withdrawal', NULL, NULL),
(91, 3, 'Instructor Payout', 'Instructor Payout', NULL, NULL),
(92, 3, 'Main Menu', 'Main Menu', NULL, NULL),
(93, 3, 'Category', 'Category', NULL, NULL),
(94, 3, 'Manage Courses', 'Manage Courses', NULL, NULL),
(95, 3, 'Add New Course', 'Add New Course', NULL, NULL),
(96, 3, 'Coupons', 'Coupons', NULL, NULL),
(97, 3, 'Manage Bootcamps', 'Manage Bootcamps', NULL, NULL),
(98, 3, 'Add New Bootcamp', 'Add New Bootcamp', NULL, NULL),
(99, 3, 'Purchase History', 'Purchase History', NULL, NULL),
(100, 3, 'Student enrollment', 'Student enrollment', NULL, NULL),
(101, 3, 'Course enrollment', 'Course enrollment', NULL, NULL),
(102, 3, 'Enrollment History', 'Enrollment History', NULL, NULL),
(103, 3, 'Enroll student', 'Enroll student', NULL, NULL),
(104, 3, 'Payment Report', 'Payment Report', NULL, NULL),
(105, 3, 'Offline payments', 'Offline payments', NULL, NULL),
(106, 3, 'Instructor Revenue', 'Instructor Revenue', NULL, NULL),
(107, 3, 'Payment History', 'Payment History', NULL, NULL),
(108, 3, 'Users', 'Users', NULL, NULL),
(109, 3, 'Admin', 'Admin', NULL, NULL),
(110, 3, 'Manage Admin', 'Manage Admin', NULL, NULL),
(111, 3, 'Add New Admin', 'Add New Admin', NULL, NULL),
(112, 3, 'Instructor', 'Instructor', NULL, NULL),
(113, 3, 'Manage Instructors', 'Manage Instructors', NULL, NULL),
(114, 3, 'Add new Instructor', 'Add new Instructor', NULL, NULL),
(115, 3, 'Instructor Setting', 'Instructor Setting', NULL, NULL),
(116, 3, 'Application', 'Application', NULL, NULL),
(117, 3, 'Student', 'Student', NULL, NULL),
(118, 3, 'Manage Students', 'Manage Students', NULL, NULL),
(119, 3, 'Add new Student', 'Add new Student', NULL, NULL),
(120, 3, 'Message', 'Message', NULL, NULL),
(121, 3, 'Newsletter', 'Newsletter', NULL, NULL),
(122, 3, 'Manage Newsletters', 'Manage Newsletters', NULL, NULL),
(123, 3, 'Subscribed User', 'Subscribed User', NULL, NULL),
(124, 3, 'Contacts', 'Contacts', NULL, NULL),
(125, 3, 'Blogs', 'Blogs', NULL, NULL),
(126, 3, 'Manage Blogs', 'Manage Blogs', NULL, NULL),
(127, 3, 'Pending Blogs', 'Pending Blogs', NULL, NULL),
(128, 3, 'Settings', 'Settings', NULL, NULL),
(129, 3, 'System Settings', 'System Settings', NULL, NULL),
(130, 3, 'Website Settings', 'Website Settings', NULL, NULL),
(131, 3, 'Payment Settings', 'Payment Settings', NULL, NULL),
(132, 3, 'Manage Language', 'Manage Language', NULL, NULL),
(133, 3, 'Live Class Settings', 'Live Class Settings', NULL, NULL),
(134, 3, 'SMTP Settings', 'SMTP Settings', NULL, NULL),
(135, 3, 'Certificate Settings', 'Certificate Settings', NULL, NULL),
(136, 3, 'Player Settings', 'Player Settings', NULL, NULL),
(137, 3, 'Open AI Settings', 'Open AI Settings', NULL, NULL),
(138, 3, 'Home Page Builder', 'Home Page Builder', NULL, NULL),
(139, 3, 'SEO Settings', 'SEO Settings', NULL, NULL),
(140, 3, 'About', 'About', NULL, NULL),
(141, 3, 'Manage Profile', 'Manage Profile', NULL, NULL),
(142, 3, 'Admin Panel', 'Admin Panel', NULL, NULL),
(143, 3, 'View site', 'View site', NULL, NULL),
(144, 3, 'AI Assistant', 'AI Assistant', NULL, NULL),
(145, 3, 'Help Center', 'Help Center', NULL, NULL),
(146, 3, 'Read documentation', 'Read documentation', NULL, NULL),
(147, 3, 'Watch video tutorial', 'Watch video tutorial', NULL, NULL),
(148, 3, 'Get customer support', 'Get customer support', NULL, NULL),
(149, 3, 'Order customization', 'Order customization', NULL, NULL),
(150, 3, 'Request a new feature', 'Request a new feature', NULL, NULL),
(151, 3, 'Get Services', 'Get Services', NULL, NULL),
(152, 3, 'My Profile', 'My Profile', NULL, NULL),
(153, 3, 'Sign Out', 'Sign Out', NULL, NULL),
(154, 3, 'Confirm', 'Confirm', NULL, NULL),
(155, 3, 'Loading', 'Loading', NULL, NULL),
(156, 3, 'Website name', 'Website name', NULL, NULL),
(157, 3, 'Website title', 'Website title', NULL, NULL),
(158, 3, 'Website keywords', 'Website keywords', NULL, NULL),
(159, 3, 'Website description', 'Website description', NULL, NULL),
(160, 3, 'Author', 'Author', NULL, NULL),
(161, 3, 'Slogan', 'Slogan', NULL, NULL),
(162, 3, 'System email', 'System email', NULL, NULL),
(163, 3, 'Address', 'Address', NULL, NULL),
(164, 3, 'Phone', 'Phone', NULL, NULL),
(165, 3, 'Youtube API key', 'Youtube API key', NULL, NULL),
(166, 3, 'Get YouTube API key', 'Get YouTube API key', NULL, NULL),
(167, 3, 'If you want to use Google Drive video, you need to enable the Google Drive service in this API', 'If you want to use Google Drive video, you need to enable the Google Drive service in this API', NULL, NULL),
(168, 3, 'Vimeo API key', 'Vimeo API key', NULL, NULL),
(169, 3, 'get Vimeo API key', 'get Vimeo API key', NULL, NULL),
(170, 3, 'Purchase code', 'Purchase code', NULL, NULL),
(171, 3, 'System language', 'System language', NULL, NULL),
(172, 3, 'Course selling tax', 'Course selling tax', NULL, NULL),
(173, 3, 'Enter 0 if you want to disable the tax option', 'Enter 0 if you want to disable the tax option', NULL, NULL),
(174, 3, 'Device limitation', 'Device limitation', NULL, NULL),
(175, 3, 'Footer text', 'Footer text', NULL, NULL),
(176, 3, 'Footer link', 'Footer link', NULL, NULL),
(177, 3, 'Save Changes', 'Save Changes', NULL, NULL),
(178, 3, 'Update Product', 'Update Product', NULL, NULL),
(179, 3, 'File', 'File', NULL, NULL),
(180, 3, 'Update', 'Update', NULL, NULL),
(181, 3, 'Version updated successfully', 'Version updated successfully', NULL, NULL),
(182, 3, 'Select your service', 'Select your service', NULL, NULL),
(183, 3, 'Course title', 'Course title', NULL, NULL),
(184, 3, 'Course short description', 'Course short description', NULL, NULL),
(185, 3, 'Course long description', 'Course long description', NULL, NULL),
(186, 3, 'Course requirements', 'Course requirements', NULL, NULL),
(187, 3, 'Course outcomes', 'Course outcomes', NULL, NULL),
(188, 3, 'Course faq', 'Course faq', NULL, NULL),
(189, 3, 'Course seo tags', 'Course seo tags', NULL, NULL),
(190, 3, 'Course lesson text', 'Course lesson text', NULL, NULL),
(191, 3, 'Course certificate text', 'Course certificate text', NULL, NULL),
(192, 3, 'Course quiz text', 'Course quiz text', NULL, NULL),
(193, 3, 'Course blog title', 'Course blog title', NULL, NULL),
(194, 3, 'Course blog post', 'Course blog post', NULL, NULL),
(195, 3, 'Course thumbnail', 'Course thumbnail', NULL, NULL),
(196, 3, 'Enter your keyword', 'Enter your keyword', NULL, NULL),
(197, 3, 'Generate', 'Generate', NULL, NULL),
(198, 3, 'Generating', 'Generating', NULL, NULL),
(199, 3, 'Your images', 'Your images', NULL, NULL),
(200, 3, 'Generated text', 'Generated text', NULL, NULL),
(201, 3, 'Copy', 'Copy', NULL, NULL),
(202, 3, 'Copied', 'Copied', NULL, NULL),
(203, 3, 'Not found', 'Not found', NULL, NULL),
(204, 3, 'About This Application', 'About This Application', NULL, NULL),
(205, 3, 'Software version', 'Software version', NULL, NULL),
(206, 3, 'Laravel version', 'Laravel version', NULL, NULL),
(207, 3, 'Check update', 'Check update', NULL, NULL),
(208, 3, 'Php version', 'Php version', NULL, NULL),
(209, 3, 'Curl enable', 'Curl enable', NULL, NULL),
(210, 3, 'enabled', 'enabled', NULL, NULL),
(211, 3, 'Product license', 'Product license', NULL, NULL),
(212, 3, 'Enter valid purchase code', 'Enter valid purchase code', NULL, NULL),
(213, 3, 'Customer support status', 'Customer support status', NULL, NULL),
(214, 3, 'Support expiry date', 'Support expiry date', NULL, NULL),
(215, 3, 'Customer name', 'Customer name', NULL, NULL),
(216, 3, 'Customer support', 'Customer support', NULL, NULL),
(217, 3, 'Payment setting', 'Payment setting', NULL, NULL),
(218, 3, 'Currency Settings', 'Currency Settings', NULL, NULL),
(219, 3, 'Heads up !!', 'Heads up !!', NULL, NULL),
(220, 3, 'Ensure that the system currency and all active payment gateway currencies are same', 'Ensure that the system currency and all active payment gateway currencies are same', NULL, NULL),
(221, 3, 'Select currency', 'Select currency', NULL, NULL),
(222, 3, 'Currency position', 'Currency position', NULL, NULL),
(223, 3, 'Left', 'Left', NULL, NULL),
(224, 3, 'Right', 'Right', NULL, NULL),
(225, 3, 'Left with a space', 'Left with a space', NULL, NULL),
(226, 3, 'Right with a space', 'Right with a space', NULL, NULL),
(227, 3, 'No', 'No', NULL, NULL),
(228, 3, 'Yes', 'Yes', NULL, NULL),
(229, 3, 'Want to keep test mode enabled', 'Want to keep test mode enabled', NULL, NULL),
(230, 3, 'sandbox client id', 'sandbox client id', NULL, NULL),
(231, 3, 'sandbox secret key', 'sandbox secret key', NULL, NULL),
(232, 3, 'production client id', 'production client id', NULL, NULL),
(233, 3, 'production secret key', 'production secret key', NULL, NULL),
(234, 3, 'setting', 'setting', NULL, NULL),
(235, 3, 'public key', 'public key', NULL, NULL),
(236, 3, 'secret key', 'secret key', NULL, NULL),
(237, 3, 'public live key', 'public live key', NULL, NULL),
(238, 3, 'secret live key', 'secret live key', NULL, NULL),
(239, 3, 'Choose an option', 'Choose an option', NULL, NULL),
(240, 3, 'bank information', 'bank information', NULL, NULL),
(241, 3, 'secret test key', 'secret test key', NULL, NULL),
(242, 3, 'public test key', 'public test key', NULL, NULL),
(243, 3, 'Cookie Policy', 'Cookie Policy', NULL, NULL),
(244, 3, 'Accept', 'Accept', NULL, NULL),
(245, 3, 'Learn More', 'Learn More', NULL, NULL),
(246, 3, 'Students has Enrolled', 'Students has Enrolled', NULL, NULL),
(247, 3, 'Page Builder', 'Page Builder', NULL, NULL),
(248, 3, 'Create Page', 'Create Page', NULL, NULL),
(249, 3, '#', '#', NULL, NULL),
(250, 3, 'Page Name', 'Page Name', NULL, NULL),
(251, 3, 'Status', 'Status', NULL, NULL),
(252, 3, 'Action', 'Action', NULL, NULL),
(253, 3, 'Edit Home Page', 'Edit Home Page', NULL, NULL),
(254, 3, 'Edit Home', 'Edit Home', NULL, NULL),
(255, 3, 'Preview', 'Preview', NULL, NULL),
(256, 3, 'Edit Layout', 'Edit Layout', NULL, NULL),
(257, 3, 'Edit Page', 'Edit Page', NULL, NULL),
(258, 3, 'Edit', 'Edit', NULL, NULL),
(259, 3, 'Delete', 'Delete', NULL, NULL),
(260, 3, 'Home page activated', 'Home page activated', NULL, NULL),
(261, 3, 'The Leader in online learning', 'The Leader in online learning', NULL, NULL),
(262, 3, 'Get Started', 'Get Started', NULL, NULL),
(263, 3, 'Special Featured Course', 'Special Featured Course', NULL, NULL),
(264, 3, 'Those course highlights a handpicked course with exceptional content or exclusive offerings.', 'Those course highlights a handpicked course with exceptional content or exclusive offerings.', NULL, NULL),
(265, 3, 'Why Choose Us', 'Why Choose Us', NULL, NULL),
(266, 3, 'Happy student', 'Happy student', NULL, NULL),
(267, 3, 'Quality educators', 'Quality educators', NULL, NULL),
(268, 3, 'Premium courses', 'Premium courses', NULL, NULL),
(269, 3, 'Cost-free course', 'Cost-free course', NULL, NULL),
(270, 3, 'Top Rated Course', 'Top Rated Course', NULL, NULL),
(271, 3, 'Top rated course showcases the highest-rated course based on student reviews and performance metrics.', 'Top rated course showcases the highest-rated course based on student reviews and performance metrics.', NULL, NULL),
(272, 3, 'What the people Thinks About Us', 'What the people Thinks About Us', NULL, NULL),
(273, 3, 'It highlights feedback and testimonials from users, reflecting their experiences and satisfaction.', 'It highlights feedback and testimonials from users, reflecting their experiences and satisfaction.', NULL, NULL),
(274, 3, 'Frequently Asked Questions', 'Frequently Asked Questions', NULL, NULL),
(275, 3, 'Our Latest Blog', 'Our Latest Blog', NULL, NULL),
(276, 3, 'The latest blog highlights the most recent articles, updates, and insights from our platform.', 'The latest blog highlights the most recent articles, updates, and insights from our platform.', NULL, NULL),
(277, 3, 'Wishlist', 'Wishlist', NULL, NULL),
(278, 3, 'Log Out', 'Log Out', NULL, NULL),
(279, 3, 'Logout', 'Logout', NULL, NULL),
(280, 3, 'Admin Dashboard', 'Admin Dashboard', NULL, NULL),
(281, 3, 'It is a long established fact that a reader will be the distract by the read content of a page layout', 'It is a long established fact that a reader will be the distract by the read content of a page layout', NULL, NULL),
(282, 3, 'Subscribe to stay tuned for new web design and latest updates. Let\'s do it!', 'Subscribe to stay tuned for new web design and latest updates. Let\'s do it!', NULL, NULL),
(283, 3, '© 2024 All Rights Reserved', '© 2024 All Rights Reserved', NULL, NULL),
(284, 3, '404 not found', '404 not found', NULL, NULL),
(285, 3, 'The page you requested could not be found', 'The page you requested could not be found', NULL, NULL),
(286, 3, 'Please try the following', 'Please try the following', NULL, NULL),
(287, 3, 'Check the spelling of the url', 'Check the spelling of the url', NULL, NULL),
(288, 3, 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', NULL, NULL),
(289, 3, 'Back to home', 'Back to home', NULL, NULL),
(290, 3, 'Become An Instructor', 'Become An Instructor', NULL, NULL),
(291, 3, 'Title', 'Title', NULL, NULL),
(292, 3, 'Description', 'Description', NULL, NULL),
(293, 3, 'Video Url', 'Video Url', NULL, NULL),
(294, 3, 'Image', 'Image', NULL, NULL),
(295, 3, 'Banner Information', 'Banner Information', NULL, NULL),
(296, 3, 'Add new', 'Add new', NULL, NULL),
(297, 3, 'Remove', 'Remove', NULL, NULL),
(298, 3, 'Video Link', 'Video Link', NULL, NULL),
(299, 3, 'Youtube', 'Youtube', NULL, NULL),
(300, 3, 'HTML5', 'HTML5', NULL, NULL),
(301, 3, 'All Category', 'All Category', NULL, NULL),
(302, 3, 'Add new category', 'Add new category', NULL, NULL),
(303, 3, 'Category Name', 'Category Name', NULL, NULL),
(304, 3, 'Enter your category name', 'Enter your category name', NULL, NULL),
(305, 3, 'Enter your unique category name', 'Enter your unique category name', NULL, NULL),
(306, 3, 'Pick Your Icon', 'Pick Your Icon', NULL, NULL),
(307, 3, 'Pick your category icon', 'Pick your category icon', NULL, NULL),
(308, 3, 'Keywords', 'Keywords', NULL, NULL),
(309, 3, 'optional', 'optional', NULL, NULL),
(310, 3, 'Category Description', 'Category Description', NULL, NULL),
(311, 3, 'Enter your description', 'Enter your description', NULL, NULL),
(312, 3, 'Thumbnail', 'Thumbnail', NULL, NULL),
(313, 3, 'Category logo', 'Category logo', NULL, NULL),
(314, 3, 'Category added successfully', 'Category added successfully', NULL, NULL),
(315, 3, 'Add', 'Add', NULL, NULL),
(316, 3, 'Edit category', 'Edit category', NULL, NULL),
(317, 3, 'Create course', 'Create course', NULL, NULL),
(318, 3, 'Enter Course Title', 'Enter Course Title', NULL, NULL),
(319, 3, 'Short Description', 'Short Description', NULL, NULL),
(320, 3, 'Enter Short Description', 'Enter Short Description', NULL, NULL),
(321, 3, 'Enter Description', 'Enter Description', NULL, NULL),
(322, 3, 'Create as', 'Create as', NULL, NULL),
(323, 3, 'Select a category', 'Select a category', NULL, NULL),
(324, 3, 'Course level', 'Course level', NULL, NULL),
(325, 3, 'Select your course level', 'Select your course level', NULL, NULL),
(326, 3, 'Made in', 'Made in', NULL, NULL),
(327, 3, 'Select your course language', 'Select your course language', NULL, NULL),
(328, 3, 'Pricing type', 'Pricing type', NULL, NULL),
(329, 3, 'Enter your course price', 'Enter your course price', NULL, NULL),
(330, 3, 'Check if this course has discount', 'Check if this course has discount', NULL, NULL),
(331, 3, 'Discounted price', 'Discounted price', NULL, NULL),
(332, 3, 'Enter your discount price', 'Enter your discount price', NULL, NULL),
(333, 3, 'Finish!', 'Finish!', NULL, NULL),
(334, 3, 'Course added successfully', 'Course added successfully', NULL, NULL),
(335, 3, 'Edit course', 'Edit course', NULL, NULL),
(336, 3, 'Editing', 'Editing', NULL, NULL),
(337, 3, 'Help', 'Help', NULL, NULL),
(338, 3, 'Frontend View', 'Frontend View', NULL, NULL),
(339, 3, 'Course Player', 'Course Player', NULL, NULL),
(340, 3, 'Curriculum', 'Curriculum', NULL, NULL),
(341, 3, 'Basic', 'Basic', NULL, NULL),
(342, 3, 'Live Class', 'Live Class', NULL, NULL),
(343, 3, 'Pricing', 'Pricing', NULL, NULL),
(344, 3, 'Info', 'Info', NULL, NULL),
(345, 3, 'Media', 'Media', NULL, NULL),
(346, 3, 'SEO', 'SEO', NULL, NULL),
(347, 3, 'Add new section', 'Add new section', NULL, NULL),
(348, 3, 'Add section', 'Add section', NULL, NULL),
(349, 3, 'Add a new Section', 'Add a new Section', NULL, NULL),
(350, 3, 'Create bootcamp', 'Create bootcamp', NULL, NULL),
(351, 3, 'Check if this bootcamp has discount', 'Check if this bootcamp has discount', NULL, NULL),
(352, 3, 'Publish Date', 'Publish Date', NULL, NULL),
(353, 3, 'Bootcamp Category', 'Bootcamp Category', NULL, NULL),
(354, 3, 'No data found', 'No data found', NULL, NULL),
(355, 3, 'Add category', 'Add category', NULL, NULL),
(356, 3, 'Category has been created.', 'Category has been created.', NULL, NULL),
(357, 3, 'Total bootcamps', 'Total bootcamps', NULL, NULL),
(358, 3, 'Bootcamp has been created.', 'Bootcamp has been created.', NULL, NULL),
(359, 3, 'Edit bootcamp', 'Edit bootcamp', NULL, NULL),
(360, 3, 'Frontent View', 'Frontent View', NULL, NULL),
(361, 3, 'Create Student', 'Create Student', NULL, NULL),
(362, 3, 'Student Info', 'Student Info', NULL, NULL),
(363, 3, 'Login Credentials', 'Login Credentials', NULL, NULL),
(364, 3, 'Social Links', 'Social Links', NULL, NULL),
(365, 3, 'Name', 'Name', NULL, NULL),
(366, 3, 'Biography', 'Biography', NULL, NULL),
(367, 3, 'User image', 'User image', NULL, NULL),
(368, 3, 'Facebook', 'Facebook', NULL, NULL),
(369, 3, 'Twitter', 'Twitter', NULL, NULL),
(370, 3, 'Linkedin', 'Linkedin', NULL, NULL),
(371, 3, 'Student add successfully', 'Student add successfully', NULL, NULL),
(372, 3, 'Student List', 'Student List', NULL, NULL),
(373, 3, 'Export', 'Export', NULL, NULL),
(374, 3, 'PDF', 'PDF', NULL, NULL),
(375, 3, 'Print', 'Print', NULL, NULL),
(376, 3, 'Search user', 'Search user', NULL, NULL),
(377, 3, 'Search', 'Search', NULL, NULL),
(378, 3, 'Enrolled Course', 'Enrolled Course', NULL, NULL),
(379, 3, 'Options', 'Options', NULL, NULL),
(380, 3, 'Email Verification', 'Email Verification', NULL, NULL),
(381, 3, 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', NULL, NULL),
(382, 3, 'Resend Verification Email', 'Resend Verification Email', NULL, NULL),
(383, 3, 'My Courses', 'My Courses', NULL, NULL),
(384, 3, 'My Bootcamps', 'My Bootcamps', NULL, NULL),
(385, 3, 'Upload picture', 'Upload picture', NULL, NULL),
(386, 3, 'Upload New', 'Upload New', NULL, NULL),
(387, 3, 'My Teams', 'My Teams', NULL, NULL),
(388, 3, 'Please try using the appropriate keywords.', 'Please try using the appropriate keywords.', NULL, NULL),
(389, 3, 'Bootcamps', 'Bootcamps', NULL, NULL),
(390, 3, 'All Bootcamps', 'All Bootcamps', NULL, NULL),
(391, 3, 'Class', 'Class', NULL, NULL),
(392, 3, 'View Details', 'View Details', NULL, NULL),
(393, 3, 'Buy Now', 'Buy Now', NULL, NULL),
(394, 3, 'Item is already purchased.', 'Item is already purchased.', NULL, NULL),
(395, 3, 'Bootcamp payment', 'Bootcamp payment', NULL, NULL),
(396, 3, 'Order summary', 'Order summary', NULL, NULL),
(397, 3, 'Cancel Payment', 'Cancel Payment', NULL, NULL),
(398, 3, 'Select payment gateway', 'Select payment gateway', NULL, NULL),
(399, 3, 'Item List', 'Item List', NULL, NULL),
(400, 3, 'Total', 'Total', NULL, NULL),
(401, 3, 'Grand Total', 'Grand Total', NULL, NULL),
(402, 3, 'Reviews', 'Reviews', NULL, NULL),
(403, 3, 'lesson', 'lesson', NULL, NULL),
(404, 3, 'Students', 'Students', NULL, NULL),
(405, 3, 'Terms and condition', 'Terms and condition', NULL, NULL),
(406, 3, 'Terms', 'Terms', NULL, NULL),
(407, 3, 'WELLCOME TO CHEF', 'WELLCOME TO CHEF', NULL, NULL),
(408, 3, 'Visit Courses', 'Visit Courses', NULL, NULL),
(409, 3, 'Enrolled Learners', 'Enrolled Learners', NULL, NULL),
(410, 3, 'Online Instructors', 'Online Instructors', NULL, NULL),
(411, 3, 'Latest Top Skills', 'Latest Top Skills', NULL, NULL),
(412, 3, 'Awesome  site the top advertising been business.', 'Awesome  site the top advertising been business.', NULL, NULL),
(413, 3, 'Industry Experts', 'Industry Experts', NULL, NULL),
(414, 3, 'Learning From Anywhere', 'Learning From Anywhere', NULL, NULL),
(415, 3, 'Top Rated Courses', 'Top Rated Courses', NULL, NULL),
(416, 3, 'Upcoming Courses', 'Upcoming Courses', NULL, NULL),
(417, 3, 'Highlights the latest courses set to launch, giving students a sneak peek at new opportunities for learning and skill development. Stay ahead with our curated selection of upcoming educational offerings!', 'Highlights the latest courses set to launch, giving students a sneak peek at new opportunities for learning and skill development. Stay ahead with our curated selection of upcoming educational offerings!', NULL, NULL),
(418, 3, 'Featured Courses', 'Featured Courses', NULL, NULL),
(419, 3, 'Think more clearly', 'Think more clearly', NULL, NULL),
(420, 3, 'Awesome  site. on the top advertising a business online includes assembling Having the most keep.', 'Awesome  site. on the top advertising a business online includes assembling Having the most keep.', NULL, NULL),
(421, 3, 'Video title', 'Video title', NULL, NULL),
(422, 3, 'Our Popular Instructor', 'Our Popular Instructor', NULL, NULL),
(423, 3, 'Highlights our most sought-after educator, recognized for their engaging teaching style and exceptional course content. Discover their expertise and join the many students who have benefited from their classes!', 'Highlights our most sought-after educator, recognized for their engaging teaching style and exceptional course content. Discover their expertise and join the many students who have benefited from their classes!', NULL, NULL),
(424, 3, 'Frequently Asked Questions?', 'Frequently Asked Questions?', NULL, NULL),
(425, 3, 'FAQ provides quick answers to common inquiries, helping users resolve doubts efficiently.', 'FAQ provides quick answers to common inquiries, helping users resolve doubts efficiently.', NULL, NULL),
(426, 3, 'Follow The Latest News', 'Follow The Latest News', NULL, NULL),
(427, 3, 'Top Courses', 'Top Courses', NULL, NULL),
(428, 3, 'lessons', 'lessons', NULL, NULL),
(429, 3, 'Subscribe to our newsletter to get latest updates', 'Subscribe to our newsletter to get latest updates', NULL, NULL),
(430, 3, 'Subscribe to stay tuned for new latest updates and offer. Let\'s do it! ', 'Subscribe to stay tuned for new latest updates and offer. Let\'s do it! ', NULL, NULL),
(431, 3, 'Subscribe', 'Subscribe', NULL, NULL),
(432, 3, 'Read our privacy policy', 'Read our privacy policy', NULL, NULL),
(433, 3, 'Here', 'Here', NULL, NULL),
(434, 3, 'Blog category', 'Blog category', NULL, NULL),
(435, 3, 'Subtitle', 'Subtitle', NULL, NULL),
(436, 3, '(80  Character)', '(80  Character)', NULL, NULL),
(437, 3, 'Category add successfully', 'Category add successfully', NULL, NULL),
(438, 3, 'Total number of blog', 'Total number of blog', NULL, NULL),
(439, 3, 'Add new blog', 'Add new blog', NULL, NULL),
(440, 3, 'Search Title', 'Search Title', NULL, NULL),
(441, 3, 'Add Blog', 'Add Blog', NULL, NULL),
(442, 3, 'Enter blog title', 'Enter blog title', NULL, NULL),
(443, 3, 'Writing your keyword and hit htw enter button', 'Writing your keyword and hit htw enter button', NULL, NULL),
(444, 3, 'Blog banner', 'Blog banner', NULL, NULL),
(445, 3, 'Blog thumbnail', 'Blog thumbnail', NULL, NULL),
(446, 3, 'Would you like to designate it as popular?', 'Would you like to designate it as popular?', NULL, NULL),
(447, 3, 'Blog add successfully', 'Blog add successfully', NULL, NULL),
(448, 3, 'Creator', 'Creator', NULL, NULL),
(449, 3, 'View on frontend', 'View on frontend', NULL, NULL),
(450, 3, 'Read More', 'Read More', NULL, NULL),
(451, 3, 'Get Started Now', 'Get Started Now', NULL, NULL),
(452, 3, 'Creating A Community Of Life Long Learners', 'Creating A Community Of Life Long Learners', NULL, NULL),
(453, 3, 'Our LMS goes beyond just providing courses. It\'s a platform designed to ignite curiosity and empower your lifelong learning journey.  This supportive community provides a space to ask questions, no matter how big or small, and receive insightful answers from experienced learners and subject-matter experts.', 'Our LMS goes beyond just providing courses. It\'s a platform designed to ignite curiosity and empower your lifelong learning journey.  This supportive community provides a space to ask questions, no matter how big or small, and receive insightful answers from experienced learners and subject-matter experts.', NULL, NULL),
(454, 3, 'Share your own experiences and challenges, and find encouragement and inspiration from others on a similar path. The diverse perspectives within our community will broaden your horizons and challenge your thinking, fostering a deeper understanding and a richer learning experience.  Together, we\'ll transform learning from a solitary pursuit into a collaborative adventure, where shared knowledge fuels individual growth and collective discovery.', 'Share your own experiences and challenges, and find encouragement and inspiration from others on a similar path. The diverse perspectives within our community will broaden your horizons and challenge your thinking, fostering a deeper understanding and a richer learning experience.  Together, we\'ll transform learning from a solitary pursuit into a collaborative adventure, where shared knowledge fuels individual growth and collective discovery.', NULL, NULL),
(455, 3, 'Learn more about us', 'Learn more about us', NULL, NULL),
(456, 3, 'Our Online Courses', 'Our Online Courses', NULL, NULL),
(457, 3, 'See More', 'See More', NULL, NULL),
(458, 3, 'Our Blog', 'Our Blog', NULL, NULL),
(459, 3, 'LEARN FROM TODAY', 'LEARN FROM TODAY', NULL, NULL),
(460, 3, 'Watch Video', 'Watch Video', NULL, NULL),
(461, 3, 'Expert Mentors', 'Expert Mentors', NULL, NULL),
(462, 3, 'Students Globally', 'Students Globally', NULL, NULL),
(463, 3, 'Cost Free Course', 'Cost Free Course', NULL, NULL),
(464, 3, 'What they’re saying about our courses', 'What they’re saying about our courses', NULL, NULL),
(465, 3, 'Having enjoyed a breathlessly successful 2015, there can be no DJ  dynamic set of teaching tools Billed to be deployed.', 'Having enjoyed a breathlessly successful 2015, there can be no DJ  dynamic set of teaching tools Billed to be deployed.', NULL, NULL),
(466, 3, 'Student email verification', 'Student email verification', NULL, NULL),
(467, 3, 'Disabled', 'Disabled', NULL, NULL),
(468, 3, 'Frontend Settings', 'Frontend Settings', NULL, NULL),
(469, 3, 'Motivational Speech', 'Motivational Speech', NULL, NULL),
(470, 3, 'Website FAQS', 'Website FAQS', NULL, NULL),
(471, 3, 'Contact Information', 'Contact Information', NULL, NULL),
(472, 3, 'User Reviews', 'User Reviews', NULL, NULL),
(473, 3, 'Logo & Images', 'Logo & Images', NULL, NULL),
(474, 3, 'Frontend website settings', 'Frontend website settings', NULL, NULL),
(475, 3, 'Banner title', 'Banner title', NULL, NULL),
(476, 3, 'Banner sub title', 'Banner sub title', NULL, NULL),
(477, 3, 'Promo Video Provider', 'Promo Video Provider', NULL, NULL),
(478, 3, 'Youtube Video Link', 'Youtube Video Link', NULL, NULL),
(479, 3, 'Vimeo Video Link', 'Vimeo Video Link', NULL, NULL),
(480, 3, 'HTML5 Video link', 'HTML5 Video link', NULL, NULL),
(481, 3, 'Promo video link', 'Promo video link', NULL, NULL),
(482, 3, 'Cookie status', 'Cookie status', NULL, NULL),
(483, 3, 'Cookie note', 'Cookie note', NULL, NULL),
(484, 3, 'Refund policy', 'Refund policy', NULL, NULL),
(485, 3, 'Mobile App download Link', 'Mobile App download Link', NULL, NULL),
(486, 3, 'Update Settings', 'Update Settings', NULL, NULL),
(487, 3, 'designation', 'designation', NULL, NULL),
(488, 3, 'Question', 'Question', NULL, NULL),
(489, 3, 'Write a question', 'Write a question', NULL, NULL),
(490, 3, 'Answer', 'Answer', NULL, NULL),
(491, 3, 'Write a question answer', 'Write a question answer', NULL, NULL),
(492, 3, 'Contact Email', 'Contact Email', NULL, NULL),
(493, 3, 'Phone Number', 'Phone Number', NULL, NULL),
(494, 3, 'Office Hours', 'Office Hours', NULL, NULL),
(495, 3, 'Location', 'Location', NULL, NULL),
(496, 3, 'Latitude', 'Latitude', NULL, NULL),
(497, 3, 'Longitude', 'Longitude', NULL, NULL),
(498, 3, 'Recaptcha settings', 'Recaptcha settings', NULL, NULL),
(499, 3, 'Recaptcha status', 'Recaptcha status', NULL, NULL),
(500, 3, 'Recaptcha sitekey', 'Recaptcha sitekey', NULL, NULL),
(501, 3, 'Recaptcha secretkey', 'Recaptcha secretkey', NULL, NULL),
(502, 3, 'Update recaptcha settings', 'Update recaptcha settings', NULL, NULL),
(503, 3, 'Review', 'Review', NULL, NULL),
(504, 3, 'Add new Review', 'Add new Review', NULL, NULL),
(505, 3, 'Click here to choose a banner image', 'Click here to choose a banner image', NULL, NULL),
(506, 3, 'Upload banner image', 'Upload banner image', NULL, NULL),
(507, 3, 'Click here to choose a light logo', 'Click here to choose a light logo', NULL, NULL),
(508, 3, 'Upload light logo', 'Upload light logo', NULL, NULL),
(509, 3, 'Click here to choose a dark logo', 'Click here to choose a dark logo', NULL, NULL),
(510, 3, 'Upload dark logo', 'Upload dark logo', NULL, NULL),
(511, 3, 'Click here to choose a favicon', 'Click here to choose a favicon', NULL, NULL),
(512, 3, 'Upload favicon', 'Upload favicon', NULL, NULL),
(513, 3, 'Frontend settings update successfully', 'Frontend settings update successfully', NULL, NULL),
(514, 3, 'User already register and signing up for using it', 'User already register and signing up for using it', NULL, NULL),
(515, 3, 'Get Courses', 'Get Courses', NULL, NULL),
(516, 3, 'Start Learning', 'Start Learning', NULL, NULL),
(517, 3, 'Coding', 'Coding', NULL, NULL),
(518, 3, 'Languages', 'Languages', NULL, NULL),
(519, 3, 'The industry\'s standard dummy text ever since the  unknown printer took a galley of type and scrambled', 'The industry\'s standard dummy text ever since the  unknown printer took a galley of type and scrambled', NULL, NULL),
(520, 3, 'Online Courses', 'Online Courses', NULL, NULL),
(521, 3, 'Top Instructors', 'Top Instructors', NULL, NULL),
(522, 3, 'Online Certificates', 'Online Certificates', NULL, NULL),
(523, 3, 'Pick A Course To', 'Pick A Course To', NULL, NULL),
(524, 3, 'Download our mobile app, start learning', 'Download our mobile app, start learning', NULL, NULL),
(525, 3, 'Academy', 'Academy', NULL, NULL),
(526, 3, 'Download Now', 'Download Now', NULL, NULL),
(527, 3, 'Frequently Asked', 'Frequently Asked', NULL, NULL),
(528, 3, 'Questions', 'Questions', NULL, NULL),
(529, 3, 'What Our', 'What Our', NULL, NULL),
(530, 3, 'Have To Say', 'Have To Say', NULL, NULL),
(531, 3, 'Get News with', 'Get News with', NULL, NULL),
(532, 3, 'comment', 'comment', NULL, NULL),
(533, 3, 'Course Manager', 'Course Manager', NULL, NULL),
(534, 3, 'Active courses', 'Active courses', NULL, NULL),
(535, 3, 'Pending courses', 'Pending courses', NULL, NULL),
(536, 3, 'Free courses', 'Free courses', NULL, NULL),
(537, 3, 'Paid courses', 'Paid courses', NULL, NULL),
(538, 3, 'All', 'All', NULL, NULL),
(539, 3, 'Apply', 'Apply', NULL, NULL),
(540, 3, 'Lesson & Section', 'Lesson & Section', NULL, NULL),
(541, 3, 'Enrolled Student', 'Enrolled Student', NULL, NULL),
(542, 3, 'Section', 'Section', NULL, NULL),
(543, 3, 'View Course On Frontend', 'View Course On Frontend', NULL, NULL),
(544, 3, 'Go To Course Playing Page', 'Go To Course Playing Page', NULL, NULL),
(545, 3, 'Duplicate Course', 'Duplicate Course', NULL, NULL),
(546, 3, 'Make As Active', 'Make As Active', NULL, NULL),
(547, 3, 'Delete Course', 'Delete Course', NULL, NULL),
(548, 3, 'Course updated successfully', 'Course updated successfully', NULL, NULL),
(549, 3, 'Multi language setting', 'Multi language setting', NULL, NULL),
(550, 3, 'Language list', 'Language list', NULL, NULL),
(551, 3, 'Add Language', 'Add Language', NULL, NULL),
(552, 3, 'Import Language', 'Import Language', NULL, NULL),
(553, 3, 'Direction', 'Direction', NULL, NULL),
(554, 3, 'Option', 'Option', NULL, NULL),
(555, 3, 'LTR', 'LTR', NULL, NULL),
(556, 3, 'RTL', 'RTL', NULL, NULL),
(557, 3, 'Edit phrase', 'Edit phrase', NULL, NULL),
(558, 3, 'Add new language', 'Add new language', NULL, NULL),
(559, 3, 'No special character or space is allowed. Valid examples: French, Spanish, Bengali etc', 'No special character or space is allowed. Valid examples: French, Spanish, Bengali etc', NULL, NULL),
(560, 3, 'Save', 'Save', NULL, NULL),
(561, 3, 'Import your language files from here. (Ex: english.json)', 'Import your language files from here. (Ex: english.json)', NULL, NULL),
(562, 3, 'Import', 'Import', NULL, NULL),
(563, 3, 'phrase_updated', 'phrase_updated', NULL, NULL),
(564, 3, 'Direction has been updated', 'Direction has been updated', NULL, NULL),
(565, 3, 'Education For Eeveryone', 'Education For Eeveryone', NULL, NULL),
(566, 3, 'Search here', 'Search here', NULL, NULL),
(567, 3, 'Online Instructor have a new ideas every week.', 'Online Instructor have a new ideas every week.', NULL, NULL),
(568, 3, 'Special Featured Course.', 'Special Featured Course.', NULL, NULL),
(569, 3, 'View More', 'View More', NULL, NULL),
(570, 3, 'Know About Academy LMS Learning Platform', 'Know About Academy LMS Learning Platform', NULL, NULL),
(571, 3, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts.', 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts.', NULL, NULL),
(572, 3, 'Free Resources Learning English for Beginner', 'Free Resources Learning English for Beginner', NULL, NULL),
(573, 3, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', NULL, NULL),
(574, 3, 'Instructor have a new ideas every week.', 'Instructor have a new ideas every week.', NULL, NULL),
(575, 3, 'Meet Our Team', 'Meet Our Team', NULL, NULL),
(576, 3, 'Download our mobile app, start learning today', 'Download our mobile app, start learning today', NULL, NULL),
(577, 3, 'Includes all Course && Features', 'Includes all Course && Features', NULL, NULL),
(578, 3, 'Get Bundle', 'Get Bundle', NULL, NULL),
(579, 3, 'Create Instructor', 'Create Instructor', NULL, NULL),
(580, 3, 'Instructor Info', 'Instructor Info', NULL, NULL),
(581, 3, 'Payment Information', 'Payment Information', NULL, NULL),
(582, 3, 'Instructor add successfully', 'Instructor add successfully', NULL, NULL),
(583, 3, 'Instructor List', 'Instructor List', NULL, NULL),
(584, 3, 'Number Of Course', 'Number Of Course', NULL, NULL),
(585, 3, 'View courses', 'View courses', NULL, NULL),
(586, 3, 'Make As Inactive', 'Make As Inactive', NULL, NULL),
(587, 3, 'Enroll Students', 'Enroll Students', NULL, NULL),
(588, 3, 'Course to enrol', 'Course to enrol', NULL, NULL),
(589, 3, 'Select a course', 'Select a course', NULL, NULL),
(590, 3, 'Enroll History', 'Enroll History', NULL, NULL),
(591, 3, 'Add new enrollment', 'Add new enrollment', NULL, NULL),
(592, 3, 'Enrolled Date', 'Enrolled Date', NULL, NULL),
(593, 3, 'Expiry Date', 'Expiry Date', NULL, NULL),
(594, 3, 'Lifetime access', 'Lifetime access', NULL, NULL),
(595, 3, 'Add Review', 'Add Review', NULL, NULL),
(596, 3, 'Select User', 'Select User', NULL, NULL),
(597, 3, 'Select an user', 'Select an user', NULL, NULL),
(598, 3, 'Rating', 'Rating', NULL, NULL),
(599, 3, 'Select a Rating', 'Select a Rating', NULL, NULL),
(600, 3, 'Review added successfull', 'Review added successfull', NULL, NULL),
(601, 3, 'About Us Image', 'About Us Image', NULL, NULL),
(602, 3, 'Faq  Image', 'Faq  Image', NULL, NULL),
(603, 3, 'Faq Image', 'Faq Image', NULL, NULL),
(604, 3, 'Slider image & video link', 'Slider image & video link', NULL, NULL),
(605, 3, 'Add Image', 'Add Image', NULL, NULL),
(606, 3, 'Add Video Link', 'Add Video Link', NULL, NULL),
(607, 3, 'Homepage updated successfully', 'Homepage updated successfully', NULL, NULL),
(608, 3, 'Duration', 'Duration', NULL, NULL),
(609, 3, 'Course Details', 'Course Details', NULL, NULL),
(610, 3, 'Certificate Course', 'Certificate Course', NULL, NULL),
(611, 3, 'Overview', 'Overview', NULL, NULL),
(612, 3, 'Details', 'Details', NULL, NULL),
(613, 3, 'Course Overview', 'Course Overview', NULL, NULL),
(614, 3, 'No Course Description', 'No Course Description', NULL, NULL),
(615, 3, 'FAQ area empty', 'FAQ area empty', NULL, NULL),
(616, 3, 'Course curriculum', 'Course curriculum', NULL, NULL),
(617, 3, 'Course curriculum Empty', 'Course curriculum Empty', NULL, NULL),
(618, 3, 'Requirment', 'Requirment', NULL, NULL),
(619, 3, 'Outcomes', 'Outcomes', NULL, NULL),
(620, 3, 'Rate this course : ', 'Rate this course : ', NULL, NULL),
(621, 3, 'Remove all', 'Remove all', NULL, NULL),
(622, 3, 'Write a reveiw ...', 'Write a reveiw ...', NULL, NULL),
(623, 3, 'Add to cart', 'Add to cart', NULL, NULL),
(624, 3, 'Share', 'Share', NULL, NULL),
(625, 3, 'Share on Facebook', 'Share on Facebook', NULL, NULL),
(626, 3, 'Share on Twitter', 'Share on Twitter', NULL, NULL),
(627, 3, 'Share on Whatsapp', 'Share on Whatsapp', NULL, NULL),
(628, 3, 'Share on Linkedin', 'Share on Linkedin', NULL, NULL),
(629, 3, 'Certificate', 'Certificate', NULL, NULL),
(630, 3, 'Certificate template', 'Certificate template', NULL, NULL),
(631, 3, 'Build your certificate', 'Build your certificate', NULL, NULL),
(632, 3, 'Upload your certificate template', 'Upload your certificate template', NULL, NULL),
(633, 3, 'Upload', 'Upload', NULL, NULL),
(634, 3, 'Certificate elements', 'Certificate elements', NULL, NULL),
(635, 3, 'Available Variable Data', 'Available Variable Data', NULL, NULL),
(636, 3, 'Add a new element', 'Add a new element', NULL, NULL),
(637, 3, 'Enter Text with variable data', 'Enter Text with variable data', NULL, NULL),
(638, 3, 'Total Lesson', 'Total Lesson', NULL, NULL),
(639, 3, 'Choice a font-family', 'Choice a font-family', NULL, NULL),
(640, 3, 'Default', 'Default', NULL, NULL),
(641, 3, 'Pinyon Script', 'Pinyon Script', NULL, NULL),
(642, 3, 'Font Size', 'Font Size', NULL, NULL),
(643, 3, 'Save Template', 'Save Template', NULL, NULL),
(644, 3, 'Certificate builder template has been updated', 'Certificate builder template has been updated', NULL, NULL),
(645, 3, 'Progress', 'Progress', NULL, NULL),
(646, 3, 'Start Now', 'Start Now', NULL, NULL),
(647, 3, 'Course Playing Page', 'Course Playing Page', NULL, NULL),
(648, 3, 'Summary', 'Summary', NULL, NULL),
(649, 3, 'Forum', 'Forum', NULL, NULL),
(650, 3, 'Class Schedules', 'Class Schedules', NULL, NULL),
(651, 3, 'Topic', 'Topic', NULL, NULL),
(652, 3, 'Date & time', 'Date & time', NULL, NULL),
(653, 3, 'Keep up the great work!', 'Keep up the great work!', NULL, NULL),
(654, 3, 'Your dedication to ongoing progress is inspiring.', 'Your dedication to ongoing progress is inspiring.', NULL, NULL),
(655, 3, 'Every step forward is a testament to your commitment to growth and excellence.', 'Every step forward is a testament to your commitment to growth and excellence.', NULL, NULL),
(656, 3, 'Stay focused, stay determined, and continue to push yourself to new heights.', 'Stay focused, stay determined, and continue to push yourself to new heights.', NULL, NULL),
(657, 3, 'You have got this!', 'You have got this!', NULL, NULL),
(658, 3, 'Search answers here', 'Search answers here', NULL, NULL),
(659, 3, 'Questions in this course', 'Questions in this course', NULL, NULL),
(660, 3, 'Ask question', 'Ask question', NULL, NULL),
(661, 3, 'Completed', 'Completed', NULL, NULL),
(662, 3, 'Enter title', 'Enter title', NULL, NULL),
(663, 3, 'Section added successfully', 'Section added successfully', NULL, NULL),
(664, 3, 'Add new lesson', 'Add new lesson', NULL, NULL),
(665, 3, 'Add lesson', 'Add lesson', NULL, NULL),
(666, 3, 'Add new quiz', 'Add new quiz', NULL, NULL),
(667, 3, 'Add quiz', 'Add quiz', NULL, NULL),
(668, 3, 'Sort sections', 'Sort sections', NULL, NULL),
(669, 3, 'Sort Section', 'Sort Section', NULL, NULL),
(670, 3, 'Edit section', 'Edit section', NULL, NULL),
(671, 3, 'Delete section', 'Delete section', NULL, NULL),
(672, 3, 'No lessons are available.', 'No lessons are available.', NULL, NULL),
(673, 3, 'Select lesson type', 'Select lesson type', NULL, NULL),
(674, 3, 'YouTube Video', 'YouTube Video', NULL, NULL),
(675, 3, 'Vimeo Video', 'Vimeo Video', NULL, NULL),
(676, 3, 'Video file', 'Video file', NULL, NULL),
(677, 3, 'Video url [ .mp4 ]', 'Video url [ .mp4 ]', NULL, NULL),
(678, 3, 'Google drive video', 'Google drive video', NULL, NULL),
(679, 3, 'Document file', 'Document file', NULL, NULL),
(680, 3, 'Text', 'Text', NULL, NULL),
(681, 3, 'Iframe embed', 'Iframe embed', NULL, NULL),
(682, 3, 'Next', 'Next', NULL, NULL),
(683, 3, 'Lesson type', 'Lesson type', NULL, NULL),
(684, 3, 'Change', 'Change', NULL, NULL),
(685, 3, 'Enter your text', 'Enter your text', NULL, NULL),
(686, 3, 'Do you want to keep it free as a preview lesson', 'Do you want to keep it free as a preview lesson', NULL, NULL),
(687, 3, 'Mark as free lesson', 'Mark as free lesson', NULL, NULL),
(688, 3, 'lesson added successfully', 'lesson added successfully', NULL, NULL),
(689, 3, 'Sort lessons', 'Sort lessons', NULL, NULL),
(690, 3, 'Edit lesson', 'Edit lesson', NULL, NULL),
(691, 3, 'Delete lesson', 'Delete lesson', NULL, NULL),
(692, 3, 'Congratulations!', 'Congratulations!', NULL, NULL),
(693, 3, 'Your hard work has paid off. Here is to new beginnings and endless opportunities ahead!', 'Your hard work has paid off. Here is to new beginnings and endless opportunities ahead!', NULL, NULL),
(694, 3, 'Get Certificate', 'Get Certificate', NULL, NULL),
(695, 3, 'Download Certificate', 'Download Certificate', NULL, NULL),
(696, 3, 'Download', 'Download', NULL, NULL),
(697, 3, 'Auto', 'Auto', NULL, NULL),
(698, 3, 'Continue', 'Continue', NULL, NULL),
(699, 3, 'Shopping cart', 'Shopping cart', NULL, NULL),
(700, 3, 'Cart items', 'Cart items', NULL, NULL),
(701, 3, 'Payment summary', 'Payment summary', NULL, NULL),
(702, 3, 'Sub total', 'Sub total', NULL, NULL),
(703, 3, 'Tax', 'Tax', NULL, NULL),
(704, 3, '%', '%', NULL, NULL),
(705, 3, 'Apply coupon', 'Apply coupon', NULL, NULL),
(706, 3, 'Send as a gift', 'Send as a gift', NULL, NULL),
(707, 3, 'Enter user email', 'Enter user email', NULL, NULL),
(708, 3, 'Continue to payment', 'Continue to payment', NULL, NULL),
(709, 3, 'Payment failed! Please try again.', 'Payment failed! Please try again.', NULL, NULL),
(710, 3, 'Parent category', 'Parent category', NULL, NULL),
(711, 3, '- Mark it as parent -', '- Mark it as parent -', NULL, NULL),
(712, 3, 'Choose category thumbnail', 'Choose category thumbnail', NULL, NULL),
(713, 3, 'Choose category Logo', 'Choose category Logo', NULL, NULL),
(714, 3, 'Category updated successfully', 'Category updated successfully', NULL, NULL),
(715, 3, 'Enable the Fileinfo extension on your server to upload files.', 'Enable the Fileinfo extension on your server to upload files.', NULL, NULL),
(716, 3, 'Fileinfo extension', 'Fileinfo extension', NULL, NULL),
(717, 3, 'Enable this Fileinfo extension on your server to upload files', 'Enable this Fileinfo extension on your server to upload files', NULL, NULL),
(718, 3, 'paytm merchant key', 'paytm merchant key', NULL, NULL),
(719, 3, 'paytm merchant mid', 'paytm merchant mid', NULL, NULL),
(720, 3, 'paytm merchant website', 'paytm merchant website', NULL, NULL),
(721, 3, 'industry type id', 'industry type id', NULL, NULL),
(722, 3, 'channel id', 'channel id', NULL, NULL),
(723, 3, 'Payment settings update successfully', 'Payment settings update successfully', NULL, NULL),
(724, 3, 'Configure ZOOM server-to-server-oauth credentials', 'Configure ZOOM server-to-server-oauth credentials', NULL, NULL),
(725, 3, 'Account Email', 'Account Email', NULL, NULL),
(726, 3, 'Account ID', 'Account ID', NULL, NULL),
(727, 3, 'Client ID', 'Client ID', NULL, NULL),
(728, 3, 'Client Secret', 'Client Secret', NULL, NULL),
(729, 3, 'Do you want to use Web SDK for your live class?', 'Do you want to use Web SDK for your live class?', NULL, NULL),
(730, 3, 'Meeting SDK Client ID', 'Meeting SDK Client ID', NULL, NULL),
(731, 3, 'Meeting SDK Client Secret', 'Meeting SDK Client Secret', NULL, NULL),
(732, 3, 'Enroll delete successfully', 'Enroll delete successfully', NULL, NULL),
(733, 3, '500 error found', '500 error found', NULL, NULL),
(734, 3, 'A technical error has occurred', 'A technical error has occurred', NULL, NULL),
(735, 3, 'Please contact with site administrator', 'Please contact with site administrator', NULL, NULL),
(736, 3, 'please_do_not_refresh_this_page', 'please_do_not_refresh_this_page', NULL, NULL),
(737, 3, 'Please do not refresh this page', 'Please do not refresh this page', NULL, NULL),
(738, 3, 'User', 'User', NULL, NULL),
(739, 3, 'Item', 'Item', NULL, NULL),
(740, 3, 'Paid amount', 'Paid amount', NULL, NULL),
(741, 3, 'Payment method', 'Payment method', NULL, NULL),
(742, 3, 'Purchased date', 'Purchased date', NULL, NULL),
(743, 3, 'Invoice', 'Invoice', NULL, NULL),
(744, 3, 'Select an option', 'Select an option', NULL, NULL),
(745, 3, 'Total Mark', 'Total Mark', NULL, NULL),
(746, 3, 'Pass Mark', 'Pass Mark', NULL, NULL),
(747, 3, 'Retake', 'Retake', NULL, NULL),
(748, 3, 'Quiz has been created.', 'Quiz has been created.', NULL, NULL),
(749, 3, 'Result', 'Result', NULL, NULL),
(750, 3, 'Edit quiz', 'Edit quiz', NULL, NULL),
(751, 3, 'Update Quiz', 'Update Quiz', NULL, NULL),
(752, 3, 'Add Question', 'Add Question', NULL, NULL),
(753, 3, 'Question Type', 'Question Type', NULL, NULL),
(754, 3, 'Multiple Choice', 'Multiple Choice', NULL, NULL),
(755, 3, 'Fill in the blanks', 'Fill in the blanks', NULL, NULL),
(756, 3, 'True or False', 'True or False', NULL, NULL),
(757, 3, 'Write question', 'Write question', NULL, NULL),
(758, 3, 'Your questions here', 'Your questions here', NULL, NULL);
INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(759, 3, 'You can keep multiple options. Just put an option and hit enter.', 'You can keep multiple options. Just put an option and hit enter.', NULL, NULL),
(760, 3, 'You can select multiple answers.', 'You can select multiple answers.', NULL, NULL),
(761, 3, 'Manage Course', 'Manage Course', NULL, NULL),
(762, 3, 'Time left : ', 'Time left : ', NULL, NULL),
(763, 3, 'Hour', 'Hour', NULL, NULL),
(764, 3, 'Minute', 'Minute', NULL, NULL),
(765, 3, 'Second', 'Second', NULL, NULL),
(766, 3, 'Total Marks', 'Total Marks', NULL, NULL),
(767, 3, 'Pass Marks', 'Pass Marks', NULL, NULL),
(768, 3, 'Attempts', 'Attempts', NULL, NULL),
(769, 3, 'Total Question', 'Total Question', NULL, NULL),
(770, 3, 'Start Quiz', 'Start Quiz', NULL, NULL),
(771, 3, 'Quiz has been updated.', 'Quiz has been updated.', NULL, NULL),
(772, 3, 'Question has been added.', 'Question has been added.', NULL, NULL),
(773, 3, 'Sort Questions', 'Sort Questions', NULL, NULL),
(774, 3, 'Edit Question', 'Edit Question', NULL, NULL),
(775, 3, 'Update Question', 'Update Question', NULL, NULL),
(776, 3, 'Watermark Type', 'Watermark Type', NULL, NULL),
(777, 3, 'Js Watermark', 'Js Watermark', NULL, NULL),
(778, 3, 'FFMpeg', 'FFMpeg', NULL, NULL),
(779, 3, 'Watermark', 'Watermark', NULL, NULL),
(780, 3, 'Opacity', 'Opacity', NULL, NULL),
(781, 3, 'Opacity (0 - 100)', 'Opacity (0 - 100)', NULL, NULL),
(782, 3, 'Width', 'Width', NULL, NULL),
(783, 3, 'Width (px)', 'Width (px)', NULL, NULL),
(784, 3, 'Height', 'Height', NULL, NULL),
(785, 3, 'Height (px)', 'Height (px)', NULL, NULL),
(786, 3, 'Top', 'Top', NULL, NULL),
(787, 3, 'Top (px)', 'Top (px)', NULL, NULL),
(788, 3, 'Left (px)', 'Left (px)', NULL, NULL),
(789, 3, 'Enter your html5 video url', 'Enter your html5 video url', NULL, NULL),
(790, 3, 'The image size should be', 'The image size should be', NULL, NULL),
(791, 3, 'Caption', 'Caption', NULL, NULL),
(792, 3, '.vtt', '.vtt', NULL, NULL),
(793, 3, 'Animation speed', 'Animation speed', NULL, NULL),
(794, 3, 'Second (0 - 200)', 'Second (0 - 200)', NULL, NULL),
(795, 3, 'Your changes has been saved.', 'Your changes has been saved.', NULL, NULL),
(796, 3, 'Second (0 - 10000)', 'Second (0 - 10000)', NULL, NULL),
(797, 3, 'by', 'by', NULL, NULL),
(798, 3, 'Find A Tutor', 'Find A Tutor', NULL, NULL),
(799, 3, 'Tutor Booking', 'Tutor Booking', NULL, NULL),
(800, 3, 'Subjects', 'Subjects', NULL, NULL),
(801, 3, 'Subject Category', 'Subject Category', NULL, NULL),
(802, 3, 'It is a long established fact that a reader will be the distract by the read content of a page layout.', 'It is a long established fact that a reader will be the distract by the read content of a page layout.', NULL, NULL),
(803, 3, 'Knowledge Base', 'Knowledge Base', NULL, NULL),
(804, 3, 'Timezone', 'Timezone', NULL, NULL),
(805, 3, 'Specify the maximum number of devices a user can log in from. If set to 0, users will be able to log in from an unlimited number of devices.', 'Specify the maximum number of devices a user can log in from. If set to 0, users will be able to log in from an unlimited number of devices.', NULL, NULL),
(806, 3, 'Ebook', 'Ebook', NULL, NULL),
(807, 3, 'Manage Ebooks', 'Manage Ebooks', NULL, NULL),
(808, 3, 'Add New Ebook', 'Add New Ebook', NULL, NULL),
(809, 3, 'Amazon s3 settings ', 'Amazon s3 settings ', NULL, NULL),
(810, 3, 'Ebooks', 'Ebooks', NULL, NULL),
(811, 3, '© Creativeitem All Rights Reserved', '© Creativeitem All Rights Reserved', NULL, NULL),
(812, 3, 'Fee', 'Fee', NULL, NULL),
(813, 3, 'Min', 'Min', NULL, NULL),
(814, 3, 'Max', 'Max', NULL, NULL),
(815, 3, 'Results', 'Results', NULL, NULL),
(816, 3, 'Tickets', 'Tickets', NULL, NULL),
(817, 3, 'Add New Ticket', 'Add New Ticket', NULL, NULL),
(818, 3, 'Reports', 'Reports', NULL, NULL),
(819, 3, 'Ticket Macros', 'Ticket Macros', NULL, NULL),
(820, 3, 'Ticket Categories', 'Ticket Categories', NULL, NULL),
(821, 3, 'Ticket Priorities', 'Ticket Priorities', NULL, NULL),
(822, 3, 'Ticket Status', 'Ticket Status', NULL, NULL),
(823, 3, 'Facebook link', 'Facebook link', NULL, NULL),
(824, 3, 'Twitter link', 'Twitter link', NULL, NULL),
(825, 3, 'Linkedin link', 'Linkedin link', NULL, NULL),
(826, 3, 'A short title about yourself', 'A short title about yourself', NULL, NULL),
(827, 3, 'Skills', 'Skills', NULL, NULL),
(828, 3, 'Write your skill and click the enter button', 'Write your skill and click the enter button', NULL, NULL),
(829, 3, 'Photo', 'Photo', NULL, NULL),
(830, 3, 'The image size should be any square image', 'The image size should be any square image', NULL, NULL),
(831, 3, 'Update profile', 'Update profile', NULL, NULL),
(832, 3, 'Current password', 'Current password', NULL, NULL),
(833, 3, 'New password', 'New password', NULL, NULL),
(834, 3, 'Confirm password', 'Confirm password', NULL, NULL),
(835, 3, 'Update password', 'Update password', NULL, NULL),
(836, 3, 'Notification settings', 'Notification settings', NULL, NULL),
(837, 3, 'Protocol', 'Protocol', NULL, NULL),
(838, 3, 'Smtp crypto', 'Smtp crypto', NULL, NULL),
(839, 3, 'Smtp host', 'Smtp host', NULL, NULL),
(840, 3, 'Smtp port', 'Smtp port', NULL, NULL),
(841, 3, 'Smtp from email', 'Smtp from email', NULL, NULL),
(842, 3, 'Smtp username', 'Smtp username', NULL, NULL),
(843, 3, 'Smtp password', 'Smtp password', NULL, NULL),
(844, 3, 'System settings update successfully', 'System settings update successfully', NULL, NULL),
(845, 3, 'Apply to Become an instructor', 'Apply to Become an instructor', NULL, NULL),
(846, 3, 'Enter your phone number', 'Enter your phone number', NULL, NULL),
(847, 3, 'Document', 'Document', NULL, NULL),
(848, 3, 'Provide some documents about your qualifications', 'Provide some documents about your qualifications', NULL, NULL),
(849, 3, 'Already have account?', 'Already have account?', NULL, NULL),
(850, 3, 'Sign in', 'Sign in', NULL, NULL),
(851, 3, 'My Bookings', 'My Bookings', NULL, NULL),
(852, 3, 'My Ebooks', 'My Ebooks', NULL, NULL),
(853, 3, 'Select a valid zip file', 'Select a valid zip file', NULL, NULL),
(854, 3, 'Recaptcha', 'Recaptcha', NULL, NULL),
(855, 3, 'Please enable exif extension on your server.', 'Please enable exif extension on your server.', NULL, NULL),
(856, 3, 'Dark logo update successfully', 'Dark logo update successfully', NULL, NULL),
(857, 3, 'Start learning from the world\'s pro', 'Start learning from the world\'s pro', NULL, NULL),
(858, 3, 'instructors', 'instructors', NULL, NULL),
(859, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', NULL, NULL),
(860, 3, 'Fast Performance', 'Fast Performance', NULL, NULL),
(861, 3, 'It is a long established fact that a reader will be distracted.', 'It is a long established fact that a reader will be distracted.', NULL, NULL),
(862, 3, 'Perfect Responsive', 'Perfect Responsive', NULL, NULL),
(863, 3, 'Fast & Friendly Support', 'Fast & Friendly Support', NULL, NULL),
(864, 3, 'Easy to Use', 'Easy to Use', NULL, NULL),
(865, 3, 'Explore Top Courses Categories', 'Explore Top Courses Categories', NULL, NULL),
(866, 3, 'Featured Courses\n                        ', 'Featured Courses\n                        ', NULL, NULL),
(867, 3, 'View All Courses', 'View All Courses', NULL, NULL),
(868, 3, '150k  ', '150k  ', NULL, NULL),
(869, 3, 'Know About Us', 'Know About Us', NULL, NULL),
(870, 3, 'Learn & Grow Your Skills From', 'Learn & Grow Your Skills From', NULL, NULL),
(871, 3, 'Educate', 'Educate', NULL, NULL),
(872, 3, '\n                        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.\n                    ', '\n                        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.\n                    ', NULL, NULL),
(873, 3, 'Life time Access', 'Life time Access', NULL, NULL),
(874, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n                                ', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n                                ', NULL, NULL),
(875, 3, 'Learn from Anywhere', 'Learn from Anywhere', NULL, NULL),
(876, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', NULL, NULL),
(877, 3, 'More about us', 'More about us', NULL, NULL),
(878, 3, 'Testimonial', 'Testimonial', NULL, NULL),
(879, 3, 'What our clients says about us', 'What our clients says about us', NULL, NULL),
(880, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', NULL, NULL),
(881, 3, 'Linchon Philips', 'Linchon Philips', NULL, NULL),
(882, 3, 'CEO @ Yahoo', 'CEO @ Yahoo', NULL, NULL),
(883, 3, 'Have a look on our news', 'Have a look on our news', NULL, NULL),
(884, 3, 'View All Blogs', 'View All Blogs', NULL, NULL),
(885, 3, 'Blog that help beginner designers become true unicorns.', 'Blog that help beginner designers become true unicorns.', NULL, NULL),
(886, 3, 'Popular Post', 'Popular Post', NULL, NULL),
(887, 3, 'Tags', 'Tags', NULL, NULL),
(888, 3, 'Light logo update successfully', 'Light logo update successfully', NULL, NULL),
(889, 3, ' Knowledge Base', ' Knowledge Base', NULL, NULL),
(890, 3, 'Favicon logo update successfully', 'Favicon logo update successfully', NULL, NULL),
(891, 3, 'Banner image update successfully', 'Banner image update successfully', NULL, NULL),
(892, 3, 'Select Language to Replace', 'Select Language to Replace', NULL, NULL),
(1785, 3, 'Language added successfully', 'Language added successfully', NULL, NULL),
(1786, 3, 'Export language', 'Export language', NULL, NULL),
(1787, 3, 'Delete language', 'Delete language', NULL, NULL),
(1788, 3, 'Edit ____ phrases', 'Edit ____ phrases', NULL, NULL),
(1789, 3, 'Import all phrases from english', 'Import all phrases from english', NULL, NULL),
(1790, 3, 'Phrase updated', 'Phrase updated', NULL, NULL),
(1797, 3, 'Forgot Password', 'Forgot Password', NULL, NULL),
(1798, 3, 'Submit your account email address.', 'Submit your account email address.', NULL, NULL),
(1799, 3, 'Enter Your Email', 'Enter Your Email', NULL, NULL),
(1800, 3, 'Send Request', 'Send Request', NULL, NULL),
(1801, 3, 'Back to login page', 'Back to login page', NULL, NULL),
(1802, 5, 'Login', 'تسجيل الدخول', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1803, 5, 'Log In', 'تسجيل الدخول', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1804, 5, 'Register', 'تسجيل حساب جديد', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1805, 5, 'Email', 'البريد الإلكتروني', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1806, 5, 'Password', 'كلمة المرور', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1807, 5, 'Forgot Password', 'نسيت كلمة المرور', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1808, 5, 'Forgot Password?', 'نسيت كلمة المرور؟', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1809, 5, 'Reset Password', 'إعادة تعيين كلمة المرور', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1810, 5, 'Verify Email', 'تأكيد البريد الإلكتروني', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1811, 5, 'Email Verification', 'التحقق من البريد الإلكتروني', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1812, 5, 'Email Verification Required', 'مطلوب التحقق من البريد الإلكتروني', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1813, 5, 'Remember Me', 'تذكرني', '2026-01-08 02:06:02', '2026-01-08 02:06:02'),
(1814, 5, 'Logout', 'تسجيل الخروج', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1815, 5, 'Log Out', 'تسجيل الخروج', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1816, 5, 'Sign In', 'تسجيل الدخول', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1817, 5, 'Sign Up', 'إنشاء حساب', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1818, 5, 'Your Email', 'بريدك الإلكتروني', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1819, 5, 'Your Password', 'كلمة مرورك', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1820, 5, 'Confirm Password', 'تأكيد كلمة المرور', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1821, 5, 'New Password', 'كلمة المرور الجديدة', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1822, 5, 'Old Password', 'كلمة المرور القديمة', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1823, 5, 'Change Password', 'تغيير كلمة المرور', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1824, 5, 'Dashboard', 'لوحة التحكم', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1825, 5, 'Home', 'الرئيسية', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1826, 5, 'Settings', 'الإعدادات', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1827, 5, 'Profile', 'الملف الشخصي', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1828, 5, 'Account', 'الحساب', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1829, 5, 'My Account', 'حسابي', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1830, 5, 'Edit Profile', 'تعديل الملف الشخصي', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1831, 5, 'Manage Profile', 'إدارة الملف الشخصي', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1832, 5, 'Courses', 'الدورات', '2026-01-08 02:06:03', '2026-01-08 02:49:28'),
(1833, 5, 'Course', 'كورس', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1834, 5, 'All Courses', 'جميع الكورسات', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1835, 5, 'My Courses', 'كورساتي', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1836, 5, 'Categories', 'الفئات', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1837, 5, 'Category', 'الفئة', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1838, 5, 'Students', 'الطلاب', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1839, 5, 'Student', 'طالب', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1840, 5, 'Instructors', 'المدربون', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1841, 5, 'Instructor', 'مدرب', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1842, 5, 'Users', 'المستخدمون', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1843, 5, 'User', 'مستخدم', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1844, 5, 'Save', 'حفظ', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1845, 5, 'Update', 'تحديث', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1846, 5, 'Delete', 'حذف', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1847, 5, 'Cancel', 'إلغاء', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1848, 5, 'Submit', 'إرسال', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1849, 5, 'Edit', 'تعديل', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1850, 5, 'Add', 'إضافة', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1851, 5, 'Remove', 'إزالة', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1852, 5, 'Confirm', 'تأكيد', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1853, 5, 'Back', 'رجوع', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1854, 5, 'Next', 'التالي', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1855, 5, 'Previous', 'السابق', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1856, 5, 'Continue', 'متابعة', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1857, 5, 'Close', 'إغلاق', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1858, 5, 'Apply', 'تطبيق', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1859, 5, 'Reset', 'إ عادة تعيين', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1860, 5, 'Search', 'بحث', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1861, 5, 'Filter', 'تصفية', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1862, 5, 'Sort', 'ترتيب', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1863, 5, 'Export', 'تصدير', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1864, 5, 'Import', 'استيراد', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1865, 5, 'Download', 'تحميل', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1866, 5, 'Upload', 'رفع', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1867, 5, 'View', 'عرض', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1868, 5, 'Details', 'التفاصيل', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1869, 5, 'Show', 'إظهار', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1870, 5, 'Hide', 'إخفاء', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1871, 5, 'Save Changes', 'حفظ التغييرات', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1872, 5, 'Update Changes', 'تحديث التغييرات', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1873, 5, 'Delete Permanently', 'حذف نهائياً', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1874, 5, 'Are you sure?', 'هل أنت متأكد؟', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1875, 5, 'Are you sure', 'هل أنت متأكد', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1876, 5, 'Confirm Delete', 'تأكيد الحذف', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1877, 5, 'Confirm Action', 'تأكيد الإجراء', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1878, 5, 'Confirmation required', 'التأكيد مطلوب', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1879, 5, 'Success', 'نجاح', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1880, 5, 'Success!', 'نجح!', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1881, 5, 'Successfully', 'بنجاح', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1882, 5, 'Error', 'خطأ', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1883, 5, 'Error!', 'خطأ!', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1884, 5, 'Warning', 'تحذير', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1885, 5, 'Warning!', 'تحذير!', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1886, 5, 'Info', 'معلومات', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1887, 5, 'Information', 'معلومات', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1888, 5, 'Please wait', 'يُرجى الانتظار', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1889, 5, 'Please wait...', 'يُرجى الانتظار...', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1890, 5, 'Loading', 'جاري التحميل', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1891, 5, 'Loading...', 'جاري التحميل...', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1892, 5, 'Processing', 'جاري المعالجة', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1893, 5, 'Processing...', 'جاري المعالجة...', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1894, 5, 'Saving', 'جاري الحفظ', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1895, 5, 'Saving...', 'جاري الحفظ...', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1896, 5, 'Submitting', 'جاري الإرسال', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1897, 5, 'Deleting', 'جاري الحذف', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1898, 5, 'Yes', 'نعم', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1899, 5, 'No', 'لا', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1900, 5, 'OK', 'موافق', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1901, 5, 'Okay', 'موافق', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1902, 5, 'Done', 'تم', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1903, 5, 'Completed', 'مكتمل', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1904, 5, 'Pending', 'قيد الانتظار', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1905, 5, 'Active', 'نشط', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1906, 5, 'Inactive', 'غير نشط', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1907, 5, 'Enabled', 'مُفعّل', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1908, 5, 'Disabled', 'مُعطّل', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1909, 5, 'Published', 'منشور', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1910, 5, 'Draft', 'مسودة', '2026-01-08 02:06:03', '2026-01-08 02:06:03'),
(1911, 5, 'Name', 'الاسم', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1912, 5, 'Title', 'العنوان', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1913, 5, 'Description', 'الوصف', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1914, 5, 'Status', 'الحالة', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1915, 5, 'Action', 'الإجراء', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1916, 5, 'Actions', 'الإجراءات', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1917, 5, 'Options', 'الخيارات', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1918, 5, 'Option', 'خيار', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1919, 5, 'Type', 'النوع', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1920, 5, 'Date', 'التاريخ', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1921, 5, 'Time', 'الوقت', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1922, 5, 'Created', 'تاريخ الإنشاء', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1923, 5, 'Updated', 'تاريخ التحديث', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1924, 5, 'Modified', 'تاريخ التعديل', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1925, 5, 'Required', 'مطلوب', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1926, 5, 'Optional', 'اختياري', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1927, 5, 'Select', 'اختر', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1928, 5, 'Choose', 'اختر', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1929, 5, 'Select one', 'اختر واحد', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1930, 5, 'Select all', 'اختر الكل', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1931, 5, 'None', 'لا شيء', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1932, 5, 'All', 'الكل', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1933, 5, 'Total', 'المجموع', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1934, 5, 'Subtotal', 'المجموع الفرعي', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1935, 5, 'Amount', 'المبلغ', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1936, 5, 'Price', 'السعر', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1937, 5, 'Free', 'مجاني', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1938, 5, 'Admin', 'المسؤول', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1939, 5, 'Administrator', 'المدير', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1940, 5, 'Manager', 'المدير', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1941, 5, 'System', 'النظام', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1942, 5, 'No data available', 'لا توجد بيانات متاحة', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1943, 5, 'No results found', 'لم يتم العثور على نتائج', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1944, 5, 'Not found', 'غير موجود', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1945, 5, 'Nothing found', 'لم يتم العثور على شيء', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1946, 5, 'Empty', 'فارغ', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1947, 5, 'Invalid', 'غير صالح', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1948, 5, 'Valid', 'صالح', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1949, 5, 'Successful', 'ناجح', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1950, 5, 'Failed', 'راسب', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1951, 5, 'Help', 'مساعدة', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1952, 5, 'Support', 'الدعم', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1953, 5, 'Contact', 'اتصل بنا', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1954, 5, 'About', 'حول', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1955, 5, 'Privacy', 'الخصوصية', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1956, 5, 'Terms', 'الشروط', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1957, 5, 'Language', 'اللغة', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1958, 5, 'English', 'الإنجليزية', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1959, 5, 'Arabic', 'العربية', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1960, 5, 'Add Course', 'إضافة كورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1961, 5, 'Edit Course', 'تعديل الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1962, 5, 'Delete Course', 'حذف الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1963, 5, 'Course Title', 'عنوان الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1964, 5, 'Course Description', 'وصف الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1965, 5, 'Course Price', 'سعر الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1966, 5, 'Course Category', 'فئة الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1967, 5, 'Course Level', 'مستوى الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1968, 5, 'Course Language', 'لغة الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1969, 5, 'Course Duration', 'مدة الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1970, 5, 'Course Content', 'محتوى الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1971, 5, 'Course Thumbnail', 'صورة الكورس المصغرة', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1972, 5, 'Course Preview', 'معاينة الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1973, 5, 'Course Requirements', 'متطلبات الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1974, 5, 'Course Outcomes', 'مخرجات الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1975, 5, 'What you\'ll learn', 'ما ستتعلمه', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1976, 5, 'Publish Course', 'نشر الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1977, 5, 'Unpublish Course', 'إلغاء نشر الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1978, 5, 'Save as Draft', 'حفظ كمسودة', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1979, 5, 'Preview Course', 'معاينة الكورس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1980, 5, 'Lesson', 'درس', '2026-01-08 02:06:04', '2026-01-08 02:06:09'),
(1981, 5, 'Lessons', 'دروس', '2026-01-08 02:06:04', '2026-01-08 02:06:09'),
(1982, 5, 'Add Lesson', 'إضافة درس', '2026-01-08 02:06:04', '2026-01-08 02:06:04'),
(1983, 5, 'Edit Lesson', 'تعديل الدرس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1984, 5, 'Delete Lesson', 'حذف الدرس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1985, 5, 'Lesson Title', 'عنوان الدرس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1986, 5, 'Lesson Duration', 'مدة الدرس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1987, 5, 'Lesson Type', 'نوع الدرس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1988, 5, 'Lesson Content', 'محتوى الدرس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1989, 5, 'Previous Lesson', 'الدرس السابق', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1990, 5, 'Next Lesson', 'الدرس التالي', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1991, 5, 'Section', 'قسم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1992, 5, 'Sections', 'الأقسام', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1993, 5, 'Add Section', 'إضافة قسم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1994, 5, 'Edit Section', 'تعديل القسم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1995, 5, 'Delete Section', 'حذف القسم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1996, 5, 'Section Title', 'عنوان القسم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1997, 5, 'Section Description', 'وصف القسم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1998, 5, 'Video', 'فيديو', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(1999, 5, 'Video URL', 'رابط الفيديو', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2000, 5, 'Video Lesson', 'درس فيديو', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2001, 5, 'Upload Video', 'رفع فيديو', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2002, 5, 'Video Duration', 'مدة الفيديو', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2003, 5, 'Document', 'مستند', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2004, 5, 'Documents', 'المستندات', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2005, 5, 'Upload Document', 'رفع مستند', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2006, 5, 'Download Document', 'تحميل المستند', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2007, 5, 'Document File', 'ملف المستند', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2008, 5, 'Quiz', 'اختبار', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2009, 5, 'Quizzes', 'الاختبارات', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2010, 5, 'Add Quiz', 'إضافة اختبار', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2011, 5, 'Take Quiz', 'خوض الاختبار', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2012, 5, 'Quiz Title', 'عنوان الاختبار', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2013, 5, 'Quiz Duration', 'مدة الاختبار', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2014, 5, 'Quiz Questions', 'أسئلة الاختبار', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2015, 5, 'Quiz Result', 'نتيجة الاختبار', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2016, 5, 'Quiz Score', 'درجة الاختبار', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2017, 5, 'Pass Mark', 'درجة النجاح', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2018, 5, 'Assignment', 'مهمة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2019, 5, 'Assignments', 'المهام', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2020, 5, 'Submit Assignment', 'تقديم المهمة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2021, 5, 'Assignment Title', 'عنوان المهمة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2022, 5, 'Assignment Deadline', 'الموعد النهائي للمهمة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2023, 5, 'Duration', 'المدة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2024, 5, 'Progress', 'التقدم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2025, 5, 'In Progress', 'قيد التنفيذ', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2026, 5, 'Not Started', 'لم يبدأ', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2027, 5, 'Completion', 'الإكمال', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2028, 5, 'Completion Rate', 'معدل الإكمال', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2029, 5, 'Enroll', 'التسجيل', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2030, 5, 'Enrollment', 'التسجيل في الكورس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2031, 5, 'Enroll Now', 'سجّل الآن', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2032, 5, 'Enroll in Course', 'التسجيل في الكورس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2033, 5, 'Student enrollment', 'تسجيل الطلاب', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2034, 5, 'Enrolled', 'مسجّل', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2035, 5, 'Enrolled Students', 'الطلاب المسجلون', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2036, 5, 'Total Enrollments', 'إجمالي التسجيلات', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2037, 5, 'Watch', 'مشاهدة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2038, 5, 'Watch Now', 'شاهد الآن', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2039, 5, 'Continue Watching', 'متابعة المشاهدة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2040, 5, 'Continue Learning', 'متابعة التعلم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2041, 5, 'Start Course', 'بدء الكورس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2042, 5, 'Start Learning', 'بدء التعلم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2043, 5, 'Resume', 'استئناف', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2044, 5, 'Certificate', 'شهادة', '2026-01-08 02:06:05', '2026-01-08 02:06:09'),
(2045, 5, 'Certificates', 'شهادات', '2026-01-08 02:06:05', '2026-01-08 02:06:09'),
(2046, 5, 'Get Certificate', 'احصل على الشهادة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2047, 5, 'Download Certificate', 'تحميل الشهادة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2048, 5, 'View Certificate', 'عرض الشهادة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2049, 5, 'Certificate of Completion', 'شهادة إتمام', '2026-01-08 02:06:05', '2026-01-08 02:06:06'),
(2050, 5, 'Beginner', 'مبتدئ', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2051, 5, 'Intermediate', 'متوسط', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2052, 5, 'Advanced', 'متقدم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2053, 5, 'Expert', 'خبير', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2054, 5, 'All Levels', 'جميع المستويات', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2055, 5, 'Rating', 'التقييم', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2056, 5, 'Ratings', 'التقييمات', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2057, 5, 'Review', 'مراجعة', '2026-01-08 02:06:05', '2026-01-08 02:06:09'),
(2058, 5, 'Reviews', 'مراجعات', '2026-01-08 02:06:05', '2026-01-08 02:06:09'),
(2059, 5, 'Write a Review', 'اكتب مراجعة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2060, 5, 'Submit Review', 'إرسال المراجعة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2061, 5, 'Your Review', 'مراجعتك', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2062, 5, 'Rate this Course', 'قيّم هذا الكورس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2063, 5, 'Course Rating', 'تقييم الكورس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2064, 5, 'Wishlist', 'قائمة الرغبات', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2065, 5, 'Add to Wishlist', 'أضف لقائمة الرغبات', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2066, 5, 'Remove from Wishlist', 'إزالة من قائمة الرغبات', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2067, 5, 'My Wishlist', 'قائمة رغباتي', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2068, 5, 'Popular Courses', 'الكورسات الشائعة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2069, 5, 'Featured Courses', 'دورات مميزة', '2026-01-08 02:06:05', '2026-01-08 02:37:23'),
(2070, 5, 'Top Rated', 'الأعلى تقييماً', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2071, 5, 'New Courses', 'الكورسات الجديدة', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2072, 5, 'Trending', 'الأكثر رواجاً', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2073, 5, 'Course Instructor', 'مدرب الكورس', '2026-01-08 02:06:05', '2026-01-08 02:06:05'),
(2074, 5, 'About Instructor', 'حول المدرب', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2075, 5, 'Instructor Name', 'اسم المدرب', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2076, 5, 'Instructor Bio', 'نبذة عن المدرب', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2077, 5, 'View All', 'عرض الكل', '2026-01-08 02:06:06', '2026-01-08 02:06:09'),
(2078, 5, 'Show More', 'عرض المزيد', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2079, 5, 'Show Less', 'عرض أقل', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2080, 5, 'Load More', 'تحميل المزيد', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2081, 5, 'Filter by', 'تصفية حسب', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2082, 5, 'Sort by', 'ترتيب حسب', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2083, 5, 'Search Courses', 'البحث في الكورسات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2084, 5, 'Search Results', 'نتائج البحث', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2085, 5, 'Free Courses', 'كورسات مجانية', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2086, 5, 'Paid Courses', 'كورسات مدفوعة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2087, 5, 'Best Seller', 'الأكثر مبيعاً', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2088, 5, 'What you will learn', 'ما ستتعلمه', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2089, 5, 'Requirements', 'المتطلبات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2090, 5, 'Who this course is for', 'لمن هذا الكورس', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2091, 5, 'Course includes', 'يتضمن الكورس', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2092, 5, 'Course overview', 'نظرة عامة على الكورس', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2093, 5, 'Lifetime Access', 'وصول مدى الحياة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2094, 5, 'Mobile Access', 'الوصول عبر الموبايل', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2095, 5, 'System Settings', 'إعدادات النظام', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2096, 5, 'Website Settings', 'إعدادات الموقع', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2097, 5, 'Payment Settings', 'إعدادات الدفع', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2098, 5, 'Manage Language', 'إدارة اللغات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2099, 5, 'Language Settings', 'إعدادات اللغة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2100, 5, 'Language list', 'قائمة اللغات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2101, 5, 'Add Language', 'إضافة لغة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2102, 5, 'Import Language', 'استيراد لغة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2103, 5, 'Edit phrase', 'تعديل العبارة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2104, 5, 'Export language', 'تصدير اللغة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2105, 5, 'Delete language', 'حذف اللغة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2106, 5, 'Add new language', 'إضافة لغة جديدة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2107, 5, 'System language', 'لغة النظام', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2108, 5, 'LTR', 'من اليسار لليمين', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2109, 5, 'RTL', 'من اليمين لليسار', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2110, 5, 'Direction', 'الاتجاه', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2111, 5, 'Revenue', 'الإيرادات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2112, 5, 'Sales', 'المبيعات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2113, 5, 'Total Revenue', 'إجمالي الإيرادات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2114, 5, 'Total Sales', 'إجمالي المبيعات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2115, 5, 'Total Courses', 'إجمالي الكورسات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2116, 5, 'Total Students', 'إجمالي الطلاب', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2117, 5, 'Total Instructors', 'إجمالي المدربين', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2118, 5, 'Active Users', 'المستخدمون النشطون', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2119, 5, 'Payment Report', 'تقرير الدفعات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2120, 5, 'Sales Report', 'تقرير المبيعات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2121, 5, 'Analytics', 'التحليلات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2122, 5, 'Statistics', 'الإحصائيات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2123, 5, 'SMTP Settings', 'إعدادات SMTP', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2124, 5, 'Email Settings', 'إعدادات البريد', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2125, 5, 'Email Configuration', 'إعداد البريد الإلكتروني', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2126, 5, 'SMTP Host', 'مضيف SMTP', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2127, 5, 'SMTP Port', 'منفذ SMTP', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2128, 5, 'SMTP User', 'مستخدم SMTP', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2129, 5, 'SMTP Password', 'كلمة مرور SMTP', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2130, 5, 'Currency', 'العملة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2131, 5, 'System Currency', 'عملة النظام', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2132, 5, 'Currency Symbol', 'رمز العملة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2133, 5, 'Currency Position', 'موضع العملة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2134, 5, 'Timezone', 'المنطقة الزمنية', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2135, 5, 'Tax', 'الضريبة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2136, 5, 'Tax Rate', 'نسبة الضريبة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2137, 5, 'Tax Settings', 'إعدادات الضريبة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2138, 5, 'Amazon s3 settings', 'إعدادات Amazon S3', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2139, 5, 'Amazon S3', 'أمازون S3', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2140, 5, 'AWS Access Key', 'مفتاح الوصول AWS', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2141, 5, 'AWS Secret Key', 'المفتاح السري AWS', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2142, 5, 'S3 Bucket', 'حاوية S3', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2143, 5, 'Certificate Settings', 'إعدادات الشهادات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2144, 5, 'Certificate Template', 'قالب الشهادة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2145, 5, 'Certificate Title', 'عنوان الشهادة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2146, 5, 'SEO Settings', 'إعدادات SEO', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2147, 5, 'Meta Title', 'عنوان الميتا', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2148, 5, 'Meta Description', 'وصف الميتا', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2149, 5, 'Meta Keywords', 'كلمات الميتا الرئيسية', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2150, 5, 'Live Class Settings', 'إعدادات الفصول المباشرة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2151, 5, 'Zoom Settings', 'إعدادات Zoom', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2152, 5, 'Zoom API Key', 'مفتاح Zoom API', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2153, 5, 'Zoom API Secret', 'سر Zoom API', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2154, 5, 'Player Settings', 'إعدادات المشغل', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2155, 5, 'Video Player', 'مشغل الفيديو', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2156, 5, 'Watermark', 'العلامة المائية', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2157, 5, 'Home Page Builder', 'منشئ الصفحة الرئيسية', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2158, 5, 'Page Builder', 'منشئ الصفحات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2159, 5, 'Banner', 'البانر', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2160, 5, 'Slider', 'السلايدر', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2161, 5, 'Featured Section', 'القسم المميز', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2162, 5, 'Newsletter', 'النشرة البريدية', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2163, 5, 'Subscribers', 'المشتركون', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2164, 5, 'Subscribe', 'اشترك', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2165, 5, 'Subscription', 'الاشتراك', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2166, 5, 'Contacts', 'جهات الاتصال', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2167, 5, 'Contact Form', 'نموذج الاتصال', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2168, 5, 'Contact Us', 'اتصل بنا', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2169, 5, 'Customer support', 'دعم العملاء', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2170, 5, 'Support Ticket', 'تذكرة الدعم', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2171, 5, 'Open Ticket', 'فتح تذكرة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2172, 5, 'Blogs', 'المدونات', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2173, 5, 'Blog', 'المدونة', '2026-01-08 02:06:06', '2026-01-08 02:06:06'),
(2174, 5, 'Add Blog', 'إضافة مدونة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2175, 5, 'Edit Blog', 'تعديل المدونة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2176, 5, 'Blog Title', 'عنوان المدونة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2177, 5, 'Blog Content', 'محتوى المدونة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2178, 5, 'Blog Category', 'فئة المدونة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2179, 5, 'Knowledge Base', 'قاعدة المعرفة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2180, 5, 'Article', 'المقال', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2181, 5, 'Articles', 'المقالات', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2182, 5, 'Topic', 'الموضوع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2183, 5, 'Topics', 'المواضيع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2184, 5, 'Permissions', 'الصلاحيات', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2185, 5, 'User Role', 'دور المستخدم', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2186, 5, 'Admin Role', 'دور المسؤول', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2187, 5, 'Manage Permissions', 'إدارة الصلاحيات', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2188, 5, 'Notification', 'الإشعار', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2189, 5, 'Notifications', 'الإشعارات', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2190, 5, 'Email Notification', 'إشعار البريد الإلكتروني', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2191, 5, 'Push Notification', 'إشعار فوري', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2192, 5, 'Mark as Read', 'وضع علامة كمقروء', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2193, 5, 'Unread', 'غير مقروء', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2194, 5, 'General Settings', 'الإعدادات العامة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2195, 5, 'Website Title', 'عنوان الموقع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2196, 5, 'Website Name', 'اسم الموقع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2197, 5, 'Website Logo', 'شعار الموقع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2198, 5, 'Favicon', 'أيقونة الموقع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2199, 5, 'Footer Text', 'نص التذييل', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2200, 5, 'Footer link', 'رابط التذييل', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2201, 5, 'Copyright', 'حقوق النشر', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2202, 5, 'Social Media', 'وسائل التواصل الاجتماعي', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2203, 5, 'Facebook', 'فيسبوك', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2204, 5, 'Twitter', 'تويتر', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2205, 5, 'Instagram', 'إنستجرام', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2206, 5, 'LinkedIn', 'لينكد إن', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2207, 5, 'YouTube', 'يوتيوب', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2208, 5, 'Backup', 'النسخة الاحتياطية', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2209, 5, 'Restore', 'استعادة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2210, 5, 'Database Backup', 'نسخة احتياطية لقاعدة البيانات', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2211, 5, 'Cache', 'الذاكرة المؤقتة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2212, 5, 'Clear Cache', 'مسح الذاكرة المؤقتة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2213, 5, 'Cache Cleared', 'تم مسح الذاكرة المؤقتة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2214, 5, 'Maintenance Mode', 'وضع الصيانة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2215, 5, 'Under Maintenance', 'تحت الصيانة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2216, 5, 'Version', 'الإصدار', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2217, 5, 'Current Version', 'الإصدار الحالي', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2218, 5, 'Latest Version', 'أحدث إصدار', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2219, 5, 'Update Available', 'يتوفر تحديث', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2220, 5, 'Purchase code', 'كود الشراء', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2221, 5, 'License', 'الترخيص', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2222, 5, 'Activated', 'مُفعّل', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2223, 5, 'Deactivated', 'مُعطّل', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2224, 5, 'Payment Gateway', 'بوابة الدفع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2225, 5, 'Payment Gateways', 'بوابات الدفع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2226, 5, 'Select payment gateway', 'اختر بوابة الدفع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2227, 5, 'Configure Payment', 'إعداد الدفع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2228, 5, 'Payment Method', 'طريقة الدفع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2229, 5, 'Payment Status', 'حالة الدفع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2230, 5, 'Stripe', 'سترايب', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2231, 5, 'PayPal', 'باي بال', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2232, 5, 'Razorpay', 'رازوربي', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2233, 5, 'Paytm', 'باي تي إم', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2234, 5, 'Paystack', 'بايستاك', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2235, 5, 'SSLCommerz', 'SSLCommerz', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2236, 5, 'Maxicash', 'ماكسي كاش', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2237, 5, 'Offline Payment', 'الدفع خارج الإنترنت', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2238, 5, 'Pay Now', 'ادفع الآن', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2239, 5, 'Pay by Stripe', 'الدفع عبر سترايب', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2240, 5, 'Pay by Razorpay', 'الدفع عبر رازوربي', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2241, 5, 'Pay by Paystack', 'الدفع عبر بايستاك', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2242, 5, 'Pay by Maxicash', 'الدفع عبر ماكسي كاش', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2243, 5, 'Pay offline', 'الدفع خارج الإنترنت', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2244, 5, 'Pay', 'ادفع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2245, 5, 'Payment Successful', 'تم الدفع بنجاح', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2246, 5, 'Payment Failed', 'فشل الدفع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2247, 5, 'Payment Pending', 'الدفع قيد الانتظار', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2248, 5, 'Payment Confirmed', 'تم تأكيد الدفع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2249, 5, 'Payment Declined', 'تم رفض الدفع', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2250, 5, 'Transaction Failed', 'فشلت المعاملة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2251, 5, 'Transaction Successful', 'نجحت المعاملة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2252, 5, 'This payment gateway is not configured.', 'بوابة الدفع هذه غير مُعدّة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2253, 5, 'This payment gateway isn\'t configured.', 'بوابة الدفع هذه غير مُعدّة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2254, 5, 'Admin denied transaction through this gateway.', 'رفض المسؤول الدفع عبر هذه البوابة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2255, 5, 'Invalid payment gateway', 'بوابة دفع غير صالحة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2256, 5, 'Try another gateway.', 'جرّب بوابة أخرى', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2257, 5, 'Opps!', 'عذراً!', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2258, 5, 'Invoice', 'الفاتورة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2259, 5, 'Invoices', 'الفواتير', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2260, 5, 'Invoice Number', 'رقم الفاتورة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2261, 5, 'Invoice Date', 'تاريخ الفاتورة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2262, 5, 'View Invoice', 'عرض الفاتورة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2263, 5, 'Download Invoice', 'تحميل الفاتورة', '2026-01-08 02:06:07', '2026-01-08 02:06:07');
INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(2264, 5, 'Print Invoice', 'طباعة الفاتورة', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2265, 5, 'Discount', 'الخصم', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2266, 5, 'Coupon', 'كوبون الخصم', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2267, 5, 'Coupons', 'كوبونات الخصم', '2026-01-08 02:06:07', '2026-01-08 02:06:07'),
(2268, 5, 'Apply Coupon', 'تطبيق الكوبون', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2269, 5, 'Coupon Code', 'كود الكوبون', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2270, 5, 'Discount Code', 'كود الخصم', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2271, 5, 'Valid Coupon', 'كوبون صالح', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2272, 5, 'Invalid Coupon', 'كوبون غير صالح', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2273, 5, 'Expired Coupon', 'كوبون منتهي', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2274, 5, 'Grand Total', 'المجموع الإجمالي', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2275, 5, 'Item List', 'قائمة العناصر', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2276, 5, '+', '+', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2277, 5, '-', '-', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2278, 5, 'Package', 'الباقة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2279, 5, 'Pricing', 'التسعير', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2280, 5, 'Plan', 'الخطة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2281, 5, 'Monthly', 'شهرياً', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2282, 5, 'Yearly', 'سنوياً', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2283, 5, 'Lifetime', 'مدى الحياة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2284, 5, 'Payment History', 'سجل الدفعات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2285, 5, 'Purchase History', 'سجل المشتريات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2286, 5, 'Transaction History', 'سجل المعاملات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2287, 5, 'Order History', 'سجل الطلبات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2288, 5, 'Payout', 'الدفعة للخارج', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2289, 5, 'Payouts', 'الدفعات للخارج', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2290, 5, 'Withdraw', 'سحب', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2291, 5, 'Withdrawal', 'السحب', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2292, 5, 'Withdrawal Request', 'طلب سحب', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2293, 5, 'Balance', 'الرصيد', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2294, 5, 'Available Balance', 'الرصيد المتاح', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2295, 5, 'Pending Balance', 'الرصيد المعلق', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2296, 5, 'Refund', 'استرداد', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2297, 5, 'Request Refund', 'طلب استرداد', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2298, 5, 'Refund Status', 'حالة الاسترداد', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2299, 5, 'Refunded', 'تم الاسترداد', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2300, 5, 'Card Number', 'رقم البطاقة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2301, 5, 'Expiry Date', 'تاريخ الانتهاء', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2302, 5, 'CVV', 'رمز CVV', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2303, 5, 'Cardholder Name', 'اسم حامل البطاقة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2304, 5, 'Payment Document', 'مستند الدفع', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2305, 5, '(jpg, pdf, txt, png, docx)', '(jpg, pdf, txt, png, docx)', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2306, 5, 'Question', 'سؤال', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2307, 5, 'Questions', 'الأسئلة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2308, 5, 'Add Question', 'إضافة سؤال', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2309, 5, 'Edit Question', 'تعديل السؤال', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2310, 5, 'Delete Question', 'حذف السؤال', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2311, 5, 'Question Title', 'عنوان السؤال', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2312, 5, 'Question Type', 'نوع السؤال', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2313, 5, 'Answer', 'إجابة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2314, 5, 'Answers', 'الإجابات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2315, 5, 'Correct Answer', 'الإجابة الصحيحة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2316, 5, 'Your Answer', 'إجابتك', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2317, 5, 'Submit Answer', 'إرسال الإجابة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2318, 5, 'Multiple Choice', 'اختيار متعدد', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2319, 5, 'True/False', 'صح/خطأ', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2320, 5, 'True', 'صح', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2321, 5, 'False', 'خطأ', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2322, 5, 'Short Answer', 'إجابة قصيرة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2323, 5, 'Score', 'النتيجة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2324, 5, 'Your Score', 'نتيجتك', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2325, 5, 'Total Score', 'النتيجة الإجمالية', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2326, 5, 'Marks', 'الدرجات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2327, 5, 'Result', 'النتيجة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2328, 5, 'Results', 'النتائج', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2329, 5, 'Pass', 'نجاح', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2330, 5, 'Fail', 'رسوب', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2331, 5, 'Passed', 'ناجح', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2332, 5, 'Grade', 'الدرجة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2333, 5, 'Grading', 'التقييم', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2334, 5, 'Attempt', 'محاولة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2335, 5, 'Attempts', 'المحاولات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2336, 5, 'Retake', 'إعادة المحاولة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2337, 5, 'Retake Quiz', 'إعادة الاختبار', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2338, 5, 'Remaining Attempts', 'المحاولات المتبقية', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2339, 5, 'comment', 'تعليق', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2340, 5, 'Comments', 'التعليقات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2341, 5, 'Add Comment', 'إضافة تعليق', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2342, 5, 'Post Comment', 'نشر التعليق', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2343, 5, 'Write a comment', 'اكتب تعليقاً', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2344, 5, 'Your comment', 'تعليقك', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2345, 5, 'Reply', 'رد', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2346, 5, 'Replies', 'الردود', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2347, 5, 'Like', 'إعجاب', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2348, 5, 'Likes', 'إعجابات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2349, 5, 'Dislike', 'عدم إعجاب', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2350, 5, 'Unlike', 'إلغاء الإعجاب', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2351, 5, 'Feedback', 'التعليقات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2352, 5, 'Give Feedback', 'تقديم ملاحظات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2353, 5, 'Your Feedback', 'ملاحظاتك', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2354, 5, 'Stars', 'النجوم', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2355, 5, 'Star', 'نجمة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2356, 5, '5 Stars', '5 نجوم', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2357, 5, '4 Stars', '4 نجوم', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2358, 5, 'Testimonial', 'شهادة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2359, 5, 'Testimonials', 'الشهادات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2360, 5, 'Achievement', 'الإنجاز', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2361, 5, 'Achievements', 'الإنجازات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2362, 5, 'Badge', 'الشارة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2363, 5, 'Badges', 'الشارات', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2364, 5, 'Reward', 'المكافأة', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2365, 5, 'Rewards', 'المكافآت', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2366, 5, 'Points', 'النقاط', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2367, 5, 'Earn Points', 'اكسب نقاط', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2368, 5, 'Leaderboard', 'لوحة المتصدرين', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2369, 5, 'Rank', 'الترتيب', '2026-01-08 02:06:08', '2026-01-08 02:06:08'),
(2370, 5, 'Ranking', 'التصنيف', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2371, 5, 'Top Students', 'أفضل الطلاب', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2372, 5, 'Top Performers', 'الأعلى أداءً', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2373, 5, 'Discussion', 'النقاش', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2374, 5, 'Discussions', 'النقاشات', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2375, 5, 'Forum', 'المنتدى', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2376, 5, 'Q&A', 'الأسئلة والأجوبة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2377, 5, 'Ask Question', 'اسأل سؤال', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2378, 5, 'Bookmark', 'إشارة مرجعية', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2379, 5, 'Bookmarks', 'الإشارات المرجعية', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2380, 5, 'Add Bookmark', 'إضافة إشارة مرجعية', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2381, 5, 'Saved', 'محفوظ', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2382, 5, 'Save for Later', 'احفظ للاحق', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2383, 5, 'Notes', 'الملاحظات', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2384, 5, 'Note', 'ملاحظة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2385, 5, 'Add Note', 'إضافة ملاحظة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2386, 5, 'My Notes', 'ملاحظاتي', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2387, 5, 'Take Notes', 'تدوين ملاحظات', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2388, 5, 'Resources', 'الموارد', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2389, 5, 'Additional Resources', 'موارد إضافية', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2390, 5, 'Downloadable Resources', 'موارد قابلة للتحميل', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2391, 5, 'Attendance', 'الحضور', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2392, 5, 'Present', 'حاضر', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2393, 5, 'Absent', 'غائب', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2394, 5, 'Late', 'متأخر', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2395, 5, 'Message', 'رسالة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2396, 5, 'Messages', 'الرسائل', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2397, 5, 'New message', 'رسالة جديدة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2398, 5, 'Send Message', 'إرسال رسالة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2399, 5, 'Compose Message', 'إنشاء رسالة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2400, 5, 'Read Message', 'قراءة الرسالة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2401, 5, 'Inbox', 'صندوق الوارد', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2402, 5, 'Sent', 'المُرسل', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2403, 5, 'Chat', 'الدردشة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2404, 5, 'Conversation', 'المحادثة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2405, 5, 'Alert', 'تنبيه', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2406, 5, 'New', 'جديد', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2407, 5, 'Mark all as read', 'وضع علامة على الكل كمقروء', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2408, 5, 'Clear All', 'مسح الكل', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2409, 5, 'Post', 'منشور', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2410, 5, 'Posts', 'المنشورات', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2411, 5, 'Publish', 'نشر', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2412, 5, 'Unpublish', 'إلغاء النشر', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2413, 5, 'Author', 'الكاتب', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2414, 5, 'Published by', 'نشر بواسطة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2415, 5, 'Published on', 'تاريخ النشر', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2416, 5, 'Tag', 'وسم', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2417, 5, 'Tags', 'الوسوم', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2418, 5, 'Read More', 'اقرأ المزيد', '2026-01-08 02:06:09', '2026-01-08 02:06:10'),
(2419, 5, 'Read Less', 'اقرأ أقل', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2420, 5, 'FAQ', 'الأسئلة الشائعة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2421, 5, 'Frequently Asked Questions', 'الأسئلة المتكررة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2422, 5, 'Privacy Policy', 'سياسة الخصوصية', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2423, 5, 'Terms and Conditions', 'الشروط والأحكام', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2424, 5, 'Terms of Service', 'شروط الخدمة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2425, 5, 'recent', 'حديث', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2426, 5, 'Recently appointed', 'معين حديثاً', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2427, 5, 'Just now', 'الآن', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2428, 5, 'ago', 'مضت', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2429, 5, 'at', 'في', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2430, 5, 'year', 'سنة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2431, 5, 'month', 'شهر', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2432, 5, 'day', 'يوم', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2433, 5, 'hour', 'ساعة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2434, 5, 'minute', 'دقيقة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2435, 5, 'second', 'ثانية', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2436, 5, 'Bootcamp', 'دبلومات وماجستير مهني', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2437, 5, 'Tutor Booking', 'حجز معلم', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2438, 5, 'Ebook', 'كتاب إلكتروني', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2439, 5, 'K', 'ألف', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2440, 5, 'M', 'مليون', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2441, 5, 'B', 'مليار', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2442, 5, 'Thank you!', 'شكراً لك!', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2443, 5, 'If you did not request this, you can ignore this email.', 'إذا لم تطلب ذلك، يمكنك تجاهل هذا البريد', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2444, 5, 'Please click the button below to verify your email address.', 'يُرجى الضغط على الزر أدناه للتحقق من بريدك الإلكتروني', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2445, 5, 'Please click the button below to reset your password.', 'يُرجى الضغط على الزر أدناه لإعادة تعيين كلمة مرورك', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2446, 5, 'Password Reset Required', 'مطلوب إعادة تعيين كلمة المرور', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2447, 5, 'Google Calendar', 'تقويم جوجل', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2448, 5, 'Vimeo API key', 'مفتاح Vimeo API', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2449, 5, '(get Vimeo API key )', '(احصل على مفتاح Vimeo API)', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2450, 5, 'Enter 0 if you want to disable the tax option', 'أدخل 0 إذا كنت تريد تعطيل خيار الضريبة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2451, 5, 'Specify the maximum number of devices a user can log in from. If set to 0, users will be able to log in from an unlimited number of devices.', 'حدد الحد الأقصى لعدد الأجهزة التي يمكن للمستخدم تسجيل الدخول منها. إذا تم ضبطه على 0، سيتمكن المستخدمون من تسجيل الدخول من عدد غير محدود من الأجهزة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2452, 5, 'Device limitation', 'حد الأجهزة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2453, 5, 'Student email verification', 'التحقق من بريد الطالب', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2454, 5, 'See your growth and get consulting support!', 'شاهد نموك واحصل على دعم استشاري!', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2455, 5, 'See your growth and get consulting support', 'شاهد نموك واحصل على دعم استشاري', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2456, 5, 'Not have an account yet?', 'لا تملك حساباً بعد؟', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2457, 5, 'No special character or space is allowed. Valid examples: French, Spanish, Bengali etc', 'لا يُسمح بأحرف خاصة أو مسافات. أمثلة صحيحة: French, Spanish, Bengali إلخ', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2458, 5, 'Import your language files from here. (Ex: english.json)', 'استورد ملفات اللغة من هنا. (مثال: english.json)', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2459, 5, 'Select Language to Replace', 'اختر اللغة المراد استبدالها', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2460, 5, 'Admin Panel', 'لوحة الإدارة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2461, 5, 'phrase_updated', 'تم تحديث العبارة', '2026-01-08 02:06:09', '2026-01-08 02:06:09'),
(2462, 5, 'Direction has been updated', 'تم تحديث الاتجاه', '2026-01-08 02:06:10', '2026-01-08 02:06:10'),
(2463, 5, 'Multi language setting', 'إعدادات اللغات المتعددة', '2026-01-08 02:06:10', '2026-01-08 02:06:10'),
(2464, 5, 'or', 'أو', '2026-01-08 02:06:10', '2026-01-08 02:06:10'),
(2465, 5, 'have', 'يمتلك', '2026-01-08 02:06:10', '2026-01-08 02:06:10'),
(2466, 5, 'Importing database....', 'جاري استيراد قاعدة البيانات...', '2026-01-08 02:06:10', '2026-01-08 02:06:10'),
(2467, 5, 'Configuring the database....', 'جاري إعداد قاعدة البيانات...', '2026-01-08 02:06:10', '2026-01-08 02:06:10'),
(2468, 5, 'Please do not refresh this page', 'يُرجى عدم تحديث هذه الصفحة', '2026-01-08 02:06:10', '2026-01-08 02:06:10'),
(2469, 3, 'Language deleted successfully', 'Language deleted successfully', NULL, NULL),
(2470, 3, 'Cookie', 'Cookie', NULL, NULL),
(2471, 5, 'Forget Password?', 'نسيت كلمة المرور؟', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2472, 5, 'Create Account', 'إنشاء حساب', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2473, 5, 'Search...', 'بحث...', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2474, 5, 'Cart', 'السلة', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2475, 5, 'Contact with Us', 'تواصل معنا', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2476, 5, 'Top Categories', 'أفضل الفئات', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2477, 5, 'Useful links', 'روابط مفيدة', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2478, 5, 'Company', 'الشركة', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2479, 5, 'Phone : ', 'الهاتف :', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2480, 5, 'Email : ', 'البريد :', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2481, 5, 'Email address', 'البريد الإلكتروني', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2482, 5, 'About Us', 'من نحن', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2483, 5, 'Terms And Use', 'الشروط والاستخدام', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2484, 5, 'Sales and Refunds', 'المبيعات والمبالغ المستردة', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2485, 5, 'You can\'t bring it back!', 'لا يمكنك التراجع عن هذا!', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2486, 5, 'Yes, I\'m sure', 'نعم، أنا متأكد', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2487, 5, 'Success !', 'نجح!', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2488, 5, 'Attention !', 'انتباه!', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2489, 5, 'An Error Occurred !', 'حدث خطأ!', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2490, 5, 'This course added to your wishlist', 'تمت إضافة هذا الكورس لقائمة رغباتك', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2491, 5, 'This course removed from your wishlist', 'تمت إزالة هذا الكورس من قائمة رغباتك', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2492, 5, 'Enter your keywords', 'أدخل كلمات البحث', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2493, 5, 'Showing', 'عرض', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2494, 5, 'of', 'من', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2495, 5, 'data', 'بيانات', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2496, 5, 'Grid', 'شبكة', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2497, 5, 'List', 'قائمة', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2498, 5, 'Paid', 'مدفوع', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2499, 5, 'Level', 'المستوى', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2500, 5, 'Spanish', 'الإسبانية', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2501, 5, 'Italic', 'الإيطالية', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2502, 5, 'German', 'الألمانية', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2503, 5, 'No data found !', 'لا توجد بيانات!', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2504, 5, 'Please attempt utilizing the suitable keywords in your search query to obtain more precise results.', 'يُرجى استخدام كلمات بحث مناسبة للحصول على نتائج أدق', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2505, 5, 'Number of Courses', 'عدد الكورسات', '2026-01-08 02:09:36', '2026-01-08 02:37:17'),
(2506, 5, 'Number of Lessons', 'عدد الدروس', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2507, 5, 'Number of Enrollment', 'عدد التسجيلات', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2508, 5, 'Number of Students', 'عدد الطلاب', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2509, 5, 'Number of Instructor', 'عدد المدربين', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2510, 5, 'Admin Revenue This Year', 'إيرادات الإدارة هذا العام', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2511, 5, 'Admin Revenue', 'إيرادات الإدارة', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2512, 5, 'Course Status', 'حالة الكورس', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2513, 5, 'Explore Courses', 'استكشف الكورسات', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2514, 5, 'Upcoming', 'قادم', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2515, 5, 'Private', 'خاص', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2516, 5, 'Pending Requested withdrawal', 'طلبات سحب قيد الانتظار', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2517, 5, 'Instructor Payout', 'دفعات المدربين', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2518, 5, 'Main Menu', 'القائمة الرئيسية', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2519, 5, 'Manage Courses', 'إدارة الكورسات', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2520, 5, 'Add New Course', 'إضافة كورس جديد', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2521, 5, 'Manage Bootcamps', 'إدارة المعسكرات', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2522, 5, 'Add New Bootcamp', 'إضافة معسكر جديد', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2523, 5, 'Course enrollment', 'تسجيل الكورسات', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2524, 5, 'Enrollment History', 'سجل التسجيلات', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2525, 5, 'Enroll student', 'تسجيل طالب', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2526, 5, 'Offline payments', 'المدفوعات غير الإلكترونية', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2527, 5, 'Instructor Revenue', 'إيرادات المدربين', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2528, 5, 'Manage Admin', 'إدارة المسؤولين', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2529, 5, 'Add New Admin', 'إضافة مسؤول جديد', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2530, 5, 'Manage Instructors', 'إدارة المدربين', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2531, 5, 'Add new Instructor', 'إضافة مدرب جديد', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2532, 5, 'Instructor Setting', 'إعدادات المدرب', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2533, 5, 'Application', 'التطبيق', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2534, 5, 'Manage Students', 'إدارة الطلاب', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2535, 5, 'Add new Student', 'إضافة طالب جديد', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2536, 5, 'Manage Newsletters', 'إدارة النشرات البريدية', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2537, 5, 'Subscribed User', 'المستخدمون المشتركون', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2538, 5, 'Manage Blogs', 'إدارة المدونات', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2539, 5, 'Pending Blogs', 'المدونات المعلقة', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2540, 5, 'Open AI Settings', 'إعدادات الذكاء الاصطناعي', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2541, 5, 'View site', 'عرض الموقع', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2542, 5, 'AI Assistant', 'مساعد الذكاء الاصطناعي', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2543, 5, 'Help Center', 'مركز المساعدة', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2544, 5, 'Read documentation', 'قراءة الوثائق', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2545, 5, 'Watch video tutorial', 'مشاهدة فيديو تعليمي', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2546, 5, 'Get customer support', 'الحصول على دعم العملاء', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2547, 5, 'Order customization', 'طلب تخصيص', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2548, 5, 'Request a new feature', 'طلب ميزة جديدة', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2549, 5, 'Get Services', 'الحصول على الخدمات', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2550, 5, 'My Profile', 'ملفي الشخصي', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2551, 5, 'Sign Out', 'تسجيل الخروج', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2552, 5, 'Website keywords', 'كلمات الموقع الرئيسية', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2553, 5, 'Website description', 'وصف الموقع', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2554, 5, 'Slogan', 'الشعار', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2555, 5, 'System email', 'بريد النظام', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2556, 5, 'Address', 'العنوان', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2557, 5, 'Phone', 'الهاتف', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2558, 5, 'Youtube API key', 'مفتاح YouTube API', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2559, 5, 'Get YouTube API key', 'احصل على مفتاح YouTube API', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2560, 5, 'If you want to use Google Drive video, you need to enable the Google Drive service in this API', 'إذا كنت تريد استخدام فيديو Google Drive، يجب تفعيل خدمة Google Drive في هذا الـ API', '2026-01-08 02:09:37', '2026-01-08 02:37:17'),
(2561, 5, 'get Vimeo API key', 'احصل على مفتاح Vimeo API', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2562, 5, 'Course selling tax', 'ضريبة بيع الكورسات', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2563, 5, 'Update Product', 'تحديث المنتج', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2564, 5, 'File', 'ملف', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2565, 5, 'Version updated successfully', 'تم تحديث الإصدار بنجاح', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2566, 5, 'Select your service', 'اختر خدمتك', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2567, 5, 'Course short description', 'وصف مختصر للكورس', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2568, 5, 'Course long description', 'وصف تفصيلي للكورس', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2569, 5, 'Course faq', 'الأسئلة الشائعة للكورس', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2570, 5, 'Course seo tags', 'وسوم SEO للكورس', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2571, 5, 'Course lesson text', 'نص درس الكورس', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2572, 5, 'Course certificate text', 'نص شهادة الكورس', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2573, 5, 'Course quiz text', 'نص اختبار الكورس', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2574, 5, 'Course blog title', 'عنوان مدونة الكورس', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2575, 5, 'Course blog post', 'منشور مدونة الكورس', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2576, 5, 'Enter your keyword', 'أدخل كلمتك المفتاحية', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2577, 5, 'Generate', 'توليد', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2578, 5, 'Generating', 'جاري التوليد', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2579, 5, 'Your images', 'صورك', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2580, 5, 'Generated text', 'النص المولد', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2581, 5, 'Copy', 'نسخ', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2582, 5, 'Copied', 'تم النسخ', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2583, 5, 'About This Application', 'حول هذا التطبيق', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2584, 5, 'Software version', 'إصدار البرنامج', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2585, 5, 'Laravel version', 'إصدار لارافيل', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2586, 5, 'Check update', 'التحقق من التحديثات', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2587, 5, 'Php version', 'إصدار PHP', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2588, 5, 'Curl enable', 'تفعيل Curl', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2589, 5, 'Product license', 'ترخيص المنتج', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2590, 5, 'Enter valid purchase code', 'أدخل كود شراء صالح', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2591, 5, 'Customer support status', 'حالة دعم العملاء', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2592, 5, 'Support expiry date', 'تاريخ انتهاء الدعم', '2026-01-08 02:09:37', '2026-01-08 02:37:18'),
(2593, 5, 'Customer name', 'اسم العميل', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2594, 5, 'Payment setting', 'إعداد الدفع', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2595, 5, 'Currency Settings', 'إعدادات العملة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2596, 5, 'Heads up !!', 'انتبه !!', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2597, 5, 'Ensure that the system currency and all active payment gateway currencies are same', 'تأكد من أن عملة النظام وجميع عملات بوابات الدفع النشطة متطابقة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2598, 5, 'Select currency', 'اختر العملة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2599, 5, 'Left', 'يسار', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2600, 5, 'Right', 'يمين', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2601, 5, 'Left with a space', 'يسار بمسافة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2602, 5, 'Right with a space', 'يمين بمسافة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2603, 5, 'Want to keep test mode enabled', 'هل تريد إبقاء وضع الاختبار مفعلاً', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2604, 5, 'sandbox client id', 'معرف عميل الـ Sandbox', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2605, 5, 'sandbox secret key', 'المفتاح السري للـ Sandbox', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2606, 5, 'production client id', 'معرف عميل الـ Production', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2607, 5, 'production secret key', 'المفتاح السري للـ Production', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2608, 5, 'setting', 'إعداد', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2609, 5, 'public key', 'المفتاح العام', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2610, 5, 'secret key', 'المفتاح السري', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2611, 5, 'public live key', 'المفتاح العام المباشر', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2612, 5, 'secret live key', 'المفتاح السري المباشر', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2613, 5, 'Choose an option', 'اختر خياراً', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2614, 5, 'bank information', 'معلومات البنك', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2615, 5, 'secret test key', 'مفتاح اختبار سري', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2616, 5, 'public test key', 'مفتاح اختبار عام', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2617, 5, 'Cookie Policy', 'سياسة ملفات تعريف الارتباط', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2618, 5, 'Accept', 'قبول', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2619, 5, 'Learn More', 'اعرف المزيد', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2620, 5, 'Students has Enrolled', 'طالب مسجل', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2621, 5, 'Create Page', 'إنشاء صفحة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2622, 5, '#', '#', '2026-01-08 02:09:38', NULL),
(2623, 5, 'Page Name', 'اسم الصفحة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2624, 5, 'Edit Home Page', 'تعديل الصفحة الرئيسية', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2625, 5, 'Edit Home', 'تعديل الرئيسية', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2626, 5, 'Preview', 'معاينة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2627, 5, 'Edit Layout', 'تعديل التخطيط', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2628, 5, 'Edit Page', 'تعديل الصفحة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2629, 5, 'Home page activated', 'تم تفعيل الصفحة الرئيسية', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2630, 5, 'The Leader in online learning', 'الرائد في التعلم عبر الإنترنت', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2631, 5, 'Get Started', 'ابدأ الآن', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2632, 5, 'Special Featured Course', 'كورس مميز خاص', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2633, 5, 'Those course highlights a handpicked course with exceptional content or exclusive offerings.', 'هذه الكورسات تسلط الضوء على دورات مختارة بعناية ذات محتوى استثنائي أو عروض حصرية.', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2634, 5, 'Why Choose Us', 'لماذا تختارنا', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2635, 5, 'Happy student', 'طالب سعيد', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2636, 5, 'Quality educators', 'معلمون ذوو جودة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2637, 5, 'Premium courses', 'كورسات مميزة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2638, 5, 'Cost-free course', 'كورس مجاني', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2639, 5, 'Top Rated Course', 'الكورس الأعلى تقييماً', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2640, 5, 'Top rated course showcases the highest-rated course based on student reviews and performance metrics.', 'يعرض الكورس الأعلى تقييماً الدورات الحائزة على أعلى التقييمات بناءً على مراجعات الطلاب ومقاييس الأداء.', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2641, 5, 'What the people Thinks About Us', 'رأي الناس فينا', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2642, 5, 'It highlights feedback and testimonials from users, reflecting their experiences and satisfaction.', 'يسلط الضوء على التعليقات والشهادات من المستخدمين، مما يعكس تجاربهم ورضاهم.', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2643, 5, 'Our Latest Blog', 'أحدث مدوناتنا', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2644, 5, 'The latest blog highlights the most recent articles, updates, and insights from our platform.', 'تسلط أحدث المدونات الضوء على أحدث المقالات والتحديثات والرؤى من منصتنا.', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2645, 5, 'Admin Dashboard', 'لوحة تحكم المسؤول', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2646, 5, 'It is a long established fact that a reader will be the distract by the read content of a page layout', 'من الحقائق الثابتة منذ زمن طويل أن القارئ سيتشتت بالمحتوى المقروء لصفحة ما عند النظر إلى تخطيطها', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2647, 5, 'Subscribe to stay tuned for new web design and latest updates. Let\'s do it!', 'اشترك لتبقى على اطلاع بأحدث تصميمات الويب وآخر التحديثات. لنفعلها!', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2648, 5, '© 2024 All Rights Reserved', '© 2024 جميع الحقوق محفوظة', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2649, 5, '404 not found', '404 غير موجود', '2026-01-08 02:09:38', '2026-01-08 02:37:18'),
(2650, 5, 'The page you requested could not be found', 'الصفحة التي طلبتها غير موجودة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2651, 5, 'Please try the following', 'يرجى تجربة ما يلي', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2652, 5, 'Check the spelling of the url', 'تحقق من تهجئة الرابط', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2653, 5, 'If you are still puzzled, click on the home link below', 'إذا كنت لا تزال محتاراً، اضغط على رابط الصفحة الرئيسية أدناه', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2654, 5, 'Back to home', 'العودة للرئيسية', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2655, 5, 'Become An Instructor', 'كن مدرباً', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2656, 5, 'Image', 'صورة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2657, 5, 'Banner Information', 'معلومات البانر', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2658, 5, 'Add new', 'إضافة جديد', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2659, 5, 'Video Link', 'رابط الفيديو', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2660, 5, 'HTML5', 'HTML5', '2026-01-08 02:09:38', NULL),
(2661, 5, 'All Category', 'كل الفئات', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2662, 5, 'Add new category', 'إضافة فئة جديدة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2663, 5, 'Category Name', 'اسم الفئة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2664, 5, 'Enter your category name', 'أدخل اسم الفئة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2665, 5, 'Enter your unique category name', 'أدخل اسم فئة فريد', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2666, 5, 'Pick Your Icon', 'اختر أيقونتك', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2667, 5, 'Pick your category icon', 'اختر أيقونة الفئة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2668, 5, 'Keywords', 'الكلمات المفتاحية', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2669, 5, 'Category Description', 'وصف الفئة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2670, 5, 'Enter your description', 'أدخل الوصف', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2671, 5, 'Thumbnail', 'صورة مصغرة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2672, 5, 'Category logo', 'شعار الفئة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2673, 5, 'Category added successfully', 'تم إضافة الفئة بنجاح', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2674, 5, 'Edit category', 'تعديل الفئة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2675, 5, 'Create course', 'إنشاء كورس', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2676, 5, 'Enter Course Title', 'أدخل عنوان الكورس', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2677, 5, 'Short Description', 'وصف قصير', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2678, 5, 'Enter Short Description', 'أدخل وصفاً قصيراً', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2679, 5, 'Enter Description', 'أدخل الوصف', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2680, 5, 'Create as', 'إنشاء كـ', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2681, 5, 'Select a category', 'اختر فئة', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2682, 5, 'Select your course level', 'اختر مستوى الكورس', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2683, 5, 'Made in', 'صنع في', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2684, 5, 'Select your course language', 'اختر لغة الكورس', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2685, 5, 'Pricing type', 'نوع التسعير', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2686, 5, 'Enter your course price', 'أدخل سعر الكورس', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2687, 5, 'Check if this course has discount', 'تحقق مما إذا كان للكورس خصم', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2688, 5, 'Discounted price', 'السعر المخفض', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2689, 5, 'Enter your discount price', 'أدخل سعر الخصم', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2690, 5, 'Finish!', 'إنهاء!', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2691, 5, 'Course added successfully', 'تم إضافة الكورس بنجاح', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2692, 5, 'Editing', 'جاري التعديل', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2693, 5, 'Frontend View', 'واجهة المستخدم', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2694, 5, 'Course Player', 'مشغل الكورس', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2695, 5, 'Curriculum', 'المنهج', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2696, 5, 'Basic', 'أساسي', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2697, 5, 'Live Class', 'فصل مباشر', '2026-01-08 02:09:38', '2026-01-08 02:37:19'),
(2698, 5, 'Media', 'الوسائط', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2699, 5, 'SEO', 'SEO', '2026-01-08 02:09:39', NULL),
(2700, 5, 'Add new section', 'إضافة قسم جديد', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2701, 5, 'Add a new Section', 'إضافة قسم جديد', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2702, 5, 'Create bootcamp', 'إنشاء معسكر تدريبي', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2703, 5, 'Check if this bootcamp has discount', 'تحقق اذا كان للمعسكر خصم', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2704, 5, 'Publish Date', 'تاريخ النشر', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2705, 5, 'Bootcamp Category', 'فئة المعسكر', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2706, 5, 'No data found', 'لا توجد بيانات', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2707, 5, 'Add category', 'إضافة فئة', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2708, 5, 'Category has been created.', 'تم إنشاء الفئة.', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2709, 5, 'Total bootcamps', 'إجمالي المعسكرات', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2710, 5, 'Bootcamp has been created.', 'تم إنشاء المعسكر.', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2711, 5, 'Edit bootcamp', 'تعديل المعسكر', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2712, 5, 'Frontent View', 'عرض الواجهة الأمامية', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2713, 5, 'Create Student', 'إنشاء طالب', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2714, 5, 'Student Info', 'معلومات الطالب', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2715, 5, 'Login Credentials', 'بيانات الدخول', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2716, 5, 'Social Links', 'روابط التواصل', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2717, 5, 'Biography', 'السيرة الذاتية', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2718, 5, 'User image', 'صورة المستخدم', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2719, 5, 'Student add successfully', 'تم إضافة الطالب بنجاح', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2720, 5, 'Student List', 'قائمة الطلاب', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2721, 5, 'PDF', 'PDF', '2026-01-08 02:09:39', NULL),
(2722, 5, 'Print', 'طباعة', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2723, 5, 'Search user', 'بحث عن مستخدم', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2724, 5, 'Enrolled Course', 'الكورسات المسجلة', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2725, 5, 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', 'شكراً لتسجيلك! قبل البدء، يرجى تأكيد بريدك الإلكتروني بالضغط على الرابط الذي أرسلناه لك. إذا لم تستلم البريد، سنرسل لك واحداً آخر بكل سرور.', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2726, 5, 'Resend Verification Email', 'إعادة إرسال بريد التحقق', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2727, 5, 'My Bootcamps', 'معسكراتي', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2728, 5, 'Upload picture', 'رفع صورة', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2729, 5, 'Upload New', 'رفع جديد', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2730, 5, 'My Teams', 'فرقي', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2731, 5, 'Please try using the appropriate keywords.', 'يرجى استخدام كلمات مفتاحية مناسبة.', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2732, 5, 'Bootcamps', 'المعسكرات', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2733, 5, 'All Bootcamps', 'كل المعسكرات', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2734, 5, 'Class', 'فصل', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2735, 5, 'View Details', 'عرض التفاصيل', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2736, 5, 'Buy Now', 'اشترِ الآن', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2737, 5, 'Item is already purchased.', 'تم شراء العنصر بالفعل.', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2738, 5, 'Bootcamp payment', 'دفع المعسكر', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2739, 5, 'Order summary', 'ملخص الطلب', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2740, 5, 'Cancel Payment', 'إلغاء الدفع', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2741, 5, 'Terms and condition', 'الشروط والأحكام', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2742, 5, 'WELLCOME TO CHEF', 'مرحباً بك في CHEF', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2743, 5, 'Visit Courses', 'زيارة الكورسات', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2744, 5, 'Enrolled Learners', 'الطلاب المسجلون', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2745, 5, 'Online Instructors', 'مدربون أونلاين', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2746, 5, 'Latest Top Skills', 'أحدث المهارات', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2747, 5, 'Awesome  site the top advertising been business.', 'موقع رائع للأعمال والإعلان.', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2748, 5, 'Industry Experts', 'خبراء الصناعة', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2749, 5, 'Learning From Anywhere', 'التعلم من أي مكان', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2750, 5, 'Top Rated Courses', 'الكورسات الأعلى تقييماً', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2751, 5, 'Upcoming Courses', 'كورسات قادمة', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2752, 5, 'Highlights the latest courses set to launch, giving students a sneak peek at new opportunities for learning and skill development. Stay ahead with our curated selection of upcoming educational offerings!', 'يسلط الضوء على أحدث الدورات المقرر إطلاقها، مما يمنح الطلاب نظرة خاطفة على فرص جديدة للتعلم وتطوير المهارات. ابق في المقدمة مع مجموعتنا المختارة من العروض التعليمية القادمة!', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2753, 5, 'Think more clearly', 'فكر بوضوح أكثر', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2754, 5, 'Awesome  site. on the top advertising a business online includes assembling Having the most keep.', 'موقع رائع. في قمة الإعلانات التجارية عبر الإنترنت.', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2755, 5, 'Video title', 'عنوان الفيديو', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2756, 5, 'Our Popular Instructor', 'مدربونا المشهورون', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2757, 5, 'Highlights our most sought-after educator, recognized for their engaging teaching style and exceptional course content. Discover their expertise and join the many students who have benefited from their classes!', 'يسلط الضوء على المعلمين الأكثر طلباً لدينا، والمعروفين بأسلوبهم التدريسي الجذاب ومحتوى الدورات الاستثنائي. اكتشف خبراتهم وانضم إلى العديد من الطلاب الذين استفادوا من فصولهم!', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2758, 5, 'Frequently Asked Questions?', 'أسئلة متكررة؟', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2759, 5, 'FAQ provides quick answers to common inquiries, helping users resolve doubts efficiently.', 'توفر الأسئلة الشائعة إجابات سريعة للاستفسارات الشائعة، مما يساعد المستخدمين على حل الشكوك بكفاءة.', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2760, 5, 'Follow The Latest News', 'تابع آخر الأخبار', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2761, 5, 'Top Courses', 'أفضل الكورسات', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2762, 5, 'Subscribe to our newsletter to get latest updates', 'اشترك في نشرتنا للحصول على آخر التحديثات', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2763, 5, 'Subscribe to stay tuned for new latest updates and offer. Let\'s do it! ', 'اشترك لتبقى على اطلاع بآخر التحديثات والعروض. لنفعلها!', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2764, 5, 'Read our privacy policy', 'اقرأ سياسة الخصوصية', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2765, 5, 'Here', 'هنا', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2766, 5, 'Subtitle', 'عنوان فرعي', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2767, 5, '(80  Character)', '(80 حرف)', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2768, 5, 'Category add successfully', 'تمت إضافة الفئة بنجاح', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2769, 5, 'Total number of blog', 'إجمالي عدد المدونات', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2770, 5, 'Add new blog', 'إضافة مدونة جديدة', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2771, 5, 'Search Title', 'عنوان البحث', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2772, 5, 'Enter blog title', 'أدخل عنوان المدونة', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2773, 5, 'Writing your keyword and hit htw enter button', 'اكتب كلمتك المفتاحية واضغط على زر Enter', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2774, 5, 'Blog banner', 'بانر المدونة', '2026-01-08 02:09:39', '2026-01-08 02:37:19'),
(2775, 5, 'Blog thumbnail', 'صورة المدونة المصغرة', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2776, 5, 'Would you like to designate it as popular?', 'هل ترغب في تعيينها كمشهورة؟', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2777, 5, 'Blog add successfully', 'تمت إضافة المدونة بنجاح', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2778, 5, 'Creator', 'المنشئ', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2779, 5, 'View on frontend', 'عرض على الواجهة', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2780, 5, 'Get Started Now', 'ابدأ الآن', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2781, 5, 'Creating A Community Of Life Long Learners', 'بناء مجتمع من المتعلمين مدى الحياة', '2026-01-08 02:09:39', '2026-01-08 02:37:20');
INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(2782, 5, 'Our LMS goes beyond just providing courses. It\'s a platform designed to ignite curiosity and empower your lifelong learning journey.  This supportive community provides a space to ask questions, no matter how big or small, and receive insightful answers from experienced learners and subject-matter experts.', 'نظام إدارة التعلم لدينا يتجاوز مجرد تقديم الكورسات. إنه منصة مصممة لإشعال الفضول وتمكين رحلة التعلم مدى الحياة. يوفر هذا المجتمع الداعم مساحة لطرح الأسئلة، مهما كانت كبيرة أو صغيرة، وتلقي إجابات ثاقبة من المتعلمين ذوي الخبرة والخبراء في الموضوع.', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2783, 5, 'Share your own experiences and challenges, and find encouragement and inspiration from others on a similar path. The diverse perspectives within our community will broaden your horizons and challenge your thinking, fostering a deeper understanding and a richer learning experience.  Together, we\'ll transform learning from a solitary pursuit into a collaborative adventure, where shared knowledge fuels individual growth and collective discovery.', 'شارك خبراتك وتحدياتك الخاصة، وجد التشجيع والإلهام من الآخرين الذين يسيرون على نفس الدرب. ستوسع وجهات النظر المتنوعة داخل مجتمعنا آفاقك وتتحدى تفكيرك، مما يعزز فهماً أعمق وتجربة تعليمية أكثر ثراءً. معاً، سنحول التعلم من مسعى فردي إلى مغامرة تعاونية، حيث تغذي المعرفة المشتركة النمو الفردي والاكتشاف الجماعي.', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2784, 5, 'Learn more about us', 'اعرف المزيد عنا', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2785, 5, 'Our Online Courses', 'كورساتنا عبر الإنترنت', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2786, 5, 'See More', 'شاهد المزيد', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2787, 5, 'Our Blog', 'مدونتنا', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2788, 5, 'LEARN FROM TODAY', 'تعلم من اليوم', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2789, 5, 'Watch Video', 'شاهد الفيديو', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2790, 5, 'Expert Mentors', 'موجهون خبراء', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2791, 5, 'Students Globally', 'طلاب عالميون', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2792, 5, 'Cost Free Course', 'كورس مجاني التكلفة', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2793, 5, 'What they’re saying about our courses', 'ماذا يقولون عن كورساتنا', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2794, 5, 'Having enjoyed a breathlessly successful 2015, there can be no DJ  dynamic set of teaching tools Billed to be deployed.', 'بعد الاستمتاع بعام 2015 الناجح بشكل مذهل، لا توجد مجموعة أدوات تعليمية ديناميكية أخرى جاهزة للنشر.', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2795, 5, 'Frontend Settings', 'إعدادات الواجهة الأمامية', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2796, 5, 'Motivational Speech', 'خطاب تحفيزي', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2797, 5, 'Website FAQS', 'أسئلة شائعة للموقع', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2798, 5, 'Contact Information', 'معلومات الاتصال', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2799, 5, 'User Reviews', 'مراجعات المستخدمين', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2800, 5, 'Logo & Images', 'الشعار والصور', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2801, 5, 'Frontend website settings', 'إعدادات واجهة الموقع', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2802, 5, 'Banner title', 'عنوان البانر', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2803, 5, 'Banner sub title', 'العنوان الفرعي للبانر', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2804, 5, 'Promo Video Provider', 'موفر الفيديو الترويجي', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2805, 5, 'Youtube Video Link', 'رابط فيديو يوتيوب', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2806, 5, 'Vimeo Video Link', 'رابط فيديو فيميو', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2807, 5, 'HTML5 Video link', 'رابط فيديو HTML5', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2808, 5, 'Promo video link', 'رابط الفيديو الترويجي', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2809, 5, 'Cookie status', 'حالة الكوكيز', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2810, 5, 'Cookie note', 'ملاحظة الكوكيز', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2811, 5, 'Refund policy', 'سياسة الاسترجاع', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2812, 5, 'Mobile App download Link', 'رابط تحميل تطبيق الموبايل', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2813, 5, 'Update Settings', 'تحديث الإعدادات', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2814, 5, 'designation', 'المنصب', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2815, 5, 'Write a question', 'اكتب سؤالاً', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2816, 5, 'Write a question answer', 'اكتب إجابة السؤال', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2817, 5, 'Contact Email', 'بريد التواصل', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2818, 5, 'Phone Number', 'رقم الهاتف', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2819, 5, 'Office Hours', 'ساعات العمل', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2820, 5, 'Location', 'الموقع', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2821, 5, 'Latitude', 'خط العرض', '2026-01-08 02:09:39', '2026-01-08 02:37:20'),
(2822, 5, 'Longitude', 'خط الطول', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2823, 5, 'Recaptcha settings', 'إعدادات ريكابتشا', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2824, 5, 'Recaptcha status', 'حالة ريكابتشا', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2825, 5, 'Recaptcha sitekey', 'مفتاح موقع ريكابتشا', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2826, 5, 'Recaptcha secretkey', 'المفتاح السري لريكابتشا', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2827, 5, 'Update recaptcha settings', 'تحديث إعدادات ريكابتشا', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2828, 5, 'Add new Review', 'إضافة مراجعة جديدة', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2829, 5, 'Click here to choose a banner image', 'اضغط هنا لاختيار صورة البانر', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2830, 5, 'Upload banner image', 'رفع صورة البانر', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2831, 5, 'Click here to choose a light logo', 'اضغط هنا لاختيار شعار فاتح', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2832, 5, 'Upload light logo', 'رفع شعار فاتح', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2833, 5, 'Click here to choose a dark logo', 'اضغط هنا لاختيار شعار داكن', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2834, 5, 'Upload dark logo', 'رفع شعار داكن', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2835, 5, 'Click here to choose a favicon', 'اضغط هنا لاختيار أيقونة المفضلة', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2836, 5, 'Upload favicon', 'رفع أيقونة المفضلة', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2837, 5, 'Frontend settings update successfully', 'تم تحديث إعدادات الواجهة بنجاح', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2838, 5, 'User already register and signing up for using it', 'المستخدم مسجل بالفعل ويقوم بالاشتراك لاستخدامه', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2839, 5, 'Get Courses', 'احصل على الكورسات', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2840, 5, 'Coding', 'البرمجة', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2841, 5, 'Languages', 'اللغات', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2842, 5, 'The industry\'s standard dummy text ever since the  unknown printer took a galley of type and scrambled', 'نص قياسي وهمي للصناعة منذ أن أخذت طابعة مجهولة عينة من الحروف وخلطتها', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2843, 5, 'Online Courses', 'كورسات أونلاين', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2844, 5, 'Top Instructors', 'أفضل المدربين', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2845, 5, 'Online Certificates', 'شهادات أونلاين', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2846, 5, 'Pick A Course To', 'اختر كورساً لـ', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2847, 5, 'Download our mobile app, start learning', 'حمل تطبيقنا، وابدأ التعلم', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2848, 5, 'Academy', 'الأكاديمية', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2849, 5, 'Download Now', 'حمل الآن', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2850, 5, 'Frequently Asked', 'الأسئلة المتكررة', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2851, 5, 'What Our', 'ماذا يقول', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2852, 5, 'Have To Say', 'لدينا ليقولوه', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2853, 5, 'Get News with', 'احصل على الأخبار مع', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2854, 5, 'Course Manager', 'مدير الكورسات', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2855, 5, 'Active courses', 'الكورسات النشطة', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2856, 5, 'Pending courses', 'الكورسات المعلقة', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2857, 5, 'Lesson & Section', 'درس وقسم', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2858, 5, 'Enrolled Student', 'طالب مسجل', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2859, 5, 'View Course On Frontend', 'عرض الكورس على الواجهة', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2860, 5, 'Go To Course Playing Page', 'الذهاب لصفحة تشغيل الكورس', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2861, 5, 'Duplicate Course', 'تكرار الكورس', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2862, 5, 'Make As Active', 'تعيين كنشط', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2863, 5, 'Course updated successfully', 'تم تحديث الكورس بنجاح', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2864, 5, 'Education For Eeveryone', 'التعليم للجميع', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2865, 5, 'Search here', 'ابحث هنا', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2866, 5, 'Online Instructor have a new ideas every week.', 'المدرب عبر الإنترنت لديه أفكار جديدة كل أسبوع.', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2867, 5, 'Special Featured Course.', 'كورس مميز خاص.', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2868, 5, 'View More', 'عرض المزيد', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2869, 5, 'Know About Academy LMS Learning Platform', 'تعرف على منصة أكاديمية LMS للتعلم', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2870, 5, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts.', 'بعيدًا جدًا، خلف جبال الكلمات، بعيدًا عن البلاد البعيدة فوكاليا وكونسونانتيا، تعيش النصوص العمياء.', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2871, 5, 'Free Resources Learning English for Beginner', 'مصادر مجانية لتعلم الإنجليزية للمبتدئين', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2872, 5, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'بعيدًا جدًا، خلف جبال الكلمات، بعيدًا عن البلاد البعيدة فوكاليا وكونسونانتيا، تعيش النصوص العمياء. منفصلة تعيش في بوكماركسغروف مباشرة على ساحل الدلالات، محيط لغوي كبير.', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2873, 5, 'Instructor have a new ideas every week.', 'المدرب لديه أفكار جديدة كل أسبوع.', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2874, 5, 'Meet Our Team', 'قابل فريقنا', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2875, 5, 'Download our mobile app, start learning today', 'حمل تطبيقنا، وابدأ التعلم اليوم', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2876, 5, 'Includes all Course && Features', 'يشمل جميع الكورسات والميزات', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2877, 5, 'Get Bundle', 'احصل على الحزمة', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2878, 5, 'Create Instructor', 'إنشاء مدرب', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2879, 5, 'Instructor Info', 'معلومات المدرب', '2026-01-08 02:09:40', '2026-01-08 02:37:20'),
(2880, 5, 'Payment Information', 'معلومات الدفع', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2881, 5, 'Instructor add successfully', 'تم إضافة المدرب بنجاح', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2882, 5, 'Instructor List', 'قائمة المدربين', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2883, 5, 'Number Of Course', 'عدد الكورسات', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2884, 5, 'View courses', 'عرض الكورسات', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2885, 5, 'Make As Inactive', 'تعيين كغير نشط', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2886, 5, 'Enroll Students', 'تسجيل الطلاب', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2887, 5, 'Course to enrol', 'الكورس المراد تسجيله', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2888, 5, 'Select a course', 'اختر كورساً', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2889, 5, 'Enroll History', 'سجل التسجيل', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2890, 5, 'Add new enrollment', 'إضافة تسجيل جديد', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2891, 5, 'Enrolled Date', 'تاريخ التسجيل', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2892, 5, 'Add Review', 'إضافة مراجعة', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2893, 5, 'Select User', 'اختر مستخدم', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2894, 5, 'Select an user', 'اختر مستخدماً', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2895, 5, 'Select a Rating', 'اختر تقييماً', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2896, 5, 'Review added successfull', 'تمت إضافة المراجعة بنجاح', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2897, 5, 'About Us Image', 'صورة من نحن', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2898, 5, 'Faq  Image', 'صورة الأسئلة الشائعة', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2899, 5, 'Faq Image', 'صورة الأسئلة الشائعة', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2900, 5, 'Slider image & video link', 'صورة السلايدر ورابط الفيديو', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2901, 5, 'Add Image', 'إضافة صورة', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2902, 5, 'Add Video Link', 'إضافة رابط فيديو', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2903, 5, 'Homepage updated successfully', 'تم تحديث الصفحة الرئيسية بنجاح', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2904, 5, 'Course Details', 'تفاصيل الكورس', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2905, 5, 'Certificate Course', 'كورس بشهادة', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2906, 5, 'Overview', 'نظرة عامة', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2907, 5, 'No Course Description', 'لا يوجد وصف للكورس', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2908, 5, 'FAQ area empty', 'منطقة الأسئلة الشائعة فارغة', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2909, 5, 'Course curriculum', 'منهج الكورس', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2910, 5, 'Course curriculum Empty', 'منهج الكورس فارغ', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2911, 5, 'Requirment', 'المتطلبات', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2912, 5, 'Outcomes', 'المخرجات', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2913, 5, 'Rate this course : ', 'قيم هذا الكورس :', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2914, 5, 'Remove all', 'إزالة الكل', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2915, 5, 'Write a reveiw ...', 'اكتب مراجعة ...', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2916, 5, 'Add to cart', 'أضف للسلة', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2917, 5, 'Share', 'مشاركة', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2918, 5, 'Share on Facebook', 'مشاركة على فيسبوك', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2919, 5, 'Share on Twitter', 'مشاركة على تويتر', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2920, 5, 'Share on Whatsapp', 'مشاركة على واتساب', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2921, 5, 'Share on Linkedin', 'مشاركة على لينكدإن', '2026-01-08 02:09:40', '2026-01-08 02:37:21'),
(2922, 5, 'Build your certificate', 'أنشئ شهادتك', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2923, 5, 'Upload your certificate template', 'رفع قالب شهادتك', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2924, 5, 'Certificate elements', 'عناصر الشهادة', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2925, 5, 'Available Variable Data', 'المتغيرات المتاحة', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2926, 5, 'Add a new element', 'إضافة عنصر جديد', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2927, 5, 'Enter Text with variable data', 'أدخل النص مع المتغيرات', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2928, 5, 'Total Lesson', 'إجمالي الدروس', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2929, 5, 'Choice a font-family', 'اختر نوع الخط', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2930, 5, 'Default', 'افتراضي', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2931, 5, 'Pinyon Script', 'Pinyon Script', '2026-01-08 02:09:41', NULL),
(2932, 5, 'Font Size', 'حجم الخط', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2933, 5, 'Save Template', 'حفظ القالب', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2934, 5, 'Certificate builder template has been updated', 'تم تحديث قالب منشئ الشهادات', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2935, 5, 'Start Now', 'ابدأ الآن', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2936, 5, 'Course Playing Page', 'صفحة تشغيل الكورس', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2937, 5, 'Summary', 'الملخص', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2938, 5, 'Class Schedules', 'جداول الفصول', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2939, 5, 'Date & time', 'التاريخ والوقت', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2940, 5, 'Keep up the great work!', 'استمر في العمل الرائع!', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2941, 5, 'Your dedication to ongoing progress is inspiring.', 'تفانيك في التقدم المستمر ملهم.', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2942, 5, 'Every step forward is a testament to your commitment to growth and excellence.', 'كل خطوة للأمام هي شهادة على التزامك بالنمو والتميز.', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2943, 5, 'Stay focused, stay determined, and continue to push yourself to new heights.', 'ابق مركزاً، وابقى مصمماً، واستمر في دفع نفسك لارتفاعات جديدة.', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2944, 5, 'You have got this!', 'يمكنك فعلها!', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2945, 5, 'Search answers here', 'ابحث عن الإجابات هنا', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2946, 5, 'Questions in this course', 'أسئلة في هذا الكورس', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2947, 5, 'Enter title', 'أدخل العنوان', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2948, 5, 'Section added successfully', 'تم إضافة القسم بنجاح', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2949, 5, 'Add new lesson', 'إضافة درس جديد', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2950, 5, 'Add new quiz', 'إضافة اختبار جديد', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2951, 5, 'Sort sections', 'ترتيب الأقسام', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2952, 5, 'Sort Section', 'ترتيب القسم', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2953, 5, 'No lessons are available.', 'لا توجد دروس متاحة.', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2954, 5, 'Select lesson type', 'اختر نوع الدرس', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2955, 5, 'YouTube Video', 'فيديو يوتيوب', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2956, 5, 'Vimeo Video', 'فيديو فيميو', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2957, 5, 'Video file', 'ملف فيديو', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2958, 5, 'Video url [ .mp4 ]', 'رابط فيديو [ .mp4 ]', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2959, 5, 'Google drive video', 'فيديو جوجل درايف', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2960, 5, 'Text', 'نص', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2961, 5, 'Iframe embed', 'تضمين Iframe', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2962, 5, 'Change', 'تغيير', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2963, 5, 'Enter your text', 'أدخل النص', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2964, 5, 'Do you want to keep it free as a preview lesson', 'هل تريد جعله مجانياً كدرس معاينة', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2965, 5, 'Mark as free lesson', 'تمييز كدرس مجاني', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2966, 5, 'lesson added successfully', 'تم إضافة الدرس بنجاح', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2967, 5, 'Sort lessons', 'ترتيب الدروس', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2968, 5, 'Congratulations!', 'تهانينا!', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2969, 5, 'Your hard work has paid off. Here is to new beginnings and endless opportunities ahead!', 'لقد أثمر عملك الجاد. إليك بدايات جديدة وفرص لا حصر لها في المستقبل!', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2970, 5, 'Auto', 'تلقائي', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2971, 5, 'Shopping cart', 'سلة التسوق', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2972, 5, 'Cart items', 'عناصر السلة', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2973, 5, 'Payment summary', 'ملخص الدفع', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2974, 5, 'Sub total', 'المجموع الفرعي', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2975, 5, '%', '%', '2026-01-08 02:09:41', NULL),
(2976, 5, 'Send as a gift', 'إرسال كهدية', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2977, 5, 'Enter user email', 'أدخل البريد الإلكتروني للمستخدم', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2978, 5, 'Continue to payment', 'المتابعة للدفع', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2979, 5, 'Payment failed! Please try again.', 'فشلت عملية الدفع! يرجى المحاولة مرة أخرى.', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2980, 5, 'Parent category', 'القسم الرئيسي', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2981, 5, '- Mark it as parent -', '- تعيين كقسم رئيسي -', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2982, 5, 'Choose category thumbnail', 'اختر صورة مصغرة للقسم', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2983, 5, 'Choose category Logo', 'اختر شعار القسم', '2026-01-08 02:09:41', '2026-01-08 02:37:21'),
(2984, 5, 'Category updated successfully', 'تم تحديث القسم بنجاح', '2026-01-08 02:09:42', '2026-01-08 02:37:21'),
(2985, 5, 'Enable the Fileinfo extension on your server to upload files.', 'قم بتمكين امتداد Fileinfo على الخادم لرفع الملفات.', '2026-01-08 02:09:42', '2026-01-08 02:37:21'),
(2986, 5, 'Fileinfo extension', 'امتداد Fileinfo', '2026-01-08 02:09:42', '2026-01-08 02:37:21'),
(2987, 5, 'Enable this Fileinfo extension on your server to upload files', 'قم بتمكين امتداد Fileinfo على الخادم لرفع الملفات', '2026-01-08 02:09:42', '2026-01-08 02:37:21'),
(2988, 5, 'paytm merchant key', 'مفتاح تاجر Paytm', '2026-01-08 02:09:42', '2026-01-08 02:37:21'),
(2989, 5, 'paytm merchant mid', 'معرف تاجر Paytm (MID)', '2026-01-08 02:09:42', '2026-01-08 02:37:21'),
(2990, 5, 'paytm merchant website', 'موقع تاجر Paytm', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(2991, 5, 'industry type id', 'معرف نوع الصناعة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(2992, 5, 'channel id', 'معرف القناة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(2993, 5, 'Payment settings update successfully', 'تم تحديث إعدادات الدفع بنجاح', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(2994, 5, 'Configure ZOOM server-to-server-oauth credentials', 'تكوين بيانات اعتماد Zoom Server-to-Server OAuth', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(2995, 5, 'Account Email', 'البريد الإلكتروني للحساب', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(2996, 5, 'Account ID', 'معرف الحساب (Account ID)', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(2997, 5, 'Client ID', 'معرف العميل (Client ID)', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(2998, 5, 'Client Secret', 'سر العميل (Client Secret)', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(2999, 5, 'Do you want to use Web SDK for your live class?', 'هل تريد استخدام Web SDK لدرسك المباشر؟', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3000, 5, 'Meeting SDK Client ID', 'معرف عميل Meeting SDK', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3001, 5, 'Meeting SDK Client Secret', 'سر عميل Meeting SDK', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3002, 5, 'Enroll delete successfully', 'تم حذف التسجيل بنجاح', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3003, 5, '500 error found', 'تم العثور على خطأ 500', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3004, 5, 'A technical error has occurred', 'حدث خطأ تقني', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3005, 5, 'Please contact with site administrator', 'يرجى التواصل مع مسؤول الموقع', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3006, 5, 'please_do_not_refresh_this_page', 'يرجى عدم تحديث هذه الصفحة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3007, 5, 'Item', 'العنصر', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3008, 5, 'Paid amount', 'المبلغ المدفوع', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3009, 5, 'Purchased date', 'تاريخ الشراء', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3010, 5, 'Select an option', 'حدد خياراً', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3011, 5, 'Total Mark', 'الدرجة الكلية', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3012, 5, 'Quiz has been created.', 'تم إنشاء الاختبار.', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3013, 5, 'Edit quiz', 'تعديل الاختبار', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3014, 5, 'Update Quiz', 'تحديث الاختبار', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3015, 5, 'Fill in the blanks', 'املأ الفراغات', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3016, 5, 'True or False', 'صح أم خطأ', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3017, 5, 'Write question', 'اكتب السؤال', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3018, 5, 'Your questions here', 'أسئلتك هنا', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3019, 5, 'You can keep multiple options. Just put an option and hit enter.', 'يمكنك إضافة خيارات متعددة. فقط اكتب الخيار واضغط Enter.', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3020, 5, 'You can select multiple answers.', 'يمكنك اختيار إجابات متعددة.', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3021, 5, 'Manage Course', 'إدارة الدورة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3022, 5, 'Time left : ', 'الوقت المتبقي:', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3023, 5, 'Total Marks', 'إجمالي الدرجات', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3024, 5, 'Pass Marks', 'درجات النجاح', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3025, 5, 'Total Question', 'إجمالي الأسئلة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3026, 5, 'Start Quiz', 'بدء الاختبار', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3027, 5, 'Quiz has been updated.', 'تم تحديث الاختبار.', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3028, 5, 'Question has been added.', 'تم إضافة السؤال.', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3029, 5, 'Sort Questions', 'فرز الأسئلة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3030, 5, 'Update Question', 'تحديث السؤال', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3031, 5, 'Watermark Type', 'نوع العلامة المائية', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3032, 5, 'Js Watermark', 'علامة مائية JS', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3033, 5, 'FFMpeg', 'FFMpeg', '2026-01-08 02:09:42', NULL),
(3034, 5, 'Opacity', 'الشفافية', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3035, 5, 'Opacity (0 - 100)', 'الشفافية (0 - 100)', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3036, 5, 'Width', 'العرض', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3037, 5, 'Width (px)', 'العرض (بكسل)', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3038, 5, 'Height', 'الارتفاع', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3039, 5, 'Height (px)', 'الارتفاع (بكسل)', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3040, 5, 'Top', 'الأعلى', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3041, 5, 'Top (px)', 'الأعلى (بكسل)', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3042, 5, 'Left (px)', 'اليسار (بكسل)', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3043, 5, 'Enter your html5 video url', 'أدخل رابط فيديو HTML5 الخاص بك', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3044, 5, 'The image size should be', 'يجب أن يكون حجم الصورة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3045, 5, 'Caption', 'تسمية توضيحية', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3046, 5, '.vtt', '.vtt', '2026-01-08 02:09:42', NULL),
(3047, 5, 'Animation speed', 'سرعة الحركة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3048, 5, 'Second (0 - 200)', 'ثانية (0 - 200)', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3049, 5, 'Your changes has been saved.', 'تم حفظ التغييرات.', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3050, 5, 'Second (0 - 10000)', 'ثانية (0 - 10000)', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3051, 5, 'by', 'بواسطة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3052, 5, 'Find A Tutor', 'ابحث عن معلم', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3053, 5, 'Subjects', 'المواد', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3054, 5, 'Subject Category', 'فئة المادة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3055, 5, 'It is a long established fact that a reader will be the distract by the read content of a page layout.', 'من الحقائق الثابتة منذ زمن طويل أن القارئ سيشتت انتباهه بسبب المحتوى المقروء لصفحة.', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3056, 5, 'Manage Ebooks', 'إدارة الكتب الإلكترونية', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3057, 5, 'Add New Ebook', 'إضافة كتاب إلكتروني جديد', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3058, 5, 'Ebooks', 'الكتب الإلكترونية', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3059, 5, '© Creativeitem All Rights Reserved', '© جميع الحقوق محفوظة لـ Creativeitem', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3060, 5, 'Fee', 'الرسوم', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3061, 5, 'Min', 'الحد الأدنى', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3062, 5, 'Max', 'الحد الأقصى', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3063, 5, 'Tickets', 'التذاكر', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3064, 5, 'Add New Ticket', 'إضافة تذكرة جديدة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3065, 5, 'Reports', 'التقارير', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3066, 5, 'Ticket Macros', 'وحدات ماكرو التذاكر', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3067, 5, 'Ticket Categories', 'فئات التذاكر', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3068, 5, 'Ticket Priorities', 'أولويات التذاكر', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3069, 5, 'Ticket Status', 'حالة التذكرة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3070, 5, 'Facebook link', 'رابط فيسبوك', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3071, 5, 'Twitter link', 'رابط تويتر', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3072, 5, 'Linkedin link', 'رابط لينكد إن', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3073, 5, 'A short title about yourself', 'نبذة قصيرة عن نفسك', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3074, 5, 'Skills', 'المهارات', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3075, 5, 'Write your skill and click the enter button', 'اكتب مهارتك واضغط على زر Enter', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3076, 5, 'Photo', 'صورة', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3077, 5, 'The image size should be any square image', 'يجب أن يكون حجم الصورة مربعاً', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3078, 5, 'Update profile', 'تحديث الملف الشخصي', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3079, 5, 'Current password', 'كلمة المرور الحالية', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3080, 5, 'Update password', 'تحديث كلمة المرور', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3081, 5, 'Notification settings', 'إعدادات الإشعارات', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3082, 5, 'Protocol', 'البروتوكول', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3083, 5, 'Smtp crypto', 'تشفير SMTP', '2026-01-08 02:09:42', '2026-01-08 02:37:22'),
(3084, 5, 'Smtp from email', 'بريد المرسل SMTP', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3085, 5, 'Smtp username', 'اسم مستخدم SMTP', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3086, 5, 'System settings update successfully', 'تم تحديث إعدادات النظام بنجاح', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3087, 5, 'Apply to Become an instructor', 'تقدم لتصبح مدرباً', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3088, 5, 'Enter your phone number', 'أدخل رقم هاتفك', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3089, 5, 'Provide some documents about your qualifications', 'قدم بعض المستندات حول مؤهلاتك', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3090, 5, 'Already have account?', 'هل لديك حساب بالفعل؟', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3091, 5, 'My Bookings', 'حجوزاتي', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3092, 5, 'My Ebooks', 'كتبي الإلكترونية', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3093, 5, 'Select a valid zip file', 'اختر ملف zip صالح', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3094, 5, 'Recaptcha', 'Recaptcha', '2026-01-08 02:09:43', NULL),
(3095, 5, 'Please enable exif extension on your server.', 'يرجى تمكين امتداد exif على الخادم الخاص بك.', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3096, 5, 'Dark logo update successfully', 'تم تحديث الشعار الداكن بنجاح', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3097, 5, 'Start learning from the world\'s pro', 'ابدأ التعلم من محترفي العالم', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3098, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', 'من الحقائق الثابتة منذ زمن طويل أن القارئ سيشتت انتباهه بسبب المحتوى المقروء لصفحة عند النظر في تصميمها. الغرض من استخدام Lorem Ipsum.', '2026-01-08 02:09:43', '2026-01-08 02:37:22'),
(3099, 5, 'Fast Performance', 'أداء سريع', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3100, 5, 'It is a long established fact that a reader will be distracted.', 'من الحقائق الثابتة أن القارئ سيشتت انتباهه.', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3101, 5, 'Perfect Responsive', 'استجابة مثالية', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3102, 5, 'Fast & Friendly Support', 'دعم سريع وودود', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3103, 5, 'Easy to Use', 'سهل الاستخدام', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3104, 5, 'Explore Top Courses Categories', 'استكشف أفضل فئات الدورات', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3105, 5, 'Featured Courses\n                        ', 'Featured Courses\n                        ', '2026-01-08 02:09:43', NULL),
(3106, 5, 'View All Courses', 'عرض جميع الدورات', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3107, 5, '150k  ', '150k', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3108, 5, 'Know About Us', 'اعرف عنا', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3109, 5, 'Learn & Grow Your Skills From', 'تعلم وطور مهاراتك من', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3110, 5, 'Educate', 'التعليم', '2026-01-08 02:09:43', '2026-01-08 02:49:33'),
(3111, 5, '\n                        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.\n                    ', '\n                        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.\n                    ', '2026-01-08 02:09:43', NULL),
(3112, 5, 'Life time Access', 'وصول مدى الحياة', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3113, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n                                ', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n                                ', '2026-01-08 02:09:43', NULL),
(3114, 5, 'Learn from Anywhere', 'تعلم من أي مكان', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3115, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'من الحقائق الثابتة أن القارئ سيشتت انتباهه بسبب المحتوى المقروء لصفحة عند النظر في تصميمها.', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3116, 5, 'More about us', 'المزيد عنا', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3117, 5, 'What our clients says about us', 'ماذا يقول عملاؤنا عنا', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3118, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', 'من الحقائق الثابتة أن القارئ سيشتت انتباهه بسبب المحتوى المقروء لصفحة عند النظر في تصميمها. الغرض من استخدام Lorem Ipsum.', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3119, 5, 'Linchon Philips', 'Linchon Philips', '2026-01-08 02:09:43', NULL),
(3120, 5, 'CEO @ Yahoo', 'المدير التنفيذي في Yahoo', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3121, 5, 'Have a look on our news', 'ألق نظرة على أخبارنا', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3122, 5, 'View All Blogs', 'عرض جميع المدونات', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3123, 5, 'Blog that help beginner designers become true unicorns.', 'مدونة تساعد المصممين المبتدئين ليصبحوا محترفين حقيقيين.', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3124, 5, 'Popular Post', 'مقال شائع', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3125, 5, 'Light logo update successfully', 'تم تحديث الشعار الفاتح بنجاح', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3126, 5, ' Knowledge Base', ' Knowledge Base', '2026-01-08 02:09:43', NULL),
(3127, 5, 'Favicon logo update successfully', 'تم تحديث أيقونة الموقع (Favicon) بنجاح', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3128, 5, 'Banner image update successfully', 'تم تحديث صورة البانر بنجاح', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3129, 5, 'Language added successfully', 'تمت إضافة اللغة بنجاح', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3130, 5, 'Edit ____ phrases', 'تحرير ____ عبارة', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3131, 5, 'Import all phrases from english', 'استيراد جميع العبارات من الإنجليزية', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3132, 5, 'Phrase updated', 'تم تحديث العبارة', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3133, 5, 'Submit your account email address.', 'أدخل عنوان البريد الإلكتروني لحسابك.', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3134, 5, 'Enter Your Email', 'أدخل بريدك الإلكتروني', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3135, 5, 'Send Request', 'إرسال طلب', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3136, 5, 'Back to login page', 'العودة لصفحة تسجيل الدخول', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3137, 5, 'Language deleted successfully', 'تم حذف اللغة بنجاح', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3138, 5, 'Cookie', 'ملفات تعريف الارتباط (Cookie)', '2026-01-08 02:09:43', '2026-01-08 02:37:23'),
(3139, 3, 'We\'re always here to help you.', 'We\'re always here to help you.', NULL, NULL),
(3140, 3, 'Our Address', 'Our Address', NULL, NULL),
(3141, 3, 'Our location', 'Our location', NULL, NULL),
(3142, 3, 'Contact Info', 'Contact Info', NULL, NULL),
(3143, 3, 'Open a chat or give us call at', 'Open a chat or give us call at', NULL, NULL),
(3144, 3, 'Send your message', 'Send your message', NULL, NULL),
(3145, 3, 'Language imported and updated successfully.', 'Language imported and updated successfully.', NULL, NULL),
(3146, 5, 'Search instructor by name...', 'ابحث عن المدرب بالاسم...', '2026-01-08 02:49:33', '2026-01-08 02:49:33'),
(3147, 3, 'Arabic', 'Arabic', NULL, NULL),
(3148, 3, 'store key', 'store key', NULL, NULL),
(3149, 3, 'store password', 'store password', NULL, NULL),
(3150, 3, 'store live key', 'store live key', NULL, NULL),
(3151, 3, 'store live password', 'store live password', NULL, NULL),
(3152, 3, 'sslcz testmode', 'sslcz testmode', NULL, NULL),
(3153, 3, 'is localhost', 'is localhost', NULL, NULL),
(3154, 3, 'sslcz live testmode', 'sslcz live testmode', NULL, NULL),
(3155, 3, 'is live localhost', 'is live localhost', NULL, NULL),
(3156, 3, 'store id', 'store id', NULL, NULL),
(3157, 3, 'signature key', 'signature key', NULL, NULL),
(3158, 3, 'store live id', 'store live id', NULL, NULL),
(3159, 3, 'signature live key', 'signature live key', NULL, NULL),
(3160, 3, 'merchant id', 'merchant id', NULL, NULL),
(3161, 3, 'merchant password', 'merchant password', NULL, NULL),
(3162, 3, 'merchant live id', 'merchant live id', NULL, NULL),
(3163, 3, 'merchant live password', 'merchant live password', NULL, NULL),
(3164, 3, 'Access key id', 'Access key id', NULL, NULL),
(3165, 3, 'Secret access key', 'Secret access key', NULL, NULL),
(3166, 3, 'Default region', 'Default region', NULL, NULL),
(3167, 3, 'AWS bucket', 'AWS bucket', NULL, NULL),
(3168, 3, 'Heads up!', 'Heads up!', NULL, NULL),
(3169, 3, 'Since Amazon S3 is integrated, all lesson files (videos) will be uploaded and served directly from your S3 bucket.', 'Since Amazon S3 is integrated, all lesson files (videos) will be uploaded and served directly from your S3 bucket.', NULL, NULL),
(3170, 3, 'Manage your open ai settings', 'Manage your open ai settings', NULL, NULL),
(3171, 3, 'Select ai model', 'Select ai model', NULL, NULL),
(3172, 3, 'Required premium account', 'Required premium account', NULL, NULL),
(3173, 3, 'Max tokens', 'Max tokens', NULL, NULL),
(3174, 3, 'All Rights Reserved', 'All Rights Reserved', NULL, NULL),
(3175, 3, 'Manage SEO Settings', 'Manage SEO Settings', NULL, NULL),
(3176, 3, 'Writing your keyword and hit the enter', 'Writing your keyword and hit the enter', NULL, NULL),
(3177, 3, 'Meta Robot', 'Meta Robot', NULL, NULL),
(3178, 3, ' Canonical Url', ' Canonical Url', NULL, NULL),
(3179, 3, ' Custom Url', ' Custom Url', NULL, NULL),
(3180, 3, 'Og Title', 'Og Title', NULL, NULL),
(3181, 3, 'Og Description', 'Og Description', NULL, NULL),
(3182, 3, 'Og Image', 'Og Image', NULL, NULL),
(3183, 3, 'Json Id', 'Json Id', NULL, NULL),
(3184, 3, 'Invalid purchase code', 'Invalid purchase code', NULL, NULL),
(3185, 3, 'Expiry period', 'Expiry period', NULL, NULL),
(3186, 3, 'Limited time', 'Limited time', NULL, NULL),
(3187, 3, 'Number of month', 'Number of month', NULL, NULL),
(3188, 3, 'After purchase, students can access the course until your selected month.', 'After purchase, students can access the course until your selected month.', NULL, NULL),
(3189, 3, 'Enable drip content', 'Enable drip content', NULL, NULL),
(3190, 3, 'Off', 'Off', NULL, NULL),
(3191, 3, 'On', 'On', NULL, NULL),
(3192, 3, 'Add Coupon', 'Add Coupon', NULL, NULL),
(3193, 3, 'Search coupon', 'Search coupon', NULL, NULL),
(3194, 3, 'Code', 'Code', NULL, NULL),
(3195, 3, 'Enter coupon code', 'Enter coupon code', NULL, NULL),
(3196, 3, 'Discount (%)', 'Discount (%)', NULL, NULL),
(3197, 3, 'Enter coupon discount', 'Enter coupon discount', NULL, NULL),
(3198, 3, 'Expiry', 'Expiry', NULL, NULL),
(3199, 3, 'Enter coupon expiry', 'Enter coupon expiry', NULL, NULL),
(3200, 3, 'Choose status ...', 'Choose status ...', NULL, NULL),
(3201, 3, 'Bootcamp Manager', 'Bootcamp Manager', NULL, NULL),
(3202, 3, 'Manage Bootcamp', 'Manage Bootcamp', NULL, NULL),
(3203, 3, 'Discounted', 'Discounted', NULL, NULL),
(3204, 3, 'Enter Bootcamp Title', 'Enter Bootcamp Title', NULL, NULL),
(3205, 3, 'Enter your bootcamp price', 'Enter your bootcamp price', NULL, NULL),
(3206, 3, 'Tutor subjects', 'Tutor subjects', NULL, NULL),
(3207, 3, 'Add new subject', 'Add new subject', NULL, NULL),
(3208, 3, 'Tutor categories', 'Tutor categories', NULL, NULL),
(3209, 3, 'Approved', 'Approved', NULL, NULL),
(3210, 3, 'Suspended', 'Suspended', NULL, NULL),
(3211, 3, 'Private Message', 'Private Message', NULL, NULL),
(3212, 3, 'Chat List', 'Chat List', NULL, NULL),
(3213, 3, 'Create a new thread', 'Create a new thread', NULL, NULL),
(3214, 3, 'Create a new conversation with a new user', 'Create a new conversation with a new user', NULL, NULL),
(3215, 3, 'Select a new user', 'Select a new user', NULL, NULL),
(3216, 3, 'Select a user', 'Select a user', NULL, NULL),
(3217, 3, 'Message thread successfully created', 'Message thread successfully created', NULL, NULL),
(3218, 3, 'Send', 'Send', NULL, NULL),
(3219, 3, 'Add Newsletter', 'Add Newsletter', NULL, NULL),
(3220, 3, 'Subscriber', 'Subscriber', NULL, NULL),
(3221, 3, 'Search Email', 'Search Email', NULL, NULL),
(3222, 3, 'Search Contact', 'Search Contact', NULL, NULL),
(3223, 3, 'Customer Support | Tickets', 'Customer Support | Tickets', NULL, NULL),
(3224, 3, 'Search Subject', 'Search Subject', NULL, NULL),
(3225, 3, 'Customer Support | Ticket Add', 'Customer Support | Ticket Add', NULL, NULL),
(3226, 3, 'Ticket Form', 'Ticket Form', NULL, NULL),
(3227, 3, 'Subject', 'Subject', NULL, NULL),
(3228, 3, 'Enter your subject here', 'Enter your subject here', NULL, NULL),
(3229, 3, 'Select Category', 'Select Category', NULL, NULL),
(3230, 3, 'Select Status', 'Select Status', NULL, NULL),
(3231, 3, 'Select a status', 'Select a status', NULL, NULL),
(3232, 3, 'Select Priority', 'Select Priority', NULL, NULL),
(3233, 3, 'Select a priority', 'Select a priority', NULL, NULL),
(3234, 3, 'Customer Support | FAQ', 'Customer Support | FAQ', NULL, NULL),
(3235, 3, 'Ticket FAQ', 'Ticket FAQ', NULL, NULL),
(3236, 3, 'Add new faq', 'Add new faq', NULL, NULL),
(3237, 3, 'Search FAQ', 'Search FAQ', NULL, NULL),
(3238, 3, 'Customer Support | Reports', 'Customer Support | Reports', NULL, NULL),
(3239, 3, 'Total No. Of Tickets', 'Total No. Of Tickets', NULL, NULL),
(3240, 3, 'User with most tickets', 'User with most tickets', NULL, NULL),
(3241, 3, 'View Tickets', 'View Tickets', NULL, NULL),
(3242, 3, 'Last Reply', 'Last Reply', NULL, NULL),
(3243, 3, 'Total Tickets In This Month', 'Total Tickets In This Month', NULL, NULL),
(3244, 3, 'Customer Support | Macros', 'Customer Support | Macros', NULL, NULL),
(3245, 3, 'Add new macro', 'Add new macro', NULL, NULL),
(3246, 3, 'Add macro', 'Add macro', NULL, NULL),
(3247, 3, 'Customer Support | Categories', 'Customer Support | Categories', NULL, NULL),
(3248, 3, 'Customer Support | Priorities', 'Customer Support | Priorities', NULL, NULL),
(3249, 3, 'Add new priority', 'Add new priority', NULL, NULL),
(3250, 3, 'Pending Blog', 'Pending Blog', NULL, NULL),
(3251, 3, 'Blog Setting', 'Blog Setting', NULL, NULL),
(3252, 3, 'Blog settings', 'Blog settings', NULL, NULL),
(3253, 3, 'Instructor permission', 'Instructor permission', NULL, NULL),
(3254, 3, 'Provide access', 'Provide access', NULL, NULL),
(3255, 3, 'Decline access', 'Decline access', NULL, NULL),
(3256, 3, 'Visibility on homepage', 'Visibility on homepage', NULL, NULL),
(3257, 3, 'Visible', 'Visible', NULL, NULL),
(3258, 3, 'Hidden', 'Hidden', NULL, NULL),
(3259, 3, 'Knowledge_base', 'Knowledge_base', NULL, NULL),
(3260, 3, 'Add knowledge base', 'Add knowledge base', NULL, NULL),
(3261, 3, 'Contact us', 'Contact us', NULL, NULL),
(3262, 3, 'Send Message', 'Send Message', NULL, NULL),
(3263, 3, 'Lifetime', 'Lifetime', NULL, NULL),
(3264, 3, 'Coupon', 'Coupon', NULL, NULL),
(3265, 3, 'Mark email as verified', 'Mark email as verified', NULL, NULL),
(3266, 3, 'Meta Title', 'Meta Title', NULL, NULL),
(3267, 3, 'Meta Keywords', 'Meta Keywords', NULL, NULL),
(3268, 3, 'Meta Description', 'Meta Description', NULL, NULL),
(3269, 3, 'Contact information update successfully', 'Contact information update successfully', NULL, NULL),
(3270, 3, 'Certificate Management', 'Certificate Management', NULL, NULL),
(3271, 3, 'Total Certificates', 'Total Certificates', NULL, NULL),
(3272, 3, 'Valid Certificates', 'Valid Certificates', NULL, NULL),
(3273, 3, 'Revoked Certificates', 'Revoked Certificates', NULL, NULL),
(3274, 3, 'All Status', 'All Status', NULL, NULL),
(3275, 3, 'Revoked', 'Revoked', NULL, NULL),
(3276, 3, 'Search certificate, student, course...', 'Search certificate, student, course...', NULL, NULL),
(3277, 3, 'Revoke Certificate', 'Revoke Certificate', NULL, NULL),
(3278, 3, 'Revocation Reason', 'Revocation Reason', NULL, NULL),
(3279, 3, 'Enter reason for revoking this certificate...', 'Enter reason for revoking this certificate...', NULL, NULL),
(3280, 3, 'This action will mark the certificate as invalid. The student will no longer be able to use this certificate.', 'This action will mark the certificate as invalid. The student will no longer be able to use this certificate.', NULL, NULL),
(3281, 3, 'Verify Certificate', 'Verify Certificate', NULL, NULL),
(3282, 3, 'Check the authenticity of certificates issued by our academy. Enter the certificate number or scan the QR code to verify.', 'Check the authenticity of certificates issued by our academy. Enter the certificate number or scan the QR code to verify.', NULL, NULL),
(3283, 3, 'Enter Certificate Number', 'Enter Certificate Number', NULL, NULL),
(3284, 3, 'Verify', 'Verify', NULL, NULL),
(3285, 3, 'Go to Verification Page', 'Go to Verification Page', NULL, NULL),
(3286, 3, 'Verify the authenticity of certificates issued by our academy', 'Verify the authenticity of certificates issued by our academy', NULL, NULL),
(3287, 3, 'Enter the certificate number or identifier to verify its authenticity', 'Enter the certificate number or identifier to verify its authenticity', NULL, NULL),
(3288, 3, 'Enter Certificate Number or ID', 'Enter Certificate Number or ID', NULL, NULL),
(3289, 3, 'Certificate Not Found', 'Certificate Not Found', NULL, NULL),
(3290, 3, 'The certificate number you entered does not exist in our records', 'The certificate number you entered does not exist in our records', NULL, NULL),
(3291, 3, 'Please check the number and try again, or contact support if you believe this is an error', 'Please check the number and try again, or contact support if you believe this is an error', NULL, NULL),
(3292, 3, 'Remove account', 'Remove account', NULL, NULL),
(3293, 3, 'Clear', 'Clear', NULL, NULL),
(3294, 3, 'Admins', 'Admins', NULL, NULL),
(3295, 3, 'Admin List', 'Admin List', NULL, NULL),
(3296, 3, 'Root Admin', 'Root Admin', NULL, NULL),
(3297, 3, 'Create Admin', 'Create Admin', NULL, NULL),
(3298, 3, 'Admin Info', 'Admin Info', NULL, NULL),
(3299, 3, 'Instructor Applicationss', 'Instructor Applicationss', NULL, NULL),
(3300, 3, 'Pending applications', 'Pending applications', NULL, NULL),
(3301, 3, 'Approved applications', 'Approved applications', NULL, NULL);
INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(3302, 3, 'Customer Support | Status', 'Customer Support | Status', NULL, NULL),
(3303, 3, 'Add new status', 'Add new status', NULL, NULL),
(3304, 3, 'Booked schedules', 'Booked schedules', NULL, NULL),
(3305, 3, 'My Team Packages', 'My Team Packages', NULL, NULL),
(3306, 3, 'Personal Information', 'Personal Information', NULL, NULL),
(3307, 3, 'Full Name', 'Full Name', NULL, NULL),
(3308, 3, 'Website', 'Website', NULL, NULL),
(3309, 3, 'Change Password', 'Change Password', NULL, NULL),
(3310, 3, 'Wishlisted courses', 'Wishlisted courses', NULL, NULL),
(3311, 3, 'Search user email...', 'Search user email...', NULL, NULL),
(3312, 3, 'Message someone and chat right now!', 'Message someone and chat right now!', NULL, NULL),
(3313, 3, 'Ticket List', 'Ticket List', NULL, NULL),
(3314, 3, '+0 (123) 456 - 7890', '+0 (123) 456 - 7890', NULL, NULL),
(3315, 3, 'Documents of qualification. Max-size : 5MB (DOC, DOCX, PDF, TXT, PNG, JPG, JPEG)', 'Documents of qualification. Max-size : 5MB (DOC, DOCX, PDF, TXT, PNG, JPG, JPEG)', NULL, NULL),
(3316, 3, 'Your description here...', 'Your description here...', NULL, NULL),
(3317, 3, 'Apply for instructor', 'Apply for instructor', NULL, NULL),
(3318, 3, 'Your application has been submitted.', 'Your application has been submitted.', NULL, NULL),
(3319, 3, 'Certificates', 'Certificates', NULL, NULL),
(3320, 3, 'Pending payouts', 'Pending payouts', NULL, NULL),
(3321, 3, 'Completed payouts', 'Completed payouts', NULL, NULL),
(3322, 3, 'Public Instructor Settings', 'Public Instructor Settings', NULL, NULL),
(3323, 3, 'Instructor settings', 'Instructor settings', NULL, NULL),
(3324, 3, 'Allow public instructor', 'Allow public instructor', NULL, NULL),
(3325, 3, 'Instructor application note', 'Instructor application note', NULL, NULL),
(3326, 3, 'Revenue settings', 'Revenue settings', NULL, NULL),
(3327, 3, 'Instructor revenue percentage', 'Instructor revenue percentage', NULL, NULL),
(3328, 3, 'Admin revenue percentage', 'Admin revenue percentage', NULL, NULL),
(3329, 3, 'Revoke Instructor Access', 'Revoke Instructor Access', NULL, NULL),
(3330, 3, 'Instructor Revenue This Year', 'Instructor Revenue This Year', NULL, NULL),
(3331, 3, 'My Subjects', 'My Subjects', NULL, NULL),
(3332, 3, 'Manage Schedules', 'Manage Schedules', NULL, NULL),
(3333, 3, 'Add Booking', 'Add Booking', NULL, NULL),
(3334, 3, 'All Bookings', 'All Bookings', NULL, NULL),
(3335, 3, 'Sales', 'Sales', NULL, NULL),
(3336, 3, 'Payout', 'Payout', NULL, NULL),
(3337, 3, 'Withdraw', 'Withdraw', NULL, NULL),
(3338, 3, 'Profile Settings', 'Profile Settings', NULL, NULL),
(3339, 3, 'Manage Resume', 'Manage Resume', NULL, NULL),
(3340, 3, 'Instructor Panel', 'Instructor Panel', NULL, NULL),
(3341, 3, 'Add subject', 'Add subject', NULL, NULL),
(3342, 3, 'Add schedule', 'Add schedule', NULL, NULL),
(3343, 3, 'Schedule Create', 'Schedule Create', NULL, NULL),
(3344, 3, 'First select category', 'First select category', NULL, NULL),
(3345, 3, 'Tution type', 'Tution type', NULL, NULL),
(3346, 3, 'Single time', 'Single time', NULL, NULL),
(3347, 3, 'Repeated days', 'Repeated days', NULL, NULL),
(3348, 3, 'Schedule start time', 'Schedule start time', NULL, NULL),
(3349, 3, 'Schedule end Date', 'Schedule end Date', NULL, NULL),
(3350, 3, 'Select days', 'Select days', NULL, NULL),
(3351, 3, 'Check all', 'Check all', NULL, NULL),
(3352, 3, 'sunday', 'sunday', NULL, NULL),
(3353, 3, 'monday', 'monday', NULL, NULL),
(3354, 3, 'tuesday', 'tuesday', NULL, NULL),
(3355, 3, 'wednesday', 'wednesday', NULL, NULL),
(3356, 3, 'thursday', 'thursday', NULL, NULL),
(3357, 3, 'friday', 'friday', NULL, NULL),
(3358, 3, 'saturday', 'saturday', NULL, NULL),
(3359, 3, 'Class Duration', 'Class Duration', NULL, NULL),
(3360, 3, 'Save Schedule', 'Save Schedule', NULL, NULL),
(3361, 3, 'You can not keep any field empty', 'You can not keep any field empty', NULL, NULL),
(3362, 3, 'List of bookings', 'List of bookings', NULL, NULL),
(3363, 3, 'Live & Upcoming', 'Live & Upcoming', NULL, NULL),
(3364, 3, 'Archive', 'Archive', NULL, NULL),
(3365, 3, 'Create book', 'Create book', NULL, NULL),
(3366, 3, 'Add new book', 'Add new book', NULL, NULL),
(3367, 3, 'Select a language', 'Select a language', NULL, NULL),
(3368, 3, 'Enter Summary', 'Enter Summary', NULL, NULL),
(3369, 3, 'Publication name', 'Publication name', NULL, NULL),
(3370, 3, 'Enter Publication name', 'Enter Publication name', NULL, NULL),
(3371, 3, 'Edition', 'Edition', NULL, NULL),
(3372, 3, 'Enter Edition', 'Enter Edition', NULL, NULL),
(3373, 3, 'Enter your ebook price', 'Enter your ebook price', NULL, NULL),
(3374, 3, 'Check if this ebook has discount', 'Check if this ebook has discount', NULL, NULL),
(3375, 3, 'Published Date', 'Published Date', NULL, NULL),
(3376, 3, 'Enter Published Date', 'Enter Published Date', NULL, NULL),
(3377, 3, 'Ebook preview file', 'Ebook preview file', NULL, NULL),
(3378, 3, 'Ebook complete file', 'Ebook complete file', NULL, NULL),
(3379, 3, ' instructor revenue', ' instructor revenue', NULL, NULL),
(3380, 3, 'Sales report', 'Sales report', NULL, NULL),
(3381, 3, 'Elements', 'Elements', NULL, NULL),
(3382, 3, 'Add New Element', 'Add New Element', NULL, NULL),
(3383, 3, 'Manage content', 'Manage content', NULL, NULL),
(3384, 3, 'Participant', 'Participant', NULL, NULL),
(3385, 3, 'Online Free Courses', 'Online Free Courses', NULL, NULL),
(3386, 3, '10%', '10%', NULL, NULL),
(3387, 3, 'Lessons for beginner', 'Lessons for beginner', NULL, NULL),
(3388, 3, 'Top Course', 'Top Course', NULL, NULL),
(3389, 3, 'See All Courses', 'See All Courses', NULL, NULL),
(3390, 3, 'The benefit of Yoga Expedition', 'The benefit of Yoga Expedition', NULL, NULL),
(3391, 3, 'What our client say', 'What our client say', NULL, NULL),
(3392, 3, 'See All Blogs', 'See All Blogs', NULL, NULL),
(3393, 3, 'Meditation Big  Image', 'Meditation Big  Image', NULL, NULL),
(3394, 3, 'Big Image', 'Big Image', NULL, NULL),
(3395, 3, 'Meditation Featured', 'Meditation Featured', NULL, NULL),
(3396, 3, 'Enter your page name', 'Enter your page name', NULL, NULL),
(3397, 3, 'Image editor', 'Image editor', NULL, NULL),
(3398, 3, 'Padding', 'Padding', NULL, NULL),
(3399, 3, 'Margin', 'Margin', NULL, NULL),
(3400, 3, 'Border', 'Border', NULL, NULL),
(3401, 3, 'dashed', 'dashed', NULL, NULL),
(3402, 3, 'dotted', 'dotted', NULL, NULL),
(3403, 3, 'Border roundness', 'Border roundness', NULL, NULL),
(3404, 3, 'Border color', 'Border color', NULL, NULL),
(3405, 3, 'Background color', 'Background color', NULL, NULL),
(3406, 3, 'Text editor', 'Text editor', NULL, NULL),
(3407, 3, 'Text color', 'Text color', NULL, NULL),
(3408, 3, '150k +', '150k +', NULL, NULL),
(3409, 3, 'It offers courses designed to enhance knowledge and develop practical skills for personal and professional growth.', 'It offers courses designed to enhance knowledge and develop practical skills for personal and professional growth.', NULL, NULL),
(3410, 3, 'It is a long established fact that a reader will be distracted', 'It is a long established fact that a reader will be distracted', NULL, NULL),
(3411, 3, 'We invites learners to explore courses designed by industry experts, offering cutting-edge content for skill development.', 'We invites learners to explore courses designed by industry experts, offering cutting-edge content for skill development.', NULL, NULL),
(3412, 3, 'Write your testimonial content here', 'Write your testimonial content here', NULL, NULL),
(3413, 3, 'none', 'none', NULL, NULL),
(3414, 3, 'New home page layout has been added', 'New home page layout has been added', NULL, NULL),
(3415, 3, 'شهادة MINI MBA في إدارة الأعمال', 'شهادة MINI MBA في إدارة الأعمال', NULL, NULL),
(3416, 3, 'آي بي إس - دورات تدريبية في أكثر من 67 تخصص مختلف', 'آي بي إس - دورات تدريبية في أكثر من 67 تخصص مختلف', NULL, NULL),
(3417, 3, 'انضم إلى أكثر من آلاف المتدربين واحصل على شهادات معتمدة من أفضل الجهات التدريبية', 'انضم إلى أكثر من آلاف المتدربين واحصل على شهادات معتمدة من أفضل الجهات التدريبية', NULL, NULL),
(3418, 3, 'البحث عن دورة تدريبية...', 'البحث عن دورة تدريبية...', NULL, NULL),
(3419, 3, 'بحث', 'بحث', NULL, NULL),
(3420, 3, 'دورة تدريبية', 'دورة تدريبية', NULL, NULL),
(3421, 3, 'متدرب ومتدربة', 'متدرب ومتدربة', NULL, NULL),
(3422, 3, 'تقييم المتدربين', 'تقييم المتدربين', NULL, NULL),
(3423, 3, 'مدرب متخصص', 'مدرب متخصص', NULL, NULL),
(3424, 3, 'تصفح حسب التخصص', 'تصفح حسب التخصص', NULL, NULL),
(3425, 3, 'استكشف الجهات التدريبية التي نقدمها', 'استكشف الجهات التدريبية التي نقدمها', NULL, NULL),
(3426, 3, 'اختر التخصص الذي يناسبك من بين أكثر من 67 تخصص مختلف', 'اختر التخصص الذي يناسبك من بين أكثر من 67 تخصص مختلف', NULL, NULL),
(3427, 3, 'عرض جميع التخصصات', 'عرض جميع التخصصات', NULL, NULL),
(3428, 3, 'ابدأ رحلتك التعليمية اليوم', 'ابدأ رحلتك التعليمية اليوم', NULL, NULL),
(3429, 3, 'انضم إلى آلاف المتدربين واحصل على شهادات معتمدة من أفضل الجهات التدريبية. ابدأ الآن واستثمر في مستقبلك المهني.', 'انضم إلى آلاف المتدربين واحصل على شهادات معتمدة من أفضل الجهات التدريبية. ابدأ الآن واستثمر في مستقبلك المهني.', NULL, NULL),
(3430, 3, 'سجل الآن مجاناً', 'سجل الآن مجاناً', NULL, NULL),
(3431, 3, 'تصفح الدورات', 'تصفح الدورات', NULL, NULL),
(3432, 3, 'تعلم مهارات جديدة', 'تعلم مهارات جديدة', NULL, NULL),
(3433, 3, 'أحدث البرامج التدريبية', 'أحدث البرامج التدريبية', NULL, NULL),
(3434, 3, 'اكتشف أحدث الدورات التدريبية المضافة من أفضل المدربين المتخصصين', 'اكتشف أحدث الدورات التدريبية المضافة من أفضل المدربين المتخصصين', NULL, NULL),
(3435, 3, 'عرض جميع الدورات', 'عرض جميع الدورات', NULL, NULL),
(3436, 3, 'شركاء النجاح', 'شركاء النجاح', NULL, NULL),
(3437, 3, 'جهات وشركات تثق بنا', 'جهات وشركات تثق بنا', NULL, NULL),
(3438, 3, 'شركاؤنا في النجاح', 'شركاؤنا في النجاح', NULL, NULL),
(3439, 3, 'جهات تدريبية تعمل معنا', 'جهات تدريبية تعمل معنا', NULL, NULL),
(3440, 3, 'نتعاون مع أفضل الجهات التدريبية لتقديم محتوى تعليمي عالي الجودة', 'نتعاون مع أفضل الجهات التدريبية لتقديم محتوى تعليمي عالي الجودة', NULL, NULL),
(3441, 3, 'Your record has been saved.', 'Your record has been saved.', NULL, NULL),
(3442, 3, 'Data not found.', 'Data not found.', NULL, NULL),
(3443, 3, 'Drip Content', 'Drip Content', NULL, NULL),
(3444, 3, 'Custom Field', 'Custom Field', NULL, NULL),
(3445, 3, 'Additional Info', 'Additional Info', NULL, NULL),
(3446, 3, 'سجّل الآن', 'سجّل الآن', NULL, NULL),
(3447, 3, 'اشترِ الآن', 'اشترِ الآن', NULL, NULL),
(3448, 3, 'Months', 'Months', NULL, NULL),
(3449, 3, 'Blog Details', 'Blog Details', NULL, NULL),
(3450, 3, 'Post A Comment', 'Post A Comment', NULL, NULL),
(3451, 3, 'Write your comment ...', 'Write your comment ...', NULL, NULL),
(3452, 3, 'Introduction Video', 'Introduction Video', NULL, NULL),
(3453, 3, 'Lightning-fast loading and seamless experience', 'Lightning-fast loading and seamless experience', NULL, NULL),
(3454, 3, 'Works perfectly on all devices and screens', 'Works perfectly on all devices and screens', NULL, NULL),
(3455, 3, '24/7 customer support ready to help you', '24/7 customer support ready to help you', NULL, NULL),
(3456, 3, 'Intuitive interface designed for everyone', 'Intuitive interface designed for everyone', NULL, NULL),
(3457, 3, 'Discover a wide range of courses across various fields', 'Discover a wide range of courses across various fields', NULL, NULL),
(3458, 3, 'Get unlimited access to all course materials forever with no restrictions.', 'Get unlimited access to all course materials forever with no restrictions.', NULL, NULL),
(3459, 3, 'Access your courses from any device, anywhere in the world, anytime.', 'Access your courses from any device, anywhere in the world, anytime.', NULL, NULL),
(3460, 3, 'like', 'like', NULL, NULL),
(3461, 3, 'Instructor details', 'Instructor details', NULL, NULL),
(3462, 3, 'Hi, I’m', 'Hi, I’m', NULL, NULL),
(3463, 3, 'Experience', 'Experience', NULL, NULL),
(3464, 3, 'Recently appointed', 'Recently appointed', NULL, NULL),
(3465, 3, 'Search courses...', 'Search courses...', NULL, NULL),
(3466, 3, 'مجاني', 'مجاني', NULL, NULL),
(3467, 3, 'درس', 'درس', NULL, NULL),
(3468, 3, 'متدرب', 'متدرب', NULL, NULL),
(3469, 3, 'بواسطة', 'بواسطة', NULL, NULL),
(3470, 3, 'Enroll Now', 'Enroll Now', NULL, NULL),
(3471, 3, 'إضافة للمفضلة', 'إضافة للمفضلة', NULL, NULL),
(3472, 3, 'Learn to train with the best personal trainer', 'Learn to train with the best personal trainer', NULL, NULL),
(3473, 3, 'أقوى دورة على مستوى العالم', 'أقوى دورة على مستوى العالم', NULL, NULL),
(3474, 3, 'دورة إدارة المشاريع الاحترافية PMP', 'دورة إدارة المشاريع الاحترافية PMP', NULL, NULL),
(3475, 3, 'احجز الدورة الآن', 'احجز الدورة الآن', NULL, NULL),
(3476, 3, 'أكاديمية أي بي أس للتدريب - دورات تدريبية في أكثر من 67 تخصص مختلف', 'أكاديمية أي بي أس للتدريب - دورات تدريبية في أكثر من 67 تخصص مختلف', NULL, NULL),
(3477, 3, 'معتمد من PMI', 'معتمد من PMI', NULL, NULL),
(3478, 3, 'ومرخصة من PMI كمركز تدريب معتمد', 'ومرخصة من PMI كمركز تدريب معتمد', NULL, NULL),
(3479, 3, 'أكثر من 1000 متدرب', 'أكثر من 1000 متدرب', NULL, NULL),
(3480, 3, 'حول العالم في مجالات مختلفة', 'حول العالم في مجالات مختلفة', NULL, NULL),
(3481, 3, 'الأفضل في المملكة', 'الأفضل في المملكة', NULL, NULL),
(3482, 3, 'في مجال التدريب الاحترافي', 'في مجال التدريب الاحترافي', NULL, NULL),
(3483, 3, 'شهادات معتمدة', 'شهادات معتمدة', NULL, NULL),
(3484, 3, 'شهادات احترافية معترف بها دولياً', 'شهادات احترافية معترف بها دولياً', NULL, NULL),
(3485, 3, 'خبرة 20 عام', 'خبرة 20 عام', NULL, NULL),
(3486, 3, 'في مجال التدريب والاستشارات', 'في مجال التدريب والاستشارات', NULL, NULL),
(3487, 3, 'البحث عن دورة تدريبية', 'البحث عن دورة تدريبية', NULL, NULL),
(3488, 3, 'ابحث عن دورة تدريبية...', 'ابحث عن دورة تدريبية...', NULL, NULL),
(3489, 3, 'دورات تدريبية متاحة قريباً...', 'دورات تدريبية متاحة قريباً...', NULL, NULL),
(3490, 3, 'اكتشف دوراتنا التدريبية المميزة', 'اكتشف دوراتنا التدريبية المميزة', NULL, NULL),
(3491, 3, 'قريباً', 'قريباً', NULL, NULL),
(3492, 3, 'ساعة', 'ساعة', NULL, NULL),
(3493, 3, 'اطلع على التفاصيل', 'اطلع على التفاصيل', NULL, NULL),
(3494, 3, 'عرض جميع الدورات التدريبية', 'عرض جميع الدورات التدريبية', NULL, NULL),
(3495, 3, 'استعرض الدورات التدريبية التي تبحث عنها', 'استعرض الدورات التدريبية التي تبحث عنها', NULL, NULL),
(3496, 3, 'اختر المجال الذي يناسبك من تخصصاتنا المتنوعة', 'اختر المجال الذي يناسبك من تخصصاتنا المتنوعة', NULL, NULL),
(3497, 3, 'دورة', 'دورة', NULL, NULL),
(3498, 3, 'أحدث المقالات التدريبية', 'أحدث المقالات التدريبية', NULL, NULL),
(3499, 3, 'تابع آخر الأخبار والمقالات في عالم التدريب والتطوير', 'تابع آخر الأخبار والمقالات في عالم التدريب والتطوير', NULL, NULL),
(3500, 3, 'مقالات', 'مقالات', NULL, NULL),
(3501, 3, 'مشاهدة', 'مشاهدة', NULL, NULL),
(3502, 3, 'اقرأ المزيد', 'اقرأ المزيد', NULL, NULL),
(3503, 3, 'شركاؤنا ومعتمدونا', 'شركاؤنا ومعتمدونا', NULL, NULL),
(3504, 3, 'Not registered', 'Not registered', NULL, NULL),
(3505, 3, 'Message Reply', 'Message Reply', NULL, NULL),
(3506, 3, 'Registered', 'Registered', NULL, NULL),
(3507, 3, 'successfullly added', 'successfullly added', NULL, NULL),
(3508, 3, 'Total Articles', 'Total Articles', NULL, NULL),
(3509, 3, ' Articles', ' Articles', NULL, NULL),
(3510, 3, 'Edit Newsletter', 'Edit Newsletter', NULL, NULL),
(3511, 3, 'Add Article', 'Add Article', NULL, NULL),
(3512, 3, 'Enter Article title', 'Enter Article title', NULL, NULL),
(3513, 3, 'article saved.', 'article saved.', NULL, NULL),
(3514, 3, 'Edit Articles', 'Edit Articles', NULL, NULL),
(3515, 3, 'Update Blog', 'Update Blog', NULL, NULL),
(3516, 3, 'Click the enter button after writing your keyword', 'Click the enter button after writing your keyword', NULL, NULL),
(3517, 3, 'SEO Fields', 'SEO Fields', NULL, NULL),
(3518, 3, 'Enter your subject category name', 'Enter your subject category name', NULL, NULL),
(3519, 3, 'Enter your unique subject category name', 'Enter your unique subject category name', NULL, NULL),
(3520, 3, ' Article', ' Article', NULL, NULL),
(3521, 3, ' Share On :', ' Share On :', NULL, NULL),
(3522, 3, 'Add a new assignment', 'Add a new assignment', NULL, NULL),
(3523, 3, 'New Assignment', 'New Assignment', NULL, NULL),
(3524, 3, 'Assignment Name', 'Assignment Name', NULL, NULL),
(3525, 3, 'Deadline', 'Deadline', NULL, NULL),
(3526, 3, 'Number of submission', 'Number of submission', NULL, NULL),
(3527, 3, 'Subject Name', 'Subject Name', NULL, NULL),
(3528, 3, 'Enter subject name', 'Enter subject name', NULL, NULL),
(3529, 3, 'Subject added successfully', 'Subject added successfully', NULL, NULL),
(3530, 3, 'Edit subject', 'Edit subject', NULL, NULL),
(3531, 3, 'Deactive', 'Deactive', NULL, NULL),
(3532, 3, 'Manage Ebook', 'Manage Ebook', NULL, NULL),
(3533, 3, ' Admin revenue', ' Admin revenue', NULL, NULL),
(3534, 3, 'Instructor setting updated', 'Instructor setting updated', NULL, NULL),
(3535, 3, 'Applicant details', 'Applicant details', NULL, NULL),
(3536, 3, 'Application details', 'Application details', NULL, NULL),
(3537, 3, 'Approve', 'Approve', NULL, NULL),
(3538, 3, 'Applicant', 'Applicant', NULL, NULL),
(3539, 3, 'Application approve successfully', 'Application approve successfully', NULL, NULL),
(3540, 3, 'Payout report', 'Payout report', NULL, NULL),
(3541, 3, 'Payouts', 'Payouts', NULL, NULL),
(3542, 3, 'Request a new withdrawal', 'Request a new withdrawal', NULL, NULL),
(3543, 3, 'Request withdrawal', 'Request withdrawal', NULL, NULL),
(3544, 3, 'Available', 'Available', NULL, NULL),
(3545, 3, 'Total payout', 'Total payout', NULL, NULL),
(3546, 3, 'Requested', 'Requested', NULL, NULL),
(3547, 3, 'Payout setting', 'Payout setting', NULL, NULL),
(3548, 3, 'Be careful !!', 'Be careful !!', NULL, NULL),
(3549, 3, 'Just configure the payment gateway you want to use, leave the rest blank.', 'Just configure the payment gateway you want to use, leave the rest blank.', NULL, NULL),
(3550, 3, 'Also, make sure that you have configured your payment settings correctly', 'Also, make sure that you have configured your payment settings correctly', NULL, NULL),
(3551, 3, 'De Active', 'De Active', NULL, NULL),
(3552, 3, 'Added successfully', 'Added successfully', NULL, NULL),
(3553, 3, 'Profile updated successfully.', 'Profile updated successfully.', NULL, NULL),
(3554, 3, 'Remove from cart', 'Remove from cart', NULL, NULL),
(3555, 3, 'Camp Status', 'Camp Status', NULL, NULL),
(3556, 3, 'Camp Action', 'Camp Action', NULL, NULL),
(3557, 3, 'No Camp', 'No Camp', NULL, NULL),
(3558, 3, 'Submit Camp', 'Submit Camp', NULL, NULL),
(3559, 3, 'Are you sure you want to cancel this student\'s camp?', 'Are you sure you want to cancel this student\'s camp?', NULL, NULL),
(3560, 3, 'Are you sure you want to submit this student to camp?', 'Are you sure you want to submit this student to camp?', NULL, NULL),
(3561, 3, 'Camp submitted successfully', 'Camp submitted successfully', NULL, NULL),
(3562, 3, 'In Camp', 'In Camp', NULL, NULL),
(3563, 3, 'Since', 'Since', NULL, NULL),
(3564, 3, 'Cancel Camp', 'Cancel Camp', NULL, NULL),
(3565, 3, 'Camp cancelled successfully', 'Camp cancelled successfully', NULL, NULL),
(3566, 3, 'Bootcamp title', 'Bootcamp title', NULL, NULL),
(3567, 3, 'Add new module', 'Add new module', NULL, NULL),
(3568, 3, 'Add module', 'Add module', NULL, NULL),
(3569, 3, 'Module Restriction', 'Module Restriction', NULL, NULL),
(3570, 3, 'Until start date, keep this module locked.', 'Until start date, keep this module locked.', NULL, NULL),
(3571, 3, 'Keep this module open only within the selected date range.', 'Keep this module open only within the selected date range.', NULL, NULL),
(3572, 3, 'Validity', 'Validity', NULL, NULL),
(3573, 3, 'Module has been created.', 'Module has been created.', NULL, NULL),
(3574, 3, 'Add live class', 'Add live class', NULL, NULL),
(3575, 3, 'Sort module', 'Sort module', NULL, NULL),
(3576, 3, 'Available from : ', 'Available from : ', NULL, NULL),
(3577, 3, 'Edit module', 'Edit module', NULL, NULL),
(3578, 3, 'Delete module', 'Delete module', NULL, NULL),
(3579, 3, 'No live classes are available.', 'No live classes are available.', NULL, NULL),
(3580, 3, 'Upload File Type', 'Upload File Type', NULL, NULL),
(3581, 3, 'Resource', 'Resource', NULL, NULL),
(3582, 3, 'Class record', 'Class record', NULL, NULL),
(3583, 3, 'Files', 'Files', NULL, NULL),
(3584, 3, 'Bootcamp FAQ', 'Bootcamp FAQ', NULL, NULL),
(3585, 3, 'FAQ question', 'FAQ question', NULL, NULL),
(3586, 3, 'Provide requirements', 'Provide requirements', NULL, NULL),
(3587, 3, 'Provide outcomes', 'Provide outcomes', NULL, NULL),
(3588, 3, 'Discount type', 'Discount type', NULL, NULL),
(3589, 3, 'Bootcamp Details', 'Bootcamp Details', NULL, NULL),
(3590, 3, 'Module', 'Module', NULL, NULL),
(3591, 3, 'Bootcamp Overview', 'Bootcamp Overview', NULL, NULL),
(3592, 3, 'No classes available in this module.', 'No classes available in this module.', NULL, NULL),
(3593, 3, 'Enroll Bootcamp', 'Enroll Bootcamp', NULL, NULL),
(3594, 3, 'Contact Instructor', 'Contact Instructor', NULL, NULL),
(3595, 3, 'Share on social media', 'Share on social media', NULL, NULL),
(3596, 3, 'You own this item.', 'You own this item.', NULL, NULL),
(3597, 3, 'Professional', 'Professional', NULL, NULL),
(3598, 3, 'Diplomas', 'Diplomas', NULL, NULL),
(3599, 3, 'Expert-led programs — flexible, certified, and career-ready', 'Expert-led programs — flexible, certified, and career-ready', NULL, NULL),
(3600, 3, 'programs', 'programs', NULL, NULL),
(3601, 3, 'Live', 'Live', NULL, NULL),
(3602, 3, 'sessions', 'sessions', NULL, NULL),
(3603, 3, 'Certified', 'Certified', NULL, NULL),
(3604, 3, 'Newest first', 'Newest first', NULL, NULL),
(3605, 3, 'Most popular', 'Most popular', NULL, NULL),
(3606, 3, 'Price: low to high', 'Price: low to high', NULL, NULL),
(3607, 3, 'Search bootcamps...', 'Search bootcamps...', NULL, NULL),
(3608, 3, 'Classes', 'Classes', NULL, NULL),
(3609, 3, 'No reviews', 'No reviews', NULL, NULL),
(3610, 3, 'All levels', 'All levels', NULL, NULL),
(3611, 3, 'Academic Programs', 'Academic Programs', NULL, NULL),
(3612, 3, 'Professional Development', 'Professional Development', NULL, NULL),
(3613, 3, 'Industry-recognized programs designed by leading experts. Earn certifications that employers trust.', 'Industry-recognized programs designed by leading experts. Earn certifications that employers trust.', NULL, NULL),
(3614, 3, 'Featured tracks', 'Featured tracks', NULL, NULL),
(3615, 3, 'Data Science', 'Data Science', NULL, NULL),
(3616, 3, '12 programs · Certified', '12 programs · Certified', NULL, NULL),
(3617, 3, 'Web Development', 'Web Development', NULL, NULL),
(3618, 3, '9 programs · Live sessions', '9 programs · Live sessions', NULL, NULL),
(3619, 3, 'Cybersecurity', 'Cybersecurity', NULL, NULL),
(3620, 3, '6 programs · Advanced', '6 programs · Advanced', NULL, NULL),
(3621, 3, 'programs available', 'programs available', NULL, NULL),
(3622, 3, 'Price: high to low', 'Price: high to low', NULL, NULL),
(3623, 3, 'All programs', 'All programs', NULL, NULL),
(3624, 3, 'No cost', 'No cost', NULL, NULL),
(3625, 3, 'Enroll Free', 'Enroll Free', NULL, NULL),
(3626, 3, 'No reviews yet', 'No reviews yet', NULL, NULL),
(3627, 3, 'Certificate upon', 'Certificate upon', NULL, NULL),
(3628, 3, 'Diplomas & Masters', 'Diplomas & Masters', NULL, NULL),
(3629, 3, 'Professionally Accredited Programs', 'Professionally Accredited Programs', NULL, NULL),
(3630, 3, 'Academic Excellence Since 2010', 'Academic Excellence Since 2010', NULL, NULL),
(3631, 3, 'Industry-recognized programs crafted by world-class faculty. Earn credentials that open doors at top employers globally.', 'Industry-recognized programs crafted by world-class faculty. Earn credentials that open doors at top employers globally.', NULL, NULL),
(3632, 3, 'Alumni', 'Alumni', NULL, NULL),
(3633, 3, 'Internationally Accredited', 'Internationally Accredited', NULL, NULL),
(3634, 3, 'Expert Instructors', 'Expert Instructors', NULL, NULL),
(3635, 3, 'Live Online Classes', 'Live Online Classes', NULL, NULL),
(3636, 3, 'Satisfaction Guaranteed', 'Satisfaction Guaranteed', NULL, NULL),
(3637, 3, 'Business & MBA', 'Business & MBA', NULL, NULL),
(3638, 3, 'Grid view', 'Grid view', NULL, NULL),
(3639, 3, 'List view', 'List view', NULL, NULL),
(3640, 3, 'Earn a', 'Earn a', NULL, NULL),
(3641, 3, 'Professional Certificate', 'Professional Certificate', NULL, NULL),
(3642, 3, 'upon completion', 'upon completion', NULL, NULL),
(3643, 3, 'Search programs...', 'Search programs...', NULL, NULL),
(3644, 3, 'Active filters', 'Active filters', NULL, NULL),
(3645, 3, 'Under 4 weeks', 'Under 4 weeks', NULL, NULL),
(3646, 3, '1–3 months', '1–3 months', NULL, NULL),
(3647, 3, '3–6 months', '3–6 months', NULL, NULL),
(3648, 3, '6+ months', '6+ months', NULL, NULL),
(3649, 3, 'French', 'French', NULL, NULL),
(3650, 3, '+', '+', NULL, NULL),
(3651, 3, 'Sort by', 'Sort by', NULL, NULL),
(3652, 3, 'Professional Diploma Program', 'Professional Diploma Program', NULL, NULL),
(3653, 3, 'Modules', 'Modules', NULL, NULL),
(3654, 3, 'Watch preview', 'Watch preview', NULL, NULL),
(3655, 3, 'See less', 'See less', NULL, NULL),
(3656, 3, 'No requirements listed.', 'No requirements listed.', NULL, NULL),
(3657, 3, 'No outcomes listed.', 'No outcomes listed.', NULL, NULL),
(3658, 3, 'Enrollment Price', 'Enrollment Price', NULL, NULL),
(3659, 3, 'Enroll for Free →', 'Enroll for Free →', NULL, NULL),
(3660, 3, 'This bootcamp includes', 'This bootcamp includes', NULL, NULL),
(3661, 3, 'Live instructor-led sessions', 'Live instructor-led sessions', NULL, NULL),
(3662, 3, 'Structured learning modules', 'Structured learning modules', NULL, NULL),
(3663, 3, 'Class recordings', 'Class recordings', NULL, NULL),
(3664, 3, 'Professional certificate upon completion', 'Professional certificate upon completion', NULL, NULL),
(3665, 3, '30-Day Money-Back Guarantee', '30-Day Money-Back Guarantee', NULL, NULL),
(3666, 3, 'Not satisfied? Get a full refund within 30 days — no questions asked.', 'Not satisfied? Get a full refund within 30 days — no questions asked.', NULL, NULL),
(3667, 3, 'Share this bootcamp', 'Share this bootcamp', NULL, NULL),
(3668, 3, 'Program Description', 'Program Description', NULL, NULL),
(3669, 3, 'Common Questions', 'Common Questions', NULL, NULL),
(3670, 3, 'Requirements & Outcomes', 'Requirements & Outcomes', NULL, NULL),
(3671, 3, 'What you need · What you\'ll gain', 'What you need · What you\'ll gain', NULL, NULL),
(3672, 3, 'Prerequisites', 'Prerequisites', NULL, NULL),
(3673, 3, 'No requirements listed', 'No requirements listed', NULL, NULL),
(3674, 3, 'No outcomes listed', 'No outcomes listed', NULL, NULL),
(3675, 3, 'Live Sessions', 'Live Sessions', NULL, NULL),
(3676, 3, 'All modules & classes', 'All modules & classes', NULL, NULL),
(3677, 3, 'No classes in this module yet.', 'No classes in this module yet.', NULL, NULL),
(3678, 3, 'Professional certificate on completion', 'Professional certificate on completion', NULL, NULL),
(3679, 3, 'Bootcamp Instructor', 'Bootcamp Instructor', NULL, NULL),
(3680, 3, 'Instructor rating', 'Instructor rating', NULL, NULL),
(3681, 3, 'About the instructor', 'About the instructor', NULL, NULL),
(3682, 3, 'Full profile & other courses', 'Full profile & other courses', NULL, NULL),
(3683, 3, 'View Profile', 'View Profile', NULL, NULL),
(3684, 3, 'Course Content', 'Course Content', NULL, NULL),
(3685, 3, 'What You\'ll Learn', 'What You\'ll Learn', NULL, NULL),
(3686, 3, 'Read less', 'Read less', NULL, NULL),
(3687, 3, 'Downloadable resources', 'Downloadable resources', NULL, NULL),
(3688, 3, 'Bootcamp Programs', 'Bootcamp Programs', NULL, NULL),
(3689, 3, 'Advance your career with expert-led bootcamp programs designed for real-world impact.', 'Advance your career with expert-led bootcamp programs designed for real-world impact.', NULL, NULL),
(3690, 3, 'Search Programs', 'Search Programs', NULL, NULL),
(3691, 3, 'Search here...', 'Search here...', NULL, NULL),
(3692, 3, 'Internationally Accredited Programs', 'Internationally Accredited Programs', NULL, NULL),
(3693, 3, 'Professional Bootcamps', 'Professional Bootcamps', NULL, NULL),
(3694, 3, 'Accredited Programs', 'Accredited Programs', NULL, NULL),
(3695, 3, 'دبلومات وماجستير', 'دبلومات وماجستير', NULL, NULL),
(3696, 3, 'مهنية معتمدة', 'مهنية معتمدة', NULL, NULL),
(3697, 3, 'ارتقِ بمسارك المهني من خلال برامج أكاديمية متخصصة مصممة لتمكينك بالمعرفة والخبرة العملية', 'ارتقِ بمسارك المهني من خلال برامج أكاديمية متخصصة مصممة لتمكينك بالمعرفة والخبرة العملية', NULL, NULL),
(3698, 3, 'محتوى أكاديمي متطور', 'محتوى أكاديمي متطور', NULL, NULL),
(3699, 3, 'محاضرات أونلاين مباشرة', 'محاضرات أونلاين مباشرة', NULL, NULL),
(3700, 3, 'جدول زمني مرن', 'جدول زمني مرن', NULL, NULL),
(3701, 3, 'طالب حول العالم', 'طالب حول العالم', NULL, NULL),
(3702, 3, 'شهادات دولية', 'شهادات دولية', NULL, NULL),
(3703, 3, 'التفاصيل', 'التفاصيل', NULL, NULL),
(3704, 3, 'الدبلومات والماجستير', 'الدبلومات والماجستير', NULL, NULL),
(3705, 3, 'برامج معتمدة دولياً', 'برامج معتمدة دولياً', NULL, NULL),
(3706, 3, 'برامج الدبلومات المهنية', 'برامج الدبلومات المهنية', NULL, NULL),
(3707, 3, 'برامج متخصصة تلبي احتياجات سوق العمل', 'برامج متخصصة تلبي احتياجات سوق العمل', NULL, NULL),
(3708, 3, 'برامج متخصصة تلبي احتياجات سوق العمل وتطور مهاراتك', 'برامج متخصصة تلبي احتياجات سوق العمل وتطور مهاراتك', NULL, NULL),
(3709, 3, 'دبلومة مهنية', 'دبلومة مهنية', NULL, NULL),
(3710, 3, 'شهادة', 'شهادة', NULL, NULL),
(3711, 3, 'أونلاين', 'أونلاين', NULL, NULL),
(3712, 3, 'برامج الماجستير المهني', 'برامج الماجستير المهني', NULL, NULL),
(3713, 3, 'ارتقِ لمستوى أعلى من الخبرة والاحترافية', 'ارتقِ لمستوى أعلى من الخبرة والاحترافية', NULL, NULL),
(3714, 3, 'برامج ماجستير متخصصة بالتعاون مع أبرز الجامعات والمؤسسات الأكاديمية الدولية', 'برامج ماجستير متخصصة بالتعاون مع أبرز الجامعات والمؤسسات الأكاديمية الدولية', NULL, NULL),
(3715, 3, 'ماجستير إدارة الأعمال MBA', 'ماجستير إدارة الأعمال MBA', NULL, NULL),
(3716, 3, 'ماجستير التحول الرقمي', 'ماجستير التحول الرقمي', NULL, NULL),
(3717, 3, 'ماجستير القيادة والإدارة الاستراتيجية', 'ماجستير القيادة والإدارة الاستراتيجية', NULL, NULL),
(3718, 3, 'ماجستير الموارد البشرية', 'ماجستير الموارد البشرية', NULL, NULL),
(3719, 3, 'عرض جميع برامج الماجستير', 'عرض جميع برامج الماجستير', NULL, NULL),
(3720, 3, 'معتمد دولياً', 'معتمد دولياً', NULL, NULL),
(3721, 3, 'تقييم الخريجين', 'تقييم الخريجين', NULL, NULL),
(3722, 3, 'دعم مستمر', 'دعم مستمر', NULL, NULL),
(3723, 3, 'فريق دعم متاح على مدار الساعة', 'فريق دعم متاح على مدار الساعة', NULL, NULL),
(3724, 3, 'مدربون خبراء', 'مدربون خبراء', NULL, NULL),
(3725, 3, 'نخبة من أفضل المدربين في العالم', 'نخبة من أفضل المدربين في العالم', NULL, NULL),
(3726, 3, 'مرونة في التعلم', 'مرونة في التعلم', NULL, NULL),
(3727, 3, 'تعلّم في أي وقت ومن أي مكان', 'تعلّم في أي وقت ومن أي مكان', NULL, NULL),
(3728, 3, 'Free Program', 'Free Program', NULL, NULL),
(3729, 3, 'شهادة معتمدة', 'شهادة معتمدة', NULL, NULL),
(3730, 3, 'أونلاين مباشر', 'أونلاين مباشر', NULL, NULL),
(3731, 3, 'محاضرون خبراء', 'محاضرون خبراء', NULL, NULL),
(3732, 3, 'Program Overview', 'Program Overview', NULL, NULL),
(3733, 3, 'Detailed Description', 'Detailed Description', NULL, NULL),
(3734, 3, 'View full profile & all courses', 'View full profile & all courses', NULL, NULL),
(3735, 3, 'Enroll for Free', 'Enroll for Free', NULL, NULL),
(3736, 3, 'Not satisfied? Full refund within 30 days — no questions asked.', 'Not satisfied? Full refund within 30 days — no questions asked.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lesson_type` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `total_mark` int(11) DEFAULT NULL,
  `pass_mark` int(11) DEFAULT NULL,
  `retake` int(11) DEFAULT NULL,
  `lesson_src` varchar(255) DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `video_type` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `is_free` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `like_dislike_reviews`
--

CREATE TABLE `like_dislike_reviews` (
  `id` int(255) NOT NULL,
  `review_id` int(255) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `liked` int(255) DEFAULT 0,
  `disliked` int(255) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_classes`
--

CREATE TABLE `live_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_topic` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `class_date_and_time` timestamp NULL DEFAULT NULL,
  `additional_info` longtext DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `story_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `chat_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `privacy` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(255) NOT NULL,
  `thread_id` int(255) DEFAULT NULL,
  `sender_id` int(255) DEFAULT NULL,
  `receiver_id` int(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `read` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_threads`
--

CREATE TABLE `message_threads` (
  `id` int(255) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_one` int(255) DEFAULT NULL,
  `contact_two` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message_threads`
--

INSERT INTO `message_threads` (`id`, `code`, `contact_one`, `contact_two`, `created_at`, `updated_at`) VALUES
(1, 'f16FaCIy2DQnwMoxKXYu', 1, 2, '2026-01-08 04:12:07', '2026-01-07 23:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2026_01_08_000000_add_certificate_verification_fields', 1),
(2, '2026_01_09_000001_fix_builder_pages_is_permanent', 2),
(3, '2026_01_09_000002_update_languages_direction', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_editable` int(11) DEFAULT NULL,
  `addon_identifier` varchar(255) DEFAULT NULL,
  `user_types` varchar(400) DEFAULT NULL,
  `system_notification` varchar(400) DEFAULT NULL,
  `email_notification` varchar(400) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `template` longtext DEFAULT NULL,
  `setting_title` varchar(255) DEFAULT NULL,
  `setting_sub_title` varchar(255) DEFAULT NULL,
  `date_updated` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `type`, `is_editable`, `addon_identifier`, `user_types`, `system_notification`, `email_notification`, `subject`, `template`, `setting_title`, `setting_sub_title`, `date_updated`, `created_at`, `updated_at`) VALUES
(1, 'edit_email_template', 1, NULL, '[\"admin\",\"user\"]', '{\"admin\":\"1\",\"user\":\"1\"}', '{\"admin\":\"1\",\"user\":\"0\"}', '{\"admin\":\"New user registered\",\"user\":\"Registered successfully\"}', '{\"admin\":\"New user registered [user_name] \\r\\n<br>User email: <b>[user_email]<\\/b>\",\"user\":\"You have successfully registered with us at [system_name].\"}', 'New user registration', 'Get notified when a new user signs up', '1693215071', '2023-11-02 11:13:07', '2023-12-05 01:23:15'),
(2, 'email_verification', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Email verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [email_verification_code]\"}', 'Email verification', 'It is permanently enabled for student email verification.', '1684135777', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(3, 'forget_password_mail', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Forgot password verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [system_name][verification_link][minutes]\"}', 'Forgot password mail', 'It is permanently enabled for student email verification.', '1684145383', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(4, 'new_device_login_confirmation', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Please confirm your login\"}', '{\"user\":\"Have you tried logging in with a different device? Confirm using the verification code. Your verification code is [verification_code]. Remember that you will lose access to your previous device after logging in to the new device <b>[user_agent]<\\/b>.<br> Use the verification code within [minutes] minutes\"}', 'Account security alert', 'Send verification code for login from a new device', '1684145383', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(6, 'course_purchase', 1, NULL, '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course has been sold\",\"instructor\":\"A new course has been sold\",\"student\":\"You have purchased a new course\"}', '{\"admin\":\"<p>Course title: [course_title]<\\/p><p>Student: [student_name]\\r\\n<\\/p><p>Paid amount: [paid_amount]<\\/p><p>Instructor: [instructor_name]<\\/p>\",\"instructor\":\"Course title: [course_title]\\r\\nStudent: [student_name]\\r\\nPaid amount: [paid_amount]\",\"student\":\"Course title: [course_title]\\r\\nPaid amount: [paid_amount]\\r\\nInstructor: [instructor_name]\"}', 'Course purchase notification', 'Stay up-to-date on student course purchases.', '1684303456', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(7, 'course_completion_mail', 1, NULL, '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Course completion\",\"student\":\"You have completed a new course\"}', '{\"instructor\":\"Course completed [course_title]\\r\\nStudent: [student_name]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\"}', 'Course completion mail', 'Stay up to date on student course completion.', '1684303457', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(8, 'certificate_eligibility', 1, 'certificate', '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Certificate eligibility\",\"student\":\"certificate eligibility\"}', '{\"instructor\":\"Course: [course_title]\\r\\nStudent: [student_name]\\r\\nCertificate link: [certificate_link]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\\r\\nCertificate link: [certificate_link]\"}', 'Course eligibility notification', 'Stay up to date on course certificate eligibility.', '1684303460', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(9, 'offline_payment_suspended_mail', 1, 'offline_payment', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"0\"}', '{\"student\":\"Your payment has been suspended\"}', '{\"student\":\"<p>Your offline payment has been <b style=\'color: red;\'>suspended</b> !</p><p>Please provide a valid document of your payment.</p>\"}', 'Offline payment suspended mail', 'If students provides fake information, notify them of the suspension', '1684303463', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(10, 'bundle_purchase', 1, 'course_bundle', '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course bundle has been sold \",\"instructor\":\"A new course bundle has been sold \",\"student\":\"You have purchased a new course bundle test\"}', '{\"admin\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name]\\r\\nInstructor: [instructor_name] \",\"instructor\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name] \",\"student\":\"Course bundle: [bundle_title]\\r\\nInstructor: [instructor_name] \"}', 'Course bundle purchase notification', 'Stay up-to-date on student course bundle purchases.', '1684303467', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(13, 'add_new_user_as_affiliator', 0, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"Congratulation ! You are assigned as an affiliator\"}', '{\"affiliator\":\"You are assigned as a website Affiliator.\\r\\nWebsite: [website_link]\\r\\n<br>\\r\\nPassword: [password]\"}', 'New user added as affiliator', 'Send account information to the new user', '1684135777', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(14, 'affiliator_approval_notification', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', 'Affiliate approval notification', 'Send affiliate approval mail to the user account', '1684303472', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(15, 'affiliator_request_cancellation', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused.\"}', 'Affiliator request cancellation', 'Send mail, when you cancel the affiliation request', '1684303473', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(16, 'affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"admin\",\"affiliator\"]', '{\"admin\":\"1\",\"affiliator\":\"1\"}', '{\"admin\":\"0\",\"affiliator\":\"0\"}', '{\"admin\":\"New money withdrawal request\",\"affiliator\":\"New money withdrawal request\"}', '{\"admin\":\"New money withdrawal request by [\'user_name] [amount]\",\"affiliator\":\"Your Withdrawal request of [amount] has been sent to authority\"}', 'Affiliation money withdrawal request', 'Send mail, when the users request the withdrawal of money', '1684303476', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(17, 'approval_affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congartulation ! Your withdrawal request has been approved\"}', '{\"affiliator\":\"Congartulation ! Your payment request has been approved.\"}', 'Approval of withdrawal request of affiliation', 'Send mail, when you approved the affiliation withdrawal request', '1684303480', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(18, 'course_gift', 1, NULL, '[\"payer\",\"receiver\"]', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"You have gift a course\",\"receiver\":\"You have received a course gift\"}', '{\"payer\":\"You have gift a course to [user_name] [course_title][instructor]\",\"receiver\":\"You have received a course gift by [payer][course_title][instructor]\"}', 'Course gift notification', 'Notify users after course gift', '1691818623', '2023-11-02 11:13:07', '2023-11-06 05:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `items` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `bank_no` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `status` int(255) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keys` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `test_mode` int(11) DEFAULT NULL,
  `is_addon` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `model_name`, `description`, `keys`, `status`, `test_mode`, `is_addon`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'USD', 'Paypal', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 1, 1, 0, '2023-06-24 03:51:49', '2026-01-08 16:03:29'),
(2, 'stripe', 'USD', 'Stripe', 'StripePay', '', '{\"public_key\":\"pk_test_c6VvBEbwHFdulFZ62q1IQrar\",\"secret_key\":\"sk_test_9IMkiM6Ykxr1LCe2dJ3PgaxS\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 1, 1, 0, '2023-06-24 03:51:49', '2023-10-30 01:33:32'),
(3, 'razorpay', 'INR', 'Razorpay', 'Razorpay', '', '{\"public_key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\"}', 1, 1, 0, '2023-06-24 03:51:49', '2024-09-10 22:41:31'),
(4, 'flutterwave', 'USD', 'Flutterwave', 'Flutterwave', '', '{\"public_key\":\"FLWPUBK_TEST-48dfbeb50344ecd8bc075b4ffe9ba266-X\",\"secret_key\":\"FLWSECK_TEST-1691582e23bd6ee4fb04213ec0b862dd-X\"}', 1, 1, 0, '2023-06-24 03:51:49', '2023-10-30 01:39:58'),
(5, 'paytm', 'INR', 'Paytm', 'Paytm', '', '{\"paytm_merchant_key\":\"NLcIjJn!!lkjDZQN\",\"paytm_merchant_mid\":\"YEPkQv98980476147162\",\"paytm_merchant_website\":\"WEBSTAGING\",\"industry_type_id\":\"Retail\",\"channel_id\":\"WEB\"}', 1, 1, 0, '2023-06-24 03:51:49', '2024-10-30 04:17:36'),
(6, 'offline', 'USD', 'Offline Payment', 'OfflinePayment', '', '{\"bank_information\":\"Write your bank information and instructions here\"}', 1, 0, 0, '2023-06-24 03:51:49', '2024-09-24 01:00:18'),
(7, 'paystack', 'NGN', 'Paystack', 'Paystack', NULL, '{\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxxx\"}', 1, 1, 0, '2024-10-03 11:05:03', '2024-10-03 11:05:03'),
(8, 'sslcommerz', 'BDT', 'SSLCommerz', 'Sslcommerz', NULL, '{\"store_key\":\"creatxxxxxxxxxxx\",\"store_password\":\"creatxxxxxxxx@ssl\",\"store_live_key\":\"st_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"store_live_password\":\"sp_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"sslcz_testmode\":\"true\",\"is_localhost\":\"true\",\"sslcz_live_testmode\":\"false\",\"is_live_localhost\":\"false\"}', 1, 1, 0, '2025-03-23 11:50:40', '2025-03-23 11:50:40'),
(9, 'aamarpay', 'BDT', 'Aamarpay', 'Aamarpay', NULL, '{\"store_id\":\"xxxxxxxxxxxxx\",\"signature_key\":\"xxxxxxxxxxxxxxxxxxx\",\"store_live_id\":\"st_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"signature_live_key\":\"si_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 1, 1, 0, '2025-03-23 11:50:40', '2025-03-23 11:50:40'),
(10, 'doku', 'IDR', 'Doku', 'Doku', NULL, '{\"client_id\":\"BRN-xxxx-xxxxxxxxxxxxx\",\"secret_test_key\":\"SK-xxxxxxxxxxxxxxxxxxxx\",\"public_test_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"}', 1, 1, 0, '2025-03-23 11:50:40', '2025-07-23 14:03:52'),
(11, 'maxicash', 'USD', 'Maxicash', 'Maxicash', NULL, '{\"merchant_id\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"merchant_password\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"merchant_live_id\":\"mr_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"merchant_live_password\":\"mp_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 1, 1, 0, '2025-03-23 11:50:40', '2025-03-23 11:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `payment_histories`
--

CREATE TABLE `payment_histories` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) DEFAULT NULL,
  `instructor_revenue` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0,
  `transaction_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `player_settings`
--

CREATE TABLE `player_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_settings`
--

INSERT INTO `player_settings` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'watermark_width', '100', '2024-08-27 11:25:27', '2026-01-08 04:07:39'),
(2, 'watermark_height', '24', '2024-08-27 11:25:27', '2026-01-08 04:07:39'),
(3, 'watermark_top', '10', '2024-08-27 11:25:27', '2026-01-08 04:07:39'),
(4, 'watermark_left', '10', '2024-08-27 11:25:27', '2026-01-08 04:07:39'),
(5, 'watermark_opacity', '30', '2024-08-27 11:25:27', '2026-01-08 04:07:39'),
(6, 'watermark_type', 'js', '2024-08-27 11:25:27', '2026-01-08 04:07:39'),
(7, 'watermark_logo', 'uploads/watermark/watermark-1767827259.png', '2024-08-27 11:25:27', '2026-01-08 04:07:39'),
(8, 'animation_speed', '1000', '2024-10-30 11:38:00', '2026-01-08 04:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `answer` mediumtext DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `section_id` int(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `total_mark` int(255) DEFAULT NULL,
  `pass_mark` int(255) DEFAULT NULL,
  `drip_rule` int(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `attempts` longtext DEFAULT NULL,
  `sort` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_submissions`
--

CREATE TABLE `quiz_submissions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `correct_answer` longtext DEFAULT NULL,
  `wrong_answer` longtext DEFAULT NULL,
  `submits` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(255) UNSIGNED NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `course_id` int(255) DEFAULT NULL,
  `rating` int(255) DEFAULT NULL,
  `review_type` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sort` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `user_id`, `course_id`, `title`, `sort`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'مدخل إلى العلوم النفسية', 1, '2026-03-04 16:53:51', '2026-03-04 16:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `seo_fields`
--

CREATE TABLE `seo_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(20) DEFAULT NULL,
  `blog_id` int(20) DEFAULT NULL,
  `bootcamp_id` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `name_route` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_robot` text DEFAULT NULL,
  `canonical_url` varchar(255) DEFAULT NULL,
  `custom_url` varchar(255) DEFAULT NULL,
  `json_ld` longtext DEFAULT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_fields`
--

INSERT INTO `seo_fields` (`id`, `course_id`, `blog_id`, `bootcamp_id`, `route`, `name_route`, `meta_title`, `meta_keywords`, `meta_description`, `meta_robot`, `canonical_url`, `custom_url`, `json_ld`, `og_title`, `og_description`, `og_image`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Home', 'home', 'Home page', NULL, 'Home page for academy Seo', 'xxxxxx', 'https://academy.com', 'https://academy.com', '<script type=\"application/ld+json\"> {   \"@context\": \"http://schema.org\",   \"@type\": \"WebSite\",   \"name\": \"CodeCanyon\",   \"url\": \"https://codecanyon.net\" } </script>', 'ooooooooo', 'zzzzzzzzzz', 'OG-home.jpg', NULL, NULL),
(2, NULL, NULL, NULL, 'Compare', 'compare', 'Course compare', '[{\"value\":\"course\"},{\"value\":\"compare\"},{\"value\":\"difference\"}]', 'Course compare', 'xxxxxx', 'https:://academy.com/course-compare', 'https:://academy.com/course-compare', NULL, 'Course compare', 'Course compare', '2-customer-php-version.PNG', NULL, NULL),
(3, NULL, NULL, NULL, 'Privacy', 'privacy.policy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OG-documantation.jpg', NULL, NULL),
(4, NULL, NULL, NULL, 'Refund', 'refund.policy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OG-Blog.jpg', NULL, NULL),
(5, NULL, NULL, NULL, 'Terms- condition', 'terms.condition', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OG-service.jpg', NULL, NULL),
(6, NULL, NULL, NULL, 'Faq', 'faq', 'Creative elements - ui subscription system', '[{\"value\":\"ui kits\"},{\"value\":\"website template\"},{\"value\":\"video template\"}]', 'Best and affordable ui kit subscription system', NULL, NULL, NULL, NULL, NULL, NULL, 'OG-elements home.jpg', NULL, NULL),
(7, NULL, NULL, NULL, 'Cookie policy', 'cookie.policy', 'Academy LMS - Cookie policy', '[{\"value\":\"ui kits\"},{\"value\":\"website template\"},{\"value\":\"video template\"}]', 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, 'OG-elements home.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'language', 'english', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(2, 'system_name', 'أكاديمية بروز', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(3, 'system_title', 'كورسات ودورات تدريبية', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(4, 'system_email', 'academy@example.com', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(5, 'address', 'Palestine', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(6, 'phone', '+143-52-9933631', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(7, 'purchase_code', 'your-purchase-code', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(10, 'youtube_api_key', 'youtube-and-google-drive-api-key', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(11, 'vimeo_api_key', 'vimeo-api-key', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(12, 'slogan', 'A course based video CMS', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(13, 'text_align', NULL, '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(14, 'allow_instructor', '0', '2023-10-29 05:36:40', '2026-03-04 17:14:22'),
(15, 'instructor_revenue', '70', '2023-10-29 05:36:40', '2023-12-05 23:04:11'),
(16, 'system_currency', 'USD', '2023-10-29 05:36:40', '2026-01-08 16:02:46'),
(17, 'paypal_currency', 'USD', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(18, 'stripe_currency', 'USD', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(19, 'author', 'بروز', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(20, 'currency_position', 'right-space', '2023-10-29 05:36:40', '2026-01-08 16:02:46'),
(21, 'website_description', 'Talemy is your ideal education the WordPress theme for sharing and selling your knowledge online. Teach what you love. Talemy gives you the tools.', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,Academy LMS', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(23, 'footer_text', 'zynqor', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(24, 'footer_link', 'https://prominence.academy', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(25, 'protocol', 'smtp', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(26, 'smtp_host', 'smtp.gmail.com', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(27, 'smtp_port', '465', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(28, 'smtp_user', 'your-email-address', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(29, 'smtp_pass', 'enter-your-smtp-password', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(30, 'version', '1.9', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(31, 'student_email_verification', '0', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor. dfdfs', '2023-10-29 05:36:40', '2026-03-04 17:14:22'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(34, 'razorpay_currency', 'USD', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(35, 'fb_app_id', 'fb-app-id', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(36, 'fb_app_secret', 'fb-app-secret', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(37, 'fb_social_login', '0', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(38, 'drip_content_settings', '{\"lesson_completion_role\":\"duration\",\"minimum_duration\":\"15:30:00\",\"minimum_percentage\":\"60\",\"locked_lesson_message\":\"<h3 xss=\\\"removed\\\" style=\\\"text-align: center; \\\"><span xss=\\\"removed\\\" style=\\\"\\\">Permission denied!<\\/span><\\/h3><p xss=\\\"removed\\\" style=\\\"text-align: center; \\\"><span xss=\\\"removed\\\">This course supports drip content, so you must complete the previous lessons.<\\/span><\\/p>\",\"files\":null}', '2023-10-29 05:36:40', '2023-10-29 05:26:38'),
(41, 'course_accessibility', 'publicly', '2023-10-29 05:36:40', '2023-12-05 00:54:45'),
(42, 'smtp_crypto', 'ssl', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(48, 'course_selling_tax', '0', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(49, 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(50, 'ccavenue_currency', 'INR', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(51, 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(52, 'iyzico_currency', 'TRY', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(53, 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(54, 'paystack_currency', 'NGN', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(55, 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(57, 'google_analytics_id', NULL, '2023-10-29 05:36:40', '2023-12-05 00:54:45'),
(58, 'meta_pixel_id', NULL, '2023-10-29 05:36:40', '2023-12-05 00:54:45'),
(59, 'smtp_from_email', 'your-email-address', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(61, 'language_dirs', '{\"english\":\"ltr\",\"hindi\":\"rtl\",\"arabic\":\"rtl\"}', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(62, 'certificate_template', 'uploads/certificate-template/certificate-default.png', '2024-03-12 08:17:10', '2024-08-27 05:21:49'),
(63, 'certificate_builder_content', '<style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style>\n        \n\n                                <style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style>\n        \n\n                                <style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style>\n        \n\n                                <style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style>\n        \n\n                                <style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style>\n        \n\n                                \n<style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><div id=\"certificate-layout-module\" class=\"certificate-layout-module resizeable-canvas draggable ui-draggable ui-draggable-handle ui-resizable hidden-position\" style=\"position: relative; width: 1069.2px; height: 755.055px; left: 0px; top: -1px;\" bis_skin_checked=\"1\">\n                <img class=\"certificate-template\" style=\"width: 100%; height: 100%;\" src=\"http://localhost/academy-laravel/academy_1.4/public/uploads/certificate-template/certificate-default.png\"><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 16px; top: 114px; left: 93px; width: 84.8906px; font-family: &quot;auto&quot;; padding: 5px !important; height: 80px;\" bis_skin_checked=\"1\">\n                {qr_code}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 18px; top: 546px; left: 125px; width: 210.031px; font-family: &quot;Pinyon Script&quot;; padding: 5px !important; height: 37px;\" bis_skin_checked=\"1\">\n                {instructor_name}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 18px; top: 546px; left: 724px; width: 210.188px; font-family: &quot;Pinyon Script&quot;; padding: 5px !important; height: 39px;\" bis_skin_checked=\"1\">\n                {student_name}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 16px; top: 545px; left: 442px; width: min-content; font-family: &quot;auto&quot;; padding: 5px !important;\" bis_skin_checked=\"1\">\n                {course_completion_date}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 12px; top: 665px; left: 457px; width: min-content; font-family: &quot;auto&quot;; padding: 5px !important;\" bis_skin_checked=\"1\">\n                {certificate_download_date}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute;font-size: 30px;top: 136px;left: 264px;width: 534.336px;padding: 5px !important;height: 62px;font-family: auto;\" bis_skin_checked=\"1\">\n                COURSE COMPLETION CERTIFICATE\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 18px; top: 211px; left: 205px; width: 664.5px; font-family: &quot;Pinyon Script&quot;; padding: 5px !important; height: 98px;\" bis_skin_checked=\"1\">\n                This certificate is awarded to {student_name} in recognition of their successful completion of Course on {course_completion_date}. Your hard work, dedication, and commitment to learning have enabled you to achieve this milestone, and we are proud to recognize your accomplishment.\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 18px; top: 316px; left: 315px; width: 428.25px; font-family: &quot;auto&quot;; padding: 5px !important; height: 48px;\" bis_skin_checked=\"1\">\n                {course_title}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div></div>', '2024-03-12 08:17:50', '2024-10-29 01:43:51'),
(64, '_token', 'tEYJPyWB4tjFp0tz78j0gDLj07tLXnw5hVpU5mX7', '2024-03-12 08:18:24', '2024-08-27 05:25:46'),
(65, 'zoom_account_email', 'example@gmail.com', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(66, 'zoom_account_id', 'RG4XYxxxxxxxxxxxxxxx', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(67, 'zoom_client_id', 'mFgJ4xxxxxxxxxxxxxxx', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(68, 'zoom_client_secret', 'OZ6m9xxxxxxxxxxxxxxxx', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(69, 'zoom_web_sdk', 'active', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(70, 'zoom_sdk_client_id', '7M6Wxxxxxxxxxxxx', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(71, 'zoom_sdk_client_secret', 'z1Nzxxxxxxxxxxxxxx', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(72, 'open_ai_model', 'gpt-3.5-turbo-0125', '2024-03-12 09:11:12', '2024-08-27 05:25:46'),
(73, 'open_ai_max_token', '100', '2024-03-12 09:11:12', '2024-08-27 05:25:46'),
(74, 'open_ai_secret_key', 'sk-JPYxxxxxxxxxxxxxxxxxxx', '2024-03-12 09:11:12', '2024-08-27 05:25:46'),
(75, 'timezone', 'Africa/Cairo', '2024-07-01 02:06:24', '2026-01-08 15:12:16'),
(76, 'device_limitation', '10', '2023-10-29 05:36:40', '2026-01-08 15:12:16'),
(77, 'amazon_s3', '{\"active\":null,\"AWS_ACCESS_KEY_ID\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"AWS_SECRET_ACCESS_KEY\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"AWS_DEFAULT_REGION\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"AWS_BUCKET\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"}', '2025-07-23 14:03:52', '2025-07-23 14:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `submitted_assignments`
--

CREATE TABLE `submitted_assignments` (
  `id` bigint(255) NOT NULL,
  `user_id` bigint(255) DEFAULT NULL,
  `assignment_id` bigint(255) DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `marks` int(255) DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `status` int(255) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_package_members`
--

CREATE TABLE `team_package_members` (
  `id` int(11) NOT NULL,
  `leader_id` int(11) DEFAULT NULL,
  `team_package_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_package_purchases`
--

CREATE TABLE `team_package_purchases` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `admin_revenue` double DEFAULT NULL,
  `instructor_revenue` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_training_packages`
--

CREATE TABLE `team_training_packages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `course_privacy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `allocation` int(11) DEFAULT NULL,
  `expiry_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(20) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_categories`
--

CREATE TABLE `ticket_categories` (
  `id` int(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_categories`
--

INSERT INTO `ticket_categories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A1', '1', '2026-03-04 11:23:46', '2026-03-04 11:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_faqs`
--

CREATE TABLE `ticket_faqs` (
  `id` int(20) NOT NULL,
  `question` longtext DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_macros`
--

CREATE TABLE `ticket_macros` (
  `id` int(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(20) NOT NULL,
  `ticket_thread_code` int(11) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `file` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_priorities`
--

CREATE TABLE `ticket_priorities` (
  `id` int(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_status`
--

CREATE TABLE `ticket_status` (
  `id` int(10) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` int(20) DEFAULT NULL,
  `default_view` int(20) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor_bookings`
--

CREATE TABLE `tutor_bookings` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `joining_data` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `admin_revenue` double DEFAULT NULL,
  `instructor_revenue` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor_can_teach`
--

CREATE TABLE `tutor_can_teach` (
  `id` int(11) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor_categories`
--

CREATE TABLE `tutor_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor_reviews`
--

CREATE TABLE `tutor_reviews` (
  `id` int(11) NOT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor_schedules`
--

CREATE TABLE `tutor_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `tutor_id` int(11) DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `tution_type` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `booking_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor_subjects`
--

CREATE TABLE `tutor_subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tutor_subjects`
--

INSERT INTO `tutor_subjects` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'العلاج المعرفي السلوكي', 'العلاج-المعرفي-السلوكي', '1', '2026-03-04 16:56:27', '2026-03-04 16:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `educations` longtext DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `paymentkeys` longtext DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `camp` tinyint(1) NOT NULL DEFAULT 0,
  `camp_requested_at` timestamp NULL DEFAULT NULL,
  `camp_approval_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `email`, `status`, `name`, `phone`, `website`, `skills`, `facebook`, `twitter`, `linkedin`, `address`, `about`, `biography`, `educations`, `photo`, `email_verified_at`, `password`, `remember_token`, `paymentkeys`, `video_url`, `created_at`, `updated_at`, `camp`, `camp_requested_at`, `camp_approval_at`) VALUES
(1, 'admin', 'admin@prominence.academy', 1, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-07 21:43:03', '$2y$10$8Tyz69kTB5bIbwrx5Pl8ouaPCkDZo5Y5iH4YFv.D/Jh6nqMT4pheS', NULL, NULL, NULL, '2026-01-07 21:20:22', '2026-01-07 21:43:03', 0, NULL, NULL),
(2, 'student', 'mohamedsaied.m20@gmail.com', 1, 'mohamed saeed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-07 21:50:29', '$2y$10$3Mq83IawfXB4LjcgIH2YWecb4xIAcEcYS25RJSifz3JplUhchAHZy', NULL, NULL, NULL, '2026-01-07 21:50:29', '2026-04-25 21:39:05', 1, '2026-04-25 21:39:05', '2026-04-25 21:39:05'),
(3, 'instructor', 'admin@example.com', 1, 'MIHAMMAD SAEED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-09 17:55:12', '$2y$10$EQHzgZcKDLUXAPxhO7IlYODT88lrsl21xpS8VsZOyWDEID4l9ubXS', NULL, NULL, NULL, '2026-01-09 17:55:12', '2026-01-09 17:55:12', 0, NULL, NULL),
(4, 'student', 'zynqoretech@gmail.com', 1, 'mohammed ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-04 00:41:35', '$2y$10$yoLiCZlvM2aEINtt03UM3uM/CkY9H3pQMr0RTheB6EtzsibqLf3hK', NULL, NULL, NULL, '2026-02-04 00:41:35', '2026-02-04 00:41:35', 0, NULL, NULL),
(5, 'instructor', 'huda.armosh@outlook.com', 1, 'مدرس أول', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-04 17:02:57', '$2y$10$YtlRj4sQS5hJQYRjKfioYeNnEnidihKP2xuTZ4/33Z7YULw9Wm6VW', NULL, NULL, NULL, '2026-03-04 17:02:57', '2026-03-04 17:16:16', 0, NULL, NULL),
(6, 'student', 'nsbry8659@gmail.com', 1, 'ناصر أبو طاقية', '0597243077', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-02 03:42:57', '$2y$10$dMs22AGmWdDo1DB89Ug00.RjOffoNEcAoA16RUax3vGPE8pKL7GUu', NULL, NULL, NULL, '2026-04-02 03:42:57', '2026-04-02 03:45:12', 0, NULL, NULL),
(7, 'student', 'admin@Zynqore.academy', 1, 'Zynqore tech', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-24 22:13:00', '$2y$10$ve55H8Louv6.z0aqQk9ur.g5PzSqW4Zx60PJUT7ctSmwXTxZdMJ5u', NULL, NULL, NULL, '2026-04-24 22:13:00', '2026-04-24 22:13:00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_reviews`
--

CREATE TABLE `user_reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watch_durations`
--

CREATE TABLE `watch_durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(11) DEFAULT NULL,
  `watched_counter` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories` (
  `id` int(255) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `completed_lesson` longtext DEFAULT NULL,
  `watching_lesson_id` varchar(11) DEFAULT NULL,
  `course_progress` int(11) DEFAULT NULL,
  `completed_date` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `course_id` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addtocarts`
--
ALTER TABLE `addtocarts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_likes`
--
ALTER TABLE `blog_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bootcamps`
--
ALTER TABLE `bootcamps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bootcamp_categories`
--
ALTER TABLE `bootcamp_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bootcamp_live_classes`
--
ALTER TABLE `bootcamp_live_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bootcamp_modules`
--
ALTER TABLE `bootcamp_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bootcamp_purchases`
--
ALTER TABLE `bootcamp_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bootcamp_resources`
--
ALTER TABLE `bootcamp_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `builder_pages`
--
ALTER TABLE `builder_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificates_identifier_unique` (`identifier`),
  ADD UNIQUE KEY `certificates_certificate_number_unique` (`certificate_number`),
  ADD KEY `certificates_user_id_index` (`user_id`),
  ADD KEY `certificates_course_id_index` (`course_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_code_unique` (`code`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_user_id_index` (`user_id`),
  ADD KEY `courses_category_id_index` (`category_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_ips`
--
ALTER TABLE `device_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebooks`
--
ALTER TABLE `ebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebook_categories`
--
ALTER TABLE `ebook_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebook_purchases`
--
ALTER TABLE `ebook_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebook_reviews`
--
ALTER TABLE `ebook_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollments_user_id_index` (`user_id`),
  ADD KEY `enrollments_course_id_index` (`course_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_reviews`
--
ALTER TABLE `instructor_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledge_base_topicks`
--
ALTER TABLE `knowledge_base_topicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_phrases`
--
ALTER TABLE `language_phrases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_phrases_language_id_index` (`language_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_user_id_index` (`user_id`),
  ADD KEY `lessons_course_id_index` (`course_id`),
  ADD KEY `lessons_section_id_index` (`section_id`);

--
-- Indexes for table `like_dislike_reviews`
--
ALTER TABLE `like_dislike_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_classes`
--
ALTER TABLE `live_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_classes_user_id_index` (`user_id`),
  ADD KEY `live_classes_course_id_index` (`course_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_threads`
--
ALTER TABLE `message_threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_thread_sender_foreign` (`contact_one`),
  ADD KEY `message_thread_receiver_foreign` (`contact_two`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `player_settings`
--
ALTER TABLE `player_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_submissions`
--
ALTER TABLE `quiz_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_user_id_index` (`user_id`),
  ADD KEY `sections_course_id_index` (`course_id`);

--
-- Indexes for table `seo_fields`
--
ALTER TABLE `seo_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submitted_assignments`
--
ALTER TABLE `submitted_assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_package_members`
--
ALTER TABLE `team_package_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_package_purchases`
--
ALTER TABLE `team_package_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_training_packages`
--
ALTER TABLE `team_training_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_categories`
--
ALTER TABLE `ticket_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_faqs`
--
ALTER TABLE `ticket_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_macros`
--
ALTER TABLE `ticket_macros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_status`
--
ALTER TABLE `ticket_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_bookings`
--
ALTER TABLE `tutor_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_can_teach`
--
ALTER TABLE `tutor_can_teach`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_categories`
--
ALTER TABLE `tutor_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_reviews`
--
ALTER TABLE `tutor_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_schedules`
--
ALTER TABLE `tutor_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_subjects`
--
ALTER TABLE `tutor_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_reviews`
--
ALTER TABLE `user_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watch_durations`
--
ALTER TABLE `watch_durations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addtocarts`
--
ALTER TABLE `addtocarts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_likes`
--
ALTER TABLE `blog_likes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bootcamps`
--
ALTER TABLE `bootcamps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bootcamp_categories`
--
ALTER TABLE `bootcamp_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bootcamp_live_classes`
--
ALTER TABLE `bootcamp_live_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bootcamp_modules`
--
ALTER TABLE `bootcamp_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bootcamp_purchases`
--
ALTER TABLE `bootcamp_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bootcamp_resources`
--
ALTER TABLE `bootcamp_resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `builder_pages`
--
ALTER TABLE `builder_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_ips`
--
ALTER TABLE `device_ips`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ebooks`
--
ALTER TABLE `ebooks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ebook_categories`
--
ALTER TABLE `ebook_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ebook_purchases`
--
ALTER TABLE `ebook_purchases`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ebook_reviews`
--
ALTER TABLE `ebook_reviews`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `instructor_reviews`
--
ALTER TABLE `instructor_reviews`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `knowledge_base_topicks`
--
ALTER TABLE `knowledge_base_topicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `language_phrases`
--
ALTER TABLE `language_phrases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3737;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_dislike_reviews`
--
ALTER TABLE `like_dislike_reviews`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_classes`
--
ALTER TABLE `live_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_threads`
--
ALTER TABLE `message_threads`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_histories`
--
ALTER TABLE `payment_histories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_settings`
--
ALTER TABLE `player_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_submissions`
--
ALTER TABLE `quiz_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo_fields`
--
ALTER TABLE `seo_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `submitted_assignments`
--
ALTER TABLE `submitted_assignments`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_package_members`
--
ALTER TABLE `team_package_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_package_purchases`
--
ALTER TABLE `team_package_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_training_packages`
--
ALTER TABLE `team_training_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_categories`
--
ALTER TABLE `ticket_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_faqs`
--
ALTER TABLE `ticket_faqs`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_macros`
--
ALTER TABLE `ticket_macros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_status`
--
ALTER TABLE `ticket_status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutor_bookings`
--
ALTER TABLE `tutor_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutor_can_teach`
--
ALTER TABLE `tutor_can_teach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutor_categories`
--
ALTER TABLE `tutor_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutor_reviews`
--
ALTER TABLE `tutor_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutor_schedules`
--
ALTER TABLE `tutor_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutor_subjects`
--
ALTER TABLE `tutor_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_reviews`
--
ALTER TABLE `user_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watch_durations`
--
ALTER TABLE `watch_durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
