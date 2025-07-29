-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2025 at 03:06 PM
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
-- Database: `practical_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1753360643),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1753360643;', 1753360643),
('laravel-cache-7b52009b64fd0a2a49e6d8a939753077792b0554', 'i:1;', 1753360103),
('laravel-cache-7b52009b64fd0a2a49e6d8a939753077792b0554:timer', 'i:1753360103;', 1753360103),
('laravel-cache-c1dfd96eea8cc2b62785275bca38ac261256e278', 'i:2;', 1753355432),
('laravel-cache-c1dfd96eea8cc2b62785275bca38ac261256e278:timer', 'i:1753355432;', 1753355432),
('laravel-cache-f1abd670358e036c31296e66b3b66c382ac00812', 'i:3;', 1753360570),
('laravel-cache-f1abd670358e036c31296e66b3b66c382ac00812:timer', 'i:1753360570;', 1753360570);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ut porro', 'architecto tempore nulla quia iste ut esse a ullam sequi', 0, '2025-07-24 04:55:46', '2025-07-24 04:55:46'),
(2, 'eius numquam', 'eveniet perferendis quia architecto occaecati fugiat ut voluptatem nesciunt laudantium', 0, '2025-07-24 04:55:46', '2025-07-24 04:55:46'),
(3, 'eum ut', 'rerum asperiores et molestiae laudantium accusamus autem blanditiis qui illo', 1, '2025-07-24 04:55:47', '2025-07-24 04:55:47'),
(4, 'et saepe', 'quibusdam quo commodi ducimus quos illum maxime recusandae est commodi', 0, '2025-07-24 04:55:47', '2025-07-24 04:55:47'),
(5, 'voluptates inventore', 'voluptas esse laborum quam nesciunt molestias provident sequi illum porro', 0, '2025-07-24 04:55:47', '2025-07-24 04:55:47'),
(6, 'minima necessitatibus', 'non qui et illo dolores rerum dolores consequatur sit dolor', 0, '2025-07-24 04:55:47', '2025-07-24 04:55:47'),
(8, 'ipsum eveniet', 'occaecati possimus magnam dolor voluptatem sit consequatur delectus voluptas repellendus', 1, '2025-07-24 04:55:47', '2025-07-24 04:55:47'),
(11, 'non voluptas', 'error consequatur doloremque itaque vel officia totam aut velit et', 0, '2025-07-24 04:55:50', '2025-07-24 04:55:50'),
(13, 'architecto magnam', 'accusamus eos temporibus provident eos occaecati ut est perspiciatis sapiente', 0, '2025-07-24 04:55:50', '2025-07-24 04:55:50'),
(14, 'placeat corporis', 'unde velit error aut quae nemo sint minima blanditiis ut', 1, '2025-07-24 04:55:50', '2025-07-24 04:55:50'),
(15, 'repellat minima', 'quod autem facere qui doloremque consequuntur necessitatibus necessitatibus porro molestias', 1, '2025-07-24 04:55:50', '2025-07-24 04:55:50'),
(16, 'rerum alias', 'dolores sit quis aut quia dolor aspernatur quam impedit aperiam', 0, '2025-07-24 04:55:50', '2025-07-24 04:55:50'),
(17, 'sunt molestiae', 'hic hic quod omnis nostrum laboriosam voluptatem aperiam cum labore', 1, '2025-07-24 04:55:50', '2025-07-24 04:55:50'),
(18, 'nobis et', 'blanditiis assumenda repellat blanditiis perspiciatis laboriosam saepe voluptas temporibus itaque', 0, '2025-07-24 04:55:50', '2025-07-24 04:55:50'),
(19, 'omnis corporis', 'et velit ut velit aut esse dolor sunt vel officia', 0, '2025-07-24 04:55:50', '2025-07-24 04:55:50'),
(20, 'et magnam', 'ipsum est eligendi ipsum voluptatem ut distinctio rem ut dignissimos', 0, '2025-07-24 04:55:50', '2025-07-24 04:55:50'),
(21, 'dolorem qui', 'itaque et quasi odit amet temporibus eos consequuntur et deleniti', 0, '2025-07-24 04:55:52', '2025-07-24 04:55:52'),
(22, 'possimus qui', 'voluptates cumque error aut corrupti et illum quos natus ut', 0, '2025-07-24 04:55:52', '2025-07-24 04:55:52'),
(23, 'aliquid in', 'voluptatem et dolores mollitia reiciendis necessitatibus est occaecati suscipit in', 0, '2025-07-24 04:55:52', '2025-07-24 04:55:52'),
(24, 'rem minus', 'sint magnam tenetur saepe ut aliquid aut accusamus ratione dolorum', 0, '2025-07-24 04:55:52', '2025-07-24 04:55:52'),
(25, 'voluptatem earum', 'voluptas quod tempora ea animi voluptatem vitae est tempore dolorem', 1, '2025-07-24 04:55:52', '2025-07-24 04:55:52'),
(26, 'commodi tempora', 'eveniet autem est id et minus maxime explicabo deserunt et', 0, '2025-07-24 04:55:52', '2025-07-24 04:55:52'),
(27, 'beatae temporibus', 'ducimus voluptatem sit ut vel fugiat cupiditate aperiam harum cupiditate', 0, '2025-07-24 04:55:52', '2025-07-24 04:55:52'),
(28, 'repellat labore', 'laborum laudantium sed voluptatem iure numquam laboriosam repudiandae eum natus', 1, '2025-07-24 04:55:52', '2025-07-24 04:55:52'),
(29, 'omnis voluptatem', 'eveniet dolorem ea illo corrupti veritatis fugit sint cupiditate magni', 0, '2025-07-24 04:55:52', '2025-07-24 04:55:52'),
(30, 'nesciunt qui', 'aliquid aut unde sed similique et consectetur recusandae voluptatem delectus', 0, '2025-07-24 04:55:52', '2025-07-24 04:55:52'),
(31, 'quia dolore', 'quia rem sint iure commodi sed aut dignissimos repellat magnam', 0, '2025-07-24 04:55:53', '2025-07-24 04:55:53'),
(32, 'maiores soluta', 'mollitia blanditiis quod facere eveniet sit rerum error eum perferendis', 0, '2025-07-24 04:55:53', '2025-07-24 04:55:53'),
(33, 'voluptatem doloremque', 'doloremque ut dolores doloribus ut et consequuntur molestiae maiores sit', 0, '2025-07-24 04:55:53', '2025-07-24 04:55:53'),
(34, 'nobis fuga', 'quisquam error quasi voluptatem ullam sunt non sequi laboriosam reprehenderit', 1, '2025-07-24 04:55:54', '2025-07-24 04:55:54'),
(35, 'nesciunt consequatur', 'modi blanditiis quia velit sed esse sint et ut eligendi', 0, '2025-07-24 04:55:54', '2025-07-24 04:55:54'),
(36, 'eligendi incidunt', 'esse atque consequatur sint corrupti ullam ad occaecati magnam et', 0, '2025-07-24 04:55:54', '2025-07-24 04:55:54'),
(37, 'nemo ea', 'eius voluptas eligendi qui qui dolorem nulla ut ad reprehenderit', 0, '2025-07-24 04:55:54', '2025-07-24 04:55:54'),
(38, 'nulla dolor', 'amet autem consequuntur ea amet et incidunt repudiandae delectus possimus', 0, '2025-07-24 04:55:54', '2025-07-24 04:55:54'),
(39, 'praesentium aut', 'est repudiandae ut pariatur quaerat fuga eveniet tenetur soluta delectus', 0, '2025-07-24 04:55:54', '2025-07-24 04:55:54'),
(40, 'repellat nisi', 'quo blanditiis porro excepturi qui ut vitae natus quos quia', 1, '2025-07-24 04:55:54', '2025-07-24 04:55:54'),
(41, 'repellendus error', 'ad et odit iste quas et dolor ut porro sit', 0, '2025-07-24 04:55:55', '2025-07-24 04:55:55'),
(42, 'vel et', 'illum ea similique voluptatem autem laborum quos suscipit quae quis', 0, '2025-07-24 04:55:55', '2025-07-24 04:55:55'),
(43, 'sit quis', 'rerum modi quam ea optio non doloribus tempore sit magnam', 1, '2025-07-24 04:55:55', '2025-07-24 04:55:55'),
(44, 'enim alias', 'maiores nihil atque error ex voluptatum earum sunt et consectetur', 1, '2025-07-24 04:55:55', '2025-07-24 04:55:55'),
(45, 'esse molestiae', 'ut voluptatem consectetur quia quidem perferendis voluptatem neque quia et', 0, '2025-07-24 04:55:55', '2025-07-24 04:55:55'),
(46, 'eum dolor', 'enim blanditiis qui consequuntur omnis quam ipsum cupiditate explicabo natus', 0, '2025-07-24 04:55:55', '2025-07-24 04:55:55'),
(47, 'dignissimos incidunt', 'optio ea harum illum amet soluta illo distinctio recusandae sunt', 1, '2025-07-24 04:55:55', '2025-07-24 04:55:55'),
(48, 'minima ipsam', 'voluptate enim soluta vel ratione porro laudantium ducimus ea cum', 1, '2025-07-24 04:55:55', '2025-07-24 04:55:55'),
(49, 'qui quidem', 'aliquid recusandae voluptatum quis corporis eligendi in nostrum voluptatum expedita', 0, '2025-07-24 04:55:55', '2025-07-24 04:55:55'),
(50, 'eveniet amet', 'fugiat excepturi vel harum repellat ullam praesentium similique et voluptas', 0, '2025-07-24 04:55:55', '2025-07-24 04:55:55'),
(51, 'velit doloremque', 'eaque voluptatem et assumenda voluptate voluptas sed illum sed sunt', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(52, 'nobis in', 'est doloremque reiciendis ea quo est ad vel dolorem ut', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(53, 'qui consequatur', 'perferendis labore aut quia eligendi itaque cum maxime consectetur quam', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(54, 'dolores sunt', 'ea velit commodi enim esse est dicta et possimus exercitationem', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(55, 'rerum ut', 'at animi mollitia molestias quibusdam eveniet tempore enim voluptatum modi', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(56, 'enim quaerat', 'consequatur non aut vitae iusto necessitatibus fuga suscipit vitae perspiciatis', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(57, 'iusto excepturi', 'sed ut asperiores nihil officia tenetur est neque enim occaecati', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(58, 'perferendis voluptatibus', 'atque ea vero temporibus maxime aut recusandae hic tempora non', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(59, 'asperiores neque', 'qui eligendi deserunt sit sed maxime rerum pariatur sed qui', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(60, 'numquam omnis', 'et eaque earum architecto vel laborum soluta eaque aut qui', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(61, 'est dolore', 'alias sed ducimus modi veritatis quod impedit quia quo voluptatum', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(62, 'vitae quia', 'veritatis aut dolorem aut saepe sint sed qui eligendi vel', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(63, 'eos voluptatem', 'non aut rerum ut magni distinctio culpa consequatur ab qui', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(64, 'inventore tempore', 'asperiores a ea qui in blanditiis sed repudiandae et cum', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(65, 'assumenda recusandae', 'alias ut tempora explicabo sunt molestias illum et officia aliquam', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(66, 'fuga omnis', 'iusto optio quia et iure voluptatem vel illo in magnam', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(67, 'deserunt sed', 'vel ea nihil at commodi maxime aspernatur ut rerum enim', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(68, 'eius debitis', 'tempore commodi inventore modi ad tempora cumque voluptatem ducimus laboriosam', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(69, 'rerum cumque', 'est ut culpa rerum consequatur saepe expedita omnis voluptatem molestias', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(70, 'fugiat occaecati', 'est doloribus nobis commodi et explicabo aliquam perspiciatis repudiandae libero', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(71, 'magni dignissimos', 'tempora qui perspiciatis iusto voluptas consequatur cumque laudantium quae voluptate', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(72, 'in nisi', 'illum et voluptatem perspiciatis cumque enim beatae a repellat ea', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(73, 'sint occaecati', 'aut architecto fugiat deleniti et enim ipsam accusamus numquam dignissimos', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(74, 'qui et', 'delectus laboriosam suscipit voluptates odio dignissimos ea ratione assumenda ut', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(75, 'qui molestiae', 'vel et eos pariatur voluptatem porro quidem aliquam accusantium quo', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(76, 'totam magni', 'omnis dicta enim dolorem sunt rerum at saepe voluptas nihil', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(77, 'dolores non', 'repellat qui quidem omnis autem voluptatem ea vero sint odio', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(78, 'dolore doloribus', 'sit at quos fugit est sit voluptates eum et itaque', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(79, 'sit aut', 'quia autem nobis quisquam sed soluta quis et voluptatem voluptas', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(80, 'molestias dicta', 'eum et vitae nisi est occaecati asperiores dolorem sed laboriosam', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(81, 'minus iusto', 'quisquam libero quas minus corporis iusto ratione saepe non laboriosam', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(82, 'accusamus quasi', 'id rerum quasi distinctio ratione corporis aut non rem recusandae', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(83, 'sed delectus', 'consequatur occaecati a possimus ut quis pariatur dolor doloribus repellat', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(84, 'et omnis', 'dolore fugit mollitia aspernatur eveniet id non ipsam ut exercitationem', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(85, 'officiis voluptate', 'aut ut autem et veritatis quia alias similique nostrum deleniti', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(86, 'nemo debitis', 'ipsam neque doloribus ea eveniet ipsa et aut labore quia', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(87, 'deserunt numquam', 'non et tempora doloremque qui nobis magni quae qui quia', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(88, 'repellendus doloribus', 'et ab harum aperiam quaerat qui accusamus et eos repellendus', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(89, 'et voluptatum', 'recusandae qui culpa facere possimus quo veniam distinctio ab voluptatum', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(90, 'illum eligendi', 'unde rerum perferendis asperiores et et et culpa cumque debitis', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(91, 'eum quo', 'quas accusamus inventore saepe molestias quis et qui eos reiciendis', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(92, 'perferendis neque', 'perspiciatis dicta rerum quia tenetur quo officiis soluta iure qui', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(93, 'sint quasi', 'sit illo adipisci cupiditate id harum exercitationem et veniam delectus', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(94, 'ratione eos', 'repellendus aut omnis porro quis quos illo est ad iure', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(95, 'pariatur eum', 'unde et neque et est dolores quasi esse praesentium voluptatem', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(96, 'reiciendis expedita', 'omnis quidem est excepturi placeat eius non ut iusto sed', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(97, 'labore aut', 'dolorem quam provident illo quo ullam praesentium quibusdam rerum deleniti', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(98, 'ullam eos', 'quod quisquam ratione qui et vitae illum incidunt facilis vel', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(99, 'nobis sed', 'nulla amet et adipisci non vitae repellendus et officiis modi', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(100, 'neque magni', 'eos illo quo et recusandae omnis sit a sit quis', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(101, 'tenetur esse', 'non sint adipisci quibusdam autem sit quisquam aliquid et quidem', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(102, 'architecto laborum', 'omnis earum a dolorum commodi accusamus nulla ut harum beatae', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(103, 'vel quas', 'error temporibus natus illo debitis perferendis voluptates perspiciatis tenetur iure', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(104, 'atque fuga', 'enim reiciendis commodi impedit qui possimus quas quisquam quo molestiae', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(105, 'ut quisquam', 'laboriosam adipisci mollitia dolorem dolorem natus est ea dolore velit', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(106, 'cupiditate quia', 'molestias quasi ea dolores reprehenderit sed eaque voluptas tempore quia', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(107, 'quibusdam itaque', 'veritatis deserunt exercitationem aut ipsa qui rem nihil sit magni', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(108, 'sint voluptas', 'voluptatem tempora ea architecto natus ipsum quo necessitatibus et porro', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(109, 'rem quasi', 'tempora tempora autem voluptate aut eos reiciendis tenetur sint cupiditate', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(110, 'aut sit', 'eligendi rem ut vel reiciendis et nesciunt aspernatur aut occaecati', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(111, 'enim voluptas', 'aut maxime eveniet illum earum itaque commodi quisquam culpa autem', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(112, 'optio nemo', 'nam ut inventore debitis eaque pariatur et ea rerum cum', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(113, 'laboriosam exercitationem', 'facilis et corrupti autem et vitae nihil eum facilis rerum', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(114, 'hic molestiae', 'quae eligendi iusto qui non at deleniti itaque est illum', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(115, 'nulla quaerat', 'consequatur impedit molestiae sed consectetur ut vel distinctio sit pariatur', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(116, 'numquam rerum', 'culpa est architecto alias fugit nostrum optio exercitationem voluptatum nesciunt', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(117, 'veritatis doloremque', 'explicabo corrupti ea omnis placeat vitae omnis accusamus ut in', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(118, 'sit enim', 'et porro repellat ut in sed autem aperiam sit voluptatibus', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(119, 'quis debitis', 'provident earum dolores exercitationem esse corrupti eius doloremque atque voluptas', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(120, 'voluptatem ea', 'vero harum qui quia facere eligendi omnis molestiae nam iste', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(121, 'magnam vero', 'fugit similique nisi ea voluptatem in rerum sapiente qui fuga', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(122, 'ut est', 'fuga doloremque tempore rerum ratione rerum accusantium soluta adipisci ratione', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(123, 'et aliquam', 'consequatur dolor repudiandae qui aliquam est tempora ullam et aperiam', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(124, 'quod animi', 'earum quod ipsam aspernatur commodi id consequatur in minus quae', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(125, 'voluptatem molestiae', 'assumenda molestiae rerum facere modi aperiam omnis delectus nemo sed', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(126, 'qui provident', 'eveniet numquam ut et voluptate et quo quia delectus suscipit', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(127, 'impedit distinctio', 'qui perferendis ut aut a saepe optio provident qui accusamus', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(128, 'et sequi', 'officiis hic unde eaque provident modi ut similique ut id', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(129, 'corporis delectus', 'officiis nemo eos nostrum blanditiis itaque in et facere minus', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(130, 'recusandae aliquid', 'sit rem voluptatem ullam ut dolor dolorem ea sed omnis', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(131, 'molestias ut', 'dolorum repudiandae sit in sunt illum vel qui magnam consectetur', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(132, 'maiores aliquam', 'necessitatibus molestiae consectetur veniam corporis autem libero dolores assumenda quia', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(133, 'dignissimos non', 'mollitia et esse provident ut eum est et soluta et', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(134, 'repellendus saepe', 'atque architecto delectus nihil dolor iste rerum omnis cumque sint', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(135, 'pariatur quaerat', 'qui odit aliquam eos culpa a non ut amet et', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(136, 'error iure', 'repudiandae aut possimus laborum occaecati nostrum quasi maiores beatae eos', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(137, 'blanditiis aut', 'aut expedita cupiditate et dolore deleniti ad qui accusamus fugit', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(138, 'nulla ducimus', 'est qui iste quod ut fugit nam qui nisi quos', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(139, 'dolore facilis', 'aut dolore aut ex eum commodi distinctio libero culpa ea', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(140, 'enim quam', 'provident illum magnam quis voluptates eum et doloribus aut perferendis', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(141, 'est nobis', 'quod pariatur sint vel rerum eaque sed autem et vero', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(142, 'animi facere', 'quis sunt est minus sed beatae fugit quibusdam est qui', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(143, 'repudiandae perspiciatis', 'assumenda qui nesciunt iste rem voluptatum atque velit facilis rerum', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(144, 'asperiores sequi', 'repellendus ut nobis beatae quo veritatis est error et consequatur', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(145, 'dignissimos unde', 'nesciunt neque consequatur nihil harum aspernatur ut perspiciatis non quia', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(146, 'consequatur eveniet', 'optio autem et aspernatur magnam corrupti quo dolorem cum soluta', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(147, 'sed qui', 'eos voluptates sed dignissimos officia aut sequi earum odio rem', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(148, 'voluptates alias', 'dolorem qui quo qui cupiditate a nobis cum repellat eligendi', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(149, 'quia illum', 'neque explicabo ducimus temporibus commodi ipsam velit omnis rerum esse', 0, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(150, 'non et', 'quos qui voluptatem non rerum dolorum amet magnam ut veritatis', 1, '2025-07-24 05:09:36', '2025-07-24 05:09:36'),
(151, 'aliquam deleniti', 'voluptas ipsa placeat qui et omnis fugit optio dolor dolore', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(152, 'qui esse', 'sed sequi nobis omnis aliquid perspiciatis et ea beatae id', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(153, 'asperiores quia', 'sit officia officiis voluptatem at sint consequuntur optio in corporis', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(154, 'voluptatibus incidunt', 'sint doloribus aliquam minus tenetur vero aut corrupti est voluptas', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(155, 'ad optio', 'excepturi rerum quo et sint eum necessitatibus vel quos doloribus', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(156, 'ut sunt', 'velit magni vel debitis similique sed qui autem vitae dolor', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(157, 'iusto qui', 'quisquam quibusdam similique quos vitae repellat assumenda asperiores expedita et', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(158, 'vitae a', 'dolore adipisci quas eum labore voluptates minima sunt omnis consectetur', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(159, 'voluptate tempora', 'sed perspiciatis vel sit fugit magni ut impedit fuga dolorem', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(160, 'dolor eaque', 'aliquid accusamus inventore fuga provident esse est iure consequatur omnis', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(161, 'et aut', 'temporibus quo inventore labore iusto est alias deserunt et facilis', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(162, 'dolorum ea', 'quam ab quibusdam provident sed ipsum consequatur nemo officiis quo', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(163, 'quam voluptatibus', 'neque minima autem enim rem adipisci cupiditate dolorum repellendus sit', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(164, 'ut ad', 'eius commodi alias quasi temporibus optio quis ipsum in illum', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(165, 'voluptatibus nihil', 'sed incidunt ut expedita nihil incidunt officiis culpa ipsa minima', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(166, 'eum et', 'doloremque aut qui dolorem voluptatem perferendis voluptatem quia sed dicta', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(167, 'nihil illo', 'esse nulla et voluptates voluptas earum provident eos laudantium voluptatibus', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(168, 'ut debitis', 'non sapiente maxime velit repellat adipisci officiis dolores qui fuga', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(169, 'eos rerum', 'quas omnis dolorum quia tempora rerum officiis repudiandae quo illum', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(170, 'nihil corrupti', 'voluptatem laudantium et ullam debitis dicta pariatur laboriosam accusamus fugiat', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(171, 'modi rerum', 'eius sed illum nulla id dolorum eligendi ut rerum laudantium', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(172, 'laboriosam voluptas', 'eaque quisquam corrupti ullam nostrum nemo magni vel incidunt id', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(173, 'et ipsa', 'laboriosam ut modi facilis quia ut eum quia perferendis culpa', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(174, 'accusamus et', 'quae harum aspernatur vel et voluptate sunt blanditiis numquam debitis', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(175, 'sed dolore', 'dolor dignissimos dolores cum consequuntur odio vel excepturi laboriosam minus', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(176, 'maiores vel', 'eos excepturi fugiat aut eum autem quibusdam totam voluptatem ratione', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(177, 'temporibus id', 'ratione eos vitae accusamus et earum dolor velit ipsam similique', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(178, 'qui magni', 'sed quod et soluta culpa voluptates id et cupiditate consequuntur', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(179, 'voluptatum nemo', 'quis saepe iure est ea quia dolore et sit voluptas', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(180, 'autem quasi', 'delectus eum aut rerum ut deserunt nesciunt natus tempora consequatur', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(181, 'commodi vel', 'vel quo laudantium qui dolor nihil eos expedita enim reiciendis', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(182, 'necessitatibus atque', 'libero iure molestias velit quo possimus deserunt voluptas qui autem', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(183, 'ea nihil', 'ducimus quas incidunt nihil praesentium recusandae amet et placeat dolor', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(184, 'adipisci officiis', 'doloribus hic ut non est aut deserunt possimus ducimus et', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(185, 'voluptatum et', 'earum ab odio neque quisquam velit ipsam hic velit qui', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(186, 'laborum repellendus', 'provident occaecati eaque enim ut corrupti aliquid est et quos', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(187, 'libero doloremque', 'non quos nam aut ad sunt quia eaque ullam non', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(188, 'ratione fugiat', 'dolorem ut dolor rem sint ducimus quasi ea inventore et', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(189, 'tempora non', 'nihil totam ut quam vel deserunt impedit voluptas reiciendis earum', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(190, 'veritatis consequuntur', 'deleniti ipsum distinctio nihil sed quisquam corporis ex voluptates sit', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(191, 'totam aut', 'cum totam aut laboriosam alias nobis modi quos non unde', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(192, 'eius voluptatem', 'consequatur tempora recusandae enim aut amet commodi quo ad a', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(193, 'sed et', 'qui voluptatibus dolores aut nam itaque tenetur non rerum recusandae', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(194, 'quasi id', 'ab et nam quia possimus debitis cupiditate debitis quisquam velit', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(195, 'labore ea', 'magni minus ut quaerat voluptate earum velit qui sit accusamus', 1, '2025-07-24 05:09:51', '2025-07-24 05:09:51'),
(196, 'odio quia', 'vel nesciunt autem voluptatum rem voluptatem sequi quis autem et', 0, '2025-07-24 05:09:51', '2025-07-24 05:09:51');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_24_101208_create_categories_table', 2),
(5, '2025_07_24_102728_create_products_table', 3),
(6, '2025_07_24_105205_add_activation_fields_to_users_table', 4),
(7, '2025_07_24_113803_add_parent_id_to_users_table', 5);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'in voluptas', 'Voluptates fugit et asperiores dolorem unde eum consequatur. Reprehenderit cupiditate similique ut expedita eum. Consequatur id quas repellat suscipit ab omnis. Dolore consectetur est est debitis ut ex. Aut omnis animi alias dolores.', 273.98, 13, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(2, 'quibusdam maiores', 'Vel qui consequuntur culpa velit natus qui quia. Et libero qui cum. Quae tempore dolorum fuga perspiciatis inventore aut modi. Et qui autem odio et asperiores.', 315.04, 32, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(3, 'ad ex', 'Ab quisquam quae repellat ratione. Deleniti officia a blanditiis officia reprehenderit. Minus omnis voluptatum occaecati eius tenetur nihil non accusamus. Aut fugiat et enim sequi id.', 172.78, 28, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(4, 'voluptatem est', 'Nisi voluptatem quis consequatur nesciunt earum nemo. Natus eius sit quos. Neque sed error natus voluptate aspernatur minima.', 418.74, 36, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(5, 'soluta quia', 'Fugit unde hic sunt cupiditate sapiente aliquid consequatur commodi. Nemo facilis perspiciatis praesentium pariatur dicta sit porro. Consectetur modi eum culpa cum. Exercitationem provident corrupti iste placeat sunt rerum.', 425.22, 42, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(7, 'necessitatibus animi', 'Necessitatibus soluta quia a pariatur. Dignissimos sunt aut nam voluptate animi enim qui. Assumenda autem consequatur velit in dolorem voluptas necessitatibus.', 284.94, 18, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(9, 'dolorem nam', 'Qui rem voluptatum ad aspernatur minima dolorem nostrum. Pariatur officiis ullam dolores perferendis qui. Et rerum aut eos iste. Debitis commodi odit minus ut et voluptas cum.', 103.61, 48, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(10, 'illo et', 'Dolore facere praesentium earum. Consequatur ut veritatis ut est provident et. Quod minus qui molestiae ut. Qui repellat eum eveniet. Quibusdam culpa delectus accusantium.', 285.22, 47, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(11, 'et autem', 'Impedit commodi ut voluptatum quisquam ea molestiae officiis minus. Ut aut optio rem. Cupiditate nobis deserunt libero at. Dolorum dolores perferendis tenetur quidem quia culpa. Ea consequuntur necessitatibus quae praesentium.', 588.96, 4, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(12, 'ex placeat', 'Delectus quas tenetur eos. Itaque dicta aut quia quo quo doloremque. Facere modi dolore voluptas praesentium similique veniam.', 556.66, 29, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(13, 'a doloribus', 'Officiis dicta et illum veniam nisi recusandae eius. Laborum unde labore voluptates et. Voluptatem nulla beatae quidem aut aliquam.', 181.73, 37, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(14, 'eos et', 'Qui velit et est fuga. Officia atque deleniti nulla alias rem in. Vel sit nihil quia sint laudantium. Accusamus similique voluptas magnam.', 679.15, 37, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(15, 'quo est', 'Corrupti quasi ut quae porro et laboriosam eaque illo. Ut repellat nobis ad quisquam. Qui sit ut magni et in.', 701.91, 8, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(16, 'officia ut', 'Et vel molestias dicta est sed unde cum. Et esse rerum voluptas sunt repellendus ea tempore. Id animi voluptas quaerat repellendus.', 629.19, 11, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(17, 'aut ex', 'Recusandae quae officia dignissimos dolores eum aut numquam. Accusamus aut qui enim ut eos. Et maiores maiores aliquam assumenda laudantium omnis et.', 684.85, 3, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(18, 'doloribus laborum', 'Vel pariatur et aut. Ipsam iure occaecati dicta quidem dolore facere. Voluptatibus enim enim ratione ut non voluptatem amet. Voluptas similique voluptatum eum mollitia sint et.', 321.79, 17, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(19, 'officiis repellendus', 'Vitae officia eos error natus omnis. Consectetur voluptatem distinctio sint optio. Velit enim molestiae laborum.', 176.48, 50, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(20, 'deleniti aspernatur', 'Rem porro autem iure veniam. Fugit similique laboriosam voluptatem quam. Omnis consequatur facilis eos. Rerum voluptas rerum nulla nemo explicabo vel.', 889.58, 6, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(21, 'quo omnis', 'Numquam provident nisi molestiae quia. Quaerat vitae unde nulla possimus qui. Tenetur nihil in et officia vel nulla. Odit sint voluptatem dignissimos.', 221.64, 3, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(22, 'dolorem ad', 'Et dolor repellendus ex unde ea ut. Fuga et dolorum totam voluptatum corporis est enim aut. Qui ad provident iusto aperiam vero nostrum. Itaque at voluptatem facere laboriosam vero optio aut.', 413.77, 35, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(23, 'accusamus dignissimos', 'Quam explicabo et atque illum itaque impedit tenetur. Ducimus molestiae occaecati inventore deserunt dolores fugiat. Maiores id commodi dignissimos eveniet. Architecto vel eum cupiditate aut odio beatae molestias.', 86.53, 11, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(25, 'atque beatae', 'Et sunt architecto impedit. Aliquam asperiores a quia sapiente non. Rerum corporis aliquid placeat iure. Expedita possimus quasi natus.', 55.97, 32, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(26, 'sit nihil', 'Consequatur est qui assumenda est dolor. Eum laudantium voluptate laboriosam voluptatem. Qui dignissimos ipsum distinctio eius. Laudantium veniam exercitationem omnis voluptatem beatae sed possimus voluptatem.', 277.15, 39, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(28, 'et accusantium', 'Repellendus placeat aut minus asperiores rem quod. Voluptatibus totam odio qui minima totam. Commodi sed cum quia quos odit consequatur eius. Quas et blanditiis in vel qui.', 344.00, 14, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(30, 'aspernatur quisquam', 'Unde et explicabo ut qui aliquid accusamus. Et consequuntur est voluptas eius minus dolores unde. Corrupti et qui sed dicta est. Repudiandae dolorem laudantium non dolores dicta modi.', 831.27, 46, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(31, 'quia aut', 'Et maxime voluptatum praesentium voluptas facere nemo. Laudantium sed enim inventore aspernatur saepe. Fugit impedit voluptate aliquam ullam ut rerum inventore.', 681.82, 43, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(33, 'veritatis et', 'Accusamus earum alias dolor minima cupiditate rem. Natus dolores mollitia quis earum consectetur. Molestias et saepe ipsum sequi et inventore et. Rem magni nobis veniam.', 782.01, 35, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(35, 'est sit', 'Quidem est consequatur eos perferendis odit est error. Et aperiam aut nihil accusantium. Vitae dolorum adipisci aliquam deleniti architecto dolores ut laborum.', 988.70, 32, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(36, 'eum possimus', 'Debitis labore vitae eum numquam ea. Voluptas dolor quia similique harum beatae non adipisci. Eveniet et qui dolorem quasi.', 44.43, 1, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(38, 'nihil est', 'Qui quo est suscipit illum omnis id. Ducimus perferendis rerum et asperiores esse rerum. Nihil voluptates recusandae eveniet nostrum id non iste. Illum eum aut ipsa facere nobis.', 129.85, 44, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(39, 'quia qui', 'Dicta nihil nulla sit occaecati. Molestiae error reiciendis ea assumenda. Eveniet dicta cum et accusantium.', 623.34, 32, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(40, 'veniam est', 'Dicta dignissimos suscipit provident nam eveniet quod impedit autem. Et quam ut ut laboriosam praesentium et reiciendis. Nostrum amet officia optio placeat fugiat et est in. Modi consequatur architecto enim tenetur possimus et.', 781.52, 50, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(41, 'sint nam', 'Error accusamus consequatur incidunt enim aut animi. Praesentium quis voluptatem dolores est sed qui eos molestias. Saepe repudiandae autem necessitatibus nam ut. Quis quam molestiae dicta voluptatem.', 952.96, 21, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(43, 'deserunt facilis', 'Repudiandae rerum consequatur odit illum culpa impedit. Deleniti magnam exercitationem qui consequatur iste. Consequatur tenetur deserunt id possimus voluptatem officia. Voluptatum et ipsa sit hic vel est.', 63.62, 50, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(44, 'sunt eos', 'Quod harum eaque eligendi eos velit eaque. Autem repellendus et est quia provident laudantium est. Sed sed qui enim sit fugiat deserunt dolor. Quia at culpa aut aut autem.', 647.14, 29, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(45, 'consectetur et', 'Velit aut et quia quia. Nam ut doloremque consectetur eaque eligendi similique aut. Quasi voluptatibus dolorum sed cupiditate. Reiciendis dignissimos laboriosam mollitia harum odio temporibus soluta.', 564.64, 36, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(46, 'sit exercitationem', 'Ut rerum debitis aut ducimus. Quae inventore hic qui. Voluptate consequatur enim voluptatem dolorem eveniet quisquam dolorem aliquid. Et modi cupiditate mollitia ab. Numquam et recusandae consectetur harum.', 772.60, 31, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(47, 'illum nulla', 'Ad nulla placeat alias voluptas eum eum consequuntur laudantium. Ut odit non vel iusto. Similique temporibus provident optio molestiae sed.', 495.87, 48, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(48, 'assumenda assumenda', 'Et ut sit rem accusantium accusantium aliquid minus dolorem. Et molestiae dolore voluptate dignissimos non. Dolore maiores nemo beatae ut eaque atque rerum facere.', 203.08, 20, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(49, 'iusto quia', 'Earum quasi architecto libero voluptates excepturi nihil. Sed sunt sit et et unde et. Facere quas omnis possimus corporis qui. Natus omnis numquam beatae officia modi cupiditate eos.', 56.34, 47, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(50, 'et pariatur', 'Placeat consequatur voluptas explicabo iure nostrum in. Est fuga rem velit porro illum doloribus. Distinctio sequi corporis assumenda rerum cupiditate ipsam. Autem expedita velit architecto qui inventore.', 773.85, 33, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(51, 'quibusdam voluptatem', 'Quaerat sit consequatur incidunt. Eligendi voluptates delectus repellat magnam dignissimos et. Repellat mollitia ea fugit officiis id dolores in quia.', 583.15, 50, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(52, 'recusandae voluptas', 'Pariatur praesentium sint facere. Itaque reiciendis atque facere est esse quam expedita. Iure corporis odit est adipisci nihil. Eos officia voluptatem incidunt tempore aliquam et et. Labore eveniet deleniti id quasi culpa.', 251.94, 19, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(53, 'qui eveniet', 'Ut nemo sit non eaque. Id autem reprehenderit nam quisquam dolores iusto. Reprehenderit reprehenderit sed laudantium nostrum aperiam. Esse reprehenderit et commodi dicta.', 21.53, 19, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(54, 'a ratione', 'Et ea qui et odio dolores enim dolor. Ut quasi autem libero. Maiores quibusdam repellendus ut dolorum molestiae provident voluptatem.', 199.25, 5, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(55, 'vel at', 'Hic porro asperiores saepe eos. Laborum magnam possimus et itaque quos nam et consectetur.', 826.91, 33, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(56, 'tempore minus', 'Consectetur ipsam quidem qui exercitationem quia consequatur. Quis expedita facere ipsum voluptas numquam. Dignissimos quos ipsum nihil maiores. Et laudantium tempora dignissimos impedit id voluptatem.', 473.39, 42, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(57, 'et quidem', 'Velit sint saepe sed et et enim voluptatem dolor. Reprehenderit perspiciatis ducimus rerum omnis reiciendis corrupti occaecati. Sunt non rerum placeat ipsa perspiciatis alias nam. Eum possimus maxime perspiciatis praesentium.', 178.99, 39, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(58, 'maxime aut', 'Et a aliquam quibusdam harum hic. Velit magni quasi ea voluptas quas explicabo. Quia mollitia aut impedit molestiae amet odit facilis harum.', 687.24, 19, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(59, 'laborum hic', 'Aspernatur et incidunt est ut et asperiores voluptas. Minima harum maiores delectus officiis a. Quo sit vel dolor facere. Aut nihil quis aut rerum.', 242.14, 24, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(60, 'odit eos', 'Illum id voluptates neque vitae nesciunt sequi. Nesciunt sunt nesciunt quos in. Quod provident dolor quos perspiciatis qui distinctio.', 79.35, 35, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(61, 'iste aut', 'Tempora consequatur modi et consequatur labore quae aut ipsa. Iure corrupti consectetur possimus. Quis in libero illum et dolores. Ratione deserunt consequatur sint beatae exercitationem sint iusto voluptatem.', 861.09, 5, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(62, 'sapiente excepturi', 'Hic aut eaque magnam ab sunt dolore. Assumenda odit et voluptas deserunt. Quo facilis consequatur est molestias ipsam temporibus.', 369.27, 50, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(63, 'et occaecati', 'Ipsa iste aspernatur illum et. Commodi sunt non earum placeat qui et in qui. Vitae quos est id molestiae unde.', 552.74, 44, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(64, 'quam quasi', 'Consequuntur illo amet earum non facere iure veritatis. Velit architecto neque praesentium in debitis. Expedita corrupti qui est ut. Eaque assumenda labore dolores vel.', 253.64, 18, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(65, 'consequuntur sed', 'Facere deserunt enim voluptas et non. Et eligendi sed cum quia rerum. Quasi similique ea qui doloremque deserunt assumenda voluptatem. Ratione sunt dicta delectus quas quia.', 669.78, 19, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(66, 'dolorem quia', 'Eaque neque recusandae ullam dolores magnam. Recusandae veniam quis est perferendis voluptatem libero et. Quod tempora reiciendis dolores qui.', 944.01, 20, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(67, 'sequi aut', 'Dolores non aliquid occaecati non. Nemo debitis qui libero. Et quo ipsam labore quam quisquam non libero. Tempore ut aspernatur ut velit ratione.', 552.73, 33, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(68, 'impedit aut', 'Harum sequi quo reiciendis sunt tempore. Ipsam enim cupiditate sit. Aut ut asperiores libero labore nulla voluptatum nemo magni. Voluptas rerum ut totam quibusdam atque quibusdam omnis iure. Excepturi autem eligendi quam ducimus dolores quia quibusdam.', 532.56, 20, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(69, 'odit aliquid', 'Quia eaque dolorum nobis dolore. Perferendis ea accusantium dolores consequatur corporis neque aut. Voluptas laudantium commodi expedita officia voluptate non ea. Ratione quae necessitatibus sunt et nulla ipsa.', 732.40, 41, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(70, 'reiciendis quasi', 'Aperiam voluptatibus sequi autem repudiandae blanditiis eum odio exercitationem. Culpa ut pariatur et est culpa sequi. Labore eaque sed asperiores at. Corrupti quidem rerum quia id adipisci iusto.', 328.79, 21, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(71, 'qui odio', 'Excepturi debitis maxime asperiores et soluta molestiae. Dicta modi beatae in. Cupiditate qui labore quo voluptatem aspernatur.', 603.63, 20, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(72, 'facilis aliquid', 'Harum tempora non dolores similique. Facere sit iure nam quaerat. Et rerum consectetur rem saepe ut eligendi non. Occaecati libero ullam voluptate repellat voluptas.', 318.25, 6, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(73, 'minima dolore', 'Natus similique rem odit cupiditate illum iusto reiciendis. Cum nemo itaque quia et aut corporis. Aut excepturi vel sit ullam sint veritatis.', 454.35, 1, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(74, 'voluptatibus deserunt', 'Ad repellat ab labore voluptatum dolore. Ut et tempore fuga praesentium expedita. Quibusdam blanditiis minima delectus provident beatae cum cupiditate. Delectus reprehenderit amet soluta modi quos nulla. Non illo quaerat eaque cupiditate consequatur aliquam.', 726.38, 25, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(75, 'dolores ut', 'Odit incidunt non ut. Nostrum quia nesciunt laudantium deserunt. Nobis est sed sint ut ut temporibus quia.', 980.37, 2, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(76, 'aspernatur culpa', 'Sed delectus delectus non dolorem voluptatem repellendus consequatur. Sed corrupti vel iste eius. Doloribus quidem hic ipsum eos saepe.', 636.34, 43, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(77, 'id et', 'Maiores quod reiciendis quae ad eum fuga qui. Ut eum laudantium quaerat officiis nulla sapiente. Id cum ut sapiente dolorum saepe et. Et porro consequatur debitis et hic voluptates est mollitia.', 144.07, 49, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(78, 'soluta vero', 'Inventore voluptatum eaque provident dolor et perferendis odit impedit. Hic quidem quas molestiae sed molestiae nemo error. Qui error rem quidem.', 506.65, 17, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(79, 'eius harum', 'Saepe id repellendus aut. Qui perferendis harum consequatur repudiandae nemo nam ipsa cum. Sequi eum quisquam nam et rerum.', 75.96, 19, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(80, 'animi officiis', 'Velit recusandae fugit quia. Facere aut quia ratione aperiam.', 592.34, 29, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(81, 'dolorem voluptate', 'Dolor unde et quos sapiente. In libero et porro quia in. Voluptatum ut quos commodi velit. Maxime quae maxime possimus et sint voluptatem hic harum.', 23.28, 41, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(82, 'molestiae et', 'Cum delectus vel temporibus ducimus. Rerum quis alias velit pariatur molestiae sunt. Odio ut molestiae officia eaque repellat ducimus voluptatibus. Aut et est esse quo consequatur. Reprehenderit accusantium sunt non aut ullam eos doloremque.', 739.03, 20, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(83, 'consectetur corrupti', 'Et vel qui ipsam. Nemo quis enim aliquam aspernatur nesciunt consequatur. Eos minima molestiae voluptates aspernatur possimus atque.', 769.68, 16, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(84, 'maiores explicabo', 'Quae veniam sed vitae repudiandae recusandae ut quo maiores. Blanditiis iure nemo impedit non. Enim magni atque at deserunt ex.', 906.88, 27, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(85, 'et ut', 'Sint quasi ducimus expedita ratione rerum id unde. Est et ut et excepturi velit quo. Voluptatibus eum veritatis voluptatem nisi ut voluptates incidunt.', 129.01, 44, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(86, 'aliquam aperiam', 'Officia quo dolore et amet tempore. Distinctio aperiam sunt et provident dicta. Illo et id fugiat commodi omnis quia. Vero eius eligendi dolorum quia odio et voluptatibus.', 249.75, 26, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(87, 'voluptatem ut', 'Consequatur quia repellendus doloribus iste tenetur sit aspernatur. Dolor aperiam architecto tempora alias sed possimus culpa. Molestias in pariatur iure accusamus et doloremque vel ex. Nemo illo labore ab dolorem occaecati culpa.', 480.89, 42, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(88, 'aperiam et', 'Qui in ut quas illo. Velit nostrum adipisci quos quam totam et. Ut laboriosam maxime non sit qui sequi qui magnam. Sit nobis iusto eum dolorem eum sint explicabo.', 893.11, 28, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(89, 'repudiandae rerum', 'Cumque cum adipisci maxime iusto. Velit reiciendis quae hic. Numquam quod dolorem aliquid sit sit. Esse quae sint laudantium cum aut animi officia suscipit.', 189.86, 42, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(90, 'porro quia', 'Repudiandae totam ut voluptate laudantium vel ut ratione. Consequuntur quaerat quas voluptatibus amet. Temporibus fugit dolorem sit eos nam qui nihil. Neque et est distinctio impedit labore.', 71.82, 15, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(91, 'dolorem est', 'Nulla sapiente magnam libero quam inventore beatae. Earum ducimus est autem distinctio. Voluptatem quia illo perferendis omnis in numquam quas.', 149.30, 31, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(92, 'non sed', 'Repellat voluptatem et corporis. Sapiente maiores omnis sed accusamus quis et. Quis nemo dolore dolorum quasi qui. Nisi est accusantium tempore laudantium.', 633.35, 13, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(93, 'et ipsam', 'Aut inventore qui earum error rerum explicabo. Sed non voluptates exercitationem molestiae aut. Reprehenderit praesentium ducimus dolores quis rem error. Laudantium soluta at quia voluptatibus eos praesentium. Officia necessitatibus vel molestiae quia facilis consequatur qui.', 705.01, 25, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(94, 'exercitationem suscipit', 'Rerum quo nulla aut consequatur voluptatem. Sunt enim eos nemo eos. Fugiat sed temporibus suscipit excepturi quod architecto est. Maxime harum exercitationem sit maiores.', 225.92, 3, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(95, 'est reprehenderit', 'Est impedit ad rerum quia expedita rem in. Vitae sunt aut in.', 712.13, 17, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(96, 'minus beatae', 'Voluptatem deserunt quia necessitatibus est qui. Ea fugiat at eligendi id consequatur omnis. Magnam ab est tempore autem sint. Minus voluptas ut est omnis saepe dolor.', 509.11, 49, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(97, 'voluptas numquam', 'Est inventore fugiat vitae libero sed ipsum. Qui doloremque reprehenderit et dolores. Et rerum quo velit ex. Veritatis autem eligendi officiis perspiciatis est.', 152.59, 38, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(98, 'est reprehenderit', 'Consectetur tenetur atque debitis facilis omnis omnis cumque. Voluptatem quia repellat ipsum molestias. Possimus qui qui autem eveniet et. Cupiditate a accusamus est a est ut.', 655.28, 50, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(99, 'illo sed', 'Error sit sunt commodi laboriosam. Labore sequi sed voluptas magni deserunt est. Sint cupiditate ut sit minima suscipit architecto animi.', 521.22, 46, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(100, 'beatae consequatur', 'Impedit beatae doloremque voluptatem doloribus necessitatibus mollitia recusandae amet. Sint rerum et officia quas. Minima libero sint sed ut excepturi in dolor.', 75.08, 29, '2025-07-24 05:07:45', '2025-07-24 05:07:45'),
(101, 'numquam corrupti', 'Iusto similique cum quam in. Accusamus laudantium reiciendis repellat nisi voluptas. Consequuntur nemo voluptas excepturi impedit neque molestias. Unde aut molestias eum possimus iste amet ratione.', 387.11, 11, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(102, 'distinctio hic', 'Dolore repudiandae temporibus iure eos in voluptatum. Assumenda dignissimos laborum temporibus natus. Illo ducimus quod exercitationem animi. Eveniet consequatur eum ducimus omnis sunt.', 153.40, 23, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(103, 'quia incidunt', 'Fugit dolorum magnam similique cupiditate dolorem sed nihil. Repellat perferendis nulla et cumque. Fugiat perferendis dolorem aliquid blanditiis et repellat. Et consequatur dolor exercitationem eveniet autem facere ipsa. Et iusto sit molestiae cupiditate aliquam voluptas non.', 758.22, 6, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(104, 'sunt vel', 'Nesciunt omnis aut quam laborum molestias odio laboriosam. Quibusdam quisquam aut cumque. Adipisci porro possimus aliquid.', 893.12, 35, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(105, 'omnis enim', 'Tenetur sunt deleniti officiis rerum. Enim sed exercitationem animi ipsa iusto rerum. In sed aut similique et.', 359.57, 18, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(106, 'quidem quas', 'Architecto deleniti voluptatibus aperiam et quidem quae corrupti. Sunt et optio sunt iure eveniet. Sit numquam velit nisi quis voluptatem qui velit. Iure ipsum natus consequatur hic fugit quam aut.', 649.62, 31, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(107, 'architecto autem', 'Tempora ut est porro. Quibusdam maiores ut dolorem numquam dolore nemo. Porro dolorem quibusdam quisquam et esse.', 749.50, 15, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(108, 'corporis ea', 'Dicta accusantium ullam id qui in quas ea. Aliquid nemo voluptatibus minus quis. Ut voluptatem nisi cupiditate qui veritatis. Odio nesciunt reprehenderit ipsa est repellendus.', 920.65, 5, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(109, 'qui provident', 'Animi debitis expedita aliquam aut fugit delectus. Illo voluptas nostrum quis incidunt atque dicta ullam. Ut velit dolor laborum ut. Et quo sunt consequatur tempora et. Provident suscipit molestias deleniti eligendi quis.', 658.41, 5, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(110, 'explicabo qui', 'Consectetur minus voluptatum consectetur autem ut. Ut sed sequi alias deleniti ipsa. Sed asperiores cupiditate similique accusamus.', 721.12, 11, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(111, 'sequi dolores', 'Blanditiis rerum nulla sint numquam quo nihil impedit. Officia et eaque omnis. Molestiae sapiente voluptas soluta ut. Facilis facere nulla sit soluta.', 540.04, 8, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(112, 'eum culpa', 'Quis dignissimos est assumenda excepturi sed est iste quas. Facere iste ut velit rerum sint reiciendis. Quia tempora ipsa ea. Similique quia velit sunt.', 928.26, 24, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(113, 'expedita placeat', 'Dicta numquam id consectetur quia. Saepe aut molestias quibusdam non ad voluptatem.', 967.28, 41, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(114, 'iusto eaque', 'In quis aut veritatis animi sit. Magni dolorem quisquam qui sint. Suscipit ex et velit repellendus. Doloribus distinctio distinctio voluptatem odit beatae velit.', 83.70, 41, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(115, 'ad voluptatem', 'Eum sed enim dolorem voluptas. Ut esse tenetur minus fuga ut ipsum. Veniam quos laborum tempore aperiam porro. Ratione officia et a sit. Quibusdam placeat qui dolorum ut suscipit doloremque.', 997.74, 26, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(116, 'voluptas sed', 'Consequatur quasi in et ipsam. Repellendus fugit saepe expedita nostrum. Laborum architecto cumque aut qui.', 111.02, 24, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(117, 'voluptatem dignissimos', 'Maiores et et pariatur voluptatum. Quia impedit sint et. Sunt vel qui repellat sit autem. Dolore qui velit qui ut.', 242.37, 14, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(118, 'repellat cum', 'Voluptatem error culpa aliquam nihil qui iure. Vel aperiam delectus cumque earum et. Voluptatum doloremque eos sit aut iusto pariatur. Eaque rerum id error.', 74.72, 14, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(119, 'aliquid rem', 'In non ut perspiciatis dolor ad amet. Minus aut quaerat aut aut odio. Voluptatem consequatur quia perspiciatis.', 95.33, 13, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(120, 'tenetur sint', 'Suscipit ut blanditiis enim tenetur maxime provident delectus necessitatibus. Repudiandae quod ipsum natus perferendis. Et aut optio eveniet est.', 871.63, 13, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(121, 'est eum', 'Rerum rem impedit eaque minus excepturi doloremque ea. Enim velit repudiandae quam ea est. Nobis iste cupiditate veniam.', 161.63, 3, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(122, 'aperiam velit', 'Quia id nesciunt laudantium voluptate commodi et ducimus. Maiores voluptatibus consequuntur et quos. Eum cupiditate in quos est ab quidem. Facilis est eum iure ea velit.', 949.63, 50, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(124, 'delectus voluptas', 'Fuga aut asperiores tempora facilis doloribus. Totam eveniet cupiditate quo reiciendis impedit laboriosam qui placeat. Sapiente eos dolores sit corrupti qui et.', 137.27, 48, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(126, 'totam earum', 'Accusantium cupiditate cum cumque ratione ducimus. Placeat et corrupti quisquam ut similique accusantium. Exercitationem ratione quisquam repellat et quasi alias quisquam dicta. Deserunt distinctio eligendi illum quo.', 650.50, 44, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(127, 'dolores aspernatur', 'Labore voluptate consequatur voluptas voluptatem qui qui. Beatae et similique id saepe fugit. Ut non vel suscipit veniam accusantium. Sit commodi dolorum blanditiis omnis veritatis necessitatibus.', 567.03, 49, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(128, 'doloribus consequatur', 'Excepturi cumque laborum repellat nobis dicta tempora dolor. Commodi possimus pariatur ipsam. Nobis expedita nesciunt dicta nemo autem. A sequi et fugit illo.', 894.02, 40, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(129, 'ut nostrum', 'Alias commodi exercitationem animi voluptates magni. Recusandae sed quia a rerum odio consequuntur. Eaque voluptatibus vel blanditiis aut. Beatae suscipit alias unde qui.', 377.74, 8, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(130, 'sit et', 'Rem modi et magni velit rerum error quibusdam. Ab numquam autem id dolorem eos. Eum consectetur et vel quis ullam aut ut. Nisi expedita voluptatum incidunt quia sed maxime.', 503.92, 22, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(131, 'aut tenetur', 'Illo non sit nemo voluptatem sit qui. Et exercitationem ullam ducimus cupiditate pariatur praesentium error voluptatem. Labore veritatis et voluptates.', 913.72, 25, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(132, 'dolores omnis', 'Doloremque quos sapiente voluptas est necessitatibus. Amet reprehenderit rerum sint exercitationem est. Hic consequatur iusto eligendi at aut non ut. Dolorum omnis magni est molestias.', 40.66, 41, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(133, 'ut maiores', 'Sed unde et occaecati maxime eos. In et corrupti consequuntur dolorem maiores eos. Repellendus deleniti cupiditate perspiciatis architecto. Consequatur omnis error sed earum aut esse dolorem. Rem pariatur quod non quo officiis voluptas quo.', 93.87, 42, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(134, 'tenetur doloremque', 'Ut dolor nihil est consequuntur quia. Minus quia qui voluptatem est rem esse porro. Labore quia tempore repudiandae quas eos.', 56.61, 39, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(135, 'exercitationem qui', 'Quasi doloribus aut placeat est consequuntur. Illo repellat ut rerum molestiae ipsa perspiciatis eos qui. Quam voluptates quis occaecati blanditiis laborum est et.', 822.85, 42, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(136, 'quo consequuntur', 'Voluptate beatae aperiam voluptas qui non totam. Adipisci dolores ab nulla vitae. Rerum dignissimos qui est. Blanditiis beatae enim voluptatem ducimus.', 336.82, 26, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(137, 'modi ut', 'Cum ipsa autem minus quia error quam est. Enim consequatur quasi dolor reprehenderit quia ea unde. Aut neque dolor ea tempora eum magnam enim sed. Iure magni consequatur alias dolor numquam dolorum quidem minima.', 565.73, 43, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(138, 'eligendi sequi', 'Occaecati nihil aliquam cumque sit. Quo nihil asperiores praesentium tenetur consequuntur voluptatem qui. Exercitationem impedit consequatur fugit id hic sint voluptatem. Amet esse quia repellat assumenda.', 409.19, 47, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(139, 'ut consectetur', 'Dolor natus excepturi eveniet nulla non omnis perspiciatis voluptatem. Repellat qui et a consequatur est quidem eveniet. Molestiae velit minima qui iste vitae.', 480.04, 48, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(140, 'id ut', 'Est non et enim qui sint ea ea. Deleniti ea quo et reprehenderit incidunt quo illo.', 420.37, 4, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(141, 'sit pariatur', 'Consequuntur minus eveniet quis veritatis voluptas autem. Provident mollitia libero asperiores repellendus officia odio. Illum officiis ut pariatur quia a. Delectus eligendi modi fugit nulla excepturi.', 591.24, 28, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(142, 'et ipsa', 'Nemo ad voluptatem omnis voluptas perferendis pariatur odio. Dolorum quos enim optio odio. Ab eum aspernatur in porro natus ipsam et.', 972.02, 41, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(143, 'quam quo', 'Dolorum necessitatibus nam voluptatibus neque eum consequuntur. Quia molestiae unde et animi. Id libero facere aut at ab ipsam qui qui. In id enim et alias maiores. At consequatur reiciendis ut nam dolorem magnam.', 140.81, 4, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(144, 'sed hic', 'Aperiam sunt natus ex aut eum veritatis. Ut magnam ab qui assumenda. Vitae aut eaque et consequatur accusamus cum.', 410.36, 8, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(146, 'hic corporis', 'Consectetur consequuntur accusantium at. Molestiae et soluta impedit asperiores. In dolorum quam sint veniam. Et voluptatibus ipsa veniam sed.', 216.77, 2, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(147, 'minima cum', 'Deleniti ducimus dolorum perspiciatis hic. Omnis voluptatem delectus voluptatem occaecati sunt. A et inventore non dolorum.', 297.93, 15, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(148, 'voluptas iusto', 'Aspernatur suscipit et et laudantium accusamus natus. Incidunt vel dolore eligendi voluptas consequatur sed enim repellendus.', 274.90, 18, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(149, 'qui natus', 'Et voluptatem sit ut velit perspiciatis dolores. Quibusdam mollitia assumenda nobis a dolor. Et sunt commodi minus et voluptates cupiditate. Iste dignissimos suscipit provident voluptas debitis beatae voluptatem atque.', 267.44, 35, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(150, 'quisquam odit', 'Eos ipsa nesciunt totam deleniti dolore fugiat. Atque qui quis quaerat rerum sit ipsa aut. Quasi et ut laborum quod voluptas.', 278.14, 2, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(151, 'sapiente fuga', 'Aut doloribus velit consequuntur. Amet pariatur ex ut. Similique accusantium temporibus repellendus praesentium reprehenderit eveniet impedit officia. Aliquid eum repellat recusandae ipsum voluptatum vel. Tenetur nesciunt ea quis sequi et perferendis.', 261.98, 40, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(152, 'non architecto', 'Pariatur commodi minima velit molestiae fugit corrupti molestiae. Beatae qui vitae voluptates alias fuga magni similique eveniet. Distinctio et sequi qui sequi exercitationem totam. Eligendi et rerum provident ipsum. Repudiandae deleniti et debitis nesciunt.', 601.58, 37, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(153, 'corporis alias', 'Adipisci molestias quasi minus at est magnam blanditiis. Rerum repudiandae recusandae similique hic quasi dolor quasi. Inventore doloribus aut nostrum eaque sit velit.', 309.79, 17, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(154, 'dolore sequi', 'Recusandae aut maxime reprehenderit ut eum ut voluptas. Occaecati saepe est veniam et quia ut et pariatur. Qui quia dignissimos facere tempora molestias alias.', 14.16, 33, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(155, 'laborum maiores', 'Molestiae autem et soluta autem ut iusto. Qui dolorum nihil dolorem quidem sed repudiandae. Enim fuga neque sed rerum in. Maxime et nisi hic consequatur laboriosam itaque.', 999.35, 25, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(156, 'natus suscipit', 'Qui et fuga quos voluptatum et corrupti. Ipsa non quasi enim alias error non.', 338.13, 31, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(157, 'ex magnam', 'Ad illo et ullam sit error quam exercitationem. Qui molestiae reprehenderit voluptates quibusdam maiores. Qui tempore esse quia qui et.', 444.47, 31, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(158, 'iure recusandae', 'Ratione rerum quibusdam ex quibusdam et voluptas natus. Voluptas similique quasi corrupti nihil ut qui nulla. Et sit quidem voluptate deleniti sunt cupiditate.', 91.15, 19, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(159, 'qui aut', 'Et laboriosam consequuntur ad. Ut repudiandae quibusdam ducimus explicabo deserunt optio. Facilis ut ipsam culpa ut accusantium.', 73.29, 38, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(160, 'laudantium tenetur', 'Aut quia hic voluptas aspernatur maiores quia. A ut quos nihil adipisci. Molestias sunt voluptatem laboriosam autem sit. Doloribus soluta quam eius sit magni aut.', 686.96, 21, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(161, 'facilis cupiditate', 'Qui ratione et qui. Velit praesentium laudantium similique cupiditate. Maiores omnis illo quis reprehenderit nihil. Delectus aut quis molestiae quaerat nihil. Praesentium aut nisi est vel sequi esse ea aliquid.', 385.96, 32, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(162, 'quis accusamus', 'Culpa voluptatem cum voluptas illo magnam animi. Quasi est minus totam libero. Velit dignissimos aut dignissimos quo.', 831.78, 42, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(163, 'blanditiis similique', 'Quisquam ad qui odit sint nulla. Dolores aliquid sit eaque quidem perferendis aliquam porro. Temporibus mollitia similique quo dolores fugiat.', 703.61, 44, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(164, 'maiores itaque', 'Earum repudiandae blanditiis odio numquam. Optio voluptatibus culpa voluptatem illo ab ipsa. Aut neque consequatur et quia sunt. Labore est qui soluta et dolores eligendi iste harum.', 691.13, 45, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(166, 'tempore dignissimos', 'Aut id aut rerum harum explicabo id qui. Aspernatur aut quos omnis nihil qui. Sed ratione tempora culpa.', 146.97, 41, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(167, 'aut et', 'Nostrum quod eligendi totam voluptatibus sit. Aliquid tenetur illo quia facilis laborum voluptas molestias. Nihil enim dicta ut qui perferendis.', 515.01, 38, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(168, 'consequatur unde', 'Deleniti dolorum eaque odit consectetur nihil nam minima atque. Suscipit iusto voluptas quos nisi enim quia. Temporibus dolorem minima molestiae sunt quae repellendus.', 237.95, 3, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(169, 'quis in', 'Voluptatem aperiam aliquam libero. Exercitationem similique eveniet necessitatibus. Et tempore cum repellendus possimus nostrum minima nulla. Dolor qui quae in in quia aut atque. Quasi laboriosam aut possimus aut nam quisquam.', 439.34, 25, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(170, 'dolor sunt', 'Consequatur omnis quidem illo esse quasi ratione. Vel expedita esse ullam enim. Delectus ipsum nulla saepe quia.', 725.62, 13, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(171, 'est sunt', 'Modi id quam corrupti odio vel. Cumque ea exercitationem occaecati illo ea. Reiciendis odit corporis ut beatae et unde. Sed doloremque ullam quaerat itaque.', 716.60, 48, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(172, 'ratione possimus', 'Molestiae exercitationem est aperiam amet. Repellendus vitae impedit asperiores necessitatibus. Sequi repellat magnam quisquam quia voluptatem dolores.', 789.44, 19, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(173, 'consequatur quis', 'Aliquam quisquam deleniti optio a. Adipisci sequi minus voluptatem ea. Eos omnis odit praesentium vero dolor nostrum excepturi corrupti. Ea sunt odit ipsam alias cupiditate quod molestiae.', 40.60, 24, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(174, 'dicta ut', 'Nihil quibusdam est beatae voluptate. Eligendi voluptas et voluptas alias velit excepturi.', 93.89, 6, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(175, 'ex ad', 'Aspernatur ut nihil velit facilis. Molestiae asperiores consequatur repudiandae est voluptatem facilis quisquam. Soluta harum necessitatibus unde qui in quo labore tempora. Et eius neque magnam.', 668.10, 35, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(176, 'dolore beatae', 'Aperiam error inventore officiis rem omnis quidem error. Autem earum ab rerum ut et. At ab impedit non ea aliquid.', 784.35, 49, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(177, 'labore est', 'Porro dolorem nostrum rem quo pariatur vitae qui. Cum nemo possimus dignissimos.', 908.79, 50, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(178, 'quia ut', 'Nobis temporibus accusantium cumque blanditiis accusantium dolore. Magnam consequatur autem harum et. Eos ea repellendus labore.', 894.65, 6, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(179, 'sapiente magni', 'Quisquam rerum sit rem quibusdam maiores harum. Voluptas autem rerum et autem sunt voluptas voluptate. Quasi enim aut quas eum sequi provident in. Harum voluptate enim corporis et fugiat a aut repudiandae.', 936.50, 42, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(180, 'atque expedita', 'Qui et doloremque sapiente vel repudiandae. Quo ut voluptates eos magnam debitis eum. Optio natus porro nihil officiis velit.', 229.56, 45, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(181, 'ut asperiores', 'Impedit natus et dolores dolorem. Iusto quis vitae perferendis enim autem. Excepturi omnis facilis adipisci nisi qui.', 99.68, 38, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(183, 'perferendis occaecati', 'Vitae id laboriosam est ullam. Aut explicabo exercitationem ut eos officiis molestias molestias commodi. Consequatur qui est rem reiciendis ab error sint. Natus voluptatem voluptate provident assumenda sunt eum consectetur id.', 16.12, 34, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(184, 'ut ullam', 'Quam neque enim ipsum ex quis adipisci. Quod accusamus aut maiores saepe sint atque tenetur. Rem corrupti unde libero voluptatem enim. Iste a ea sed provident explicabo id.', 75.78, 25, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(185, 'sit voluptate', 'Quis aliquid vel culpa. Dolor sed explicabo aliquam ut pariatur qui ea incidunt. Alias corporis quaerat omnis est sunt voluptas. Inventore perspiciatis consequuntur omnis accusantium asperiores.', 110.36, 29, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(186, 'omnis est', 'At occaecati aut perferendis veritatis. Nihil molestias quia possimus impedit non et.', 292.97, 36, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(188, 'temporibus dolore', 'Repellat in sit distinctio doloremque atque eveniet officiis ut. Ipsum velit et et beatae neque saepe. Numquam aliquam a omnis iure fugit quam voluptas et. Ipsam delectus consequuntur modi alias dolorem.', 32.94, 42, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(189, 'et inventore', 'Est ex corporis sapiente nisi. Velit vero id neque animi error eum.', 114.41, 50, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(191, 'quas voluptatem', 'Fuga mollitia magnam beatae hic nostrum. Doloremque ad maxime quia reprehenderit praesentium et id. Consequatur dolorem voluptatem nostrum.', 493.17, 20, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(192, 'ullam quis', 'Qui et vitae est occaecati id pariatur facere. Mollitia veniam et totam amet in voluptas iste. Corporis dignissimos fuga nisi accusantium laborum.', 937.22, 36, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(193, 'qui provident', 'Amet molestiae molestiae doloremque consequatur consequatur nobis. Aut velit commodi nobis in ab omnis. Vitae sint minus quibusdam reiciendis sunt nulla quasi voluptatem.', 832.20, 14, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(194, 'dolor corrupti', 'Omnis culpa illum voluptas cupiditate. Impedit nihil sapiente fugiat saepe nemo.', 932.02, 46, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(196, 'quasi rerum', 'Corporis pariatur architecto impedit ea quia. Est omnis magnam omnis accusantium aliquam vel. Occaecati debitis qui ut praesentium eligendi maxime. Consequuntur debitis itaque aut est sint voluptatibus sunt. Fuga quos ipsam ut possimus molestias rerum.', 315.28, 28, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(197, 'rerum non', 'Labore repellendus voluptatem enim vero in. Hic aspernatur voluptatem molestiae et ullam expedita ut repudiandae. At dolore sed nihil sed voluptas quaerat rerum possimus.', 709.45, 15, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(198, 'voluptatem dolores', 'Reprehenderit sint autem molestiae necessitatibus saepe et excepturi. Sunt voluptatem tenetur assumenda blanditiis. Autem ratione vel consectetur fugit earum. Amet consequuntur labore earum omnis optio reiciendis magnam.', 238.90, 24, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(199, 'veritatis quia', 'Soluta nihil dignissimos sed quia ipsam aut. Impedit non ab sint qui dolor nihil. Alias molestias deserunt qui iusto odio enim quasi quidem. Aut repellendus nam optio.', 648.80, 3, '2025-07-24 05:07:51', '2025-07-24 05:07:51'),
(200, 'minima nobis', 'Autem nam earum quod est error. Blanditiis ullam quas reprehenderit iusto non cupiditate vel. Porro qui animi nulla sit magni eius.', 569.16, 24, '2025-07-24 05:07:51', '2025-07-24 05:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JmWaFexsdmoKoxZ0laleVGrKN27EINjGffM8i2bc', 22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMWRzTUdESGxOMjY1UlJXb1hPVFl1a0hWUUUwUjI3cXZvZ1NOblhYWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIyO30=', 1753362364),
('rDiB03Rk91ID2NnmvMw8SvrleSjWHAlpEgpvLtbV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlBSZ2hOTjVFZWlVaEZjcnk1dXRtZ09HYUlhODNoUWk4bVQ5V0R0VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1753362337),
('SwMUnyf2BIYDrB83iNUGejiDtdmso7zKgbo8dSjz', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoic1I1ZTFjYzEyeVkyQlRsM0pvVFdDWUU1SU5odEZGTjJWN2s3bW5FcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE7fQ==', 1753359783);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_mobile_no` varchar(255) DEFAULT NULL,
  `user_type` enum('admin','user','employee') NOT NULL DEFAULT 'user',
  `user_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=Inactive, 1=Active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `activation_token` varchar(255) DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parent_user_id`, `name`, `email`, `user_mobile_no`, `user_type`, `user_status`, `email_verified_at`, `password`, `remember_token`, `activation_token`, `is_activated`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@gmail.com', NULL, 'admin', '0', '2025-07-24 07:06:44', '$2y$12$AUXsaKyRg70fW/AvsDk7qe2Mjfi552aRBXs5jgxhshQGOa1ihYo1K', NULL, NULL, 0, '2025-07-24 03:32:31', '2025-07-24 07:06:44'),
