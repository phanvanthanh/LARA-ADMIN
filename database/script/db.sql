-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for laraadmin
CREATE DATABASE IF NOT EXISTS `laraadmin` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `laraadmin`;

-- Dumping structure for table laraadmin.admin_resource
CREATE TABLE IF NOT EXISTS `admin_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_hien_thi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `uri` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `show_menu` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `icon` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_resource_parent_foreign` (`parent_id`),
  CONSTRAINT `admin_resource_parent_foreign` FOREIGN KEY (`parent_id`) REFERENCES `admin_resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=917 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laraadmin.admin_resource: ~46 rows (approximately)
/*!40000 ALTER TABLE `admin_resource` DISABLE KEYS */;
INSERT INTO `admin_resource` (`id`, `ten_hien_thi`, `resource`, `method`, `action`, `parameter`, `parameter_value`, `parent_id`, `created_at`, `updated_at`, `uri`, `status`, `show_menu`, `order`, `icon`) VALUES
	(1, '#', '#', '#', '#', '#', '#', NULL, '2021-03-12 16:43:45', '2021-03-12 16:46:12', '#', 1, 1, 0, NULL),
	(872, '????ng nh???p', 'GET | App\\Http\\Controllers\\Auth\\LoginController@showLoginForm', 'GET', 'App\\Http\\Controllers\\Auth\\LoginController@showLoginForm', '', '', 1, '2021-03-12 16:43:45', '2021-03-12 20:02:59', 'login', 1, 1, 1000, '<i class="fa fa-lock menu-icon"></i>'),
	(873, 'N??t ????ng nh???p', 'POST | App\\Http\\Controllers\\Auth\\LoginController@login', 'POST', 'App\\Http\\Controllers\\Auth\\LoginController@login', '', '', 872, '2021-03-12 16:43:45', '2021-03-12 16:47:52', 'login', 1, 2, 1000, NULL),
	(874, '????ng xu???t', 'POST | App\\Http\\Controllers\\Auth\\LoginController@logout', 'POST', 'App\\Http\\Controllers\\Auth\\LoginController@logout', '', '', 1, '2021-03-12 16:43:45', '2021-03-12 20:02:12', 'logout', 1, 2, 1000, '<i class="fa fa-unlock menu-icon"></i>'),
	(875, '????ng k??', 'GET | App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm', 'GET', 'App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm', '', '', 1, '2021-03-12 16:43:45', '2021-03-12 19:58:46', 'register', 1, 1, 1000, '<i class="fa fa-vcard-o menu-icon"></i>'),
	(876, 'N??t ????ng k??', 'POST | App\\Http\\Controllers\\Auth\\RegisterController@register', 'POST', 'App\\Http\\Controllers\\Auth\\RegisterController@register', '', '', 875, '2021-03-12 16:43:45', '2021-03-12 19:35:55', 'register', 1, 2, 1000, NULL),
	(877, 'Reset m???t kh???u', 'GET | App\\Http\\Controllers\\Auth\\ForgotPasswordController@showLinkRequestForm', 'GET', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@showLinkRequestForm', '', '', 1, '2021-03-12 16:43:45', '2021-03-12 20:00:11', 'password/reset', 1, 1, 1000, '<i class="fa fa-refresh menu-icon"></i>'),
	(878, 'password/email', 'POST | App\\Http\\Controllers\\Auth\\ForgotPasswordController@sendResetLinkEmail', 'POST', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@sendResetLinkEmail', '', '', 877, '2021-03-12 16:43:45', '2021-03-12 19:36:41', 'password/email', 1, 2, 1000, NULL),
	(879, 'password/reset/{token}', 'GET | App\\Http\\Controllers\\Auth\\ResetPasswordController@showResetForm', 'GET', 'App\\Http\\Controllers\\Auth\\ResetPasswordController@showResetForm', '', '', 877, '2021-03-12 16:43:45', '2021-03-12 19:36:54', 'password/reset/{token}', 1, 1, 1000, NULL),
	(880, 'password/reset', 'POST | App\\Http\\Controllers\\Auth\\ResetPasswordController@reset', 'POST', 'App\\Http\\Controllers\\Auth\\ResetPasswordController@reset', '', '', 877, '2021-03-12 16:43:45', '2021-03-12 19:37:04', 'password/reset', 1, 2, 1000, NULL),
	(881, 'password/confirm', 'GET | App\\Http\\Controllers\\Auth\\ConfirmPasswordController@showConfirmForm', 'GET', 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController@showConfirmForm', '', '', 877, '2021-03-12 16:43:45', '2021-03-12 19:37:14', 'password/confirm', 1, 1, 1000, NULL),
	(882, 'password/confirm', 'POST | App\\Http\\Controllers\\Auth\\ConfirmPasswordController@confirm', 'POST', 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController@confirm', '', '', 877, '2021-03-12 16:43:45', '2021-03-12 19:37:25', 'password/confirm', 1, 2, 1000, NULL),
	(883, 'Danh m???c ph?????ng x??', 'GET | App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXa', 'GET', 'App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXa', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:28:32', 'dm-phuong-xa', 1, 1, 8, '<i class="menu-icon icon-location-pin"></i>'),
	(884, 'Import danh m???c ph?????ng x??', 'POST | App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXaAndImport', 'POST', 'App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXaAndImport', '', '', 883, '2021-03-12 16:43:45', '2021-03-12 19:38:06', 'dm-phuong-xa/import', 1, 2, 1000, NULL),
	(885, 'Danh m???c qu???n huy???n', 'GET | App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyen', 'GET', 'App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyen', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:28:25', 'dm-quan-huyen', 1, 1, 7, '<i class="menu-icon icon-location-pin"></i>'),
	(886, 'Import danh m???c qu???n/huy???n', 'POST | App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyenAndImport', 'POST', 'App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyenAndImport', '', '', 885, '2021-03-12 16:43:45', '2021-03-12 19:38:49', 'dm-quan-huyen/import', 1, 2, 1000, NULL),
	(887, '????n v???', 'GET | App\\Modules\\DonVi\\Controllers\\DonViController@donVi', 'GET', 'App\\Modules\\DonVi\\Controllers\\DonViController@donVi', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:28:16', 'don-vi', 1, 1, 6, '<i class="fa fa-university menu-icon"></i>'),
	(888, 'Xem danh s??ch ????n v???', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@danhSachDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@danhSachDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-03-12 19:39:32', 'danh-sach-don-vi', 1, 2, 1000, NULL),
	(889, 'Th??m ????n v???', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@themDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@themDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-03-12 19:39:47', 'them-don-vi', 1, 2, 1000, NULL),
	(890, 'Load th??ng tin ????n v???', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@donViSingle', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@donViSingle', '', '', 887, '2021-03-12 16:43:45', '2021-03-12 19:40:09', 'don-vi-single', 1, 2, 1000, NULL),
	(891, 'C???p nh???t ????n v???', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@capNhatDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@capNhatDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-03-12 19:40:22', 'cap-nhat-don-vi', 1, 2, 1000, NULL),
	(892, 'X??a ????n v???', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@xoaDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@xoaDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-03-12 19:40:40', 'xoa-don-vi', 1, 2, 1000, NULL),
	(893, 'Nh??m quy???n', 'GET | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyen', 'GET', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyen', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:27:34', 'nhom-quyen', 1, 1, 3, '<i class="fa fa-users menu-icon"></i>'),
	(894, 'Xem danh s??ch nh??m quy???n', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@danhSachNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@danhSachNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-03-12 19:41:10', 'danh-sach-nhom-quyen', 1, 2, 1000, NULL),
	(895, 'Th??m nh??m quy???n', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@themNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@themNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-03-12 19:41:24', 'them-nhom-quyen', 1, 2, 1000, NULL),
	(896, 'Load th??ng tin nh??m quy???n', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyenSingle', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyenSingle', '', '', 893, '2021-03-12 16:43:45', '2021-03-12 19:41:38', 'nhom-quyen-single', 1, 2, 1000, NULL),
	(897, 'C???p nh???t nh??m quy???n', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@capNhatNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@capNhatNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-03-12 19:41:53', 'cap-nhat-nhom-quyen', 1, 2, 1000, NULL),
	(898, 'X??a nh??m quy???n', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@xoaNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@xoaNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-03-12 19:42:06', 'xoa-nhom-quyen', 1, 2, 1000, NULL),
	(899, 'Ph??n quy???n', 'GET | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyen', 'GET', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyen', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:27:42', 'phan-quyen', 1, 1, 4, '<i class="fa fa-cogs menu-icon"></i>'),
	(900, 'L??u th??ng tin quy???n', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenPost', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenPost', '', '', 899, '2021-03-12 16:43:45', '2021-03-12 19:42:48', 'phan-quyen-post', 1, 2, 1000, NULL),
	(901, 'Load danh s??ch nh??m quy???n', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachNhomQuyen', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachNhomQuyen', '', '', 899, '2021-03-12 16:43:45', '2021-03-12 19:44:01', 'phan-quyen/danh-sach-nhom-quyen', 1, 2, 1000, NULL),
	(902, 'Load danh s??ch quy???n', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachQuyenTheoNhomQuyenId', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachQuyenTheoNhomQuyenId', '', '', 899, '2021-03-12 16:43:45', '2021-03-12 19:44:25', 'phan-quyen/danh-sach-quyen-theo-nhom-quyen-id', 1, 2, 1000, NULL),
	(903, 'Danh m???c ch???c n??ng', 'GET | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyen', 'GET', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyen', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:28:04', 'tai-nguyen', 1, 1, 5, '<i class="menu-icon icon-list"></i>'),
	(904, 'Xem danh s??ch t??i nguy??n', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@danhSachTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@danhSachTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:44:44', 'danh-sach-tai-nguyen', 1, 2, 1000, NULL),
	(905, 'Qu??t t??i nguy??n h??? th???ng', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@quetTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@quetTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:45:37', 'quet-tai-nguyen', 1, 2, 1000, NULL),
	(906, 'Th??m t??i nguy??n', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@themTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@themTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:45:55', 'them-tai-nguyen', 1, 2, 1000, NULL),
	(907, 'Load th??ng tin t??i nguy??n', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyenSingle', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyenSingle', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:46:16', 'tai-nguyen-single', 1, 2, 1000, NULL),
	(908, 'C???p nh???t t??i nguy??n', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@capNhatTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@capNhatTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:46:30', 'cap-nhat-tai-nguyen', 1, 2, 1000, NULL),
	(909, 'X??a t??i nguy??n', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@xoaTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@xoaTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:46:41', 'xoa-tai-nguyen', 1, 2, 1000, NULL),
	(910, 'Trang ch???', 'GET | App\\Modules\\TrangChu\\Controllers\\TrangChuController@home', 'GET', 'App\\Modules\\TrangChu\\Controllers\\TrangChuController@home', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 10:52:08', '/', 1, 1, 1, '<i class="fa fa-home menu-icon"></i>'),
	(911, 'T??i kho???n', 'GET | App\\Modules\\User\\Controllers\\UserController@user', 'GET', 'App\\Modules\\User\\Controllers\\UserController@user', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:26:17', 'user', 1, 1, 2, '<i class="fa fa-address-book menu-icon"></i>'),
	(912, 'Xem danh s??ch t??i kho???n', 'POST | App\\Modules\\User\\Controllers\\UserController@danhSachUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@danhSachUser', '', '', 911, '2021-03-12 16:43:45', '2021-03-12 19:47:23', 'danh-sach-user', 1, 2, 1000, NULL),
	(913, 'T???o t??i kho???n', 'POST | App\\Modules\\User\\Controllers\\UserController@themUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@themUser', '', '', 911, '2021-03-12 16:43:45', '2021-03-12 19:47:40', 'them-user', 1, 2, 1000, NULL),
	(914, 'Load th??ng tin t??i kho???n', 'POST | App\\Modules\\User\\Controllers\\UserController@userSingle', 'POST', 'App\\Modules\\User\\Controllers\\UserController@userSingle', '', '', 911, '2021-03-12 16:43:45', '2021-03-12 19:49:20', 'user-single', 1, 2, 1000, NULL),
	(915, 'C???p nh???t t??i kho???n', 'POST | App\\Modules\\User\\Controllers\\UserController@capNhatUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@capNhatUser', '', '', 911, '2021-03-12 16:43:45', '2021-03-12 19:49:36', 'cap-nhat-user', 1, 2, 1000, NULL),
	(916, 'X??a t??i kho???n', 'POST | App\\Modules\\User\\Controllers\\UserController@xoaUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@xoaUser', '', '', 911, '2021-03-12 16:43:45', '2021-03-12 19:49:47', 'xoa-user', 1, 2, 1000, NULL);
/*!40000 ALTER TABLE `admin_resource` ENABLE KEYS */;

-- Dumping structure for table laraadmin.admin_role
CREATE TABLE IF NOT EXISTS `admin_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` int(10) unsigned NOT NULL DEFAULT 1 COMMENT '0: ng???ng ho???t ?????ng; 1: ho???t ?????ng',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laraadmin.admin_role: ~2 rows (approximately)
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` (`id`, `role_name`, `state`, `created_at`, `updated_at`) VALUES
	(1, 'ADMIN', 1, NULL, '2021-03-12 21:01:52'),
	(9, 'Nh??n vi??n', 1, '2021-03-13 10:33:41', '2021-03-13 10:38:46');
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;

