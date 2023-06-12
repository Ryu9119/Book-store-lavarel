-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 04:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_book_shop_en`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$jL8d0Fau1uB.qLDXToFhSeUAoLHByuvbEWfeV4Sg7Ziy6sO4whY3q', '0988999999', NULL, NULL, NULL, 1, 1, NULL, '2023-06-05 14:51:07', '2023-06-05 14:51:07'),
(2, 'Nhân viên', 'nhanvien@gmail.com', '$2y$10$NNYi0koqS93aRQunXTE76OeGeU4e6jFm6GatlHcHCM6.DVYrswY7G', '0986420994', NULL, NULL, NULL, 2, 1, NULL, '2023-06-05 14:51:07', '2023-06-05 14:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'What Christmas gift should I give my new girlfriend?', 'what-christmas-gift-should-i-give-my-new-girlfriend', 1, 1, 3, 0, 'The Christmas atmosphere is rushing around everywhere, everyone is eagerly waiting and preparing special gifts...', '2022-12-03__gifts-1477296936959.webp', '<p style=\"text-align:justify\">The Christmas atmosphere is rushing around everywhere, everyone is eagerly waiting and preparing special gifts to send to their loved ones. This is also an opportunity for boys to give their lover meaningful Christmas gifts, especially with budding love.</p>\r\n\r\n<p style=\"text-align:justify\">Here are some meaningful and romantic Christmas gift suggestions for new girlfriends, helping guys express their feelings for the girl:</p>\r\n\r\n<p style=\"text-align:justify\">&quot;I want this bear to replace your warm embrace with me in my absence&quot; - Those are the words he can give her when he gives her a big and cute teddy bear. . Women love cotton clothes, and it would be wonderful to give her a stuffed dog that is almost as big as her body with such a sweet and romantic wish.</p>\r\n\r\n<p style=\"text-align:justify\">Boys may not need to buy big gifts, &quot;genuine&quot; gifts for their girlfriends but still make her smile all day. Just a small, pretty card with handwritten wishes will make the other half feel appreciated in this relationship of the two. Because simply, not every guy is patient and attentive to small details such as carefully handwriting each wish for the one he loves!</p>\r\n\r\n<p style=\"text-align:justify\">Perfume</p>\r\n\r\n<p style=\"text-align:justify\">Perfume is the passion of every woman, because every girl wants to wear a seductive fragrance. And if he wants to appear to be a considerate, caring guy, give her the latest perfume, the loveliest scent. That scent would remind him of her charm.</p>\r\n\r\n<p style=\"text-align:justify\">The idea of ​​gifting a lunch is great. Guys can reserve a table at a restaurant or simply invite his girlfriend to a warm meal at a familiar restaurant, or simply buy her lovely Christmas cakes if he doesn&#39;t have much time. time together. Surely this gift will help the two become closer.</p>', '2023-06-05 14:51:20', 1, 1, '2023-06-05 14:51:20'),
(3, 'The meaning of roses in anniversaries, Valentine\'s Day', 'the-meaning-of-roses-in-anniversaries-valentines-day', 1, 1, 1, 0, 'Each rose color brings a different meaning of expression, so let\'s join Hoayeuthuong.com to find out if the bouquet...', '2022-12-03__anh-hoa-hong-trang-dep-tinh-khiet-3.webp', '<p style=\"text-align:justify\">Each color of rose brings a different meaning of expression, so let&#39;s find out with Hoayeuthuong.com to find out what message the bouquet I gave you:</p>\r\n\r\n<p style=\"text-align:justify\">Red rose: symbolizes a passionate and romantic love. The red rose has been around for a very long time, spanning many cultures - both western and eastern. But wherever it is, it is always the most loved flower, and symbolizes a kind of unconditional love. same sacred: Love.</p>\r\n\r\n<p style=\"text-align:justify\">White Rose: Symbolizes innocence, grace and sympathy. White rose not only symbolizes a pure and noble love, but on the other hand, it is also a flower for expressing apologies to your lover if you have made a mistake.</p>\r\n\r\n<p style=\"text-align:justify\">Yellow Rose: Perhaps this is a flower that makes the recipient quite headache because of its diverse meanings: Yellow roses not only symbolize a brilliant love, but also a flower of love. friends, show interest and progress in the relationship, such as: &quot;I care about you&quot; or &quot;remember me&quot;. Giving a bouquet of yellow roses can be a celebration of the beginning, and also of the day of return. Sometimes, yellow roses are an expression of jealousy, diminished love, and betrayal. Besides, yellow rose is also the ideal flower to give to mothers and grandmothers, because it also has the meaning of gratitude and reverence.</p>\r\n\r\n<p style=\"text-align:justify\">Felt Rose: The light pink color of the rose implies the beginning of a dreamy, romantic and tender love. Besides, it also shows a full happiness with the message: &quot;Trust me!&quot;</p>\r\n\r\n<p style=\"text-align:justify\">Dark Roses: Dark pink roses mean luxury, gratitude and to express thanks. In addition, dark pink also implies a haughty beauty.</p>\r\n\r\n<p style=\"text-align:justify\">Pink Rose: The soft pastel pink color of the flower conveys a message of affection, a romantic and gentle love.</p>\r\n\r\n<p style=\"text-align:justify\">Velvet Rose: Symbolizes a passionate and passionate love.</p>\r\n\r\n<p style=\"text-align:justify\">Orange Rose: Shows enthusiasm and burning passion. Vibrant orange represents a passionate love but also mixed with jealousy. Or another meaning, it is the bridge between friendship and love (by the mixture of yellow and red) and implies that &quot;I am proud of you&quot;.</p>\r\n\r\n<p style=\"text-align:justify\">Purple Rose: Besides the inherent elegance, purple roses also show passion, loyalty, and intense love at first sight.</p>\r\n\r\n<p style=\"text-align:justify\">Blue rose: symbolizes an undying love.</p>\r\n\r\n<p style=\"text-align:justify\">Sister rose: True to the name of the flower, pink sister symbolizes close sisterly love. For family love. Express gratitude and affection. And if the giftee is a guy, the message is sent here: You are a good brother.</p>', '2023-06-05 14:51:20', 1, 1, '2023-06-05 14:51:20'),
(4, 'What to give for a half day of October 20? And here is the secret', 'what-to-give-for-a-half-day-of-october-20-and-here-is-the-secret', 1, 1, 3, 0, 'International Women\'s Day is approaching, men are wondering what gift to buy to please...', '2022-12-03__wedding-door-gifts-01.webp', '<p>International Women&#39;s Day is approaching, men are wondering what to choose to buy gifts to please &quot;half&quot;. Here are suggestions for you about the most meaningful October 20 wishes and gifts.</p>\r\n\r\n<p>An indispensable &#39;universal&#39; gift on International Women&#39;s Day. All the girls feel happy when given flowers. Many girls even rely on the bouquet of flowers you give them to determine the level of affection. Therefore, be delicate with your bouquet to bring her joy. Depending on the stage of love, you can give flowers to &#39;half&#39;. If you want to confess or two people are in love, roses are a good choice. However, if she is a romantic and the two of you have loved each other for too long, you have given her roses many times, then choose other flowers such as lilies, orchids... to &quot;change the wind&quot; for her. the love of two people.</p>\r\n\r\n<p>2. Fashion</p>\r\n\r\n<p>This is also a favorite item for women. However, if you are not sure about her measurements, do not buy clothes for her, because she may not fit. The best way if you want to impress her on October 20th is to take her into a fashion store to shop. That&#39;s the best way you can shop for her clothes.</p>\r\n\r\n<p>3. Perfume</p>\r\n\r\n<p>Perfume is a gift for girls who are delicate, romantic and have a good taste in dress. If your lover is one of those girls, you can give her perfume to delight her. Choose perfumes that have a mild, seductive scent. It is a neutral fragrance that can satisfy most women.</p>\r\n\r\n<p>4. Hand-made items</p>\r\n\r\n<p>If you are confident in your ability, you can make hand-made things for her, be it a card, a picture you draw, or if you like the unique but can&#39;t bring joy to yourself. For her, go to the shops that sell homemade goods. Now there is no shortage of such stores for your reference.</p>', '2023-06-05 14:51:20', 1, 1, '2023-06-05 14:51:20'),
(5, '5 meaningful 10/20 gifts that 100% women want to receive', '5-meaningful-1020-gifts-that-100-women-want-to-receive', 1, 1, 1, 0, 'Perfume Perfume has become popular in each of our lives. And though, in love...', '2022-12-03__black-woman-holding-christmas-gift-createherstock.webp', '<p style=\"text-align:justify\">Perfume has become popular in each of our lives. And although, in love, people often think that perfume should not be given, because many people think that the characteristic of perfume is to smell, so they are afraid that feelings will also fly with the scent and quickly break up. But that&#39;s just an old concept, according to experts: &quot;Perfume has a gentle, attractive scent, which will help you have more romance in love.&quot;</p>\r\n\r\n<p style=\"text-align:justify\">Perfume is also a luxury 20/10 gift because the price of a perfume bottle is very high. Therefore, when choosing a perfume as a gift, you should refer to the one that has the favorite scent of the recipient and is suitable for your pocket. Some perfume brands you can choose as gifts for 10/20 such as: Chanel, Armani, D&amp;G, Michael Kors, Gucci, Hermes,,&hellip;etc.</p>\r\n\r\n<p style=\"text-align:justify\">Jewels</p>\r\n\r\n<p style=\"text-align:justify\">For women, jewelry is seen as their &quot;own&quot; item to celebrate beauty and elegance. Sparkling lines from earrings, necklaces or rings will make women more charming. Jewelry is a 20/10 gift that shows a man&#39;s affection and respect for the woman he loves.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\nIn particular, jewelry gifts are gifts that can be kept forever. Compared to other material gifts such as flowers, clothes, teddy bears, etc., jewelry will be a gift that hardly any woman can give. refuse.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\nGenuine watch</p>\r\n\r\n<p style=\"text-align:justify\">Wristwatches have long been a watch companion not only for men but also for many modern women today. Watch gifts carry meaningful messages about time, showing the giver&#39;s respect and desire to keep.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\nIn addition, just like jewelry, a watch will help women honor their beauty and this can be a gift to wake them up in their daily work. Some watch brands you can choose as meaningful 20/10 gifts such as: Michael Kors, Fossil, Skagen, Titan, CK, ...</p>\r\n\r\n<p style=\"text-align:justify\">Hand bag</p>\r\n\r\n<p style=\"text-align:justify\">If before on October 20, women often dreamed of receiving wishes with a bouquet of flowers, now &quot;pragmatic&quot; gifts such as handbags actually bring more usefulness and meaning to them. with them. With a handbag, women can use it in daily life to increase their beauty, style, confidence and meaning to always be by their side, accompanying them anytime, anywhere.</p>', '2023-06-05 14:51:20', 1, 1, '2023-06-05 14:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Detective novel', 'detective-novel', 1, 5, '2023-06-05 14:51:45', '2023-06-05 14:51:45'),
(2, 'Skill', 'skill', 4, 3, '2023-06-05 14:51:45', '2023-06-05 14:51:45'),
(3, 'Love letter novels', 'love-letter-novels', 1, 5, '2023-06-05 14:51:45', '2023-06-05 14:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Textbook', 'textbook', '2020-07-17__book-icon-4.png', NULL, NULL, 0, 0, 1, '2023-06-05 14:51:57', '2023-06-05 14:51:57'),
(2, 'Comic books', 'comic-books', '2020-07-17__book-icon-4.png', NULL, NULL, 0, 0, 1, '2023-06-05 14:51:57', '2023-06-05 14:51:57'),
(3, 'Science and technology', 'science-and-technology', '2020-07-17__book-icon-4.png', NULL, NULL, 0, 0, 1, '2023-06-05 14:51:57', '2023-06-05 14:51:57'),
(4, 'Architecture - fine arts', 'architecture-fine-arts', '2020-07-17__book-icon-4.png', NULL, NULL, 0, 0, 1, '2023-06-05 14:51:57', '2023-06-05 14:51:57'),
(5, 'Novel', 'novel', '2020-07-18__book-icon-4.png', NULL, NULL, 0, 0, 1, '2023-06-05 14:51:57', '2023-06-05 14:51:57'),
(6, 'Children\'s books', 'childrens-books', '2020-07-18__book-icon-4.png', NULL, NULL, 0, 0, 1, '2023-06-05 14:51:57', '2023-06-05 14:51:57'),
(7, 'Foreign language books', 'foreign-language-books', '2020-07-18__book-icon-4.png', NULL, NULL, 0, 0, 1, '2023-06-05 14:51:57', '2023-06-05 14:51:57'),
(8, 'Literature', 'literature', NULL, NULL, NULL, 0, 0, 1, '2023-06-05 14:51:57', '2023-06-05 14:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL DEFAULT 0,
  `server` varchar(100) DEFAULT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_5` tinyint(4) DEFAULT 0,
  `e_position_6` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `e_position_5`, `e_position_6`, `created_at`, `updated_at`) VALUES
