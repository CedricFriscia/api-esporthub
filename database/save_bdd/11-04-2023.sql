-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  jeu. 11 avr. 2024 à 12:12
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `createArticle` (IN `p_name` VARCHAR(255), IN `p_content` TEXT)  BEGIN
    INSERT INTO articles (name, content, created_at) 
    VALUES (p_name, p_content, NOW());
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `createLink` (IN `p_url` TEXT)  BEGIN
    INSERT INTO links (url, created_at) VALUES (p_url, NOW());
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `createPage` (IN `p_name` VARCHAR(255), IN `p_header` TEXT, IN `p_description` TEXT)  BEGIN
    INSERT INTO pages (name, header, description, created_at) VALUES (p_name, p_header, p_description, NOW());
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `createRight` (IN `p_name` VARCHAR(255), IN `p_description` TEXT)  BEGIN
    INSERT INTO rights (name, description, created_at) VALUES (p_name, p_description, NOW());
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `createRole` (IN `p_name` VARCHAR(255), IN `p_description` TEXT)  BEGIN
    INSERT INTO roles (name, description, created_at) VALUES (p_name, p_description, NOW());
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `createType` (IN `p_name` VARCHAR(255))  BEGIN
    INSERT INTO types (name,created_at) VALUES (p_name, NOW());
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `createUser` (IN `p_name` VARCHAR(255), IN `p_email` TEXT, IN `p_password` VARCHAR(255))  BEGIN
    INSERT INTO users (name, email, password, created_at) VALUES (p_name, p_email, p_password, NOW());
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getArticles` ()  BEGIN
  SELECT * FROM articles;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getLinks` ()  BEGIN
  SELECT * FROM links;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOneArticle` (IN `id` INT)  BEGIN
  SELECT * FROM articles WHERE articles.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOneLink` (IN `id` INT)  BEGIN
  SELECT * FROM links WHERE links.id_link = id;
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
(1, 'Cumque pariatur delectus qui praesentium id.', 'Commodi praesentium doloribus deserunt velit laudantium cum libero vero. Sit aperiam vero pariatur sequi suscipit. Natus quia qui aut omnis. Eum doloremque nemo nihil eius ducimus.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(2, 'Et qui sint laborum quos ut error.', 'Eos eveniet modi quo sed ipsa eos ad ratione. Accusamus error excepturi voluptatem quidem. Et voluptatem eum ab nihil quod.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(3, 'Neque omnis dolores vitae laboriosam omnis quia.', 'Ut laborum et quisquam doloremque delectus. Ut maiores commodi id rerum. Quibusdam quis est eaque rerum et ab. Dolore molestiae alias facere vero.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(4, 'Ea et quam dolores fugiat harum doloribus.', 'Autem qui iste esse. Illum laudantium dolorem id perferendis facere. Sit sunt minima suscipit incidunt modi. Dicta deleniti expedita et quis quos perspiciatis.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(5, 'Ea necessitatibus sed blanditiis.', 'Et eius debitis enim architecto quibusdam quo pariatur est. Magni adipisci et qui sint. Neque et nesciunt et reiciendis. Dolorem consequatur quia expedita sint. Amet sed quis saepe voluptatem nulla.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(6, 'Velit voluptas dolores optio saepe esse.', 'Sapiente ratione nesciunt et incidunt temporibus nesciunt. Sit autem ut aut saepe. In molestiae nulla animi quia. Enim ipsam quasi quidem reiciendis voluptatibus eius dolorum.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(7, 'Expedita voluptas at doloribus eos.', 'Aut esse rerum magnam harum velit aut. Id quidem veritatis quia nihil iste odit numquam. Quia iusto rerum quos qui cupiditate. Molestiae sunt minus qui fugit voluptatem nihil. Delectus a sit possimus velit.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(8, 'Et dolorem iure eos recusandae.', 'Sint debitis id dignissimos quia. Id molestiae sunt enim aut. Quam et occaecati dolores similique quam.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(9, 'Omnis soluta occaecati quo officia repellendus dignissimos velit.', 'Voluptatem enim odit qui ratione sunt eligendi. Autem cumque voluptatem commodi iusto vero.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(10, 'Occaecati nobis aut quas.', 'Autem repellat cumque sequi numquam reprehenderit beatae. Itaque blanditiis non ad et saepe occaecati. Voluptas et illo quis in molestiae. Fugit illum dolorem perspiciatis vel ipsam facilis.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(11, 'Quos harum numquam incidunt quo dignissimos repellendus iste nisi.', 'Qui quia voluptate eos similique quidem tempora. Voluptas quas optio possimus. Adipisci aut tempora nihil eos minus. In dolorem ipsum fugit aut sed fuga.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(12, 'Iste excepturi iusto hic officia.', 'Quis quod voluptas eum autem rerum dolorem. Fuga asperiores eos delectus vel. Deserunt est fugiat esse veniam rerum aperiam qui repellendus. Non porro ipsum perferendis voluptatibus dolorem.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(13, 'Ipsam ipsa autem dolores quam reiciendis iusto.', 'Dicta officiis est dolores aut unde ut esse suscipit. Qui eum voluptatem qui earum quam nemo esse. Ut sed et eos corrupti.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(14, 'Quia veniam est eius nulla maiores.', 'Assumenda commodi iste velit maiores. Expedita aut quos et cumque optio esse eligendi. Deserunt aut at ea voluptas nemo corrupti.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(15, 'Consequuntur est voluptatem et.', 'Dolorum voluptatem repellendus dolores autem atque totam. Id praesentium vel sequi cupiditate dolorem voluptas. Ut labore reprehenderit qui minus laborum porro rem. Sapiente culpa sed ipsum libero.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(16, 'Ab iure id aliquid animi est quaerat.', 'Rem amet quasi suscipit velit mollitia consectetur aliquid. Odit aut blanditiis sed. Beatae nisi sunt eum ut.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(17, 'Corrupti sed ea quaerat provident hic ratione mollitia voluptatem.', 'Et sunt repellat praesentium fugit. Recusandae quam quam ad ullam molestiae quo. Porro iusto ut fugit voluptatem quis et.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(18, 'Debitis eos impedit et distinctio reiciendis recusandae nihil quaerat.', 'Qui dolor repellat officiis aliquid debitis natus aliquid in. Eum quia veritatis deleniti doloribus. Dolorem eos et voluptas tempore culpa natus fugit perspiciatis.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(19, 'Et ut totam sequi sapiente aspernatur quos.', 'Accusantium assumenda ea tenetur libero magni assumenda. Dicta quidem velit blanditiis quia ducimus non. Blanditiis provident voluptatem enim et. Eaque dolorem dicta saepe unde maiores voluptas sed.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(20, 'Consequatur facilis non inventore voluptatem dolor ut.', 'Est modi natus dolores excepturi. Accusamus in sunt consequatur est nesciunt distinctio. Et et vitae aliquid ipsam modi adipisci. Molestias facere maxime laboriosam in.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(22, 'M8 champion', 'Super champion de fou', '2024-04-11 11:43:03', '2024-04-11 11:44:49');

--
-- Déclencheurs `articles`
--
DELIMITER $$
CREATE TRIGGER `update_article_updated_at` BEFORE UPDATE ON `articles` FOR EACH ROW BEGIN
    SET NEW.updated_at = NOW();
END
$$
DELIMITER ;

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
-- Structure de la table `links`
--

CREATE TABLE `links` (
  `id_link` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `links`
--

INSERT INTO `links` (`id_link`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Selena Walter', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(2, 'Prof. Ray Abernathy DDS', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(3, 'Marguerite Johnston', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(4, 'Aracely Frami', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(5, 'Miss Daisy Kub III', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(6, 'Alicia Davis Sr.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(7, 'Jaime Bednar', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(8, 'Dr. Nelle Brekke II', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(9, 'Bethel Parisian', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(10, 'Joaquin Johns', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(11, 'https://twitch.tv/tazem', NULL, NULL),
(12, 'http::/lesitedefou.fr', '2024-04-11 11:48:56', '2024-04-11 11:50:01');

--
-- Déclencheurs `links`
--
DELIMITER $$
CREATE TRIGGER `update_links_updated_at` BEFORE UPDATE ON `links` FOR EACH ROW BEGIN
    SET NEW.updated_at = NOW();
END
$$
DELIMITER ;

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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2024_04_09_072839_esporthub', 1);

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
(1, 'Pariatur saepe voluptas qui ut sunt culpa.', 'Nisi quis autem molestiae officiis nesciunt repellat non.', 'Non numquam reiciendis est facilis autem. Illo placeat a rerum ratione quasi omnis est. Itaque voluptates est neque et quod vitae. Ut reiciendis qui iste delectus itaque sint.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(2, 'Sunt minima numquam est ducimus.', 'Magni omnis eos et optio.', 'Fuga a nostrum natus saepe quis. Quia dolor beatae mollitia quisquam eos autem.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(3, 'Facilis non quas quae sit adipisci.', 'Debitis ullam excepturi quidem fugit.', 'Aut libero aut ut quos soluta. Et sit sunt qui illum vitae ipsum occaecati esse. Qui tempora mollitia at veritatis quia nulla quisquam.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(4, 'Consectetur sint commodi dignissimos consequatur enim quaerat nisi.', 'Quasi facere ex ut.', 'Ex aspernatur mollitia tenetur sint. Quidem explicabo odit aut est. Tempora autem quas veritatis blanditiis inventore aut. Vero quas delectus facilis et ut qui quos.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(5, 'Ducimus voluptas non ab magni quisquam officiis quasi distinctio.', 'Sed reiciendis aut aliquid qui quia fuga quae.', 'Maxime quidem quis voluptatum autem. Quibusdam officiis voluptatem maxime voluptas. Fugit aut sed facilis quis error.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(6, 'Molestiae doloremque aut quasi expedita tenetur qui sint.', 'Dolores itaque molestias facilis unde delectus iste autem.', 'Nihil laborum aut totam maxime similique. Quo non odit aut tempora.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(7, 'Temporibus occaecati at fugiat.', 'Harum ut quos deleniti occaecati quidem.', 'Modi delectus nihil impedit itaque necessitatibus qui. Voluptates vero modi quo quas iusto ea.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(8, 'Qui qui beatae molestiae ea debitis.', 'Natus molestias voluptatem eius.', 'Laudantium voluptatum facilis voluptatem unde hic et deserunt ut. Sed voluptatem id qui et voluptate quos. Incidunt quaerat rerum earum.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(9, 'Sunt culpa reiciendis nemo ratione saepe et.', 'Possimus beatae odit asperiores assumenda repellat praesentium.', 'Possimus est ea et et voluptatum. Ut est ut nihil rerum. Nobis qui non rerum autem dignissimos ipsum.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(10, 'Mollitia neque reprehenderit sapiente vitae quo.', 'Fuga in ab amet quia est.', 'Inventore voluptatibus tempore et harum corporis. Fugit omnis perspiciatis autem consequuntur aliquam quis eum. Quaerat quas a quia expedita esse.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(11, 'Mollitia aut voluptate quia occaecati modi.', 'Labore fugiat rem blanditiis et saepe.', 'Voluptatem molestiae ipsum omnis placeat numquam eos eum. Id quia placeat ratione odio et voluptatum non.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(12, 'Qui aut tempore quos aut doloremque architecto.', 'Rerum cumque voluptate quod tempore repellendus.', 'Architecto dolores aut pariatur error accusamus omnis voluptatem amet. Porro adipisci et fugiat ad sunt. Illum omnis iusto exercitationem consequatur dignissimos nihil dolores totam. Qui ex cum itaque qui aut accusantium eveniet.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(13, 'Praesentium molestiae pariatur veritatis ad voluptas ab.', 'Ut ex quae sint repellat earum ad quaerat.', 'Eos optio doloremque ipsam aut quisquam. Provident nam officia voluptatum iure. Sapiente deserunt mollitia porro est dolores nesciunt.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(14, 'Ullam ex ut ullam unde perspiciatis quod.', 'Quis laborum ut consequuntur.', 'Velit est cupiditate est esse iste. Ut fugiat sequi omnis sint vero. Repellendus dignissimos id voluptatem harum iusto quia. Quibusdam illum eum quae itaque eum labore.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(15, 'Est ex et non tenetur.', 'Esse veniam labore necessitatibus velit aspernatur.', 'Nihil magnam ipsa hic dolor. Non aut ut nisi ad veniam reprehenderit ducimus. Inventore alias quibusdam ipsum. Sed enim dolorem sunt molestias modi.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(16, 'Accusamus reprehenderit consequatur fugiat qui reprehenderit delectus sint.', 'Ut earum modi itaque ex officia voluptate vero.', 'Ipsum tempore dignissimos nihil itaque. Nobis quis sed aut et nihil quae dolorum. Voluptas beatae ad architecto. Ut fugiat est repellat. Voluptas vel ut deserunt incidunt quod.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(17, 'Ut pariatur dolorem velit optio.', 'Odio animi doloremque ratione reiciendis sunt.', 'Iure magni aperiam voluptatem provident consequatur. Dolores dicta explicabo eligendi odit officia. Nesciunt impedit autem autem.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(18, 'Voluptatem labore mollitia suscipit dignissimos reprehenderit ex.', 'Nostrum vitae totam delectus exercitationem dolorem ad quia est.', 'Voluptas quis quidem ullam corrupti nemo incidunt. Nobis necessitatibus distinctio deleniti quis et eum necessitatibus. Necessitatibus qui quia voluptatibus. Quibusdam sit impedit quo voluptatem.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(19, 'Consequatur voluptatem rem consequatur asperiores voluptate necessitatibus autem.', 'Aut est quo nihil molestiae.', 'Voluptatem voluptas soluta doloremque. Fuga ut libero est tempora et itaque quas. Nostrum voluptatem nulla voluptatem laboriosam qui sed asperiores.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(20, 'Magni possimus cum id.', 'Consequuntur molestiae nihil quis fuga itaque rem.', 'Sunt repudiandae sit perspiciatis aliquam et qui et. Et at sed dolore asperiores animi. Quas ut placeat error. Et qui a nesciunt voluptas enim. Porro magni exercitationem tempora voluptas.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(21, 'vitality', 'V FOR VICTORY', 'Structure pro d\'esport', '2024-04-11 11:56:24', '2024-04-11 11:56:43');

--
-- Déclencheurs `pages`
--
DELIMITER $$
CREATE TRIGGER `update_pages_updated_at` BEFORE UPDATE ON `pages` FOR EACH ROW BEGIN
    SET NEW.updated_at = NOW();
END
$$
DELIMITER ;

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
(1, 'Facilis praesentium impedit adipisci deserunt neque.', 'Illum et sint assumenda quae explicabo a.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(2, 'Porro inventore ut qui iure officia ut omnis tempore.', 'Ipsa omnis rerum architecto quia debitis quasi.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(3, 'Sed consequuntur assumenda iusto et dolor mollitia aut.', 'Placeat explicabo dignissimos possimus qui.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(4, 'Consectetur tempore modi delectus libero rerum.', 'Sunt totam recusandae sint et quae soluta.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(5, 'Nihil magnam cupiditate harum quibusdam cumque.', 'Qui distinctio ut est optio ratione.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(6, 'Suscipit vitae doloribus occaecati ea.', 'Dolor sed magni exercitationem voluptatem qui laudantium impedit.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(7, 'Sint odio maiores ut odio autem perferendis quo distinctio.', 'Ipsum eligendi dolor maiores vero.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(8, 'Accusantium aliquam dolorem recusandae ut ipsum.', 'Nobis repudiandae rerum perferendis numquam.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(9, 'Veniam inventore in dicta architecto velit.', 'Id aut impedit ipsam dolor expedita et perferendis.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(10, 'Officiis aspernatur aut suscipit optio eaque.', 'Alias ut ut nesciunt ipsum omnis.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(11, 'Aut excepturi illo sit delectus voluptates quaerat.', 'A corrupti voluptatem voluptatem est quod et voluptatem et.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(12, 'Quibusdam labore nemo architecto necessitatibus maiores.', 'Provident vero in placeat laborum.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(13, 'Officia consequatur eos maiores aliquam blanditiis.', 'Consequatur sed excepturi hic dolore ut et velit.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(14, 'Nihil molestiae omnis veritatis.', 'Rerum pariatur autem ut et.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(15, 'Fugiat nisi consequatur temporibus et possimus ut non.', 'Consequatur sint nesciunt enim explicabo esse quia facilis unde.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(16, 'Voluptate non ut dicta.', 'Ullam possimus quibusdam qui nemo deserunt et.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(17, 'Autem maiores illo omnis vel.', 'Non veniam veritatis sapiente sapiente optio nobis.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(18, 'Sunt nam ea atque reiciendis odio delectus.', 'Voluptatum vel mollitia odio modi deserunt.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(19, 'Velit est consequuntur assumenda quidem temporibus enim.', 'In in voluptates molestias repellat non consectetur alias libero.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(20, 'Non non rem nisi aut nam quae minus tempora.', 'Molestiae aut aut ut autem repudiandae atque in.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(21, 'test', 'testdede', '2024-04-11 11:58:50', '2024-04-11 11:59:02');

--
-- Déclencheurs `rights`
--
DELIMITER $$
CREATE TRIGGER `update_right_updated_at` BEFORE UPDATE ON `rights` FOR EACH ROW BEGIN
    SET NEW.updated_at = NOW();
END
$$
DELIMITER ;

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
(1, 'Autem ratione sit omnis id.', 'Quod autem itaque impedit consequatur optio earum. Iure officia recusandae accusantium qui molestias. Aut reiciendis consequatur atque odit.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(2, 'Qui velit eveniet facilis a magni similique ab.', 'Occaecati voluptas non commodi adipisci ut dignissimos nostrum eos. Accusantium tempora vel autem maxime fuga iste mollitia. Eaque illo alias et et corporis quidem temporibus. Reprehenderit at sed iusto et quasi illo eos.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(3, 'Voluptatem eligendi tempore ut quisquam eligendi unde.', 'Nihil voluptates voluptatem sapiente qui ea. Culpa eum cupiditate quisquam sint consequatur laboriosam dolores. Possimus voluptates eum animi est doloremque doloribus soluta nemo.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(4, 'Quia laboriosam ducimus sed aut eos.', 'Accusamus deleniti possimus quis exercitationem non eaque autem. Dolores omnis rerum voluptatum. Necessitatibus nobis architecto dolorem sit sed sed.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(5, 'Nisi quaerat omnis minima dolore est.', 'Minima ipsa sunt ut quod velit. Doloribus quod et eum voluptatem. Quam praesentium sunt quam. Ullam at magnam exercitationem sunt.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(6, 'Excepturi impedit ut magni ea qui quia.', 'Repudiandae atque saepe optio impedit illo. Sed tempore omnis sit esse maxime assumenda ut. Neque ut quia assumenda ut ea ut eius.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(7, 'Ullam quis repudiandae architecto aut et mollitia quam.', 'Et sit enim quis eos delectus iure suscipit. Sed sed quis neque libero quae.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(8, 'Ea tenetur alias eos ea ut porro natus mollitia.', 'Voluptas nam quia veritatis nam quia ut perspiciatis. Quis et eveniet dolorum quod consequatur adipisci aspernatur maiores. Sapiente dolorem architecto quam facere quas iure dolorem qui. Ea ex error minus recusandae deserunt.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(9, 'Autem voluptatem et ipsam debitis sit veniam rerum.', 'Quaerat necessitatibus et blanditiis est accusantium non error recusandae. Aliquid consequuntur velit voluptatibus. Optio eum sint temporibus.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(10, 'Ea repellendus magni dolore iste facilis autem perspiciatis.', 'Aliquid odio repellat eveniet veritatis quia voluptate. Nesciunt ut omnis rerum. Tempore rerum nobis sed dolores commodi. Est non qui rerum sint placeat ullam.', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(11, 'Amet sequi aperiam voluptate at.', 'Autem vel voluptatem non. Hic qui et id et perspiciatis at qui. Deserunt consequuntur exercitationem dolorem corporis soluta ut.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(12, 'Rerum ad quia excepturi natus.', 'Eum voluptas odio in non aspernatur. Fuga aut cupiditate voluptatem laboriosam.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(13, 'Explicabo dicta blanditiis pariatur quisquam.', 'Est dolorem suscipit ullam ab error. Impedit porro iure harum. Nam dolorem atque at nostrum est. Inventore qui consequatur nesciunt rerum.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(14, 'Facilis voluptate facilis in et cumque ea at.', 'Alias voluptatem impedit ut enim. Omnis quo sint explicabo aut iure qui ea. Soluta nam impedit eum sint. Labore sit enim ipsa minima aut.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(15, 'Sit ut sunt architecto aliquid aut quis velit.', 'Alias est atque harum. Est consequatur eos culpa officiis id rem tenetur. Quidem consequuntur aut beatae doloremque hic. Optio deserunt voluptas eveniet fuga ducimus et.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(16, 'Exercitationem a non et quam corrupti eius sint.', 'Et sunt quia aut sed non alias porro. Id voluptatem deserunt labore eligendi itaque quod consequatur. Dignissimos omnis maxime magnam nesciunt neque sint tempora. Ipsa sint est facilis est et nulla.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(17, 'Hic aliquid animi voluptatibus illum.', 'Ullam minima voluptatem laudantium repellendus molestias animi. Rerum cupiditate delectus blanditiis eius nostrum in. Id id sed est velit facilis non. Asperiores debitis officiis optio vel distinctio itaque.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(18, 'Unde alias voluptas corrupti assumenda.', 'Omnis est optio quasi. Voluptatem possimus qui corrupti aspernatur sit rerum explicabo. Voluptates nihil non porro veniam est. Est natus sed nostrum ratione odit facilis.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(19, 'Hic dicta blanditiis atque optio.', 'Iure blanditiis error corporis qui officia cum. Dolor accusamus molestias animi sed. Amet sunt molestiae eligendi libero molestiae non. Expedita repudiandae velit eveniet architecto sit.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(20, 'Id est voluptate saepe.', 'Possimus velit ad iure quisquam. Corrupti architecto temporibus saepe animi. Deleniti iure quas consequuntur rerum ab ut a.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(21, 'cédric', 'équivalent d\'un dieu supreme', '2024-04-11 12:02:01', '2024-04-11 12:02:28');

--
-- Déclencheurs `roles`
--
DELIMITER $$
CREATE TRIGGER `update_roles_updated_at` BEFORE UPDATE ON `roles` FOR EACH ROW BEGIN
    SET NEW.updated_at = NOW();
END
$$
DELIMITER ;

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
(1, 'Trisha Effertz', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(2, 'Maudie Keebler', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(3, 'Elise Powlowski', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(4, 'Mrs. Thalia Runolfsdottir I', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(5, 'Alejandrin Cassin', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(6, 'Kyla Johns', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(7, 'Zachariah Kris', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(8, 'Patsy Skiles', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(9, 'Miss Ova Brakus', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(10, 'Lola Hegmann', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(11, 'Mazie Dibbert IV', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(12, 'Ronny Wunsch', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(13, 'Kobe Little', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(14, 'Dr. Arch Cremin', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(15, 'Miss April Price Jr.', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(16, 'Rodrigo Maggio DVM', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(17, 'Mr. Marcelo Herzog', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(18, 'Ezequiel Wintheiser', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(19, 'Daryl Nicolas', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(20, 'Miss Ruby Bode IV', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(21, 'Structure PRO', '2024-04-11 12:04:41', '2024-04-11 12:04:57');

--
-- Déclencheurs `types`
--
DELIMITER $$
CREATE TRIGGER `update_types_updated_at` BEFORE UPDATE ON `types` FOR EACH ROW BEGIN
    SET NEW.updated_at = NOW();
END
$$
DELIMITER ;

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
(1, 'Mandy Crooks', 'ralph82@example.org', '2024-04-11 07:07:15', '$2y$12$2Qlr9uaDN0wwHE4Wb7WwCeHxbunqABXpNtFcQx6muzZ.L5DpWnfRy', 'B91f6OCyFQ', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(2, 'Isadore Koepp', 'demetris02@example.net', '2024-04-11 07:07:15', '$2y$12$2Qlr9uaDN0wwHE4Wb7WwCeHxbunqABXpNtFcQx6muzZ.L5DpWnfRy', 'bJrnGT13KK', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(3, 'Vincent Hermiston', 'izabella.hagenes@example.net', '2024-04-11 07:07:15', '$2y$12$2Qlr9uaDN0wwHE4Wb7WwCeHxbunqABXpNtFcQx6muzZ.L5DpWnfRy', 'trlVyJ0cVJ', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(4, 'Destin Little MD', 'clementina61@example.com', '2024-04-11 07:07:15', '$2y$12$2Qlr9uaDN0wwHE4Wb7WwCeHxbunqABXpNtFcQx6muzZ.L5DpWnfRy', 'q6H2G265A7', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(5, 'Salvatore Sipes', 'quitzon.harvey@example.net', '2024-04-11 07:07:15', '$2y$12$2Qlr9uaDN0wwHE4Wb7WwCeHxbunqABXpNtFcQx6muzZ.L5DpWnfRy', 'G0alh2otP9', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(6, 'Maryam Hayes', 'cshanahan@example.com', '2024-04-11 07:07:15', '$2y$12$2Qlr9uaDN0wwHE4Wb7WwCeHxbunqABXpNtFcQx6muzZ.L5DpWnfRy', 'KeSdPhmLQY', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(7, 'Orlando Schowalter MD', 'conn.emile@example.com', '2024-04-11 07:07:15', '$2y$12$2Qlr9uaDN0wwHE4Wb7WwCeHxbunqABXpNtFcQx6muzZ.L5DpWnfRy', 'Q4afPAcaqT', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(8, 'Mossie Herman', 'cartwright.haylee@example.net', '2024-04-11 07:07:15', '$2y$12$2Qlr9uaDN0wwHE4Wb7WwCeHxbunqABXpNtFcQx6muzZ.L5DpWnfRy', 'TQnmOEeCso', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(9, 'Korbin Beahan', 'gillian.nikolaus@example.com', '2024-04-11 07:07:15', '$2y$12$2Qlr9uaDN0wwHE4Wb7WwCeHxbunqABXpNtFcQx6muzZ.L5DpWnfRy', 'II9yibkfXT', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(10, 'Dr. Therese Koelpin', 'wabshire@example.com', '2024-04-11 07:07:15', '$2y$12$2Qlr9uaDN0wwHE4Wb7WwCeHxbunqABXpNtFcQx6muzZ.L5DpWnfRy', 'ng3YNg5qt8', '2024-04-11 07:07:15', '2024-04-11 07:07:15'),
(11, 'Narciso Ortiz', 'esmeralda79@example.com', '2024-04-11 07:10:39', '$2y$12$T2DditdW6KJ.LFlbtZDMSeBRtxzXHj3TEc3pMvY.W8T/26az.sALi', '8U3jwQfM7l', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(12, 'Dr. Ruthe Heidenreich Jr.', 'lspencer@example.com', '2024-04-11 07:10:39', '$2y$12$T2DditdW6KJ.LFlbtZDMSeBRtxzXHj3TEc3pMvY.W8T/26az.sALi', '8zQd9FraSu', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(13, 'Kenna Zboncak', 'santina.kreiger@example.net', '2024-04-11 07:10:39', '$2y$12$T2DditdW6KJ.LFlbtZDMSeBRtxzXHj3TEc3pMvY.W8T/26az.sALi', 'ohQZ9RMOWM', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(14, 'Gabriella Gusikowski III', 'johnpaul48@example.com', '2024-04-11 07:10:39', '$2y$12$T2DditdW6KJ.LFlbtZDMSeBRtxzXHj3TEc3pMvY.W8T/26az.sALi', 'rjuDYy7GIg', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(15, 'Leta Schneider', 'hammes.devonte@example.net', '2024-04-11 07:10:39', '$2y$12$T2DditdW6KJ.LFlbtZDMSeBRtxzXHj3TEc3pMvY.W8T/26az.sALi', 'fbd7w37IIt', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(16, 'Priscilla Harvey DVM', 'farrell.johanna@example.com', '2024-04-11 07:10:39', '$2y$12$T2DditdW6KJ.LFlbtZDMSeBRtxzXHj3TEc3pMvY.W8T/26az.sALi', 'Zf4a8OoT68', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(17, 'Dr. Burnice Jones PhD', 'bailey.bria@example.com', '2024-04-11 07:10:39', '$2y$12$T2DditdW6KJ.LFlbtZDMSeBRtxzXHj3TEc3pMvY.W8T/26az.sALi', '9xNlS56gOS', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(18, 'Kale Stehr', 'hsenger@example.com', '2024-04-11 07:10:39', '$2y$12$T2DditdW6KJ.LFlbtZDMSeBRtxzXHj3TEc3pMvY.W8T/26az.sALi', 'sXE3ZhOSue', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(19, 'Loraine Dach', 'kessler.maverick@example.com', '2024-04-11 07:10:39', '$2y$12$T2DditdW6KJ.LFlbtZDMSeBRtxzXHj3TEc3pMvY.W8T/26az.sALi', 'P3Vg9C5gyq', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(20, 'Prof. Rickie Wiza', 'moen.isac@example.net', '2024-04-11 07:10:39', '$2y$12$T2DditdW6KJ.LFlbtZDMSeBRtxzXHj3TEc3pMvY.W8T/26az.sALi', '1sf3Mf35rp', '2024-04-11 07:10:39', '2024-04-11 07:10:39'),
(21, 'NEO', 'the@one.matrix', NULL, 'la matrice est universel', NULL, '2024-04-11 12:09:42', '2024-04-11 12:10:27');

--
-- Déclencheurs `users`
--
DELIMITER $$
CREATE TRIGGER `update_user_updated_at` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
    SET NEW.updated_at = NOW();
END
$$
DELIMITER ;

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
-- Index pour la table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id_link`),
  ADD UNIQUE KEY `links_url_unique` (`url`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `links`
--
ALTER TABLE `links`
  MODIFY `id_link` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rights`
--
ALTER TABLE `rights`
  MODIFY `id_right` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