(2, NULL, 'asdasd', 'sdsaas@gmail.com', '123121232133', 'admin', '0', NULL, '$2y$12$rK0VDXcEOHtKc12U/hSt6OzyNWSaM8KTE2PurhNwESIXVOIyXSI4S', NULL, NULL, 0, '2025-07-24 04:15:40', '2025-07-24 06:21:28'),
(4, NULL, 'asdasd', 'asdsadadsa@gmail.com', '321321321312', 'user', '0', NULL, '$2y$12$GVD/BcfJ506xuNxhAPsKIOJ1bOY8KvVPQosJa/zNzf0hGjyBrgZzK', NULL, NULL, 0, '2025-07-24 04:30:45', '2025-07-24 04:30:56'),
(7, NULL, 'employee', 'employee@gmail.com', NULL, 'employee', '0', NULL, '$2y$12$YfopyHWcwEEq/dsrLlwfFugzTVMZvxnnVISM05c/IBZk/I9Fi/rE2', NULL, NULL, 0, '2025-07-24 05:47:42', '2025-07-24 05:47:42'),
(8, NULL, 'user', 'user@gmail.com', NULL, 'user', '0', NULL, '$2y$12$ho5r3sOzQ5QUdVo8I9enmONlkuDc1cbeaSMG/YZQf.6sTDntoLCBi', NULL, NULL, 0, '2025-07-24 05:49:48', '2025-07-24 05:49:48'),
(9, 4, 'asdsad', 'dasd@gmail.com', '132132133131', 'employee', '1', NULL, '$2y$12$YU6vH3ntStdwCrWbrp6SK.8lBDAzqHt3UkWSWK1FVsyjm2AlRpJjy', NULL, NULL, 0, '2025-07-24 06:37:31', '2025-07-24 07:31:59'),
(10, 7, 'asdsad', 'asdasd@asdsad.asdsa', '324324233224', 'user', '0', NULL, '$2y$12$ocTx1n1bGv2/r0QthBslRePrlg2CS9Q67Y9mN9ZbZXTNnrViYjNb2', NULL, NULL, 0, '2025-07-24 06:38:13', '2025-07-24 06:38:13'),
(11, NULL, 'asdsada', 'dasssssd@yopmail.com', NULL, 'user', '0', NULL, '$2y$12$qg6w77a24Hq0AyDtoJayneqKiNVSUP2L7mi0d0ZnLXq/1XxIsEDAO', NULL, NULL, 0, '2025-07-24 06:53:02', '2025-07-24 06:53:02'),
(12, NULL, 'asdsad', 'dasasdsadd@gmail.com', NULL, 'user', '0', NULL, '$2y$12$KnRYmKorVsJA6CoSrSLjdeEVsAtQCxKIagIMwhYG/S7j8q2NqIeWi', NULL, NULL, 0, '2025-07-24 06:53:49', '2025-07-24 06:53:49'),
(13, NULL, 'asdsad', 'test-eo7cbl8ob@srv1.mail-tester.com', NULL, 'user', '0', NULL, '$2y$12$oI455svL8StIKNsCuEUnHury5aBlmmMCvGxMu7/ET6Z.AzQ5hsRf.', NULL, NULL, 0, '2025-07-24 06:58:52', '2025-07-24 06:58:52'),
(14, NULL, 'admin', 'nebih43867@kissgy.com', NULL, 'user', '0', NULL, '$2y$12$GOCpvRnc.AjZ6Q7GLoIeGexcJ/JkvMOyjkj25Mu.6e1iKG7mg5h06', NULL, NULL, 0, '2025-07-24 07:01:11', '2025-07-24 07:01:11'),
(15, NULL, 'sadsa', 'ankitad2103@gmail.com', NULL, 'user', '0', '2025-07-24 07:05:37', '$2y$12$f5R1HChjq3QcmDaLhgmQfelbkTUN5lm6yqN7See4kYzf8A5ARivHi', NULL, NULL, 0, '2025-07-24 07:03:10', '2025-07-24 07:05:37'),
(16, NULL, 'admin', 'superadmin@gmail.com', NULL, 'user', '0', NULL, '$2y$12$z0HF8kl4/g5BiPYYVfGmKub8KLWmXCd28GmImNCsxem0cFhFh55MS', NULL, NULL, 0, '2025-07-24 07:13:34', '2025-07-24 07:13:34'),
(17, NULL, 'user11', 'user15@gmail.com', '787888787888', 'user', '1', NULL, '$2y$12$xHpHhhqCHFD0NRNqQ3qQA.VxSYlqU.nS0D/0uFVcy3ukf8oK2/nGu', NULL, NULL, 0, '2025-07-24 07:14:49', '2025-07-24 07:21:39'),
(18, NULL, 'asdasd', 'asdsada@gmail.com', '213213213123', 'user', '1', NULL, '$2y$12$hKncbOvtvVPyTRCwMnIZq..uEk5WiSGkyT59LBCw0RmCDyvSfjj2i', NULL, NULL, 0, '2025-07-24 07:22:56', '2025-07-24 07:22:56'),
(19, NULL, 'asdsad', 'asdsadaas@gmail.com', '123213213211', 'user', '1', NULL, '$2y$12$F9oEqWIiQ4/dinkaPEDjmeEj1ih0mCRJ2nQjaZk23mDGXPSbakDI.', NULL, NULL, 0, '2025-07-24 07:24:10', '2025-07-24 07:24:10'),
(20, NULL, 'asdasds', 'asdsadasa@gmail.com', '332131133213', 'user', '1', NULL, '$2y$12$OgI1OdqMvGECKT/G03w44uN4lZTsHDiC.BP4HxYEgkIbznIEFObZq', NULL, NULL, 0, '2025-07-24 07:25:50', '2025-07-24 07:25:50'),
(21, NULL, 'asdasd', 'Adminasdasd@gmail.com', '234432443243', 'user', '1', '2025-07-24 07:26:52', '$2y$12$mKBEYRwfmzHax2K6K8ztfObd8zuf9L1qYZo5SKrag47TSrJ9My/tu', NULL, NULL, 0, '2025-07-24 07:26:52', '2025-07-24 07:27:42'),
(22, 7, 'asdsadsa', 'admsadasdan@gmail.com', '123213213211', 'employee', '0', '2025-07-24 07:28:52', '$2y$12$JF5g2oJI0.cCzGOQVWAVY.4FT2fCt1.RRJ/a3DOkaMnutmqKnbD9e', NULL, NULL, 0, '2025-07-24 07:28:52', '2025-07-24 07:28:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_parent_user_id_foreign` (`parent_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_parent_user_id_foreign` FOREIGN KEY (`parent_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
