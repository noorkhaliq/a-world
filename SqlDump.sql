/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.21-MariaDB : Database - practice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`practice` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `practice`;

/*Table structure for table `contactus` */

DROP TABLE IF EXISTS `contactus`;

CREATE TABLE `contactus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_replied` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contactus` */

insert  into `contactus`(`id`,`name`,`email`,`phone`,`message`,`is_replied`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Noo','admin12@admin.coms','021232323232','jhjhjhjhj',NULL,NULL,NULL,NULL),
(2,NULL,'amurphy@example.com',NULL,NULL,NULL,NULL,NULL,NULL),
(3,NULL,'june87@example.com',NULL,NULL,NULL,NULL,NULL,NULL),
(4,NULL,'amurphy@example.com',NULL,NULL,NULL,NULL,NULL,NULL),
(5,'Noo','amurphy@example.com','021232323232','dsdsds',NULL,NULL,NULL,NULL),
(6,NULL,'mathilde60@example.com',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(19,'2014_10_12_000000_create_users_table',1),
(20,'2014_10_12_100000_create_password_resets_table',1),
(21,'2019_08_19_000000_create_failed_jobs_table',1),
(22,'2019_12_14_000001_create_personal_access_tokens_table',1),
(23,'2022_05_29_002115_create_pages_table',1),
(24,'2022_05_29_002400_create_services_table',1),
(25,'2022_05_29_002521_create_contactus_table',1),
(26,'2022_05_29_002631_create_settings_table',1),
(27,'2022_05_29_002744_create_slider_table',1);

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pages` */

insert  into `pages`(`id`,`title`,`image`,`description`,`slug`,`type`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'About Us','1654587576.png','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur','about-us','page','2022-06-07 05:44:51','2022-06-07 07:39:36',NULL),
(2,'See Our Video','1654587595.png','many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which','blogs','page','2022-06-07 05:44:51','2022-06-07 07:39:55',NULL);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `services` */