-- Dumping structure for table laraadmin.admin_rule
CREATE TABLE IF NOT EXISTS `admin_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `resource_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `admin_rule_role_id_foreign` (`role_id`),
  KEY `admin_rule_resource_id_foreign` (`resource_id`),
  CONSTRAINT `admin_rule_resource_id_foreign` FOREIGN KEY (`resource_id`) REFERENCES `admin_resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `admin_rule_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laraadmin.admin_rule: ~45 rows (approximately)
/*!40000 ALTER TABLE `admin_rule` DISABLE KEYS */;
INSERT INTO `admin_rule` (`id`, `role_id`, `resource_id`, `created_at`, `updated_at`) VALUES
	(207, 1, 910, '2021-03-13 10:34:12', '2021-03-13 10:34:12'),
	(208, 1, 911, '2021-03-13 10:34:13', '2021-03-13 10:34:13'),
	(209, 1, 912, '2021-03-13 10:34:13', '2021-03-13 10:34:13'),
	(210, 1, 913, '2021-03-13 10:34:13', '2021-03-13 10:34:13'),
	(211, 1, 914, '2021-03-13 10:34:13', '2021-03-13 10:34:13'),
	(212, 1, 915, '2021-03-13 10:34:13', '2021-03-13 10:34:13'),
	(213, 1, 916, '2021-03-13 10:34:13', '2021-03-13 10:34:13'),
	(214, 1, 893, '2021-03-13 10:34:14', '2021-03-13 10:34:14'),
	(215, 1, 894, '2021-03-13 10:34:14', '2021-03-13 10:34:14'),
	(216, 1, 895, '2021-03-13 10:34:14', '2021-03-13 10:34:14'),
	(217, 1, 896, '2021-03-13 10:34:14', '2021-03-13 10:34:14'),
	(218, 1, 897, '2021-03-13 10:34:14', '2021-03-13 10:34:14'),
	(219, 1, 898, '2021-03-13 10:34:14', '2021-03-13 10:34:14'),
	(220, 1, 899, '2021-03-13 10:34:16', '2021-03-13 10:34:16'),
	(221, 1, 900, '2021-03-13 10:34:16', '2021-03-13 10:34:16'),
	(222, 1, 901, '2021-03-13 10:34:16', '2021-03-13 10:34:16'),
	(223, 1, 902, '2021-03-13 10:34:16', '2021-03-13 10:34:16'),
	(224, 1, 903, '2021-03-13 10:34:17', '2021-03-13 10:34:17'),
	(225, 1, 904, '2021-03-13 10:34:17', '2021-03-13 10:34:17'),
	(226, 1, 905, '2021-03-13 10:34:17', '2021-03-13 10:34:17'),
	(227, 1, 906, '2021-03-13 10:34:17', '2021-03-13 10:34:17'),
	(228, 1, 907, '2021-03-13 10:34:17', '2021-03-13 10:34:17'),
	(229, 1, 908, '2021-03-13 10:34:17', '2021-03-13 10:34:17'),
	(230, 1, 909, '2021-03-13 10:34:17', '2021-03-13 10:34:17'),
	(231, 1, 887, '2021-03-13 10:34:19', '2021-03-13 10:34:19'),
	(232, 1, 888, '2021-03-13 10:34:19', '2021-03-13 10:34:19'),
	(233, 1, 889, '2021-03-13 10:34:19', '2021-03-13 10:34:19'),
	(234, 1, 890, '2021-03-13 10:34:19', '2021-03-13 10:34:19'),
	(235, 1, 891, '2021-03-13 10:34:19', '2021-03-13 10:34:19'),
	(236, 1, 892, '2021-03-13 10:34:19', '2021-03-13 10:34:19'),
	(237, 1, 885, '2021-03-13 10:34:20', '2021-03-13 10:34:20'),
	(238, 1, 886, '2021-03-13 10:34:20', '2021-03-13 10:34:20'),
	(239, 1, 883, '2021-03-13 10:34:22', '2021-03-13 10:34:22'),
	(240, 1, 884, '2021-03-13 10:34:22', '2021-03-13 10:34:22'),
	(241, 1, 872, '2021-03-13 10:34:23', '2021-03-13 10:34:23'),
	(242, 1, 873, '2021-03-13 10:34:23', '2021-03-13 10:34:23'),
	(243, 1, 875, '2021-03-13 10:34:25', '2021-03-13 10:34:25'),
	(244, 1, 876, '2021-03-13 10:34:25', '2021-03-13 10:34:25'),
	(245, 1, 877, '2021-03-13 10:34:27', '2021-03-13 10:34:27'),
	(246, 1, 878, '2021-03-13 10:34:27', '2021-03-13 10:34:27'),
	(247, 1, 879, '2021-03-13 10:34:27', '2021-03-13 10:34:27'),
	(248, 1, 880, '2021-03-13 10:34:27', '2021-03-13 10:34:27'),
	(249, 1, 881, '2021-03-13 10:34:27', '2021-03-13 10:34:27'),
	(250, 1, 882, '2021-03-13 10:34:27', '2021-03-13 10:34:27'),
	(251, 9, 910, '2021-03-13 10:57:53', '2021-03-13 10:57:53');
