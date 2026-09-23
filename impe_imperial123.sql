-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2026 at 03:10 PM
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
-- Database: `impe_imperial123`
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
(1, 13, '01061198142', 'hi i would like to join as teash', 'uploads/applications/13K0aOL8YdJhnAJETgsxFS.jpg', 1, '2026-01-13 09:38:30', '2026-01-13 15:42:54');

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
(1, 1, '1', 'ابدأ التعلم عن بعد مع إمبريال أكاديمي', 'ابدأ-التعلم-عن-بعد-مع-إمبريال-أكاديمي', 'منصة إمبريال أكاديمي تقدم برامج الماجستير والدكتوراه المهنية عبر الإنترنت لمساعدتك على التميز في مسيرتك المهنية. تعلم من أفضل الخبراء في مجالك.', 'thumb_distance.jpg', 'uploads/blog/banner/ابدأ-التعلم-عن-بعد-مع-إمبريال-أكاديمي-1768233282.jpg', '[{\"value\":\"التعليم, الماجستير, الدكتوراه, التعلم عن بعد\"}]', 1, 1, '2026-01-12 10:37:54', '2026-01-12 21:54:43'),
(2, 1, '2', 'تطوير مهاراتك المهنية بسهولة', 'تطوير-مهاراتك-المهنية-بسهولة', 'استكشف دورات تطوير مهني مختارة بعناية تساعدك على تحسين مهاراتك العملية، بما في ذلك الإدارة، التسويق، وتطوير البرمجيات.', 'uploads/blog/thumbnail/تطوير-مهاراتك-المهنية-بسهولة-1768233448.jpg', 'uploads/blog/banner/تطوير-مهاراتك-المهنية-بسهولة-1768233427.jpg', '[{\"value\":\"تطوير مهني, مهارات, دورة, تدريب\"}]', 1, 1, '2026-01-12 10:37:54', '2026-01-12 21:57:28'),
(3, 1, '2', 'أفضل النصائح للتعلم الفعّال', 'أفضل-النصائح-للتعلم-الفعّال', 'تعرف على الاستراتيجيات والأدوات التي تساعد الطلاب على تحقيق أفضل النتائج في التعلم عن بعد. يشمل هذا إدارة الوقت، المراجعة الفعالة، واستخدام الموارد الرقمية.', 'uploads/blog/thumbnail/أفضل-النصائح-للتعلم-الفعّال-1768233523.jpg', 'uploads/blog/banner/أفضل-النصائح-للتعلم-الفعّال-1768233523.jpg', '[{\"value\":\"تعلم, نصائح, استراتيجيات, التعليم عن بعد\"}]', 0, 1, '2026-01-12 10:37:54', '2026-01-12 21:58:43'),
(4, 1, '1', 'كيف تختار الدورة المثالية عبر الإنترنت', 'كيف-تختار-الدورة-المثالية-عبر-الإنترنت', 'دليل شامل لاختيار الدورة المناسبة لمستوى مهاراتك واحتياجاتك المهنية، مع نصائح عملية لتجنب الأخطاء الشائعة.', 'uploads/blog/thumbnail/كيف-تختار-الدورة-المثالية-عبر-الإنترنت-1768234147.jpg', 'uploads/blog/banner/كيف-تختار-الدورة-المثالية-عبر-الإنترنت-1768234147.jpg', '[{\"value\":\"دورات, اختيار, تعليم عن بعد, نصائح\"}]', 1, 1, '2026-01-12 10:37:54', '2026-01-12 22:09:07'),
(5, 1, '2', 'أهمية التطوير المهني المستمر', 'أهمية-التطوير-المهني-المستمر', 'التعلم لا يتوقف بعد الجامعة! تعرف على كيفية تطوير مهاراتك باستمرار من خلال برامج قصيرة ودورات مهنية.', 'uploads/blog/thumbnail/أهمية-التطوير-المهني-المستمر-1768234123.jpg', 'uploads/blog/banner/أهمية-التطوير-المهني-المستمر-1768234123.jpg', '[{\"value\":\"تطوير مهني, تعليم مستمر, دورات\"}]', 1, 1, '2026-01-12 10:37:54', '2026-01-12 22:08:43'),
(6, 1, '2', 'أحدث التقنيات في التعليم الإلكتروني', 'أحدث-التقنيات-في-التعليم-الإلكتروني', 'استكشف أحدث الأدوات والمنصات التعليمية التي تُحدث ثورة في التعلم عن بعد، بما في ذلك الواقع الافتراضي والذكاء الاصطناعي.', 'uploads/blog/thumbnail/أحدث-التقنيات-في-التعليم-الإلكتروني-1768233991.jpg', 'uploads/blog/banner/أحدث-التقنيات-في-التعليم-الإلكتروني-1768233991.jpg', '[{\"value\":\"تعليم إلكتروني, تقنية, ابتكار, ذكاء اصطناعي\"}]', 1, 1, '2026-01-12 10:37:54', '2026-01-12 22:06:31'),
(7, 1, '1', 'قصص نجاح طلابنا', 'قصص-نجاح-طلابنا', 'تعرّف على قصص الطلاب الذين تمكنوا من تحسين حياتهم المهنية من خلال دورات Imperial Academy، وحصلوا على شهادات معترف بها.', 'uploads/blog/thumbnail/قصص-نجاح-طلابنا-1768233956.jpg', 'uploads/blog/banner/قصص-نجاح-طلابنا-1768233956.jpg', '[{\"value\":\"طلاب, نجاح, شهادات, تعليم عن بعد\"}]', 1, 1, '2026-01-12 10:37:54', '2026-01-12 22:05:56'),
(8, 1, '2', 'أفضل 5 كتب إلكترونية للتعلم الذاتي', 'أفضل-5-كتب-إلكترونية-للتعلم-الذاتي', 'مجموعة مختارة من الكتب الإلكترونية التي تساعدك على تحسين مهاراتك في الإدارة، البرمجة، والتسويق، مع مراجعات مختصرة لكل كتاب.', 'uploads/blog/thumbnail/أفضل-5-كتب-إلكترونية-للتعلم-الذاتي-1768234190.jpg', 'uploads/blog/banner/أفضل-5-كتب-إلكترونية-للتعلم-الذاتي-1768234190.jpg', '[{\"value\":\"كتب, إلكترونية, تعلم ذاتي, مراجعات\"}]', 0, 1, '2026-01-12 10:37:54', '2026-01-12 22:09:50'),
(9, 1, '2', 'كيفية إدارة وقتك أثناء التعلم عن بعد', 'كيفية-إدارة-وقتك-أثناء-التعلم-عن-بعد', 'نصائح عملية لإدارة وقتك بفعالية أثناء متابعة الدورات الإلكترونية، بما في ذلك تنظيم جدولك والمراجعة اليومية.', 'uploads/blog/thumbnail/كيفية-إدارة-وقتك-أثناء-التعلم-عن-بعد-1768330893.jpg', 'uploads/blog/banner/كيفية-إدارة-وقتك-أثناء-التعلم-عن-بعد-1768330893.jpg', '[{\"value\":\"تعلم عن بعد, إدارة وقت, نصائح\"}]', 1, 1, '2026-01-12 10:37:54', '2026-01-14 01:01:33'),
(10, 1, '1', 'مستقبل التعليم الرقمي في العالم', 'مستقبل-التعليم-الرقمي-في-العالم', 'تحليل شامل لكيفية تطور التعليم الرقمي في السنوات القادمة، وأهمية اعتماد التكنولوجيا الحديثة في المدارس والجامعات.', 'uploads/blog/thumbnail/مستقبل-التعليم-الرقمي-في-العالم-1768233894.jpg', 'uploads/blog/banner/مستقبل-التعليم-الرقمي-في-العالم-1768233894.jpg', '[{\"value\":\"تعليم رقمي, مستقبل, تكنولوجيا, مدارس\"}]', 1, 1, '2026-01-12 10:37:54', '2026-01-12 22:04:54');

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
(1, 'الأخبار التعليمية', 'أحدث الأخبار والتحديثات في التعليم عن بعد', 'education-news', '2026-01-12 10:37:54', '2026-01-12 10:37:54'),
(2, 'الكتب الإلكترونية', 'مراجعات وموارد الكتب الإلكترونية', 'ebooks', '2026-01-12 10:37:54', '2026-01-12 10:37:54');

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

--
-- Dumping data for table `blog_likes`
--

