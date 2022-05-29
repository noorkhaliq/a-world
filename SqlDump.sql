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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contactus` */

insert  into `contactus`(`id`,`name`,`email`,`phone`,`message`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Noor','admin@admin.com','021232323232','assasas',NULL,NULL,NULL),
(2,'Noor','admin@admin.com','021232323232','wsasasa',NULL,NULL,NULL),
(3,'Noor','admin@admin.com','021232323232','qsasas',NULL,NULL,NULL),
(4,'Noor','admin12121@admin.com','021232323232','asdjasdfhajf',NULL,NULL,NULL),
(5,'Kha  Gyulasjd','admin12121@admin.com','232323232','sdfsfsfds',NULL,NULL,NULL),
(6,'Noor','admin12@admin.com','021232323232','asasas',NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2022_05_29_002115_create_pages_table',1),
(6,'2022_05_29_002400_create_services_table',1),
(7,'2022_05_29_002521_create_contactus_table',1),
(8,'2022_05_29_002631_create_settings_table',1),
(9,'2022_05_29_002744_create_slider_table',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pages` */

insert  into `pages`(`id`,`title`,`image`,`description`,`slug`,`type`,`created_at`,`updated_at`,`deleted_at`) values 
(3,'About Us','1653788439.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','about-us','page','2022-05-29 01:38:06','2022-05-29 01:40:39',NULL),
(4,'See Our Video','1653788456.png','many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which','blogs','page','2022-05-29 01:38:06','2022-05-29 01:40:56',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `services` */

insert  into `services`(`id`,`title`,`image`,`description`,`slug`,`created_at`,`updated_at`,`deleted_at`) values 
(11,'occaecati atque','1653788182.png','Eveniet dolorem laborum in facilis sed non facere. Dolor eum vel numquam quod. Animi ut et maxime sunt qui hic aut. Laudantium temporibus enim dicta possimus pariatur corporis. Qui aut laborum dolore recusandae ut. Ea et et nisi laboriosam. Modi quo a non incidunt molestias cumque. Nam dolore animi quidem. Reiciendis velit magni quas ratione id molestias. Non tenetur officiis dolor eos.','vel-voluptatum-earum','2022-05-29 01:38:06','2022-05-29 04:29:16',NULL),
(12,'rerum consequatur','1653788191.png','Sunt sequi ex quisquam sit rem excepturi. Quos consequatur sed ducimus itaque in porro unde et. Voluptatum dolorem omnis exercitationem maxime sunt recusandae temporibus. Distinctio dolores praesentium voluptas debitis dolore enim asperiores. Asperiores dolores consequatur est quis saepe dolor. Quod velit illo aut reiciendis est. Sunt eum totam quis dolor commodi maiores in. Et assumenda ipsum qui quo. Aut inventore cum qui. Iusto magni aut repudiandae ducimus corporis illum autem.','reprehenderit-recusandae-consequatur','2022-05-29 01:38:06','2022-05-29 01:38:06',NULL),
(13,'neque officia','1653788202.png','Cumque fugit est facilis mollitia quam. Dolores non qui sed qui quisquam velit. Tempora rerum recusandae deserunt molestias maiores reprehenderit rerum. Labore libero enim consectetur adipisci ut quia molestiae cum. Natus ea hic consequatur debitis modi. Porro natus exercitationem unde ut nesciunt. Quasi ratione suscipit et. Voluptatibus doloribus qui ut quisquam ad voluptatem ut. Error aliquam in vero. Cumque aut eos quae magni dicta consectetur.','quis-enim-temporibus','2022-05-29 01:38:06','2022-05-29 01:38:06',NULL),
(14,'illo praesentium','1653788182.png','Non quis dolores ipsam totam. Est mollitia non consequatur voluptate ea amet. Dolore in dolore quia dolorem et quidem et. Qui animi corporis at et excepturi aut praesentium. Aut accusantium quae iusto et aut et. Sit suscipit voluptas non voluptas. Officia voluptas explicabo excepturi accusamus ut voluptate illum hic. Autem velit doloribus aut facere autem in. Deserunt earum eum eos illo. Est est illum perspiciatis tempora et et.','magnam-sit-sit','2022-05-29 01:38:06','2022-05-29 01:38:06',NULL),
(15,'fugit suscipit','1653788191.png','Eos facere fugit fugiat expedita eaque sint. Officiis id aperiam sed ut. Minus dolor voluptatem sit. Consequatur sunt quis atque. Quidem cumque sunt et error est dolorem est. Voluptatem asperiores praesentium ex quod pariatur. Et deleniti explicabo sint aliquid repudiandae vitae. Distinctio ex qui adipisci et. Quidem sequi explicabo nostrum. Possimus atque sint quaerat.','culpa-saepe-doloribus','2022-05-29 01:38:06','2022-05-29 01:38:06',NULL),
(16,'repellat necessitatibus','1653788202.png','Totam repellendus minima ut corporis ipsam vel. Ea sunt sit eum blanditiis nihil. Sed totam accusamus impedit et aperiam. Numquam nihil laborum ipsum commodi. Itaque eos quidem vitae aut nihil voluptate at. Voluptas mollitia aliquid dicta sed et cumque sed. Aspernatur id non eos totam et omnis. Expedita possimus et eos voluptas ducimus omnis ea provident. Labore et est voluptas earum et. Dignissimos minus laboriosam voluptatem cumque sed.','ipsam-voluptatibus-iusto','2022-05-29 01:38:06','2022-05-29 01:38:06',NULL),
(17,'rerum voluptatum','1653788182.png','Est labore magnam voluptates voluptatem similique et laudantium. Alias qui sint ea natus sunt et. Qui maiores neque soluta ea. Et ex dicta nihil in. Quae id corporis perspiciatis corporis molestias voluptas alias. Enim blanditiis maxime aut et culpa reprehenderit ut nulla. Vel facilis quod eum aut aspernatur vero beatae. Asperiores est possimus officiis qui. Id quia animi nihil dolorem earum. Magnam ut officiis iure itaque distinctio consequatur non magnam.','molestiae-qui-optio','2022-05-29 01:38:06','2022-05-29 01:38:06',NULL),
(18,'dignissimos nihil','1653788191.png','Libero tempore qui necessitatibus ea id placeat sit. Eius maiores quo ut illo dolore tempora. Eos dolorum ex quia recusandae. Odio veniam similique qui qui et commodi possimus. Similique quisquam sint incidunt quo soluta eligendi. Labore perferendis aspernatur maxime suscipit atque. Consequatur omnis eaque sed ea. In optio sunt blanditiis perspiciatis occaecati ex. Quam reprehenderit porro sed doloremque. Sint aut corrupti rerum provident deserunt nisi.','architecto-est-iusto','2022-05-29 01:38:06','2022-05-29 01:38:06',NULL),
(19,'ut illo','1653788202.png','Delectus sequi reiciendis facilis suscipit asperiores ea officia. Placeat omnis quo provident quaerat nihil eum exercitationem. Est molestiae voluptatem maiores illum. Unde dolores quis et doloremque occaecati et beatae. Sint ea cupiditate reiciendis. Et libero quos esse quo est perspiciatis consectetur. Culpa nesciunt libero qui qui. Et unde sit nemo ut. Impedit doloremque unde et eaque quaerat doloribus ut. Ipsam vero similique incidunt illum.','odio-nesciunt-non','2022-05-29 01:38:06','2022-05-29 01:38:06',NULL),
(20,'sed omnis','1653788182.png','Rem quae quis quam voluptatem quasi omnis. Nesciunt aut et odit nobis. Sunt dolore quia rem nesciunt omnis voluptatem eaque. Porro non et excepturi dolorum nostrum alias ea. Expedita ratione quod nihil sed. Aut totam non sit repellendus inventore accusamus. Eos alias veniam corrupti. Ut quasi ut libero dignissimos corporis sunt facilis. Ut necessitatibus eum totam qui quibusdam. Doloremque fugiat iure rerum totam.','facere-aut-dolor','2022-05-29 01:38:06','2022-05-29 01:38:06',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

insert  into `settings`(`id`,`title`,`link`,`image`,`type`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Call +01 1234567890','http://twitter.com','1653796609.png','address','2022-05-29 03:56:49','2022-05-29 04:29:44',NULL),
(2,'demo@gmail.com','http://twitter.com','1653796640.png','address','2022-05-29 03:57:21','2022-05-29 03:57:21',NULL),
(3,'Facebook','http://facebook.com','1653796692.png','social','2022-05-29 03:58:12','2022-05-29 03:58:12',NULL),
(4,'Twitter','http://twitter.com','1653796718.png','social','2022-05-29 03:58:38','2022-05-29 03:58:38',NULL),
(5,'Linkin','http://linkindin.com','1653796752.png','social','2022-05-29 03:59:12','2022-05-29 03:59:12',NULL),
(6,'Instagram','http://instagram.com','1653796781.png','social','2022-05-29 03:59:41','2022-05-29 03:59:41',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `slider` */

insert  into `slider`(`id`,`title`,`description`,`created_at`,`updated_at`,`deleted_at`) values 
(7,'sequi at','Ut et numquam earum debitis magni amet doloremque. Qui qui blanditiis accusantium est. Nemo at enim et distinctio. Corporis consequuntur quam quos est eum.','2022-05-29 03:54:32','2022-05-29 03:54:32',NULL),
(8,'eos aut','Accusantium doloremque numquam suscipit unde aliquam. Deserunt quos recusandae et consequuntur quos a eum. Exercitationem repudiandae ea reprehenderit sed est. Consequatur temporibus quis incidunt nam eaque minima.','2022-05-29 03:54:32','2022-05-29 03:54:32',NULL),
(9,'et natus','Omnis quia qui quo perferendis qui. Ut aut nemo eum ea ab explicabo. Possimus qui delectus ab. Sequi consequuntur eius ipsam vero.','2022-05-29 03:54:32','2022-05-29 04:28:49',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(31,'Leanne Brakus','mandy63@example.org','2022-05-29 04:47:06','$2y$10$1VhE2w2f4DFV658oszvZEeuZ/P6obFHIb7RNR4l6wC8iy7S2FswV2','9KGDTNGdL5','2022-05-29 04:47:08','2022-05-29 04:47:08'),
(32,'Velda Parker','hermann.eda@example.com','2022-05-29 04:47:07','$2y$10$A4toi/iwI0hXCxzp9zKLoO3fTnGWqL38ukjfNFBJupZXQmEwI7U0K','yGf5i9mbiO','2022-05-29 04:47:08','2022-05-29 04:47:08'),
(33,'Miss Ena Bailey V','pat63@example.com','2022-05-29 04:47:07','$2y$10$mz.DCim92NF5ithDB8MRAO40f19GQIil3yaKfWhf8NoMEysaeCc8G','mdvHf7NgTE','2022-05-29 04:47:08','2022-05-29 04:47:08'),
(34,'Bria Lowe','asia.crona@example.org','2022-05-29 04:47:07','$2y$10$xGOj7cQQ8i7JkcMctk60keIlR.Q1TksboIp/uN5xlyqnv/UKjlG1G','sK9hks6g4F','2022-05-29 04:47:08','2022-05-29 04:47:08'),
(35,'Halle Cummerata','carolina51@example.org','2022-05-29 04:47:07','$2y$10$H3GkPuYWCA1uzxGPiE5e2.MbfKRYqDdLZ9buN1UJdNNgM4cmbxZLG','vQxUWImrhL','2022-05-29 04:47:08','2022-05-29 04:47:08'),
(36,'Markus Conroy','idibbert@example.net','2022-05-29 04:47:07','$2y$10$H58UI5I6GnxkbB4wWBX.UePtVOg15iHlMnGnr0yJNebWvX1dhfy9i','WQDhratzuv','2022-05-29 04:47:08','2022-05-29 04:47:08'),
(37,'Verda Nicolas','ldaugherty@example.net','2022-05-29 04:47:07','$2y$10$E5hiP/uguqcP2DGsXR6FN.zqOkQYKldWTaHcwppgiom/xTfGEILh2','BrU6tgPu8R','2022-05-29 04:47:08','2022-05-29 04:47:08'),
(38,'Steve Connelly','rolfson.rose@example.com','2022-05-29 04:47:07','$2y$10$RRUudALmRDZdG04sh/.R9.EzATZbr3EA4SKE7BTHuOta7TRLtyC16','UIjleFkpko','2022-05-29 04:47:08','2022-05-29 04:47:08'),
(39,'Prof. Breanna Labadie','tillman.ressie@example.org','2022-05-29 04:47:07','$2y$10$v6Qn/Aig0OGVs7BuL9xemerTELVODzBMCgUGCy6SuQZVbS/Wvd1Ae','1aYUxfEfuK','2022-05-29 04:47:08','2022-05-29 04:47:08'),
(40,'Ferne Goldner','kory.kling@example.net','2022-05-29 04:47:07','$2y$10$ErqKbgTX7QuQu4tLxbnbQ.8QDlKufAQ6yInrUji1B3ElXgcz131SS','Mvh2mfOAVR','2022-05-29 04:47:08','2022-05-29 04:47:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