/*!40000 ALTER TABLE `admin_rule` ENABLE KEYS */;

-- Dumping structure for table laraadmin.dm_cap_don_vi
CREATE TABLE IF NOT EXISTS `dm_cap_don_vi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_cap` varchar(50) DEFAULT NULL,
  `ten_cap` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table laraadmin.dm_cap_don_vi: ~8 rows (approximately)
/*!40000 ALTER TABLE `dm_cap_don_vi` DISABLE KEYS */;
INSERT INTO `dm_cap_don_vi` (`id`, `ma_cap`, `ten_cap`) VALUES
	(1, 'UBT', 'UBND T???nh'),
	(2, 'VTT', 'VI???N TH??NG T???NH TR?? VINH'),
	(3, 'TTCNTT', 'Trung t??m c??ng ngh??? th??ng tin'),
	(4, 'TTDHTT', 'Trung t??m ??i???u h??nh th??ng tin'),
	(5, 'TTKDTT', 'Trung t??m Kinh doanh th??ng tin'),
	(6, 'TTVT', 'Trung t??m Vi???n th??ng'),
	(7, 'HUYEN', 'Vi???n th??ng c???p huy???n'),
	(8, 'XA', 'Vi???n th??ng c???p huy???n');
/*!40000 ALTER TABLE `dm_cap_don_vi` ENABLE KEYS */;