(1, 'event1', '2022-12-03__book-festival-poster-banner-vector-template-people-reading-books-literature-event-2edhx2y.jpg', '/', 1, 0, 0, 0, 0, 0, '2023-06-05 14:52:15', '2023-06-05 14:52:15'),
(2, 'event2', '2022-12-03__illustrated-book-fair-cards-52683-68232.webp', '/', 0, 1, 0, 0, 0, 0, '2023-06-05 14:52:15', '2023-06-05 14:52:15'),
(3, 'event3', '2022-12-03__colorful-poster-for-festival-of-book-myg962.jpg', '/', 0, 0, 1, 0, 0, 0, '2023-06-05 14:52:15', '2023-06-05 14:52:15'),
(4, 'event4', '2022-12-03__cbca-book-week-2022-web-banner-dates.jpg', '/', 0, 0, 0, 1, 0, 0, '2023-06-05 14:52:15', '2023-06-05 14:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_histories`
--

CREATE TABLE `import_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `thanhtoan` bigint(20) DEFAULT 0,
  `id_import` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_histories`
--

INSERT INTO `import_histories` (`id`, `thanhtoan`, `id_import`, `created_at`, `updated_at`) VALUES
(1, 12500000, 1, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(2, 5000000, 2, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(3, 0, 3, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(4, 5250000, 4, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(5, NULL, 3, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(6, 0, 5, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(7, 1500000, 5, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(8, 0, 6, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(9, 4000000, 6, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(10, 1000000, 7, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(11, 500000, 7, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(12, 900000, 8, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(13, 0, 9, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(14, 0, 10, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(15, 0, 11, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(16, 0, 12, '2023-06-05 14:52:37', '2023-06-05 14:52:37'),
(17, 0, 13, '2023-06-05 14:52:37', '2023-06-05 14:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_entered`
--

CREATE TABLE `invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NgaySX` datetime DEFAULT current_timestamp(),
  `Hansudung` datetime DEFAULT NULL,
  `ie_suppliere` int(11) NOT NULL DEFAULT 0,
  `ie_name_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ie_total_money` int(11) NOT NULL DEFAULT 0,
  `ie_category` int(11) NOT NULL DEFAULT 0,
  `ie_product_id` int(11) NOT NULL DEFAULT 0,
  `ie_number` int(11) NOT NULL DEFAULT 0,
  `ie_number_sold` int(11) NOT NULL DEFAULT 0,
  `ie_money` int(11) NOT NULL DEFAULT 0,
  `ie_status` tinyint(4) NOT NULL DEFAULT 0,
  `ie_the_advance` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'News', 'news', NULL, NULL, NULL, 0, 1, '2023-06-05 14:52:56', '2023-06-05 14:52:56'),
(3, 'Featured news', 'featured-news', NULL, NULL, NULL, 0, 1, '2023-06-05 14:52:56', '2023-06-05 14:52:56');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 1),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 1),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 1),
(37, '2020_04_29_104806_alter_column_pro_expiration_date_in_table_products', 2),
(38, '2020_04_29_112931_create_invoice_entered_in_tables', 3),
(39, '2020_06_17_192357_create_product_invoice_entered_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(14, 23, 4, 15, 1, 102000, '2023-06-05 14:53:11', '2023-06-05 14:53:11'),
(15, 24, 3, 15, 1, 68000, '2023-06-05 14:53:11', '2023-06-05 14:53:11'),
(16, 26, 3, 15, 1, 68000, '2023-06-05 14:53:11', '2023-06-05 14:53:11'),
(17, 27, 1, 0, 1, 150000, '2023-06-05 14:53:11', '2023-06-05 14:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_vnp_response_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int(10) UNSIGNED NOT NULL,
  `ph_credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_debit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_status` tinyint(4) NOT NULL DEFAULT 0,
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `pi_user_id` int(10) UNSIGNED NOT NULL,
  `pi_admin_id` int(10) UNSIGNED NOT NULL,
  `pi_provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_fee` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_meta_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_status` tinyint(4) NOT NULL DEFAULT 0,
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_user_id` int(10) UNSIGNED NOT NULL,
  `po_transaction_id` int(10) UNSIGNED NOT NULL,
  `po_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `po_meta_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT 0,
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_expiration_date` tinyint(4) DEFAULT NULL,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_expiration` datetime DEFAULT NULL,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_import_goods` int(11) NOT NULL DEFAULT 0,
  `pro_number_import` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_expiration_date`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_expiration`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_import_goods`, `pro_number_import`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(1, 'JAPAN Neon Genesis Evangelion \"Digital File\" Book', 'japan-neon-genesis-evangelion-digital-file-book', 48, 0, 2, 0, 0, 0, NULL, '2022-12-03__s-l225.webp', 9, 1, NULL, 1, 2, 'Welcome to my store!\r\nThis is an official product, not bootleg. If you are big fan, DON\'T MISS THIS BIG CHANCE !', '<p><span style=\"font-family:Arial\"><span style=\"font-size:14pt\">Welcome to my store!</span></span><br />\r\n<span style=\"font-family:Arial\"><span style=\"font-size:14pt\">This is an official product, not bootleg. If you are big fan, DON&#39;T MISS THIS BIG CHANCE !</span></span><br />\r\n<br />\r\n<span style=\"font-family:Arial\"><span style=\"font-size:14pt\">Name =</span></span><br />\r\n<strong><span style=\"color:#ff0010\"><span style=\"font-size:large\">Neon Genesis Evangelion &quot;Digital File&quot; Book &nbsp;&nbsp; &nbsp;</span></span></strong><br />\r\n<br />\r\n<span style=\"font-family:Arial\"><span style=\"font-size:14pt\">Japanese book.</span></span><br />\r\n<span style=\"font-family:Arial\"><span style=\"font-size:14pt\">*This is an official product, not bootleg. Printed in Japan.</span></span><br />\r\n<br />\r\n<span style=\"font-family:Arial\"><span style=\"font-size:14pt\">Release Date : 1997 &nbsp;</span></span><br />\r\n<span style=\"font-family:Arial\"><span style=\"font-size:14pt\">Pages : About&nbsp; 80 pages (No Missing Page)</span></span><br />\r\n&nbsp;</p>\r\n\r\n<div style=\"-webkit-text-stroke-width:0px; text-align:start; text-indent:0px\">\r\n<div>\r\n<div>\r\n<div>\r\n<div><span style=\"font-size:medium\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-family:Arial\"><span style=\"font-size:small\">*Shipping*</span></span></span></span></span></div>\r\n\r\n<div><span style=\"font-size:medium\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-family:Arial\"><span style=\"font-size:small\">I can combined shipping.&nbsp;</span></span></span></span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:medium\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-family:Arial\"><span style=\"font-size:small\">Free shipping = NOT have a Tracking number.</span></span></span></span></span></div>\r\n\r\n<div><span style=\"font-size:medium\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-family:Arial\"><span style=\"font-size:small\">however, If your order is $100+, I can add a Tracking number.</span></span></span></span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:medium\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-family:Arial\"><span style=\"font-size:small\">Economy shipping (or Free shipping) = Not have a tracking number.</span></span></span></span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:medium\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-family:Arial\"><span style=\"font-size:small\">Standard shipping (or Free shipping &amp; Your order is $100+) = have a tracking number.</span></span></span></span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:medium\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-family:Arial\"><span style=\"font-size:small\">Expedited shipping = EMS / International courier (have a tracking number).</span></span></span></span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 0, 0, 0, '2023-06-05 14:53:35', 50, 0, 50, NULL, NULL, 0, '2023-06-05 14:53:35'),
(2, 'Book Of Alien Races Blue Planet', 'book-of-alien-races-blue-planet', 60, 0, 5, 0, 0, 5, NULL, '2022-12-03__s-l225-1.webp', 6, 1, NULL, 1, 2, 'The secrets of the Russians contact with aliens that was guarded by the KGB! Possibly one of the most revealing and controversial documents originating from Russia has now been made available to you in print! Has this book put us a giant leap ahead in the search for answers about the extraterrestrials?', '<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p dir=\"ltr\">Book Of Alien Races Blue Planet Project</p>\r\n			&nbsp;\r\n\r\n			<p dir=\"ltr\">BOOK OF ALIEN RACES: Secret Russian KGB Book of Alien Races and UFOs - A Blue Planet Project Book!</p>\r\n			&nbsp;\r\n\r\n			<p dir=\"ltr\">The secrets of the Russians contact with aliens that was guarded by the KGB! Possibly one of the most revealing and controversial documents originating from Russia has now been made available to you in print! Has this book put us a giant leap ahead in the search for answers about the extraterrestrials? That&rsquo;s a question you will have to answer for yourself, but I guarantee you will not be the same after reading this information and examining the many facts, photos, illustrations, and drawings Ever since This this book of Alien Races was translated from Russian into English this secret book has created a major stir among researchers. The USSR, throughout history, has been a treasure trove of information on ETs and their craft. We&rsquo;ve long had hints on their abilities to obtain UFOs and contact aliens. But this information was well-hidden behind the Iron Curtain. Now, with the release of this book, all that has changed! The original 1946 book was written to inform KGB agents of the various alien races who had visited our planet and also was used as a notebook by secret agents as they constantly made additions and revisions to the original startling information over the years. The fortunate reader of this book will be imbued with knowledge of alien species, descriptions, their ships, and place of origin, as well as information on how alien races have contributed to human evolution here on Earth. You will also discover the negative aspects and possible intentions of some alien races. And there&rsquo;s more, such as information on UFO crashes, Russian contact with aliens, Russian attempts to build their own alien craft, and an amazing section containing communications from aliens! These contain information on the history of humans on Earth, contacts and intervention by different alien species, advice, and some predictions from aliens!</p>\r\n			&nbsp;\r\n\r\n			<p dir=\"ltr\">154 Large 8-1/2&quot; X 11&quot; pages, and are plastic spindle bound so they lay flat for easy studying. This is the same style used for top secret government reports.&nbsp;Plus, the contents also resemble something you would find in a top-secret report! ISBN&nbsp;9781640084711.</p>\r\n\r\n			<p dir=\"ltr\">You will get a brand-new copy rushed to you direct from the publisher!</p>\r\n			&nbsp;\r\n\r\n			<p dir=\"ltr\">Please check out my store with all the Blue Planet Project books and bundles!</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-06-05 14:53:35', 250, 0, 250, NULL, NULL, 0, '2023-06-05 14:53:35'),
(3, 'The Christmas Murder Game: The must-read murder myster... by Benedict, Alexandra', 'the-christmas-murder-game-the-must-read-murder-myster-by-benedict-alexandra', 43, 0, 5, 0, 0, 15, NULL, '2022-12-03__s-l225-2.webp', 8, 1, NULL, 1, 7, 'The Christmas Murder Game: The must-read murder myster... by Benedict, Alexandra', '<p>The Christmas Murder Game: The must-read murder myster... by Benedict, Alexandra</p>', 0, 0, 0, '2023-06-05 14:53:35', 66, 0, 70, NULL, NULL, 0, '2023-06-05 14:53:35'),
(4, 'Humble Pie by Ramsay, Gordon Hardback Book The Fast Free Shipping', 'humble-pie-by-ramsay-gordon-hardback-book-the-fast-free-shipping', 149, 0, 5, 0, 0, 15, NULL, '2022-12-03__s-l225-3.webp', 5, 1, NULL, 1, 5, 'The essential autobiography for foodies.\' Olive \'A mesmerising tale. It reads like a conversation and exudes personality. Ramsay finds it hard to dodge the f-word, but despite the defensiveness that comes accross, the book is an inspiration.\' Irish Examiner', '<h2 style=\"text-align:center\">&nbsp;The essential autobiography for foodies.&#39; Olive &#39;A mesmerising tale. It reads like a conversation and exudes personality. Ramsay finds it hard to dodge the f-word, but despite the defensiveness that comes accross, the book is an inspiration.&#39; Irish Examiner</h2>', 0, 0, 0, '2023-06-05 14:53:35', 97, 0, 100, NULL, NULL, 0, '2023-06-05 14:53:35'),
(5, 'Storyteller – Tales Of Life And Music', 'storyteller-tales-of-life-and-music', 50, 0, 6, 0, 0, 16, NULL, '2022-12-03__9781398503700.jpg', 6, 1, NULL, 1, 0, 'Having entertained the idea for years, and even offered a few questionable opportunities (‘It’s a piece of cake! Just do four hours of interviews, find someone else to write it, put your face on the cover, and voila!’),', '<h2>Description</h2>\r\n\r\n<p>Having entertained the idea for years, and even offered a few questionable opportunities (&lsquo;It&rsquo;s a piece of cake! Just do four hours of interviews, find someone else to write it, put your face on the cover, and voila!&rsquo;), I have decided to write these stories just as I have always done, in my own hand. The joy that I have felt from chronicling these tales is not unlike listening back to a song that I&rsquo;ve recorded and can&rsquo;t wait to share with the world, or reading a primitive journal entry from a stained notebook, or even hearing my voice bounce between the Kiss posters on my wall as a child. This certainly doesn&rsquo;t mean that I&rsquo;m quitting my day job, but it does give me a place to shed a little light on what it&rsquo;s like to be a kid from Springfield, Virginia, walking through life while living out the crazy dreams I had as young musician. From hitting the road with Scream at 18 years old, to my time in Nirvana and the Foo Fighters, jamming with Iggy Pop or playing at the Academy Awards or dancing with AC/DC and the Preservation Hall Jazz Band, drumming for Tom Petty or meeting Sir Paul McCartney at Royal Albert Hall, bedtime stories with Joan Jett or a chance meeting with Little Richard, to flying halfway around the world for one epic night with my daughters&hellip;the list goes on. I look forward to focusing the lens through which I see these memories a little sharper for you with much excitement.</p>', 0, 0, 0, '2023-06-05 14:53:35', 0, 0, 0, NULL, NULL, 0, '2023-06-05 14:53:35'),
(6, 'The Story Of My Life', 'the-story-of-my-life', 55, 0, 6, 0, 0, 20, NULL, '2022-12-03__9788175994034-1.jpg', 5, 1, NULL, 1, 1, 'Emerging confidently from darkness and silence, she won over her blindness and deafness. Armed with curiosity and imagination,', '<h2>Description</h2>\r\n\r\n<p>Emerging confidently from darkness and silence, she won over her blindness and deafness. Armed with curiosity and imagination, she was grateful for the senses and skills she possessed. Meet Helen Keller, whose life is a classic example of unfaltering determination. Detailing her experiences from childhood till the age of twenty-one and the beautiful relationship she shared with Anne Sullivan, her governess and companion, the Story of My Life is an engaging account of Helen Keller&rsquo;s growing up years. a timeless chronicle, it continues to inspire its readers more than a century after its first publication. This version includes exclusive letters exchanged between Helen and Anne Sullivan Macy (Helen&rsquo;s teacher and lifelong companion) between 1897-1901</p>', 0, 0, 5, '2023-06-05 14:53:35', 60, 0, 60, NULL, NULL, 0, '2023-06-05 14:53:35'),
(7, 'Peril', 'peril', 100, 0, 2, 0, 0, 5, NULL, '2022-12-03__9781398512146.jpg', 1, 1, NULL, 1, 0, 'But, as internationally bestselling author Bob Woodward and acclaimed reporter Robert Costa reveal for the first time, it was far more than just a domestic political crisis. At the highest level of the US military, secret action was taken to prevent Trump from possibly starting a war.', '<h2>Description</h2>\r\n\r\n<p>But, as internationally bestselling author Bob Woodward and acclaimed reporter Robert Costa reveal for the first time, it was far more than just a domestic political crisis. At the highest level of the US military, secret action was taken to prevent Trump from possibly starting a war. Woodward and Costa interviewed more than 200 people at the centre of the turmoil, resulting in a spellbinding and definitive portrait of a nation on the brink. They take readers deep inside the Trump White House, the Biden White House, the 2020 campaign, and the Pentagon and Congress, with vivid, eyewitness accounts of what really happened. Peril is supplemented throughout with never-before-seen material from secret orders, transcripts of confidential calls, diaries, emails, meeting notes and other personal and government records, making for an unparalleled history. It is also the first inside look at Biden&rsquo;s presidency, revealing the background to his controversial decision to leave Afghanistan. He took office faced with the challenges of a lifetime: dealing with the continuing deadly pandemic and its crushing economic impact, all the while navigating a bitter and disabling partisan divide, and the hovering, dark shadow of the former president. &lsquo;We have much to do in this winter of peril,&rsquo; Biden declared at his inauguration.</p>', 0, 0, 0, '2023-06-05 14:53:35', 10, 0, 10, NULL, NULL, 0, '2023-06-05 14:53:35'),
(9, 'My Life In Full – Work, Family, And Our Future', 'my-life-in-full-work-family-and-our-future', 35, 0, 3, 0, 0, 10, NULL, '2022-12-03__9789389253818.jpg', 0, 0, NULL, 1, 0, 'For a dozen years as one of the world’s most admired CEOs, Indra Nooyi redefined what it means to be an exceptional leader. The first woman of colour and immigrant to run a Fortune 50 company – and one of the foremost strategic thinkers of our time', '<h2>Description</h2>\r\n\r\n<p>For a dozen years as one of the world&rsquo;s most admired CEOs, Indra Nooyi redefined what it means to be an exceptional leader. The first woman of colour and immigrant to run a Fortune 50 company &ndash; and one of the foremost strategic thinkers of our time &ndash; she transformed PepsiCo with a unique vision, a vigorous pursuit of excellence, and a deep sense of purpose. Now, in a rich memoir brimming with grace, grit, and good humour, My Life in Full offers a first-hand view of Nooyi&rsquo;s legendary career and the sacrifices it so often demanded. Nooyi takes us through the events that shaped her, from her childhood and early education in 1960s India, to the Yale School of Management, to her rise as a corporate consultant and strategist who soon ascended into the most senior executive ranks. The book offers an inside look at PepsiCo, and Nooyi&rsquo;s thinking as she steered the iconic American company toward healthier products and reinvented its environmental profile, despite resistance at every turn. For the first time and in raw detail, Nooyi also lays bare the difficulties that came with managing her demanding job with a growing family, and what she learned along the way. She makes a clear, actionable, urgent call for business and government to prioritize the care ecosystem, paid leave and work flexibility, and a convincing argument for how improving company and community support for young family builders will unleash the economy&rsquo;s full potential. Generous, authoritative, and grounded in lived experience, My Life in Full is the story of an extraordinary leader&rsquo;s life, a moving tribute to the relationships that created it, and a blueprint for 21st century prosperity.</p>', 0, 0, 0, '2023-06-05 14:53:35', 0, 0, 0, NULL, NULL, 0, '2023-06-05 14:53:35'),
(10, 'Beautiful World Where Are You', 'beautiful-world-where-are-you', 45, 0, 6, 0, 0, 0, NULL, '2022-12-03__9780571365432.jpg', 0, 0, NULL, 1, 0, 'The new novel from the author of Normal People. ***PRE-ORDER NOW*** Alice, a novelist, meets Felix, who works in a distribution warehouse, and asks him', '<h2>Description</h2>\r\n\r\n<p>The new novel from the author of Normal People. ***PRE-ORDER NOW*** Alice, a novelist, meets Felix, who works in a distribution warehouse, and asks him if he&rsquo;d like to travel to Rome with her. In Dublin, her best friend Eileen is getting over a break-up, and slips back into flirting with Simon, a man she has known since childhood. Alice, Felix, Eileen and Simon are still young &ndash; but life is catching up with them. They desire each other, they delude each other, they get together, they break apart. They have sex, they worry about sex, they worry about their friendships and the world they live in. Are they standing in the last lighted room before the darkness, bearing witness to something? Will they find a way to believe in a beautiful world? Praise for Normal People: &lsquo;The literary phenomenon of the decade.&rsquo; &ndash; Guardian &lsquo;The best novel published this year.&rsquo; &ndash; The Times &lsquo;Quite astonishing.&rsquo; &ndash; Independent &lsquo;The most enjoyable novel of the year.&rsquo; &ndash; Daily Telegraph &lsquo;Rooney has given us a spellbinding twenty-first-century love story, and asserted herself as one of the major young writers in the English-speaking world</p>', 0, 0, 0, '2023-06-05 14:53:35', 100, 0, 100, NULL, NULL, 0, '2023-06-05 14:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(5, 8, 1),
(6, 8, 3),
(7, 8, 2),
(38, 10, 1),
(39, 10, 3),
(40, 10, 2),
(41, 9, 1),
(42, 9, 3),
(43, 9, 2),
(44, 7, 1),
(45, 7, 3),
(46, 7, 2),
(47, 6, 1),
(48, 6, 3),
(49, 5, 1),
(50, 5, 3),
(51, 5, 2),
(52, 4, 1),
(53, 4, 3),
(54, 4, 2),
(55, 3, 3),
(56, 2, 1),
(57, 2, 3),
(58, 2, 2),
(59, 1, 1),
(60, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_invoice_entered`
--

CREATE TABLE `product_invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pie_product_id` int(11) NOT NULL DEFAULT 0,
  `pie_invoice_entered_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'banner website 1', '/', '2020-07-17__banner-top-20-sach-ban-chay.jpg', 1, 1, 1, '2023-06-05 14:53:53', '2023-06-05 14:53:53'),
(2, 'banner website 2', '/', '2022-12-03__library-banner.jpg', 1, 1, 2, '2023-06-05 14:53:53', '2023-06-05 14:53:53'),
(3, 'banner website 2', '/', '2022-12-03__1000-f-425597082-b2pc36dxgnv8urd9ofabflyvdzguuscm.jpg', 1, 1, 3, '2023-06-05 14:53:53', '2023-06-05 14:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(2, 'Detailed purchase instructions', NULL, 1, NULL, 'Detailed purchase instructions', '2020-07-18 01:15:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(3, 'RELX Group (Reed Elsevier)', '19001907', 'relxgroup@gmail.com', 'USA', '2023-06-05 14:54:49', '2023-06-05 14:54:49'),
(4, 'Pearson', '19008889', 'pearson@gmail.com', 'USA', '2023-06-05 14:54:49', '2023-06-05 14:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `tst_code` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'NGuyễn Văn A', 'nguyenvana@gmail.com', NULL, '$2y$10$XSTmwGdZFluv3zegH4cw1eRYto.2wVeIuHfeGOgC/z5JKrVRj8ebm', '0928817228', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"92.0.4515.107\",\"time\":\"2021-07-24T13:22:17.120379Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"92.0.4515.107\",\"time\":\"2021-07-24T13:24:16.984014Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"106.0.0.0\",\"time\":\"2022-10-08T14:21:42.122326Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"106.0.0.0\",\"time\":\"2022-11-02T17:00:32.037586Z\"}]', 0, 'Ha Noi', NULL, NULL, '2020-07-17 20:04:59', '2022-11-02 17:28:13'),
(6, 'NGuyễn Văn B', 'duocnvoit@gmail.com', NULL, '$2y$10$P8LKA/JZ21RWokkcgWDayu6gtKvwhqXVuTrUJXij8JkBtGwUKtk4y', '0359020898', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"106.0.0.0\",\"time\":\"2022-11-02T17:41:34.963061Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"107.0.0.0\",\"time\":\"2022-11-09T16:43:19.259258Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"108.0.0.0\",\"time\":\"2022-12-03T04:32:50.301770Z\"}]', 1, 'Ha Noi', '2020-07-18__hatgiong.jpg', NULL, '2020-07-18 00:57:57', '2022-11-02 17:41:57'),
(7, 'Le Minh Hai', 'mhai@gmail.com', NULL, '$2y$10$XFTwi.syIOd.0WhnY0m28OoNmDtjuPj4/4cQ1oSnVeLP/ThVWXsRG', '0988809974', 0, NULL, 0, NULL, NULL, NULL, '2020-07-20 15:25:38', NULL),
(8, 'Trần Ngọc Vũ', 'ngocvu12@gmail.com', NULL, '$2y$10$Q/TP80xUkI7W2hE6f4DnruqDj0XCndr4wNcJeLOBc1JE3qNhqWjGe', '0795881084', 0, NULL, 0, NULL, NULL, NULL, '2022-10-26 15:48:51', NULL),
(9, 'job 1212', 'job123@gmail.com', NULL, '$2y$10$.POyBAgl.IIq3zul8RJmFeqbjTAVUNQJjWZaZjIcVJfq2COBhr5LK', '0928817227', 0, NULL, 0, NULL, NULL, NULL, '2023-06-05 14:47:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(2, 1, 5),
(1, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_histories`
--
ALTER TABLE `import_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Indexes for table `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Indexes for table `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_invoice_entered_pie_product_id_index` (`pie_product_id`),
  ADD KEY `product_invoice_entered_pie_invoice_entered_id_index` (`pie_invoice_entered_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_histories`
--
ALTER TABLE `import_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