INSERT INTO `blog_likes` (`id`, `blog_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 10, 1, '2026-01-12 15:50:01', '2026-01-12 15:50:01');

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
(1, 1, 'معسكر تطوير الويب الاحترافي', 'professional-web-development-bootcamp', 1, '<p>معسكر تدريبي مكثف يركز على تطوير الويب باستخدام HTML, CSS, JavaScript, Laravel. مصمم للانتقال من المستوى المبتدئ إلى الاحتراف.</p>', 'تعلم تطوير الويب من الصفر حتى الاحتراف خلال فترة قصيرة.', 1, 399, 1, 299, 1704067200, 'uploads/bootcamp/thumbnail/-1768247882.jpg', '[{\"q\":\"هل المعسكر مناسب للمبتدئين؟\",\"a\":\"نعم، يبدأ من الأساسيات.\"},{\"q\":\"هل يوجد شهادة؟\",\"a\":\"نعم، شهادة معتمدة من Imperial Academy.\"}]', '[\"جهاز كمبيوتر\",\"اتصال بالإنترنت\",\"رغبة في التعلم\"]', '[\"إنشاء مواقع ويب كاملة\",\"العمل على مشاريع حقيقية\",\"الاستعداد لسوق العمل\"]', 'web development, coding, bootcamp, laravel', 'معسكر تدريبي احترافي في تطوير الويب مقدم من Imperial Academy', 1, '2026-01-12 19:56:47', '2026-01-13 01:58:02'),
(2, 1, 'معسكر إدارة الأعمال الحديثة', 'modern-business-management-bootcamp', 2, '<p>برنامج تدريبي يركز على مفاهيم الإدارة الحديثة، القيادة، التخطيط الاستراتيجي، واتخاذ القرار.</p>', 'اكتسب مهارات الإدارة والقيادة المطلوبة في سوق العمل.', 1, 349, 0, NULL, 1704067200, 'uploads/bootcamp/thumbnail/-1768247909.jpg', '[{\"q\":\"هل المعسكر مناسب لغير المتخصصين؟\",\"a\":\"نعم، لا يشترط خبرة سابقة.\"}]', '[\"اهتمام بمجال الإدارة\",\"التزام بحضور الجلسات\"]', '[\"مهارات قيادية\",\"فهم استراتيجيات الأعمال\",\"إدارة الفرق بفعالية\"]', 'business management, leadership, bootcamp', 'معسكر تدريبي لتطوير مهارات إدارة الأعمال', 1, '2026-01-12 19:56:47', '2026-01-13 01:58:29'),
(3, 1, 'معسكر التحول الرقمي', 'digital-transformation-bootcamp', 3, '<p>يركز هذا المعسكر على مفاهيم التحول الرقمي، أتمتة الأعمال، واستخدام التكنولوجيا في تطوير المؤسسات.</p>', 'استعد لقيادة التحول الرقمي في مؤسستك.', 1, 429, 1, 349, 1704067200, 'uploads/bootcamp/thumbnail/-1768247898.jpg', '[{\"q\":\"هل يناسب المدراء؟\",\"a\":\"نعم، مصمم خصيصًا للمدراء وأصحاب القرار.\"}]', '[\"خبرة إدارية أساسية\",\"اهتمام بالتكنولوجيا\"]', '[\"فهم التحول الرقمي\",\"تحسين العمليات\",\"زيادة الكفاءة المؤسسية\"]', 'digital transformation, technology, bootcamp', 'معسكر متخصص في التحول الرقمي للمؤسسات', 1, '2026-01-12 19:56:47', '2026-01-13 01:58:18');

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
(1, 'البرمجة وتطوير البرمجيات', 'software-development', '2026-01-12 19:55:59', '2026-01-12 19:55:59'),
(2, 'إدارة الأعمال', 'business-management', '2026-01-12 19:55:59', '2026-01-12 19:55:59'),
(3, 'التحول الرقمي', 'digital-transformation', '2026-01-12 19:55:59', '2026-01-12 19:55:59'),
(4, 'تطوير المسار المهني', 'career-development', '2026-01-12 19:55:59', '2026-01-12 19:55:59');

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

--
-- Dumping data for table `bootcamp_live_classes`
--

INSERT INTO `bootcamp_live_classes` (`id`, `module_id`, `title`, `slug`, `description`, `start_time`, `end_time`, `sort`, `status`, `provider`, `joining_data`, `force_stop`, `created_at`, `updated_at`) VALUES
(1, 1, 'جلسة HTML و CSS', 'html-css-live', 'شرح عملي لتصميم صفحات الويب.', 1704103200, 1704108600, 1, 'scheduled', 'zoom', '{\"link\":\"https://zoom.us/j/xxxx\",\"password\":\"123456\"}', 0, '2026-01-12 19:56:47', '2026-01-12 19:56:47');

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
(1, 1, 'أساسيات تطوير الويب', 1704067200, NULL, 'none', 1, '2026-01-12 19:56:47', '2026-01-12 19:56:47'),
(2, 1, 'Laravel وبناء المشاريع', 1704153600, NULL, 'none', 2, '2026-01-12 19:56:47', '2026-01-12 19:56:47'),
(3, 2, 'مبادئ الإدارة الحديثة', 1704067200, NULL, 'none', 1, '2026-01-12 19:56:47', '2026-01-12 19:56:47'),
(4, 3, 'مفاهيم التحول الرقمي', 1704067200, NULL, 'none', 1, '2026-01-12 19:56:47', '2026-01-12 19:56:47');

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

--
-- Dumping data for table `bootcamp_resources`
--

INSERT INTO `bootcamp_resources` (`id`, `module_id`, `title`, `upload_type`, `file`, `created_at`, `uploaded_at`) VALUES
(1, 1, 'ملف أساسيات HTML', 'pdf', 'uploads/resources/html-basics.pdf', '2026-01-12 19:56:47', '2026-01-12 19:56:47'),
(2, 2, 'مشروع Laravel تطبيقي', 'zip', 'uploads/resources/laravel-project.zip', '2026-01-12 19:56:47', '2026-01-12 19:56:47'),
(3, 1, 'ملف أساسيات HTML', 'pdf', 'uploads/resources/html-basics.pdf', '2026-01-12 19:56:47', '2026-01-12 19:56:47'),
(4, 2, 'مشروع Laravel تطبيقي', 'zip', 'uploads/resources/laravel-project.zip', '2026-01-12 19:56:47', '2026-01-12 19:56:47');

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
(12, 'Elegant', '', 'elegant', 1, 0, NULL, '2024-08-27 04:25:11', '2026-01-13 21:15:12'),
(13, 'Kindergarden', NULL, 'kindergarden', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-13 21:15:12'),
(14, 'Cooking', NULL, 'cooking', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-13 21:15:12'),
(15, 'University', NULL, 'university', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-13 21:15:12'),
(16, 'Language', NULL, 'language', 1, 0, NULL, '2024-08-27 04:25:11', '2026-01-13 21:15:12'),
(17, 'Development', NULL, 'development', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-13 21:15:12'),
(18, 'Marketplace', NULL, 'marketplace', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-13 21:15:12'),
(19, 'Meditation', NULL, 'meditation', 1, 0, 1, '2024-08-27 04:25:11', '2026-01-13 21:15:12'),
(23, 'Default', '[\"top_bar\",\"header\",\"hero_banner\",\"features\",\"category\",\"featured_courses\",\"about_us\",\"testimonial\",\"blog\",\"footer\"]', NULL, NULL, 0, NULL, '2024-08-27 04:25:11', '2026-01-13 21:15:12'),
(27, 'Zynqore tech', '[\"top_bar\",\"header\",\"developer_hero_banner\",\"features\",\"category\",\"featured_courses\",\"about_us\",\"blog\",\"footer\"]', NULL, NULL, 1, NULL, '2026-01-13 13:17:17', '2026-01-13 23:33:59');

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
(1, 0, 'درجات الماجستير المهنية', 'درجات-الماجستير-المهنية', 'fas fa-graduation-cap', 1, 1, 'ماجستير, تعليم عالي, برامج مهنية', 'برامج ماجستير متخصصة للمهنيين', 'uploads/category-thumbnail/درجات-الماجستير-المهنية-1768246189.jpg', 'uploads/category-logo/درجات-الماجستير-المهنية-logo-1768246189.jpg', '2026-01-12 08:18:34', '2026-01-13 01:29:49'),
(2, 0, 'برامج الدكتوراه', 'doctorate-programs', 'fas fa-user-graduate', 2, 1, 'دكتوراه, بحث, تعليم متقدم', 'برامج دكتوراه مهنية وأكاديمية', NULL, NULL, '2026-01-12 08:18:34', '2026-01-12 08:18:34'),
(3, 0, 'التطوير المهني', 'professional-development', 'fas fa-briefcase', 3, 1, 'تطوير, مهارات, تدريب', 'دورات تطوير المهارات المهنية', NULL, NULL, '2026-01-12 08:18:34', '2026-01-12 08:18:34'),
(4, 0, 'التخصصات التقنية', 'technical-specializations', 'fas fa-laptop-code', 4, 1, 'تقنية, برمجة, تحليل بيانات', 'برامج تقنية متخصصة', NULL, NULL, '2026-01-12 08:18:34', '2026-01-12 08:18:34'),
(5, 0, 'إدارة الرعاية الصحية', 'healthcare-management', 'fas fa-hospital', 5, 1, 'صحة, إدارة, مستشفيات', 'برامج إدارة المؤسسات الصحية', NULL, NULL, '2026-01-12 08:18:34', '2026-01-12 08:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
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
(1, 'Andrewicews', 'no.reply.JensDurand@gmail.com', '83977955931', 'https://www.no-site.com', 'Yo! imperial-academy.io \r\n \r\nDid you know that it is possible to send appeal wholly lawful? \r\nWhen such commercial offers are sent, no personal data is used and messages are sent to forms that are specifically designed to receive messages and appeals in an efficient manner. Since Feedback Forms messages are deemed essential, they won\'t be seen as spam. \r\nWe are giving you the chance to experience our service without any cost. \r\nWe shall send up to 50,000 messages to you. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis offer is automatically generated. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.', 0, 0, '2026-03-05 01:39:33', '2026-03-05 01:39:33'),
(2, 'Davidsoine', 'no.reply.DirkRouxson@gmail.com', '83796156399', 'https://www.no-site.com', 'Hi! imperial-academy.io, \r\nI found your website while checking similar websites. \r\nWe offer a platform that supports website outreach and communication. \r\nThousands of websites can be contacted automatically. \r\n  \r\nThe platform offers a free test so you can see how it works. \r\nIf you would like to explore this, simply contact us. \r\n \r\nThanks and have a great day. \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693', 0, 0, '2026-03-31 22:22:36', '2026-03-31 22:22:36');

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
(11, 'test', 'test-11', 'dwqqwe', 1, 1, 'general', 'active', 'intermediate', 'العربية', 0, 0, NULL, NULL, NULL, 0, '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":15,\"minimum_percentage\":\"30\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}', '', NULL, 'uploads/course-thumbnail/-1768246478.jpg', 'uploads/course-banner/-1768246478.jpg', 'https://www.youtube.com/watch?v=UnEmEbWytI8', '<p>qwqweqweqweqwe</p>', NULL, NULL, NULL, '[\"1\"]', 0, '2026-01-12 14:28:29', '2026-01-13 13:12:34', NULL);

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

--
-- Dumping data for table `ebooks`
--

INSERT INTO `ebooks` (`id`, `user_id`, `title`, `slug`, `category_id`, `description`, `publication_name`, `edition`, `is_paid`, `price`, `discount_flag`, `discounted_price`, `thumbnail`, `published_date`, `language_id`, `summary`, `preview`, `complete`, `status`, `average_rating`, `created_at`, `updated_at`) VALUES
(1, 1, 'دليل التعلم عن بعد الاحترافي', 'dlyl-altaalm-aan-baad-alahtrafy', 1, '<p>كتاب شامل يوضح كيفية الاستفادة القصوى من التعلم عن بعد، وإدارة الوقت، وتحقيق النجاح الأكاديمي عبر المنصات الرقمية.</p>', 'Imperial Academy Publishing', 'الطبعة الأولى', 1, 49.00, 1, 29.00, 'uploads/ebook-thumbnail/دليل-التعلم-عن-بعد-الاحترافي-1768247383.jpg', 1704045600, 1, 'دليل عملي للطلاب والمهنيين الراغبين في التعلم عبر الإنترنت بفعالية.', 'uploads/ebook-preview/distance-learning-preview.pdf', 'uploads/ebook-complete/distance-learning-complete.pdf', 1, '4.6', '2026-01-12 19:45:04', '2026-01-13 01:49:43'),
(2, 1, 'تطوير المسار المهني في العصر الرقمي', 'ttoyr-almsar-almhny-fy-alaasr-alrkmy', 2, '<p>يركز هذا الكتاب على تطوير المهارات المطلوبة في سوق العمل الحديث، وبناء مسار مهني ناجح باستخدام التعلم المستمر.</p>', 'Imperial Academy Publishing', 'الطبعة الثانية', 1, 59.00, 0, NULL, 'uploads/ebook-thumbnail/تطوير-المسار-المهني-في-العصر-الرقمي-1768247346.jpg', 1704045600, 1, 'خارطة طريق واضحة لبناء مستقبل مهني قوي في العصر الرقمي.', 'uploads/ebook-preview/career-development-preview.pdf', 'uploads/ebook-complete/career-development-complete.pdf', 1, '4.8', '2026-01-12 19:45:04', '2026-01-13 01:49:06'),
(3, 1, 'إدارة الأعمال لغير المتخصصين', 'adar-alaaamal-lghyr-almtkhssyn', 3, '<p>مقدمة مبسطة في إدارة الأعمال، تشمل القيادة، التخطيط الاستراتيجي، وإدارة الفرق.</p>', 'Imperial Academy Publishing', 'الطبعة الأولى', 1, 39.00, 1, 25.00, 'uploads/ebook-thumbnail/إدارة-الأعمال-لغير-المتخصصين-1768247311.webp', 1704045600, 1, 'كتاب مثالي للمبتدئين في مجال الإدارة وريادة الأعمال.', 'uploads/ebook-preview/business-management-preview.pdf', 'uploads/ebook-complete/business-management-complete.pdf', 1, '4.5', '2026-01-12 19:45:04', '2026-01-13 01:48:31'),
(4, 1, 'أساسيات التعلم الذاتي', 'asasyat-altaalm-althaty', 4, '<p>كتاب مجاني يشرح مفاهيم التعلم الذاتي وأفضل الطرق لاكتساب المعرفة بشكل مستقل.</p>', 'Imperial Academy Publishing', 'الطبعة الأولى', 0, 211.00, 0, NULL, 'uploads/ebook-thumbnail/أساسيات-التعلم-الذاتي-1768247264.jpg', 1704045600, 1, 'مدخل عملي لكل من يرغب في بدء رحلة التعلم الذاتي.', 'uploads/ebook-preview/self-learning-preview.pdf', 'uploads/ebook-complete/self-learning-complete.pdf', 1, '4.7', '2026-01-12 19:45:04', '2026-01-13 01:48:03'),
(5, 1, 'الاستعداد للماجستير والدكتوراه المهنية', 'alastaadad-llmagstyr-oaldktorah-almhny', 5, '<p>دليل متكامل للطلاب الراغبين في الالتحاق ببرامج الماجستير والدكتوراه المهنية عبر الإنترنت.</p>', 'Imperial Academy Publishing', 'الطبعة الأولى', 1, 79.00, 1, 55.00, 'uploads/ebook-thumbnail/الاستعداد-للماجستير-والدكتوراه-المهنية-1768247216.webp', 1704045600, 1, 'كتاب شامل للتحضير الأكاديمي والمهني للدراسات العليا.', 'uploads/ebook-preview/postgraduate-preview.pdf', 'uploads/ebook-complete/postgraduate-complete.pdf', 1, '4.9', '2026-01-12 19:45:04', '2026-01-13 01:46:56');

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

--
-- Dumping data for table `ebook_categories`
--

INSERT INTO `ebook_categories` (`id`, `title`, `slug`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'التعليم عن بعد', 'distance-learning', 'uploads/ebook-category-thumbnail/distance-learning.jpg', '2026-01-12 19:44:19', '2026-01-12 19:44:19'),
(2, 'التطوير المهني', 'career-development', 'uploads/ebook-category-thumbnail/career-development.jpg', '2026-01-12 19:44:19', '2026-01-12 19:44:19'),
(3, 'إدارة الأعمال', 'business-management', 'uploads/ebook-category-thumbnail/business-management.jpg', '2026-01-12 19:44:19', '2026-01-12 19:44:19'),
(4, 'التعلم الذاتي', 'self-learning', 'uploads/ebook-category-thumbnail/self-learning.jpg', '2026-01-12 19:44:19', '2026-01-12 19:44:19'),
(5, 'الدكتوراه والماجستير', 'postgraduate-studies', 'uploads/ebook-category-thumbnail/postgraduate.jpg', '2026-01-12 19:44:19', '2026-01-12 19:44:19');

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
(1, 5, 11, NULL, 1768280939, '2026-01-13 05:08:59', '2026-01-13 05:08:59', NULL);

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
(1, 'banner_title', 'إمبريال أكاديمي - منصة التعليم عن بعد', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(2, 'banner_sub_title', 'منصة تعليمية مسجلة في المملكة المتحدة - لندن متخصصة في تقديم برامج الماجستير والدكتوراه المهنية، ودورات تطوير مهني تساعدك على التميز في مسيرتك الوظيفية', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(4, 'about_us', '<h2 data-start=\"153\" data-end=\"200\">من نحن – Imperial Academy | إمبيريال أكاديمي</h2><h2 data-start=\"210\" data-end=\"257\">\r\n<p data-start=\"202\" data-end=\"426\">Imperial Academy (إمبيريال أكاديمي) هي منصة تعليمية دولية مسجلة في المملكة المتحدة – لندن، متخصصة في تقديم برامج التعليم العالي والتطوير المهني وفق أعلى المعايير الأكاديمية العالمية، وبما يتماشى مع احتياجات سوق العمل الحديث.</p>\r\n<p data-start=\"428\" data-end=\"639\">نؤمن في إمبيريال أكاديمي بأن التعليم هو الأساس الحقيقي لبناء مستقبل مهني قوي، لذلك نعمل على توفير تجربة تعليمية مرنة وموثوقة وعالية الجودة، تُمكّن الدارسين من تحقيق طموحاتهم الأكاديمية والمهنية دون قيود جغرافية.</p>\r\n<hr data-start=\"641\" data-end=\"644\">\r\n</h2><h2 data-start=\"646\" data-end=\"655\">رؤيتنا</h2><h2 data-start=\"210\" data-end=\"257\">\r\n<p data-start=\"657\" data-end=\"861\">أن نكون من الرواد عالميًا في مجال التعليم عن بُعد، وأن نصبح الخيار الأول للباحثين عن التميز الأكاديمي والتطوير المهني المعتمد دوليًا، من خلال برامج تعليمية مبتكرة تجمع بين المعرفة النظرية والتطبيق العملي.</p>\r\n<hr data-start=\"863\" data-end=\"866\">\r\n</h2><h2 data-start=\"868\" data-end=\"878\">رسالتنا</h2><h2 data-start=\"210\" data-end=\"257\">\r\n<p data-start=\"880\" data-end=\"1079\">تقديم برامج تعليمية ومهنية متكاملة تواكب التطور العالمي، وتسهم في بناء كوادر مؤهلة علميًا وعمليًا، قادرة على المنافسة في الأسواق المحلية والدولية، مع الالتزام بأعلى معايير الجودة والاعتماد الأكاديمي.</p>\r\n<hr data-start=\"1081\" data-end=\"1084\">\r\n</h2><h2 data-start=\"1086\" data-end=\"1099\">ماذا نقدم؟</h2><h2 data-start=\"210\" data-end=\"257\">\r\n<p data-start=\"1101\" data-end=\"1206\">في Imperial Academy نقدم مجموعة متنوعة من البرامج المصممة بعناية لتناسب مختلف التخصصات والمستويات، وتشمل:</p>\r\n<ul data-start=\"1208\" data-end=\"1383\">\r\n<li data-start=\"1208\" data-end=\"1234\">\r\n<p data-start=\"1210\" data-end=\"1234\">برامج الماجستير المهني</p>\r\n</li>\r\n<li data-start=\"1235\" data-end=\"1262\">\r\n<p data-start=\"1237\" data-end=\"1262\">برامج الدكتوراه المهنية</p>\r\n</li>\r\n<li data-start=\"1263\" data-end=\"1296\">\r\n<p data-start=\"1265\" data-end=\"1296\">دورات التطوير المهني المعتمدة</p>\r\n</li>\r\n<li data-start=\"1297\" data-end=\"1330\">\r\n<p data-start=\"1299\" data-end=\"1330\">برامج موجهة للقيادات والإدارة</p>\r\n</li>\r\n<li data-start=\"1331\" data-end=\"1383\">\r\n<p data-start=\"1333\" data-end=\"1383\">تعليم عن بُعد كامل بمرونة عالية في الوقت والمكان</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"1385\" data-end=\"1488\">تعتمد جميع برامجنا على مناهج حديثة، ومحتوى علمي متطور، وإشراف أكاديمي من خبراء ومتخصصين ذوي خبرة دولية.</p>\r\n<hr data-start=\"1490\" data-end=\"1493\">\r\n</h2><h2 data-start=\"1495\" data-end=\"1516\">الاعتمادات والجودة</h2><h2 data-start=\"210\" data-end=\"257\">\r\n<p data-start=\"1518\" data-end=\"1690\">نفتخر في Imperial Academy بحصولنا على مجموعة من الاعتمادات الرسمية المعترف بها في المملكة المتحدة، مما يعكس التزامنا الصارم بالجودة والمصداقية والمعايير الأكاديمية الدولية.</p>\r\n<p data-start=\"1692\" data-end=\"1806\">نحرص دائمًا على توثيق الشهادات، والشفافية في الإجراءات، والالتزام بالقوانين والأنظمة التعليمية المعمول بها دوليًا.</p>\r\n<hr data-start=\"1808\" data-end=\"1811\">\r\n</h2><h2 data-start=\"1813\" data-end=\"1839\">لماذا Imperial Academy؟</h2><h2 data-start=\"210\" data-end=\"257\">\r\n<ul data-start=\"1841\" data-end=\"2048\">\r\n<li data-start=\"1841\" data-end=\"1878\">\r\n<p data-start=\"1843\" data-end=\"1878\">منصة تعليمية مسجلة ومعتمدة دوليًا</p>\r\n</li>\r\n<li data-start=\"1879\" data-end=\"1906\">\r\n<p data-start=\"1881\" data-end=\"1906\">شهادات موثقة ومعترف بها</p>\r\n</li>\r\n<li data-start=\"1907\" data-end=\"1936\">\r\n<p data-start=\"1909\" data-end=\"1936\">تعليم عن بُعد بجودة عالية</p>\r\n</li>\r\n<li data-start=\"1937\" data-end=\"1978\">\r\n<p data-start=\"1939\" data-end=\"1978\">محتوى أكاديمي يواكب متطلبات سوق العمل</p>\r\n</li>\r\n<li data-start=\"1979\" data-end=\"2007\">\r\n<p data-start=\"1981\" data-end=\"2007\">دعم أكاديمي وإداري مستمر</p>\r\n</li>\r\n<li data-start=\"2008\" data-end=\"2048\">\r\n<p data-start=\"2010\" data-end=\"2048\">مرونة كاملة تناسب العاملين والمهنيين</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"2050\" data-end=\"2053\">\r\n</h2><h2 data-start=\"2055\" data-end=\"2063\">قيمنا</h2><h2 data-start=\"210\" data-end=\"257\">\r\n<ul data-start=\"2065\" data-end=\"2236\">\r\n<li data-start=\"2065\" data-end=\"2101\">\r\n<p data-start=\"2067\" data-end=\"2101\">الجودة في تقديم المحتوى التعليمي</p>\r\n</li>\r\n<li data-start=\"2102\" data-end=\"2136\">\r\n<p data-start=\"2104\" data-end=\"2136\">المصداقية والشفافية في التعامل</p>\r\n</li>\r\n<li data-start=\"2137\" data-end=\"2167\">\r\n<p data-start=\"2139\" data-end=\"2167\">الابتكار في أساليب التعليم</p>\r\n</li>\r\n<li data-start=\"2168\" data-end=\"2199\">\r\n<p data-start=\"2170\" data-end=\"2199\">التميز في النتائج والمخرجات</p>\r\n</li>\r\n<li data-start=\"2200\" data-end=\"2236\">\r\n<p data-start=\"2202\" data-end=\"2236\">تمكين المتعلمين من تحقيق أهدافهم</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"2238\" data-end=\"2241\">\r\n</h2><h2 data-start=\"2243\" data-end=\"2256\">انضم إلينا</h2><h2 data-start=\"210\" data-end=\"257\">\r\n<p data-start=\"2258\" data-end=\"2438\">في Imperial Academy، رحلتك التعليمية ليست مجرد دراسة، بل هي استثمار حقيقي في مستقبلك المهني والأكاديمي. نحن هنا لنكون شريكك في النجاح، ونضع بين يديك الأدوات اللازمة للتطور المستمر.</p>\r\n<p data-start=\"2440\" data-end=\"2516\">ابدأ رحلتك التعليمية معنا اليوم، وانتقل بخطوات ثابتة نحو مستقبل أكثر تميزًا.</p></h2>', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(10, 'terms_and_condition', '<h2>الشروط والأحكام</h2>\r\n<p>مرحباً بك في إمبريال أكاديمي. باستخدامك لمنصتنا، فإنك توافق على الالتزام بالشروط والأحكام التالية:</p>\r\n\r\n<h3>استخدام المنصة</h3>\r\n<p>يجب عليك استخدام المنصة للأغراض التعليمية المشروعة فقط. يُحظر أي استخدام غير قانوني أو غير مصرح به.</p>\r\n\r\n<h3>التسجيل والحساب</h3>\r\n<p>يجب عليك تقديم معلومات دقيقة وكاملة عند التسجيل. أنت مسؤول عن الحفاظ على سرية بيانات حسابك.</p>\r\n\r\n<h3>الملكية الفكرية</h3>\r\n<p>جميع محتويات المنصة محمية بحقوق الملكية الفكرية. يُحظر نسخ أو توزيع المحتوى دون إذن كتابي.</p>\r\n\r\n<h3>الدفع والرسوم</h3>\r\n<p>يجب سداد رسوم الدورات في المواعيد المحددة. الأسعار قابلة للتغيير دون إشعار مسبق.</p>\r\n\r\n<h3>إلغاء الخدمة</h3>\r\n<p>نحتفظ بالحق في تعليق أو إنهاء حسابك في حالة انتهاك هذه الشروط.</p>\r\n\r\n<h3>القانون الساري</h3>\r\n<p>تخضع هذه الشروط لقوانين المملكة المتحدة.</p>', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(11, 'privacy_policy', '<h2>سياسة الخصوصية</h2>\r\n<p>نحن في إمبريال أكاديمي نلتزم بحماية خصوصيتك وبياناتك الشخصية. توضح هذه السياسة كيفية جمع واستخدام وحماية معلوماتك.</p>\r\n\r\n<h3>جمع المعلومات</h3>\r\n<p>نقوم بجمع المعلومات التي تقدمها لنا عند التسجيل في المنصة، بما في ذلك الاسم، البريد الإلكتروني، ومعلومات الاتصال.</p>\r\n\r\n<h3>استخدام المعلومات</h3>\r\n<p>نستخدم معلوماتك لتوفير وتحسين خدماتنا التعليمية، والتواصل معك بشأن الدورات والبرامج.</p>\r\n\r\n<h3>حماية البيانات</h3>\r\n<p>نطبق إجراءات أمنية صارمة لحماية بياناتك من الوصول غير المصرح به.</p>\r\n\r\n<h3>مشاركة المعلومات</h3>\r\n<p>لن نشارك معلوماتك الشخصية مع أطراف ثالثة دون موافقتك الصريحة، إلا في الحالات التي يتطلبها القانون.</p>\r\n\r\n<h3>حقوقك</h3>\r\n<p>لديك الحق في الوصول إلى بياناتك الشخصية وتصحيحها أو حذفها في أي وقت.</p>', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(13, 'theme', 'default', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(14, 'cookie_note', 'نستخدم ملفات تعريف الارتباط لتخصيص المحتوى وتحليل الزيارات من أجل تقديم تجربة أفضل لك.', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(15, 'cookie_status', '0', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(16, 'cookie_policy', '<h2>سياسة ملفات تعريف الارتباط</h2>\r\n<p>نستخدم في إمبريال أكاديمي ملفات تعريف الارتباط (Cookies) لتحسين تجربتك على منصتنا.</p>\r\n\r\n<h3>ما هي ملفات تعريف الارتباط؟</h3>\r\n<p>ملفات تعريف الارتباط هي ملفات نصية صغيرة يتم تخزينها على جهازك عند زيارة المواقع الإلكترونية.</p>\r\n\r\n<h3>كيف نستخدمها؟</h3>\r\n<ul>\r\n<li>تذكر تفضيلاتك وإعدادات تسجيل الدخول</li>\r\n<li>تحليل استخدام الموقع لتحسين الخدمات</li>\r\n<li>تخصيص المحتوى والإعلانات</li>\r\n<li>ضمان أمان المنصة</li>\r\n</ul>\r\n\r\n<h3>أنواع الملفات المستخدمة</h3>\r\n<p><strong>ملفات أساسية:</strong> ضرورية لتشغيل المنصة بشكل صحيح</p>\r\n<p><strong>ملفات التحليل:</strong> تساعدنا في فهم كيفية استخدام الزوار للمنصة</p>\r\n<p><strong>ملفات التسويق:</strong> تُستخدم لعرض إعلانات مخصصة</p>\r\n\r\n<h3>إدارة الملفات</h3>\r\n<p>يمكنك التحكم في ملفات تعريف الارتباط من خلال إعدادات المتصفح الخاص بك. لاحظ أن تعطيل بعض الملفات قد يؤثر على وظائف المنصة.</p>\r\n\r\n<h3>ملفات الطرف الثالث</h3>\r\n<p>قد نستخدم خدمات طرف ثالث (مثل Google Analytics) التي تضع ملفات تعريف الارتباط الخاصة بها.</p>', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(17, 'banner_image', '{\"elegant\":\"uploads\\/banner_image\\/bannerimage-1768208892.jpg\"}', '2023-10-31 11:08:12', '2026-01-12 15:08:12'),
(18, 'light_logo', 'uploads/light_logo/lightlogo-1768248129.png', '2023-10-31 11:08:12', '2026-01-13 02:02:09'),
(19, 'dark_logo', 'uploads/dark_logo/darklogo-1768248104.png', '2023-10-31 11:08:12', '2026-01-13 02:01:44'),
(20, 'small_logo', 'uploads/small_logo/small-logo-1712661659.jpg', '2023-10-31 11:08:12', '2024-04-09 05:20:59'),
(21, 'favicon', 'uploads/favicon/favicon-1768248157.png', '2023-10-31 11:08:12', '2026-01-13 02:02:37'),
(22, 'recaptcha_status', '0', '2023-10-31 11:08:12', '2023-11-01 23:27:24'),
(23, 'recaptcha_secretkey', 'Valid-secret-key', '2023-10-31 11:08:12', '2023-11-01 23:27:24'),
(24, 'recaptcha_sitekey', 'Valid-site-key', '2023-10-31 11:08:12', '2023-11-01 23:27:24'),
(25, 'refund_policy', '<h2>سياسة المبيعات والمرتجعات</h2>\r\n<p>نسعى في إمبريال أكاديمي لتوفير تجربة تعليمية متميزة. فيما يلي سياستنا الخاصة بالمبيعات والمرتجعات:</p>\r\n\r\n<h3>استرداد الأموال</h3>\r\n<p>يمكنك طلب استرداد كامل المبلغ خلال 14 يوماً من تاريخ الشراء إذا لم تبدأ في الدورة بعد.</p>\r\n\r\n<h3>الشروط</h3>\r\n<ul>\r\n<li>يجب تقديم طلب الاسترداد كتابياً عبر البريد الإلكتروني</li>\r\n<li>لا يمكن استرداد الأموال بعد البدء في الدورة والوصول إلى أكثر من 20% من المحتوى</li>\r\n<li>الدورات المجانية أو المخفضة بنسبة 100% غير قابلة للاسترداد</li>\r\n</ul>\r\n\r\n<h3>مدة المعالجة</h3>\r\n<p>تستغرق معالجة طلبات الاسترداد من 7 إلى 14 يوم عمل.</p>\r\n\r\n<h3>الحالات الاستثنائية</h3>\r\n<p>في حالات القوة القاهرة أو الظروف الصحية الطارئة، سيتم النظر في الطلبات بشكل فردي.</p>\r\n\r\n<h3>التواصل</h3>\r\n<p>للاستفسارات حول المرتجعات، يرجى التواصل مع فريق الدعم على support@imperialacademy.org</p>', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(26, 'facebook', 'https://facebook.com', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(27, 'twitter', 'https://twitter.com', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(28, 'linkedin', 'https://linkedin.com', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(31, 'blog_page_title', 'Where possibilities begin', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(33, 'blog_page_banner', 'blog-page.png', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(34, 'instructors_blog_permission', '1', '2023-10-31 11:08:12', '2023-12-07 00:28:58'),
(35, 'blog_visibility_on_the_home_page', '1', '2023-10-31 11:08:12', '2023-12-07 00:28:58'),
(37, 'website_faqs', '[\r\n  {\r\n    \"question\": \"كيف يمكنني التسجيل في إمبريال أكاديمي؟\",\r\n    \"answer\": \"يمكنك التسجيل بسهولة عبر الضغط على زر التسجيل في الصفحة الرئيسية، ثم ملء النموذج ببياناتك الشخصية. ستتلقى رسالة تأكيد على بريدك الإلكتروني لتفعيل حسابك.\"\r\n  },\r\n  {\r\n    \"question\": \"هل الشهادات معتمدة دولياً؟\",\r\n    \"answer\": \"نعم، جميع شهاداتنا معتمدة ومعترف بها دولياً. نحن مسجلون في المملكة المتحدة ونتبع معايير الجودة البريطانية والدولية في جميع برامجنا التعليمية.\"\r\n  },\r\n  {\r\n    \"question\": \"ما هي طرق الدفع المتاحة؟\",\r\n    \"answer\": \"نوفر عدة خيارات للدفع بما في ذلك بطاقات الائتمان (Visa, Mastercard)، التحويل البنكي، وبعض المحافظ الإلكترونية. يتم معالجة جميع المدفوعات بشكل آمن ومشفر.\"\r\n  },\r\n  {\r\n    \"question\": \"هل يمكنني الدراسة بالوتيرة التي تناسبني؟\",\r\n    \"answer\": \"بالتأكيد! جميع دوراتنا مصممة للتعلم عن بُعد بمرونة كاملة. يمكنك الوصول إلى المحتوى في أي وقت ومن أي مكان، والدراسة حسب جدولك الخاص.\"\r\n  },\r\n  {\r\n    \"question\": \"ما مدة صلاحية الوصول للدورة؟\",\r\n    \"answer\": \"عند التسجيل في أي دورة، ستحصل على وصول دائم للمحتوى. يمكنك العودة إلى المواد الدراسية في أي وقت حتى بعد إتمام الدورة.\"\r\n  },\r\n  {\r\n    \"question\": \"هل تقدمون دعماً فنياً وأكاديمياً؟\",\r\n    \"answer\": \"نعم، نوفر فريق دعم متاح على مدار الساعة للإجابة على استفساراتك الفنية والأكاديمية. يمكنك التواصل معنا عبر البريد الإلكتروني أو الدردشة المباشرة أو الهاتف.\"\r\n  },\r\n  {\r\n    \"question\": \"هل يمكنني الحصول على استرداد للأموال؟\",\r\n    \"answer\": \"نعم، نوفر سياسة استرداد خلال 14 يوماً من تاريخ الشراء إذا لم تبدأ في الدورة. يرجى مراجعة سياسة المرتجعات للحصول على تفاصيل كاملة.\"\r\n  },\r\n  {\r\n    \"question\": \"كيف أحصل على الشهادة بعد إنهاء الدورة؟\",\r\n    \"answer\": \"بعد إتمام جميع متطلبات الدورة بنجاح، ستحصل تلقائياً على شهادة إلكترونية موثقة. يمكنك تحميلها من حسابك ومشاركتها على LinkedIn أو طباعتها.\"\r\n  }\r\n]', '2023-10-31 11:08:12', '2026-01-12 18:29:35'),
(38, 'motivational_speech', '[{\"title\":\"Dr. Ahmed El-Sayed\",\"designation\":\"Academic Director\",\"description\":\"\\u064a\\u0634\\u0631\\u0641 \\u0639\\u0644\\u0649 \\u062a\\u0637\\u0648\\u064a\\u0631 \\u0627\\u0644\\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0623\\u0643\\u0627\\u062f\\u064a\\u0645\\u064a\\u0629 \\u0648\\u0636\\u0645\\u0627\\u0646 \\u062a\\u0648\\u0627\\u0641\\u0642\\u0647\\u0627 \\u0645\\u0639 \\u0627\\u0644\\u0645\\u0639\\u0627\\u064a\\u064a\\u0631 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a\\u0629\\u060c \\u0648\\u064a\\u062a\\u0645\\u062a\\u0639 \\u0628\\u062e\\u0628\\u0631\\u0629 \\u0648\\u0627\\u0633\\u0639\\u0629 \\u0641\\u064a \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0639\\u0627\\u0644\\u064a \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0639\\u0646 \\u0628\\u064f\\u0639\\u062f.\",\"image\":\"uploads\\/motivational_speech\\/1768323297-jz6xZ5HGUYbQMPt9LgwB4rOsX1c2JD.png\"},{\"title\":\"Ms. Sarah Williams\",\"designation\":\"Quality Assurance Manager\",\"description\":\"\\u0645\\u0633\\u0624\\u0648\\u0644\\u0629 \\u0639\\u0646 \\u062a\\u0637\\u0628\\u064a\\u0642 \\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u0648\\u0627\\u0644\\u0627\\u0639\\u062a\\u0645\\u0627\\u062f \\u0627\\u0644\\u0623\\u0643\\u0627\\u062f\\u064a\\u0645\\u064a\\u060c \\u0648\\u0645\\u062a\\u0627\\u0628\\u0639\\u0629 \\u0623\\u062f\\u0627\\u0621 \\u0627\\u0644\\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0644\\u0636\\u0645\\u0627\\u0646 \\u0623\\u0639\\u0644\\u0649 \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0635\\u062f\\u0627\\u0642\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0643\\u0641\\u0627\\u0621\\u0629.\",\"image\":\"uploads\\/motivational_speech\\/1768323297-CJ1G27tDbHU5KicrLoXm9l0gSxqfFs.png\"},{\"title\":\"Mr. Omar Hassan\",\"designation\":\"Student Affairs Coordinator\",\"description\":\"\\u064a\\u062a\\u0648\\u0644\\u0649 \\u062f\\u0639\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0648\\u0645\\u062a\\u0627\\u0628\\u0639\\u0629 \\u0634\\u0624\\u0648\\u0646\\u0647\\u0645 \\u0627\\u0644\\u0623\\u0643\\u0627\\u062f\\u064a\\u0645\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0625\\u062f\\u0627\\u0631\\u064a\\u0629\\u060c \\u0648\\u064a\\u0639\\u0645\\u0644 \\u0639\\u0644\\u0649 \\u062a\\u0648\\u0641\\u064a\\u0631 \\u062a\\u062c\\u0631\\u0628\\u0629 \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0633\\u0644\\u0633\\u0629 \\u0648\\u0641\\u0639\\u0627\\u0644\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0648\\u062d\\u062a\\u0649 \\u0627\\u0644\\u062a\\u062e\\u0631\\u062c.\",\"image\":\"uploads\\/motivational_speech\\/1768323297-sDgl9uS1h8JAZxjCpzwcUnGe27ikO4.png\"}]', '2023-10-31 11:08:12', '2026-01-13 22:54:57'),
(39, 'home_page', NULL, '2023-10-31 11:08:12', '2026-01-13 21:15:12'),
(40, 'contact_info', '{\"email\":\"support@zynqor.org\",\"phone\":\"67564345676\",\"address\":\"629 12th St, Modesto\",\"office_hours\":\"8\",\"location\":\"40.689880, -74.045203\"}', '2023-10-31 11:08:12', '2024-09-11 04:57:26'),
(41, 'promo_video_provider', 'youtube', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(42, 'promo_video_link', 'https://www.youtube.com/shorts/JNBBeQdze3A', '2023-10-31 11:08:12', '2026-01-13 16:38:04'),
(43, 'mobile_app_link', 'https://play.google.com/store/games?hl=en&pli=1', '2023-10-31 11:08:12', '2026-01-13 16:38:04');

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
(3, 15, 'university', '{\n  \"image\": \"default-university.webp\",\n  \"faq_image\": \"default-university2.webp\",\n  \"slider_items\": \"[\\\"https:\\\\/\\\\/www.youtube.com\\\\/shorts\\\\/WJCDIpZkwQU\\\"]\"\n}\n', '2024-05-16 02:31:00', '2024-09-24 06:09:07'),
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
(1, 'الحسابات والتسجيل', '2026-01-12 18:17:08', '2026-01-12 18:17:08'),
(2, 'الدورات والتعلم', '2026-01-12 18:17:08', '2026-01-12 18:17:08'),
(3, 'الشهادات والاعتماد', '2026-01-12 18:17:08', '2026-01-12 18:17:08'),
(4, 'الدفع والاشتراكات', '2026-01-12 18:17:08', '2026-01-12 18:17:08'),
(5, 'الدعم الفني', '2026-01-12 18:17:08', '2026-01-12 18:17:08'),
(6, 'تطبيق الهاتف المحمول', '2026-01-12 18:17:08', '2026-01-12 18:17:08');

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
(1, 1, 'كيفية إنشاء حساب جديد', 'يمكنك إنشاء حساب جديد في منصة إمبريال أكاديمي بسهولة من خلال الضغط على زر \"ابدأ الآن\"، ثم إدخال الاسم، البريد الإلكتروني، وكلمة المرور. بعد ذلك سيتم إرسال رسالة تأكيد إلى بريدك الإلكتروني.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(2, 1, 'تسجيل الدخول إلى الحساب', 'بعد إنشاء الحساب، يمكنك تسجيل الدخول باستخدام البريد الإلكتروني وكلمة المرور. في حال نسيت كلمة المرور، يمكنك استخدام خيار \"نسيت كلمة المرور\".', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(3, 1, 'تحديث البيانات الشخصية', 'يمكنك تعديل اسمك، صورتك الشخصية، وكلمة المرور من خلال لوحة التحكم الخاصة بحسابك.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(4, 2, 'كيفية الالتحاق بدورة', 'للالتحاق بدورة، انتقل إلى صفحة الدورات، اختر الدورة المناسبة، ثم اضغط على \"الانضمام\". بعض الدورات مجانية وبعضها مدفوع.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(5, 2, 'الدورات المجانية والمدفوعة', 'توفر إمبريال أكاديمي دورات مجانية بالكامل بالإضافة إلى دورات مدفوعة تشمل محتوى متقدم وشهادات معتمدة.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(6, 2, 'متابعة الدروس', 'بعد التسجيل في الدورة، يمكنك الوصول إلى جميع الدروس ومتابعتها في أي وقت ومن أي جهاز.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(7, 2, 'إعادة مشاهدة المحتوى', 'يمكنك إعادة مشاهدة الدروس المسجلة بدون أي قيود طوال فترة اشتراكك في الدورة.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(8, 3, 'الحصول على شهادة', 'بعد إتمام الدورة بنجاح، ستحصل على شهادة رقمية معتمدة يمكنك تحميلها أو مشاركتها.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(9, 3, 'هل الشهادات معتمدة؟', 'الشهادات المقدمة من Imperial Academy صادرة عن منصة تعليمية مسجلة في المملكة المتحدة – لندن.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(10, 3, 'مشاركة الشهادة', 'يمكنك مشاركة شهادتك على LinkedIn أو تحميلها بصيغة PDF لاستخدامها في ملفك المهني.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(11, 4, 'طرق الدفع المتاحة', 'نوفر عدة طرق للدفع الآمن تشمل البطاقات البنكية ووسائل الدفع الإلكترونية.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(12, 4, 'سياسة الاسترجاع', 'يمكنك طلب استرجاع المبلغ وفقًا لسياسة المبيعات والمرتجعات الموضحة في الموقع.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(13, 4, 'الفواتير', 'بعد إتمام الدفع، يتم إنشاء فاتورة تلقائيًا ويمكن تحميلها من حسابك.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(14, 5, 'كيفية التواصل مع الدعم', 'يمكنك التواصل مع فريق الدعم الفني عبر البريد الإلكتروني info@imperial-academy.io أو من خلال نموذج الاتصال.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(15, 5, 'مشاكل تسجيل الدخول', 'في حال واجهت مشكلة في تسجيل الدخول، تأكد من صحة البيانات أو قم بإعادة تعيين كلمة المرور.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(16, 5, 'الإبلاغ عن مشكلة تقنية', 'إذا واجهت أي مشكلة أثناء استخدام المنصة، يرجى التواصل مع الدعم مع توضيح المشكلة بالتفصيل.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(17, 6, 'تحميل تطبيق الهاتف', 'يمكنك تحميل تطبيق Imperial Academy على هاتفك للاستفادة من جميع الدورات والميزات.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(18, 6, 'مميزات التطبيق', 'التطبيق يتيح لك مشاهدة الدروس، متابعة تقدمك، واستلام الإشعارات في أي وقت.', '2026-01-12 18:17:29', '2026-01-12 18:17:29'),
(19, 6, 'تسجيل الدخول عبر التطبيق', 'يمكنك تسجيل الدخول إلى التطبيق باستخدام نفس بيانات حسابك على الموقع.', '2026-01-12 18:17:29', '2026-01-12 18:17:29');

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
(1, 'العربية', 'rtl', '2024-04-08 10:42:26', '2024-04-08 10:42:26'),
(3, 'English', 'ltr', '2024-04-08 10:42:26', '2024-04-09 01:12:02');

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
(14, 3, 'Bootcamp', 'Bootcamp', NULL, NULL),
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
(812, 3, 'Tickets', 'Tickets', NULL, NULL),
(813, 3, 'Add New Ticket', 'Add New Ticket', NULL, NULL),
(814, 3, 'Reports', 'Reports', NULL, NULL),
(815, 3, 'Ticket Macros', 'Ticket Macros', NULL, NULL),
(816, 3, 'Ticket Categories', 'Ticket Categories', NULL, NULL),
(817, 3, 'Ticket Priorities', 'Ticket Priorities', NULL, NULL),
(818, 3, 'Ticket Status', 'Ticket Status', NULL, NULL),
(819, 3, 'Start learning from the world\'s pro', 'Start learning from the world\'s pro', NULL, NULL),
(820, 3, 'instructors', 'instructors', NULL, NULL),
(821, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', NULL, NULL),
(822, 3, 'Fast Performance', 'Fast Performance', NULL, NULL),
(823, 3, 'It is a long established fact that a reader will be distracted.', 'It is a long established fact that a reader will be distracted.', NULL, NULL),
(824, 3, 'Perfect Responsive', 'Perfect Responsive', NULL, NULL),
(825, 3, 'Fast & Friendly Support', 'Fast & Friendly Support', NULL, NULL),
(826, 3, 'Easy to Use', 'Easy to Use', NULL, NULL),
(827, 3, 'Explore Top Courses Categories', 'Explore Top Courses Categories', NULL, NULL),
(828, 3, 'Featured Courses\n                        ', 'Featured Courses\n                        ', NULL, NULL),
(829, 3, 'View All Courses', 'View All Courses', NULL, NULL),
(830, 3, '150k  ', '150k  ', NULL, NULL),
(831, 3, 'Know About Us', 'Know About Us', NULL, NULL),
(832, 3, 'Learn & Grow Your Skills From', 'Learn & Grow Your Skills From', NULL, NULL),
(833, 3, 'Educate', 'Educate', NULL, NULL),
(834, 3, '\n                        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.\n                    ', '\n                        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.\n                    ', NULL, NULL),
(835, 3, 'Life time Access', 'Life time Access', NULL, NULL),
(836, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n                                ', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n                                ', NULL, NULL),
(837, 3, 'Learn from Anywhere', 'Learn from Anywhere', NULL, NULL),
(838, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', NULL, NULL),
(839, 3, 'More about us', 'More about us', NULL, NULL),
(840, 3, 'Testimonial', 'Testimonial', NULL, NULL),
(841, 3, 'What our clients says about us', 'What our clients says about us', NULL, NULL),
(842, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', NULL, NULL),
(843, 3, 'Linchon Philips', 'Linchon Philips', NULL, NULL),
(844, 3, 'CEO @ Yahoo', 'CEO @ Yahoo', NULL, NULL),
(845, 3, 'Have a look on our news', 'Have a look on our news', NULL, NULL),
(846, 3, 'View All Blogs', 'View All Blogs', NULL, NULL),
(847, 3, 'Bootcamp Manager', 'Bootcamp Manager', NULL, NULL),
(848, 3, 'Manage Bootcamp', 'Manage Bootcamp', NULL, NULL),
(849, 3, 'Discounted', 'Discounted', NULL, NULL),
(850, 3, 'Select Language to Replace', 'Select Language to Replace', NULL, NULL),
(1701, 3, 'Language added successfully', 'Language added successfully', NULL, NULL),
(1702, 3, 'Export language', 'Export language', NULL, NULL),
(1703, 3, 'Delete language', 'Delete language', NULL, NULL),
(1704, 3, 'Edit ____ phrases', 'Edit ____ phrases', NULL, NULL),
(1705, 3, 'Import all phrases from english', 'Import all phrases from english', NULL, NULL),
(1706, 3, 'Phrase updated', 'Phrase updated', NULL, NULL),
(1707, 3, 'Language deleted successfully', 'Language deleted successfully', NULL, NULL),
(1708, 5, 'Log In', 'Log In', '2026-01-12 13:53:55', NULL),
(1709, 5, 'Login', 'Login', '2026-01-12 13:53:55', NULL),
(1710, 5, 'See your growth and get consulting support!', 'See your growth and get consulting support!', '2026-01-12 13:53:55', NULL),
(1711, 5, 'Email', 'Email', '2026-01-12 13:53:55', NULL),
(1712, 5, 'Your Email', 'Your Email', '2026-01-12 13:53:55', NULL),
(1713, 5, 'Password', 'Password', '2026-01-12 13:53:55', NULL),
(1714, 5, 'Remember Me', 'Remember Me', '2026-01-12 13:53:55', NULL),
(1715, 5, 'Forget Password?', 'Forget Password?', '2026-01-12 13:53:56', NULL),
(1716, 5, 'Not have an account yet?', 'Not have an account yet?', '2026-01-12 13:53:56', NULL),
(1717, 5, 'Create Account', 'Create Account', '2026-01-12 13:53:56', NULL),
(1718, 5, 'Home', 'Home', '2026-01-12 13:53:56', NULL),
(1719, 5, 'Courses', 'Courses', '2026-01-12 13:53:56', NULL),
(1720, 5, 'All Courses', 'All Courses', '2026-01-12 13:53:56', NULL),
(1721, 5, 'Bootcamp', 'Bootcamp', '2026-01-12 13:53:56', NULL),
(1722, 5, 'Search...', 'Search...', '2026-01-12 13:53:56', NULL),
(1723, 5, 'Search courses', 'Search courses', '2026-01-12 13:53:56', NULL),
(1724, 5, 'Cart', 'Cart', '2026-01-12 13:53:56', NULL),
(1725, 5, 'Sign Up', 'Sign Up', '2026-01-12 13:53:56', NULL),
(1726, 5, 'Contact with Us', 'Contact with Us', '2026-01-12 13:53:56', NULL),
(1727, 5, 'Top Categories', 'Top Categories', '2026-01-12 13:53:56', NULL),
(1728, 5, 'Useful links', 'Useful links', '2026-01-12 13:53:56', NULL),
(1729, 5, 'Course', 'Course', '2026-01-12 13:53:56', NULL),
(1730, 5, 'Blog', 'Blog', '2026-01-12 13:53:56', NULL),
(1731, 5, 'Company', 'Company', '2026-01-12 13:53:56', NULL),
(1732, 5, 'Phone : ', 'Phone : ', '2026-01-12 13:53:56', NULL),
(1733, 5, 'Email : ', 'Email : ', '2026-01-12 13:53:56', NULL),
(1734, 5, 'Email address', 'Email address', '2026-01-12 13:53:56', NULL),
(1735, 5, 'Submit', 'Submit', '2026-01-12 13:53:56', NULL),
(1736, 5, 'About Us', 'About Us', '2026-01-12 13:53:56', NULL),
(1737, 5, 'Privacy Policy', 'Privacy Policy', '2026-01-12 13:53:56', NULL),
(1738, 5, 'Terms And Use', 'Terms And Use', '2026-01-12 13:53:56', NULL),
(1739, 5, 'Sales and Refunds', 'Sales and Refunds', '2026-01-12 13:53:56', NULL),
(1740, 5, 'FAQ', 'FAQ', '2026-01-12 13:53:56', NULL),
(1741, 5, 'Close', 'Close', '2026-01-12 13:53:56', NULL),
(1742, 5, 'Are you sure?', 'Are you sure?', '2026-01-12 13:53:56', NULL),
(1743, 5, 'You can\'t bring it back!', 'You can\'t bring it back!', '2026-01-12 13:53:56', NULL),
(1744, 5, 'Cancel', 'Cancel', '2026-01-12 13:53:56', NULL),
(1745, 5, 'Yes, I\'m sure', 'Yes, I\'m sure', '2026-01-12 13:53:56', NULL),
(1746, 5, 'Just Now', 'Just Now', '2026-01-12 13:53:56', NULL),
(1747, 5, 'Success !', 'Success !', '2026-01-12 13:53:56', NULL),
(1748, 5, 'Attention !', 'Attention !', '2026-01-12 13:53:56', NULL),
(1749, 5, 'An Error Occurred !', 'An Error Occurred !', '2026-01-12 13:53:56', NULL),
(1750, 5, 'Remove from wishlist', 'Remove from wishlist', '2026-01-12 13:53:56', NULL),
(1751, 5, 'This course added to your wishlist', 'This course added to your wishlist', '2026-01-12 13:53:56', NULL),
(1752, 5, 'Add to wishlist', 'Add to wishlist', '2026-01-12 13:53:56', NULL),
(1753, 5, 'This course removed from your wishlist', 'This course removed from your wishlist', '2026-01-12 13:53:56', NULL),
(1754, 5, 'Enter your keywords', 'Enter your keywords', '2026-01-12 13:53:56', NULL),
(1755, 5, 'Show less', 'Show less', '2026-01-12 13:53:56', NULL),
(1756, 5, 'Show more', 'Show more', '2026-01-12 13:53:56', NULL),
(1757, 5, 'Showing', 'Showing', '2026-01-12 13:53:56', NULL),
(1758, 5, 'of', 'of', '2026-01-12 13:53:56', NULL),
(1759, 5, 'data', 'data', '2026-01-12 13:53:56', NULL),
(1760, 5, 'Grid', 'Grid', '2026-01-12 13:53:56', NULL),
(1761, 5, 'List', 'List', '2026-01-12 13:53:56', NULL),
(1762, 5, 'Filter', 'Filter', '2026-01-12 13:53:56', NULL),
(1763, 5, 'Categories', 'Categories', '2026-01-12 13:53:56', NULL),
(1764, 5, 'Price', 'Price', '2026-01-12 13:53:56', NULL),
(1765, 5, 'Paid', 'Paid', '2026-01-12 13:53:56', NULL),
(1766, 5, 'Discount', 'Discount', '2026-01-12 13:53:56', NULL),
(1767, 5, 'Free', 'Free', '2026-01-12 13:53:56', NULL),
(1768, 5, 'Level', 'Level', '2026-01-12 13:53:56', NULL),
(1769, 5, 'Beginner', 'Beginner', '2026-01-12 13:53:56', NULL),
(1770, 5, 'Intermediate', 'Intermediate', '2026-01-12 13:53:56', NULL),
(1771, 5, 'Advanced', 'Advanced', '2026-01-12 13:53:56', NULL),
(1772, 5, 'language', 'language', '2026-01-12 13:53:56', NULL),
(1773, 5, 'English', 'English', '2026-01-12 13:53:56', NULL),
(1774, 5, 'Spanish', 'Spanish', '2026-01-12 13:53:56', NULL),
(1775, 5, 'Italic', 'Italic', '2026-01-12 13:53:56', NULL),
(1776, 5, 'German', 'German', '2026-01-12 13:53:56', NULL),
(1777, 5, 'Ratings', 'Ratings', '2026-01-12 13:53:56', NULL),
(1778, 5, 'No data found !', 'No data found !', '2026-01-12 13:53:56', NULL),
(1779, 5, 'Please attempt utilizing the suitable keywords in your search query to obtain more precise results.', 'Please attempt utilizing the suitable keywords in your search query to obtain more precise results.', '2026-01-12 13:53:56', NULL),
(1780, 5, 'Back', 'Back', '2026-01-12 13:53:56', NULL),
(1781, 5, 'Dashboard', 'Dashboard', '2026-01-12 13:53:56', NULL),
(1782, 5, 'Number of Courses', 'Number of Courses', '2026-01-12 13:53:56', NULL),
(1783, 5, 'Number of Lessons', 'Number of Lessons', '2026-01-12 13:53:56', NULL),
(1784, 5, 'Number of Enrollment', 'Number of Enrollment', '2026-01-12 13:53:56', NULL),
(1785, 5, 'Number of Students', 'Number of Students', '2026-01-12 13:53:56', NULL),
(1786, 5, 'Number of Instructor', 'Number of Instructor', '2026-01-12 13:53:56', NULL),
(1787, 5, 'Admin Revenue This Year', 'Admin Revenue This Year', '2026-01-12 13:53:56', NULL),
(1788, 5, 'Admin Revenue', 'Admin Revenue', '2026-01-12 13:53:56', NULL),
(1789, 5, 'Course Status', 'Course Status', '2026-01-12 13:53:56', NULL),
(1790, 5, 'Explore Courses', 'Explore Courses', '2026-01-12 13:53:56', NULL),
(1791, 5, 'Active', 'Active', '2026-01-12 13:53:56', NULL),
(1792, 5, 'Upcoming', 'Upcoming', '2026-01-12 13:53:56', NULL),
(1793, 5, 'Pending', 'Pending', '2026-01-12 13:53:56', NULL),
(1794, 5, 'Private', 'Private', '2026-01-12 13:53:56', NULL),
(1795, 5, 'Draft', 'Draft', '2026-01-12 13:53:56', NULL),
(1796, 5, 'Inactive', 'Inactive', '2026-01-12 13:53:56', NULL),
(1797, 5, 'Pending Requested withdrawal', 'Pending Requested withdrawal', '2026-01-12 13:53:56', NULL),
(1798, 5, 'Instructor Payout', 'Instructor Payout', '2026-01-12 13:53:56', NULL),
(1799, 5, 'Main Menu', 'Main Menu', '2026-01-12 13:53:56', NULL),
(1800, 5, 'Category', 'Category', '2026-01-12 13:53:56', NULL),
(1801, 5, 'Manage Courses', 'Manage Courses', '2026-01-12 13:53:56', NULL),
(1802, 5, 'Add New Course', 'Add New Course', '2026-01-12 13:53:56', NULL),
(1803, 5, 'Coupons', 'Coupons', '2026-01-12 13:53:56', NULL),
(1804, 5, 'Manage Bootcamps', 'Manage Bootcamps', '2026-01-12 13:53:56', NULL),
(1805, 5, 'Add New Bootcamp', 'Add New Bootcamp', '2026-01-12 13:53:56', NULL),
(1806, 5, 'Purchase History', 'Purchase History', '2026-01-12 13:53:56', NULL),
(1807, 5, 'Student enrollment', 'Student enrollment', '2026-01-12 13:53:56', NULL),
(1808, 5, 'Course enrollment', 'Course enrollment', '2026-01-12 13:53:56', NULL),
(1809, 5, 'Enrollment History', 'Enrollment History', '2026-01-12 13:53:56', NULL),
(1810, 5, 'Enroll student', 'Enroll student', '2026-01-12 13:53:56', NULL),
(1811, 5, 'Payment Report', 'Payment Report', '2026-01-12 13:53:56', NULL),
(1812, 5, 'Offline payments', 'Offline payments', '2026-01-12 13:53:56', NULL),
(1813, 5, 'Instructor Revenue', 'Instructor Revenue', '2026-01-12 13:53:56', NULL),
(1814, 5, 'Payment History', 'Payment History', '2026-01-12 13:53:56', NULL),
(1815, 5, 'Users', 'Users', '2026-01-12 13:53:56', NULL),
(1816, 5, 'Admin', 'Admin', '2026-01-12 13:53:56', NULL),
(1817, 5, 'Manage Admin', 'Manage Admin', '2026-01-12 13:53:56', NULL),
(1818, 5, 'Add New Admin', 'Add New Admin', '2026-01-12 13:53:56', NULL),
(1819, 5, 'Instructor', 'Instructor', '2026-01-12 13:53:56', NULL),
(1820, 5, 'Manage Instructors', 'Manage Instructors', '2026-01-12 13:53:56', NULL),
(1821, 5, 'Add new Instructor', 'Add new Instructor', '2026-01-12 13:53:56', NULL),
(1822, 5, 'Instructor Setting', 'Instructor Setting', '2026-01-12 13:53:56', NULL),
(1823, 5, 'Application', 'Application', '2026-01-12 13:53:56', NULL),
(1824, 5, 'Student', 'Student', '2026-01-12 13:53:56', NULL),
(1825, 5, 'Manage Students', 'Manage Students', '2026-01-12 13:53:56', NULL),
(1826, 5, 'Add new Student', 'Add new Student', '2026-01-12 13:53:56', NULL),
(1827, 5, 'Message', 'Message', '2026-01-12 13:53:56', NULL),
(1828, 5, 'Newsletter', 'Newsletter', '2026-01-12 13:53:56', NULL),
(1829, 5, 'Manage Newsletters', 'Manage Newsletters', '2026-01-12 13:53:56', NULL),
(1830, 5, 'Subscribed User', 'Subscribed User', '2026-01-12 13:53:56', NULL),
(1831, 5, 'Contacts', 'Contacts', '2026-01-12 13:53:56', NULL),
(1832, 5, 'Blogs', 'Blogs', '2026-01-12 13:53:56', NULL),
(1833, 5, 'Manage Blogs', 'Manage Blogs', '2026-01-12 13:53:56', NULL),
(1834, 5, 'Pending Blogs', 'Pending Blogs', '2026-01-12 13:53:56', NULL),
(1835, 5, 'Settings', 'Settings', '2026-01-12 13:53:56', NULL),
(1836, 5, 'System Settings', 'System Settings', '2026-01-12 13:53:56', NULL),
(1837, 5, 'Website Settings', 'Website Settings', '2026-01-12 13:53:56', NULL),
(1838, 5, 'Payment Settings', 'Payment Settings', '2026-01-12 13:53:56', NULL),
(1839, 5, 'Manage Language', 'Manage Language', '2026-01-12 13:53:56', NULL),
(1840, 5, 'Live Class Settings', 'Live Class Settings', '2026-01-12 13:53:56', NULL),
(1841, 5, 'SMTP Settings', 'SMTP Settings', '2026-01-12 13:53:56', NULL),
(1842, 5, 'Certificate Settings', 'Certificate Settings', '2026-01-12 13:53:56', NULL),
(1843, 5, 'Player Settings', 'Player Settings', '2026-01-12 13:53:56', NULL),
(1844, 5, 'Open AI Settings', 'Open AI Settings', '2026-01-12 13:53:56', NULL),
(1845, 5, 'Home Page Builder', 'Home Page Builder', '2026-01-12 13:53:56', NULL),
(1846, 5, 'SEO Settings', 'SEO Settings', '2026-01-12 13:53:56', NULL),
(1847, 5, 'About', 'About', '2026-01-12 13:53:56', NULL),
(1848, 5, 'Manage Profile', 'Manage Profile', '2026-01-12 13:53:56', NULL),
(1849, 5, 'Admin Panel', 'Admin Panel', '2026-01-12 13:53:56', NULL),
(1850, 5, 'View site', 'View site', '2026-01-12 13:53:56', NULL),
(1851, 5, 'AI Assistant', 'AI Assistant', '2026-01-12 13:53:56', NULL),
(1852, 5, 'Help Center', 'Help Center', '2026-01-12 13:53:56', NULL),
(1853, 5, 'Read documentation', 'Read documentation', '2026-01-12 13:53:56', NULL),
(1854, 5, 'Watch video tutorial', 'Watch video tutorial', '2026-01-12 13:53:56', NULL),
(1855, 5, 'Get customer support', 'Get customer support', '2026-01-12 13:53:56', NULL),
(1856, 5, 'Order customization', 'Order customization', '2026-01-12 13:53:56', NULL),
(1857, 5, 'Request a new feature', 'Request a new feature', '2026-01-12 13:53:56', NULL),
(1858, 5, 'Get Services', 'Get Services', '2026-01-12 13:53:56', NULL),
(1859, 5, 'My Profile', 'My Profile', '2026-01-12 13:53:56', NULL),
(1860, 5, 'Sign Out', 'Sign Out', '2026-01-12 13:53:56', NULL),
(1861, 5, 'Confirm', 'Confirm', '2026-01-12 13:53:56', NULL),
(1862, 5, 'Loading', 'Loading', '2026-01-12 13:53:56', NULL),
(1863, 5, 'Website name', 'Website name', '2026-01-12 13:53:56', NULL),
(1864, 5, 'Website title', 'Website title', '2026-01-12 13:53:56', NULL),
(1865, 5, 'Website keywords', 'Website keywords', '2026-01-12 13:53:56', NULL),
(1866, 5, 'Website description', 'Website description', '2026-01-12 13:53:56', NULL),
(1867, 5, 'Author', 'Author', '2026-01-12 13:53:56', NULL),
(1868, 5, 'Slogan', 'Slogan', '2026-01-12 13:53:56', NULL),
(1869, 5, 'System email', 'System email', '2026-01-12 13:53:56', NULL),
(1870, 5, 'Address', 'Address', '2026-01-12 13:53:56', NULL),
(1871, 5, 'Phone', 'Phone', '2026-01-12 13:53:56', NULL),
(1872, 5, 'Youtube API key', 'Youtube API key', '2026-01-12 13:53:56', NULL),
(1873, 5, 'Get YouTube API key', 'Get YouTube API key', '2026-01-12 13:53:56', NULL),
(1874, 5, 'If you want to use Google Drive video, you need to enable the Google Drive service in this API', 'If you want to use Google Drive video, you need to enable the Google Drive service in this API', '2026-01-12 13:53:56', NULL),
(1875, 5, 'Vimeo API key', 'Vimeo API key', '2026-01-12 13:53:56', NULL),
(1876, 5, 'get Vimeo API key', 'get Vimeo API key', '2026-01-12 13:53:56', NULL),
(1877, 5, 'Purchase code', 'Purchase code', '2026-01-12 13:53:56', NULL),
(1878, 5, 'System language', 'System language', '2026-01-12 13:53:56', NULL),
(1879, 5, 'Course selling tax', 'Course selling tax', '2026-01-12 13:53:56', NULL),
(1880, 5, 'Enter 0 if you want to disable the tax option', 'Enter 0 if you want to disable the tax option', '2026-01-12 13:53:56', NULL),
(1881, 5, 'Device limitation', 'Device limitation', '2026-01-12 13:53:56', NULL),
(1882, 5, 'Footer text', 'Footer text', '2026-01-12 13:53:56', NULL),
(1883, 5, 'Footer link', 'Footer link', '2026-01-12 13:53:56', NULL),
(1884, 5, 'Save Changes', 'Save Changes', '2026-01-12 13:53:56', NULL),
(1885, 5, 'Update Product', 'Update Product', '2026-01-12 13:53:56', NULL),
(1886, 5, 'File', 'File', '2026-01-12 13:53:56', NULL),
(1887, 5, 'Update', 'Update', '2026-01-12 13:53:56', NULL),
(1888, 5, 'Version updated successfully', 'Version updated successfully', '2026-01-12 13:53:56', NULL),
(1889, 5, 'Select your service', 'Select your service', '2026-01-12 13:53:56', NULL),
(1890, 5, 'Course title', 'Course title', '2026-01-12 13:53:56', NULL),
(1891, 5, 'Course short description', 'Course short description', '2026-01-12 13:53:56', NULL),
(1892, 5, 'Course long description', 'Course long description', '2026-01-12 13:53:56', NULL),
(1893, 5, 'Course requirements', 'Course requirements', '2026-01-12 13:53:56', NULL),
(1894, 5, 'Course outcomes', 'Course outcomes', '2026-01-12 13:53:56', NULL),
(1895, 5, 'Course faq', 'Course faq', '2026-01-12 13:53:56', NULL),
(1896, 5, 'Course seo tags', 'Course seo tags', '2026-01-12 13:53:56', NULL),
(1897, 5, 'Course lesson text', 'Course lesson text', '2026-01-12 13:53:56', NULL),
(1898, 5, 'Course certificate text', 'Course certificate text', '2026-01-12 13:53:56', NULL),
(1899, 5, 'Course quiz text', 'Course quiz text', '2026-01-12 13:53:56', NULL),
(1900, 5, 'Course blog title', 'Course blog title', '2026-01-12 13:53:56', NULL),
(1901, 5, 'Course blog post', 'Course blog post', '2026-01-12 13:53:56', NULL),
(1902, 5, 'Course thumbnail', 'Course thumbnail', '2026-01-12 13:53:56', NULL),
(1903, 5, 'Enter your keyword', 'Enter your keyword', '2026-01-12 13:53:56', NULL),
(1904, 5, 'Generate', 'Generate', '2026-01-12 13:53:56', NULL),
(1905, 5, 'Generating', 'Generating', '2026-01-12 13:53:56', NULL),
(1906, 5, 'Your images', 'Your images', '2026-01-12 13:53:56', NULL),
(1907, 5, 'Generated text', 'Generated text', '2026-01-12 13:53:56', NULL),
(1908, 5, 'Copy', 'Copy', '2026-01-12 13:53:56', NULL),
(1909, 5, 'Copied', 'Copied', '2026-01-12 13:53:56', NULL),
(1910, 5, 'Not found', 'Not found', '2026-01-12 13:53:56', NULL),
(1911, 5, 'About This Application', 'About This Application', '2026-01-12 13:53:56', NULL),
(1912, 5, 'Software version', 'Software version', '2026-01-12 13:53:56', NULL),
(1913, 5, 'Laravel version', 'Laravel version', '2026-01-12 13:53:56', NULL),
(1914, 5, 'Check update', 'Check update', '2026-01-12 13:53:56', NULL),
(1915, 5, 'Php version', 'Php version', '2026-01-12 13:53:56', NULL),
(1916, 5, 'Curl enable', 'Curl enable', '2026-01-12 13:53:56', NULL),
(1917, 5, 'enabled', 'enabled', '2026-01-12 13:53:56', NULL),
(1918, 5, 'Product license', 'Product license', '2026-01-12 13:53:56', NULL),
(1919, 5, 'Enter valid purchase code', 'Enter valid purchase code', '2026-01-12 13:53:56', NULL),
(1920, 5, 'Customer support status', 'Customer support status', '2026-01-12 13:53:56', NULL),
(1921, 5, 'Support expiry date', 'Support expiry date', '2026-01-12 13:53:56', NULL),
(1922, 5, 'Customer name', 'Customer name', '2026-01-12 13:53:56', NULL),
(1923, 5, 'Customer support', 'Customer support', '2026-01-12 13:53:56', NULL),
(1924, 5, 'Payment setting', 'Payment setting', '2026-01-12 13:53:56', NULL),
(1925, 5, 'Currency Settings', 'Currency Settings', '2026-01-12 13:53:56', NULL),
(1926, 5, 'Heads up !!', 'Heads up !!', '2026-01-12 13:53:56', NULL),
(1927, 5, 'Ensure that the system currency and all active payment gateway currencies are same', 'Ensure that the system currency and all active payment gateway currencies are same', '2026-01-12 13:53:56', NULL),
(1928, 5, 'Select currency', 'Select currency', '2026-01-12 13:53:56', NULL),
(1929, 5, 'Currency position', 'Currency position', '2026-01-12 13:53:56', NULL),
(1930, 5, 'Left', 'Left', '2026-01-12 13:53:56', NULL),
(1931, 5, 'Right', 'Right', '2026-01-12 13:53:56', NULL),
(1932, 5, 'Left with a space', 'Left with a space', '2026-01-12 13:53:56', NULL),
(1933, 5, 'Right with a space', 'Right with a space', '2026-01-12 13:53:56', NULL),
(1934, 5, 'No', 'No', '2026-01-12 13:53:56', NULL),
(1935, 5, 'Yes', 'Yes', '2026-01-12 13:53:56', NULL),
(1936, 5, 'Want to keep test mode enabled', 'Want to keep test mode enabled', '2026-01-12 13:53:56', NULL),
(1937, 5, 'sandbox client id', 'sandbox client id', '2026-01-12 13:53:56', NULL),
(1938, 5, 'sandbox secret key', 'sandbox secret key', '2026-01-12 13:53:56', NULL),
(1939, 5, 'production client id', 'production client id', '2026-01-12 13:53:56', NULL),
(1940, 5, 'production secret key', 'production secret key', '2026-01-12 13:53:56', NULL),
(1941, 5, 'setting', 'setting', '2026-01-12 13:53:56', NULL),
(1942, 5, 'public key', 'public key', '2026-01-12 13:53:56', NULL),
(1943, 5, 'secret key', 'secret key', '2026-01-12 13:53:56', NULL),
(1944, 5, 'public live key', 'public live key', '2026-01-12 13:53:56', NULL),
(1945, 5, 'secret live key', 'secret live key', '2026-01-12 13:53:56', NULL),
(1946, 5, 'Choose an option', 'Choose an option', '2026-01-12 13:53:56', NULL),
(1947, 5, 'bank information', 'bank information', '2026-01-12 13:53:56', NULL),
(1948, 5, 'secret test key', 'secret test key', '2026-01-12 13:53:56', NULL),
(1949, 5, 'public test key', 'public test key', '2026-01-12 13:53:56', NULL),
(1950, 5, 'Cookie Policy', 'Cookie Policy', '2026-01-12 13:53:56', NULL),
(1951, 5, 'Accept', 'Accept', '2026-01-12 13:53:56', NULL),
(1952, 5, 'Learn More', 'Learn More', '2026-01-12 13:53:56', NULL),
(1953, 5, 'Students has Enrolled', 'Students has Enrolled', '2026-01-12 13:53:56', NULL),
(1954, 5, 'Page Builder', 'Page Builder', '2026-01-12 13:53:56', NULL),
(1955, 5, 'Create Page', 'Create Page', '2026-01-12 13:53:56', NULL),
(1956, 5, '#', '#', '2026-01-12 13:53:56', NULL),
(1957, 5, 'Page Name', 'Page Name', '2026-01-12 13:53:56', NULL),
(1958, 5, 'Status', 'Status', '2026-01-12 13:53:56', NULL),
(1959, 5, 'Action', 'Action', '2026-01-12 13:53:56', NULL),
(1960, 5, 'Edit Home Page', 'Edit Home Page', '2026-01-12 13:53:56', NULL),
(1961, 5, 'Edit Home', 'Edit Home', '2026-01-12 13:53:56', NULL),
(1962, 5, 'Preview', 'Preview', '2026-01-12 13:53:56', NULL),
(1963, 5, 'Edit Layout', 'Edit Layout', '2026-01-12 13:53:56', NULL),
(1964, 5, 'Edit Page', 'Edit Page', '2026-01-12 13:53:56', NULL),
(1965, 5, 'Edit', 'Edit', '2026-01-12 13:53:56', NULL),
(1966, 5, 'Delete', 'Delete', '2026-01-12 13:53:56', NULL),
(1967, 5, 'Home page activated', 'Home page activated', '2026-01-12 13:53:56', NULL),
(1968, 5, 'The Leader in online learning', 'The Leader in online learning', '2026-01-12 13:53:56', NULL),
(1969, 5, 'Get Started', 'Get Started', '2026-01-12 13:53:56', NULL),
(1970, 5, 'Special Featured Course', 'Special Featured Course', '2026-01-12 13:53:56', NULL),
(1971, 5, 'Those course highlights a handpicked course with exceptional content or exclusive offerings.', 'Those course highlights a handpicked course with exceptional content or exclusive offerings.', '2026-01-12 13:53:56', NULL),
(1972, 5, 'Why Choose Us', 'Why Choose Us', '2026-01-12 13:53:56', NULL),
(1973, 5, 'Happy student', 'Happy student', '2026-01-12 13:53:56', NULL),
(1974, 5, 'Quality educators', 'Quality educators', '2026-01-12 13:53:56', NULL),
(1975, 5, 'Premium courses', 'Premium courses', '2026-01-12 13:53:56', NULL),
(1976, 5, 'Cost-free course', 'Cost-free course', '2026-01-12 13:53:56', NULL),
(1977, 5, 'Top Rated Course', 'Top Rated Course', '2026-01-12 13:53:56', NULL),
(1978, 5, 'Top rated course showcases the highest-rated course based on student reviews and performance metrics.', 'Top rated course showcases the highest-rated course based on student reviews and performance metrics.', '2026-01-12 13:53:56', NULL),
(1979, 5, 'What the people Thinks About Us', 'What the people Thinks About Us', '2026-01-12 13:53:56', NULL),
(1980, 5, 'It highlights feedback and testimonials from users, reflecting their experiences and satisfaction.', 'It highlights feedback and testimonials from users, reflecting their experiences and satisfaction.', '2026-01-12 13:53:56', NULL),
(1981, 5, 'Frequently Asked Questions', 'Frequently Asked Questions', '2026-01-12 13:53:56', NULL),
(1982, 5, 'Our Latest Blog', 'Our Latest Blog', '2026-01-12 13:53:56', NULL),
(1983, 5, 'The latest blog highlights the most recent articles, updates, and insights from our platform.', 'The latest blog highlights the most recent articles, updates, and insights from our platform.', '2026-01-12 13:53:56', NULL),
(1984, 5, 'Wishlist', 'Wishlist', '2026-01-12 13:53:56', NULL),
(1985, 5, 'Log Out', 'Log Out', '2026-01-12 13:53:56', NULL),
(1986, 5, 'Logout', 'Logout', '2026-01-12 13:53:56', NULL),
(1987, 5, 'Admin Dashboard', 'Admin Dashboard', '2026-01-12 13:53:56', NULL),
(1988, 5, 'It is a long established fact that a reader will be the distract by the read content of a page layout', 'It is a long established fact that a reader will be the distract by the read content of a page layout', '2026-01-12 13:53:56', NULL),
(1989, 5, 'Subscribe to stay tuned for new web design and latest updates. Let\'s do it!', 'Subscribe to stay tuned for new web design and latest updates. Let\'s do it!', '2026-01-12 13:53:56', NULL),
(1990, 5, '© 2024 All Rights Reserved', '© 2024 All Rights Reserved', '2026-01-12 13:53:56', NULL),
(1991, 5, '404 not found', '404 not found', '2026-01-12 13:53:56', NULL),
(1992, 5, 'The page you requested could not be found', 'The page you requested could not be found', '2026-01-12 13:53:56', NULL),
(1993, 5, 'Please try the following', 'Please try the following', '2026-01-12 13:53:56', NULL),
(1994, 5, 'Check the spelling of the url', 'Check the spelling of the url', '2026-01-12 13:53:56', NULL),
(1995, 5, 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', '2026-01-12 13:53:56', NULL),
(1996, 5, 'Back to home', 'Back to home', '2026-01-12 13:53:56', NULL),
(1997, 5, 'Become An Instructor', 'Become An Instructor', '2026-01-12 13:53:56', NULL),
(1998, 5, 'Title', 'Title', '2026-01-12 13:53:56', NULL),
(1999, 5, 'Description', 'Description', '2026-01-12 13:53:56', NULL),
(2000, 5, 'Video Url', 'Video Url', '2026-01-12 13:53:56', NULL),
(2001, 5, 'Image', 'Image', '2026-01-12 13:53:56', NULL),
(2002, 5, 'Banner Information', 'Banner Information', '2026-01-12 13:53:56', NULL),
(2003, 5, 'Add new', 'Add new', '2026-01-12 13:53:56', NULL),
(2004, 5, 'Remove', 'Remove', '2026-01-12 13:53:56', NULL),
(2005, 5, 'Video Link', 'Video Link', '2026-01-12 13:53:56', NULL),
(2006, 5, 'Youtube', 'Youtube', '2026-01-12 13:53:56', NULL),
(2007, 5, 'HTML5', 'HTML5', '2026-01-12 13:53:56', NULL),
(2008, 5, 'All Category', 'All Category', '2026-01-12 13:53:56', NULL),
(2009, 5, 'Add new category', 'Add new category', '2026-01-12 13:53:56', NULL),
(2010, 5, 'Category Name', 'Category Name', '2026-01-12 13:53:56', NULL),
(2011, 5, 'Enter your category name', 'Enter your category name', '2026-01-12 13:53:56', NULL),
(2012, 5, 'Enter your unique category name', 'Enter your unique category name', '2026-01-12 13:53:56', NULL),
(2013, 5, 'Pick Your Icon', 'Pick Your Icon', '2026-01-12 13:53:56', NULL),
(2014, 5, 'Pick your category icon', 'Pick your category icon', '2026-01-12 13:53:56', NULL),
(2015, 5, 'Keywords', 'Keywords', '2026-01-12 13:53:56', NULL),
(2016, 5, 'optional', 'optional', '2026-01-12 13:53:56', NULL),
(2017, 5, 'Category Description', 'Category Description', '2026-01-12 13:53:56', NULL),
(2018, 5, 'Enter your description', 'Enter your description', '2026-01-12 13:53:56', NULL),
(2019, 5, 'Thumbnail', 'Thumbnail', '2026-01-12 13:53:56', NULL),
(2020, 5, 'Category logo', 'Category logo', '2026-01-12 13:53:56', NULL),
(2021, 5, 'Category added successfully', 'Category added successfully', '2026-01-12 13:53:56', NULL),
(2022, 5, 'Add', 'Add', '2026-01-12 13:53:56', NULL),
(2023, 5, 'Edit category', 'Edit category', '2026-01-12 13:53:56', NULL),
(2024, 5, 'Create course', 'Create course', '2026-01-12 13:53:56', NULL),
(2025, 5, 'Enter Course Title', 'Enter Course Title', '2026-01-12 13:53:56', NULL),
(2026, 5, 'Short Description', 'Short Description', '2026-01-12 13:53:56', NULL),
(2027, 5, 'Enter Short Description', 'Enter Short Description', '2026-01-12 13:53:56', NULL),
(2028, 5, 'Enter Description', 'Enter Description', '2026-01-12 13:53:56', NULL),
(2029, 5, 'Create as', 'Create as', '2026-01-12 13:53:56', NULL),
(2030, 5, 'Select a category', 'Select a category', '2026-01-12 13:53:56', NULL),
(2031, 5, 'Course level', 'Course level', '2026-01-12 13:53:56', NULL),
(2032, 5, 'Select your course level', 'Select your course level', '2026-01-12 13:53:56', NULL),
(2033, 5, 'Made in', 'Made in', '2026-01-12 13:53:56', NULL),
(2034, 5, 'Select your course language', 'Select your course language', '2026-01-12 13:53:56', NULL),
(2035, 5, 'Pricing type', 'Pricing type', '2026-01-12 13:53:56', NULL),
(2036, 5, 'Enter your course price', 'Enter your course price', '2026-01-12 13:53:56', NULL),
(2037, 5, 'Check if this course has discount', 'Check if this course has discount', '2026-01-12 13:53:56', NULL),
(2038, 5, 'Discounted price', 'Discounted price', '2026-01-12 13:53:56', NULL),
(2039, 5, 'Enter your discount price', 'Enter your discount price', '2026-01-12 13:53:56', NULL),
(2040, 5, 'Finish!', 'Finish!', '2026-01-12 13:53:56', NULL),
(2041, 5, 'Course added successfully', 'Course added successfully', '2026-01-12 13:53:56', NULL),
(2042, 5, 'Edit course', 'Edit course', '2026-01-12 13:53:56', NULL),
(2043, 5, 'Editing', 'Editing', '2026-01-12 13:53:56', NULL),
(2044, 5, 'Help', 'Help', '2026-01-12 13:53:56', NULL),
(2045, 5, 'Frontend View', 'Frontend View', '2026-01-12 13:53:56', NULL),
(2046, 5, 'Course Player', 'Course Player', '2026-01-12 13:53:56', NULL),
(2047, 5, 'Curriculum', 'Curriculum', '2026-01-12 13:53:56', NULL),
(2048, 5, 'Basic', 'Basic', '2026-01-12 13:53:56', NULL),
(2049, 5, 'Live Class', 'Live Class', '2026-01-12 13:53:56', NULL),
(2050, 5, 'Pricing', 'Pricing', '2026-01-12 13:53:56', NULL),
(2051, 5, 'Info', 'Info', '2026-01-12 13:53:56', NULL),
(2052, 5, 'Media', 'Media', '2026-01-12 13:53:56', NULL),
(2053, 5, 'SEO', 'SEO', '2026-01-12 13:53:56', NULL),
(2054, 5, 'Add new section', 'Add new section', '2026-01-12 13:53:56', NULL),
(2055, 5, 'Add section', 'Add section', '2026-01-12 13:53:56', NULL),
(2056, 5, 'Add a new Section', 'Add a new Section', '2026-01-12 13:53:56', NULL),
(2057, 5, 'Create bootcamp', 'Create bootcamp', '2026-01-12 13:53:56', NULL),
(2058, 5, 'Check if this bootcamp has discount', 'Check if this bootcamp has discount', '2026-01-12 13:53:56', NULL),
(2059, 5, 'Publish Date', 'Publish Date', '2026-01-12 13:53:56', NULL),
(2060, 5, 'Bootcamp Category', 'Bootcamp Category', '2026-01-12 13:53:56', NULL),
(2061, 5, 'No data found', 'No data found', '2026-01-12 13:53:56', NULL),
(2062, 5, 'Add category', 'Add category', '2026-01-12 13:53:56', NULL),
(2063, 5, 'Category has been created.', 'Category has been created.', '2026-01-12 13:53:56', NULL),
(2064, 5, 'Total bootcamps', 'Total bootcamps', '2026-01-12 13:53:56', NULL),
(2065, 5, 'Bootcamp has been created.', 'Bootcamp has been created.', '2026-01-12 13:53:56', NULL),
(2066, 5, 'Edit bootcamp', 'Edit bootcamp', '2026-01-12 13:53:56', NULL),
(2067, 5, 'Frontent View', 'Frontent View', '2026-01-12 13:53:56', NULL),
(2068, 5, 'Create Student', 'Create Student', '2026-01-12 13:53:56', NULL),
(2069, 5, 'Student Info', 'Student Info', '2026-01-12 13:53:56', NULL),
(2070, 5, 'Login Credentials', 'Login Credentials', '2026-01-12 13:53:56', NULL),
(2071, 5, 'Social Links', 'Social Links', '2026-01-12 13:53:56', NULL),
(2072, 5, 'Name', 'Name', '2026-01-12 13:53:56', NULL),
(2073, 5, 'Biography', 'Biography', '2026-01-12 13:53:56', NULL),
(2074, 5, 'User image', 'User image', '2026-01-12 13:53:56', NULL),
(2075, 5, 'Facebook', 'Facebook', '2026-01-12 13:53:56', NULL),
(2076, 5, 'Twitter', 'Twitter', '2026-01-12 13:53:56', NULL),
(2077, 5, 'Linkedin', 'Linkedin', '2026-01-12 13:53:56', NULL),
(2078, 5, 'Student add successfully', 'Student add successfully', '2026-01-12 13:53:56', NULL),
(2079, 5, 'Student List', 'Student List', '2026-01-12 13:53:56', NULL),
(2080, 5, 'Export', 'Export', '2026-01-12 13:53:56', NULL),
(2081, 5, 'PDF', 'PDF', '2026-01-12 13:53:56', NULL),
(2082, 5, 'Print', 'Print', '2026-01-12 13:53:56', NULL),
(2083, 5, 'Search user', 'Search user', '2026-01-12 13:53:56', NULL),
(2084, 5, 'Search', 'Search', '2026-01-12 13:53:56', NULL),
(2085, 5, 'Enrolled Course', 'Enrolled Course', '2026-01-12 13:53:56', NULL),
(2086, 5, 'Options', 'Options', '2026-01-12 13:53:56', NULL),
(2087, 5, 'Email Verification', 'Email Verification', '2026-01-12 13:53:56', NULL),
(2088, 5, 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', '2026-01-12 13:53:56', NULL),
(2089, 5, 'Resend Verification Email', 'Resend Verification Email', '2026-01-12 13:53:56', NULL),
(2090, 5, 'My Courses', 'My Courses', '2026-01-12 13:53:56', NULL),
(2091, 5, 'My Bootcamps', 'My Bootcamps', '2026-01-12 13:53:56', NULL),
(2092, 5, 'Upload picture', 'Upload picture', '2026-01-12 13:53:56', NULL),
(2093, 5, 'Upload New', 'Upload New', '2026-01-12 13:53:56', NULL),
(2094, 5, 'My Teams', 'My Teams', '2026-01-12 13:53:56', NULL),
(2095, 5, 'Please try using the appropriate keywords.', 'Please try using the appropriate keywords.', '2026-01-12 13:53:56', NULL),
(2096, 5, 'Bootcamps', 'Bootcamps', '2026-01-12 13:53:56', NULL),
(2097, 5, 'All Bootcamps', 'All Bootcamps', '2026-01-12 13:53:56', NULL),
(2098, 5, 'Class', 'Class', '2026-01-12 13:53:56', NULL),
(2099, 5, 'View Details', 'View Details', '2026-01-12 13:53:56', NULL),
(2100, 5, 'Buy Now', 'Buy Now', '2026-01-12 13:53:56', NULL),
(2101, 5, 'Item is already purchased.', 'Item is already purchased.', '2026-01-12 13:53:56', NULL),
(2102, 5, 'Bootcamp payment', 'Bootcamp payment', '2026-01-12 13:53:56', NULL),
(2103, 5, 'Order summary', 'Order summary', '2026-01-12 13:53:56', NULL),
(2104, 5, 'Cancel Payment', 'Cancel Payment', '2026-01-12 13:53:56', NULL),
(2105, 5, 'Select payment gateway', 'Select payment gateway', '2026-01-12 13:53:56', NULL),
(2106, 5, 'Item List', 'Item List', '2026-01-12 13:53:56', NULL),
(2107, 5, 'Total', 'Total', '2026-01-12 13:53:56', NULL),
(2108, 5, 'Grand Total', 'Grand Total', '2026-01-12 13:53:56', NULL),
(2109, 5, 'Reviews', 'Reviews', '2026-01-12 13:53:56', NULL),
(2110, 5, 'lesson', 'lesson', '2026-01-12 13:53:56', NULL),
(2111, 5, 'Students', 'Students', '2026-01-12 13:53:56', NULL),
(2112, 5, 'Terms and condition', 'Terms and condition', '2026-01-12 13:53:56', NULL),
(2113, 5, 'Terms', 'Terms', '2026-01-12 13:53:56', NULL),
(2114, 5, 'WELLCOME TO CHEF', 'WELLCOME TO CHEF', '2026-01-12 13:53:56', NULL),
(2115, 5, 'Visit Courses', 'Visit Courses', '2026-01-12 13:53:56', NULL),
(2116, 5, 'Enrolled Learners', 'Enrolled Learners', '2026-01-12 13:53:56', NULL),
(2117, 5, 'Online Instructors', 'Online Instructors', '2026-01-12 13:53:56', NULL),
(2118, 5, 'Latest Top Skills', 'Latest Top Skills', '2026-01-12 13:53:56', NULL),
(2119, 5, 'Awesome  site the top advertising been business.', 'Awesome  site the top advertising been business.', '2026-01-12 13:53:56', NULL),
(2120, 5, 'Industry Experts', 'Industry Experts', '2026-01-12 13:53:56', NULL),
(2121, 5, 'Learning From Anywhere', 'Learning From Anywhere', '2026-01-12 13:53:56', NULL),
(2122, 5, 'Top Rated Courses', 'Top Rated Courses', '2026-01-12 13:53:56', NULL),
(2123, 5, 'Upcoming Courses', 'Upcoming Courses', '2026-01-12 13:53:56', NULL),
(2124, 5, 'Highlights the latest courses set to launch, giving students a sneak peek at new opportunities for learning and skill development. Stay ahead with our curated selection of upcoming educational offerings!', 'Highlights the latest courses set to launch, giving students a sneak peek at new opportunities for learning and skill development. Stay ahead with our curated selection of upcoming educational offerings!', '2026-01-12 13:53:56', NULL),
(2125, 5, 'Featured Courses', 'Featured Courses', '2026-01-12 13:53:56', NULL),
(2126, 5, 'Think more clearly', 'Think more clearly', '2026-01-12 13:53:56', NULL),
(2127, 5, 'Awesome  site. on the top advertising a business online includes assembling Having the most keep.', 'Awesome  site. on the top advertising a business online includes assembling Having the most keep.', '2026-01-12 13:53:56', NULL),
(2128, 5, 'Video title', 'Video title', '2026-01-12 13:53:56', NULL),
(2129, 5, 'Our Popular Instructor', 'Our Popular Instructor', '2026-01-12 13:53:56', NULL),
(2130, 5, 'Highlights our most sought-after educator, recognized for their engaging teaching style and exceptional course content. Discover their expertise and join the many students who have benefited from their classes!', 'Highlights our most sought-after educator, recognized for their engaging teaching style and exceptional course content. Discover their expertise and join the many students who have benefited from their classes!', '2026-01-12 13:53:56', NULL),
(2131, 5, 'Frequently Asked Questions?', 'Frequently Asked Questions?', '2026-01-12 13:53:56', NULL),
(2132, 5, 'FAQ provides quick answers to common inquiries, helping users resolve doubts efficiently.', 'FAQ provides quick answers to common inquiries, helping users resolve doubts efficiently.', '2026-01-12 13:53:56', NULL),
(2133, 5, 'Follow The Latest News', 'Follow The Latest News', '2026-01-12 13:53:56', NULL),
(2134, 5, 'Top Courses', 'Top Courses', '2026-01-12 13:53:56', NULL),
(2135, 5, 'lessons', 'lessons', '2026-01-12 13:53:56', NULL),
(2136, 5, 'Subscribe to our newsletter to get latest updates', 'Subscribe to our newsletter to get latest updates', '2026-01-12 13:53:56', NULL),
(2137, 5, 'Subscribe to stay tuned for new latest updates and offer. Let\'s do it! ', 'Subscribe to stay tuned for new latest updates and offer. Let\'s do it! ', '2026-01-12 13:53:56', NULL),
(2138, 5, 'Subscribe', 'Subscribe', '2026-01-12 13:53:56', NULL),
(2139, 5, 'Read our privacy policy', 'Read our privacy policy', '2026-01-12 13:53:56', NULL),
(2140, 5, 'Here', 'Here', '2026-01-12 13:53:56', NULL),
(2141, 5, 'Blog category', 'Blog category', '2026-01-12 13:53:56', NULL),
(2142, 5, 'Subtitle', 'Subtitle', '2026-01-12 13:53:56', NULL),
(2143, 5, '(80  Character)', '(80  Character)', '2026-01-12 13:53:56', NULL),
(2144, 5, 'Category add successfully', 'Category add successfully', '2026-01-12 13:53:56', NULL),
(2145, 5, 'Total number of blog', 'Total number of blog', '2026-01-12 13:53:56', NULL),
(2146, 5, 'Add new blog', 'Add new blog', '2026-01-12 13:53:56', NULL),
(2147, 5, 'Search Title', 'Search Title', '2026-01-12 13:53:56', NULL),
(2148, 5, 'Add Blog', 'Add Blog', '2026-01-12 13:53:56', NULL),
(2149, 5, 'Enter blog title', 'Enter blog title', '2026-01-12 13:53:56', NULL),
(2150, 5, 'Writing your keyword and hit htw enter button', 'Writing your keyword and hit htw enter button', '2026-01-12 13:53:56', NULL),
(2151, 5, 'Blog banner', 'Blog banner', '2026-01-12 13:53:56', NULL),
(2152, 5, 'Blog thumbnail', 'Blog thumbnail', '2026-01-12 13:53:56', NULL),
(2153, 5, 'Would you like to designate it as popular?', 'Would you like to designate it as popular?', '2026-01-12 13:53:56', NULL),
(2154, 5, 'Blog add successfully', 'Blog add successfully', '2026-01-12 13:53:56', NULL),
(2155, 5, 'Creator', 'Creator', '2026-01-12 13:53:56', NULL),
(2156, 5, 'View on frontend', 'View on frontend', '2026-01-12 13:53:56', NULL),
(2157, 5, 'Read More', 'Read More', '2026-01-12 13:53:56', NULL),
(2158, 5, 'Get Started Now', 'Get Started Now', '2026-01-12 13:53:56', NULL),
(2159, 5, 'Creating A Community Of Life Long Learners', 'Creating A Community Of Life Long Learners', '2026-01-12 13:53:56', NULL),
(2160, 5, 'Our LMS goes beyond just providing courses. It\'s a platform designed to ignite curiosity and empower your lifelong learning journey.  This supportive community provides a space to ask questions, no matter how big or small, and receive insightful answers from experienced learners and subject-matter experts.', 'Our LMS goes beyond just providing courses. It\'s a platform designed to ignite curiosity and empower your lifelong learning journey.  This supportive community provides a space to ask questions, no matter how big or small, and receive insightful answers from experienced learners and subject-matter experts.', '2026-01-12 13:53:56', NULL),
(2161, 5, 'Share your own experiences and challenges, and find encouragement and inspiration from others on a similar path. The diverse perspectives within our community will broaden your horizons and challenge your thinking, fostering a deeper understanding and a richer learning experience.  Together, we\'ll transform learning from a solitary pursuit into a collaborative adventure, where shared knowledge fuels individual growth and collective discovery.', 'Share your own experiences and challenges, and find encouragement and inspiration from others on a similar path. The diverse perspectives within our community will broaden your horizons and challenge your thinking, fostering a deeper understanding and a richer learning experience.  Together, we\'ll transform learning from a solitary pursuit into a collaborative adventure, where shared knowledge fuels individual growth and collective discovery.', '2026-01-12 13:53:56', NULL),
(2162, 5, 'Learn more about us', 'Learn more about us', '2026-01-12 13:53:56', NULL),
(2163, 5, 'Our Online Courses', 'Our Online Courses', '2026-01-12 13:53:56', NULL),
(2164, 5, 'See More', 'See More', '2026-01-12 13:53:56', NULL),
(2165, 5, 'Our Blog', 'Our Blog', '2026-01-12 13:53:56', NULL),
(2166, 5, 'LEARN FROM TODAY', 'LEARN FROM TODAY', '2026-01-12 13:53:56', NULL),
(2167, 5, 'Watch Video', 'Watch Video', '2026-01-12 13:53:56', NULL),
(2168, 5, 'Expert Mentors', 'Expert Mentors', '2026-01-12 13:53:56', NULL),
(2169, 5, 'Students Globally', 'Students Globally', '2026-01-12 13:53:56', NULL),
(2170, 5, 'Cost Free Course', 'Cost Free Course', '2026-01-12 13:53:56', NULL),
(2171, 5, 'What they’re saying about our courses', 'What they’re saying about our courses', '2026-01-12 13:53:56', NULL),
(2172, 5, 'Having enjoyed a breathlessly successful 2015, there can be no DJ  dynamic set of teaching tools Billed to be deployed.', 'Having enjoyed a breathlessly successful 2015, there can be no DJ  dynamic set of teaching tools Billed to be deployed.', '2026-01-12 13:53:56', NULL),
(2173, 5, 'Student email verification', 'Student email verification', '2026-01-12 13:53:56', NULL),
(2174, 5, 'Disabled', 'Disabled', '2026-01-12 13:53:56', NULL),
(2175, 5, 'Frontend Settings', 'Frontend Settings', '2026-01-12 13:53:56', NULL),
(2176, 5, 'Motivational Speech', 'Motivational Speech', '2026-01-12 13:53:56', NULL),
(2177, 5, 'Website FAQS', 'Website FAQS', '2026-01-12 13:53:56', NULL),
(2178, 5, 'Contact Information', 'Contact Information', '2026-01-12 13:53:56', NULL),
(2179, 5, 'User Reviews', 'User Reviews', '2026-01-12 13:53:56', NULL),
(2180, 5, 'Logo & Images', 'Logo & Images', '2026-01-12 13:53:56', NULL),
(2181, 5, 'Frontend website settings', 'Frontend website settings', '2026-01-12 13:53:56', NULL),
(2182, 5, 'Banner title', 'Banner title', '2026-01-12 13:53:56', NULL),
(2183, 5, 'Banner sub title', 'Banner sub title', '2026-01-12 13:53:56', NULL),
(2184, 5, 'Promo Video Provider', 'Promo Video Provider', '2026-01-12 13:53:56', NULL),
(2185, 5, 'Youtube Video Link', 'Youtube Video Link', '2026-01-12 13:53:56', NULL),
(2186, 5, 'Vimeo Video Link', 'Vimeo Video Link', '2026-01-12 13:53:56', NULL),
(2187, 5, 'HTML5 Video link', 'HTML5 Video link', '2026-01-12 13:53:56', NULL),
(2188, 5, 'Promo video link', 'Promo video link', '2026-01-12 13:53:56', NULL),
(2189, 5, 'Cookie status', 'Cookie status', '2026-01-12 13:53:56', NULL),
(2190, 5, 'Cookie note', 'Cookie note', '2026-01-12 13:53:56', NULL),
(2191, 5, 'Refund policy', 'Refund policy', '2026-01-12 13:53:56', NULL),
(2192, 5, 'Mobile App download Link', 'Mobile App download Link', '2026-01-12 13:53:56', NULL),
(2193, 5, 'Update Settings', 'Update Settings', '2026-01-12 13:53:56', NULL),
(2194, 5, 'designation', 'designation', '2026-01-12 13:53:56', NULL),
(2195, 5, 'Question', 'Question', '2026-01-12 13:53:56', NULL),
(2196, 5, 'Write a question', 'Write a question', '2026-01-12 13:53:56', NULL),
(2197, 5, 'Answer', 'Answer', '2026-01-12 13:53:56', NULL),
(2198, 5, 'Write a question answer', 'Write a question answer', '2026-01-12 13:53:56', NULL),
(2199, 5, 'Contact Email', 'Contact Email', '2026-01-12 13:53:56', NULL),
(2200, 5, 'Phone Number', 'Phone Number', '2026-01-12 13:53:56', NULL),
(2201, 5, 'Office Hours', 'Office Hours', '2026-01-12 13:53:56', NULL),
(2202, 5, 'Location', 'Location', '2026-01-12 13:53:56', NULL),
(2203, 5, 'Latitude', 'Latitude', '2026-01-12 13:53:56', NULL),
(2204, 5, 'Longitude', 'Longitude', '2026-01-12 13:53:56', NULL),
(2205, 5, 'Recaptcha settings', 'Recaptcha settings', '2026-01-12 13:53:56', NULL),
(2206, 5, 'Recaptcha status', 'Recaptcha status', '2026-01-12 13:53:56', NULL),
(2207, 5, 'Recaptcha sitekey', 'Recaptcha sitekey', '2026-01-12 13:53:56', NULL),
(2208, 5, 'Recaptcha secretkey', 'Recaptcha secretkey', '2026-01-12 13:53:56', NULL),
(2209, 5, 'Update recaptcha settings', 'Update recaptcha settings', '2026-01-12 13:53:56', NULL),
(2210, 5, 'Review', 'Review', '2026-01-12 13:53:56', NULL),
(2211, 5, 'Add new Review', 'Add new Review', '2026-01-12 13:53:56', NULL),
(2212, 5, 'Click here to choose a banner image', 'Click here to choose a banner image', '2026-01-12 13:53:56', NULL);
INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(2213, 5, 'Upload banner image', 'Upload banner image', '2026-01-12 13:53:56', NULL),
(2214, 5, 'Click here to choose a light logo', 'Click here to choose a light logo', '2026-01-12 13:53:56', NULL),
(2215, 5, 'Upload light logo', 'Upload light logo', '2026-01-12 13:53:56', NULL),
(2216, 5, 'Click here to choose a dark logo', 'Click here to choose a dark logo', '2026-01-12 13:53:56', NULL),
(2217, 5, 'Upload dark logo', 'Upload dark logo', '2026-01-12 13:53:56', NULL),
(2218, 5, 'Click here to choose a favicon', 'Click here to choose a favicon', '2026-01-12 13:53:56', NULL),
(2219, 5, 'Upload favicon', 'Upload favicon', '2026-01-12 13:53:56', NULL),
(2220, 5, 'Frontend settings update successfully', 'Frontend settings update successfully', '2026-01-12 13:53:56', NULL),
(2221, 5, 'User already register and signing up for using it', 'User already register and signing up for using it', '2026-01-12 13:53:56', NULL),
(2222, 5, 'Get Courses', 'Get Courses', '2026-01-12 13:53:56', NULL),
(2223, 5, 'Start Learning', 'Start Learning', '2026-01-12 13:53:56', NULL),
(2224, 5, 'Coding', 'Coding', '2026-01-12 13:53:56', NULL),
(2225, 5, 'Languages', 'Languages', '2026-01-12 13:53:56', NULL),
(2226, 5, 'The industry\'s standard dummy text ever since the  unknown printer took a galley of type and scrambled', 'The industry\'s standard dummy text ever since the  unknown printer took a galley of type and scrambled', '2026-01-12 13:53:56', NULL),
(2227, 5, 'Online Courses', 'Online Courses', '2026-01-12 13:53:56', NULL),
(2228, 5, 'Top Instructors', 'Top Instructors', '2026-01-12 13:53:56', NULL),
(2229, 5, 'Online Certificates', 'Online Certificates', '2026-01-12 13:53:56', NULL),
(2230, 5, 'Pick A Course To', 'Pick A Course To', '2026-01-12 13:53:56', NULL),
(2231, 5, 'Download our mobile app, start learning', 'Download our mobile app, start learning', '2026-01-12 13:53:56', NULL),
(2232, 5, 'Academy', 'Academy', '2026-01-12 13:53:56', NULL),
(2233, 5, 'Download Now', 'Download Now', '2026-01-12 13:53:56', NULL),
(2234, 5, 'Frequently Asked', 'Frequently Asked', '2026-01-12 13:53:56', NULL),
(2235, 5, 'Questions', 'Questions', '2026-01-12 13:53:56', NULL),
(2236, 5, 'What Our', 'What Our', '2026-01-12 13:53:56', NULL),
(2237, 5, 'Have To Say', 'Have To Say', '2026-01-12 13:53:56', NULL),
(2238, 5, 'Get News with', 'Get News with', '2026-01-12 13:53:56', NULL),
(2239, 5, 'comment', 'comment', '2026-01-12 13:53:56', NULL),
(2240, 5, 'Course Manager', 'Course Manager', '2026-01-12 13:53:56', NULL),
(2241, 5, 'Active courses', 'Active courses', '2026-01-12 13:53:56', NULL),
(2242, 5, 'Pending courses', 'Pending courses', '2026-01-12 13:53:56', NULL),
(2243, 5, 'Free courses', 'Free courses', '2026-01-12 13:53:56', NULL),
(2244, 5, 'Paid courses', 'Paid courses', '2026-01-12 13:53:56', NULL),
(2245, 5, 'All', 'All', '2026-01-12 13:53:56', NULL),
(2246, 5, 'Apply', 'Apply', '2026-01-12 13:53:56', NULL),
(2247, 5, 'Lesson & Section', 'Lesson & Section', '2026-01-12 13:53:56', NULL),
(2248, 5, 'Enrolled Student', 'Enrolled Student', '2026-01-12 13:53:56', NULL),
(2249, 5, 'Section', 'Section', '2026-01-12 13:53:56', NULL),
(2250, 5, 'View Course On Frontend', 'View Course On Frontend', '2026-01-12 13:53:56', NULL),
(2251, 5, 'Go To Course Playing Page', 'Go To Course Playing Page', '2026-01-12 13:53:56', NULL),
(2252, 5, 'Duplicate Course', 'Duplicate Course', '2026-01-12 13:53:56', NULL),
(2253, 5, 'Make As Active', 'Make As Active', '2026-01-12 13:53:56', NULL),
(2254, 5, 'Delete Course', 'Delete Course', '2026-01-12 13:53:56', NULL),
(2255, 5, 'Course updated successfully', 'Course updated successfully', '2026-01-12 13:53:56', NULL),
(2256, 5, 'Multi language setting', 'Multi language setting', '2026-01-12 13:53:56', NULL),
(2257, 5, 'Language list', 'Language list', '2026-01-12 13:53:56', NULL),
(2258, 5, 'Add Language', 'Add Language', '2026-01-12 13:53:56', NULL),
(2259, 5, 'Import Language', 'Import Language', '2026-01-12 13:53:56', NULL),
(2260, 5, 'Direction', 'Direction', '2026-01-12 13:53:56', NULL),
(2261, 5, 'Option', 'Option', '2026-01-12 13:53:56', NULL),
(2262, 5, 'LTR', 'LTR', '2026-01-12 13:53:56', NULL),
(2263, 5, 'RTL', 'RTL', '2026-01-12 13:53:56', NULL),
(2264, 5, 'Edit phrase', 'Edit phrase', '2026-01-12 13:53:56', NULL),
(2265, 5, 'Add new language', 'Add new language', '2026-01-12 13:53:56', NULL),
(2266, 5, 'No special character or space is allowed. Valid examples: French, Spanish, Bengali etc', 'No special character or space is allowed. Valid examples: French, Spanish, Bengali etc', '2026-01-12 13:53:56', NULL),
(2267, 5, 'Save', 'Save', '2026-01-12 13:53:56', NULL),
(2268, 5, 'Import your language files from here. (Ex: english.json)', 'Import your language files from here. (Ex: english.json)', '2026-01-12 13:53:56', NULL),
(2269, 5, 'Import', 'Import', '2026-01-12 13:53:56', NULL),
(2270, 5, 'phrase_updated', 'phrase_updated', '2026-01-12 13:53:56', NULL),
(2271, 5, 'Direction has been updated', 'Direction has been updated', '2026-01-12 13:53:56', NULL),
(2272, 5, 'Education For Eeveryone', 'Education For Eeveryone', '2026-01-12 13:53:56', NULL),
(2273, 5, 'Search here', 'Search here', '2026-01-12 13:53:56', NULL),
(2274, 5, 'Online Instructor have a new ideas every week.', 'Online Instructor have a new ideas every week.', '2026-01-12 13:53:56', NULL),
(2275, 5, 'Special Featured Course.', 'Special Featured Course.', '2026-01-12 13:53:56', NULL),
(2276, 5, 'View More', 'View More', '2026-01-12 13:53:56', NULL),
(2277, 5, 'Know About Academy LMS Learning Platform', 'Know About Academy LMS Learning Platform', '2026-01-12 13:53:56', NULL),
(2278, 5, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts.', 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts.', '2026-01-12 13:53:56', NULL),
(2279, 5, 'Free Resources Learning English for Beginner', 'Free Resources Learning English for Beginner', '2026-01-12 13:53:56', NULL),
(2280, 5, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', '2026-01-12 13:53:56', NULL),
(2281, 5, 'Instructor have a new ideas every week.', 'Instructor have a new ideas every week.', '2026-01-12 13:53:56', NULL),
(2282, 5, 'Meet Our Team', 'Meet Our Team', '2026-01-12 13:53:56', NULL),
(2283, 5, 'Download our mobile app, start learning today', 'Download our mobile app, start learning today', '2026-01-12 13:53:56', NULL),
(2284, 5, 'Includes all Course && Features', 'Includes all Course && Features', '2026-01-12 13:53:56', NULL),
(2285, 5, 'Get Bundle', 'Get Bundle', '2026-01-12 13:53:56', NULL),
(2286, 5, 'Create Instructor', 'Create Instructor', '2026-01-12 13:53:56', NULL),
(2287, 5, 'Instructor Info', 'Instructor Info', '2026-01-12 13:53:56', NULL),
(2288, 5, 'Payment Information', 'Payment Information', '2026-01-12 13:53:56', NULL),
(2289, 5, 'Instructor add successfully', 'Instructor add successfully', '2026-01-12 13:53:56', NULL),
(2290, 5, 'Instructor List', 'Instructor List', '2026-01-12 13:53:56', NULL),
(2291, 5, 'Number Of Course', 'Number Of Course', '2026-01-12 13:53:56', NULL),
(2292, 5, 'View courses', 'View courses', '2026-01-12 13:53:56', NULL),
(2293, 5, 'Make As Inactive', 'Make As Inactive', '2026-01-12 13:53:56', NULL),
(2294, 5, 'Enroll Students', 'Enroll Students', '2026-01-12 13:53:56', NULL),
(2295, 5, 'Course to enrol', 'Course to enrol', '2026-01-12 13:53:56', NULL),
(2296, 5, 'Select a course', 'Select a course', '2026-01-12 13:53:56', NULL),
(2297, 5, 'Enroll History', 'Enroll History', '2026-01-12 13:53:56', NULL),
(2298, 5, 'Add new enrollment', 'Add new enrollment', '2026-01-12 13:53:56', NULL),
(2299, 5, 'Enrolled Date', 'Enrolled Date', '2026-01-12 13:53:56', NULL),
(2300, 5, 'Expiry Date', 'Expiry Date', '2026-01-12 13:53:56', NULL),
(2301, 5, 'Lifetime access', 'Lifetime access', '2026-01-12 13:53:56', NULL),
(2302, 5, 'Add Review', 'Add Review', '2026-01-12 13:53:56', NULL),
(2303, 5, 'Select User', 'Select User', '2026-01-12 13:53:56', NULL),
(2304, 5, 'Select an user', 'Select an user', '2026-01-12 13:53:56', NULL),
(2305, 5, 'Rating', 'Rating', '2026-01-12 13:53:56', NULL),
(2306, 5, 'Select a Rating', 'Select a Rating', '2026-01-12 13:53:56', NULL),
(2307, 5, 'Review added successfull', 'Review added successfull', '2026-01-12 13:53:56', NULL),
(2308, 5, 'About Us Image', 'About Us Image', '2026-01-12 13:53:56', NULL),
(2309, 5, 'Faq  Image', 'Faq  Image', '2026-01-12 13:53:56', NULL),
(2310, 5, 'Faq Image', 'Faq Image', '2026-01-12 13:53:56', NULL),
(2311, 5, 'Slider image & video link', 'Slider image & video link', '2026-01-12 13:53:56', NULL),
(2312, 5, 'Add Image', 'Add Image', '2026-01-12 13:53:56', NULL),
(2313, 5, 'Add Video Link', 'Add Video Link', '2026-01-12 13:53:56', NULL),
(2314, 5, 'Homepage updated successfully', 'Homepage updated successfully', '2026-01-12 13:53:56', NULL),
(2315, 5, 'Duration', 'Duration', '2026-01-12 13:53:56', NULL),
(2316, 5, 'Course Details', 'Course Details', '2026-01-12 13:53:56', NULL),
(2317, 5, 'Certificate Course', 'Certificate Course', '2026-01-12 13:53:56', NULL),
(2318, 5, 'Overview', 'Overview', '2026-01-12 13:53:56', NULL),
(2319, 5, 'Details', 'Details', '2026-01-12 13:53:56', NULL),
(2320, 5, 'Course Overview', 'Course Overview', '2026-01-12 13:53:56', NULL),
(2321, 5, 'No Course Description', 'No Course Description', '2026-01-12 13:53:56', NULL),
(2322, 5, 'FAQ area empty', 'FAQ area empty', '2026-01-12 13:53:56', NULL),
(2323, 5, 'Course curriculum', 'Course curriculum', '2026-01-12 13:53:56', NULL),
(2324, 5, 'Course curriculum Empty', 'Course curriculum Empty', '2026-01-12 13:53:56', NULL),
(2325, 5, 'Requirment', 'Requirment', '2026-01-12 13:53:56', NULL),
(2326, 5, 'Outcomes', 'Outcomes', '2026-01-12 13:53:56', NULL),
(2327, 5, 'Rate this course : ', 'Rate this course : ', '2026-01-12 13:53:56', NULL),
(2328, 5, 'Remove all', 'Remove all', '2026-01-12 13:53:56', NULL),
(2329, 5, 'Write a reveiw ...', 'Write a reveiw ...', '2026-01-12 13:53:56', NULL),
(2330, 5, 'Add to cart', 'Add to cart', '2026-01-12 13:53:56', NULL),
(2331, 5, 'Share', 'Share', '2026-01-12 13:53:56', NULL),
(2332, 5, 'Share on Facebook', 'Share on Facebook', '2026-01-12 13:53:56', NULL),
(2333, 5, 'Share on Twitter', 'Share on Twitter', '2026-01-12 13:53:56', NULL),
(2334, 5, 'Share on Whatsapp', 'Share on Whatsapp', '2026-01-12 13:53:56', NULL),
(2335, 5, 'Share on Linkedin', 'Share on Linkedin', '2026-01-12 13:53:56', NULL),
(2336, 5, 'Certificate', 'Certificate', '2026-01-12 13:53:56', NULL),
(2337, 5, 'Certificate template', 'Certificate template', '2026-01-12 13:53:56', NULL),
(2338, 5, 'Build your certificate', 'Build your certificate', '2026-01-12 13:53:56', NULL),
(2339, 5, 'Upload your certificate template', 'Upload your certificate template', '2026-01-12 13:53:56', NULL),
(2340, 5, 'Upload', 'Upload', '2026-01-12 13:53:56', NULL),
(2341, 5, 'Certificate elements', 'Certificate elements', '2026-01-12 13:53:56', NULL),
(2342, 5, 'Available Variable Data', 'Available Variable Data', '2026-01-12 13:53:56', NULL),
(2343, 5, 'Add a new element', 'Add a new element', '2026-01-12 13:53:56', NULL),
(2344, 5, 'Enter Text with variable data', 'Enter Text with variable data', '2026-01-12 13:53:56', NULL),
(2345, 5, 'Total Lesson', 'Total Lesson', '2026-01-12 13:53:56', NULL),
(2346, 5, 'Choice a font-family', 'Choice a font-family', '2026-01-12 13:53:56', NULL),
(2347, 5, 'Default', 'Default', '2026-01-12 13:53:56', NULL),
(2348, 5, 'Pinyon Script', 'Pinyon Script', '2026-01-12 13:53:56', NULL),
(2349, 5, 'Font Size', 'Font Size', '2026-01-12 13:53:56', NULL),
(2350, 5, 'Save Template', 'Save Template', '2026-01-12 13:53:56', NULL),
(2351, 5, 'Certificate builder template has been updated', 'Certificate builder template has been updated', '2026-01-12 13:53:56', NULL),
(2352, 5, 'Progress', 'Progress', '2026-01-12 13:53:56', NULL),
(2353, 5, 'Start Now', 'Start Now', '2026-01-12 13:53:56', NULL),
(2354, 5, 'Course Playing Page', 'Course Playing Page', '2026-01-12 13:53:56', NULL),
(2355, 5, 'Summary', 'Summary', '2026-01-12 13:53:56', NULL),
(2356, 5, 'Forum', 'Forum', '2026-01-12 13:53:56', NULL),
(2357, 5, 'Class Schedules', 'Class Schedules', '2026-01-12 13:53:56', NULL),
(2358, 5, 'Topic', 'Topic', '2026-01-12 13:53:56', NULL),
(2359, 5, 'Date & time', 'Date & time', '2026-01-12 13:53:56', NULL),
(2360, 5, 'Keep up the great work!', 'Keep up the great work!', '2026-01-12 13:53:56', NULL),
(2361, 5, 'Your dedication to ongoing progress is inspiring.', 'Your dedication to ongoing progress is inspiring.', '2026-01-12 13:53:56', NULL),
(2362, 5, 'Every step forward is a testament to your commitment to growth and excellence.', 'Every step forward is a testament to your commitment to growth and excellence.', '2026-01-12 13:53:56', NULL),
(2363, 5, 'Stay focused, stay determined, and continue to push yourself to new heights.', 'Stay focused, stay determined, and continue to push yourself to new heights.', '2026-01-12 13:53:56', NULL),
(2364, 5, 'You have got this!', 'You have got this!', '2026-01-12 13:53:56', NULL),
(2365, 5, 'Search answers here', 'Search answers here', '2026-01-12 13:53:56', NULL),
(2366, 5, 'Questions in this course', 'Questions in this course', '2026-01-12 13:53:56', NULL),
(2367, 5, 'Ask question', 'Ask question', '2026-01-12 13:53:56', NULL),
(2368, 5, 'Completed', 'Completed', '2026-01-12 13:53:56', NULL),
(2369, 5, 'Enter title', 'Enter title', '2026-01-12 13:53:56', NULL),
(2370, 5, 'Section added successfully', 'Section added successfully', '2026-01-12 13:53:56', NULL),
(2371, 5, 'Add new lesson', 'Add new lesson', '2026-01-12 13:53:56', NULL),
(2372, 5, 'Add lesson', 'Add lesson', '2026-01-12 13:53:56', NULL),
(2373, 5, 'Add new quiz', 'Add new quiz', '2026-01-12 13:53:56', NULL),
(2374, 5, 'Add quiz', 'Add quiz', '2026-01-12 13:53:56', NULL),
(2375, 5, 'Sort sections', 'Sort sections', '2026-01-12 13:53:56', NULL),
(2376, 5, 'Sort Section', 'Sort Section', '2026-01-12 13:53:56', NULL),
(2377, 5, 'Edit section', 'Edit section', '2026-01-12 13:53:56', NULL),
(2378, 5, 'Delete section', 'Delete section', '2026-01-12 13:53:56', NULL),
(2379, 5, 'No lessons are available.', 'No lessons are available.', '2026-01-12 13:53:56', NULL),
(2380, 5, 'Select lesson type', 'Select lesson type', '2026-01-12 13:53:56', NULL),
(2381, 5, 'YouTube Video', 'YouTube Video', '2026-01-12 13:53:56', NULL),
(2382, 5, 'Vimeo Video', 'Vimeo Video', '2026-01-12 13:53:56', NULL),
(2383, 5, 'Video file', 'Video file', '2026-01-12 13:53:56', NULL),
(2384, 5, 'Video url [ .mp4 ]', 'Video url [ .mp4 ]', '2026-01-12 13:53:56', NULL),
(2385, 5, 'Google drive video', 'Google drive video', '2026-01-12 13:53:56', NULL),
(2386, 5, 'Document file', 'Document file', '2026-01-12 13:53:56', NULL),
(2387, 5, 'Text', 'Text', '2026-01-12 13:53:56', NULL),
(2388, 5, 'Iframe embed', 'Iframe embed', '2026-01-12 13:53:56', NULL),
(2389, 5, 'Next', 'Next', '2026-01-12 13:53:56', NULL),
(2390, 5, 'Lesson type', 'Lesson type', '2026-01-12 13:53:56', NULL),
(2391, 5, 'Change', 'Change', '2026-01-12 13:53:56', NULL),
(2392, 5, 'Enter your text', 'Enter your text', '2026-01-12 13:53:56', NULL),
(2393, 5, 'Do you want to keep it free as a preview lesson', 'Do you want to keep it free as a preview lesson', '2026-01-12 13:53:56', NULL),
(2394, 5, 'Mark as free lesson', 'Mark as free lesson', '2026-01-12 13:53:56', NULL),
(2395, 5, 'lesson added successfully', 'lesson added successfully', '2026-01-12 13:53:56', NULL),
(2396, 5, 'Sort lessons', 'Sort lessons', '2026-01-12 13:53:56', NULL),
(2397, 5, 'Edit lesson', 'Edit lesson', '2026-01-12 13:53:56', NULL),
(2398, 5, 'Delete lesson', 'Delete lesson', '2026-01-12 13:53:56', NULL),
(2399, 5, 'Congratulations!', 'Congratulations!', '2026-01-12 13:53:56', NULL),
(2400, 5, 'Your hard work has paid off. Here is to new beginnings and endless opportunities ahead!', 'Your hard work has paid off. Here is to new beginnings and endless opportunities ahead!', '2026-01-12 13:53:56', NULL),
(2401, 5, 'Get Certificate', 'Get Certificate', '2026-01-12 13:53:56', NULL),
(2402, 5, 'Download Certificate', 'Download Certificate', '2026-01-12 13:53:56', NULL),
(2403, 5, 'Download', 'Download', '2026-01-12 13:53:56', NULL),
(2404, 5, 'Auto', 'Auto', '2026-01-12 13:53:56', NULL),
(2405, 5, 'Continue', 'Continue', '2026-01-12 13:53:56', NULL),
(2406, 5, 'Shopping cart', 'Shopping cart', '2026-01-12 13:53:56', NULL),
(2407, 5, 'Cart items', 'Cart items', '2026-01-12 13:53:56', NULL),
(2408, 5, 'Payment summary', 'Payment summary', '2026-01-12 13:53:56', NULL),
(2409, 5, 'Sub total', 'Sub total', '2026-01-12 13:53:56', NULL),
(2410, 5, 'Tax', 'Tax', '2026-01-12 13:53:56', NULL),
(2411, 5, '%', '%', '2026-01-12 13:53:56', NULL),
(2412, 5, 'Apply coupon', 'Apply coupon', '2026-01-12 13:53:56', NULL),
(2413, 5, 'Send as a gift', 'Send as a gift', '2026-01-12 13:53:56', NULL),
(2414, 5, 'Enter user email', 'Enter user email', '2026-01-12 13:53:56', NULL),
(2415, 5, 'Continue to payment', 'Continue to payment', '2026-01-12 13:53:56', NULL),
(2416, 5, 'Payment failed! Please try again.', 'Payment failed! Please try again.', '2026-01-12 13:53:56', NULL),
(2417, 5, 'Parent category', 'Parent category', '2026-01-12 13:53:56', NULL),
(2418, 5, '- Mark it as parent -', '- Mark it as parent -', '2026-01-12 13:53:56', NULL),
(2419, 5, 'Choose category thumbnail', 'Choose category thumbnail', '2026-01-12 13:53:56', NULL),
(2420, 5, 'Choose category Logo', 'Choose category Logo', '2026-01-12 13:53:56', NULL),
(2421, 5, 'Category updated successfully', 'Category updated successfully', '2026-01-12 13:53:56', NULL),
(2422, 5, 'Enable the Fileinfo extension on your server to upload files.', 'Enable the Fileinfo extension on your server to upload files.', '2026-01-12 13:53:56', NULL),
(2423, 5, 'Fileinfo extension', 'Fileinfo extension', '2026-01-12 13:53:56', NULL),
(2424, 5, 'Enable this Fileinfo extension on your server to upload files', 'Enable this Fileinfo extension on your server to upload files', '2026-01-12 13:53:56', NULL),
(2425, 5, 'paytm merchant key', 'paytm merchant key', '2026-01-12 13:53:56', NULL),
(2426, 5, 'paytm merchant mid', 'paytm merchant mid', '2026-01-12 13:53:56', NULL),
(2427, 5, 'paytm merchant website', 'paytm merchant website', '2026-01-12 13:53:56', NULL),
(2428, 5, 'industry type id', 'industry type id', '2026-01-12 13:53:56', NULL),
(2429, 5, 'channel id', 'channel id', '2026-01-12 13:53:56', NULL),
(2430, 5, 'Payment settings update successfully', 'Payment settings update successfully', '2026-01-12 13:53:56', NULL),
(2431, 5, 'Configure ZOOM server-to-server-oauth credentials', 'Configure ZOOM server-to-server-oauth credentials', '2026-01-12 13:53:56', NULL),
(2432, 5, 'Account Email', 'Account Email', '2026-01-12 13:53:56', NULL),
(2433, 5, 'Account ID', 'Account ID', '2026-01-12 13:53:56', NULL),
(2434, 5, 'Client ID', 'Client ID', '2026-01-12 13:53:56', NULL),
(2435, 5, 'Client Secret', 'Client Secret', '2026-01-12 13:53:56', NULL),
(2436, 5, 'Do you want to use Web SDK for your live class?', 'Do you want to use Web SDK for your live class?', '2026-01-12 13:53:56', NULL),
(2437, 5, 'Meeting SDK Client ID', 'Meeting SDK Client ID', '2026-01-12 13:53:56', NULL),
(2438, 5, 'Meeting SDK Client Secret', 'Meeting SDK Client Secret', '2026-01-12 13:53:56', NULL),
(2439, 5, 'Enroll delete successfully', 'Enroll delete successfully', '2026-01-12 13:53:56', NULL),
(2440, 5, '500 error found', '500 error found', '2026-01-12 13:53:56', NULL),
(2441, 5, 'A technical error has occurred', 'A technical error has occurred', '2026-01-12 13:53:56', NULL),
(2442, 5, 'Please contact with site administrator', 'Please contact with site administrator', '2026-01-12 13:53:56', NULL),
(2443, 5, 'please_do_not_refresh_this_page', 'please_do_not_refresh_this_page', '2026-01-12 13:53:56', NULL),
(2444, 5, 'Please do not refresh this page', 'Please do not refresh this page', '2026-01-12 13:53:56', NULL),
(2445, 5, 'User', 'User', '2026-01-12 13:53:56', NULL),
(2446, 5, 'Item', 'Item', '2026-01-12 13:53:56', NULL),
(2447, 5, 'Paid amount', 'Paid amount', '2026-01-12 13:53:56', NULL),
(2448, 5, 'Payment method', 'Payment method', '2026-01-12 13:53:56', NULL),
(2449, 5, 'Purchased date', 'Purchased date', '2026-01-12 13:53:56', NULL),
(2450, 5, 'Invoice', 'Invoice', '2026-01-12 13:53:56', NULL),
(2451, 5, 'Select an option', 'Select an option', '2026-01-12 13:53:56', NULL),
(2452, 5, 'Total Mark', 'Total Mark', '2026-01-12 13:53:56', NULL),
(2453, 5, 'Pass Mark', 'Pass Mark', '2026-01-12 13:53:56', NULL),
(2454, 5, 'Retake', 'Retake', '2026-01-12 13:53:56', NULL),
(2455, 5, 'Quiz has been created.', 'Quiz has been created.', '2026-01-12 13:53:56', NULL),
(2456, 5, 'Result', 'Result', '2026-01-12 13:53:56', NULL),
(2457, 5, 'Edit quiz', 'Edit quiz', '2026-01-12 13:53:56', NULL),
(2458, 5, 'Update Quiz', 'Update Quiz', '2026-01-12 13:53:56', NULL),
(2459, 5, 'Add Question', 'Add Question', '2026-01-12 13:53:56', NULL),
(2460, 5, 'Question Type', 'Question Type', '2026-01-12 13:53:56', NULL),
(2461, 5, 'Multiple Choice', 'Multiple Choice', '2026-01-12 13:53:56', NULL),
(2462, 5, 'Fill in the blanks', 'Fill in the blanks', '2026-01-12 13:53:56', NULL),
(2463, 5, 'True or False', 'True or False', '2026-01-12 13:53:56', NULL),
(2464, 5, 'Write question', 'Write question', '2026-01-12 13:53:56', NULL),
(2465, 5, 'Your questions here', 'Your questions here', '2026-01-12 13:53:56', NULL),
(2466, 5, 'You can keep multiple options. Just put an option and hit enter.', 'You can keep multiple options. Just put an option and hit enter.', '2026-01-12 13:53:56', NULL),
(2467, 5, 'You can select multiple answers.', 'You can select multiple answers.', '2026-01-12 13:53:56', NULL),
(2468, 5, 'Manage Course', 'Manage Course', '2026-01-12 13:53:56', NULL),
(2469, 5, 'Time left : ', 'Time left : ', '2026-01-12 13:53:56', NULL),
(2470, 5, 'Hour', 'Hour', '2026-01-12 13:53:56', NULL),
(2471, 5, 'Minute', 'Minute', '2026-01-12 13:53:56', NULL),
(2472, 5, 'Second', 'Second', '2026-01-12 13:53:56', NULL),
(2473, 5, 'Total Marks', 'Total Marks', '2026-01-12 13:53:56', NULL),
(2474, 5, 'Pass Marks', 'Pass Marks', '2026-01-12 13:53:56', NULL),
(2475, 5, 'Attempts', 'Attempts', '2026-01-12 13:53:56', NULL),
(2476, 5, 'Total Question', 'Total Question', '2026-01-12 13:53:56', NULL),
(2477, 5, 'Start Quiz', 'Start Quiz', '2026-01-12 13:53:56', NULL),
(2478, 5, 'Quiz has been updated.', 'Quiz has been updated.', '2026-01-12 13:53:56', NULL),
(2479, 5, 'Question has been added.', 'Question has been added.', '2026-01-12 13:53:56', NULL),
(2480, 5, 'Sort Questions', 'Sort Questions', '2026-01-12 13:53:56', NULL),
(2481, 5, 'Edit Question', 'Edit Question', '2026-01-12 13:53:56', NULL),
(2482, 5, 'Update Question', 'Update Question', '2026-01-12 13:53:56', NULL),
(2483, 5, 'Watermark Type', 'Watermark Type', '2026-01-12 13:53:56', NULL),
(2484, 5, 'Js Watermark', 'Js Watermark', '2026-01-12 13:53:56', NULL),
(2485, 5, 'FFMpeg', 'FFMpeg', '2026-01-12 13:53:56', NULL),
(2486, 5, 'Watermark', 'Watermark', '2026-01-12 13:53:56', NULL),
(2487, 5, 'Opacity', 'Opacity', '2026-01-12 13:53:56', NULL),
(2488, 5, 'Opacity (0 - 100)', 'Opacity (0 - 100)', '2026-01-12 13:53:56', NULL),
(2489, 5, 'Width', 'Width', '2026-01-12 13:53:56', NULL),
(2490, 5, 'Width (px)', 'Width (px)', '2026-01-12 13:53:56', NULL),
(2491, 5, 'Height', 'Height', '2026-01-12 13:53:56', NULL),
(2492, 5, 'Height (px)', 'Height (px)', '2026-01-12 13:53:56', NULL),
(2493, 5, 'Top', 'Top', '2026-01-12 13:53:56', NULL),
(2494, 5, 'Top (px)', 'Top (px)', '2026-01-12 13:53:56', NULL),
(2495, 5, 'Left (px)', 'Left (px)', '2026-01-12 13:53:56', NULL),
(2496, 5, 'Enter your html5 video url', 'Enter your html5 video url', '2026-01-12 13:53:56', NULL),
(2497, 5, 'The image size should be', 'The image size should be', '2026-01-12 13:53:56', NULL),
(2498, 5, 'Caption', 'Caption', '2026-01-12 13:53:56', NULL),
(2499, 5, '.vtt', '.vtt', '2026-01-12 13:53:56', NULL),
(2500, 5, 'Animation speed', 'Animation speed', '2026-01-12 13:53:56', NULL),
(2501, 5, 'Second (0 - 200)', 'Second (0 - 200)', '2026-01-12 13:53:56', NULL),
(2502, 5, 'Your changes has been saved.', 'Your changes has been saved.', '2026-01-12 13:53:56', NULL),
(2503, 5, 'Second (0 - 10000)', 'Second (0 - 10000)', '2026-01-12 13:53:56', NULL),
(2504, 5, 'by', 'by', '2026-01-12 13:53:56', NULL),
(2505, 5, 'Find A Tutor', 'Find A Tutor', '2026-01-12 13:53:56', NULL),
(2506, 5, 'Tutor Booking', 'Tutor Booking', '2026-01-12 13:53:56', NULL),
(2507, 5, 'Subjects', 'Subjects', '2026-01-12 13:53:56', NULL),
(2508, 5, 'Subject Category', 'Subject Category', '2026-01-12 13:53:56', NULL),
(2509, 5, 'It is a long established fact that a reader will be the distract by the read content of a page layout.', 'It is a long established fact that a reader will be the distract by the read content of a page layout.', '2026-01-12 13:53:56', NULL),
(2510, 5, 'Knowledge Base', 'Knowledge Base', '2026-01-12 13:53:56', NULL),
(2511, 5, 'Timezone', 'Timezone', '2026-01-12 13:53:56', NULL),
(2512, 5, 'Specify the maximum number of devices a user can log in from. If set to 0, users will be able to log in from an unlimited number of devices.', 'Specify the maximum number of devices a user can log in from. If set to 0, users will be able to log in from an unlimited number of devices.', '2026-01-12 13:53:56', NULL),
(2513, 5, 'Ebook', 'Ebook', '2026-01-12 13:53:56', NULL),
(2514, 5, 'Manage Ebooks', 'Manage Ebooks', '2026-01-12 13:53:56', NULL),
(2515, 5, 'Add New Ebook', 'Add New Ebook', '2026-01-12 13:53:56', NULL),
(2516, 5, 'Amazon s3 settings ', 'Amazon s3 settings ', '2026-01-12 13:53:56', NULL),
(2517, 5, 'Ebooks', 'Ebooks', '2026-01-12 13:53:56', NULL),
(2518, 5, '© Creativeitem All Rights Reserved', '© Creativeitem All Rights Reserved', '2026-01-12 13:53:56', NULL),
(2519, 5, 'Tickets', 'Tickets', '2026-01-12 13:53:56', NULL),
(2520, 5, 'Add New Ticket', 'Add New Ticket', '2026-01-12 13:53:56', NULL),
(2521, 5, 'Reports', 'Reports', '2026-01-12 13:53:56', NULL),
(2522, 5, 'Ticket Macros', 'Ticket Macros', '2026-01-12 13:53:56', NULL),
(2523, 5, 'Ticket Categories', 'Ticket Categories', '2026-01-12 13:53:56', NULL),
(2524, 5, 'Ticket Priorities', 'Ticket Priorities', '2026-01-12 13:53:56', NULL),
(2525, 5, 'Ticket Status', 'Ticket Status', '2026-01-12 13:53:56', NULL),
(2526, 5, 'Start learning from the world\'s pro', 'Start learning from the world\'s pro', '2026-01-12 13:53:56', NULL),
(2527, 5, 'instructors', 'instructors', '2026-01-12 13:53:56', NULL),
(2528, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', '2026-01-12 13:53:56', NULL),
(2529, 5, 'Fast Performance', 'Fast Performance', '2026-01-12 13:53:56', NULL),
(2530, 5, 'It is a long established fact that a reader will be distracted.', 'It is a long established fact that a reader will be distracted.', '2026-01-12 13:53:56', NULL),
(2531, 5, 'Perfect Responsive', 'Perfect Responsive', '2026-01-12 13:53:56', NULL),
(2532, 5, 'Fast & Friendly Support', 'Fast & Friendly Support', '2026-01-12 13:53:56', NULL),
(2533, 5, 'Easy to Use', 'Easy to Use', '2026-01-12 13:53:56', NULL),
(2534, 5, 'Explore Top Courses Categories', 'Explore Top Courses Categories', '2026-01-12 13:53:56', NULL),
(2535, 5, 'Featured Courses\n                        ', 'Featured Courses\n                        ', '2026-01-12 13:53:56', NULL),
(2536, 5, 'View All Courses', 'View All Courses', '2026-01-12 13:53:56', NULL),
(2537, 5, '150k  ', '150k  ', '2026-01-12 13:53:56', NULL),
(2538, 5, 'Know About Us', 'Know About Us', '2026-01-12 13:53:56', NULL),
(2539, 5, 'Learn & Grow Your Skills From', 'Learn & Grow Your Skills From', '2026-01-12 13:53:56', NULL),
(2540, 5, 'Educate', 'Educate', '2026-01-12 13:53:56', NULL),
(2541, 5, '\n                        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.\n                    ', '\n                        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.\n                    ', '2026-01-12 13:53:56', NULL),
(2542, 5, 'Life time Access', 'Life time Access', '2026-01-12 13:53:56', NULL),
(2543, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n                                ', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n                                ', '2026-01-12 13:53:56', NULL),
(2544, 5, 'Learn from Anywhere', 'Learn from Anywhere', '2026-01-12 13:53:56', NULL),
(2545, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2026-01-12 13:53:56', NULL),
(2546, 5, 'More about us', 'More about us', '2026-01-12 13:53:56', NULL),
(2547, 5, 'Testimonial', 'Testimonial', '2026-01-12 13:53:56', NULL),
(2548, 5, 'What our clients says about us', 'What our clients says about us', '2026-01-12 13:53:56', NULL),
(2549, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', '2026-01-12 13:53:56', NULL),
(2550, 5, 'Linchon Philips', 'Linchon Philips', '2026-01-12 13:53:56', NULL),
(2551, 5, 'CEO @ Yahoo', 'CEO @ Yahoo', '2026-01-12 13:53:56', NULL),
(2552, 5, 'Have a look on our news', 'Have a look on our news', '2026-01-12 13:53:56', NULL),
(2553, 5, 'View All Blogs', 'View All Blogs', '2026-01-12 13:53:56', NULL),
(2554, 5, 'Bootcamp Manager', 'Bootcamp Manager', '2026-01-12 13:53:56', NULL),
(2555, 5, 'Manage Bootcamp', 'Manage Bootcamp', '2026-01-12 13:53:56', NULL),
(2556, 5, 'Discounted', 'Discounted', '2026-01-12 13:53:56', NULL),
(2557, 5, 'Select Language to Replace', 'Select Language to Replace', '2026-01-12 13:53:56', NULL),
(2558, 5, 'Language added successfully', 'Language added successfully', '2026-01-12 13:53:56', NULL),
(2559, 5, 'Export language', 'Export language', '2026-01-12 13:53:56', NULL),
(2560, 5, 'Delete language', 'Delete language', '2026-01-12 13:53:56', NULL),
(2561, 5, 'Edit ____ phrases', 'Edit ____ phrases', '2026-01-12 13:53:56', NULL),
(2562, 5, 'Import all phrases from english', 'Import all phrases from english', '2026-01-12 13:53:56', NULL),
(2563, 5, 'Phrase updated', 'Phrase updated', '2026-01-12 13:53:56', NULL),
(2564, 5, 'Language deleted successfully', 'Language deleted successfully', '2026-01-12 13:53:56', NULL),
(2565, 3, 'Coupon', 'Coupon', NULL, NULL),
(2566, 3, 'Add Coupon', 'Add Coupon', NULL, NULL),
(2567, 3, 'Search coupon', 'Search coupon', NULL, NULL),
(2568, 3, 'Private Message', 'Private Message', NULL, NULL),
(2569, 3, 'Chat List', 'Chat List', NULL, NULL),
(2570, 3, 'Create a new thread', 'Create a new thread', NULL, NULL),
(2571, 3, 'New message', 'New message', NULL, NULL),
(2572, 3, 'Facebook link', 'Facebook link', NULL, NULL),
(2573, 3, 'Twitter link', 'Twitter link', NULL, NULL),
(2574, 3, 'Linkedin link', 'Linkedin link', NULL, NULL),
(2575, 3, 'A short title about yourself', 'A short title about yourself', NULL, NULL),
(2576, 3, 'Skills', 'Skills', NULL, NULL),
(2577, 3, 'Write your skill and click the enter button', 'Write your skill and click the enter button', NULL, NULL),
(2578, 3, 'Photo', 'Photo', NULL, NULL),
(2579, 3, 'The image size should be any square image', 'The image size should be any square image', NULL, NULL),
(2580, 3, 'Update profile', 'Update profile', NULL, NULL),
(2581, 3, 'Current password', 'Current password', NULL, NULL),
(2582, 3, 'New password', 'New password', NULL, NULL),
(2583, 3, 'Confirm password', 'Confirm password', NULL, NULL),
(2584, 3, 'Update password', 'Update password', NULL, NULL),
(2585, 3, 'Knowledge_base', 'Knowledge_base', NULL, NULL),
(2586, 3, 'Add knowledge base', 'Add knowledge base', NULL, NULL),
(2587, 3, 'Recaptcha', 'Recaptcha', NULL, NULL),
(2588, 3, 'All Rights Reserved', 'All Rights Reserved', NULL, NULL),
(2589, 3, 'Participant', 'Participant', NULL, NULL),
(2590, 3, 'Online Free Courses', 'Online Free Courses', NULL, NULL),
(2591, 3, '10%', '10%', NULL, NULL),
(2592, 3, 'Lessons for beginner', 'Lessons for beginner', NULL, NULL),
(2593, 3, 'Top Course', 'Top Course', NULL, NULL),
(2594, 3, 'See All Courses', 'See All Courses', NULL, NULL),
(2595, 3, 'The benefit of Yoga Expedition', 'The benefit of Yoga Expedition', NULL, NULL),
(2596, 3, 'What our client say', 'What our client say', NULL, NULL),
(2597, 3, 'See All Blogs', 'See All Blogs', NULL, NULL),
(2598, 3, 'Enter your page name', 'Enter your page name', NULL, NULL),
(2599, 3, 'Elements', 'Elements', NULL, NULL),
(2600, 3, 'Add New Element', 'Add New Element', NULL, NULL),
(2601, 3, 'Manage content', 'Manage content', NULL, NULL),
(2602, 1, 'Log In', 'تسجيل الدخول', NULL, NULL),
(2603, 1, 'Login', 'تسجيل الدخول', NULL, NULL),
(2604, 1, 'See your growth and get consulting support!', 'شاهد تقدمك واحصل على دعم استشاري!', NULL, NULL),
(2605, 1, 'Email', 'البريد الإلكتروني', NULL, NULL),
(2606, 1, 'Your Email', 'بريدك الإلكتروني', NULL, NULL),
(2607, 1, 'Password', 'كلمة المرور', NULL, NULL),
(2608, 1, 'Remember Me', 'تذكرني', NULL, NULL),
(2609, 1, 'Forget Password?', 'نسيت كلمة المرور؟', NULL, NULL),
(2610, 1, 'Not have an account yet?', 'ليس لديك حساب بعد؟', NULL, NULL),
(2611, 1, 'Create Account', 'إنشاء حساب', NULL, NULL),
(2612, 1, 'Home', 'الرئيسية', NULL, NULL),
(2613, 1, 'Courses', 'الدورات', NULL, NULL),
(2614, 1, 'All Courses', 'جميع الدورات', NULL, NULL),
(2615, 1, 'Bootcamp', 'معسكر تدريبي', NULL, NULL),
(2616, 1, 'Search...', 'بحث...', NULL, NULL),
(2617, 1, 'Search courses', 'بحث الدورات', NULL, NULL),
(2618, 1, 'Cart', 'السلة', NULL, NULL),
(2619, 1, 'Sign Up', 'التسجيل', NULL, NULL),
(2620, 1, 'Contact with Us', 'اتصل بنا', NULL, NULL),
(2621, 1, 'Top Categories', 'أفضل الفئات', NULL, NULL),
(2622, 1, 'Useful links', 'روابط مفيدة', NULL, NULL),
(2623, 1, 'Course', 'دورة', NULL, NULL),
(2624, 1, 'Blog', 'مدونة', NULL, NULL),
(2625, 1, 'Company', 'الشركة', NULL, NULL),
(2626, 1, 'Phone : ', 'الهاتف: ', NULL, NULL),
(2627, 1, 'Email : ', 'البريد الإلكتروني: ', NULL, NULL),
(2628, 1, 'Email address', 'عنوان البريد الإلكتروني', NULL, NULL),
(2629, 1, 'Submit', 'إرسال', NULL, NULL),
(2630, 1, 'About Us', 'من نحن', NULL, NULL),
(2631, 1, 'Privacy Policy', 'سياسة الخصوصية', NULL, NULL),
(2632, 1, 'Terms And Use', 'الشروط والأحكام', NULL, NULL),
(2633, 1, 'Sales and Refunds', 'المبيعات والمرتجعات', NULL, NULL),
(2634, 1, 'FAQ', 'الأسئلة الشائعة', NULL, NULL),
(2635, 1, 'Close', 'إغلاق', NULL, NULL),
(2636, 1, 'Are you sure?', 'هل أنت متأكد؟', NULL, NULL),
(2637, 1, 'You can\'t bring it back!', 'لا يمكنك استرجاعه!', NULL, NULL),
(2638, 1, 'Cancel', 'إلغاء', NULL, NULL),
(2639, 1, 'Yes, I\'m sure', 'نعم، أنا متأكد', NULL, NULL),
(2640, 1, 'Just Now', 'الآن فقط', NULL, NULL),
(2641, 1, 'Success !', 'نجاح!', NULL, NULL),
(2642, 1, 'Attention !', 'انتباه!', NULL, NULL),
(2643, 1, 'An Error Occurred !', 'حدث خطأ!', NULL, NULL),
(2644, 1, 'Remove from wishlist', 'إزالة من قائمة الرغبات', NULL, NULL),
(2645, 1, 'This course added to your wishlist', 'تمت إضافة هذه الدورة إلى قائمة رغباتك', NULL, NULL),
(2646, 1, 'Add to wishlist', 'إضافة إلى قائمة الرغبات', NULL, NULL),
(2647, 1, 'This course removed from your wishlist', 'تمت إزالة هذه الدورة من قائمة رغباتك', NULL, NULL),
(2648, 1, 'Enter your keywords', 'أدخل كلماتك الرئيسية', NULL, NULL),
(2649, 1, 'Show less', 'عرض أقل', NULL, NULL),
(2650, 1, 'Show more', 'عرض المزيد', NULL, NULL),
(2651, 1, 'Showing', 'عرض', NULL, NULL),
(2652, 1, 'of', 'من', NULL, NULL),
(2653, 1, 'data', 'بيانات', NULL, NULL),
(2654, 1, 'Grid', 'شبكة', NULL, NULL),
(2655, 1, 'List', 'قائمة', NULL, NULL),
(2656, 1, 'Filter', 'تصفية', NULL, NULL),
(2657, 1, 'Categories', 'الفئات', NULL, NULL),
(2658, 1, 'Price', 'السعر', NULL, NULL),
(2659, 1, 'Paid', 'مدفوع', NULL, NULL),
(2660, 1, 'Discount', 'خصم', NULL, NULL),
(2661, 1, 'Free', 'مجاني', NULL, NULL),
(2662, 1, 'Level', 'المستوى', NULL, NULL),
(2663, 1, 'Beginner', 'مبتدئ', NULL, NULL),
(2664, 1, 'Intermediate', 'متوسط', NULL, NULL),
(2665, 1, 'Advanced', 'متقدم', NULL, NULL),
(2666, 1, 'language', 'اللغة', NULL, NULL),
(2667, 1, 'English', 'الإنجليزية', NULL, NULL),
(2668, 1, 'Spanish', 'الإسبانية', NULL, NULL),
(2669, 1, 'Italic', 'الإيطالية', NULL, NULL),
(2670, 1, 'German', 'الألمانية', NULL, NULL),
(2671, 1, 'Ratings', 'التقييمات', NULL, NULL),
(2672, 1, 'No data found !', 'لم يتم العثور على بيانات!', NULL, NULL),
(2673, 1, 'Please attempt utilizing the suitable keywords in your search query to obtain more precise results.', 'يرجى استخدام الكلمات الرئيسية المناسبة في استعلام البحث للحصول على نتائج أكثر دقة.', NULL, NULL),
(2674, 1, 'Back', 'رجوع', NULL, NULL),
(2675, 1, 'Dashboard', 'لوحة التحكم', NULL, NULL),
(2676, 1, 'Number of Courses', 'عدد الدورات', NULL, NULL),
(2677, 1, 'Number of Lessons', 'عدد الدروس', NULL, NULL),
(2678, 1, 'Number of Enrollment', 'عدد عمليات التسجيل', NULL, NULL),
(2679, 1, 'Number of Students', 'عدد الطلاب', NULL, NULL),
(2680, 1, 'Number of Instructor', 'عدد المدربين', NULL, NULL),
(2681, 1, 'Admin Revenue This Year', 'إيرادات المدير هذا العام', NULL, NULL),
(2682, 1, 'Admin Revenue', 'إيرادات المدير', NULL, NULL),
(2683, 1, 'Course Status', 'حالة الدورة', NULL, NULL),
(2684, 1, 'Explore Courses', 'استكشاف الدورات', NULL, NULL),
(2685, 1, 'Active', 'نشط', NULL, NULL),
(2686, 1, 'Upcoming', 'قادم', NULL, NULL),
(2687, 1, 'Pending', 'قيد الانتظار', NULL, NULL),
(2688, 1, 'Private', 'خاص', NULL, NULL),
(2689, 1, 'Draft', 'مسودة', NULL, NULL),
(2690, 1, 'Inactive', 'غير نشط', NULL, NULL),
(2691, 1, 'Pending Requested withdrawal', 'سحب مطلوب معلق', NULL, NULL),
(2692, 1, 'Instructor Payout', 'دفع للمدرب', NULL, NULL),
(2693, 1, 'Main Menu', 'القائمة الرئيسية', NULL, NULL),
(2694, 1, 'Category', 'فئة', NULL, NULL),
(2695, 1, 'Manage Courses', 'إدارة الدورات', NULL, NULL),
(2696, 1, 'Add New Course', 'إضافة دورة جديدة', NULL, NULL),
(2697, 1, 'Coupons', 'كوبونات', NULL, NULL),
(2698, 1, 'Manage Bootcamps', 'إدارة المعسكرات التدريبية', NULL, NULL),
(2699, 1, 'Add New Bootcamp', 'إضافة معسكر تدريبي جديد', NULL, NULL),
(2700, 1, 'Purchase History', 'سجل المشتريات', NULL, NULL),
(2701, 1, 'Student enrollment', 'تسجيل الطلاب', NULL, NULL),
(2702, 1, 'Course enrollment', 'تسجيل الدورات', NULL, NULL),
(2703, 1, 'Enrollment History', 'سجل التسجيل', NULL, NULL),
(2704, 1, 'Enroll student', 'تسجيل طالب', NULL, NULL),
(2705, 1, 'Payment Report', 'تقرير الدفع', NULL, NULL),
(2706, 1, 'Offline payments', 'المدفوعات خارج الإنترنت', NULL, NULL),
(2707, 1, 'Instructor Revenue', 'إيرادات المدرب', NULL, NULL),
(2708, 1, 'Payment History', 'سجل الدفع', NULL, NULL),
(2709, 1, 'Users', 'المستخدمون', NULL, NULL),
(2710, 1, 'Admin', 'مدير', NULL, NULL),
(2711, 1, 'Manage Admin', 'إدارة المدير', NULL, NULL),
(2712, 1, 'Add New Admin', 'إضافة مدير جديد', NULL, NULL),
(2713, 1, 'Instructor', 'مدرب', NULL, NULL),
(2714, 1, 'Manage Instructors', 'إدارة المدربين', NULL, NULL),
(2715, 1, 'Add new Instructor', 'إضافة مدرب جديد', NULL, NULL),
(2716, 1, 'Instructor Setting', 'إعدادات المدرب', NULL, NULL),
(2717, 1, 'Application', 'التطبيق', NULL, NULL),
(2718, 1, 'Student', 'طالب', NULL, NULL),
(2719, 1, 'Manage Students', 'إدارة الطلاب', NULL, NULL),
(2720, 1, 'Add new Student', 'إضافة طالب جديد', NULL, NULL),
(2721, 1, 'Message', 'رسالة', NULL, NULL),
(2722, 1, 'Newsletter', 'النشرة الإخبارية', NULL, NULL),
(2723, 1, 'Manage Newsletters', 'إدارة النشرات الإخبارية', NULL, NULL),
(2724, 1, 'Subscribed User', 'مستخدم مشترك', NULL, NULL),
(2725, 1, 'Contacts', 'جهات الاتصال', NULL, NULL),
(2726, 1, 'Blogs', 'المدونات', NULL, NULL),
(2727, 1, 'Manage Blogs', 'إدارة المدونات', NULL, NULL),
(2728, 1, 'Pending Blogs', 'مدونات قيد الانتظار', NULL, NULL),
(2729, 1, 'Settings', 'الإعدادات', NULL, NULL),
(2730, 1, 'System Settings', 'إعدادات النظام', NULL, NULL),
(2731, 1, 'Website Settings', 'إعدادات الموقع', NULL, NULL),
(2732, 1, 'Payment Settings', 'إعدادات الدفع', NULL, NULL),
(2733, 1, 'Manage Language', 'إدارة اللغة', NULL, NULL),
(2734, 1, 'Live Class Settings', 'إعدادات الفصل الحي', NULL, NULL),
(2735, 1, 'SMTP Settings', 'إعدادات SMTP', NULL, NULL),
(2736, 1, 'Certificate Settings', 'إعدادات الشهادة', NULL, NULL),
(2737, 1, 'Player Settings', 'إعدادات المشغل', NULL, NULL),
(2738, 1, 'Open AI Settings', 'إعدادات الذكاء الاصطناعي المفتوح', NULL, NULL),
(2739, 1, 'Home Page Builder', 'منشئ الصفحة الرئيسية', NULL, NULL),
(2740, 1, 'SEO Settings', 'إعدادات SEO', NULL, NULL),
(2741, 1, 'About', 'حول', NULL, NULL),
(2742, 1, 'Manage Profile', 'إدارة الملف الشخصي', NULL, NULL),
(2743, 1, 'Admin Panel', 'لوحة الإدارة', NULL, NULL),
(2744, 1, 'View site', 'عرض الموقع', NULL, NULL),
(2745, 1, 'AI Assistant', 'مساعد الذكاء الاصطناعي', NULL, NULL),
(2746, 1, 'Help Center', 'مركز المساعدة', NULL, NULL),
(2747, 1, 'Read documentation', 'قراءة الوثائق', NULL, NULL),
(2748, 1, 'Watch video tutorial', 'مشاهدة فيديو تعليمي', NULL, NULL),
(2749, 1, 'Get customer support', 'الحصول على دعم العملاء', NULL, NULL),
(2750, 1, 'Order customization', 'تخصيص الطلب', NULL, NULL),
(2751, 1, 'Request a new feature', 'طلب ميزة جديدة', NULL, NULL),
(2752, 1, 'Get Services', 'الحصول على الخدمات', NULL, NULL),
(2753, 1, 'My Profile', 'ملفي الشخصي', NULL, NULL),
(2754, 1, 'Sign Out', 'تسجيل الخروج', NULL, NULL),
(2755, 1, 'Confirm', 'تأكيد', NULL, NULL),
(2756, 1, 'Loading', 'جاري التحميل', NULL, NULL),
(2757, 1, 'Website name', 'اسم الموقع', NULL, NULL),
(2758, 1, 'Website title', 'عنوان الموقع', NULL, NULL),
(2759, 1, 'Website keywords', 'كلمات الموقع الرئيسية', NULL, NULL),
(2760, 1, 'Website description', 'وصف الموقع', NULL, NULL),
(2761, 1, 'Author', 'المؤلف', NULL, NULL),
(2762, 1, 'Slogan', 'شعار', NULL, NULL),
(2763, 1, 'System email', 'بريد النظام الإلكتروني', NULL, NULL),
(2764, 1, 'Address', 'العنوان', NULL, NULL),
(2765, 1, 'Phone', 'الهاتف', NULL, NULL),
(2766, 1, 'Youtube API key', 'مفتاح واجهة برمجة تطبيقات يوتيوب', NULL, NULL),
(2767, 1, 'Get YouTube API key', 'الحصول على مفتاح واجهة برمجة تطبيقات يوتيوب', NULL, NULL),
(2768, 1, 'If you want to use Google Drive video, you need to enable the Google Drive service in this API', 'إذا كنت تريد استخدام فيديو Google Drive، فأنت بحاجة إلى تمكين خدمة Google Drive في واجهة برمجة التطبيقات هذه', NULL, NULL),
(2769, 1, 'Vimeo API key', 'مفتاح واجهة برمجة تطبيقات Vimeo', NULL, NULL),
(2770, 1, 'get Vimeo API key', 'الحصول على مفتاح واجهة برمجة تطبيقات Vimeo', NULL, NULL),
(2771, 1, 'Purchase code', 'رمز الشراء', NULL, NULL),
(2772, 1, 'System language', 'لغة النظام', NULL, NULL),
(2773, 1, 'Course selling tax', 'ضريبة بيع الدورة', NULL, NULL),
(2774, 1, 'Enter 0 if you want to disable the tax option', 'أدخل 0 إذا كنت تريد تعطيل خيار الضريبة', NULL, NULL),
(2775, 1, 'Device limitation', 'تقييد الجهاز', NULL, NULL),
(2776, 1, 'Footer text', 'نص التذييل', NULL, NULL),
(2777, 1, 'Footer link', 'رابط التذييل', NULL, NULL),
(2778, 1, 'Save Changes', 'حفظ التغييرات', NULL, NULL),
(2779, 1, 'Update Product', 'تحديث المنتج', NULL, NULL),
(2780, 1, 'File', 'ملف', NULL, NULL),
(2781, 1, 'Update', 'تحديث', NULL, NULL),
(2782, 1, 'Version updated successfully', 'تم تحديث الإصدار بنجاح', NULL, NULL),
(2783, 1, 'Select your service', 'حدد خدمتك', NULL, NULL),
(2784, 1, 'Course title', 'عنوان الدورة', NULL, NULL),
(2785, 1, 'Course short description', 'وصف مختصر للدورة', NULL, NULL),
(2786, 1, 'Course long description', 'وصف مفصل للدورة', NULL, NULL),
(2787, 1, 'Course requirements', 'متطلبات الدورة', NULL, NULL),
(2788, 1, 'Course outcomes', 'نتائج الدورة', NULL, NULL),
(2789, 1, 'Course faq', 'الأسئلة الشائعة للدورة', NULL, NULL),
(2790, 1, 'Course seo tags', 'علامات تحسين محركات البحث للدورة', NULL, NULL),
(2791, 1, 'Course lesson text', 'نص درس الدورة', NULL, NULL),
(2792, 1, 'Course certificate text', 'نص شهادة الدورة', NULL, NULL),
(2793, 1, 'Course quiz text', 'نص اختبار الدورة', NULL, NULL),
(2794, 1, 'Course blog title', 'عنوان مدونة الدورة', NULL, NULL),
(2795, 1, 'Course blog post', 'منشور مدونة الدورة', NULL, NULL),
(2796, 1, 'Course thumbnail', 'صورة مصغرة للدورة', NULL, NULL),
(2797, 1, 'Enter your keyword', 'أدخل كلمتك الرئيسية', NULL, NULL),
(2798, 1, 'Generate', 'توليد', NULL, NULL),
(2799, 1, 'Generating', 'جاري التوليد', NULL, NULL),
(2800, 1, 'Your images', 'صورك', NULL, NULL),
(2801, 1, 'Generated text', 'النص المولد', NULL, NULL),
(2802, 1, 'Copy', 'نسخ', NULL, NULL),
(2803, 1, 'Copied', 'تم النسخ', NULL, NULL),
(2804, 1, 'Not found', 'غير موجود', NULL, NULL),
(2805, 1, 'About This Application', 'حول هذا التطبيق', NULL, NULL),
(2806, 1, 'Software version', 'إصدار البرنامج', NULL, NULL),
(2807, 1, 'Laravel version', 'إصدار Laravel', NULL, NULL),
(2808, 1, 'Check update', 'التحقق من التحديث', NULL, NULL),
(2809, 1, 'Php version', 'إصدار PHP', NULL, NULL),
(2810, 1, 'Curl enable', 'تمكين Curl', NULL, NULL),
(2811, 1, 'enabled', 'ممكن', NULL, NULL),
(2812, 1, 'Product license', 'ترخيص المنتج', NULL, NULL),
(2813, 1, 'Enter valid purchase code', 'أدخل رمز شراء صالح', NULL, NULL),
(2814, 1, 'Customer support status', 'حالة دعم العملاء', NULL, NULL),
(2815, 1, 'Support expiry date', 'تاريخ انتهاء الدعم', NULL, NULL),
(2816, 1, 'Customer name', 'اسم العميل', NULL, NULL),
(2817, 1, 'Customer support', 'دعم العملاء', NULL, NULL),
(2818, 1, 'Payment setting', 'إعداد الدفع', NULL, NULL),
(2819, 1, 'Currency Settings', 'إعدادات العملة', NULL, NULL),
(2820, 1, 'Heads up !!', 'تنبيه !!', NULL, NULL),
(2821, 1, 'Ensure that the system currency and all active payment gateway currencies are same', 'تأكد من أن عملة النظام وعملات بوابات الدفع النشطة متطابقة', NULL, NULL),
(2822, 1, 'Select currency', 'اختر العملة', NULL, NULL),
(2823, 1, 'Currency position', 'موضع العملة', NULL, NULL),
(2824, 1, 'Left', 'يسار', NULL, NULL),
(2825, 1, 'Right', 'يمين', NULL, NULL),
(2826, 1, 'Left with a space', 'يسار مع مسافة', NULL, NULL),
(2827, 1, 'Right with a space', 'يمين مع مسافة', NULL, NULL),
(2828, 1, 'No', 'لا', NULL, NULL),
(2829, 1, 'Yes', 'نعم', NULL, NULL),
(2830, 1, 'Want to keep test mode enabled', 'هل ترغب في الحفاظ على وضع الاختبار مفعلاً', NULL, NULL),
(2831, 1, 'sandbox client id', 'معرف عميل تجريبي', NULL, NULL),
(2832, 1, 'sandbox secret key', 'مفتاح سري تجريبي', NULL, NULL),
(2833, 1, 'production client id', 'معرف عميل إنتاجي', NULL, NULL),
(2834, 1, 'production secret key', 'مفتاح سري إنتاجي', NULL, NULL),
(2835, 1, 'setting', 'إعداد', NULL, NULL),
(2836, 1, 'public key', 'مفتاح عام', NULL, NULL),
(2837, 1, 'secret key', 'مفتاح سري', NULL, NULL),
(2838, 1, 'public live key', 'مفتاح عام مباشر', NULL, NULL),
(2839, 1, 'secret live key', 'مفتاح سري مباشر', NULL, NULL),
(2840, 1, 'Choose an option', 'اختر خياراً', NULL, NULL),
(2841, 1, 'bank information', 'معلومات البنك', NULL, NULL),
(2842, 1, 'secret test key', 'مفتاح اختبار سري', NULL, NULL),
(2843, 1, 'public test key', 'مفتاح اختبار عام', NULL, NULL),
(2844, 1, 'Cookie Policy', 'سياسة ملفات تعريف الارتباط', NULL, NULL),
(2845, 1, 'Accept', 'قبول', NULL, NULL),
(2846, 1, 'Learn More', 'تعرف أكثر', NULL, NULL),
(2847, 1, 'Students has Enrolled', 'الطلاب المسجلين', NULL, NULL),
(2848, 1, 'Page Builder', 'منشئ الصفحات', NULL, NULL),
(2849, 1, 'Create Page', 'إنشاء صفحة', NULL, NULL),
(2850, 1, '#', '#', NULL, NULL),
(2851, 1, 'Page Name', 'اسم الصفحة', NULL, NULL),
(2852, 1, 'Status', 'الحالة', NULL, NULL),
(2853, 1, 'Action', 'إجراء', NULL, NULL),
(2854, 1, 'Edit Home Page', 'تحرير الصفحة الرئيسية', NULL, NULL),
(2855, 1, 'Edit Home', 'تحرير الرئيسية', NULL, NULL),
(2856, 1, 'Preview', 'معاينة', NULL, NULL),
(2857, 1, 'Edit Layout', 'تحرير التخطيط', NULL, NULL),
(2858, 1, 'Edit Page', 'تحرير الصفحة', NULL, NULL),
(2859, 1, 'Edit', 'تحرير', NULL, NULL),
(2860, 1, 'Delete', 'حذف', NULL, NULL),
(2861, 1, 'Home page activated', 'تم تفعيل الصفحة الرئيسية', NULL, NULL),
(2862, 1, 'The Leader in online learning', 'الرائد في التعلم عبر الإنترنت', NULL, NULL),
(2863, 1, 'Get Started', 'ابدأ الآن', NULL, NULL),
(2864, 1, 'Special Featured Course', 'دورة مميزة خاصة', NULL, NULL),
(2865, 1, 'Those course highlights a handpicked course with exceptional content or exclusive offerings.', 'تسلط هذه الدورة الضوء على دورة مختارة بعناية بمحتوى استثنائي أو عروض حصرية.', NULL, NULL),
(2866, 1, 'Why Choose Us', 'لماذا تختارنا', NULL, NULL),
(2867, 1, 'Happy student', 'طالب سعيد', NULL, NULL),
(2868, 1, 'Quality educators', 'معلمون ذوو جودة', NULL, NULL),
(2869, 1, 'Premium courses', 'دورات مميزة', NULL, NULL),
(2870, 1, 'Cost-free course', 'دورة مجانية', NULL, NULL),
(2871, 1, 'Top Rated Course', 'الدورة الأعلى تقييماً', NULL, NULL),
(2872, 1, 'Top rated course showcases the highest-rated course based on student reviews and performance metrics.', 'تظهر الدورة الأعلى تقييماً الدورة الأعلى تصنيفاً بناءً على تقييمات الطلاب ومقاييس الأداء.', NULL, NULL),
(2873, 1, 'What the people Thinks About Us', 'ما يفكر فيه الناس عنا', NULL, NULL),
(2874, 1, 'It highlights feedback and testimonials from users, reflecting their experiences and satisfaction.', 'يسلط الضوء على التعليقات والشهادات من المستخدمين، مما يعكس تجاربهم ورضاهم.', NULL, NULL),
(2875, 1, 'Frequently Asked Questions', 'الأسئلة الشائعة', NULL, NULL),
(2876, 1, 'Our Latest Blog', 'أحدث مدونتنا', NULL, NULL),
(2877, 1, 'The latest blog highlights the most recent articles, updates, and insights from our platform.', 'تسلط المدونة الأخيرة الضوء على أحدث المقالات والتحديثات والرؤى من منصتنا.', NULL, NULL),
(2878, 1, 'Wishlist', 'قائمة الرغبات', NULL, NULL),
(2879, 1, 'Log Out', 'تسجيل الخروج', NULL, NULL),
(2880, 1, 'Logout', 'تسجيل الخروج', NULL, NULL),
(2881, 1, 'Admin Dashboard', 'لوحة تحكم المدير', NULL, NULL),
(2882, 1, 'It is a long established fact that a reader will be the distract by the read content of a page layout', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء', NULL, NULL);
INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(2883, 1, 'Subscribe to stay tuned for new web design and latest updates. Let\'s do it!', 'اشترك لتبقى على اطلاع بتصميم الويب الجديد وآخر التحديثات. لنفعلها!', NULL, NULL),
(2884, 1, '© 2024 All Rights Reserved', '© 2024 جميع الحقوق محفوظة', NULL, NULL),
(2885, 1, '404 not found', '404 غير موجود', NULL, NULL),
(2886, 1, 'The page you requested could not be found', 'تعذر العثور على الصفحة التي طلبتها', NULL, NULL),
(2887, 1, 'Please try the following', 'يرجى تجربة ما يلي', NULL, NULL),
(2888, 1, 'Check the spelling of the url', 'تحقق من تهجئة الرابط', NULL, NULL),
(2889, 1, 'If you are still puzzled, click on the home link below', 'إذا كنت لا تزال في حيرة، انقر على رابط الصفحة الرئيسية أدناه', NULL, NULL),
(2890, 1, 'Back to home', 'العودة إلى الرئيسية', NULL, NULL),
(2891, 1, 'Become An Instructor', 'كن مدرباً', NULL, NULL),
(2892, 1, 'Title', 'العنوان', NULL, NULL),
(2893, 1, 'Description', 'الوصف', NULL, NULL),
(2894, 1, 'Video Url', 'رابط الفيديو', NULL, NULL),
(2895, 1, 'Image', 'صورة', NULL, NULL),
(2896, 1, 'Banner Information', 'معلومات الشعار', NULL, NULL),
(2897, 1, 'Add new', 'إضافة جديد', NULL, NULL),
(2898, 1, 'Remove', 'إزالة', NULL, NULL),
(2899, 1, 'Video Link', 'رابط الفيديو', NULL, NULL),
(2900, 1, 'Youtube', 'يوتيوب', NULL, NULL),
(2901, 1, 'HTML5', 'HTML5', NULL, NULL),
(2902, 1, 'All Category', 'جميع الفئات', NULL, NULL),
(2903, 1, 'Add new category', 'إضافة فئة جديدة', NULL, NULL),
(2904, 1, 'Category Name', 'اسم الفئة', NULL, NULL),
(2905, 1, 'Enter your category name', 'أدخل اسم الفئة', NULL, NULL),
(2906, 1, 'Enter your unique category name', 'أدخل اسم فريدة من نوعها', NULL, NULL),
(2907, 1, 'Pick Your Icon', 'اختر أيقونتك', NULL, NULL),
(2908, 1, 'Pick your category icon', 'اختر أيقونة الفئة', NULL, NULL),
(2909, 1, 'Keywords', 'الكلمات الرئيسية', NULL, NULL),
(2910, 1, 'optional', 'اختياري', NULL, NULL),
(2911, 1, 'Category Description', 'وصف الفئة', NULL, NULL),
(2912, 1, 'Enter your description', 'أدخل وصفك', NULL, NULL),
(2913, 1, 'Thumbnail', 'صورة مصغرة', NULL, NULL),
(2914, 1, 'Category logo', 'شعار الفئة', NULL, NULL),
(2915, 1, 'Category added successfully', 'تمت إضافة الفئة بنجاح', NULL, NULL),
(2916, 1, 'Add', 'إضافة', NULL, NULL),
(2917, 1, 'Edit category', 'تحرير الفئة', NULL, NULL),
(2918, 1, 'Create course', 'إنشاء دورة', NULL, NULL),
(2919, 1, 'Enter Course Title', 'أدخل عنوان الدورة', NULL, NULL),
(2920, 1, 'Short Description', 'وصف مختصر', NULL, NULL),
(2921, 1, 'Enter Short Description', 'أدخل وصفاً مختصراً', NULL, NULL),
(2922, 1, 'Enter Description', 'أدخل الوصف', NULL, NULL),
(2923, 1, 'Create as', 'إنشاء كـ', NULL, NULL),
(2924, 1, 'Select a category', 'اختر فئة', NULL, NULL),
(2925, 1, 'Course level', 'مستوى الدورة', NULL, NULL),
(2926, 1, 'Select your course level', 'اختر مستوى دورتك', NULL, NULL),
(2927, 1, 'Made in', 'مصنوع في', NULL, NULL),
(2928, 1, 'Select your course language', 'اختر لغة دورتك', NULL, NULL),
(2929, 1, 'Pricing type', 'نوع التسعير', NULL, NULL),
(2930, 1, 'Enter your course price', 'أدخل سعر دورتك', NULL, NULL),
(2931, 1, 'Check if this course has discount', 'تحقق مما إذا كانت هذه الدورة تحتوي على خصم', NULL, NULL),
(2932, 1, 'Discounted price', 'السعر بعد الخصم', NULL, NULL),
(2933, 1, 'Enter your discount price', 'أدخل سعر الخصم', NULL, NULL),
(2934, 1, 'Finish!', 'إنهاء!', NULL, NULL),
(2935, 1, 'Course added successfully', 'تمت إضافة الدورة بنجاح', NULL, NULL),
(2936, 1, 'Edit course', 'تحرير الدورة', NULL, NULL),
(2937, 1, 'Editing', 'جاري التحرير', NULL, NULL),
(2938, 1, 'Help', 'مساعدة', NULL, NULL),
(2939, 1, 'Frontend View', 'عرض الواجهة الأمامية', NULL, NULL),
(2940, 1, 'Course Player', 'مشغل الدورة', NULL, NULL),
(2941, 1, 'Curriculum', 'المنهج', NULL, NULL),
(2942, 1, 'Basic', 'أساسي', NULL, NULL),
(2943, 1, 'Live Class', 'فصل حي', NULL, NULL),
(2944, 1, 'Pricing', 'التسعير', NULL, NULL),
(2945, 1, 'Info', 'معلومات', NULL, NULL),
(2946, 1, 'Media', 'وسائط', NULL, NULL),
(2947, 1, 'SEO', 'تحسين محركات البحث', NULL, NULL),
(2948, 1, 'Add new section', 'إضافة قسم جديد', NULL, NULL),
(2949, 1, 'Add section', 'إضافة قسم', NULL, NULL),
(2950, 1, 'Add a new Section', 'إضافة قسم جديد', NULL, NULL),
(2951, 1, 'Create bootcamp', 'إنشاء معسكر تدريبي', NULL, NULL),
(2952, 1, 'Check if this bootcamp has discount', 'تحقق مما إذا كان هذا المعسكر التدريبي يحتوي على خصم', NULL, NULL),
(2953, 1, 'Publish Date', 'تاريخ النشر', NULL, NULL),
(2954, 1, 'Bootcamp Category', 'فئة المعسكر التدريبي', NULL, NULL),
(2955, 1, 'No data found', 'لم يتم العثور على بيانات', NULL, NULL),
(2956, 1, 'Add category', 'إضافة فئة', NULL, NULL),
(2957, 1, 'Category has been created.', 'تم إنشاء الفئة.', NULL, NULL),
(2958, 1, 'Total bootcamps', 'إجمالي المعسكرات التدريبية', NULL, NULL),
(2959, 1, 'Bootcamp has been created.', 'تم إنشاء المعسكر التدريبي.', NULL, NULL),
(2960, 1, 'Edit bootcamp', 'تحرير المعسكر التدريبي', NULL, NULL),
(2961, 1, 'Frontent View', 'عرض الواجهة الأمامية', NULL, NULL),
(2962, 1, 'Create Student', 'إنشاء طالب', NULL, NULL),
(2963, 1, 'Student Info', 'معلومات الطالب', NULL, NULL),
(2964, 1, 'Login Credentials', 'بيانات تسجيل الدخول', NULL, NULL),
(2965, 1, 'Social Links', 'روابط التواصل الاجتماعي', NULL, NULL),
(2966, 1, 'Name', 'الاسم', NULL, NULL),
(2967, 1, 'Biography', 'السيرة الذاتية', NULL, NULL),
(2968, 1, 'User image', 'صورة المستخدم', NULL, NULL),
(2969, 1, 'Facebook', 'فيسبوك', NULL, NULL),
(2970, 1, 'Twitter', 'تويتر', NULL, NULL),
(2971, 1, 'Linkedin', 'لينكد إن', NULL, NULL),
(2972, 1, 'Student add successfully', 'تمت إضافة الطالب بنجاح', NULL, NULL),
(2973, 1, 'Student List', 'قائمة الطلاب', NULL, NULL),
(2974, 1, 'Export', 'تصدير', NULL, NULL),
(2975, 1, 'PDF', 'PDF', NULL, NULL),
(2976, 1, 'Print', 'طباعة', NULL, NULL),
(2977, 1, 'Search user', 'بحث عن مستخدم', NULL, NULL),
(2978, 1, 'Search', 'بحث', NULL, NULL),
(2979, 1, 'Enrolled Course', 'الدورة المسجلة', NULL, NULL),
(2980, 1, 'Options', 'خيارات', NULL, NULL),
(2981, 1, 'Email Verification', 'التحقق من البريد الإلكتروني', NULL, NULL),
(2982, 1, 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', 'شكراً للتسجيل! قبل البدء، هل يمكنك التحقق من عنوان بريدك الإلكتروني بالنقر على الرابط الذي أرسلناه إليك للتو؟ إذا لم تستلم البريد الإلكتروني، سنرسل لك آخر بكل سرور.', NULL, NULL),
(2983, 1, 'Resend Verification Email', 'إعادة إرسال بريد التحقق', NULL, NULL),
(2984, 1, 'My Courses', 'دوراتي', NULL, NULL),
(2985, 1, 'My Bootcamps', 'معسكراتي التدريبية', NULL, NULL),
(2986, 1, 'Upload picture', 'تحميل صورة', NULL, NULL),
(2987, 1, 'Upload New', 'تحميل جديد', NULL, NULL),
(2988, 1, 'My Teams', 'فريقي', NULL, NULL),
(2989, 1, 'Please try using the appropriate keywords.', 'يرجى تجربة استخدام الكلمات الرئيسية المناسبة.', NULL, NULL),
(2990, 1, 'Bootcamps', 'المعسكرات التدريبية', NULL, NULL),
(2991, 1, 'All Bootcamps', 'جميع المعسكرات التدريبية', NULL, NULL),
(2992, 1, 'Class', 'فصل', NULL, NULL),
(2993, 1, 'View Details', 'عرض التفاصيل', NULL, NULL),
(2994, 1, 'Buy Now', 'اشتر الآن', NULL, NULL),
(2995, 1, 'Item is already purchased.', 'تم شراء العنصر بالفعل.', NULL, NULL),
(2996, 1, 'Bootcamp payment', 'دفع المعسكر التدريبي', NULL, NULL),
(2997, 1, 'Order summary', 'ملخص الطلب', NULL, NULL),
(2998, 1, 'Cancel Payment', 'إلغاء الدفع', NULL, NULL),
(2999, 1, 'Select payment gateway', 'اختر بوابة الدفع', NULL, NULL),
(3000, 1, 'Item List', 'قائمة العناصر', NULL, NULL),
(3001, 1, 'Total', 'الإجمالي', NULL, NULL),
(3002, 1, 'Grand Total', 'المجموع الكلي', NULL, NULL),
(3003, 1, 'Reviews', 'التقييمات', NULL, NULL),
(3004, 1, 'lesson', 'درس', NULL, NULL),
(3005, 1, 'Students', 'الطلاب', NULL, NULL),
(3006, 1, 'Terms and condition', 'الشروط والأحكام', NULL, NULL),
(3007, 1, 'Terms', 'الشروط', NULL, NULL),
(3008, 1, 'WELLCOME TO CHEF', 'مرحباً بك في CHEF', NULL, NULL),
(3009, 1, 'Visit Courses', 'زيارة الدورات', NULL, NULL),
(3010, 1, 'Enrolled Learners', 'المتعلمون المسجلون', NULL, NULL),
(3011, 1, 'Online Instructors', 'المدربون عبر الإنترنت', NULL, NULL),
(3012, 1, 'Latest Top Skills', 'أحدث المهارات الرائدة', NULL, NULL),
(3013, 1, 'Awesome  site the top advertising been business.', 'موقع رائع حيث أصبح الإعلان العلوي عملاً تجارياً.', NULL, NULL),
(3014, 1, 'Industry Experts', 'خبراء الصناعة', NULL, NULL),
(3015, 1, 'Learning From Anywhere', 'التعلم من أي مكان', NULL, NULL),
(3016, 1, 'Top Rated Courses', 'الدورات الأعلى تقييماً', NULL, NULL),
(3017, 1, 'Upcoming Courses', 'الدورات القادمة', NULL, NULL),
(3018, 1, 'Highlights the latest courses set to launch, giving students a sneak peek at new opportunities for learning and skill development. Stay ahead with our curated selection of upcoming educational offerings!', 'تسلط الضوء على أحدث الدورات التي سيتم إطلاقها، مما يمنح الطلاب نظرة خاطفة على فرص جديدة للتعلم وتطوير المهارات. ابقَ متقدماً مع مجموعتنا المختارة من العروض التعليمية القادمة!', NULL, NULL),
(3019, 1, 'Featured Courses', 'الدورات المميزة', NULL, NULL),
(3020, 1, 'Think more clearly', 'فكر بوضوح أكبر', NULL, NULL),
(3021, 1, 'Awesome  site. on the top advertising a business online includes assembling Having the most keep.', 'موقع رائع. في أعلى الإعلان عن عمل تجاري عبر الإنترنت يتضمن تجميع الحفاظ على الأكثر.', NULL, NULL),
(3022, 1, 'Video title', 'عنوان الفيديو', NULL, NULL),
(3023, 1, 'Our Popular Instructor', 'مدربنا الشعبي', NULL, NULL),
(3024, 1, 'Highlights our most sought-after educator, recognized for their engaging teaching style and exceptional course content. Discover their expertise and join the many students who have benefited from their classes!', 'تسلط الضوء على أكثر مدرس لدينا طلباً، المعترف به لأسلوبه التعليمي الجذاب ومحتوى دوراته الاستثنائي. اكتشف خبرته وانضم إلى العديد من الطلاب الذين استفادوا من فصوله!', NULL, NULL),
(3025, 1, 'Frequently Asked Questions?', 'الأسئلة المتكررة؟', NULL, NULL),
(3026, 1, 'FAQ provides quick answers to common inquiries, helping users resolve doubts efficiently.', 'توفر الأسئلة الشائعة إجابات سريعة على الاستفسارات الشائعة، مما يساعد المستخدمين على حل الشكوك بكفاءة.', NULL, NULL),
(3027, 1, 'Follow The Latest News', 'تابع آخر الأخبار', NULL, NULL),
(3028, 1, 'Top Courses', 'أفضل الدورات', NULL, NULL),
(3029, 1, 'lessons', 'دروس', NULL, NULL),
(3030, 1, 'Subscribe to our newsletter to get latest updates', 'اشترك في نشرتنا الإخبارية للحصول على آخر التحديثات', NULL, NULL),
(3031, 1, 'Subscribe to stay tuned for new latest updates and offer. Let\'s do it! ', 'اشترك لتبقى على اطلاع بأحدث التحديثات والعروض الجديدة. لنفعلها! ', NULL, NULL),
(3032, 1, 'Subscribe', 'اشتراك', NULL, NULL),
(3033, 1, 'Read our privacy policy', 'اقرأ سياسة الخصوصية لدينا', NULL, NULL),
(3034, 1, 'Here', 'هنا', NULL, NULL),
(3035, 1, 'Blog category', 'فئة المدونة', NULL, NULL),
(3036, 1, 'Subtitle', 'العنوان الفرعي', NULL, NULL),
(3037, 1, '(80  Character)', '(80 حرف)', NULL, NULL),
(3038, 1, 'Category add successfully', 'تمت إضافة الفئة بنجاح', NULL, NULL),
(3039, 1, 'Total number of blog', 'إجمالي عدد المدونات', NULL, NULL),
(3040, 1, 'Add new blog', 'إضافة مدونة جديدة', NULL, NULL),
(3041, 1, 'Search Title', 'بحث في العنوان', NULL, NULL),
(3042, 1, 'Add Blog', 'إضافة مدونة', NULL, NULL),
(3043, 1, 'Enter blog title', 'أدخل عنوان المدونة', NULL, NULL),
(3044, 1, 'Writing your keyword and hit htw enter button', 'اكتب كلمتك الرئيسية واضغط على زر الإدخال', NULL, NULL),
(3045, 1, 'Blog banner', 'بانر المدونة', NULL, NULL),
(3046, 1, 'Blog thumbnail', 'صورة مصغرة للمدونة', NULL, NULL),
(3047, 1, 'Would you like to designate it as popular?', 'هل ترغب في تعيينها كشائعة؟', NULL, NULL),
(3048, 1, 'Blog add successfully', 'تمت إضافة المدونة بنجاح', NULL, NULL),
(3049, 1, 'Creator', 'المنشئ', NULL, NULL),
(3050, 1, 'View on frontend', 'عرض في الواجهة الأمامية', NULL, NULL),
(3051, 1, 'Read More', 'اقرأ المزيد', NULL, NULL),
(3052, 1, 'Get Started Now', 'ابدأ الآن', NULL, NULL),
(3053, 1, 'Creating A Community Of Life Long Learners', 'إنشاء مجتمع للمتعلمين مدى الحياة', NULL, NULL),
(3054, 1, 'Our LMS goes beyond just providing courses. It\'s a platform designed to ignite curiosity and empower your lifelong learning journey.  This supportive community provides a space to ask questions, no matter how big or small, and receive insightful answers from experienced learners and subject-matter experts.', 'نظام إدارة التعلم لدينا يتجاوز مجرد تقديم الدورات. إنها منصة مصممة لإثارة الفضول وتمكين رحلة التعلم مدى الحياة لديك. يوفر هذا المجتمع الداعم مساحة لطرح الأسئلة، مهما كانت كبيرة أو صغيرة، والحصول على إجابات ثاقبة من متعلمين ذوي خبرة وخبراء في المجال.', NULL, NULL),
(3055, 1, 'Share your own experiences and challenges, and find encouragement and inspiration from others on a similar path. The diverse perspectives within our community will broaden your horizons and challenge your thinking, fostering a deeper understanding and a richer learning experience.  Together, we\'ll transform learning from a solitary pursuit into a collaborative adventure, where shared knowledge fuels individual growth and collective discovery.', 'شارك تجاربك وتحدياتك الخاصة، وابحث عن التشجيع والإلهام من الآخرين على نفس المسار. ستوسع وجهات النظر المتنوعة داخل مجتمعنا آفاقك وتتحدى تفكيرك، مما يعزز فهمًا أعمق وتجربة تعلم أكثر ثراءً. معاً، سنحول التعلم من مسعى فردي إلى مغامرة تعاونية، حيث يغذي المعرفة المشتركة النمو الفردي والاكتشاف الجماعي.', NULL, NULL),
(3056, 1, 'Learn more about us', 'تعرف على المزيد عنا', NULL, NULL),
(3057, 1, 'Our Online Courses', 'دوراتنا عبر الإنترنت', NULL, NULL),
(3058, 1, 'See More', 'شاهد المزيد', NULL, NULL),
(3059, 1, 'Our Blog', 'مدونتنا', NULL, NULL),
(3060, 1, 'LEARN FROM TODAY', 'تعلم من اليوم', NULL, NULL),
(3061, 1, 'Watch Video', 'شاهد الفيديو', NULL, NULL),
(3062, 1, 'Expert Mentors', 'مرشدون خبراء', NULL, NULL),
(3063, 1, 'Students Globally', 'طلاب عالمياً', NULL, NULL),
(3064, 1, 'Cost Free Course', 'دورة مجانية التكلفة', NULL, NULL),
(3065, 1, 'What they’re saying about our courses', 'ماذا يقولون عن دوراتنا', NULL, NULL),
(3066, 1, 'Having enjoyed a breathlessly successful 2015, there can be no DJ  dynamic set of teaching tools Billed to be deployed.', 'بعد الاستمتاع بعام 2015 ناجح بشكل لاهث، لا يمكن أن يكون هناك مجموعة ديناميكية من أدوات التدريس سيتم نشرها.', NULL, NULL),
(3067, 1, 'Student email verification', 'التحقق من بريد الطالب الإلكتروني', NULL, NULL),
(3068, 1, 'Disabled', 'معطل', NULL, NULL),
(3069, 1, 'Frontend Settings', 'إعدادات الواجهة الأمامية', NULL, NULL),
(3070, 1, 'Motivational Speech', 'خطاب تحفيزي', NULL, NULL),
(3071, 1, 'Website FAQS', 'أسئلة الموقع الشائعة', NULL, NULL),
(3072, 1, 'Contact Information', 'معلومات الاتصال', NULL, NULL),
(3073, 1, 'User Reviews', 'تقيمات المستخدمين', NULL, NULL),
(3074, 1, 'Logo & Images', 'الشعار والصور', NULL, NULL),
(3075, 1, 'Frontend website settings', 'إعدادات موقع الواجهة الأمامية', NULL, NULL),
(3076, 1, 'Banner title', 'عنوان البانر', NULL, NULL),
(3077, 1, 'Banner sub title', 'العنوان الفرعي للبانر', NULL, NULL),
(3078, 1, 'Promo Video Provider', 'مزود الفيديو الترويجي', NULL, NULL),
(3079, 1, 'Youtube Video Link', 'رابط فيديو يوتيوب', NULL, NULL),
(3080, 1, 'Vimeo Video Link', 'رابط فيديو Vimeo', NULL, NULL),
(3081, 1, 'HTML5 Video link', 'رابط فيديو HTML5', NULL, NULL),
(3082, 1, 'Promo video link', 'رابط الفيديو الترويجي', NULL, NULL),
(3083, 1, 'Cookie status', 'حالة ملفات تعريف الارتباط', NULL, NULL),
(3084, 1, 'Cookie note', 'ملاحظة ملفات تعريف الارتباط', NULL, NULL),
(3085, 1, 'Refund policy', 'سياسة الاسترجاع', NULL, NULL),
(3086, 1, 'Mobile App download Link', 'رابط تحميل تطبيق الهاتف المحمول', NULL, NULL),
(3087, 1, 'Update Settings', 'تحديث الإعدادات', NULL, NULL),
(3088, 1, 'designation', 'تعيين', NULL, NULL),
(3089, 1, 'Question', 'سؤال', NULL, NULL),
(3090, 1, 'Write a question', 'اكتب سؤالاً', NULL, NULL),
(3091, 1, 'Answer', 'إجابة', NULL, NULL),
(3092, 1, 'Write a question answer', 'اكتب إجابة سؤال', NULL, NULL),
(3093, 1, 'Contact Email', 'بريد الاتصال الإلكتروني', NULL, NULL),
(3094, 1, 'Phone Number', 'رقم الهاتف', NULL, NULL),
(3095, 1, 'Office Hours', 'ساعات العمل', NULL, NULL),
(3096, 1, 'Location', 'الموقع', NULL, NULL),
(3097, 1, 'Latitude', 'خط العرض', NULL, NULL),
(3098, 1, 'Longitude', 'خط الطول', NULL, NULL),
(3099, 1, 'Recaptcha settings', 'إعدادات Recaptcha', NULL, NULL),
(3100, 1, 'Recaptcha status', 'حالة Recaptcha', NULL, NULL),
(3101, 1, 'Recaptcha sitekey', 'مفتاح موقع Recaptcha', NULL, NULL),
(3102, 1, 'Recaptcha secretkey', 'المفتاح السري لـ Recaptcha', NULL, NULL),
(3103, 1, 'Update recaptcha settings', 'تحديث إعدادات Recaptcha', NULL, NULL),
(3104, 1, 'Review', 'مراجعة', NULL, NULL),
(3105, 1, 'Add new Review', 'إضافة مراجعة جديدة', NULL, NULL),
(3106, 1, 'Click here to choose a banner image', 'انقر هنا لاختيار صورة بانر', NULL, NULL),
(3107, 1, 'Upload banner image', 'تحميل صورة بانر', NULL, NULL),
(3108, 1, 'Click here to choose a light logo', 'انقر هنا لاختيار شعار فاتح', NULL, NULL),
(3109, 1, 'Upload light logo', 'تحميل شعار فاتح', NULL, NULL),
(3110, 1, 'Click here to choose a dark logo', 'انقر هنا لاختيار شعار داكن', NULL, NULL),
(3111, 1, 'Upload dark logo', 'تحميل شعار داكن', NULL, NULL),
(3112, 1, 'Click here to choose a favicon', 'انقر هنا لاختيار أيقونة الموقع', NULL, NULL),
(3113, 1, 'Upload favicon', 'تحميل أيقونة الموقع', NULL, NULL),
(3114, 1, 'Frontend settings update successfully', 'تم تحديث إعدادات الواجهة الأمامية بنجاح', NULL, NULL),
(3115, 1, 'User already register and signing up for using it', 'المستخدم مسجل بالفعل ويسجل للاستخدام', NULL, NULL),
(3116, 1, 'Get Courses', 'احصل على الدورات', NULL, NULL),
(3117, 1, 'Start Learning', 'ابدأ التعلم', NULL, NULL),
(3118, 1, 'Coding', 'البرمجة', NULL, NULL),
(3119, 1, 'Languages', 'اللغات', NULL, NULL),
(3120, 1, 'The industry\'s standard dummy text ever since the  unknown printer took a galley of type and scrambled', 'النص الوهمي القياسي في الصناعة منذ أن أخذ طابع مجهول صفاً من النوع وقام بخلطه', NULL, NULL),
(3121, 1, 'Online Courses', 'الدورات عبر الإنترنت', NULL, NULL),
(3122, 1, 'Top Instructors', 'أفضل المدربين', NULL, NULL),
(3123, 1, 'Online Certificates', 'شهادات عبر الإنترنت', NULL, NULL),
(3124, 1, 'Pick A Course To', 'اختر دورة لـ', NULL, NULL),
(3125, 1, 'Download our mobile app, start learning', 'قم بتنزيل تطبيق الهاتف المحمول الخاص بنا، ابدأ التعلم', NULL, NULL),
(3126, 1, 'Academy', 'الأكاديمية', NULL, NULL),
(3127, 1, 'Download Now', 'تحميل الآن', NULL, NULL),
(3128, 1, 'Frequently Asked', 'الأسئلة المتكررة', NULL, NULL),
(3129, 1, 'Questions', 'الأسئلة', NULL, NULL),
(3130, 1, 'What Our', 'ماذا', NULL, NULL),
(3131, 1, 'Have To Say', 'يقولون', NULL, NULL),
(3132, 1, 'Get News with', 'احصل على الأخبار مع', NULL, NULL),
(3133, 1, 'comment', 'تعليق', NULL, NULL),
(3134, 1, 'Course Manager', 'مدير الدورة', NULL, NULL),
(3135, 1, 'Active courses', 'الدورات النشطة', NULL, NULL),
(3136, 1, 'Pending courses', 'الدورات المعلقة', NULL, NULL),
(3137, 1, 'Free courses', 'الدورات المجانية', NULL, NULL),
(3138, 1, 'Paid courses', 'الدورات المدفوعة', NULL, NULL),
(3139, 1, 'All', 'الكل', NULL, NULL),
(3140, 1, 'Apply', 'تطبيق', NULL, NULL),
(3141, 1, 'Lesson & Section', 'الدرس والقسم', NULL, NULL),
(3142, 1, 'Enrolled Student', 'طالب مسجل', NULL, NULL),
(3143, 1, 'Section', 'قسم', NULL, NULL),
(3144, 1, 'View Course On Frontend', 'عرض الدورة في الواجهة الأمامية', NULL, NULL),
(3145, 1, 'Go To Course Playing Page', 'انتقل إلى صفحة تشغيل الدورة', NULL, NULL),
(3146, 1, 'Duplicate Course', 'نسخ الدورة', NULL, NULL),
(3147, 1, 'Make As Active', 'تعيين كنشط', NULL, NULL),
(3148, 1, 'Delete Course', 'حذف الدورة', NULL, NULL),
(3149, 1, 'Course updated successfully', 'تم تحديث الدورة بنجاح', NULL, NULL),
(3150, 1, 'Multi language setting', 'إعداد متعدد اللغات', NULL, NULL),
(3151, 1, 'Language list', 'قائمة اللغات', NULL, NULL),
(3152, 1, 'Add Language', 'إضافة لغة', NULL, NULL),
(3153, 1, 'Import Language', 'استيراد لغة', NULL, NULL),
(3154, 1, 'Direction', 'الاتجاه', NULL, NULL),
(3155, 1, 'Option', 'خيار', NULL, NULL),
(3156, 1, 'LTR', 'من اليسار إلى اليمين', NULL, NULL),
(3157, 1, 'RTL', 'من اليمين إلى اليسار', NULL, NULL),
(3158, 1, 'Edit phrase', 'تحرير العبارة', NULL, NULL),
(3159, 1, 'Add new language', 'إضافة لغة جديدة', NULL, NULL),
(3160, 1, 'No special character or space is allowed. Valid examples: French, Spanish, Bengali etc', 'لا يُسمح بأحرف خاصة أو مسافات. أمثلة صالحة: الفرنسية، الإسبانية، البنغالية، إلخ.', NULL, NULL),
(3161, 1, 'Save', 'حفظ', NULL, NULL),
(3162, 1, 'Import your language files from here. (Ex: english.json)', 'استورد ملفات لغتك من هنا. (مثال: english.json)', NULL, NULL),
(3163, 1, 'Import', 'استيراد', NULL, NULL),
(3164, 1, 'phrase_updated', 'تم تحديث العبارة', NULL, NULL),
(3165, 1, 'Direction has been updated', 'تم تحديث الاتجاه', NULL, NULL),
(3166, 1, 'Education For Eeveryone', 'التعليم للجميع', NULL, NULL),
(3167, 1, 'Search here', 'ابحث هنا', NULL, NULL),
(3168, 1, 'Online Instructor have a new ideas every week.', 'المدرب عبر الإنترنت لديه أفكار جديدة كل أسبوع.', NULL, NULL),
(3169, 1, 'Special Featured Course.', 'دورة مميزة خاصة.', NULL, NULL),
(3170, 1, 'View More', 'عرض المزيد', NULL, NULL),
(3171, 1, 'Know About Academy LMS Learning Platform', 'تعرف على منصة التعلم LMS Academy', NULL, NULL),
(3172, 1, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts.', 'بعيداً جداً، خلف جبال الكلمات، بعيداً عن دول Vokalia وConsonantia البعيدة، هناك تعيش النصوص العمياء.', NULL, NULL),
(3173, 1, 'Free Resources Learning English for Beginner', 'موارد مجانية لتعلم الإنجليزية للمبتدئين', NULL, NULL),
(3174, 1, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'بعيداً جداً، خلف جبال الكلمات، بعيداً عن دول Vokalia وConsonantia البعيدة، هناك تعيش النصوص العمياء. منفصلين يعيشون في Bookmarksgrove مباشرة على ساحل Semantics، محيط لغوي كبير.', NULL, NULL),
(3175, 1, 'Instructor have a new ideas every week.', 'المدرب لديه أفكار جديدة كل أسبوع.', NULL, NULL),
(3176, 1, 'Meet Our Team', 'تعرف على فريقنا', NULL, NULL),
(3177, 1, 'Download our mobile app, start learning today', 'قم بتنزيل تطبيق الهاتف المحمول الخاص بنا، ابدأ التعلم اليوم', NULL, NULL),
(3178, 1, 'Includes all Course && Features', 'يشمل جميع الدورات والميزات', NULL, NULL),
(3179, 1, 'Get Bundle', 'احصل على الحزمة', NULL, NULL),
(3180, 1, 'Create Instructor', 'إنشاء مدرب', NULL, NULL),
(3181, 1, 'Instructor Info', 'معلومات المدرب', NULL, NULL),
(3182, 1, 'Payment Information', 'معلومات الدفع', NULL, NULL),
(3183, 1, 'Instructor add successfully', 'تمت إضافة المدرب بنجاح', NULL, NULL),
(3184, 1, 'Instructor List', 'قائمة المدربين', NULL, NULL),
(3185, 1, 'Number Of Course', 'عدد الدورات', NULL, NULL),
(3186, 1, 'View courses', 'عرض الدورات', NULL, NULL),
(3187, 1, 'Make As Inactive', 'تعيين كغير نشط', NULL, NULL),
(3188, 1, 'Enroll Students', 'تسجيل الطلاب', NULL, NULL),
(3189, 1, 'Course to enrol', 'الدورة للتسجيل', NULL, NULL),
(3190, 1, 'Select a course', 'اختر دورة', NULL, NULL),
(3191, 1, 'Enroll History', 'سجل التسجيل', NULL, NULL),
(3192, 1, 'Add new enrollment', 'إضافة تسجيل جديد', NULL, NULL),
(3193, 1, 'Enrolled Date', 'تاريخ التسجيل', NULL, NULL),
(3194, 1, 'Expiry Date', 'تاريخ الانتهاء', NULL, NULL),
(3195, 1, 'Lifetime access', 'وصول مدى الحياة', NULL, NULL),
(3196, 1, 'Add Review', 'إضافة مراجعة', NULL, NULL),
(3197, 1, 'Select User', 'اختر مستخدم', NULL, NULL),
(3198, 1, 'Select an user', 'اختر مستخدم', NULL, NULL),
(3199, 1, 'Rating', 'التقييم', NULL, NULL),
(3200, 1, 'Select a Rating', 'اختر تقييماً', NULL, NULL),
(3201, 1, 'Review added successfull', 'تمت إضافة المراجعة بنجاح', NULL, NULL),
(3202, 1, 'About Us Image', 'صورة من نحن', NULL, NULL),
(3203, 1, 'Faq  Image', 'صورة الأسئلة الشائعة', NULL, NULL),
(3204, 1, 'Faq Image', 'صورة الأسئلة الشائعة', NULL, NULL),
(3205, 1, 'Slider image & video link', 'صورة المنزلق ورابط الفيديو', NULL, NULL),
(3206, 1, 'Add Image', 'إضافة صورة', NULL, NULL),
(3207, 1, 'Add Video Link', 'إضافة رابط فيديو', NULL, NULL),
(3208, 1, 'Homepage updated successfully', 'تم تحديث الصفحة الرئيسية بنجاح', NULL, NULL),
(3209, 1, 'Duration', 'المدة', NULL, NULL),
(3210, 1, 'Course Details', 'تفاصيل الدورة', NULL, NULL),
(3211, 1, 'Certificate Course', 'دورة شهادة', NULL, NULL),
(3212, 1, 'Overview', 'نظرة عامة', NULL, NULL),
(3213, 1, 'Details', 'تفاصيل', NULL, NULL),
(3214, 1, 'Course Overview', 'نظرة عامة على الدورة', NULL, NULL),
(3215, 1, 'No Course Description', 'لا يوجد وصف للدورة', NULL, NULL),
(3216, 1, 'FAQ area empty', 'منطقة الأسئلة الشائعة فارغة', NULL, NULL),
(3217, 1, 'Course curriculum', 'منهج الدورة', NULL, NULL),
(3218, 1, 'Course curriculum Empty', 'منهج الدورة فارغ', NULL, NULL),
(3219, 1, 'Requirment', 'المتطلب', NULL, NULL),
(3220, 1, 'Outcomes', 'النتائج', NULL, NULL),
(3221, 1, 'Rate this course : ', 'قيم هذه الدورة: ', NULL, NULL),
(3222, 1, 'Remove all', 'إزالة الكل', NULL, NULL),
(3223, 1, 'Write a reveiw ...', 'اكتب مراجعة...', NULL, NULL),
(3224, 1, 'Add to cart', 'أضف إلى السلة', NULL, NULL),
(3225, 1, 'Share', 'مشاركة', NULL, NULL),
(3226, 1, 'Share on Facebook', 'مشاركة على فيسبوك', NULL, NULL),
(3227, 1, 'Share on Twitter', 'مشاركة على تويتر', NULL, NULL),
(3228, 1, 'Share on Whatsapp', 'مشاركة على واتساب', NULL, NULL),
(3229, 1, 'Share on Linkedin', 'مشاركة على لينكد إن', NULL, NULL),
(3230, 1, 'Certificate', 'شهادة', NULL, NULL),
(3231, 1, 'Certificate template', 'قالب الشهادة', NULL, NULL),
(3232, 1, 'Build your certificate', 'قم ببناء شهادتك', NULL, NULL),
(3233, 1, 'Upload your certificate template', 'قم بتحميل قالب شهادتك', NULL, NULL),
(3234, 1, 'Upload', 'تحميل', NULL, NULL),
(3235, 1, 'Certificate elements', 'عناصر الشهادة', NULL, NULL),
(3236, 1, 'Available Variable Data', 'بيانات متغيرة متاحة', NULL, NULL),
(3237, 1, 'Add a new element', 'إضافة عنصر جديد', NULL, NULL),
(3238, 1, 'Enter Text with variable data', 'أدخل نصاً مع بيانات متغيرة', NULL, NULL),
(3239, 1, 'Total Lesson', 'إجمالي الدروس', NULL, NULL),
(3240, 1, 'Choice a font-family', 'اختر عائلة خط', NULL, NULL),
(3241, 1, 'Default', 'افتراضي', NULL, NULL),
(3242, 1, 'Pinyon Script', 'خط Pinyon Script', NULL, NULL),
(3243, 1, 'Font Size', 'حجم الخط', NULL, NULL),
(3244, 1, 'Save Template', 'حفظ القالب', NULL, NULL),
(3245, 1, 'Certificate builder template has been updated', 'تم تحديث قالب منشئ الشهادات', NULL, NULL),
(3246, 1, 'Progress', 'التقدم', NULL, NULL),
(3247, 1, 'Start Now', 'ابدأ الآن', NULL, NULL),
(3248, 1, 'Course Playing Page', 'صفحة تشغيل الدورة', NULL, NULL),
(3249, 1, 'Summary', 'ملخص', NULL, NULL),
(3250, 1, 'Forum', 'المنتدى', NULL, NULL),
(3251, 1, 'Class Schedules', 'جداول الفصول', NULL, NULL),
(3252, 1, 'Topic', 'الموضوع', NULL, NULL),
(3253, 1, 'Date & time', 'التاريخ والوقت', NULL, NULL),
(3254, 1, 'Keep up the great work!', 'استمر في العمل الرائع!', NULL, NULL),
(3255, 1, 'Your dedication to ongoing progress is inspiring.', 'تفانيك في التقدم المستمر ملهِم.', NULL, NULL),
(3256, 1, 'Every step forward is a testament to your commitment to growth and excellence.', 'كل خطوة للأمام هي شهادة على التزامك بالنمو والتميز.', NULL, NULL),
(3257, 1, 'Stay focused, stay determined, and continue to push yourself to new heights.', 'ابقَ مركزاً، ابقَ مصمماً، واستمر في دفع نفسك إلى آفاق جديدة.', NULL, NULL),
(3258, 1, 'You have got this!', 'لديك هذا!', NULL, NULL),
(3259, 1, 'Search answers here', 'ابحث عن إجابات هنا', NULL, NULL),
(3260, 1, 'Questions in this course', 'الأسئلة في هذه الدورة', NULL, NULL),
(3261, 1, 'Ask question', 'اطرح سؤالاً', NULL, NULL),
(3262, 1, 'Completed', 'مكتمل', NULL, NULL),
(3263, 1, 'Enter title', 'أدخل العنوان', NULL, NULL),
(3264, 1, 'Section added successfully', 'تمت إضافة القسم بنجاح', NULL, NULL),
(3265, 1, 'Add new lesson', 'إضافة درس جديد', NULL, NULL),
(3266, 1, 'Add lesson', 'إضافة درس', NULL, NULL),
(3267, 1, 'Add new quiz', 'إضافة اختبار جديد', NULL, NULL),
(3268, 1, 'Add quiz', 'إضافة اختبار', NULL, NULL),
(3269, 1, 'Sort sections', 'ترتيب الأقسام', NULL, NULL),
(3270, 1, 'Sort Section', 'ترتيب القسم', NULL, NULL),
(3271, 1, 'Edit section', 'تحرير القسم', NULL, NULL),
(3272, 1, 'Delete section', 'حذف القسم', NULL, NULL),
(3273, 1, 'No lessons are available.', 'لا توجد دروس متاحة.', NULL, NULL),
(3274, 1, 'Select lesson type', 'اختر نوع الدرس', NULL, NULL),
(3275, 1, 'YouTube Video', 'فيديو يوتيوب', NULL, NULL),
(3276, 1, 'Vimeo Video', 'فيديو Vimeo', NULL, NULL),
(3277, 1, 'Video file', 'ملف فيديو', NULL, NULL),
(3278, 1, 'Video url [ .mp4 ]', 'رابط فيديو [ .mp4 ]', NULL, NULL),
(3279, 1, 'Google drive video', 'فيديو Google Drive', NULL, NULL),
(3280, 1, 'Document file', 'ملف مستند', NULL, NULL),
(3281, 1, 'Text', 'نص', NULL, NULL),
(3282, 1, 'Iframe embed', 'تضمين Iframe', NULL, NULL),
(3283, 1, 'Next', 'التالي', NULL, NULL),
(3284, 1, 'Lesson type', 'نوع الدرس', NULL, NULL),
(3285, 1, 'Change', 'تغيير', NULL, NULL),
(3286, 1, 'Enter your text', 'أدخل نصك', NULL, NULL),
(3287, 1, 'Do you want to keep it free as a preview lesson', 'هل تريد إبقائه مجانياً كدرس معاينة', NULL, NULL),
(3288, 1, 'Mark as free lesson', 'تعيين كدرس مجاني', NULL, NULL),
(3289, 1, 'lesson added successfully', 'تمت إضافة الدرس بنجاح', NULL, NULL),
(3290, 1, 'Sort lessons', 'ترتيب الدروس', NULL, NULL),
(3291, 1, 'Edit lesson', 'تحرير الدرس', NULL, NULL),
(3292, 1, 'Delete lesson', 'حذف الدرس', NULL, NULL),
(3293, 1, 'Congratulations!', 'مبروك!', NULL, NULL),
(3294, 1, 'Your hard work has paid off. Here is to new beginnings and endless opportunities ahead!', 'لقد آتى عملك الشاق ثماره. ها هي البدايات الجديدة والفرص اللامحدودة في المستقبل!', NULL, NULL),
(3295, 1, 'Get Certificate', 'احصل على الشهادة', NULL, NULL),
(3296, 1, 'Download Certificate', 'تحميل الشهادة', NULL, NULL),
(3297, 1, 'Download', 'تحميل', NULL, NULL),
(3298, 1, 'Auto', 'تلقائي', NULL, NULL),
(3299, 1, 'Continue', 'متابعة', NULL, NULL),
(3300, 1, 'Shopping cart', 'عربة التسوق', NULL, NULL),
(3301, 1, 'Cart items', 'عناصر العربة', NULL, NULL),
(3302, 1, 'Payment summary', 'ملخص الدفع', NULL, NULL),
(3303, 1, 'Sub total', 'المجموع الفرعي', NULL, NULL),
(3304, 1, 'Tax', 'الضريبة', NULL, NULL),
(3305, 1, '%', '%', NULL, NULL),
(3306, 1, 'Apply coupon', 'تطبيق كوبون', NULL, NULL),
(3307, 1, 'Send as a gift', 'إرسال كهدية', NULL, NULL),
(3308, 1, 'Enter user email', 'أدخل بريد المستخدم الإلكتروني', NULL, NULL),
(3309, 1, 'Continue to payment', 'المتابعة إلى الدفع', NULL, NULL),
(3310, 1, 'Payment failed! Please try again.', 'فشل الدفع! يرجى المحاولة مرة أخرى.', NULL, NULL),
(3311, 1, 'Parent category', 'الفئة الأم', NULL, NULL),
(3312, 1, '- Mark it as parent -', '- تعيينها كأم -', NULL, NULL),
(3313, 1, 'Choose category thumbnail', 'اختر صورة مصغرة للفئة', NULL, NULL),
(3314, 1, 'Choose category Logo', 'اختر شعار الفئة', NULL, NULL),
(3315, 1, 'Category updated successfully', 'تم تحديث الفئة بنجاح', NULL, NULL),
(3316, 1, 'Enable the Fileinfo extension on your server to upload files.', 'قم بتمكين امتداد Fileinfo على خادمك لتحميل الملفات.', NULL, NULL),
(3317, 1, 'Fileinfo extension', 'امتداد Fileinfo', NULL, NULL),
(3318, 1, 'Enable this Fileinfo extension on your server to upload files', 'قم بتمكين امتداد Fileinfo هذا على خادمك لتحميل الملفات', NULL, NULL),
(3319, 1, 'paytm merchant key', 'مفتاح التاجر paytm', NULL, NULL),
(3320, 1, 'paytm merchant mid', 'معرف التاجر paytm', NULL, NULL),
(3321, 1, 'paytm merchant website', 'موقع التاجر paytm', NULL, NULL),
(3322, 1, 'industry type id', 'معرف نوع الصناعة', NULL, NULL),
(3323, 1, 'channel id', 'معرف القناة', NULL, NULL),
(3324, 1, 'Payment settings update successfully', 'تم تحديث إعدادات الدفع بنجاح', NULL, NULL),
(3325, 1, 'Configure ZOOM server-to-server-oauth credentials', 'تكوين بيانات اعتماد ZOOM من خادم إلى خادم', NULL, NULL),
(3326, 1, 'Account Email', 'بريد الحساب الإلكتروني', NULL, NULL),
(3327, 1, 'Account ID', 'معرف الحساب', NULL, NULL),
(3328, 1, 'Client ID', 'معرف العميل', NULL, NULL),
(3329, 1, 'Client Secret', 'السر السري للعميل', NULL, NULL),
(3330, 1, 'Do you want to use Web SDK for your live class?', 'هل تريد استخدام Web SDK لفصلك الحي؟', NULL, NULL),
(3331, 1, 'Meeting SDK Client ID', 'معرف عميل Meeting SDK', NULL, NULL),
(3332, 1, 'Meeting SDK Client Secret', 'السر السري لعميل Meeting SDK', NULL, NULL),
(3333, 1, 'Enroll delete successfully', 'تم حذف التسجيل بنجاح', NULL, NULL),
(3334, 1, '500 error found', 'تم العثور على خطأ 500', NULL, NULL),
(3335, 1, 'A technical error has occurred', 'حدث خطأ فني', NULL, NULL),
(3336, 1, 'Please contact with site administrator', 'يرجى الاتصال بمسؤول الموقع', NULL, NULL),
(3337, 1, 'please_do_not_refresh_this_page', 'يرجى عدم تحديث هذه الصفحة', NULL, NULL),
(3338, 1, 'Please do not refresh this page', 'يرجى عدم تحديث هذه الصفحة', NULL, NULL),
(3339, 1, 'User', 'المستخدم', NULL, NULL),
(3340, 1, 'Item', 'العنصر', NULL, NULL),
(3341, 1, 'Paid amount', 'المبلغ المدفوع', NULL, NULL),
(3342, 1, 'Payment method', 'طريقة الدفع', NULL, NULL),
(3343, 1, 'Purchased date', 'تاريخ الشراء', NULL, NULL),
(3344, 1, 'Invoice', 'فاتورة', NULL, NULL),
(3345, 1, 'Select an option', 'اختر خياراً', NULL, NULL),
(3346, 1, 'Total Mark', 'الدرجة الكلية', NULL, NULL),
(3347, 1, 'Pass Mark', 'درجة النجاح', NULL, NULL),
(3348, 1, 'Retake', 'إعادة الاختبار', NULL, NULL),
(3349, 1, 'Quiz has been created.', 'تم إنشاء الاختبار.', NULL, NULL),
(3350, 1, 'Result', 'النتيجة', NULL, NULL),
(3351, 1, 'Edit quiz', 'تحرير الاختبار', NULL, NULL),
(3352, 1, 'Update Quiz', 'تحديث الاختبار', NULL, NULL),
(3353, 1, 'Add Question', 'إضافة سؤال', NULL, NULL),
(3354, 1, 'Question Type', 'نوع السؤال', NULL, NULL),
(3355, 1, 'Multiple Choice', 'اختيار متعدد', NULL, NULL),
(3356, 1, 'Fill in the blanks', 'املأ الفراغات', NULL, NULL),
(3357, 1, 'True or False', 'صح أو خطأ', NULL, NULL),
(3358, 1, 'Write question', 'اكتب سؤالاً', NULL, NULL),
(3359, 1, 'Your questions here', 'أسئلتك هنا', NULL, NULL),
(3360, 1, 'You can keep multiple options. Just put an option and hit enter.', 'يمكنك الاحتفاظ بخيارات متعددة. فقط ضع خياراً واضغط على Enter.', NULL, NULL),
(3361, 1, 'You can select multiple answers.', 'يمكنك اختيار إجابات متعددة.', NULL, NULL),
(3362, 1, 'Manage Course', 'إدارة الدورة', NULL, NULL),
(3363, 1, 'Time left : ', 'الوقت المتبقي: ', NULL, NULL),
(3364, 1, 'Hour', 'ساعة', NULL, NULL),
(3365, 1, 'Minute', 'دقيقة', NULL, NULL),
(3366, 1, 'Second', 'ثانية', NULL, NULL),
(3367, 1, 'Total Marks', 'الدرجات الكلية', NULL, NULL),
(3368, 1, 'Pass Marks', 'درجات النجاح', NULL, NULL),
(3369, 1, 'Attempts', 'المحاولات', NULL, NULL),
(3370, 1, 'Total Question', 'إجمالي الأسئلة', NULL, NULL),
(3371, 1, 'Start Quiz', 'بدء الاختبار', NULL, NULL),
(3372, 1, 'Quiz has been updated.', 'تم تحديث الاختبار.', NULL, NULL),
(3373, 1, 'Question has been added.', 'تمت إضافة السؤال.', NULL, NULL),
(3374, 1, 'Sort Questions', 'ترتيب الأسئلة', NULL, NULL),
(3375, 1, 'Edit Question', 'تحرير السؤال', NULL, NULL),
(3376, 1, 'Update Question', 'تحديث السؤال', NULL, NULL),
(3377, 1, 'Watermark Type', 'نوع العلامة المائية', NULL, NULL),
(3378, 1, 'Js Watermark', 'علامة مائية JS', NULL, NULL),
(3379, 1, 'FFMpeg', 'FFMpeg', NULL, NULL),
(3380, 1, 'Watermark', 'العلامة المائية', NULL, NULL),
(3381, 1, 'Opacity', 'الشفافية', NULL, NULL),
(3382, 1, 'Opacity (0 - 100)', 'الشفافية (0 - 100)', NULL, NULL),
(3383, 1, 'Width', 'العرض', NULL, NULL),
(3384, 1, 'Width (px)', 'العرض (بكسل)', NULL, NULL),
(3385, 1, 'Height', 'الارتفاع', NULL, NULL),
(3386, 1, 'Height (px)', 'الارتفاع (بكسل)', NULL, NULL),
(3387, 1, 'Top', 'الأعلى', NULL, NULL),
(3388, 1, 'Top (px)', 'الأعلى (بكسل)', NULL, NULL),
(3389, 1, 'Left (px)', 'اليسار (بكسل)', NULL, NULL),
(3390, 1, 'Enter your html5 video url', 'أدخل رابط الفيديو HTML5 الخاص بك', NULL, NULL),
(3391, 1, 'The image size should be', 'يجب أن يكون حجم الصورة', NULL, NULL),
(3392, 1, 'Caption', 'التسمية التوضيحية', NULL, NULL),
(3393, 1, '.vtt', '.vtt', NULL, NULL),
(3394, 1, 'Animation speed', 'سرعة الرسوم المتحركة', NULL, NULL),
(3395, 1, 'Second (0 - 200)', 'ثانية (0 - 200)', NULL, NULL),
(3396, 1, 'Your changes has been saved.', 'تم حفظ تغييراتك.', NULL, NULL),
(3397, 1, 'Second (0 - 10000)', 'ثانية (0 - 10000)', NULL, NULL),
(3398, 1, 'by', 'بواسطة', NULL, NULL),
(3399, 1, 'Find A Tutor', 'ابحث عن مدرس', NULL, NULL),
(3400, 1, 'Tutor Booking', 'حجز مدرس', NULL, NULL),
(3401, 1, 'Subjects', 'المواد', NULL, NULL),
(3402, 1, 'Subject Category', 'فئة المادة', NULL, NULL),
(3403, 1, 'It is a long established fact that a reader will be the distract by the read content of a page layout.', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء.', NULL, NULL),
(3404, 1, 'Knowledge Base', 'قاعدة المعرفة', NULL, NULL),
(3405, 1, 'Timezone', 'المنطقة الزمنية', NULL, NULL),
(3406, 1, 'Specify the maximum number of devices a user can log in from. If set to 0, users will be able to log in from an unlimited number of devices.', 'حدد الحد الأقصى لعدد الأجهزة التي يمكن للمستخدم تسجيل الدخول منها. إذا تم تعيينه على 0، سيتمكن المستخدمون من تسجيل الدخول من عدد غير محدود من الأجهزة.', NULL, NULL),
(3407, 1, 'Ebook', 'كتاب إلكتروني', NULL, NULL),
(3408, 1, 'Manage Ebooks', 'إدارة الكتب الإلكترونية', NULL, NULL),
(3409, 1, 'Add New Ebook', 'إضافة كتاب إلكتروني جديد', NULL, NULL),
(3410, 1, 'Amazon s3 settings ', 'إعدادات Amazon s3 ', NULL, NULL),
(3411, 1, 'Ebooks', 'الكتب الإلكترونية', NULL, NULL),
(3412, 1, '© Creativeitem All Rights Reserved', '© جميع الحقوق محفوظة لـ Creativeitem', NULL, NULL),
(3413, 1, 'Tickets', 'التذاكر', NULL, NULL),
(3414, 1, 'Add New Ticket', 'إضافة تذكرة جديدة', NULL, NULL),
(3415, 1, 'Reports', 'التقارير', NULL, NULL),
(3416, 1, 'Ticket Macros', 'ماكرو التذاكر', NULL, NULL),
(3417, 1, 'Ticket Categories', 'فئات التذاكر', NULL, NULL),
(3418, 1, 'Ticket Priorities', 'أولويات التذاكر', NULL, NULL),
(3419, 1, 'Ticket Status', 'حالة التذكرة', NULL, NULL),
(3420, 1, 'Start learning from the world\'s pro', 'ابدأ التعلم من محترفي العالم', NULL, NULL),
(3421, 1, 'instructors', 'المدربين', NULL, NULL),
(3422, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها. الغرض من استخدام Lorem Ipsum.', NULL, NULL),
(3423, 1, 'Fast Performance', 'أداء سريع', NULL, NULL),
(3424, 1, 'It is a long established fact that a reader will be distracted.', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه.', NULL, NULL),
(3425, 1, 'Perfect Responsive', 'استجابة مثالية', NULL, NULL),
(3426, 1, 'Fast & Friendly Support', 'دعم سريع وودي', NULL, NULL),
(3427, 1, 'Easy to Use', 'سهل الاستخدام', NULL, NULL),
(3428, 1, 'Explore Top Courses Categories', 'استكشاف أفضل فئات الدورات', NULL, NULL),
(3429, 1, 'Featured Courses\n                        ', 'الدورات المميزة\n                        ', NULL, NULL),
(3430, 1, 'View All Courses', 'عرض جميع الدورات', NULL, NULL),
(3431, 1, '150k  ', '150 ألف  ', NULL, NULL),
(3432, 1, 'Know About Us', 'تعرف علينا', NULL, NULL),
(3433, 1, 'Learn & Grow Your Skills From', 'تعلم ونمِّ مهاراتك من', NULL, NULL),
(3434, 1, 'Educate', 'التعليم', NULL, NULL),
(3435, 1, '\n                        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.\n                    ', '\n                        من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها. الغرض من استخدام Lorem Ipsum.\n                    ', NULL, NULL),
(3436, 1, 'Life time Access', 'وصول مدى الحياة', NULL, NULL),
(3437, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n                                ', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها.\n                                ', NULL, NULL),
(3438, 1, 'Learn from Anywhere', 'تعلم من أي مكان', NULL, NULL),
(3439, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها.', NULL, NULL),
(3440, 1, 'More about us', 'المزيد عنا', NULL, NULL),
(3441, 1, 'Testimonial', 'شهادة', NULL, NULL),
(3442, 1, 'What our clients says about us', 'ماذا يقول عملاؤنا عنا', NULL, NULL),
(3443, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها. الغرض من استخدام Lorem Ipsum.', NULL, NULL),
(3444, 1, 'Linchon Philips', 'لينشون فيليبس', NULL, NULL),
(3445, 1, 'CEO @ Yahoo', 'الرئيس التنفيذي @ Yahoo', NULL, NULL),
(3446, 1, 'Have a look on our news', 'ألق نظرة على أخبارنا', NULL, NULL),
(3447, 1, 'View All Blogs', 'عرض جميع المدونات', NULL, NULL),
(3448, 1, 'Bootcamp Manager', 'مدير المعسكر التدريبي', NULL, NULL),
(3449, 1, 'Manage Bootcamp', 'إدارة المعسكر التدريبي', NULL, NULL),
(3450, 1, 'Discounted', 'مخفض', NULL, NULL),
(3451, 1, 'Select Language to Replace', 'اختر اللغة للاستبدال', NULL, NULL),
(3452, 1, 'Language added successfully', 'تمت إضافة اللغة بنجاح', NULL, NULL),
(3453, 1, 'Export language', 'تصدير اللغة', NULL, NULL),
(3454, 1, 'Delete language', 'حذف اللغة', NULL, NULL),
(3455, 1, 'Edit ____ phrases', 'تحرير عبارات ____', NULL, NULL),
(3456, 1, 'Import all phrases from english', 'استيراد جميع العبارات من الإنجليزية', NULL, NULL),
(3457, 1, 'Phrase updated', 'تم تحديث العبارة', NULL, NULL),
(3458, 1, 'Language deleted successfully', 'تم حذف اللغة بنجاح', NULL, NULL),
(3459, 3, 'العربية', 'العربية', NULL, NULL),
(3460, 3, 'Additional Info', 'Additional Info', NULL, NULL),
(3461, 3, 'Clear', 'Clear', NULL, NULL),
(3462, 3, 'Expiry period', 'Expiry period', NULL, NULL),
(3463, 3, 'Lifetime', 'Lifetime', NULL, NULL),
(3464, 3, 'Limited time', 'Limited time', NULL, NULL),
(3465, 3, 'Number of month', 'Number of month', NULL, NULL),
(3466, 3, 'After purchase, students can access the course until your selected month.', 'After purchase, students can access the course until your selected month.', NULL, NULL),
(3467, 3, 'Enable drip content', 'Enable drip content', NULL, NULL),
(3468, 3, 'Off', 'Off', NULL, NULL),
(3469, 3, 'On', 'On', NULL, NULL),
(3470, 3, 'Assignment', 'Assignment', NULL, NULL),
(3471, 3, 'Drip Content', 'Drip Content', NULL, NULL),
(3472, 3, 'Custom Field', 'Custom Field', NULL, NULL),
(3473, 3, 'Enroll Now', 'Enroll Now', NULL, NULL),
(3474, 3, 'Instructor of this course', 'Instructor of this course', NULL, NULL),
(3475, 3, 'Add a new live class', 'Add a new live class', NULL, NULL),
(3476, 3, 'Schedule a new live class', 'Schedule a new live class', NULL, NULL),
(3477, 3, 'Class topic', 'Class topic', NULL, NULL),
(3478, 3, 'Class Schedule', 'Class Schedule', NULL, NULL),
(3479, 3, 'Add a new assignment', 'Add a new assignment', NULL, NULL),
(3480, 3, 'New Assignment', 'New Assignment', NULL, NULL),
(3481, 3, 'Assignment Name', 'Assignment Name', NULL, NULL),
(3482, 3, 'Deadline', 'Deadline', NULL, NULL),
(3483, 3, 'Number of submission', 'Number of submission', NULL, NULL),
(3484, 3, 'Select a valid zip file', 'Select a valid zip file', NULL, NULL),
(3485, 3, 'Banner image update successfully', 'Banner image update successfully', NULL, NULL),
(3486, 3, 'Favicon logo update successfully', 'Favicon logo update successfully', NULL, NULL),
(3487, 3, 'Notification settings', 'Notification settings', NULL, NULL),
(3488, 3, 'Protocol', 'Protocol', NULL, NULL),
(3489, 3, 'Smtp crypto', 'Smtp crypto', NULL, NULL),
(3490, 3, 'Smtp host', 'Smtp host', NULL, NULL),
(3491, 3, 'Smtp port', 'Smtp port', NULL, NULL),
(3492, 3, 'Smtp from email', 'Smtp from email', NULL, NULL),
(3493, 3, 'Smtp username', 'Smtp username', NULL, NULL),
(3494, 3, 'Smtp password', 'Smtp password', NULL, NULL),
(3495, 3, 'Manage your open ai settings', 'Manage your open ai settings', NULL, NULL),
(3496, 3, 'Select ai model', 'Select ai model', NULL, NULL),
(3497, 3, 'Required premium account', 'Required premium account', NULL, NULL),
(3498, 3, 'Max tokens', 'Max tokens', NULL, NULL),
(3499, 3, 'Approved', 'Approved', NULL, NULL),
(3500, 3, 'Suspended', 'Suspended', NULL, NULL),
(3501, 3, 'Admins', 'Admins', NULL, NULL),
(3502, 3, 'Admin List', 'Admin List', NULL, NULL),
(3503, 3, 'Root Admin', 'Root Admin', NULL, NULL),
(3504, 3, 'Create Admin', 'Create Admin', NULL, NULL),
(3505, 3, 'Admin Info', 'Admin Info', NULL, NULL),
(3506, 3, 'store key', 'store key', NULL, NULL),
(3507, 3, 'store password', 'store password', NULL, NULL),
(3508, 3, 'store live key', 'store live key', NULL, NULL),
(3509, 3, 'store live password', 'store live password', NULL, NULL),
(3510, 3, 'sslcz testmode', 'sslcz testmode', NULL, NULL),
(3511, 3, 'is localhost', 'is localhost', NULL, NULL),
(3512, 3, 'sslcz live testmode', 'sslcz live testmode', NULL, NULL),
(3513, 3, 'is live localhost', 'is live localhost', NULL, NULL),
(3514, 3, 'store id', 'store id', NULL, NULL),
(3515, 3, 'signature key', 'signature key', NULL, NULL),
(3516, 3, 'store live id', 'store live id', NULL, NULL),
(3517, 3, 'signature live key', 'signature live key', NULL, NULL),
(3518, 3, 'merchant id', 'merchant id', NULL, NULL),
(3519, 3, 'merchant password', 'merchant password', NULL, NULL),
(3520, 3, 'merchant live id', 'merchant live id', NULL, NULL),
(3521, 3, 'merchant live password', 'merchant live password', NULL, NULL),
(3522, 3, 'Blog Details', 'Blog Details', NULL, NULL),
(3523, 3, 'like', 'like', NULL, NULL),
(3524, 3, ' Knowledge Base', ' Knowledge Base', NULL, NULL),
(3525, 3, 'Fee', 'Fee', NULL, NULL),
(3526, 3, 'Min', 'Min', NULL, NULL),
(3527, 3, 'Max', 'Max', NULL, NULL),
(3528, 3, 'Results', 'Results', NULL, NULL),
(3529, 3, 'Post A Comment', 'Post A Comment', NULL, NULL),
(3530, 3, 'Write your comment ...', 'Write your comment ...', NULL, NULL),
(3531, 3, 'Post Comment', 'Post Comment', NULL, NULL),
(3532, 3, 'Blog that help beginner designers become true unicorns.', 'Blog that help beginner designers become true unicorns.', NULL, NULL),
(3533, 3, 'Popular Post', 'Popular Post', NULL, NULL),
(3534, 3, 'Tags', 'Tags', NULL, NULL),
(3535, 3, 'New home page layout has been added', 'New home page layout has been added', NULL, NULL),
(3536, 3, '150k +', '150k +', NULL, NULL),
(3537, 3, 'It offers courses designed to enhance knowledge and develop practical skills for personal and professional growth.', 'It offers courses designed to enhance knowledge and develop practical skills for personal and professional growth.', NULL, NULL),
(3538, 3, 'It is a long established fact that a reader will be distracted', 'It is a long established fact that a reader will be distracted', NULL, NULL),
(3539, 3, 'We invites learners to explore courses designed by industry experts, offering cutting-edge content for skill development.', 'We invites learners to explore courses designed by industry experts, offering cutting-edge content for skill development.', NULL, NULL),
(3540, 3, 'Write your testimonial content here', 'Write your testimonial content here', NULL, NULL),
(3541, 3, 'Page layout has been updated', 'Page layout has been updated', NULL, NULL),
(3542, 3, 'الدورات الأعلى تقييماً', 'الدورات الأعلى تقييماً', NULL, NULL),
(3543, 3, 'تعرف علينا', 'تعرف علينا', NULL, NULL),
(3544, 3, 'تعلم ونمِّ مهاراتك من', 'تعلم ونمِّ مهاراتك من', NULL, NULL),
(3545, 3, 'التعليم', 'التعليم', NULL, NULL),
(3546, 3, '\n                        It offers courses designed to enhance knowledge and develop practical skills for personal and professional growth.\n                    ', '\n                        It offers courses designed to enhance knowledge and develop practical skills for personal and professional growth.\n                    ', NULL, NULL),
(3547, 3, 'وصول مدى الحياة', 'وصول مدى الحياة', NULL, NULL),
(3548, 3, 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها.\n                                ', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها.\n                                ', NULL, NULL),
(3549, 3, 'تعلم من أي مكان', 'تعلم من أي مكان', NULL, NULL),
(3550, 3, 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها.', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها.', NULL, NULL),
(3551, 3, 'المزيد عنا ', 'المزيد عنا ', NULL, NULL),
(3552, 3, 'Text editor', 'Text editor', NULL, NULL),
(3553, 3, 'Text color', 'Text color', NULL, NULL),
(3554, 3, 'Padding', 'Padding', NULL, NULL),
(3555, 3, 'Margin', 'Margin', NULL, NULL),
(3556, 3, 'Border', 'Border', NULL, NULL),
(3557, 3, 'none', 'none', NULL, NULL),
(3558, 3, 'dashed', 'dashed', NULL, NULL),
(3559, 3, 'dotted', 'dotted', NULL, NULL),
(3560, 3, 'Border roundness', 'Border roundness', NULL, NULL),
(3561, 3, 'Border color', 'Border color', NULL, NULL),
(3562, 3, 'Background color', 'Background color', NULL, NULL),
(3563, 3, 'The page name has been updated', 'The page name has been updated', NULL, NULL),
(3564, 3, 'منصة تعليمية مسجلة في المملكة المتحدة - لندن متخصصة في تقديم برامج الماجستير والدكتوراه المهنية، ودورات تطوير مهني تساعدك على التميز في مسيرتك الوظيفية', 'منصة تعليمية مسجلة في المملكة المتحدة - لندن متخصصة في تقديم برامج الماجستير والدكتوراه المهنية، ودورات تطوير مهني تساعدك على التميز في مسيرتك الوظيفية', NULL, NULL),
(3565, 3, 'ابدأ الآن', 'ابدأ الآن', NULL, NULL),
(3566, 3, 'تعلم من اليوم', 'تعلم من اليوم', NULL, NULL),
(3567, 3, 'إمبريال أكاديمي - منصة التعليم عن ', 'إمبريال أكاديمي - منصة التعليم عن ', NULL, NULL),
(3568, 3, 'بعد', 'بعد', NULL, NULL),
(3569, 3, 'استكشاف الدورات', 'استكشاف الدورات', NULL, NULL),
(3570, 3, 'المتعلمون المسجلون', 'المتعلمون المسجلون', NULL, NULL),
(3571, 3, 'المدربون عبر الإنترنت', 'المدربون عبر الإنترنت', NULL, NULL),
(3572, 3, 'دورات مميزة', 'دورات مميزة', NULL, NULL),
(3573, 3, 'دورة مجانية', 'دورة مجانية', NULL, NULL),
(3574, 3, 'أفضل الفئات', 'أفضل الفئات', NULL, NULL),
(3575, 3, 'الدورات المميزة', 'الدورات المميزة', NULL, NULL),
(3576, 3, '\n                        موقع رائع. في أعلى الإعلان عن عمل تجاري عبر الإنترنت يتضمن تجميع الحفاظ على الأكثر.', '\n                        موقع رائع. في أعلى الإعلان عن عمل تجاري عبر الإنترنت يتضمن تجميع الحفاظ على الأكثر.', NULL, NULL),
(3577, 3, 'مرشدون خبراء', 'مرشدون خبراء', NULL, NULL),
(3578, 3, 'طلاب عالمياً', 'طلاب عالمياً', NULL, NULL),
(3579, 3, 'دورة مجانية التكلفة', 'دورة مجانية التكلفة', NULL, NULL),
(3580, 3, 'Your comment has been saved.', 'Your comment has been saved.', NULL, NULL),
(3581, 3, 'at', 'at', NULL, NULL),
(3582, 3, 'Reply', 'Reply', NULL, NULL),
(3583, 3, 'Edit comment', 'Edit comment', NULL, NULL),
(3584, 3, 'Replay to the comment ...', 'Replay to the comment ...', NULL, NULL),
(3585, 3, 'Your comment has been updated.', 'Your comment has been updated.', NULL, NULL),
(3586, 3, 'Update category', 'Update category', NULL, NULL),
(3587, 3, 'Update Blog', 'Update Blog', NULL, NULL);
INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(3588, 3, 'Click the enter button after writing your keyword', 'Click the enter button after writing your keyword', NULL, NULL),
(3589, 3, 'SEO Fields', 'SEO Fields', NULL, NULL),
(3590, 3, 'Meta Title', 'Meta Title', NULL, NULL),
(3591, 3, 'Meta Keywords', 'Meta Keywords', NULL, NULL),
(3592, 3, 'Writing your keyword and hit the enter', 'Writing your keyword and hit the enter', NULL, NULL),
(3593, 3, 'Meta Description', 'Meta Description', NULL, NULL),
(3594, 3, 'Meta Robot', 'Meta Robot', NULL, NULL),
(3595, 3, ' Canonical Url', ' Canonical Url', NULL, NULL),
(3596, 3, ' Custom Url', ' Custom Url', NULL, NULL),
(3597, 3, 'Og Title', 'Og Title', NULL, NULL),
(3598, 3, 'Og Description', 'Og Description', NULL, NULL),
(3599, 3, 'Og Image', 'Og Image', NULL, NULL),
(3600, 3, 'Json Id', 'Json Id', NULL, NULL),
(3601, 3, 'Blog update successfully', 'Blog update successfully', NULL, NULL),
(3602, 3, 'Customer Support | FAQ', 'Customer Support | FAQ', NULL, NULL),
(3603, 3, 'Ticket FAQ', 'Ticket FAQ', NULL, NULL),
(3604, 3, 'Add new faq', 'Add new faq', NULL, NULL),
(3605, 3, 'Search FAQ', 'Search FAQ', NULL, NULL),
(3606, 3, 'Add faq', 'Add faq', NULL, NULL),
(3607, 3, 'Added successfully', 'Added successfully', NULL, NULL),
(3608, 3, 'Edit faq', 'Edit faq', NULL, NULL),
(3609, 3, 'Subject', 'Subject', NULL, NULL),
(3610, 3, 'successfullly added', 'successfullly added', NULL, NULL),
(3611, 3, 'Total Articles', 'Total Articles', NULL, NULL),
(3612, 3, ' Articles', ' Articles', NULL, NULL),
(3613, 3, 'Edit Newsletter', 'Edit Newsletter', NULL, NULL),
(3614, 3, 'Add Article', 'Add Article', NULL, NULL),
(3615, 3, 'Enter Article title', 'Enter Article title', NULL, NULL),
(3616, 3, 'article saved.', 'article saved.', NULL, NULL),
(3617, 3, 'Edit Articles', 'Edit Articles', NULL, NULL),
(3618, 3, 'Cookie', 'Cookie', NULL, NULL),
(3619, 3, 'Data not found.', 'Data not found.', NULL, NULL),
(3620, 3, ' Article', ' Article', NULL, NULL),
(3621, 3, ' Share On :', ' Share On :', NULL, NULL),
(3622, 3, 'Contact us', 'Contact us', NULL, NULL),
(3623, 3, 'We\'re always here to help you.', 'We\'re always here to help you.', NULL, NULL),
(3624, 3, 'Our Address', 'Our Address', NULL, NULL),
(3625, 3, 'Our location', 'Our location', NULL, NULL),
(3626, 3, 'Contact Info', 'Contact Info', NULL, NULL),
(3627, 3, 'Open a chat or give us call at', 'Open a chat or give us call at', NULL, NULL),
(3628, 3, 'Send your message', 'Send your message', NULL, NULL),
(3629, 3, 'Send Message', 'Send Message', NULL, NULL),
(3630, 3, 'Ops! You own this course.', 'Ops! You own this course.', NULL, NULL),
(3631, 3, 'Access key id', 'Access key id', NULL, NULL),
(3632, 3, 'Secret access key', 'Secret access key', NULL, NULL),
(3633, 3, 'Default region', 'Default region', NULL, NULL),
(3634, 3, 'AWS bucket', 'AWS bucket', NULL, NULL),
(3635, 3, 'Heads up!', 'Heads up!', NULL, NULL),
(3636, 3, 'Since Amazon S3 is integrated, all lesson files (videos) will be uploaded and served directly from your S3 bucket.', 'Since Amazon S3 is integrated, all lesson files (videos) will be uploaded and served directly from your S3 bucket.', NULL, NULL),
(3637, 3, 'You have successfully subscribed.', 'You have successfully subscribed.', NULL, NULL),
(3638, 3, 'My Bookings', 'My Bookings', NULL, NULL),
(3639, 3, 'My Ebooks', 'My Ebooks', NULL, NULL),
(3640, 3, 'Wishlisted courses', 'Wishlisted courses', NULL, NULL),
(3641, 3, 'Class date and time', 'Class date and time', NULL, NULL),
(3642, 3, 'Note for your student', 'Note for your student', NULL, NULL),
(3643, 3, 'Create', 'Create', NULL, NULL),
(3644, 3, 'Discount type', 'Discount type', NULL, NULL),
(3645, 3, 'FAQ question', 'FAQ question', NULL, NULL),
(3646, 3, 'Requirements', 'Requirements', NULL, NULL),
(3647, 3, 'Provide requirements', 'Provide requirements', NULL, NULL),
(3648, 3, 'Provide outcomes', 'Provide outcomes', NULL, NULL),
(3649, 3, 'Banner', 'Banner', NULL, NULL),
(3650, 3, 'Preview Video', 'Preview Video', NULL, NULL),
(3651, 3, 'Supported URL', 'Supported URL', NULL, NULL),
(3652, 3, 'or', 'or', NULL, NULL),
(3653, 3, 'Vimeo', 'Vimeo', NULL, NULL),
(3654, 3, 'Preview Video File', 'Preview Video File', NULL, NULL),
(3655, 3, 'Supported Video file', 'Supported Video file', NULL, NULL),
(3656, 3, 'mp4', 'mp4', NULL, NULL),
(3657, 3, 'webm', 'webm', NULL, NULL),
(3658, 3, 'ogg', 'ogg', NULL, NULL),
(3659, 3, 'Course updated successfully.', 'Course updated successfully.', NULL, NULL),
(3660, 3, 'Lesson completion role', 'Lesson completion role', NULL, NULL),
(3661, 3, 'Video percentage wise', 'Video percentage wise', NULL, NULL),
(3662, 3, 'Video duration wise', 'Video duration wise', NULL, NULL),
(3663, 3, 'Minimum percentage to watch', 'Minimum percentage to watch', NULL, NULL),
(3664, 3, 'Minimum duration to watch', 'Minimum duration to watch', NULL, NULL),
(3665, 3, 'Message for locked lesson', 'Message for locked lesson', NULL, NULL),
(3666, 3, 'Add Custom Field', 'Add Custom Field', NULL, NULL),
(3667, 3, 'Add Type', 'Add Type', NULL, NULL),
(3668, 3, 'Manage Ebook', 'Manage Ebook', NULL, NULL),
(3669, 3, 'Create book', 'Create book', NULL, NULL),
(3670, 3, 'Add new book', 'Add new book', NULL, NULL),
(3671, 3, 'Select a language', 'Select a language', NULL, NULL),
(3672, 3, 'Enter Summary', 'Enter Summary', NULL, NULL),
(3673, 3, 'Publication name', 'Publication name', NULL, NULL),
(3674, 3, 'Enter Publication name', 'Enter Publication name', NULL, NULL),
(3675, 3, 'Edition', 'Edition', NULL, NULL),
(3676, 3, 'Enter Edition', 'Enter Edition', NULL, NULL),
(3677, 3, 'Enter your ebook price', 'Enter your ebook price', NULL, NULL),
(3678, 3, 'Check if this ebook has discount', 'Check if this ebook has discount', NULL, NULL),
(3679, 3, 'Published Date', 'Published Date', NULL, NULL),
(3680, 3, 'Enter Published Date', 'Enter Published Date', NULL, NULL),
(3681, 3, 'Ebook preview file', 'Ebook preview file', NULL, NULL),
(3682, 3, 'Ebook complete file', 'Ebook complete file', NULL, NULL),
(3683, 3, 'Enter Category Title', 'Enter Category Title', NULL, NULL),
(3684, 3, '-(300/300)', '-(300/300)', NULL, NULL),
(3685, 3, 'Coupon has been created successfully.', 'Coupon has been created successfully.', NULL, NULL),
(3686, 3, 'Ebook has been created successfully.', 'Ebook has been created successfully.', NULL, NULL),
(3687, 3, 'Publication', 'Publication', NULL, NULL),
(3688, 3, 'Parchase User', 'Parchase User', NULL, NULL),
(3689, 3, 'admin:', 'admin:', NULL, NULL),
(3690, 3, 'Email:', 'Email:', NULL, NULL),
(3691, 3, 'Ebook Details', 'Ebook Details', NULL, NULL),
(3692, 3, 'Read Preview', 'Read Preview', NULL, NULL),
(3693, 3, 'Specification', 'Specification', NULL, NULL),
(3694, 3, 'About Author', 'About Author', NULL, NULL),
(3695, 3, 'Purchase', 'Purchase', NULL, NULL),
(3696, 3, 'edit book', 'edit book', NULL, NULL),
(3697, 3, 'Ebook has been updated successfully.', 'Ebook has been updated successfully.', NULL, NULL),
(3698, 3, 'Enter Bootcamp Title', 'Enter Bootcamp Title', NULL, NULL),
(3699, 3, 'Enter your bootcamp price', 'Enter your bootcamp price', NULL, NULL),
(3700, 3, 'Bootcamp title', 'Bootcamp title', NULL, NULL),
(3701, 3, 'Bootcamp FAQ', 'Bootcamp FAQ', NULL, NULL),
(3702, 3, 'Bootcamp has been updated successfully.', 'Bootcamp has been updated successfully.', NULL, NULL),
(3703, 3, 'Add new module', 'Add new module', NULL, NULL),
(3704, 3, 'Add module', 'Add module', NULL, NULL),
(3705, 3, 'Module Restriction', 'Module Restriction', NULL, NULL),
(3706, 3, 'Until start date, keep this module locked.', 'Until start date, keep this module locked.', NULL, NULL),
(3707, 3, 'Keep this module open only within the selected date range.', 'Keep this module open only within the selected date range.', NULL, NULL),
(3708, 3, 'Validity', 'Validity', NULL, NULL),
(3709, 3, 'Module has been created.', 'Module has been created.', NULL, NULL),
(3710, 3, 'Add live class', 'Add live class', NULL, NULL),
(3711, 3, 'Sort module', 'Sort module', NULL, NULL),
(3712, 3, 'Available from : ', 'Available from : ', NULL, NULL),
(3713, 3, 'Resources', 'Resources', NULL, NULL),
(3714, 3, 'Edit module', 'Edit module', NULL, NULL),
(3715, 3, 'Delete module', 'Delete module', NULL, NULL),
(3716, 3, 'No live classes are available.', 'No live classes are available.', NULL, NULL),
(3717, 3, 'Date', 'Date', NULL, NULL),
(3718, 3, 'Start time', 'Start time', NULL, NULL),
(3719, 3, 'End time', 'End time', NULL, NULL),
(3720, 3, 'Module', 'Module', NULL, NULL),
(3721, 3, 'live', 'live', NULL, NULL),
(3722, 3, 'Add class', 'Add class', NULL, NULL),
(3723, 3, 'Bootcamp Details', 'Bootcamp Details', NULL, NULL),
(3724, 3, 'Course Content', 'Course Content', NULL, NULL),
(3725, 3, 'Bootcamp Overview', 'Bootcamp Overview', NULL, NULL),
(3726, 3, 'No classes available in this module.', 'No classes available in this module.', NULL, NULL),
(3727, 3, 'Buy Bootcamp', 'Buy Bootcamp', NULL, NULL),
(3728, 3, 'Resource', 'Resource', NULL, NULL),
(3729, 3, 'Class record', 'Class record', NULL, NULL),
(3730, 3, 'Contact Instructor', 'Contact Instructor', NULL, NULL),
(3731, 3, 'For details about the course', 'For details about the course', NULL, NULL),
(3732, 3, 'Call Us', 'Call Us', NULL, NULL),
(3733, 3, 'Share on social media', 'Share on social media', NULL, NULL),
(3734, 3, 'Modules', 'Modules', NULL, NULL),
(3735, 3, 'Module & Class', 'Module & Class', NULL, NULL),
(3736, 3, 'Enrollments', 'Enrollments', NULL, NULL),
(3737, 3, 'Duplicate', 'Duplicate', NULL, NULL),
(3738, 3, 'Sort class', 'Sort class', NULL, NULL),
(3739, 3, 'Edit class', 'Edit class', NULL, NULL),
(3740, 3, 'Delete class', 'Delete class', NULL, NULL),
(3741, 3, 'You own this item.', 'You own this item.', NULL, NULL),
(3742, 3, 'Dark logo update successfully', 'Dark logo update successfully', NULL, NULL),
(3743, 3, 'Light logo update successfully', 'Light logo update successfully', NULL, NULL),
(3744, 3, 'Tutor categories', 'Tutor categories', NULL, NULL),
(3745, 3, 'Enter your subject category name', 'Enter your subject category name', NULL, NULL),
(3746, 3, 'Enter your unique subject category name', 'Enter your unique subject category name', NULL, NULL),
(3747, 3, 'Subject category added successfully', 'Subject category added successfully', NULL, NULL),
(3748, 3, 'Edit subject', 'Edit subject', NULL, NULL),
(3749, 3, 'Deactive', 'Deactive', NULL, NULL),
(3750, 3, 'Tutor subjects', 'Tutor subjects', NULL, NULL),
(3751, 3, 'Add new subject', 'Add new subject', NULL, NULL),
(3752, 3, 'Subject Name', 'Subject Name', NULL, NULL),
(3753, 3, 'Enter subject name', 'Enter subject name', NULL, NULL),
(3754, 3, 'Subject added successfully', 'Subject added successfully', NULL, NULL),
(3755, 3, 'Mark email as verified', 'Mark email as verified', NULL, NULL),
(3756, 3, 'Remove account', 'Remove account', NULL, NULL),
(3757, 3, 'Revoke Instructor Access', 'Revoke Instructor Access', NULL, NULL),
(3758, 3, 'Pending payouts', 'Pending payouts', NULL, NULL),
(3759, 3, 'Completed payouts', 'Completed payouts', NULL, NULL),
(3760, 3, 'Public Instructor Settings', 'Public Instructor Settings', NULL, NULL),
(3761, 3, 'Instructor settings', 'Instructor settings', NULL, NULL),
(3762, 3, 'Allow public instructor', 'Allow public instructor', NULL, NULL),
(3763, 3, 'Instructor application note', 'Instructor application note', NULL, NULL),
(3764, 3, 'Revenue settings', 'Revenue settings', NULL, NULL),
(3765, 3, 'Instructor revenue percentage', 'Instructor revenue percentage', NULL, NULL),
(3766, 3, 'Admin revenue percentage', 'Admin revenue percentage', NULL, NULL),
(3767, 3, 'Instructor Applicationss', 'Instructor Applicationss', NULL, NULL),
(3768, 3, 'Pending applications', 'Pending applications', NULL, NULL),
(3769, 3, 'Approved applications', 'Approved applications', NULL, NULL),
(3770, 3, 'Meditation Big  Image', 'Meditation Big  Image', NULL, NULL),
(3771, 3, 'Big Image', 'Big Image', NULL, NULL),
(3772, 3, 'Meditation Featured', 'Meditation Featured', NULL, NULL),
(3773, 3, 'Invalid purchase code', 'Invalid purchase code', NULL, NULL),
(3774, 3, 'Add Newsletter', 'Add Newsletter', NULL, NULL),
(3775, 3, 'Customer Support | Macros', 'Customer Support | Macros', NULL, NULL),
(3776, 3, 'Add new macro', 'Add new macro', NULL, NULL),
(3777, 3, 'Update Student', 'Update Student', NULL, NULL),
(3778, 3, 'Forgot Password', 'Forgot Password', NULL, NULL),
(3779, 3, 'Submit your account email address.', 'Submit your account email address.', NULL, NULL),
(3780, 3, 'Enter Your Email', 'Enter Your Email', NULL, NULL),
(3781, 3, 'Send Request', 'Send Request', NULL, NULL),
(3782, 3, 'Back to login page', 'Back to login page', NULL, NULL),
(3783, 3, 'You review has been saved.', 'You review has been saved.', NULL, NULL),
(3784, 3, 'Your review has been updated.', 'Your review has been updated.', NULL, NULL),
(3785, 3, '1  المستخدم مسجل بالفعل ويسجل للاستخدام', '1  المستخدم مسجل بالفعل ويسجل للاستخدام', NULL, NULL),
(3786, 3, 'احصل على الدورات', 'احصل على الدورات', NULL, NULL),
(3787, 3, 'أداء سريع', 'أداء سريع', NULL, NULL),
(3788, 3, 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه.', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه.', NULL, NULL),
(3789, 3, 'استجابة مثالية', 'استجابة مثالية', NULL, NULL),
(3790, 3, 'دعم سريع وودي', 'دعم سريع وودي', NULL, NULL),
(3791, 3, 'سهل الاستخدام', 'سهل الاستخدام', NULL, NULL),
(3792, 3, 'الفئات', 'الفئات', NULL, NULL),
(3793, 3, 'استكشاف أفضل فئات الدورات', 'استكشاف أفضل فئات الدورات', NULL, NULL),
(3794, 3, 'الدورات', 'الدورات', NULL, NULL),
(3795, 3, 'الدورات المميزة\n                        ', 'الدورات المميزة\n                        ', NULL, NULL),
(3796, 3, 'عرض جميع الدورات', 'عرض جميع الدورات', NULL, NULL),
(3797, 3, '150 ألف  ', '150 ألف  ', NULL, NULL),
(3798, 3, 'شهادة', 'شهادة', NULL, NULL),
(3799, 3, 'ماذا يقول عملاؤنا عنا', 'ماذا يقول عملاؤنا عنا', NULL, NULL),
(3800, 3, 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها. الغرض من استخدام Lorem Ipsum.', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء عند النظر إلى تخطيطها. الغرض من استخدام Lorem Ipsum.', NULL, NULL),
(3801, 3, 'لينشون فيليبس', 'لينشون فيليبس', NULL, NULL),
(3802, 3, 'الرئيس التنفيذي @ Yahoo', 'الرئيس التنفيذي @ Yahoo', NULL, NULL),
(3803, 3, 'مدونتنا', 'مدونتنا', NULL, NULL),
(3804, 3, 'ألق نظرة على أخبارنا', 'ألق نظرة على أخبارنا', NULL, NULL),
(3805, 3, 'عرض جميع المدونات', 'عرض جميع المدونات', NULL, NULL),
(3806, 3, 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء.', 'من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه بمحتوى الصفحة المقروء.', NULL, NULL),
(3807, 3, 'النشرة الإخبارية', 'النشرة الإخبارية', NULL, NULL),
(3808, 3, 'اشترك لتبقى على اطلاع بتصميم الويب الجديد وآخر التحديثات. لنفعلها!', 'اشترك لتبقى على اطلاع بتصميم الويب الجديد وآخر التحديثات. لنفعلها!', NULL, NULL),
(3809, 3, '© جميع الحقوق محفوظة لـ Creativeitem', '© جميع الحقوق محفوظة لـ Creativeitem', NULL, NULL),
(3810, 3, 'Image editor', 'Image editor', NULL, NULL),
(3811, 3, '© جميع الحقوق محفوظة لـ zynqor', '© جميع الحقوق محفوظة لـ zynqor', NULL, NULL),
(3812, 3, 'Apply to Become an instructor', 'Apply to Become an instructor', NULL, NULL),
(3813, 3, 'Enter your phone number', 'Enter your phone number', NULL, NULL),
(3814, 3, 'Document', 'Document', NULL, NULL),
(3815, 3, 'Provide some documents about your qualifications', 'Provide some documents about your qualifications', NULL, NULL),
(3816, 3, 'Already have account?', 'Already have account?', NULL, NULL),
(3817, 3, 'Sign in', 'Sign in', NULL, NULL),
(3818, 3, 'Your application has been submitted.', 'Your application has been submitted.', NULL, NULL),
(3819, 3, 'Booked schedules', 'Booked schedules', NULL, NULL),
(3820, 3, 'My Team Packages', 'My Team Packages', NULL, NULL),
(3821, 3, 'Ticket List', 'Ticket List', NULL, NULL),
(3822, 3, 'Edit Instructor', 'Edit Instructor', NULL, NULL),
(3823, 3, 'Update Instructor', 'Update Instructor', NULL, NULL),
(3824, 3, 'Instructor update successfully', 'Instructor update successfully', NULL, NULL),
(3825, 3, 'Applicant details', 'Applicant details', NULL, NULL),
(3826, 3, 'Application details', 'Application details', NULL, NULL),
(3827, 3, 'Approve', 'Approve', NULL, NULL),
(3828, 3, 'Applicant', 'Applicant', NULL, NULL),
(3829, 3, 'Application approve successfully', 'Application approve successfully', NULL, NULL),
(3830, 3, 'Assign permission', 'Assign permission', NULL, NULL),
(3831, 3, 'Instructor Revenue This Year', 'Instructor Revenue This Year', NULL, NULL),
(3832, 3, 'My Subjects', 'My Subjects', NULL, NULL),
(3833, 3, 'Manage Schedules', 'Manage Schedules', NULL, NULL),
(3834, 3, 'Add Booking', 'Add Booking', NULL, NULL),
(3835, 3, 'All Bookings', 'All Bookings', NULL, NULL),
(3836, 3, 'Sales', 'Sales', NULL, NULL),
(3837, 3, 'Payout', 'Payout', NULL, NULL),
(3838, 3, 'Withdraw', 'Withdraw', NULL, NULL),
(3839, 3, 'Profile Settings', 'Profile Settings', NULL, NULL),
(3840, 3, 'Manage Resume', 'Manage Resume', NULL, NULL),
(3841, 3, 'Instructor Panel', 'Instructor Panel', NULL, NULL),
(3842, 3, 'Add subject', 'Add subject', NULL, NULL),
(3843, 3, 'Add schedule', 'Add schedule', NULL, NULL),
(3844, 3, 'Schedule Create', 'Schedule Create', NULL, NULL),
(3845, 3, 'Select Category', 'Select Category', NULL, NULL),
(3846, 3, 'First select category', 'First select category', NULL, NULL),
(3847, 3, 'Tution type', 'Tution type', NULL, NULL),
(3848, 3, 'Single time', 'Single time', NULL, NULL),
(3849, 3, 'Repeated days', 'Repeated days', NULL, NULL),
(3850, 3, 'Schedule start time', 'Schedule start time', NULL, NULL),
(3851, 3, 'Schedule end Date', 'Schedule end Date', NULL, NULL),
(3852, 3, 'Select days', 'Select days', NULL, NULL),
(3853, 3, 'Check all', 'Check all', NULL, NULL),
(3854, 3, 'sunday', 'sunday', NULL, NULL),
(3855, 3, 'monday', 'monday', NULL, NULL),
(3856, 3, 'tuesday', 'tuesday', NULL, NULL),
(3857, 3, 'wednesday', 'wednesday', NULL, NULL),
(3858, 3, 'thursday', 'thursday', NULL, NULL),
(3859, 3, 'friday', 'friday', NULL, NULL),
(3860, 3, 'saturday', 'saturday', NULL, NULL),
(3861, 3, 'Class Duration', 'Class Duration', NULL, NULL),
(3862, 3, 'Save Schedule', 'Save Schedule', NULL, NULL),
(3863, 3, 'You can not keep any field empty', 'You can not keep any field empty', NULL, NULL),
(3864, 3, 'List of bookings', 'List of bookings', NULL, NULL),
(3865, 3, 'Live & Upcoming', 'Live & Upcoming', NULL, NULL),
(3866, 3, 'Archive', 'Archive', NULL, NULL),
(3867, 3, 'Sales report', 'Sales report', NULL, NULL),
(3868, 3, 'Payout report', 'Payout report', NULL, NULL),
(3869, 3, 'Payouts', 'Payouts', NULL, NULL),
(3870, 3, 'Request a new withdrawal', 'Request a new withdrawal', NULL, NULL),
(3871, 3, 'Request withdrawal', 'Request withdrawal', NULL, NULL),
(3872, 3, 'Available', 'Available', NULL, NULL),
(3873, 3, 'Total payout', 'Total payout', NULL, NULL),
(3874, 3, 'Requested', 'Requested', NULL, NULL),
(3875, 3, 'Payout setting', 'Payout setting', NULL, NULL),
(3876, 3, 'Be careful !!', 'Be careful !!', NULL, NULL),
(3877, 3, 'Just configure the payment gateway you want to use, leave the rest blank.', 'Just configure the payment gateway you want to use, leave the rest blank.', NULL, NULL),
(3878, 3, 'Also, make sure that you have configured your payment settings correctly', 'Also, make sure that you have configured your payment settings correctly', NULL, NULL),
(3879, 3, 'Youtube video link for tutor intro', 'Youtube video link for tutor intro', NULL, NULL),
(3880, 3, 'Resume Manager', 'Resume Manager', NULL, NULL),
(3881, 3, 'Add New Education', 'Add New Education', NULL, NULL),
(3882, 3, 'Ops!', 'Ops!', NULL, NULL),
(3883, 3, 'You got nothing to withdraw', 'You got nothing to withdraw', NULL, NULL),
(3884, 3, '\n                            بعد\n                            \n                                \n                            \n                        ', '\n                            بعد\n                            \n                                \n                            \n                        ', NULL, NULL),
(3885, 3, '\n                                1  المستخدم مسجل بالفعل ويسجل للاستخدام\n                            ', '\n                                1  المستخدم مسجل بالفعل ويسجل للاستخدام\n                            ', NULL, NULL),
(3886, 3, '\n                        منصة تعليمية مسجلة في المملكة المتحدة - لندن متخصصة في تقديم برامج الماجستير والدكتوراه المهنية، ودورات تطوير مهني تساعدك على التميز في مسيرتك الوظيفية\n                    ', '\n                        منصة تعليمية مسجلة في المملكة المتحدة - لندن متخصصة في تقديم برامج الماجستير والدكتوراه المهنية، ودورات تطوير مهني تساعدك على التميز في مسيرتك الوظيفية\n                    ', NULL, NULL),
(3887, 3, '\n                        احصل على الدورات\n                        \n                    ', '\n                        احصل على الدورات\n                        \n                    ', NULL, NULL),
(3888, 3, '\n                            أداء سريع\n                        ', '\n                            أداء سريع\n                        ', NULL, NULL),
(3889, 3, '\n                            من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه.\n                        ', '\n                            من المعروف منذ فترة طويلة أن القارئ سوف يشتت انتباهه.\n                        ', NULL, NULL),
(3890, 3, '\n                            استجابة مثالية\n                        ', '\n                            استجابة مثالية\n                        ', NULL, NULL),
(3891, 3, '\n                            دعم سريع وودي\n                        ', '\n                            دعم سريع وودي\n                        ', NULL, NULL),
(3892, 3, '\n                            سهل الاستخدام\n                        ', '\n                            سهل الاستخدام\n                        ', NULL, NULL),
(3893, 3, '\n    © جميع الحقوق محفوظة لـ zynqor\n', '\n    © جميع الحقوق محفوظة لـ zynqor\n', NULL, NULL),
(3894, 3, 'Customer Support | Tickets', 'Customer Support | Tickets', NULL, NULL),
(3895, 3, 'Search Subject', 'Search Subject', NULL, NULL),
(3896, 3, 'Customer Support | Reports', 'Customer Support | Reports', NULL, NULL),
(3897, 3, 'Total No. Of Tickets', 'Total No. Of Tickets', NULL, NULL),
(3898, 3, 'User with most tickets', 'User with most tickets', NULL, NULL),
(3899, 3, 'View Tickets', 'View Tickets', NULL, NULL),
(3900, 3, 'Last Reply', 'Last Reply', NULL, NULL),
(3901, 3, 'Total Tickets In This Month', 'Total Tickets In This Month', NULL, NULL),
(3902, 3, 'Manage SEO Settings', 'Manage SEO Settings', NULL, NULL),
(3903, 3, 'Contact', 'Contact', NULL, NULL),
(3904, 3, 'Search Contact', 'Search Contact', NULL, NULL),
(3905, 3, 'Institute', 'Institute', NULL, NULL),
(3906, 3, 'Country', 'Country', NULL, NULL),
(3907, 3, 'Select a country', 'Select a country', NULL, NULL),
(3908, 3, 'City', 'City', NULL, NULL),
(3909, 3, 'Start Date', 'Start Date', NULL, NULL),
(3910, 3, 'End Date', 'End Date', NULL, NULL),
(3911, 3, 'This degree/course is currently ongoing', 'This degree/course is currently ongoing', NULL, NULL),
(3912, 3, 'course_thumbnail', 'course_thumbnail', NULL, NULL),
(3913, 3, 'user_photo', 'user_photo', NULL, NULL),
(3914, 3, 'Search email', 'Search email', NULL, NULL),
(3915, 3, 'Search user email...', 'Search user email...', NULL, NULL),
(3916, 3, 'Message someone and chat right now!', 'Message someone and chat right now!', NULL, NULL),
(3917, 3, 'Motivational speech update successfully', 'Motivational speech update successfully', NULL, NULL),
(3918, 3, 'Blog Setting', 'Blog Setting', NULL, NULL),
(3919, 3, 'Blog settings', 'Blog settings', NULL, NULL),
(3920, 3, 'Instructor permission', 'Instructor permission', NULL, NULL),
(3921, 3, 'Provide access', 'Provide access', NULL, NULL),
(3922, 3, 'Decline access', 'Decline access', NULL, NULL),
(3923, 3, 'Visibility on homepage', 'Visibility on homepage', NULL, NULL),
(3924, 3, 'Visible', 'Visible', NULL, NULL),
(3925, 3, 'Hidden', 'Hidden', NULL, NULL),
(3926, 3, 'Training programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever since the unknown printer took a galley of type and scrambled.\n\nConsectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever sinces.', 'Training programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever since the unknown printer took a galley of type and scrambled.\n\nConsectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever sinces.', NULL, NULL),
(3927, 3, '1  User already register and signing up for using it', '1  User already register and signing up for using it', NULL, NULL),
(3928, 3, 'شاهد الفيديو التعريفي', 'شاهد الفيديو التعريفي', NULL, NULL),
(3929, 3, 'System settings update successfully', 'System settings update successfully', NULL, NULL),
(3930, 3, 'Instructor details', 'Instructor details', NULL, NULL),
(3931, 3, 'Hi, I’m', 'Hi, I’m', NULL, NULL),
(3932, 3, 'Experience', 'Experience', NULL, NULL),
(3933, 3, 'Recently appointed', 'Recently appointed', NULL, NULL),
(3934, 3, ' Admin revenue', ' Admin revenue', NULL, NULL),
(3935, 3, 'Personal Information', 'Personal Information', NULL, NULL),
(3936, 3, 'Full Name', 'Full Name', NULL, NULL),
(3937, 3, 'Website', 'Website', NULL, NULL),
(3938, 3, 'Change Password', 'Change Password', NULL, NULL),
(3939, 3, 'Assignments', 'Assignments', NULL, NULL),
(3940, 3, 'Pending Blog', 'Pending Blog', NULL, NULL),
(3941, 3, 'Your record has been saved.', 'Your record has been saved.', NULL, NULL);

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

--
-- Dumping data for table `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'zynqoretech@gmail.com', '2026-01-12 18:23:05', '2026-01-12 18:23:05');

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
(1, 'paypal', 'USD', 'Paypal', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 1, 1, 0, '2023-06-24 03:51:49', '2023-11-28 01:44:37'),
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
(1, 'watermark_width', '100', '2024-08-27 11:25:27', '2026-01-13 02:30:41'),
(2, 'watermark_height', '24', '2024-08-27 11:25:27', '2026-01-13 02:30:41'),
(3, 'watermark_top', '10', '2024-08-27 11:25:27', '2026-01-13 02:30:41'),
(4, 'watermark_left', '10', '2024-08-27 11:25:27', '2026-01-13 02:30:41'),
(5, 'watermark_opacity', '30', '2024-08-27 11:25:27', '2026-01-13 02:30:41'),
(6, 'watermark_type', 'js', '2024-08-27 11:25:27', '2026-01-13 02:30:41'),
(7, 'watermark_logo', 'uploads/watermark/watermark-1768249841.png', '2024-08-27 11:25:27', '2026-01-13 02:30:41'),
(8, 'animation_speed', '1000', '2024-10-30 11:38:00', '2026-01-13 02:30:41');

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

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `course_id`, `rating`, `review_type`, `review`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 4, 'course', 'd', '2026-01-13 07:12:34', '2026-01-13 13:12:46');

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
(1, 1, 11, 'qweqwe', 1, '2026-01-12 14:29:26', '2026-01-12 14:29:26');

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
(1, NULL, NULL, NULL, 'Home', 'home', 'إمبيريال أكاديمي | برامج الماجستير والدكتوراه المهنية', '[{\"value\":\"إمبيريال أكاديمي, ماجستير مهني, دكتوراه مهنية, تعليم عن بُعد, أكاديمية بريطانية, شهادات معتمدة\"}]', 'إمبيريال أكاديمي منصة تعليمية مسجلة في المملكة المتحدة تقدم برامج الماجستير والدكتوراه المهنية والتعليم عن بُعد وفق معايير دولية وشهادات موثقة.', 'index, follow', 'https://imperial-academy.io', 'https://imperial-academy.io', '{ \"@context\": \"https://schema.org\", \"@type\": \"EducationalOrganization\", \"name\": \"Imperial Academy\", \"url\": \"https://imperial-academy.io\" }', 'إمبيريال أكاديمي | تعليم دولي عن بُعد', 'ادرس برامج الماجستير والدكتوراه المهنية عن بُعد مع إمبيريال أكاديمي، منصة تعليمية مسجلة في المملكة المتحدة.', 'uploads/seo-og-images/1-WhatsApp Image 2026-01-13 at 22.07.32.jpeg', NULL, NULL),
(2, NULL, NULL, NULL, 'Compare', 'compare', 'مقارنة الدورات | إمبيريال أكاديمي', 'مقارنة الدورات, مقارنة البرامج التعليمية, ماجستير مهني, إمبيريال أكاديمي', 'قارن بين برامج الماجستير والدبلومات المهنية في إمبيريال أكاديمي واختر البرنامج الأنسب لمسارك المهني.', 'index, follow', 'https://imperial-academy.io/course-compare', 'https://imperial-academy.io/course-compare', NULL, 'مقارنة البرامج التعليمية | إمبيريال أكاديمي', 'مقارنة شاملة بين برامج إمبيريال أكاديمي لمساعدتك على اتخاذ القرار التعليمي الصحيح.', '2-customer-php-version.PNG', NULL, NULL),
(3, NULL, NULL, NULL, 'Privacy', 'privacy.policy', 'سياسة الخصوصية | إمبيريال أكاديمي', NULL, 'تعرف على سياسة الخصوصية في إمبيريال أكاديمي وكيفية جمع واستخدام وحماية البيانات الشخصية وفق المعايير الدولية.', 'index, follow', 'https://imperial-academy.io/privacy-policy', 'https://imperial-academy.io/privacy-policy', NULL, 'سياسة الخصوصية | إمبيريال أكاديمي', 'نلتزم في إمبيريال أكاديمي بحماية خصوصية المستخدمين والحفاظ على سرية بياناتهم.', 'OG-documantation.jpg', NULL, NULL),
(4, NULL, NULL, NULL, 'Refund', 'refund.policy', 'سياسة الاسترجاع | إمبيريال أكاديمي', NULL, 'اطلع على سياسة الاسترجاع في إمبيريال أكاديمي، بما يشمل الشروط والأحكام المتعلقة برسوم البرامج التعليمية.', 'index, follow', 'https://imperial-academy.io/refund-policy', 'https://imperial-academy.io/refund-policy', NULL, 'سياسة الاسترجاع | إمبيريال أكاديمي', 'تعرف على شروط وسياسة استرجاع الرسوم في إمبيريال أكاديمي.', 'OG-Blog.jpg', NULL, NULL),
(5, NULL, NULL, NULL, 'Terms- condition', 'terms.condition', 'الشروط والأحكام | إمبيريال أكاديمي', NULL, 'تعرف على الشروط والأحكام التي تحكم استخدام موقع وخدمات وبرامج إمبيريال أكاديمي التعليمية.', 'index, follow', 'https://imperial-academy.io/terms-conditions', 'https://imperial-academy.io/terms-conditions', NULL, 'الشروط والأحكام | إمبيريال أكاديمي', 'تنظم الشروط والأحكام استخدام خدمات وبرامج إمبيريال أكاديمي.', 'OG-service.jpg', NULL, NULL),
(6, NULL, NULL, NULL, 'Faq', 'faq', 'الأسئلة الشائعة | إمبيريال أكاديمي', 'الأسئلة الشائعة, أسئلة التعليم عن بُعد, إمبيريال أكاديمي', 'إجابات على أكثر الأسئلة شيوعًا حول برامج إمبيريال أكاديمي، القبول، الدراسة عن بُعد، والشهادات.', 'index, follow', 'https://imperial-academy.io/faq', 'https://imperial-academy.io/faq', NULL, 'الأسئلة الشائعة | إمبيريال أكاديمي', 'كل ما تحتاج معرفته عن الدراسة في إمبيريال أكاديمي في مكان واحد.', 'OG-elements home.jpg', NULL, NULL),
(7, NULL, NULL, NULL, 'Cookie policy', 'cookie.policy', 'سياسة ملفات الارتباط | إمبيريال أكاديمي', 'سياسة الكوكيز, ملفات الارتباط, إمبيريال أكاديمي', 'توضح سياسة ملفات الارتباط في إمبيريال أكاديمي كيفية استخدام الكوكيز لتحسين تجربة المستخدم.', 'index, follow', 'https://imperial-academy.io/cookie-policy', 'https://imperial-academy.io/cookie-policy', NULL, 'سياسة ملفات الارتباط | إمبيريال أكاديمي', 'تعرف على كيفية استخدام ملفات الارتباط في موقع إمبيريال أكاديمي.', 'OG-elements home.jpg', NULL, NULL),
(8, NULL, 1, NULL, 'Blog Details', 'blog.details', NULL, NULL, NULL, NULL, 'https://imperial-academy.io/cources', 'https://imperial-academy.io/cources', NULL, NULL, NULL, 'uploads/seo-og-images/1-573336811_122096229261101694_3269263139606951967_n.jpg', '2026-01-12 21:54:43', '2026-01-12 21:54:43'),
(9, NULL, 2, NULL, 'Blog Details', 'blog.details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/seo-og-images/2-599241922_17855328864583607_6856192906404351138_n.jpeg', '2026-01-12 21:57:28', '2026-01-12 21:57:28'),
(10, NULL, 3, NULL, 'Blog Details', 'blog.details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/seo-og-images/3-588562516_122108001855101694_2458484887951354206_n.jpg', '2026-01-12 21:58:43', '2026-01-12 21:58:43'),
(11, NULL, 10, NULL, 'Blog Details', 'blog.details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/seo-og-images/10-586523134_122106702405101694_1140167815047608358_n.jpg', '2026-01-12 22:04:54', '2026-01-12 22:04:54'),
(12, NULL, 7, NULL, 'Blog Details', 'blog.details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/seo-og-images/7-584747567_122106700587101694_8817750299961422118_n.jpg', '2026-01-12 22:05:56', '2026-01-12 22:05:56'),
(13, NULL, 6, NULL, 'Blog Details', 'blog.details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/seo-og-images/6-582659095_122105505165101694_3485300488100952397_n.jpg', '2026-01-12 22:06:31', '2026-01-12 22:06:31'),
(14, NULL, 5, NULL, 'Blog Details', 'blog.details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/seo-og-images/5-573288293_122093707185101694_7721877815164724235_n.jpg', '2026-01-12 22:08:43', '2026-01-12 22:08:43'),
(15, NULL, 4, NULL, 'Blog Details', 'blog.details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/seo-og-images/4-582659095_122105505165101694_3485300488100952397_n.jpg', '2026-01-12 22:09:07', '2026-01-12 22:09:07'),
(16, NULL, 8, NULL, 'Blog Details', 'blog.details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/seo-og-images/8-586712195_122107163217101694_1331707821523331173_n.jpg', '2026-01-12 22:09:50', '2026-01-12 22:09:50'),
(17, NULL, NULL, 1, 'Bootcamp Details', 'bootcamp.details', 'ssad', 'sadasd,sdasd,sadasd,sdas', 'asdsadasdsad', 'as', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-13 01:52:22', '2026-01-13 01:52:22'),
(18, NULL, 9, NULL, 'Blog Details', 'blog.details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/seo-og-images/9-582659095_122105505165101694_3485300488100952397_n.jpg', '2026-01-14 01:01:33', '2026-01-14 01:01:33');

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
(1, 'language', 'العربية', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(2, 'system_name', 'إمبريال أكاديمي', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(3, 'system_title', 'منصة التعليم عن بعد الاحترافية', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(4, 'system_email', 'info@imperial-academy.io', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(5, 'address', 'لندن، المملكة المتحدة', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(6, 'phone', '+20 103 265 9800', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(7, 'purchase_code', '48601c90-cff5-4801-97cc-25c8dbffe739', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(10, 'youtube_api_key', 'youtube-and-google-drive-api-key', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(11, 'vimeo_api_key', 'vimeo-api-key', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(12, 'slogan', 'التعليم الجيد يبني المستقبل', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(13, 'text_align', NULL, '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(14, 'allow_instructor', '1', '2023-10-29 05:36:40', '2023-12-05 23:04:06'),
(15, 'instructor_revenue', '70', '2023-10-29 05:36:40', '2023-12-05 23:04:11'),
(16, 'system_currency', 'USD', '2023-10-29 05:36:40', '2026-01-13 11:22:20'),
(17, 'paypal_currency', 'USD', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(18, 'stripe_currency', 'USD', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(19, 'author', 'Zynqor', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(20, 'currency_position', 'left', '2023-10-29 05:36:40', '2026-01-13 11:22:20'),
(21, 'website_description', 'إمبريال أكاديمي - منصة تعليمية متخصصة في التعليم عن بعد', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(22, 'website_keywords', 'تعليم عن بعد, ماجستير, دكتوراه, تطوير مهني, دورات احترافية, إمبريال أكاديمي', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(23, 'footer_text', 'Zynqor', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(24, 'footer_link', 'https://zynqor.org/', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(25, 'protocol', 'smtp', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(26, 'smtp_host', 'smtp.gmail.com', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(27, 'smtp_port', '465', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(28, 'smtp_user', 'your-email-address', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(29, 'smtp_pass', 'enter-your-smtp-password', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(30, 'version', '1.9', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(31, 'student_email_verification', '0', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor. dfdfs', '2023-10-29 05:36:40', '2023-12-05 23:04:06'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(34, 'razorpay_currency', 'USD', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(35, 'fb_app_id', 'fb-app-id', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(36, 'fb_app_secret', 'fb-app-secret', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(37, 'fb_social_login', '0', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(38, 'drip_content_settings', '{\"lesson_completion_role\":\"duration\",\"minimum_duration\":\"15:30:00\",\"minimum_percentage\":\"60\",\"locked_lesson_message\":\"<h3 xss=\\\"removed\\\" style=\\\"text-align: center; \\\"><span xss=\\\"removed\\\" style=\\\"\\\">Permission denied!<\\/span><\\/h3><p xss=\\\"removed\\\" style=\\\"text-align: center; \\\"><span xss=\\\"removed\\\">This course supports drip content, so you must complete the previous lessons.<\\/span><\\/p>\",\"files\":null}', '2023-10-29 05:36:40', '2023-10-29 05:26:38'),
(41, 'course_accessibility', 'publicly', '2023-10-29 05:36:40', '2023-12-05 00:54:45'),
(42, 'smtp_crypto', 'ssl', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(48, 'course_selling_tax', '0', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
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
(75, 'timezone', 'Africa/Cairo', '2024-07-01 02:06:24', '2026-01-14 02:09:56'),
(76, 'device_limitation', '10', '2023-10-29 05:36:40', '2026-01-14 02:09:56'),
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

--
-- Dumping data for table `ticket_faqs`
--

INSERT INTO `ticket_faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'x ask q1', 'xanserr  qq', '2026-01-12 17:59:46', '2026-01-12 17:59:46');

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

--
-- Dumping data for table `tutor_categories`
--

INSERT INTO `tutor_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'العلوم الأكاديمية', 'academic-subjects', 1, '2026-01-12 20:17:26', '2026-01-12 20:17:26'),
(2, 'إدارة الأعمال', 'business-subjects', 1, '2026-01-12 20:17:26', '2026-01-12 20:17:26'),
(3, 'البرمجة وتقنية المعلومات', 'it-programming', 1, '2026-01-12 20:17:26', '2026-01-12 20:17:26'),
(4, 'اللغات', 'languages', 1, '2026-01-12 20:17:26', '2026-01-12 20:17:26'),
(5, 'التطوير المهني', 'career-development', 1, '2026-01-12 20:17:26', '2026-01-12 20:17:26'),
(6, 'الدورات التحضيرية', 'exam-preparation', 1, '2026-01-12 20:17:26', '2026-01-12 20:17:26');

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
(1, 'الرياضيات', 'mathematics', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(2, 'الفيزياء', 'physics', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(3, 'الإحصاء', 'statistics', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(4, 'إدارة الأعمال', 'business-management', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(5, 'المحاسبة', 'accounting', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(6, 'التسويق', 'marketing', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(7, 'برمجة PHP و Laravel', 'php-laravel', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(8, 'تطوير الويب', 'web-development', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(9, 'قواعد البيانات', 'databases', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(10, 'اللغة الإنجليزية', 'english-language', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(11, 'اللغة العربية', 'arabic-language', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(12, 'اللغة الفرنسية', 'french-language', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(13, 'مهارات القيادة', 'leadership-skills', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(14, 'إدارة الوقت', 'time-management', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(15, 'التواصل الفعّال', 'communication-skills', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(16, 'التحضير للماجستير', 'masters-preparation', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(17, 'التحضير للدكتوراه', 'phd-preparation', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36'),
(18, 'اختبارات اللغة الإنجليزية', 'english-exams', '1', '2026-01-12 20:18:36', '2026-01-12 20:18:36');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `email`, `status`, `name`, `phone`, `website`, `skills`, `facebook`, `twitter`, `linkedin`, `address`, `about`, `biography`, `educations`, `photo`, `email_verified_at`, `password`, `remember_token`, `paymentkeys`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'zynqoretech@gmail.com', 1, 'Mr Zynqor', '+201061198142', NULL, NULL, NULL, NULL, NULL, 'Aswan', NULL, NULL, NULL, 'uploads/users/admin/-1768289012.jpg', '2026-01-12 13:49:20', '$2y$10$EnxeC1dfpRjMEB9LC9RcROEwX1KbGHaYn0TUauzGrC4x2k6i6iapC', NULL, NULL, NULL, '2026-01-12 13:49:20', '2026-01-13 13:23:32'),
(2, 'admin', 'admin@imperial-academy.io', 1, 'Imperial Academy Admin', '+20 103 265 9800', 'https://imperial-academy.io', 'Platform Management, Education Strategy', NULL, NULL, NULL, 'London, United Kingdom', 'Official administrator of Imperial Academy platform.', 'Responsible for managing courses, instructors, tutors, and platform operations.', 'Master in Education Management – UK', 'uploads/users/admin.jpg', '2026-01-12 20:25:29', '$2y$10$0T6GJ89v.XxsojLhU7BTLeWpP09CbZUReZWMo8Q7LBfONMx.Ngi2u', NULL, NULL, NULL, '2026-01-12 20:25:29', '2026-01-12 20:25:29'),
(4, 'tutor', 'mohamed@imperial-academy.io', 1, 'Mohamed Ali', '+20 109 876 5432', NULL, 'Mathematics, Statistics, Academic Tutoring', NULL, NULL, 'https://linkedin.com/in/mohamedali', 'Alexandria, Egypt', 'Academic tutor specializing in mathematics.', 'Mohamed has extensive experience tutoring university students in mathematics and statistics.', 'BSc Mathematics – Alexandria University', 'uploads/users/mohamed.jpg', '2026-01-12 20:25:29', '$2y$10$0T6GJ89v.XxsojLhU7BTLeWpP09CbZUReZWMo8Q7LBfONMx.Ngi2u', NULL, NULL, NULL, '2026-01-12 20:25:29', '2026-01-12 20:25:29'),
(5, 'student', 'student1@gmail.com', 1, 'Youssef Mahmoud', '+20 111 222 3333', NULL, NULL, NULL, NULL, NULL, 'Giza, Egypt', 'Online learner at Imperial Academy.', 'Interested in professional development and online learning programs.', 'Bachelor of Commerce', 'uploads/users/student1.jpg', '2026-01-12 20:25:29', '$2y$10$0T6GJ89v.XxsojLhU7BTLeWpP09CbZUReZWMo8Q7LBfONMx.Ngi2u', NULL, NULL, NULL, '2026-01-12 20:25:29', '2026-01-12 20:25:29'),
(8, 'instructor', 'ahmed@imperial-academy.io', 1, 'Ahmed Hassan', '+20 101 234 5678', NULL, 'Web Development, PHP, Laravel, MySQL', 'https://facebook.com/ahmed.hassan', NULL, 'https://linkedin.com/in/ahmedhassan', 'Cairo, Egypt', 'Senior Web Development Instructor at Imperial Academy.', 'Ahmed has over 8 years of experience in web development and online education, helping hundreds of students enter the tech industry.', 'BSc Computer Science – Ain Shams University', 'uploads/users/ahmed.jpg', '2026-01-12 20:25:29', '$2y$10$yqu96PWk6s00kQXqG2jkieh3swfmCqL.CLaUoCziJFObFYVidQQKe', NULL, '{\"paypal\":{\"sandbox_client_id\":null,\"sandbox_secret_key\":null,\"production_client_id\":null,\"production_secret_key\":null},\"stripe\":{\"public_key\":null,\"secret_key\":null,\"public_live_key\":null,\"secret_live_key\":null},\"razorpay\":{\"public_key\":null,\"secret_key\":null},\"flutterwave\":{\"public_key\":null,\"secret_key\":null},\"paytm\":{\"paytm_merchant_key\":null,\"paytm_merchant_mid\":null,\"paytm_merchant_website\":null,\"industry_type_id\":null,\"channel_id\":null},\"offline\":{\"bank_information\":null},\"paystack\":{\"secret_test_key\":null,\"public_test_key\":null,\"secret_live_key\":null,\"public_live_key\":null},\"sslcommerz\":{\"store_key\":null,\"store_password\":null,\"store_live_key\":null,\"store_live_password\":null,\"sslcz_testmode\":null,\"is_localhost\":null,\"sslcz_live_testmode\":null,\"is_live_localhost\":null},\"aamarpay\":{\"store_id\":null,\"signature_key\":null,\"store_live_id\":null,\"signature_live_key\":null},\"doku\":{\"client_id\":null,\"secret_test_key\":null,\"public_test_key\":null,\"secret_live_key\":null,\"public_live_key\":null},\"maxicash\":{\"merchant_id\":null,\"merchant_password\":null,\"merchant_live_id\":null,\"merchant_live_password\":null}}', 'https://www.youtube.com/watch?v=demo1', '2026-01-12 20:25:29', '2026-01-13 15:40:17'),
(9, 'instructor', 'sarah@imperial-academy.io', 1, 'Sarah Williams', '+44 7700 900123', 'https://sarahwilliams.co.uk', 'Business Management, Leadership, Strategy', NULL, 'https://twitter.com/sarahwilliams', 'https://linkedin.com/in/sarahwilliams', 'London, United Kingdom', 'Business and Leadership Trainer.', 'Sarah is a certified business consultant with experience in training professionals and executives across Europe.', 'MBA – University of London', 'uploads/users/sarah.jpg', '2026-01-12 20:25:29', '$2y$10$0T6GJ89v.XxsojLhU7BTLeWpP09CbZUReZWMo8Q7LBfONMx.Ngi2u', NULL, NULL, NULL, '2026-01-12 20:25:29', '2026-01-12 20:25:29'),
(13, 'instructor', 'nubianmarcel@student.com', 1, 't ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/users/admin/-1768297683.png', '2026-01-13 15:38:30', '$2y$10$yqu96PWk6s00kQXqG2jkieh3swfmCqL.CLaUoCziJFObFYVidQQKe', NULL, '{\"paypal\":{\"sandbox_client_id\":null,\"sandbox_secret_key\":null,\"production_client_id\":null,\"production_secret_key\":null},\"stripe\":{\"public_key\":null,\"secret_key\":null,\"public_live_key\":null,\"secret_live_key\":null},\"razorpay\":{\"public_key\":null,\"secret_key\":null},\"flutterwave\":{\"public_key\":null,\"secret_key\":null},\"paytm\":{\"paytm_merchant_key\":null,\"paytm_merchant_mid\":null,\"paytm_merchant_website\":null,\"industry_type_id\":null,\"channel_id\":null},\"offline\":{\"bank_information\":null},\"paystack\":{\"secret_test_key\":null,\"public_test_key\":null,\"secret_live_key\":null,\"public_live_key\":null},\"sslcommerz\":{\"store_key\":null,\"store_password\":null,\"store_live_key\":null,\"store_live_password\":null,\"sslcz_testmode\":null,\"is_localhost\":null,\"sslcz_live_testmode\":null,\"is_live_localhost\":null},\"aamarpay\":{\"store_id\":null,\"signature_key\":null,\"store_live_id\":null,\"signature_live_key\":null},\"doku\":{\"client_id\":null,\"secret_test_key\":null,\"public_test_key\":null,\"secret_live_key\":null,\"public_live_key\":null},\"maxicash\":{\"merchant_id\":null,\"merchant_password\":null,\"merchant_live_id\":null,\"merchant_live_password\":null}}', NULL, '2026-01-13 15:38:30', '2026-01-13 16:20:55'),
(14, 'student', 'test@gmail.com', 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-24 02:15:46', '$2y$10$Bf/jN4CQR6b3k0PKxO8zLOWnA2ssLgVMfs4cfEYGwkrwlQX9zO5ii', NULL, NULL, NULL, '2026-02-24 02:15:46', '2026-02-24 02:15:46');

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_likes`
--
ALTER TABLE `blog_likes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bootcamps`
--
ALTER TABLE `bootcamps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bootcamp_categories`
--
ALTER TABLE `bootcamp_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bootcamp_live_classes`
--
ALTER TABLE `bootcamp_live_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bootcamp_modules`
--
ALTER TABLE `bootcamp_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bootcamp_purchases`
--
ALTER TABLE `bootcamp_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bootcamp_resources`
--
ALTER TABLE `bootcamp_resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `builder_pages`
--
ALTER TABLE `builder_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ebooks`
--
ALTER TABLE `ebooks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ebook_categories`
--
ALTER TABLE `ebook_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `knowledge_base_topicks`
--
ALTER TABLE `knowledge_base_topicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `language_phrases`
--
ALTER TABLE `language_phrases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3942;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo_fields`
--
ALTER TABLE `seo_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_faqs`
--
ALTER TABLE `ticket_faqs`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