-- Dumping structure for table laraadmin.dm_phuong_xa
CREATE TABLE IF NOT EXISTS `dm_phuong_xa` (
  `ma_phuong_xa` int(10) unsigned NOT NULL,
  `ten_phuong_xa` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_quan_huyen` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ma_phuong_xa`),
  KEY `FK_dm_xaphuong_DM_quanhuyen` (`ma_quan_huyen`),
  CONSTRAINT `FK_dm_xaphuong_DM_quanhuyen` FOREIGN KEY (`ma_quan_huyen`) REFERENCES `dm_quan_huyen` (`ma_quan_huyen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laraadmin.dm_phuong_xa: ~106 rows (approximately)
/*!40000 ALTER TABLE `dm_phuong_xa` DISABLE KEYS */;
INSERT INTO `dm_phuong_xa` (`ma_phuong_xa`, `ten_phuong_xa`, `loai`, `ma_quan_huyen`, `created_at`, `updated_at`) VALUES
	(29236, 'Ph?????ng 4', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29239, 'Ph?????ng 1', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29242, 'Ph?????ng 3', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29245, 'Ph?????ng 2', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29248, 'Ph?????ng 5', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29251, 'Ph?????ng 6', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29254, 'Ph?????ng 7', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29257, 'Ph?????ng 8', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29260, 'Ph?????ng 9', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29263, 'X?? Long ?????c', 'Xa', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29266, 'Th??? tr???n C??ng Long', 'TT', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29269, 'X?? M??? C???m', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29272, 'X?? An Tr?????ng A', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29275, 'X?? An Tr?????ng', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29278, 'X?? Huy???n H???i', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29281, 'X?? T??n An', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29284, 'X?? T??n B??nh', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29287, 'X?? B??nh Ph??', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29290, 'X?? Ph????ng Th???nh', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29293, 'X?? ?????i Ph??c', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29296, 'X?? ?????i Ph?????c', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29299, 'X?? Nh??? Long Ph??', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29302, 'X?? Nh??? Long', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29305, 'X?? ?????c M???', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29308, 'Th??? tr???n C???u K??', 'TT', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29311, 'X?? H??a ??n', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29314, 'X?? Ch??u ??i???n', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29317, 'X?? An Ph?? T??n', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29320, 'X?? Ho?? T??n', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29323, 'X?? Ninh Th???i', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29326, 'X?? Phong Ph??', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29329, 'X?? Phong Th???nh', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29332, 'X?? Tam Ng??i', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29335, 'X?? Th??ng H??a', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29338, 'X?? Th???nh Ph??', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29341, 'Th??? tr???n Ti???u C???n', 'TT', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29344, 'Th??? tr???n C???u Quan', 'TT', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29347, 'X?? Ph?? C???n', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29350, 'X?? Hi???u T???', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29353, 'X?? Hi???u Trung', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29356, 'X?? Long Th???i', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29359, 'X?? H??ng H??a', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29362, 'X?? T??n H??ng', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29365, 'X?? T???p Ng??i', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29368, 'X?? Ng??i H??ng', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29371, 'X?? T??n H??a', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29374, 'Th??? tr???n Ch??u Th??nh', 'TT', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29377, 'X?? ??a L???c', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29380, 'X?? M??? Ch??nh', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29383, 'X?? Thanh M???', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29386, 'X?? L????ng Ho?? A', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29389, 'X?? L????ng H??a', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29392, 'X?? Song L???c', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29395, 'X?? Nguy???t H??a', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29398, 'X?? H??a Thu???n', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29401, 'X?? H??a L???i', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29404, 'X?? Ph?????c H???o', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29407, 'X?? H??ng M???', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29410, 'X?? H??a Minh', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29413, 'X?? Long H??a', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29416, 'Th??? tr???n C???u Ngang', 'TT', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29419, 'Th??? tr???n M??? Long', 'TT', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29422, 'X?? M??? Long B???c', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29425, 'X?? M??? Long Nam', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29428, 'X?? M??? H??a', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29431, 'X?? V??nh Kim', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29434, 'X?? Kim H??a', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29437, 'X?? Hi???p H??a', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29440, 'X?? Thu???n H??a', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29443, 'X?? Long S??n', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29446, 'X?? Nh??? Tr?????ng', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29449, 'X?? Tr?????ng Th???', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29452, 'X?? Hi???p M??? ????ng', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29455, 'X?? Hi???p M??? T??y', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29458, 'X?? Th???nh H??a S??n', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29461, 'Th??? tr???n Tr?? C??', 'TT', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29462, 'Th??? tr???n ?????nh An', 'TT', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29464, 'X?? Ph?????c H??ng', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29467, 'X?? T???p S??n', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29470, 'X?? T??n S??n', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29473, 'X?? An Qu???ng H???u', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29476, 'X?? L??u Nghi???p Anh', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29479, 'X?? Ng??i Xuy??n', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29482, 'X?? Kim S??n', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29485, 'X?? Thanh S??n', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29488, 'X?? H??m Giang', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29489, 'X?? H??m T??n', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29491, 'X?? ?????i An', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29494, 'Th??? tr???n ?????nh An', 'TT', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29497, 'X?? ????n Xu??n', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29500, 'X?? ????n Ch??u', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29503, 'X?? Ng???c Bi??n', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29506, 'X?? Long Hi???p', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29509, 'X?? T??n Hi???p', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29512, 'Ph?????ng 1', 'Phuong', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29513, 'Th??? tr???n Long Th??nh', 'TT', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29515, 'X?? Long To??n', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29516, 'Ph?????ng 2', 'Phuong', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29518, 'X?? Long H???u', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29521, 'X?? Long Kh??nh', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29524, 'X?? D??n Th??nh', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29527, 'X?? Tr?????ng Long H??a', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29530, 'X?? Ng?? L???c', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29533, 'X?? Long V??nh', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29536, 'X?? ????ng H???i', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29539, 'X?? Hi???p Th???nh', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54');
/*!40000 ALTER TABLE `dm_phuong_xa` ENABLE KEYS */;

-- Dumping structure for table laraadmin.dm_quan_huyen
CREATE TABLE IF NOT EXISTS `dm_quan_huyen` (
  `ma_quan_huyen` int(10) unsigned NOT NULL,
  `ten_quan_huyen` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_tinh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ma_quan_huyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laraadmin.dm_quan_huyen: ~9 rows (approximately)
/*!40000 ALTER TABLE `dm_quan_huyen` DISABLE KEYS */;
INSERT INTO `dm_quan_huyen` (`ma_quan_huyen`, `ten_quan_huyen`, `ma_tinh`, `loai`, `updated_at`, `created_at`) VALUES
	(842, 'Th??nh ph??? Tr?? Vinh', '84', 'TP', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(844, 'Huy???n C??ng Long', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(845, 'Huy???n C???u K??', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(846, 'Huy???n Ti???u C???n', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(847, 'Huy???n Ch??u Th??nh', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(848, 'Huy???n C???u Ngang', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(849, 'Huy???n Tr?? C??', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(850, 'Huy???n Duy??n H???i', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(851, 'Th??? x?? Duy??n H???i', '84', 'TX', '2020-08-13 02:00:55', '2020-08-13 02:00:55');
/*!40000 ALTER TABLE `dm_quan_huyen` ENABLE KEYS */;

-- Dumping structure for table laraadmin.dm_tham_so_he_thong
CREATE TABLE IF NOT EXISTS `dm_tham_so_he_thong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_tham_so` varchar(250) DEFAULT NULL,
  `ten_tham_so` varchar(250) DEFAULT NULL,
  `loai_tham_so` varchar(250) DEFAULT NULL,
  `gia_tri_tham_so` varchar(250) DEFAULT NULL,
  `mo_ta_tham_so` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table laraadmin.dm_tham_so_he_thong: ~0 rows (approximately)
/*!40000 ALTER TABLE `dm_tham_so_he_thong` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_tham_so_he_thong` ENABLE KEYS */;

-- Dumping structure for table laraadmin.don_vi
CREATE TABLE IF NOT EXISTS `don_vi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ma_don_vi` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_don_vi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ma_phuong_xa` int(10) unsigned NOT NULL,
  `ma_cap` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_dinh_danh` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_dinh` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `di_dong` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1 COMMENT '0: kh??ng ho???t ?????ng; 1: ho???t ?????ng',
  PRIMARY KEY (`id`),
  KEY `FK_don_vi_don_vi` (`parent_id`),
  KEY `order` (`order`),
  KEY `FK_don_vi_dm_phuong_xa` (`ma_phuong_xa`),
  CONSTRAINT `FK_don_vi_dm_phuong_xa` FOREIGN KEY (`ma_phuong_xa`) REFERENCES `dm_phuong_xa` (`ma_phuong_xa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_don_vi_don_vi` FOREIGN KEY (`parent_id`) REFERENCES `don_vi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laraadmin.don_vi: ~25 rows (approximately)
/*!40000 ALTER TABLE `don_vi` DISABLE KEYS */;
INSERT INTO `don_vi` (`id`, `ma_don_vi`, `ten_don_vi`, `ma_phuong_xa`, `ma_cap`, `ma_dinh_danh`, `email`, `co_dinh`, `di_dong`, `fax`, `parent_id`, `order`, `state`) VALUES
	(1, NULL, 'T???nh Tr?? Vinh', 29239, 'UBT', '000.00.00.H59', NULL, NULL, NULL, NULL, NULL, 0, 1),
	(2, NULL, 'VNPT Tr?? Vinh', 29236, 'VTT', '000.00.01.H59', NULL, NULL, NULL, NULL, 1, 1, 1),
	(12, NULL, 'Trung t??m C??ng ngh??? Th??ng tin', 29236, 'TTCNTT', '000.01.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1),
	(13, NULL, 'Trung t??m Vi???n Th??ng I', 29236, 'TTVT', '000.02.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1),
	(14, NULL, 'Trung t??m Vi???n Th??ng II', 29236, 'TTVT', '000.03.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1),
	(15, NULL, 'Trung t??m Vi???n Th??ng III', 29236, 'TTVT', '000.04.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1),
	(16, NULL, 'Vi???n Th??ng TP.Tr?? Vinh', 29239, 'HUYEN', '001.02.01.H59', NULL, NULL, NULL, NULL, 13, 1, 1),
	(17, NULL, 'Vi???n Th??ng Ch??u Th??nh', 29374, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 13, 1, 1),
	(18, NULL, 'Ph??ng gi???i ph??p', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1),
	(19, NULL, 'Ph??ng t???ng h???p', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1),
	(20, NULL, 'Vi???n Th??ng C???u K??', 29308, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 14, 1, 1),
	(21, NULL, 'Vi???n Th??ng C??ng Long', 29266, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 14, 1, 1),
	(22, NULL, 'Vi???n Th??ng Tr?? C??', 29461, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1),
	(23, NULL, 'Vi???n Th??ng Ti???u C???n', 29341, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1),
	(24, NULL, 'Vi???n Th??ng C???u Ngang', 29416, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1),
	(25, NULL, 'Vi???n Th??ng huy???n Duy??n H???i', 29497, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1),
	(26, NULL, 'Vi???n Th??ng th??? x?? Duy??n H???i', 29512, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1),
	(27, NULL, 'Ph??ng 001', 29512, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, 1),
	(28, NULL, 'Ph??ng 002', 29512, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, 1),
	(29, NULL, 'Ph??ng 003', 29512, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, 1),
	(31, NULL, 'T??? ti???p nh???n - TTVT 1', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1),
	(32, NULL, 'T??? x??? l?? - TTVT 1', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1),
	(33, NULL, 'T??? l??nh ?????o - TTVT 1', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1),
	(34, NULL, 'Ban gi??m ?????c', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1),
	(35, NULL, 'Tth??? x?? Duy??n H???i', 29512, 'Xa', '001.03.01.H59', NULL, NULL, NULL, NULL, 26, 1, 1);
/*!40000 ALTER TABLE `don_vi` ENABLE KEYS */;

-- Dumping structure for table laraadmin.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laraadmin.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('thanhpv.tvh', '$2y$10$GeJq5nbaNzdeY8UqlCnDIOIh6uSHYw5iZcRhpKuPxDrBtqBT4qAG.', '2019-06-20 02:17:07');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laraadmin.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/user.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `di_dong` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `FK_users_admin_role` (`role_id`),
  CONSTRAINT `FK_users_admin_role` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laraadmin.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `hinh_anh`, `remember_token`, `created_at`, `updated_at`, `di_dong`, `state`) VALUES
	(1, 1, 'Qu???n tr??? h??? th???ng', 'admin', '$2y$10$VZI0siYq7lRPvqt8e.QbXOWDBelj91YwJoLsEKx4GxbWH5XQb87xO', '/user.png', 'klX9rtip3Sqwqmj627ltooqWodqYL7eWGWYNrOt293a3E5mJbjJfOGB1SunG', '2021-03-12 20:57:11', '2021-03-13 10:57:58', '0941138484', 1),
	(7, 9, 'PHAN V??N THANH', 'thanhpv.tvh', '$2y$10$GI0MnyNj0yytX2lJCa0/MecdopxaogmgkVN2odxH2OvxTSupEBKS6', 'al_16156058900.jpg;', NULL, '2021-03-13 10:24:50', '2021-03-13 10:38:34', '0941138484', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
