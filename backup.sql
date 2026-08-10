-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.12 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  mybabys.auth_group 的数据：0 rows
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- 正在导出表  mybabys.auth_group_permissions 的数据：0 rows
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- 正在导出表  mybabys.auth_permission 的数据：44 rows
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
REPLACE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add ??????', 7, 'add_commodity'),
	(26, 'Can change ??????', 7, 'change_commodity'),
	(27, 'Can delete ??????', 7, 'delete_commodity'),
	(28, 'Can view ??????', 7, 'view_commodity'),
	(29, 'Can add ???????', 8, 'add_types'),
	(30, 'Can change ???????', 8, 'change_types'),
	(31, 'Can delete ???????', 8, 'delete_types'),
	(32, 'Can view ???????', 8, 'view_types'),
	(33, 'Can add ????', 9, 'add_cartinfos'),
	(34, 'Can change ????', 9, 'change_cartinfos'),
	(35, 'Can delete ????', 9, 'delete_cartinfos'),
	(36, 'Can view ????', 9, 'view_cartinfos'),
	(37, 'Can add ???????', 10, 'add_orderinfos'),
	(38, 'Can change ???????', 10, 'change_orderinfos'),
	(39, 'Can delete ???????', 10, 'delete_orderinfos'),
	(40, 'Can view ???????', 10, 'view_orderinfos'),
	(41, 'Can add ??????', 11, 'add_commodityinfos'),
	(42, 'Can change ??????', 11, 'change_commodityinfos'),
	(43, 'Can delete ??????', 11, 'delete_commodityinfos'),
	(44, 'Can view ??????', 11, 'view_commodityinfos');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- 正在导出表  mybabys.auth_user 的数据：5 rows
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
REPLACE INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$600000$lCQA4hCZT2FESfzfa067gW$vBcZwaqyPBd0e4ajbx+oM5KHlVNCjXiMHOgPjqvzouU=', '2025-09-17 11:32:44.550561', 0, '19884164703', '', '', '', 1, 1, '2025-07-05 08:36:13.348645'),
	(2, 'pbkdf2_sha256$600000$OnjwExIhRrrGftr6IUKrck$xPd1jAgYmW3azwXwwiLtAH9pJt9IF3jCSIJiOCgOnkg=', NULL, 0, '18019081590', '', '', '', 1, 1, '2025-07-05 08:43:00.269264'),
	(3, 'pbkdf2_sha256$600000$R3vETo8M8W9PBx1tRva49g$au56SwNmAgvBPE+wQO1ux/36vwIB0rP8GhOfWS1hwHk=', '2025-07-13 14:09:12.619503', 0, '11111111111', '', '', '', 1, 1, '2025-07-08 09:00:15.310783'),
	(4, 'pbkdf2_sha256$600000$MKgTe4e3DgvxuQ4iD7Ucfy$EvBuPDGeT/Z7VgamUDWZSCxg+fnqldgCDaRsalvgcQE=', '2025-07-10 03:11:55.081937', 1, 'root', '', '', '2423485349@qq.com', 1, 1, '2025-07-09 12:18:04.505610'),
	(5, 'pbkdf2_sha256$600000$ofRx0cKBlETrRyOHAIDJYZ$ZwRRgyX5qd9+H8kpLx9SzOZcJnKkqAw6H7k3S+9Xydw=', '2025-07-10 03:11:19.059165', 0, 'admin', '', '', '', 1, 1, '2025-07-10 00:53:00.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- 正在导出表  mybabys.auth_user_groups 的数据：0 rows
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- 正在导出表  mybabys.auth_user_user_permissions 的数据：44 rows
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
REPLACE INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
	(1, 5, 1),
	(2, 5, 2),
	(3, 5, 3),
	(4, 5, 4),
	(5, 5, 5),
	(6, 5, 6),
	(7, 5, 7),
	(8, 5, 8),
	(9, 5, 9),
	(10, 5, 10),
	(11, 5, 11),
	(12, 5, 12),
	(13, 5, 13),
	(14, 5, 14),
	(15, 5, 15),
	(16, 5, 16),
	(17, 5, 17),
	(18, 5, 18),
	(19, 5, 19),
	(20, 5, 20),
	(21, 5, 21),
	(22, 5, 22),
	(23, 5, 23),
	(24, 5, 24),
	(25, 5, 25),
	(26, 5, 26),
	(27, 5, 27),
	(28, 5, 28),
	(29, 5, 29),
	(30, 5, 30),
	(31, 5, 31),
	(32, 5, 32),
	(33, 5, 33),
	(34, 5, 34),
	(35, 5, 35),
	(36, 5, 36),
	(37, 5, 37),
	(38, 5, 38),
	(39, 5, 39),
	(40, 5, 40),
	(41, 5, 41),
	(42, 5, 42),
	(43, 5, 43),
	(44, 5, 44);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- 正在导出表  mybabys.commodity_commodityinfos 的数据：17 rows
/*!40000 ALTER TABLE `commodity_commodityinfos` DISABLE KEYS */;
REPLACE INTO `commodity_commodityinfos` (`id`, `name`, `sezes`, `types`, `price`, `discount`, `stock`, `sold`, `likes`, `create`, `img`, `details`) VALUES
	(13, 'SEASIDE SOLILOQUIES 海边独白', 'Orangestar', '流行/合成器/电子', 59, 39, 1234, 3453, 2321, '2020-02-24 00:00:00.000000', 'imgs/p13.jpg', 'details/p13_details.jpg'),
	(12, 'PROOF OF US', '小濑村晶', '动画OST', 66, 38, 1543, 1845, 3245, '2020-02-24 00:00:00.000000', 'imgs/p12.jpg', 'details/p12_details.jpg'),
	(11, 'NOW I SEE THE LIGHT', 'toe', '数学摇滚', 30, 20, 3211, 1231, 2152, '2020-02-24 00:00:00.000000', 'imgs/p11.jpg', 'details/p11_details.jpg'),
	(10, 'For long tomorrow', 'toe', '数学摇滚', 209, 159, 1234, 4321, 3335, '2020-02-24 00:00:00.000000', 'imgs/p10.jpg', 'details/p10_details.jpg'),
	(9, 'Days Gone', 'Fayzz', '数学摇滚', 399, 366, 1233, 1231, 666, '2020-02-24 00:00:00.000000', 'imgs/p9.jpg', 'details/p9_details.jpg'),
	(8, 'Continue?', 'Chinese Football', '独立摇滚', 124, 121, 531, 1345, 879, '2020-02-24 00:00:00.000000', 'imgs/p8.jpg', 'details/p8_details.jpg'),
	(7, 'Connection', 'Fayzz', '数学摇滚', 166, 111, 213, 2341, 1233, '2020-02-24 00:00:00.000000', 'imgs/p7.jpg', 'details/p7_details.jpg'),
	(6, 'Backlash', 'Diels_Alder环乐队', '情绪摇滚', 123, 119, 2342, 232, 1233, '2020-02-24 00:00:00.000000', 'imgs/p6.jpg', 'details/p6_details.jpg'),
	(4, 'Archives', 'Diels_Alder环乐队', '情绪摇滚', 50, 39, 2347, 4521, 902, '2020-02-24 00:00:00.000000', 'imgs/p4.jpg', 'details/p4_details.jpg'),
	(3, 'Animals', 'This town needs guns', '数学摇滚', 1099, 999, 2346, 1322, 333, '2020-02-24 00:00:00.000000', 'imgs/p3.jpg', 'details/p3_details.jpg'),
	(2, 'EndSerenading', 'Mineral', '情绪摇滚', 121, 66, 1234, 2111, 599, '2020-02-24 00:00:00.000000', 'imgs/p2.jpg', 'details/p2_details.jpg'),
	(1, '丑奴儿', '草东没有派对', '独立摇滚', 199, 188, 1314, 1666, 666, '2020-02-24 00:00:00.000000', 'imgs/p1.jpg', 'details/p1_details.jpg'),
	(14, 'the book about my idle plot on a vague anxiety', 'toe', '数学摇滚', 499, 399, 3231, 3412, 1234, '2020-02-24 00:00:00.000000', 'imgs/p14.jpg', 'details/p14_details.jpg'),
	(15, 'TIM', 'Avicii', '流行/合成器/电子', 888, 439, 1234, 1245, 2353, '2020-02-24 00:00:00.000000', 'imgs/p15.jpg', 'details/p15_details.jpg'),
	(16, 'tres', 'mouse on the key', '情绪摇滚', 688, 588, 3421, 3644, 6245, '2020-02-24 00:00:00.000000', 'imgs/p16.jpg', 'details/p16_details.jpg'),
	(17, 'SonnyBoy原声带', 'V.A.群星', '动画OST', 49.9, 29.9, 1235, 5674, 2319, '2020-02-24 00:00:00.000000', 'imgs/p17.jpg', 'details/p17_details.jpg'),
	(18, 'Этажи 地板', 'Молчат Дома寂静房屋', '独立摇滚', 69, 29.9, 666, 1986, 1570, '2020-02-24 00:00:00.000000', 'imgs/p18.jpg', 'details/p18_details.jpg');
/*!40000 ALTER TABLE `commodity_commodityinfos` ENABLE KEYS */;

-- 正在导出表  mybabys.commodity_types 的数据：5 rows
/*!40000 ALTER TABLE `commodity_types` DISABLE KEYS */;
REPLACE INTO `commodity_types` (`id`, `firsts`, `seconds`) VALUES
	(14, '流行元素', '流行/合成器/电子'),
	(9, '独立元素', '独立摇滚'),
	(5, '原声带', '动画OST'),
	(3, '情绪元素', '情绪摇滚'),
	(2, '数学元素', '数学摇滚');
/*!40000 ALTER TABLE `commodity_types` ENABLE KEYS */;

-- 正在导出表  mybabys.django_admin_log 的数据：6 rows
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
REPLACE INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2025-07-10 00:53:52.983365', '5', 'admin', 1, '[{"added": {}}]', 4, 4),
	(2, '2025-07-10 00:56:38.056130', '5', 'admin', 2, '[{"changed": {"fields": ["Staff status"]}}]', 4, 4),
	(3, '2025-07-10 01:04:37.626935', '5', 'admin', 2, '[{"changed": {"fields": ["User permissions"]}}]', 4, 4),
	(4, '2025-07-10 02:56:09.406797', '1', '1', 2, '[{"changed": {"fields": ["\\u5546\\u54c1\\u7c7b\\u578b"]}}]', 11, 5),
	(5, '2025-07-10 02:57:51.927023', '1', '1', 2, '[{"changed": {"fields": ["\\u5546\\u54c1\\u7c7b\\u578b"]}}]', 11, 5),
	(6, '2025-07-10 02:57:56.490175', '1', '1', 2, '[{"changed": {"fields": ["\\u5546\\u54c1\\u7c7b\\u578b"]}}]', 11, 5);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- 正在导出表  mybabys.django_content_type 的数据：11 rows
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
REPLACE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(2, 'auth', 'permission'),
	(3, 'auth', 'group'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session'),
	(7, 'commodity', 'commodity'),
	(8, 'commodity', 'types'),
	(9, 'shopper', 'cartinfos'),
	(10, 'shopper', 'orderinfos'),
	(11, 'commodity', 'commodityinfos');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- 正在导出表  mybabys.django_migrations 的数据：22 rows
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
REPLACE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2025-07-01 05:47:23.137381'),
	(2, 'auth', '0001_initial', '2025-07-01 05:47:24.102946'),
	(3, 'admin', '0001_initial', '2025-07-01 05:47:24.337579'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2025-07-01 05:47:24.341859'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-07-01 05:47:24.344879'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2025-07-01 05:47:24.432145'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2025-07-01 05:47:24.465355'),
	(8, 'auth', '0003_alter_user_email_max_length', '2025-07-01 05:47:24.496522'),
	(9, 'auth', '0004_alter_user_username_opts', '2025-07-01 05:47:24.509597'),
	(10, 'auth', '0005_alter_user_last_login_null', '2025-07-01 05:47:24.589262'),
	(11, 'auth', '0006_require_contenttypes_0002', '2025-07-01 05:47:24.590371'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2025-07-01 05:47:24.594182'),
	(13, 'auth', '0008_alter_user_username_max_length', '2025-07-01 05:47:24.650029'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2025-07-01 05:47:24.714414'),
	(15, 'auth', '0010_alter_group_name_max_length', '2025-07-01 05:47:24.776119'),
	(16, 'auth', '0011_update_proxy_permissions', '2025-07-01 05:47:24.780145'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2025-07-01 05:47:24.825063'),
	(18, 'sessions', '0001_initial', '2025-07-01 05:47:24.900762'),
	(19, 'commodity', '0001_initial', '2025-07-02 01:09:57.582981'),
	(20, 'shopper', '0001_initial', '2025-07-02 01:09:57.616202'),
	(21, 'commodity', '0002_commodityinfos_delete_commodity', '2025-07-02 01:46:38.426555'),
	(22, 'shopper', '0002_alter_cartinfos_commodityinfos_id', '2025-07-11 07:06:03.355147');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- 正在导出表  mybabys.django_session 的数据：3 rows
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
REPLACE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('2v4xpnh18kgekbkbos1aj26qrwuz8e22', '.eJxVjDsOwjAQBe_iGlnexF9Kes5g7cZrHEC2FCcV4u4QKQW0b2beS0Tc1hK3zkuckzgLLU6_G-H04LqDdMd6a3JqdV1mkrsiD9rltSV-Xg7376BgL9_akCEHFrVXmoaQXXbAQGq0gM6Z4ExOjGCnhCMoNSCAZ-IAiD6QZvH-ANLJN8Q:1uZhhT:huxna29CcgrIgpgIhzWQrIjGM1pD5dRYdo73pvi6UBY', '2025-07-24 03:11:55.083370'),
	('81a88cw27vm6ctxqbe1n0uhon694xend', '.eJxVjrtuhDAQRf9lamRhgz02ZboU6dKFCPkxE7y7gRWGIlrtvweiVZS0c-49d24w-G0dh63QMuQEHUio_t6Cj2eaDpBOfvqYRZyndclBHBHxoEW8zIkuT4_sP8Hoy7i3Y01t1BGRrQxksQncIMZEKZKzVBM7hYFtg4l1HY2xRhGz4pBat8_s0qv_ep54hu4G1yVHgs454Sr4_V1WUFa_7gD6TSdW_Wa04n5rKVm4_xhe8-fBJWorFboWnasN6kaZfeGSz1Sge5P2_f4NR1pZpw:1uyvOO:JMUk6ol_EMnWmJHp36K1dV8zjKaeZ8A8vsLa7_tTEmw', '2025-10-01 16:52:28.054330'),
	('qr1m3wyfdvauekxz0htub8f1f17qps7a', '.eJxVjEEOgjAQRe_StWloC1OGpXtPYAyZzrSCEEgorIx3FxIWuv3v_fdWLW1r1245Lm0vqlFOXX63QDzE6QDyouk5a56ndemDPhR90qxvs8Txerp_gY5yt78LDLFMARDBGDTOBF-BNQFKyzV5Tmw9OhIRV3PBAKmqiCMmEbQeyj069kPMqrkb__h8AcVIO8o:1uaxOJ:C_Tb9hfvGeYuPTvG1urt5jr8ERUD7IcaBvfj95HQugI', '2025-07-27 14:09:19.526921');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- 正在导出表  mybabys.shopper_cartinfos 的数据：3 rows
/*!40000 ALTER TABLE `shopper_cartinfos` DISABLE KEYS */;
REPLACE INTO `shopper_cartinfos` (`id`, `quantity`, `commodityInfos_id`, `user_id`) VALUES
	(2, 1, 17, 3),
	(3, 1, 17, 1),
	(4, 1, 4, 1);
/*!40000 ALTER TABLE `shopper_cartinfos` ENABLE KEYS */;

-- 正在导出表  mybabys.shopper_orderinfos 的数据：0 rows
/*!40000 ALTER TABLE `shopper_orderinfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopper_orderinfos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
