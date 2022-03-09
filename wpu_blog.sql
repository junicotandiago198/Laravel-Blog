-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 05:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2021-11-12 01:07:47', '2021-11-12 01:07:47'),
(2, 'Personal', 'personal', '2021-11-12 01:07:47', '2021-11-18 20:04:21'),
(3, 'Desainer', 'desainer', '2021-11-13 00:45:49', '2021-11-13 00:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_04_031637_create_posts_table', 1),
(6, '2021_11_04_053703_create_categories_table', 1),
(7, '2021_11_13_065849_add_is__admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Et vel.', 'eaque-cupiditate-rerum-dolore-dolores-voluptatibus', NULL, 'Alias asperiores iste impedit aut voluptatibus blanditiis. Sunt neque eum ullam sed tempora. Dolorem quas aut voluptatum omnis.', '<p>Possimus laboriosam aut incidunt error qui eaque. Necessitatibus dignissimos quia ullam voluptas officiis et. Qui id exercitationem velit voluptatem et. Dicta excepturi ut tenetur culpa aut numquam.</p><p>Eaque culpa repellat consectetur quod. Dolorem dolor magnam ut est eos delectus voluptates.</p><p>Vero rem unde corporis. Quia quia quae voluptatem qui est dolores. Delectus nisi quis laboriosam sed ut consequatur aliquid.</p><p>Debitis harum quo fuga ipsum. Sunt facilis aut placeat et molestiae. Veniam iste facere repudiandae harum voluptate eos. Ipsum nobis consectetur et consequatur omnis ut est quod.</p><p>Eum voluptas distinctio eligendi. Illo cumque minus est illo est amet. Aut et quasi nemo qui. Labore quo dolore repellendus reiciendis pariatur. Debitis reprehenderit omnis voluptas voluptates sed.</p><p>Molestias debitis consequatur est ut velit nemo. Odit distinctio autem ex odio aperiam natus et. Fugit ipsum libero aut cum accusantium aut. Aut ipsam veniam aliquid iste qui voluptatem.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(3, 2, 3, 'Debitis minima commodi.', 'aliquid-quisquam-aut-recusandae-libero-similique-qui-explicabo-doloribus', NULL, 'Qui sint dolor adipisci ab at commodi quod. Est iure cum odit. Qui quisquam id qui sit et saepe.', '<p>Et aut voluptate eaque aut qui temporibus officiis. Tenetur sit fuga nemo quo. Molestiae incidunt est dolores.</p><p>Quia autem eveniet ex aut illo. Recusandae corporis est aut est molestias. Et accusantium perferendis blanditiis dolores.</p><p>Nihil fuga nobis aspernatur hic nam consequatur. Dignissimos amet officiis provident. Dicta ipsum beatae exercitationem nihil architecto quaerat.</p><p>Quod explicabo qui sed accusamus libero recusandae nulla. Sit inventore molestiae quisquam magnam omnis. Officiis et libero nemo quia. Ab alias repellat sequi molestiae quaerat odio ducimus amet.</p><p>Quos nemo qui at voluptatem. Perferendis itaque atque non quis assumenda. Id vel ipsum nam at perspiciatis.</p><p>Fugiat cupiditate veritatis et aut in. In atque voluptatibus eos aut aperiam reprehenderit velit. Et quaerat aut id tempora qui.</p><p>Voluptatem sit commodi maxime quasi nostrum. Optio facilis inventore debitis velit. Rerum aut est fugit totam ab aliquid. Sed iure perspiciatis exercitationem quis est explicabo voluptatibus. Cupiditate vel hic odio consectetur.</p><p>Tempore doloremque minima exercitationem nobis animi voluptatem ut voluptatem. Qui consequatur eveniet velit ipsam numquam et molestias. Suscipit repellat architecto voluptatem eaque.</p><p>Esse maxime deleniti aut sit natus qui. Omnis quidem voluptas esse reprehenderit voluptatibus. Rerum maiores enim provident id earum omnis.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(4, 2, 3, 'Veritatis magnam incidunt quidem et qui cupiditate.', 'non-accusantium-cum-enim-error-quae', NULL, 'Excepturi officiis maiores eius accusamus impedit error. Asperiores dolorem autem exercitationem minima sed ut. Recusandae ea non earum culpa.', '<p>Omnis tempore occaecati et cum. Fuga ea id molestias sed aperiam. Dolore quidem iusto nisi ipsum magni.</p><p>Sit doloribus sit eos. Sequi praesentium ut dolores est et.</p><p>Veritatis tempora ratione consequatur reprehenderit est. Id sit placeat vel dolorem quia nesciunt temporibus. Quam dolorum mollitia quia sit earum eaque cupiditate assumenda. Qui ut nihil esse sed incidunt quo.</p><p>Laboriosam veritatis exercitationem repellat. Qui est magnam optio quia autem sint. A quia nam quia perferendis omnis atque.</p><p>Doloribus dolores dolore porro amet inventore ab. In commodi libero corrupti est veritatis. Enim sint nisi dolorum atque ea ratione et quisquam. Quas quas sint distinctio ipsa ea aut.</p><p>Corrupti illo ducimus fugit dolor architecto. Adipisci sit reprehenderit est voluptatibus et iusto laborum.</p><p>Qui ducimus voluptatem tempora assumenda voluptatem ducimus dignissimos et. Qui blanditiis eligendi dolorem perspiciatis nam excepturi ipsa.</p><p>Autem ipsam praesentium voluptas veritatis ut cum aut. Aut architecto suscipit necessitatibus adipisci nihil debitis dolor. Facilis ab alias magni perferendis.</p><p>Ex adipisci voluptatem nostrum. Pariatur corporis est praesentium non fugit quae facere. Ut eveniet rerum qui eum. Delectus voluptatibus ea cum.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(5, 2, 2, 'Dolores qui minima fugiat libero expedita eos repudiandae temporibus.', 'dolor-quas-veritatis-magnam-et-aut-autem-aspernatur', NULL, 'Iusto inventore rerum doloremque ipsa omnis. Ut nemo totam non eius soluta. Reprehenderit facilis fuga reprehenderit nostrum at ab cupiditate. Placeat id dolores illo quaerat. Exercitationem aut aut possimus nesciunt dolores.', '<p>Est voluptatem quasi culpa animi ab. Minus laboriosam amet excepturi consequuntur dicta voluptatem. Aut debitis magnam velit adipisci.</p><p>Vel ratione accusamus impedit doloremque occaecati maiores. Qui est et tenetur ut magni vel. Dolor quia eveniet velit qui accusantium suscipit. Rerum sed error animi accusamus aut.</p><p>Explicabo tenetur enim consectetur ut voluptas. Iure maxime et rerum totam. Veniam et dolorum nihil voluptatem natus facilis quod.</p><p>Modi nemo eos aut. Totam non nam cumque rerum. Ea possimus doloremque et quia est.</p><p>Fugiat est ab quae harum esse et voluptatem commodi. Ut rerum aut quis laboriosam laudantium qui perspiciatis. Dolor quam modi repudiandae. Est eos explicabo eos et est molestias et.</p><p>In iusto officia adipisci accusamus deserunt eum. Consequatur facilis aut id officia.</p><p>Sed magnam doloremque eos quas aspernatur aliquid. Quas pariatur iure vel doloribus at velit sequi aut.</p><p>Iusto perspiciatis libero sed est vel voluptatum. Facere asperiores occaecati placeat qui ut quis. Quia omnis fugit dignissimos qui et voluptate. Optio rerum sunt impedit molestiae nesciunt porro.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(6, 1, 1, 'In est omnis nihil veniam consectetur exercitationem commodi.', 'quis-sint-aut-distinctio-ratione-fuga-expedita-quas', NULL, 'Pariatur sapiente ut iste blanditiis velit perspiciatis rerum vitae. Eos maxime rerum asperiores libero natus neque ex. Consequatur magni voluptatem ratione voluptatum esse.', '<p>Aut expedita optio ducimus voluptas aut totam autem. Cum incidunt enim praesentium nobis. Sit optio sit amet cumque. Dolores expedita consequatur nobis culpa quaerat non.</p><p>Enim maxime voluptatem vitae autem iure ut. Corporis explicabo quia ab. Odio nihil sint excepturi.</p><p>Quo dolorum doloribus illum earum necessitatibus. Officia deserunt amet numquam distinctio perspiciatis sunt similique.</p><p>Ratione omnis temporibus repellat enim. Quis possimus in numquam dignissimos est. Natus id aspernatur odit omnis voluptatem sapiente.</p><p>Maiores vel doloribus consequuntur fugiat voluptatem. Laborum nemo est dolorem autem adipisci. Molestias earum omnis odit aliquam rerum.</p><p>Modi natus possimus ratione quo. Rerum non quas qui eos nulla. Maiores qui voluptas est et. Omnis impedit facere ut odio.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(7, 2, 1, 'Minima quasi ipsum dolor ut impedit molestias.', 'occaecati-et-blanditiis-consequatur-aut-inventore', NULL, 'Ut ex quod consequuntur. Aliquam saepe maiores facilis eveniet non. Adipisci temporibus quae autem.', '<p>Commodi commodi voluptatem qui quibusdam tempora. Natus sunt assumenda dolorem. Et aliquid nostrum et hic neque. Aut eligendi mollitia saepe accusantium suscipit.</p><p>Nihil hic voluptatem est et illum dolores dolores. Expedita qui autem distinctio earum tenetur porro porro. Id quia et odio voluptatibus. Qui ut facere nesciunt ex culpa consequatur aut repellendus.</p><p>Sequi quae at quos et. Ipsa harum quo est est a veniam placeat fugit. Neque iste perferendis perspiciatis enim voluptates. Saepe laborum facere et.</p><p>Iste voluptas eos perspiciatis. Voluptate minus ducimus placeat. Beatae earum expedita consequuntur possimus.</p><p>Molestiae quo sit libero voluptatibus. Officiis voluptatem et laborum placeat. Sunt nobis quasi voluptatem ab sint doloremque. Facere consequatur magnam nisi eum placeat.</p><p>Asperiores quae ut modi minus aut ut delectus. Voluptatum quas eligendi accusantium quidem aliquid quidem. Dicta qui sapiente beatae cupiditate quasi. Reprehenderit praesentium saepe est.</p><p>Repellat aut quasi dolore qui eligendi quia impedit. Laudantium molestiae pariatur aut a sint illum. Mollitia necessitatibus quaerat tempora consectetur doloremque. Quia dignissimos non ut laudantium ullam necessitatibus.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(8, 2, 3, 'Quo unde tempore nam.', 'eligendi-sit-fuga-in-illum-non-quis-et-sit', NULL, 'Sunt accusamus quia impedit praesentium qui harum ea. Distinctio quia consequatur et aut commodi alias enim. Sed voluptas in ut est. Quos consequuntur neque omnis laboriosam.', '<p>Sint sit molestiae enim illum. Id dolorem eius rerum et et eligendi quisquam nesciunt. Sit necessitatibus molestiae ea nulla. Nisi officiis nihil a quam quam.</p><p>Eum nihil hic fuga necessitatibus. Ducimus consectetur quis provident aut. Laudantium maxime aut ut maiores dolorum. Placeat excepturi minima impedit et explicabo vel vitae.</p><p>Rerum et sed voluptates consequuntur voluptatem repellat illum. Aut expedita molestiae non dolore quis et autem. Rem ullam enim ut impedit deleniti. Dignissimos vel iusto recusandae eum.</p><p>Consequuntur qui neque culpa. In aperiam in labore exercitationem excepturi. Ut et earum vero et.</p><p>Voluptatem alias enim rem voluptatibus accusamus tenetur nisi. Voluptatem nam optio placeat ex. Odio sunt qui et quo voluptatem blanditiis. Tempora ea iusto aut tempora quia est soluta ad.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(9, 2, 2, 'Nobis ex quia.', 'laboriosam-omnis-asperiores-tempore-itaque-est-provident-maiores-quasi', NULL, 'Cum nulla quisquam rerum omnis sed accusantium soluta. Nam omnis quaerat non facere odit. Nihil molestiae commodi molestias et consequatur.', '<p>Nihil sed vel repellat sapiente incidunt deleniti quasi est. Ratione in ad neque sed nihil perspiciatis cum. Reprehenderit rerum tempore et sit cumque fugiat.</p><p>Minima qui corporis illo ut quam est esse reprehenderit. Quo est fuga ducimus quia molestias itaque. Corrupti sit id qui tempore est. Accusantium eum voluptatem earum odio non.</p><p>Dignissimos sed et id consectetur sed odit fugiat. Sapiente repellat et nam quae quas eos temporibus. Similique eaque neque maiores et nemo adipisci et.</p><p>Est officiis molestiae sunt eveniet veniam quis. Sit explicabo earum similique nam delectus neque cupiditate quod. Sed cupiditate ut quia doloremque et dolores quis quas.</p><p>Nesciunt sit aliquam voluptatem sequi id vel. Corrupti sit ipsa enim quia et in odit eligendi. Voluptatem consequatur aliquam exercitationem totam. Voluptates rerum et nemo odit quia repudiandae dolores tempore. Aut odio velit sint aperiam pariatur ut ab.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(10, 1, 3, 'Nobis voluptas repellat aliquam qui.', 'itaque-ut-earum-ipsa-et-dolor-quos-ut', NULL, 'Mollitia animi assumenda laborum sed consequuntur odio nesciunt. Rerum consequatur illum aliquid ut. A labore dignissimos itaque enim fugiat vitae.', '<p>Voluptatem ratione quis aut et quibusdam omnis officiis. In aut aut nihil ducimus inventore. Placeat in impedit ut voluptatem dolores a accusantium dolor.</p><p>Provident ut tempora ducimus est et maiores est libero. Eum minima omnis officiis consequuntur. Et illum fuga esse dolorem voluptatem similique.</p><p>Laudantium minima illum fugit et nihil. Asperiores sit iusto eligendi sed similique libero placeat. Autem voluptatem et veritatis dolorem fuga.</p><p>Vel ut et autem totam. Labore assumenda et fugit est rem doloribus unde. Dolorem ut inventore qui molestiae. Suscipit optio expedita enim dolor.</p><p>Inventore odit temporibus quae dolore et. Provident optio quas consequuntur ut in et beatae. Et libero consequatur illum vitae eveniet debitis nihil. Dolores dignissimos dolor dolorum aut vitae voluptates.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(11, 2, 3, 'Reprehenderit et dolorem.', 'quo-labore-tenetur-repudiandae-molestiae-reprehenderit-minus-dolores', NULL, 'Asperiores inventore aut architecto aut qui et. Atque nihil non id illum et doloribus. Dolore labore modi qui voluptatem perferendis consectetur consequatur. Quibusdam totam commodi repellat tenetur delectus ut.', '<p>Dignissimos maxime quod optio pariatur adipisci. Illum nisi necessitatibus a veritatis omnis. Accusamus neque sit reiciendis non. Ut commodi nobis delectus nam asperiores distinctio.</p><p>Aperiam eos ut sint quo ut. Nisi illo rerum quasi saepe et. Quod sed praesentium et nihil qui iste. In qui qui corrupti nulla.</p><p>Exercitationem dicta velit vero sapiente labore. Sint necessitatibus aut aperiam saepe alias. Doloremque assumenda molestiae sint quos dolorem.</p><p>Provident saepe veritatis eaque ut. Itaque tempore nulla enim et dolores molestiae. Eaque culpa blanditiis sed hic non.</p><p>Praesentium odit odit eum neque. Expedita assumenda sed voluptas eos. Quia odit alias quam.</p><p>Et exercitationem culpa enim culpa debitis dolorem qui. Explicabo non odio dolore veniam nobis libero est.</p><p>Omnis cupiditate qui numquam quis assumenda. Cum nisi molestiae et facilis quos. Aut consectetur quas illum accusantium rerum omnis fugiat. Vel tenetur harum maxime pariatur dolore.</p><p>Consequuntur quaerat aliquam dolores numquam quo delectus praesentium. Voluptate aut sit sed eveniet. Illo rerum architecto repellendus magni. Ut necessitatibus ducimus odit nesciunt ut corporis laborum.</p><p>Rerum omnis ut non. Fugit ad vero est labore fugiat incidunt. Id consequatur voluptatem eveniet eos ex aut et.</p><p>Sint temporibus et aut cumque voluptatem a. Asperiores ducimus id odit asperiores laborum facere. Reprehenderit minus vitae illum.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(12, 2, 1, 'Iure corrupti dolorem aliquam cupiditate ea.', 'id-nesciunt-fugiat-sint-aut', NULL, 'Labore et eveniet architecto quibusdam omnis et. Sed accusantium eveniet suscipit aut quo molestiae. Commodi odio dignissimos non commodi quo non molestiae.', '<p>Et laudantium quaerat sed. Ut error consequatur sint voluptatem voluptas sapiente assumenda. Alias corrupti odit neque inventore laborum est.</p><p>Enim ut non qui nihil modi debitis ad. Sunt aspernatur et necessitatibus porro. Qui quas et id debitis. Nisi nisi enim voluptas dolor consectetur sunt dolor.</p><p>Repellendus impedit omnis qui laudantium ea sapiente modi. Ut rerum perferendis impedit. Rerum autem vero recusandae voluptatem sunt.</p><p>Alias sint error repellat quis cum. Hic ratione voluptatem voluptas perferendis molestiae aliquam. Voluptatem voluptatem dolorum sint mollitia inventore tempora. Impedit eius consequatur rerum et dolores nulla.</p><p>Culpa totam suscipit aut ut. Repellendus porro nulla dolorem natus quam sit. Aut quos facilis ut sint nostrum nulla officia. Fuga eligendi molestias molestias vitae voluptas atque quo.</p><p>Quia minima praesentium consequatur fuga ipsa sapiente. Nihil minima alias repellendus modi quam ab. Sed atque facere sapiente minima. Delectus dolores provident dolorem commodi optio aliquam aut.</p><p>Veniam hic doloremque dolor. Voluptatem velit ab consequatur.</p><p>Nobis voluptas non ea. Culpa dolorem laborum fuga voluptatem blanditiis. Autem consectetur accusantium non aperiam. Ad quo sed dolores distinctio nihil consectetur aut.</p><p>Impedit possimus qui sed. Vero nihil velit repudiandae asperiores repellendus autem. Ut vel voluptatum harum id quam laboriosam.</p><p>Minus dolores aspernatur error nesciunt reprehenderit quia quis. Saepe in voluptatum non error exercitationem. Ut et quam est quisquam eligendi corrupti. Qui nulla rerum corporis unde ad rerum.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(13, 2, 3, 'Id pariatur officiis officia.', 'tenetur-aut-esse-autem-ipsam', NULL, 'Quisquam eius dolorem nobis minus laboriosam qui dolor voluptatem. Facilis sed illum iste consequatur molestiae animi. Et tempora culpa laudantium ex voluptas. Nam enim doloribus amet esse. Sint unde quibusdam aut illo officiis.', '<p>Ab magni quaerat occaecati ut aut sequi minima. Deserunt atque eligendi optio consequatur. Et eum vitae dolore mollitia hic.</p><p>Atque expedita libero et ex. Molestiae laudantium unde et facilis culpa. Rerum dolores odit suscipit illum qui asperiores. Sapiente iusto cum ab vero debitis porro.</p><p>Ea qui praesentium placeat enim consequatur consequatur sed culpa. Est esse ducimus vel voluptates voluptas qui natus. Qui nihil voluptas possimus inventore. Deserunt magnam cupiditate accusantium ut libero aut aut.</p><p>Autem aperiam sequi in vitae impedit culpa. Vel porro accusantium amet exercitationem nulla neque cumque. Voluptates a qui placeat qui quibusdam commodi aliquam est. Fugit laudantium alias molestiae vel enim omnis consectetur. Temporibus itaque eos et maxime quis numquam et.</p><p>At rerum fugiat non distinctio vel laudantium. Consectetur sed labore molestiae eos. Natus accusamus voluptate eum est corporis sint earum.</p><p>Eos ut et modi eum illum et voluptas sapiente. Occaecati soluta facere et omnis dolor eveniet. Unde minus minus a ducimus. Aliquid nostrum placeat velit ea sint consequatur.</p><p>Iure ut consequatur repudiandae perferendis dicta aut. Omnis rerum adipisci repellat commodi consequuntur natus. Sint ut aut recusandae mollitia esse facere debitis.</p><p>Occaecati quos esse odio ea. Distinctio alias suscipit minus et debitis quidem neque. Aspernatur repudiandae in quia adipisci sapiente quidem beatae quas. Necessitatibus voluptas rem distinctio.</p><p>Provident veniam voluptatem rerum consequatur. At doloremque reprehenderit et. Architecto eius reprehenderit autem magnam.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(14, 1, 3, 'Quia qui quis neque sint voluptatem repellendus amet.', 'consectetur-minima-quo-ut', NULL, 'Quos rem pariatur molestias occaecati sunt doloremque a et. Tempore facere eligendi voluptatem qui. Qui asperiores qui qui dolore iure necessitatibus.', '<p>Molestiae in ipsa at rerum quia animi. Quos voluptatem eos necessitatibus sit aut sint id. Et voluptatem nesciunt quae mollitia similique quis.</p><p>Vitae ut natus dolorem aliquid et. Qui aut hic error fugiat sit. Amet eos quo minima ipsa animi animi accusamus dolores.</p><p>Fugit eos debitis delectus ea. Tempore minima hic velit. Qui et possimus autem occaecati quisquam nobis. Officia similique dolorum facere. Et natus est molestias voluptas ducimus nesciunt nobis.</p><p>Modi consequuntur itaque esse voluptatibus. Veritatis dolorem magni possimus vel exercitationem eos sed et. Eos et modi numquam sunt.</p><p>Ut quia modi a eius adipisci distinctio ut. Similique quia vel soluta neque. Ut et adipisci et sint est adipisci qui. Consequatur id adipisci ea aut aperiam omnis.</p><p>Et ipsam magnam eligendi et sint impedit aut. Maxime tempore vitae est ea expedita. Quis accusantium est repellat fugiat magnam distinctio. Repellendus velit doloribus qui quaerat expedita sunt quisquam.</p><p>Minus aperiam perspiciatis a. Aliquam labore soluta quas est. Dignissimos nihil in dolorum similique recusandae.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(15, 2, 3, 'Delectus voluptate maiores.', 'voluptas-necessitatibus-soluta-similique-animi', NULL, 'Ducimus officiis voluptatem minima reprehenderit dolorem natus. Minima cumque iste perspiciatis excepturi debitis. Accusamus cumque iusto blanditiis voluptas sint libero molestiae.', '<p>Tempora officia vero labore sit. Mollitia illum voluptatibus cum non cumque. Minus voluptate sunt pariatur voluptates a perspiciatis. Ut suscipit iste ad rerum.</p><p>Voluptatem culpa inventore sint mollitia voluptas veritatis qui eligendi. Fugit doloremque omnis hic sunt corporis voluptatem. Aut a est quisquam quia voluptatem.</p><p>Non quia velit labore laborum numquam est repudiandae. Quia non beatae quisquam soluta dolorem inventore similique est. Error et laborum occaecati totam non alias iure.</p><p>Enim expedita animi quis vel qui nam. Rem fugit voluptatem nulla aut. Ut voluptate magni consequatur sequi qui sunt magni quia. Qui tempora non quisquam ex dolores illum est.</p><p>Impedit dicta voluptatem quod neque animi maxime non. Occaecati illo quis minima sequi eaque eum fugiat. Molestiae maiores earum odit omnis. Sint eligendi assumenda aspernatur sit.</p><p>Ut quia esse ipsum explicabo quaerat laudantium ratione. Esse maiores velit perspiciatis. Temporibus sequi commodi dolor iure. Corporis perspiciatis est autem.</p><p>Necessitatibus sed quas illo culpa veniam. Ab possimus vel et laboriosam aperiam voluptatibus quibusdam.</p><p>Ratione rerum id omnis odio nostrum. Sit ipsam sit nam quisquam. Sed praesentium quisquam ea rerum mollitia corrupti animi. Quo architecto perspiciatis nihil est.</p><p>Atque sapiente labore et repellendus voluptatem eligendi. Ab non saepe architecto nesciunt. Cupiditate expedita aut quo quo et suscipit sed.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(16, 1, 2, 'Est harum corporis qui dolorum et.', 'sed-aut-eius-et-quas-aspernatur-error', NULL, 'Dicta beatae ut atque perferendis unde qui accusantium nihil. Ratione qui quia aut magnam et. Natus quibusdam quisquam et architecto ipsam quaerat est. Magni assumenda accusantium quia non consequatur cum explicabo.', '<p>Aut eveniet et saepe optio odit atque ducimus. Mollitia ut tempore impedit illum. Tempore eum reprehenderit maxime odio et quo iste. Repellendus ut ea corporis.</p><p>Facilis sint repellat nihil laudantium quis. Reprehenderit voluptatem voluptatum laborum quaerat. Ut est quia eligendi omnis quaerat.</p><p>Quis ab distinctio aut voluptas dolor illo eius dolor. Ab repudiandae dolor quo itaque ex blanditiis id. Itaque debitis excepturi eos laborum.</p><p>Quos enim quis et reprehenderit et. Debitis delectus voluptatem est id.</p><p>Velit maiores aut consequuntur molestias veniam sit. Nobis qui iste voluptatem voluptas quas et. Nihil sapiente doloribus dolorum nulla velit iusto.</p><p>Magni sed sed molestias voluptatem voluptas. Fuga autem perferendis veniam consequatur excepturi ipsam. Dolorem eaque magnam aut consequatur. Qui aperiam voluptatem atque.</p><p>Impedit aut veniam mollitia et explicabo eaque fugiat. Occaecati molestias placeat aut est. Deserunt aut ut dolor et occaecati ipsum id. Rem nihil blanditiis qui modi est harum illum.</p><p>Dicta sit occaecati qui. Voluptates sed nostrum ratione dicta quae. Omnis sapiente beatae placeat ea.</p><p>Quae eum qui ad debitis qui. Dolorum nihil recusandae repellat repudiandae non corrupti. Sunt aliquid officiis dolorem aspernatur doloremque.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(18, 2, 2, 'Et pariatur natus ut.', 'omnis-eum-et-expedita-in-aut', NULL, 'Magni delectus sit et similique sapiente minima. Dolorem similique quia nulla sit et delectus dolore. Voluptatum et inventore officiis sed numquam similique enim delectus.', '<p>Earum facere exercitationem ut aut rerum adipisci. Enim nam dolores id ut ut. Eum corrupti sunt nobis nihil et quos. Facilis laboriosam corrupti vel aut molestiae.</p><p>Rerum voluptate suscipit aspernatur minima non fugit libero dolorum. Vero commodi accusamus sed culpa. Adipisci ut accusantium saepe atque repellat eum quia.</p><p>Consequatur et odit facilis explicabo debitis non. Nulla ut quasi ut ea voluptatum quibusdam. Aut possimus illo hic distinctio vero dolorem dignissimos.</p><p>Molestias omnis sed qui voluptatem quis. Voluptates eos eos sequi. Ipsa alias ea et aut praesentium saepe eaque. Architecto voluptates iure itaque sed animi.</p><p>Et et tenetur aut est sit aliquam. Consectetur iure atque quibusdam dolore. Voluptatem itaque est asperiores omnis et dolorem voluptas.</p><p>Enim earum voluptatem voluptatem atque beatae placeat accusantium. Aliquam deserunt natus sapiente praesentium perspiciatis corrupti aut. Tenetur voluptas qui voluptate ipsam molestiae ut est.</p><p>Dolores voluptas voluptatibus provident ratione. Provident voluptatem sint aut qui debitis. Inventore eaque ex accusantium nulla. Debitis ratione rem enim quis ab odit.</p><p>Repellendus aut molestiae aut qui autem ut. Mollitia officia aut similique iusto. Error asperiores blanditiis dolores aut occaecati voluptatibus. Voluptatum doloribus consectetur nulla unde.</p><p>Est adipisci neque pariatur velit. Magnam ut vitae dolorum beatae qui at. Dolorem id itaque nihil inventore accusamus neque cumque.</p><p>Ipsam pariatur quia in enim ut. Dignissimos et quia itaque suscipit. Quo molestiae quod culpa laudantium nam. Eum sint vitae fugiat qui.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(20, 2, 3, 'Omnis consequatur ut voluptatum porro non sit.', 'repudiandae-quia-neque-placeat', NULL, 'Ab ut consectetur quia voluptatem facere. A facilis similique molestias et voluptas necessitatibus qui tempora. Consectetur quo iusto fuga fugit totam voluptatum accusamus. Deserunt voluptatibus dolorem dolorum quo quae perferendis.', '<p>Rerum expedita ab adipisci. Eos cupiditate autem ut ullam. Ipsa est dolores quis a maiores. Ut nihil non quae.</p><p>Ipsam totam et omnis sint rerum at ipsa. Corporis consequatur perferendis quam id dicta. Porro temporibus delectus est unde aperiam in.</p><p>Est qui natus delectus porro ut at. Exercitationem est non vel veritatis dolores omnis excepturi maxime. Dolore itaque quidem qui non deleniti.</p><p>Necessitatibus repudiandae iusto qui ea. Molestias illo voluptatem commodi. Quas numquam impedit nesciunt aliquid vel. Sed rerum est quaerat maiores. Eius qui voluptas et magnam praesentium impedit.</p><p>Nostrum qui exercitationem ea aut voluptas enim. Tempore ut est officiis omnis. Ab ut vero iste est enim. Tenetur alias sint eos repudiandae.</p><p>Voluptas voluptate non quos voluptates deleniti dignissimos. Natus quo ad quia deserunt rerum molestiae. Iusto nesciunt et molestiae est ut totam doloremque.</p>', NULL, '2021-11-12 01:07:48', '2021-11-12 01:07:48'),
(22, 1, 2, 'Post Baru Lagi', 'post-baru-lagi', 'post-images/fMi3zuD0PWGDNm570dTgtLA9BoJh5vbjPfM5j0ac.png', 'POST BARU', '<div>POST BARU</div>', NULL, '2021-11-12 05:41:43', '2021-11-12 05:41:43'),
(24, 1, 1, 'ok', 'ok', 'post-images/HMMQqNEzs5QedcvtFoqF9ivePHN8Vs4wotbxkShR.jpg', 'asd', '<div>asd</div>', NULL, '2021-12-14 20:08:04', '2021-12-14 20:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Junico Tandiago', 'junicotandiago', 'junicotandiago@gmail.com', NULL, '$2y$10$ZuUNyn6wvaSrhim8zf149ulj3MzqZsyawv3BPkwwysiRbrI0oaD72', NULL, '2021-11-12 01:07:47', '2021-11-12 01:07:47', 1),
(2, 'Kezia Jelita Kuswandari S.Pt', 'mansur.prayitna', 'heru61@example.net', '2021-11-12 01:07:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eLLFOxZKg3mtIHsZJu6Vhr7eBfyS0i7zdHnsiRSXDhV6JFOmsqXOVnmNU20z', '2021-11-12 01:07:47', '2021-11-12 01:07:47', 0),
(3, 'Karta Marsito Irawan S.I.Kom', 'viktor43', 'rsudiati@example.net', '2021-11-12 01:07:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wJq5LuzV9h', '2021-11-12 01:07:47', '2021-11-12 01:07:47', 0),
(4, 'Jaswadi Maryanto Kurniawan S.I.Kom', 'vanesa81', 'riyanti.waluyo@example.net', '2021-11-12 01:07:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NTLdfCQ9LX9YAHIJKemAZLO10UKaeyqjLFPpnhL91dgjkp9Oj1yBT0A0h56N', '2021-11-12 01:07:47', '2021-11-12 01:07:47', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
