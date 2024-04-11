-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  jeu. 11 avr. 2024 à 08:50
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `esporthub`
--

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getArticles` ()  BEGIN
  SELECT * FROM articles;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOneArticle` (IN `id` INT)  BEGIN
  SELECT * FROM articles WHERE articles.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOnePage` (IN `id` INT)  BEGIN
  SELECT * FROM pages WHERE pages.id_page = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOneRight` (IN `id` INT(2))  BEGIN
  SELECT * FROM rights WHERE rights.id_right = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOneRole` (IN `id` INT)  BEGIN
  SELECT * FROM roles WHERE roles.id_role = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOneTwitch` (IN `id` INT)  BEGIN
  SELECT * FROM twitch WHERE twitch.id_twitch = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOneType` (IN `id` INT)  BEGIN
  SELECT * FROM types WHERE types.id_type = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOneUser` (IN `id` INT)  BEGIN
  SELECT * FROM users WHERE users.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getPageArticles` (IN `id` INT)  BEGIN
  SELECT * FROM page_articles WHERE id_page = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getPages` ()  BEGIN
  SELECT * FROM pages;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getPageTwitch` (IN `id` INT)  BEGIN
  SELECT * FROM page_twitch WHERE id_page = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getRights` ()  BEGIN
 SELECT * FROM rights;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getRoles` ()  BEGIN
  SELECT * FROM roles;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getTwitch` ()  BEGIN
  SELECT * FROM twitch;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getTypes` ()  BEGIN
  SELECT * FROM types;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserArticles` (IN `id` INT)  BEGIN
  SELECT * FROM user_articles WHERE id_user = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserRole` (IN `id` INT)  BEGIN
  SELECT * FROM user_role WHERE user_id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsers` ()  BEGIN
  SELECT * FROM users;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Beatae vel sit aut nulla.', 'Possimus non impedit accusamus odio suscipit. Facere illum ut velit officia repellendus. Rerum tenetur minus doloremque sed.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(2, 'Consequuntur soluta reprehenderit consectetur repellat voluptatibus et.', 'Eos eveniet voluptates vitae eligendi. Aut beatae quibusdam saepe veniam quia. Assumenda vel qui et officia.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(3, 'Id sit eos amet voluptatum odio reprehenderit.', 'Sed et voluptates eveniet est voluptatem. Et quis repellendus est sed vitae odit velit et. Et at qui tempore dolores minima suscipit. In laboriosam reprehenderit corporis et vel asperiores labore.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(4, 'Voluptas dolores et ea repellat nihil nihil.', 'Maxime alias delectus illum sed voluptatem. Iste saepe omnis est nostrum et molestiae sapiente. Itaque molestias omnis unde ea delectus qui. Aut necessitatibus molestiae perferendis sunt cumque ducimus fugiat.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(5, 'Et maiores fuga alias officia.', 'Aliquid consequuntur voluptas deleniti neque exercitationem debitis doloremque modi. Nulla nam nemo ut ullam dolor autem voluptatem. Quia asperiores sunt error et.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(6, 'Adipisci natus inventore et laborum cum asperiores.', 'Quam tempore voluptatum non qui labore voluptate dolore voluptates. Dolor minima accusantium maiores quo eos quis. Neque nisi sed minus blanditiis.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(7, 'Tempore similique est culpa doloribus velit fugit est.', 'Iure ab voluptatem molestiae repudiandae modi facere sit similique. Culpa et soluta magni ducimus. Molestiae eligendi rerum doloremque et sit hic veniam.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(8, 'Id illum aut id tempora omnis ullam et eaque.', 'Facilis dolor praesentium qui velit numquam sit. Ut dolorem porro molestiae ut et inventore. Cum aut vel quam mollitia. Et perferendis impedit earum quo. Molestiae ipsa libero facilis rerum praesentium quae.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(9, 'Aut et reprehenderit non id et voluptatem itaque.', 'Nihil debitis in nulla sit cumque. Deleniti quos qui rerum fugiat magni laborum quas. Blanditiis nisi omnis eos ullam est sit reprehenderit sunt.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(10, 'Voluptatem ducimus sed iure assumenda et.', 'Porro sed quas et autem nisi. Ut sit quos alias dolore odio. In nihil rerum enim nostrum error cum quia voluptatibus. Quo provident perspiciatis aliquam molestias nihil consequatur molestiae.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(11, 'Autem ad ipsam explicabo tempora odit.', 'Modi velit excepturi itaque eligendi enim voluptatem. Aut deserunt in est consequuntur voluptas. Autem sit rem non totam quasi. Modi et quas sint soluta doloremque cupiditate.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(12, 'Veniam deleniti culpa voluptates consequatur vel.', 'Placeat ut veritatis consequatur ea veniam quod. Quia non dolor magni. Impedit sunt velit non dolores repellendus voluptas.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(13, 'Velit non ullam eius voluptas asperiores velit aspernatur.', 'Quia asperiores sequi et sapiente. Sapiente consequatur doloribus et voluptatem quia. Veniam assumenda qui dolores veniam aut. Et vero et omnis quas aliquam dolorem.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(14, 'Voluptatem adipisci repudiandae deserunt perspiciatis inventore.', 'Provident nam molestiae qui dolor aperiam quaerat. Quo error non at est. Voluptates fugiat sed provident nesciunt harum vitae et.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(15, 'Earum explicabo quos quia labore repellendus consequuntur fugit.', 'Repudiandae sunt sit porro minus repudiandae quo distinctio. Eligendi a eaque quibusdam officia qui. Omnis labore ducimus quo non molestias animi.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(16, 'Voluptatum facilis et occaecati numquam eos fuga unde.', 'At autem similique possimus itaque. Sint dolorem ut omnis. Dolores nesciunt vel sint.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(17, 'Corrupti qui commodi occaecati eos soluta.', 'Nobis excepturi est tempora quaerat. Quia voluptas vel et beatae. Enim tenetur non eligendi eos. Voluptatibus aut nihil voluptatem suscipit.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(18, 'Omnis accusantium sunt nemo soluta itaque aut.', 'Dolore voluptatum quaerat aspernatur consectetur. Ut rerum vel ea voluptas. Rerum eligendi tenetur rerum sunt et.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(19, 'Qui vel perferendis enim repudiandae dolore qui dolorem.', 'Omnis et quo iusto sunt rem aut laborum ullam. Eos reiciendis voluptas ut ut. Enim rerum qui exercitationem suscipit. Earum ut exercitationem ut suscipit voluptas in ab.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(20, 'Aut beatae quaerat mollitia quibusdam repellendus.', 'Ut et dolor necessitatibus blanditiis. Tenetur assumenda placeat voluptas explicabo. Aut animi distinctio deserunt velit aperiam fugiat eligendi. Porro fuga quo animi eos saepe qui sapiente quidem.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(21, 'Exercitationem blanditiis et eligendi reiciendis iure nam sit.', 'Voluptates itaque aliquam cupiditate. Id cupiditate dolor doloremque dolores sit.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(22, 'Ut soluta qui facere vel debitis est aut omnis.', 'Cumque perspiciatis praesentium optio sed quaerat. Tempore qui laboriosam dolores maxime. Rerum sint et inventore et. Molestias enim officia itaque similique error consectetur sapiente.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(23, 'Qui unde voluptatem veritatis.', 'Autem et mollitia alias rerum cupiditate saepe aut. Hic sit earum quia sequi ipsa. Sint ad voluptatem temporibus veritatis qui excepturi. Totam saepe consequuntur porro ut aut minima soluta. Quaerat id itaque enim voluptatum autem est veritatis.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(24, 'Aperiam eum ducimus commodi praesentium.', 'Unde et voluptatem non perspiciatis autem. Alias illo doloribus optio quia doloribus dolor voluptas. Ut quo possimus itaque quibusdam.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(25, 'Aspernatur quia id et eum officiis ut.', 'Eos aut est qui deleniti quis ea officiis. Quos qui nostrum autem sint aut expedita. Labore totam eligendi perspiciatis at. Voluptas alias laboriosam explicabo veniam illum culpa ex.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(26, 'Similique quo quidem voluptas nostrum animi minima laudantium quia.', 'Aliquid vel exercitationem quis reiciendis dolor laborum aperiam. Incidunt et mollitia cupiditate ea omnis ut. Quis deleniti rerum aut non.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(27, 'Dolore in nisi expedita accusamus alias voluptatum omnis.', 'Natus dolor cum tenetur inventore. Sed et et veritatis dolorem asperiores consequatur eaque aperiam. Temporibus aut omnis quae quos necessitatibus perspiciatis nostrum aut.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(28, 'Dolorem distinctio deserunt eius quod non delectus sit.', 'Velit dolores possimus vel voluptatem eum natus veritatis. Molestias blanditiis voluptatem veritatis veniam et non repudiandae. Quos magnam fugiat sit architecto ut placeat. Tempora ea fugit exercitationem commodi consequatur est.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(29, 'Debitis aut aperiam dicta autem totam totam quo.', 'Accusantium tempore a libero alias tempora ipsam. Id tempora accusantium quasi. Nisi et debitis ut doloremque non necessitatibus quos.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(30, 'Perferendis non id quasi qui eaque est soluta.', 'Voluptates consequuntur eum cupiditate aperiam expedita earum et. Accusamus est velit natus rerum non consequatur quia. Natus enim expedita blanditiis sapiente.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(31, 'Ut a voluptates sint voluptatibus.', 'Recusandae autem sed et beatae. Deserunt veritatis quaerat recusandae explicabo facere recusandae.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(32, 'Voluptatum inventore recusandae necessitatibus expedita cum debitis.', 'Facere sunt consectetur maxime non. Quia ipsum quis doloremque est. Commodi similique ut quidem dolorem itaque doloremque.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(33, 'Molestias eos molestiae dicta ad id commodi.', 'Fugiat accusantium officiis quibusdam est omnis beatae fugiat. Voluptatem vel aut nobis tenetur iste est qui. Eveniet doloremque illo reiciendis corrupti. Deleniti est ut reprehenderit dolor.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(34, 'Et dolorum quisquam enim autem voluptas a.', 'Aut sapiente omnis nihil officia et autem et. Est nulla in eligendi tenetur laudantium qui unde. Ullam ea a occaecati cum ratione.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(35, 'Minima accusantium similique consectetur dolor iusto.', 'Et ut sunt nam optio. Et iure nostrum in et voluptatibus. Repellat officiis consectetur voluptas deleniti.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(36, 'Qui perspiciatis nesciunt molestiae dolor qui tempore asperiores.', 'Dolores omnis ut beatae nihil animi deleniti qui. Aut laudantium fugit deleniti quae omnis ut omnis. Fugiat qui qui excepturi qui et.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(37, 'Dolor nemo quibusdam quaerat aut illo.', 'Impedit mollitia odit consequatur ex. Excepturi ullam beatae id est cum ipsum.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(38, 'Quidem sit autem aut qui autem.', 'Porro a fugit voluptas cupiditate soluta. Omnis et aut omnis nulla ipsa eveniet. Quibusdam soluta deserunt id sunt. Fugit quo hic numquam mollitia hic distinctio.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(39, 'Sunt distinctio accusamus veniam praesentium voluptatem consequuntur debitis architecto.', 'Quia fugit sint non impedit molestiae et doloremque. Voluptas et possimus eligendi ea illo laboriosam magni recusandae. Architecto beatae accusantium qui doloremque assumenda perspiciatis sint. Eaque vitae vel aut neque cum.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(40, 'Blanditiis et aliquid officia dolor deserunt ut.', 'Culpa maxime cupiditate est provident non nesciunt. Nesciunt ut eum et impedit. Eius ipsum et vel et sapiente quis optio. Molestias sapiente sed sed sit quia in. Eligendi rem velit et explicabo.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(41, 'Voluptas delectus blanditiis similique architecto ut sit iste.', 'Delectus praesentium deserunt incidunt quo possimus iste. Unde sunt sed ipsa est repellat. Est rem qui veniam a quidem. Perferendis cumque sunt quae ab voluptas deserunt.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(42, 'Quo consectetur excepturi optio tenetur accusamus enim eum unde.', 'Quia voluptatem nobis tenetur quia sint harum voluptatum. Excepturi consequatur non cumque et omnis.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(43, 'Perspiciatis architecto odit non deserunt.', 'Perspiciatis exercitationem nobis nisi sit ut ut. Dolorem autem repellendus tempora vel quis aliquid velit sint. Magni fugiat qui sunt nulla molestias rerum.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(44, 'Quibusdam aut quasi doloribus laborum mollitia.', 'Quae enim aut explicabo nemo libero officia quis. Incidunt accusantium illum est vel. Aperiam suscipit nemo vel earum ut. Mollitia ea similique architecto aut.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(45, 'Voluptate mollitia sint praesentium nobis et fugiat.', 'Odio maxime commodi illo atque. Sint non reprehenderit pariatur dolores qui ut incidunt. Dolorem qui occaecati atque et doloribus odio. Enim enim optio voluptas laudantium aut autem.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(46, 'Exercitationem animi possimus eum.', 'Error vitae placeat ducimus. Nam at voluptatem non suscipit sint. Quod quidem aliquam sint quasi. Asperiores a commodi repudiandae voluptatum voluptate quis.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(47, 'Aperiam molestiae omnis maiores et fugiat commodi.', 'Modi repudiandae perferendis nihil et architecto doloribus est sed. Rerum sed ut enim. Consectetur eos quos dignissimos est.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(48, 'Ullam repellat molestiae quos deserunt placeat debitis.', 'Laboriosam qui dolore dolore et enim quasi et. Quod illum beatae quia suscipit. Blanditiis rerum cum ipsam impedit. Ipsa cumque ipsum necessitatibus iste.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(49, 'Sint nam tenetur neque.', 'Quos quia sunt qui eaque beatae. Omnis aut aliquam quam accusamus soluta. Dolores error quia at consequatur dignissimos quis. Sit occaecati dolorem laboriosam reprehenderit.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(50, 'Iure aut repellendus rerum est nemo beatae.', 'Possimus temporibus reiciendis minus maxime. Debitis dolores sit excepturi sunt eius ipsam. Dolorem voluptate maiores id vitae officiis autem.', '2024-04-10 12:11:03', '2024-04-10 12:11:03');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(55, '2014_10_12_000000_create_users_table', 1),
(56, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(57, '2019_08_19_000000_create_failed_jobs_table', 1),
(58, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(59, '2024_04_09_072839_esporthub', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id_page` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id_page`, `name`, `header`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Est aut maxime labore at soluta dignissimos et accusamus.', 'Ut laudantium eum hic enim iste voluptatem.', 'Saepe et nobis explicabo blanditiis. Consequatur aut saepe a quod. Quia consequatur est dolores aut voluptate. Accusamus et et provident qui aut eum saepe dolorem.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(2, 'Consequatur molestias accusamus cumque fugit.', 'Dicta expedita officia earum omnis fugit minima.', 'Qui voluptatibus esse porro perspiciatis. Suscipit eaque animi alias id ea sed aut.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(3, 'Eum voluptates pariatur enim atque voluptate.', 'Provident perspiciatis est vero sequi.', 'Dolorem molestias impedit possimus amet tempore. Qui qui omnis nostrum enim rerum molestiae laudantium. Aliquam autem architecto non recusandae quidem dolore facilis eos.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(4, 'Eos quod cum eum mollitia quidem adipisci natus ut.', 'Placeat qui atque voluptas odit quia quae alias.', 'Optio consequatur tempora asperiores consequatur sed. Voluptates laudantium fugit sed sed facere. Id ut laboriosam ab nemo ut velit illum dicta.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(5, 'Voluptas doloribus sit accusantium numquam ea voluptatibus unde voluptatibus.', 'Praesentium tempore repudiandae suscipit voluptatem facilis.', 'Voluptas ut suscipit sint illo ab praesentium qui. Dolor ullam atque fugiat doloribus harum. Cumque dolor dignissimos optio rerum.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(6, 'Veritatis dolor sed aliquid blanditiis at aut.', 'Saepe maxime quo qui.', 'Reiciendis neque sint tenetur. Mollitia laboriosam accusamus harum nemo earum voluptate facilis. Necessitatibus asperiores velit ut qui quis dolore ipsa quas. Optio eius debitis tenetur est quisquam aut est et.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(7, 'Omnis quod quis consequatur totam nemo debitis.', 'Est molestiae cupiditate harum ut.', 'Nesciunt aut natus sequi quisquam. Consectetur at excepturi reiciendis accusantium et delectus eaque. Ut impedit qui est.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(8, 'Corporis corporis sed esse minima.', 'Nihil nesciunt veritatis saepe.', 'Ex quidem sequi odio id modi vel dolores. Omnis et quasi quae doloremque magni nulla doloribus.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(9, 'Voluptas vero qui a suscipit soluta quasi dolore.', 'Voluptatum alias eos dicta quos.', 'Veritatis repudiandae quis sunt iure fugiat. Aut ipsa et sunt qui sunt debitis. Tempora et reiciendis fugit et eos consequatur.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(10, 'Minus maxime quis delectus id ratione.', 'Aut necessitatibus impedit minima sit.', 'Eaque harum deleniti facere quaerat ratione dolores et. Dolores pariatur perferendis modi sit provident. Porro et quam optio totam nostrum commodi. Ad eveniet iste doloremque ut voluptatem.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(11, 'Non quia sunt nemo architecto aperiam aliquam maxime eum.', 'Deserunt ducimus sed nihil iste.', 'Dolorum rem quia placeat vel repellendus fugit. Possimus reiciendis voluptates sunt voluptates. At sequi ratione dolorem qui iusto.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(12, 'Itaque ut ut ad et ut sit.', 'Et non rerum animi nam dolorem asperiores corrupti.', 'Aut sunt ut dolorum iste. Nulla placeat qui at nemo consequatur voluptatem. Veniam beatae ut iusto voluptatibus non. Eos perspiciatis neque sequi quidem.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(13, 'Hic eos quisquam quasi ab mollitia deleniti.', 'Sint laboriosam eaque deserunt architecto et a sequi.', 'Necessitatibus consectetur pariatur ipsum eum et nihil. Similique laudantium debitis magnam enim quis. Animi ut quia neque aut. Tempore quidem sed voluptatem.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(14, 'Laborum occaecati voluptates veritatis autem.', 'Tempora dolores ut repudiandae a molestiae magni omnis.', 'Vero dolores porro inventore ut. Laboriosam magnam minima atque dolorem explicabo distinctio. Sed voluptas cum laudantium est aut commodi illum.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(15, 'Adipisci et occaecati a veniam molestias.', 'Reiciendis consequatur molestias quo doloribus accusantium ut et.', 'Voluptatibus omnis explicabo quae optio. Iste fugit aliquam in vero fugit. Odio facere modi nemo blanditiis unde quasi iure.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(16, 'Consectetur sapiente et molestiae.', 'Dolore velit eos est ad.', 'Voluptatibus distinctio quia quia ut. Recusandae recusandae temporibus at accusantium optio.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(17, 'Deleniti natus ullam explicabo sit quis et enim.', 'Ipsa voluptatem fugiat et et ullam consequuntur enim.', 'Quae reprehenderit sequi facilis quis illo numquam vel necessitatibus. Laborum neque dolor alias dicta nostrum debitis nulla.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(18, 'Ut quos temporibus distinctio in fuga.', 'Unde enim ipsa reiciendis illo.', 'Tempora et omnis voluptatem quia non minus. Pariatur aut similique illo aut sunt quia eos dolore. Ea voluptatibus voluptas illum commodi laudantium non. Omnis ipsa voluptas eum rerum nulla assumenda neque.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(19, 'Mollitia facere totam sed architecto omnis.', 'Sint est temporibus ab qui illo reiciendis.', 'Repellendus qui unde libero quasi dolorem ut harum. Aut veritatis et qui quae omnis libero. Qui non veritatis nulla nulla omnis ipsum eum.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(20, 'Quasi atque ducimus et maxime dolor autem.', 'Deleniti laboriosam qui dignissimos voluptatem.', 'Non expedita debitis dolor voluptas. Molestiae quis ut molestiae vel sunt. Expedita impedit repellat voluptas quo quia occaecati. Et sequi nesciunt ipsa veritatis. Debitis optio sed molestiae est eaque ab quos et.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(21, 'Provident quis voluptas et vel beatae voluptatum necessitatibus.', 'Ratione magnam voluptate praesentium nam quae.', 'Eum quia voluptatem quibusdam corrupti placeat voluptatum. Consequatur eos cumque dolorem. Fuga odio autem est deserunt sed rerum et.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(22, 'Beatae sit molestiae et.', 'Laborum adipisci iusto consequuntur ipsam enim et voluptas quaerat.', 'Quidem voluptas quisquam maxime quia in doloribus. Exercitationem reiciendis atque magni ea. Omnis est eos et et modi. Veniam consectetur explicabo odit occaecati qui voluptates.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(23, 'Totam expedita facilis eum eum et quam expedita.', 'Debitis fuga quas at magnam.', 'Perspiciatis aut quasi porro et sit distinctio ex. Unde vitae quas nihil voluptatem qui dolor. Eius labore totam quam veniam. Et et ut alias nemo perspiciatis cum similique.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(24, 'Eveniet et eos dolores.', 'Et ea eligendi perspiciatis at.', 'Consectetur dolorem ut alias libero repellat. Ea beatae quaerat magnam vero et. Numquam sit quia pariatur soluta neque est. Temporibus sit non eum ducimus officia qui et.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(25, 'Modi voluptate perferendis totam enim ab ut.', 'Dolor accusantium explicabo quos repellendus amet sapiente vitae.', 'A et aut sed rerum. Laboriosam deleniti necessitatibus quis et. In repellat nisi blanditiis est necessitatibus aut ut. Eius molestiae labore praesentium omnis.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(26, 'Veniam in molestiae non.', 'Aut quibusdam dolor quae non.', 'Voluptatem laboriosam quia ut nihil. Ut molestiae rem est et dolores quaerat dignissimos. Doloribus voluptate accusamus inventore error rerum iusto.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(27, 'Quis unde ea nemo voluptas reprehenderit.', 'Qui quia quisquam voluptatem aspernatur.', 'Autem iure sunt velit dolor esse est aut. Assumenda sequi non iusto et qui quod. Occaecati laudantium repellendus et id nisi. Sapiente soluta distinctio maxime.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(28, 'Commodi soluta nobis nulla illo neque velit expedita.', 'Voluptatum excepturi nemo vel.', 'Est qui quaerat maxime illo. Sit sint architecto dolores magnam enim eos quis esse. Deserunt sed dolore voluptatum architecto et laborum. Vero et officia atque excepturi praesentium.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(29, 'Dignissimos id quis aliquam quo.', 'Illo dolorum quia placeat porro corporis qui.', 'Id nihil magnam assumenda magnam. Ipsa est accusantium suscipit et et qui ea asperiores. Molestiae omnis omnis sed sint est quos voluptas esse.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(30, 'Repellat fugit ipsa qui sed repellat.', 'Omnis sed laudantium ex rerum quia.', 'Facere sed libero iste voluptatibus harum provident illo. Sequi aut fuga quidem numquam magni id. Hic in vero pariatur libero aspernatur.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(31, 'Iure quo id dolor provident magnam.', 'Non aliquid ducimus est et perferendis accusantium nam odit.', 'Sit doloribus aliquid libero nihil. Enim explicabo laudantium quia facilis quia autem. Dolores sed aut qui et aliquid non. Quis non vel tenetur explicabo.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(32, 'Velit sequi et dolore impedit fuga.', 'Aut laudantium rerum rerum maxime maiores dignissimos consequatur.', 'Quas asperiores qui molestiae dolore reprehenderit. Cum eos numquam magni sed modi. Et cum et et commodi quasi.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(33, 'Suscipit eos molestias animi id dolore.', 'Et cumque explicabo voluptatem fugiat aliquam quia aspernatur.', 'Hic velit numquam quae laborum ut optio qui. Quidem qui eos voluptatem nostrum eius ipsum et. Adipisci consectetur velit facere cumque sed.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(34, 'Voluptatem ut sunt modi est qui a.', 'Fugiat sequi nobis ex dolore dolores.', 'Natus consequatur id et quo. Omnis iste sint ducimus ut nesciunt. Itaque illum non aut ut consectetur excepturi quo.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(35, 'Quas explicabo ab beatae adipisci.', 'Aut aut quos corrupti voluptas.', 'Mollitia necessitatibus nihil id omnis atque. Sapiente quaerat omnis cupiditate quam vitae delectus. Doloribus minus a debitis ipsum est provident fugiat.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(36, 'Aliquid nihil ut omnis.', 'Qui ullam nemo aut porro ipsa ut rerum.', 'Quaerat dolores odio molestiae est odit vero nobis vitae. Quam quo et molestiae maxime accusantium illum.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(37, 'Delectus expedita autem repellat blanditiis numquam.', 'Mollitia atque molestiae voluptatem laudantium debitis sit animi.', 'Cum accusantium exercitationem vel voluptate vero autem numquam. Recusandae earum sit dolor vel quia. Totam voluptatem modi ipsa quasi.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(38, 'Facere odit aut sunt voluptas.', 'Qui sed porro et accusamus nam quia et.', 'Quas eos beatae impedit beatae. Dolorum ex saepe corrupti nisi aut sequi laboriosam. Ab odio ut dolores est.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(39, 'Accusamus molestias deserunt architecto sunt odit exercitationem.', 'Enim nulla quia modi velit.', 'Et molestiae voluptas similique itaque est placeat perspiciatis quaerat. Quo culpa optio et. Necessitatibus repellat aut illo sed. Perferendis voluptatem tempore nisi harum quisquam cumque.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(40, 'Harum placeat dolorum velit.', 'Ut debitis qui alias molestiae et iure autem minus.', 'Id fugit nostrum impedit ea. Eum et quibusdam quia reprehenderit dicta rerum. Harum sit cupiditate iure dignissimos. Quis dolores laboriosam debitis dicta odit et eum.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(41, 'Ipsum ipsam ab exercitationem libero.', 'Ut omnis repellendus et eos voluptates reprehenderit minus.', 'Dolor facilis corporis sapiente placeat repellendus exercitationem. Similique aut atque ducimus aspernatur molestiae. Exercitationem nulla natus consectetur sunt non hic. Quasi non natus consequatur nesciunt voluptatem nostrum.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(42, 'Quo labore maiores cumque.', 'Repellendus necessitatibus quod deleniti iusto ducimus.', 'Omnis nihil sed est quia aut eos explicabo nulla. Nihil est aut molestias quas totam ipsam. Illum dolor pariatur qui. Molestiae et perferendis quis odio quo cumque.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(43, 'Nemo aspernatur rerum sint non voluptatem omnis.', 'Quaerat voluptas ullam similique.', 'Et est eaque fugiat deleniti mollitia. Similique deserunt dolore earum aut. Excepturi fuga nemo minima esse suscipit non.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(44, 'Qui delectus fugit voluptate necessitatibus deserunt iure ipsam.', 'Consequatur necessitatibus iure quo repellat.', 'Sit sit earum provident id unde sed quia non. Sed deleniti sequi dolores nisi quis quod. Recusandae reprehenderit ullam totam est est. Necessitatibus quo id eos quam qui. Minus commodi modi ut quaerat ratione molestias aut adipisci.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(45, 'Nulla officia sapiente cupiditate ipsum.', 'Facilis omnis quis natus sint vitae omnis delectus voluptatibus.', 'Voluptas blanditiis veniam officia in qui quo reiciendis. Officia quas excepturi debitis est earum natus. Fuga maiores veritatis et soluta cum.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(46, 'Deleniti aliquid praesentium ipsa aut dolores ipsum.', 'Aut quisquam natus laudantium est debitis.', 'Molestiae officia occaecati tenetur dolorem natus iure sed pariatur. Dolor nam aliquam inventore facilis et consequatur est. Laborum excepturi aliquid sint autem dolorem dolores assumenda consequatur. Voluptas delectus voluptates optio.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(47, 'Consequatur nihil voluptas optio numquam eligendi aliquid.', 'Repellat cumque optio consectetur cumque maxime quia.', 'Cumque debitis at laboriosam. Itaque et eligendi officia fugit eius voluptatibus commodi exercitationem. Unde nobis vitae delectus aut. Fuga ut occaecati magni neque est.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(48, 'Voluptas magnam provident sed adipisci.', 'Ad corrupti laboriosam voluptate et.', 'Et repellat id assumenda cupiditate sint. Enim ducimus quos consequatur quasi temporibus facere. Expedita at nisi quia qui sed a qui.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(49, 'Ipsam similique repellendus id.', 'Recusandae aspernatur voluptas neque perspiciatis dolores quas quae in.', 'Illo ut necessitatibus sint adipisci voluptatibus nam aut. Deserunt et delectus quam omnis. Et explicabo aliquid at voluptatem. Voluptas deserunt earum nam necessitatibus et id.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(50, 'Temporibus in sint et ullam dolorem.', 'Itaque doloribus sit recusandae sequi.', 'Voluptas rerum et qui fuga. Fugiat earum reprehenderit neque molestiae iusto nostrum consectetur. Est eius dignissimos natus ad minus vitae.', '2024-04-10 12:11:03', '2024-04-10 12:11:03');

-- --------------------------------------------------------

--
-- Structure de la table `page_articles`
--

CREATE TABLE `page_articles` (
  `id_page` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `page_twitch`
--

CREATE TABLE `page_twitch` (
  `id_page` int(11) NOT NULL,
  `id_twitch` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rights`
--

CREATE TABLE `rights` (
  `id_right` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rights`
--

INSERT INTO `rights` (`id_right`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Provident maxime nemo voluptatum quaerat doloremque.', 'Officia non dignissimos iste officia. Ipsam et voluptas quasi.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(2, 'Harum et eum tempore.', 'Voluptas et aut incidunt non atque. Assumenda velit harum facilis provident nulla voluptas voluptate. Qui dolor asperiores autem exercitationem temporibus pariatur nesciunt. Laudantium facilis iusto nam.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(3, 'Alias et ut dicta est aliquid impedit sequi.', 'Adipisci aperiam aperiam eos sed ut. Et aliquid atque vitae voluptate expedita quasi. Ad quia aliquid aliquid et. Et distinctio est illum itaque eum.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(4, 'Repellendus aspernatur voluptatem molestiae nemo.', 'Sit sint inventore sequi voluptatum. Est repudiandae laborum reprehenderit ducimus sunt tempore a. Atque dolores commodi quis. Perspiciatis dolor nulla quasi modi neque aut.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(5, 'Necessitatibus voluptatum voluptates aperiam.', 'Nesciunt provident non sint maiores sunt accusamus. Et quasi iusto quia. Quo et minima et velit id hic qui. Quia sed possimus veniam consequatur.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(6, 'Veniam nobis earum odio aliquid fugit.', 'Ut non totam sunt sed ut. Recusandae qui est numquam non libero quas repellendus. Nostrum incidunt sunt et qui et consequuntur est est. Reiciendis ut cum atque enim. A magni molestiae sed earum ut repudiandae accusantium.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(7, 'Suscipit sint et velit reiciendis vel repellat.', 'Est fugiat consequatur optio inventore est. Aliquid et eveniet quibusdam aut rem. Est quia rem ipsum. Sit et error quia aut.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(8, 'Quae aperiam expedita qui fuga esse.', 'Eligendi magni facere alias reprehenderit qui eligendi. Qui doloribus quasi possimus est dignissimos. Et dolores hic odit consectetur.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(9, 'Recusandae a fugiat at omnis nihil sit.', 'Minima quis eaque adipisci sunt nesciunt labore. Dolor dolorem et id. Magni et nihil illo laudantium aliquam.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(10, 'Ipsam quidem in quas ipsa.', 'Molestiae aut incidunt nihil quae enim consequatur quidem. Atque sint quam officia. Qui cumque placeat iusto qui totam.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(11, 'Dolor amet dicta rerum iure accusantium quis nam.', 'Inventore velit ut sunt saepe voluptatem et magni. Illo et molestiae quae ratione modi voluptas esse non. Vitae exercitationem doloribus officiis ipsa sit eum autem. Eligendi occaecati mollitia quis cupiditate ut perspiciatis veritatis.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(12, 'Et autem laborum sit recusandae quos.', 'Qui sit et consequuntur cum. Ut corrupti quos voluptatem maiores sapiente. Quidem ipsum aut necessitatibus ex amet aut neque dolore. Explicabo earum accusantium veritatis facere cumque.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(13, 'Assumenda beatae laboriosam ut ducimus porro.', 'Molestias doloremque voluptates vel. Eveniet error neque minima. Molestiae ut excepturi deserunt dolores. Reiciendis est praesentium impedit expedita voluptatem aut voluptas. Non dignissimos velit dolores molestiae ad labore nisi.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(14, 'Qui nemo commodi tempore aut omnis dolor unde ab.', 'Qui incidunt architecto vel ut. Quae ut tenetur incidunt rerum. Dolorem voluptas voluptatem quia excepturi amet vero.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(15, 'Cumque rerum excepturi rem.', 'Ea error consectetur blanditiis ea tenetur. Aperiam maiores reprehenderit qui adipisci. Dolor quas qui esse vitae. Nulla omnis possimus numquam.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(16, 'Dolorem natus eaque in iusto laborum odio.', 'Et perferendis et tempore tempora rerum. Totam ut odit et illum quis aspernatur mollitia. Animi est et nam voluptatem laudantium velit.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(17, 'Porro deleniti labore quod dolorem expedita omnis.', 'Delectus quia accusantium molestias. Possimus unde debitis dolores dicta. Autem asperiores sequi exercitationem voluptatibus culpa optio nesciunt. Tempora non consequuntur quibusdam aliquid. Delectus et itaque quia eum dolore.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(18, 'Fuga voluptatum molestias necessitatibus autem consequatur ab quibusdam.', 'Vel necessitatibus enim sed ullam voluptatibus. Quibusdam nemo fugit consequatur illo illum. Consectetur velit laboriosam deserunt libero laudantium alias voluptas eos.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(19, 'Quod excepturi quia dolores architecto.', 'Provident omnis officiis vitae rerum incidunt et voluptas. Numquam ut delectus quae nam placeat enim qui porro. Consequatur est reprehenderit beatae praesentium ut atque. Voluptatem soluta modi occaecati similique.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(20, 'Officia recusandae eius perferendis ullam.', 'Deleniti nobis odio magni reprehenderit aut. Vero rem quia accusantium quia aspernatur molestiae amet.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(21, 'Quos harum consectetur et velit.', 'Omnis nulla autem dolorum culpa quae repellendus. Facere dolor est eum. Expedita aut vel molestiae recusandae. Voluptatem dolorem sed sit repellendus incidunt.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(22, 'Voluptatibus et repudiandae dolorem adipisci assumenda ducimus.', 'Ipsam nostrum consectetur et est provident ipsum et nemo. Id saepe quia labore in sed consequuntur omnis. Nihil nam rerum dolores vel harum autem ipsa ipsa. Animi consequatur voluptates alias aliquid.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(23, 'Non rerum repellat sunt sint in labore.', 'Occaecati doloremque minus officia et cum sapiente voluptas. Quis reiciendis voluptatem maxime laboriosam voluptate. Molestias facere sint voluptatibus cumque et. Amet aut nesciunt rerum.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(24, 'Similique aspernatur inventore rem voluptatem.', 'Libero rerum aliquam totam expedita quis. Officiis quasi dolore et magnam nam quaerat autem. Consequatur quae aut quia dignissimos beatae illo impedit.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(25, 'Nihil sapiente dolorem quibusdam placeat totam nam non.', 'Nihil officiis provident impedit fugit aut. Excepturi est et et aut dolores laudantium aliquid. Adipisci totam quo maiores odit.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(26, 'Enim inventore aut qui saepe vel.', 'Officia quidem similique beatae rerum quo quas magni. Et pariatur aut est.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(27, 'Enim et rem occaecati rerum autem voluptatibus voluptatem.', 'Velit quia ut consequatur molestiae. Enim aut aut et quisquam quis. Molestias ea inventore tenetur.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(28, 'Enim veniam doloribus perferendis quia quas.', 'Sed nemo cumque delectus nihil consequatur vel. Dolores nisi corporis quibusdam eos. Facere ducimus ea quia ut amet quidem. Aperiam dolores facilis velit quasi tempora voluptatem.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(29, 'Dicta saepe fugiat dolorem.', 'Eum nesciunt neque autem repudiandae et ipsum delectus. Eum adipisci consequatur quia tenetur similique. Odit perspiciatis sit quas est voluptatibus dolorum illo. Porro cupiditate illum qui eos.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(30, 'Similique praesentium consectetur quidem velit dolores rerum et eum.', 'Reiciendis minus at saepe impedit et. Vel rem molestiae id debitis debitis voluptatem sed. Quasi porro id voluptate nulla qui in totam. Sequi facere alias maxime fuga.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(31, 'Ea ut pariatur sint illo architecto.', 'Rerum omnis at veritatis fugiat. Culpa consequuntur eius sunt sequi ut sed voluptatibus. Tenetur atque animi et quis esse explicabo. Sapiente consectetur ipsum incidunt dolores nisi accusantium.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(32, 'Architecto tempore eum id.', 'Vitae mollitia praesentium necessitatibus rerum qui. Rerum dolor quidem amet eum quis qui. Vitae dolor harum repudiandae. Aliquam eum quis corrupti ut ratione ab quo libero.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(33, 'Et pariatur perspiciatis illum minus ipsum sit.', 'Et repellendus et eaque necessitatibus aperiam quia. Temporibus id qui nesciunt temporibus asperiores. Consequatur maxime repudiandae laudantium consequatur et molestias quo. Nam nihil qui ad ratione deleniti.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(34, 'Non voluptatem reiciendis ab cum ipsa laborum distinctio culpa.', 'Officia qui eius quidem dolore. Ipsum tempore non suscipit neque corrupti quia omnis. Qui consectetur eum et ad dolorum. Reiciendis et ipsa accusantium est doloremque ducimus vero.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(35, 'Voluptas omnis beatae quaerat illo amet molestiae.', 'Dignissimos quo dolores nostrum itaque impedit ad. Vitae molestiae et ipsa repellat inventore inventore et nesciunt. Animi enim et ex culpa. Et et reprehenderit non laborum.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(36, 'Eos rem facere fuga qui recusandae sunt.', 'Velit neque deleniti molestiae aut alias alias. Est fuga reprehenderit cum rerum consequuntur. Nihil animi nostrum sint quia suscipit.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(37, 'Velit at laboriosam qui recusandae fuga.', 'Nam cum quam error qui. Similique totam neque iste aut voluptas sunt. Dolore aliquam voluptatem aspernatur magni. Corporis rem sint iusto. Ullam ut ut magni voluptatem ipsum non.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(38, 'Iure non recusandae sunt itaque aliquam id nulla.', 'Cupiditate harum ut natus ut. Ab repellendus velit ratione magni voluptatum. Facilis aut quis quasi.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(39, 'Odio laborum ipsam cumque hic.', 'Sit ea quis tempora voluptas. Est reprehenderit pariatur omnis. Et voluptatibus et inventore temporibus minima dolores cupiditate.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(40, 'Nesciunt quo eius fuga qui iste.', 'Culpa aliquid neque optio consectetur et exercitationem numquam tenetur. Vitae et est esse vero. Autem ea ullam quo corporis. Mollitia recusandae qui temporibus ea et harum impedit. In at aut minima quis earum.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(41, 'Sit delectus nihil quia accusamus illo delectus.', 'Tempore quo omnis dolores saepe nostrum et repellat. Molestias sit sequi dolores nisi. Eos modi sed ut omnis. Totam voluptas voluptatem voluptatem error quisquam.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(42, 'Rerum facere molestiae natus nobis fugiat est.', 'Ea temporibus eos molestiae illo esse adipisci aliquid sunt. Dolore et debitis eligendi reprehenderit excepturi accusantium. Distinctio consequatur quidem non aliquam ex sunt vel.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(43, 'Reiciendis excepturi itaque in nemo.', 'Qui omnis est cupiditate quo. Nisi perspiciatis recusandae ut aliquid ut in. Labore eum recusandae eveniet aliquam numquam rerum. Sed optio repellat veniam quidem nemo inventore vel.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(44, 'Est libero quis doloribus et corporis qui est iure.', 'Rerum qui optio quaerat dolorem veniam harum. Illo quae quod eius voluptatem eligendi. Excepturi sit unde et doloribus quia vel. Magnam dignissimos deleniti nobis inventore saepe qui corporis cumque.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(45, 'Doloremque id eos ut explicabo veniam repudiandae.', 'Fugiat aliquid amet ut. Necessitatibus nobis cumque blanditiis sint rerum asperiores. Dolores qui totam doloremque ipsa ut quos.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(46, 'Amet reiciendis distinctio reprehenderit molestiae ab optio corrupti dicta.', 'Consequatur magnam itaque nemo non debitis dolore. Laborum sit earum et et.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(47, 'Ipsam officiis dolorem voluptatem est perferendis consectetur rem.', 'Non odio omnis amet debitis ea iste in. Neque eius nulla pariatur blanditiis nihil. Et saepe voluptatibus modi repudiandae sed. Sint adipisci dolorem excepturi et natus.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(48, 'Reiciendis ipsum cumque qui quod accusamus.', 'Culpa possimus et sapiente qui laboriosam modi animi. Aut voluptatem voluptatem eveniet optio. Dolor ad reiciendis amet et occaecati quaerat. Sunt reiciendis tenetur eligendi quasi omnis.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(49, 'Et velit ipsa dolor cumque amet quod temporibus.', 'Voluptas nostrum voluptatum reiciendis nobis eius iusto dolorem. Veritatis officia sint qui. Sit neque sunt quaerat esse doloremque hic totam. Qui commodi suscipit quia et id magni autem.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(50, 'Modi et labore debitis qui dolores iure eligendi.', 'Ut amet sit in optio cupiditate enim. Rerum in aut iusto maxime. Qui ut dignissimos eaque tempore delectus id. Aut eveniet aspernatur nostrum illum.', '2024-04-10 12:11:03', '2024-04-10 12:11:03');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id_role` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id_role`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sit esse blanditiis neque repudiandae.', 'Sunt commodi voluptatem officiis quo deleniti fugiat. Facere aliquid qui voluptatum eos ut rem. Commodi nobis rem ducimus ex et ut ab. Assumenda blanditiis veniam velit minima cupiditate et ut sed.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(2, 'Et in optio voluptas aliquid.', 'Laborum ad maxime delectus beatae voluptatibus. Ipsa possimus et porro cupiditate. Cum esse ipsa voluptatibus architecto velit ut non.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(3, 'Et dignissimos possimus quia quia.', 'Maxime quidem voluptatem quod ut beatae sit reprehenderit velit. Qui et et facilis consequatur atque dolores. Harum ea aut ea id. Est eos vero et quas ex facilis.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(4, 'Consequatur et consequatur ut culpa quod quisquam.', 'Repellat aliquid vel quos quia pariatur adipisci suscipit. Quisquam odit molestias modi et.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(5, 'Ut culpa est consequatur.', 'At sit praesentium voluptatem totam quod dolore. Ipsam ut quidem doloribus est necessitatibus. Eos cupiditate quisquam dolor optio at totam inventore. Saepe quas dignissimos ipsum porro sint libero.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(6, 'Labore officia omnis deserunt quas.', 'Aspernatur vel voluptatibus ipsa ut beatae vitae. Aliquid reprehenderit rerum commodi fuga nam minus.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(7, 'Qui in in non.', 'Iste molestiae magnam a beatae. Amet est ducimus aut eaque nihil. Molestias ducimus et aut odio aut delectus autem.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(8, 'Sed cupiditate quae laborum quam perferendis.', 'At autem veritatis nihil aut odio qui. Dolores ipsam quia qui vel error est. Nam optio dolores debitis incidunt dolores.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(9, 'Optio doloremque et alias voluptas aut ut quis.', 'Doloribus ipsam eaque esse qui et omnis ea ex. Dolorem earum sed laborum molestiae quam dolores sint. Nobis repudiandae sapiente deleniti.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(10, 'Quo aliquam eveniet voluptas inventore impedit fugiat.', 'Esse voluptatum at aliquam. Quisquam itaque quo rem incidunt voluptas voluptatum dignissimos. Eius sed et reiciendis necessitatibus reiciendis ab.', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(11, 'Qui animi ea eos consequatur natus.', 'Maiores sit ut repellat maxime. Nam vitae rerum sapiente. Id modi aperiam qui veniam sed.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(12, 'Qui ut molestiae consequatur minus dicta dolor.', 'Dolore magni animi perferendis odio velit. Non ipsa corporis odio voluptas iure dolorem incidunt. Eveniet quod sunt et quia. Nisi dolorum sit dolorum alias.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(13, 'Qui quis deleniti eos aut voluptatem ullam illum.', 'Quidem eum harum modi aut asperiores. Et et cupiditate sit qui inventore. Culpa aliquam earum quidem optio harum dolorem ut.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(14, 'Sapiente aliquid quo et facilis est dolor qui.', 'Vero sed nihil maxime. Vitae ducimus cumque ut est iure qui dolore quis. Vel et doloribus vel vitae similique.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(15, 'Natus in nihil vitae omnis consequuntur aut sunt.', 'Nesciunt ipsa sint architecto repellat ex natus. Recusandae dignissimos praesentium alias id necessitatibus. Est ipsa placeat tenetur. Labore quisquam dolores vel recusandae placeat voluptatem quia.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(16, 'Aut sint cupiditate voluptatem aut.', 'Laborum ipsa et omnis minus non. Adipisci dolorem quo in molestias adipisci in. Voluptas molestiae consequatur aperiam deleniti voluptas aut ex et.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(17, 'Et deleniti nisi qui quidem ipsum sed.', 'Dicta optio dolorem expedita dolor ex. Praesentium dolorum ratione consequatur incidunt dicta fugiat consequatur harum. Voluptatibus unde incidunt in id tenetur officia.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(18, 'Laborum et quam earum maiores amet magni eum.', 'Qui est molestiae sunt doloribus. Dolor delectus enim repudiandae dicta aut reiciendis. Quo fugit sapiente provident est voluptates quia dolorem. Sunt minima voluptate dolor totam molestiae. Error illo ut est.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(19, 'Blanditiis voluptas et ullam distinctio.', 'Aut repellat eum eos qui ut esse maxime et. Aut harum ipsum aliquid aut nemo quaerat magni. Voluptas omnis omnis architecto eos repudiandae cupiditate facilis et.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(20, 'Est veritatis facere voluptas sequi consequatur deleniti laboriosam.', 'Veritatis debitis possimus suscipit excepturi cupiditate. Beatae vitae fugiat molestiae. Tempora tenetur et ea nisi ad voluptatum eos.', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(21, 'Dicta omnis aliquid est.', 'Iusto et ratione quam nobis sit aut esse. Eius quia id alias rerum. Sapiente modi nisi eveniet animi omnis aut nesciunt. Ipsa unde quis ab est magni. Eaque magnam distinctio explicabo blanditiis.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(22, 'Voluptas autem delectus et architecto ipsa repudiandae et aliquid.', 'Ut occaecati et odit rerum. Sint maiores et in laudantium culpa est sint. Explicabo blanditiis veniam et nulla vel a.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(23, 'Atque eaque explicabo qui nostrum et nobis.', 'Voluptatem recusandae sint officia. Iure praesentium unde quibusdam animi.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(24, 'Dolore molestiae mollitia aut non autem et.', 'Praesentium suscipit animi et magnam nesciunt rerum. Sit possimus et ut ducimus porro nam non.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(25, 'Et est blanditiis et cumque non.', 'Facere qui deleniti architecto qui a. Beatae et qui nobis explicabo est. Sed aut nulla dolore qui assumenda sunt.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(26, 'Ex nulla iste necessitatibus consequatur.', 'Eligendi quia laboriosam eaque est nesciunt sapiente. Qui quia voluptatem sequi dolorum. Placeat earum reiciendis qui laudantium omnis. Voluptates error quae eaque sint non doloribus ex sit.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(27, 'Nam harum nostrum ut est explicabo.', 'Quibusdam neque ut commodi nesciunt vel quo. Et optio tempora assumenda esse impedit ducimus. Doloremque ad sit cumque perspiciatis labore reprehenderit tenetur beatae.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(28, 'Et quae molestiae omnis deleniti omnis.', 'Voluptas iure ex assumenda esse fuga unde qui modi. Praesentium nostrum consequatur rerum atque. Dicta temporibus reprehenderit ipsum quo vero ratione voluptate quis. Veritatis quibusdam iste voluptatem voluptatem mollitia adipisci dicta.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(29, 'Quis doloribus assumenda blanditiis perferendis.', 'Error esse eum pariatur voluptatem sed. Dolor nihil et sed ea cumque eos. Et qui quia voluptas voluptas at nisi. Eaque non soluta et consequatur.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(30, 'Et molestias veritatis vel id.', 'Nihil aut occaecati molestiae est. Ipsam qui aut cum quas. Rerum iste ratione soluta et quo. Autem inventore cumque tempore temporibus maxime voluptas aut.', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(31, 'Eveniet adipisci qui et rerum quod qui provident.', 'Perspiciatis modi reprehenderit et. Iste unde est aspernatur voluptatem. Rerum eum est aliquid optio.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(32, 'Molestiae sunt inventore voluptatum.', 'Id nisi iusto maxime qui. Et totam qui sint eaque commodi sunt. Magni tempore eum reiciendis dolor.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(33, 'Dolor iusto expedita doloribus officiis repellendus aut amet est.', 'Eveniet cum doloribus cum esse et ea. Id odit alias mollitia ipsum debitis fugit. Et qui fugiat voluptas delectus doloremque. Dolores id alias quo asperiores quia dolorem.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(34, 'Omnis tenetur et fuga optio modi aspernatur sed.', 'A sunt exercitationem quo voluptatem ullam. Rerum ipsam non veritatis architecto quia voluptatem rerum. Omnis sed sint assumenda quia et exercitationem magni. A laudantium iste sit nesciunt dolor.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(35, 'Fuga fugit nisi cumque autem.', 'Repellendus laudantium qui maiores consequatur quasi praesentium maxime. Quia iure nulla assumenda aut magni. Rem iste dolorem pariatur qui nemo assumenda nesciunt.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(36, 'Dolor quo doloribus recusandae.', 'Natus consequatur nemo qui eius. Error debitis minus reiciendis quam voluptas qui ut aspernatur. Ut perferendis voluptate omnis consequatur quibusdam.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(37, 'Non modi similique tenetur doloribus corrupti sed reiciendis magni.', 'Sit architecto sit quasi in praesentium beatae. Minima itaque voluptates ipsa aut at dolorum ab. Provident possimus fugit nihil laudantium sit sed sed enim.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(38, 'Vel at aut illo laborum enim.', 'Nam laboriosam dolores nobis pariatur voluptas. Dicta quia provident rerum molestiae temporibus excepturi eum suscipit. Quibusdam impedit voluptates accusamus earum sequi molestiae quod veritatis. Cum molestiae adipisci mollitia a.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(39, 'Quis molestiae in dolor quia nihil consequatur.', 'Impedit eos voluptatem dolorum voluptatem porro ullam quae. Et maxime voluptatem aut hic molestias. Et commodi molestiae quis est est occaecati modi.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(40, 'Maxime beatae aut non.', 'Dolores vero velit pariatur beatae quaerat nisi quis. Dolorum et et sed necessitatibus ut et illum. Placeat cum commodi natus repellat rerum. Quo quis aut consequatur est.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(41, 'Delectus unde tempora neque et doloribus.', 'Suscipit veniam et omnis est. Libero fugiat ipsum non sunt quidem. Et laudantium magni eum eius laudantium. Voluptatem neque rerum veniam consequatur.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(42, 'Impedit quasi est atque porro enim fugiat rerum.', 'Dolor repellat ipsa harum. Similique rem qui eveniet ut enim qui repellendus atque. Totam est magni itaque. Iure minus reprehenderit aspernatur a rerum.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(43, 'Aliquam libero ut sint blanditiis maiores iure natus.', 'Inventore voluptas est vitae. Eveniet aut itaque distinctio vel maiores eos. Et dicta quam minus architecto omnis.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(44, 'Occaecati at quam doloribus sed molestias.', 'Alias velit est aliquid laborum ullam. Neque dolorem ut nobis sint id omnis quo. Id et sapiente minima suscipit pariatur rerum. Illo quas alias consequatur voluptas et ipsum qui.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(45, 'Voluptatum pariatur deserunt dolorum itaque dicta nisi unde quaerat.', 'Est tenetur id dicta suscipit veritatis ut. Aspernatur voluptas aut est deleniti eligendi repellat et voluptatem. Eum dolores in quisquam corporis harum nisi.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(46, 'Tempora sit possimus magnam ducimus sequi.', 'Et dicta ut tenetur consequatur tenetur adipisci. Laborum ut amet nihil quia. Et in minus harum quia velit.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(47, 'Soluta dolorum rerum quo soluta assumenda deserunt quia.', 'Dolore consectetur modi id fuga et. Consectetur iste iusto dolorum dolor nostrum assumenda eligendi. Similique autem id optio voluptates et. Et quia praesentium consequatur iste consequatur occaecati dolores.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(48, 'Voluptatibus necessitatibus sint in ut molestiae molestiae sequi.', 'Omnis hic laborum rerum ipsa blanditiis illo assumenda. Ipsam commodi soluta soluta aut hic. Quisquam maiores dignissimos sed quia facere.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(49, 'Est iste provident ut nihil velit nesciunt.', 'Ex error quis quia. Et non sit quia voluptas voluptatem sit corrupti. Tenetur at et et est repellendus quos eos adipisci. Excepturi dolorem provident quia qui accusamus sapiente. Sed amet ad quis quibusdam.', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(50, 'Qui ut rerum maxime hic sit dolorem.', 'Porro quis quis non illo explicabo. Quo vel odit est quas corporis. Deserunt officia numquam et qui possimus. Quod temporibus non aut recusandae reprehenderit doloremque. Sed architecto necessitatibus quas delectus.', '2024-04-10 12:11:03', '2024-04-10 12:11:03');

-- --------------------------------------------------------

--
-- Structure de la table `twitch`
--

CREATE TABLE `twitch` (
  `id_twitch` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id_type` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id_type`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Merlin Cummerata IV', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(2, 'Kaitlin Conn DDS', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(3, 'Meaghan Vandervort IV', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(4, 'Brenna Graham', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(5, 'Julianne Wolf', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(6, 'Prof. Marshall Kris', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(7, 'Erica Nienow', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(8, 'Rebeka Kovacek', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(9, 'Mr. Eliezer Cummerata I', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(10, 'Devon Spencer', '2024-04-10 12:03:21', '2024-04-10 12:03:21'),
(11, 'Prof. Kaya Morar III', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(12, 'Prof. Weldon Nitzsche DDS', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(13, 'Prof. Rene Miller DDS', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(14, 'Garnet Nitzsche', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(15, 'Mr. Kaden Buckridge II', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(16, 'Corine Harris', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(17, 'Mrs. Natasha Kshlerin I', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(18, 'Adriana Gutmann', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(19, 'Brittany Schimmel', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(20, 'Gonzalo Nicolas', '2024-04-10 12:07:03', '2024-04-10 12:07:03'),
(21, 'Bryce Schmidt IV', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(22, 'Arnaldo Borer', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(23, 'Mr. Jeramie Halvorson PhD', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(24, 'Lizeth Schulist', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(25, 'Clinton Schowalter', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(26, 'Foster Rolfson', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(27, 'Dr. Baby Ernser', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(28, 'Mrs. Earlene Ward', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(29, 'Kevin Hegmann', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(30, 'Anne Ankunding', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(31, 'Mrs. Joanne Sporer', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(32, 'Miss Rosanna Graham Jr.', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(33, 'Allene Beier', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(34, 'Miss Kirsten Dare', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(35, 'Antone Weber', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(36, 'Prof. Brendon Kihn', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(37, 'Dr. Allan Olson', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(38, 'Rubye Kirlin', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(39, 'Felix Feil II', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(40, 'Penelope Medhurst', '2024-04-10 12:10:11', '2024-04-10 12:10:11'),
(41, 'Mr. Guiseppe Gibson', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(42, 'Carmine Mosciski', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(43, 'Caden Collier', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(44, 'Prof. Eva Ryan', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(45, 'Dr. Alberta Gottlieb', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(46, 'Deborah Auer', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(47, 'Roma Hoeger', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(48, 'Jeremie Kshlerin', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(49, 'Lindsey Abernathy', '2024-04-10 12:11:03', '2024-04-10 12:11:03'),
(50, 'Al VonRueden', '2024-04-10 12:11:03', '2024-04-10 12:11:03');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yasmine Osinski', 'bobbie.hessel@example.net', '2024-04-10 12:07:47', '$2y$12$4VuMTK.Doj7v4WO2NtK9kevHiFDCn2jlnatZMYkvm/sTDvdbQFFYq', 'PNuOwFKDIR', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(2, 'Burdette Rohan', 'collier.emely@example.com', '2024-04-10 12:07:47', '$2y$12$4VuMTK.Doj7v4WO2NtK9kevHiFDCn2jlnatZMYkvm/sTDvdbQFFYq', 'KMEObEV3gf', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(3, 'Kyleigh Fisher PhD', 'braden61@example.net', '2024-04-10 12:07:47', '$2y$12$4VuMTK.Doj7v4WO2NtK9kevHiFDCn2jlnatZMYkvm/sTDvdbQFFYq', 'UbqFuHQqyw', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(4, 'Mr. Trent Hermann', 'katlynn.schoen@example.net', '2024-04-10 12:07:47', '$2y$12$4VuMTK.Doj7v4WO2NtK9kevHiFDCn2jlnatZMYkvm/sTDvdbQFFYq', 'rZBfr70hTg', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(5, 'Prof. Rene Medhurst PhD', 'tremblay.howell@example.com', '2024-04-10 12:07:47', '$2y$12$4VuMTK.Doj7v4WO2NtK9kevHiFDCn2jlnatZMYkvm/sTDvdbQFFYq', 't2j4uTS7Va', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(6, 'Dallin Weber I', 'cali28@example.org', '2024-04-10 12:07:47', '$2y$12$4VuMTK.Doj7v4WO2NtK9kevHiFDCn2jlnatZMYkvm/sTDvdbQFFYq', 'Zvv4gJpKie', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(7, 'Xavier Pagac', 'vwalter@example.net', '2024-04-10 12:07:47', '$2y$12$4VuMTK.Doj7v4WO2NtK9kevHiFDCn2jlnatZMYkvm/sTDvdbQFFYq', '5FYzPFD2KO', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(8, 'Dr. Kasandra Kunde', 'fjohnson@example.net', '2024-04-10 12:07:47', '$2y$12$4VuMTK.Doj7v4WO2NtK9kevHiFDCn2jlnatZMYkvm/sTDvdbQFFYq', 'Gj44aZbJCD', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(9, 'Rogelio Hickle', 'friesen.haleigh@example.org', '2024-04-10 12:07:47', '$2y$12$4VuMTK.Doj7v4WO2NtK9kevHiFDCn2jlnatZMYkvm/sTDvdbQFFYq', 'Oywx7eZ5Zs', '2024-04-10 12:07:47', '2024-04-10 12:07:47'),
(10, 'Randal Hills', 'franz.kassulke@example.com', '2024-04-10 12:07:47', '$2y$12$4VuMTK.Doj7v4WO2NtK9kevHiFDCn2jlnatZMYkvm/sTDvdbQFFYq', 'xZjvJZjdWp', '2024-04-10 12:07:47', '2024-04-10 12:07:47');

-- --------------------------------------------------------

--
-- Structure de la table `user_articles`
--

CREATE TABLE `user_articles` (
  `id_user` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE `user_role` (
  `id_user` int(11) NOT NULL,
  `id_right` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id_page`),
  ADD UNIQUE KEY `pages_name_unique` (`name`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`id_right`),
  ADD UNIQUE KEY `rights_name_unique` (`name`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `twitch`
--
ALTER TABLE `twitch`
  ADD PRIMARY KEY (`id_twitch`),
  ADD UNIQUE KEY `twitch_name_unique` (`name`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id_type`),
  ADD UNIQUE KEY `types_name_unique` (`name`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rights`
--
ALTER TABLE `rights`
  MODIFY `id_right` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `twitch`
--
ALTER TABLE `twitch`
  MODIFY `id_twitch` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