insert  into `services`(`id`,`title`,`image`,`description`,`slug`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'alias et','1654587526.png','Dolore et quasi esse nesciunt neque eius laborum. Enim maxime expedita vel assumenda blanditiis. Dolor quae consectetur omnis ut possimus. Nihil est voluptatem veniam aliquid id. Ipsam sint et ut. Blanditiis molestiae sit rem placeat ipsam quis optio. Error ea totam repellat eum omnis voluptatem quae. Consectetur sequi est rerum illum necessitatibus autem. Non quae est omnis rerum fugiat beatae. Esse eos temporibus dolorum officiis. Omnis aperiam consectetur vel voluptatibus perspiciatis illum est. Vel non ea sint est provident. Necessitatibus aut sint labore soluta labore facere voluptate. Illo amet mollitia quas laudantium expedita quod dolorem. Assumenda explicabo rerum quos sed. Quis itaque omnis rerum aut sunt. Voluptatem ut quibusdam beatae laborum. Quaerat illo et modi optio sed error. Consequatur minima placeat quo dolor iste. Alias praesentium sed eaque officiis sit facilis.','in-tenetur-consequatur','2022-06-07 05:44:51','2022-06-07 07:38:46',NULL),
(2,'recusandae qui','1654587526.png','Rerum velit provident praesentium consequuntur. Eos fuga consequatur repellendus voluptas sunt. Necessitatibus iure reiciendis atque sint repudiandae ea. Eos modi esse beatae et qui et suscipit. Quia voluptas atque eum dolorem dolorum maiores expedita. Eligendi reiciendis quam placeat quas consequatur impedit beatae non. Reiciendis quisquam dolores consequatur consectetur dolorem vitae. Qui sunt ut aperiam. Enim aliquid qui qui. Rem vel a rem. Aut similique ex autem dolorum vero. Possimus ab ipsam ratione error aut. Nesciunt quisquam dolores enim in id. Ratione eveniet quasi deleniti sed dolorem debitis. Quis placeat laborum et iste voluptatem esse. Est asperiores ex aut nesciunt cum soluta quisquam. Cumque deleniti quae minus facere voluptatem harum adipisci quia. Nobis veritatis voluptatem ut unde illum tempora vel. Ex voluptatum ab impedit reprehenderit quas nostrum recusandae. Ipsum pariatur dolor soluta est quia dolores.','corporis-est-vero','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL),
(3,'corrupti maiores','1654587526.png','Dolore odio ratione quis amet. Tempore dolores temporibus natus exercitationem et fugit alias. Qui praesentium ab mollitia possimus expedita corporis. Sapiente dolorum suscipit ullam ex et. Et dignissimos consequatur reiciendis rerum. Pariatur ab sit officia officiis beatae. Id impedit ab aut ut rerum provident. Molestiae ut aperiam assumenda vitae. Atque qui cupiditate voluptas blanditiis est. Doloremque dignissimos eligendi et sed consequatur. Corrupti at itaque dicta velit ipsum. Esse cupiditate rerum porro consequuntur. Sit eveniet ut eaque rerum eveniet quidem. Aut harum maiores et quod. Et quo veritatis eligendi qui qui. Iure vitae sed tempore aspernatur quam quidem. Qui sunt est officia voluptatum. Voluptatem perspiciatis nemo illo consequatur maxime quo dolores est. Rerum hic id repellendus non officiis. Asperiores velit deleniti voluptates qui omnis qui reiciendis.','tenetur-id-ducimus','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL),
(4,'sit est','1654587526.png','Voluptatem adipisci esse et optio aperiam vel et omnis. Assumenda earum aut consequuntur est. Aspernatur et nemo incidunt veritatis et hic delectus. Labore dolor velit et et. Sed molestias eos corporis optio. Distinctio sunt eaque numquam expedita. Ut veritatis veniam amet. Amet perferendis accusantium veritatis earum. Tempore sed eos distinctio accusamus non cum nam. Fugit et officiis numquam alias minima. Aliquam illum et est deleniti iusto corporis similique. Iure sit eum cumque sit voluptatum. Adipisci eaque quis qui nisi debitis sit. Quibusdam voluptatem quia libero. Sunt laboriosam dolorum vitae sunt consequatur vel. Doloribus aliquid porro harum et facilis impedit aspernatur. Provident et non autem facere et quas. Ipsum esse cum doloribus in molestias iste et. Esse nostrum eos doloremque quam. Quidem ut aut earum doloremque.','qui-porro-voluptatem','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL),
(5,'maxime fuga','1654587526.png','Aspernatur ab soluta quisquam esse. Omnis minus ducimus dolor maiores. Quasi quaerat neque ullam esse. Unde sit exercitationem aperiam. Ad vel illo eligendi suscipit est. Mollitia ab molestiae minima ex sit. Incidunt odio voluptates aut quasi. Soluta id fugiat culpa. Maiores omnis enim omnis cumque itaque. Ut repellendus animi enim amet consequatur. Dolor recusandae fugit doloribus ut nisi. Ipsam perferendis aut ea aspernatur. Dolores cumque exercitationem aliquid molestias sequi. Sapiente error accusamus voluptatum temporibus adipisci dolorem labore. Voluptatibus nihil harum aspernatur blanditiis necessitatibus totam. Sit sequi et expedita modi sint velit. Deserunt minus qui quos suscipit tenetur ut. Voluptate suscipit cumque aperiam corporis. Beatae quia beatae exercitationem similique. Minus aperiam et laudantium exercitationem incidunt.','omnis-ipsam-sit','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL),
(6,'quo praesentium','1654587526.png','Ut modi a voluptatem quo libero doloribus. Natus aperiam dignissimos labore voluptas. Voluptatum veniam suscipit natus alias. Minima dolores incidunt architecto minima ipsa ab. Et ducimus vitae sunt voluptatum quia omnis debitis. Necessitatibus sequi quasi quisquam harum nemo eos. Tempore error qui eos ea. Dolorum et nulla nemo et ipsum sit. Voluptatem sunt nemo consectetur laudantium eum et omnis. Animi autem blanditiis ea ut ullam est. Aut quae tempora qui non reiciendis non voluptatem. Excepturi rerum veritatis voluptas natus non ullam beatae. Sed dolores accusantium alias iste sit doloribus qui. Animi repudiandae sit quod libero quia. Itaque placeat eligendi fuga illo corporis qui. Suscipit voluptatum delectus repudiandae fugiat molestias. Quasi amet optio eaque culpa vero. Sint et quaerat at ut. Vel vero assumenda tempore corporis exercitationem magnam. Eos facilis saepe veritatis accusamus excepturi est et.','nihil-eaque-excepturi','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL),
(7,'nam voluptatem','1654587526.png','Quo suscipit enim est. Et velit sunt ea ex est omnis. Est rerum consequatur qui quis. Amet voluptatem ut neque omnis labore. Et doloribus voluptate expedita. Accusantium quidem esse debitis vero quae vel nesciunt. Tempora quisquam laborum sunt at numquam. Voluptas alias sed hic voluptas adipisci dolorem quae. Quia eos voluptates labore rerum ipsum quisquam facere. Voluptatem fugiat esse quidem quidem sequi. Iusto omnis aperiam cupiditate qui mollitia eius in. Aspernatur vitae soluta illum optio consequatur eaque pariatur voluptas. Exercitationem ea quo quia eum. Quia dolore placeat eum sapiente. Beatae corrupti voluptates tenetur corporis optio tenetur harum. Sed sapiente repellat non adipisci molestiae perspiciatis natus. Qui recusandae nostrum delectus voluptatem quia ad. Ipsam ipsa laboriosam occaecati quaerat aliquam sapiente architecto. In vel maiores dolores nostrum consectetur nemo. Aut a sint tenetur quia qui est rem.','non-quo-sit','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL),
(8,'eos nostrum','1654587526.png','Eveniet nisi est ut hic perspiciatis atque velit. Commodi accusamus ut voluptas qui quas et. Quae deleniti eaque inventore consequatur a. Sint amet autem nam. Quos voluptas rerum natus esse. Laboriosam ut deleniti suscipit nulla nihil eos at. Cupiditate laboriosam explicabo dignissimos est consequatur. Suscipit explicabo et error provident velit est dolor accusantium. Ipsam est dolores at quia optio incidunt aut quasi. Enim sequi dicta quas quia laudantium aut dicta sed. Nesciunt earum nemo iusto sit. Itaque animi nisi est quia. Perferendis vero enim omnis esse dolorem ut. Aliquam qui ut ipsam esse. Praesentium optio a veniam dolore et. Fuga id facilis vel omnis. Vel quaerat qui vitae voluptatum deleniti. Iste sint sed velit quia assumenda modi et. Id molestiae asperiores laboriosam unde repudiandae adipisci sint. Vel rem modi nisi ex cumque qui et.','alias-explicabo-quas','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL),
(9,'non ut','1654587526.png','Eos minus enim est. Deleniti quibusdam maxime ratione unde et et iure. Vel ad tenetur aut nihil impedit laudantium dolores. Iure perferendis sint non nemo blanditiis dicta aut eum. Ut nemo ex ea eligendi quia veritatis placeat. Ipsam exercitationem sunt itaque voluptatem quia rerum laudantium ut. Atque eligendi dolores aperiam. Et rem possimus cum corrupti qui esse. Sit optio modi necessitatibus cum. Placeat maiores tenetur dolorem ad quaerat aspernatur qui. Mollitia cumque earum totam ratione cumque voluptatum nobis. Cumque ad nostrum eum architecto voluptas. Quaerat nihil provident reprehenderit natus id natus ipsam temporibus. Dolorum fugit magnam perferendis sit. Quam perferendis error neque sint quia incidunt cum. Nam eveniet et quos consectetur eum id adipisci. Vero molestiae cum pariatur eveniet facilis enim omnis tempora. Ullam facere amet et ipsum facilis quia. Occaecati praesentium quo dolorem quos accusamus voluptas molestiae. Aut totam rerum ut minima.','sit-qui-repudiandae','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL),
(10,'porro odio','1654587526.png','Consectetur ut dolorem qui consequatur molestiae aliquid possimus ratione. Voluptatum laudantium totam in commodi. Sed ipsam libero officiis. Recusandae velit necessitatibus sint ut iure quis minima. Cum corrupti eligendi ex eaque quia voluptatem eius sapiente. Expedita at natus vero doloribus saepe nemo placeat. Repellendus veniam sunt voluptatem delectus enim quia in. Consequatur quas dolor possimus. Enim ducimus tenetur earum at voluptatem. Totam eos sit consequatur provident in. Quos molestiae non et dolor non vel accusamus. Nemo et assumenda veritatis. Nesciunt eum perspiciatis et et. Sit quos maiores voluptas ut et minima voluptas. Est est dolorem qui eius. Qui a totam sit aut consequatur. Voluptates voluptatem possimus dolorum commodi ratione sint ex. Quam neque labore accusamus nisi velit et. Ex dolor molestiae quia perferendis maiores qui alias. Illum qui ea consectetur eos.','ex-et-fugiat','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL);

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

/*Table structure for table `slider` */

DROP TABLE IF EXISTS `slider`;

CREATE TABLE `slider` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `slider` */

insert  into `slider`(`id`,`title`,`description`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'aut dolor','Est repellat illum iste esse itaque incidunt debitis. Quo numquam rerum soluta officiis expedita rerum quas. Sapiente omnis inventore sit asperiores consequatur. Natus autem animi sint sint id est nobis illo.','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL),
(2,'fugiat accusamus','Quasi odit qui tenetur nihil dicta rem necessitatibus neque. Laborum aut nihil quam odio debitis. Rerum rem et doloremque veniam nesciunt. Pariatur rerum nihil omnis quod ullam voluptatum nemo.','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL),
(3,'laboriosam et','Nisi aut ipsam qui esse est rerum mollitia. Quam quo dolorem et ipsam velit. Rerum totam quia laborum odio quis autem libero. Maiores quibusdam assumenda a et est sunt.','2022-06-07 05:44:51','2022-06-07 05:44:51',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Madalyn Stokes','genesis47@example.com','2022-06-07 05:44:50','$2y$10$cEYgY3jQfMpOARjpheVWOOzR2Kgvs2lU1KjhUmJ34clXtb3v0/ory','KCCd7bSKNP','2022-06-07 05:44:51','2022-06-07 05:44:51'),
(2,'Henry Mayert III','ggusikowski@example.net','2022-06-07 05:44:50','$2y$10$OD0lqweNm/7RxhwQ3ZpRbeEJvFQ53FmXdoRqLZYVMc1Lg7rvB6s7S','FVbXd8g4YO','2022-06-07 05:44:51','2022-06-07 05:44:51'),
(3,'Heaven Walsh','ykunze@example.org','2022-06-07 05:44:50','$2y$10$Y3iBv2/rQZo.QIwF6n5GTewVMKJ6BQhIb9rHlujwZ9FQ1/jLUwGgi','CcdVagJ8Xm','2022-06-07 05:44:51','2022-06-07 05:44:51'),
(4,'Maximus Roberts','louie95@example.com','2022-06-07 05:44:50','$2y$10$xaNr1EPatVlD6uouF6QSluyec.THVSDePHtTfCELf7P1aXbaDmSH2','QTNQHsbdUO','2022-06-07 05:44:51','2022-06-07 05:44:51'),
(5,'Miss Prudence Herzog MD','dhamill@example.net','2022-06-07 05:44:50','$2y$10$tFFtXm0hUyBaCbDT0gBf7eyD60raj.OP/7e83Xso2yqSFfKo7X4fm','bt3OZfY5xm','2022-06-07 05:44:51','2022-06-07 05:44:51'),
(6,'Bulah Bahringer','christiansen.demarcus@example.net','2022-06-07 05:44:50','$2y$10$ZVltdXDPm2kSoMOnN2qv0OMbBZzsm8Qz4XnQAUZOAbJTPrtkhsOH.','6vyfM0G72w','2022-06-07 05:44:51','2022-06-07 05:44:51'),
(7,'Prof. Mariam Nienow DDS','lillie10@example.org','2022-06-07 05:44:50','$2y$10$/pcOlYhZiDgHRN5ruw5S4OExyorw10uNwD4Hd5R9cKj1JIKNmMXcm','kkW7asd1E2','2022-06-07 05:44:51','2022-06-07 05:44:51'),
(8,'Herbert Kihn IV','marvin.milo@example.com','2022-06-07 05:44:50','$2y$10$51g2GG3HvukeZQaM/miaY.lfq4NMxdFysAeBzpxL5SmRVWp5KV2Rm','GKNTIN9zde','2022-06-07 05:44:51','2022-06-07 05:44:51'),
(9,'Domenic Sawayn','fwehner@example.org','2022-06-07 05:44:50','$2y$10$lzJDlZe0ZHV/g/1IUxxQiOyGU7ecy4wQ3QrMLkQaYMoSQKk7lTa8i','pU8x7SwWYn','2022-06-07 05:44:51','2022-06-07 05:44:51'),
(10,'Rita Kunze','bridgette.parker@example.com','2022-06-07 05:44:50','$2y$10$bxCIrJ396Ah1qHcRj3qhGuOwJtDfhzjSK5RclWjTq4i1rIydTWOJO','zE8kYxzvDu','2022-06-07 05:44:51','2022-06-07 05:44:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
