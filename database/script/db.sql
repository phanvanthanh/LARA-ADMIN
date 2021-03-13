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


-- Dumping database structure for alcomputer
CREATE DATABASE IF NOT EXISTS `alcomputer` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `alcomputer`;

-- Dumping structure for table alcomputer.admin_resource
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

-- Dumping data for table alcomputer.admin_resource: ~46 rows (approximately)
/*!40000 ALTER TABLE `admin_resource` DISABLE KEYS */;
INSERT INTO `admin_resource` (`id`, `ten_hien_thi`, `resource`, `method`, `action`, `parameter`, `parameter_value`, `parent_id`, `created_at`, `updated_at`, `uri`, `status`, `show_menu`, `order`, `icon`) VALUES
	(1, '#', '#', '#', '#', '#', '#', NULL, '2021-03-12 16:43:45', '2021-03-12 16:46:12', '#', 1, 1, 0, NULL),
	(872, 'Đăng nhập', 'GET | App\\Http\\Controllers\\Auth\\LoginController@showLoginForm', 'GET', 'App\\Http\\Controllers\\Auth\\LoginController@showLoginForm', '', '', 1, '2021-03-12 16:43:45', '2021-03-12 20:02:59', 'login', 1, 1, 1000, '<i class="fa fa-lock menu-icon"></i>'),
	(873, 'Nút đăng nhập', 'POST | App\\Http\\Controllers\\Auth\\LoginController@login', 'POST', 'App\\Http\\Controllers\\Auth\\LoginController@login', '', '', 872, '2021-03-12 16:43:45', '2021-03-12 16:47:52', 'login', 1, 2, 1000, NULL),
	(874, 'Đăng xuất', 'POST | App\\Http\\Controllers\\Auth\\LoginController@logout', 'POST', 'App\\Http\\Controllers\\Auth\\LoginController@logout', '', '', 1, '2021-03-12 16:43:45', '2021-03-12 20:02:12', 'logout', 1, 2, 1000, '<i class="fa fa-unlock menu-icon"></i>'),
	(875, 'Đăng ký', 'GET | App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm', 'GET', 'App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm', '', '', 1, '2021-03-12 16:43:45', '2021-03-12 19:58:46', 'register', 1, 1, 1000, '<i class="fa fa-vcard-o menu-icon"></i>'),
	(876, 'Nút đăng ký', 'POST | App\\Http\\Controllers\\Auth\\RegisterController@register', 'POST', 'App\\Http\\Controllers\\Auth\\RegisterController@register', '', '', 875, '2021-03-12 16:43:45', '2021-03-12 19:35:55', 'register', 1, 2, 1000, NULL),
	(877, 'Reset mật khẩu', 'GET | App\\Http\\Controllers\\Auth\\ForgotPasswordController@showLinkRequestForm', 'GET', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@showLinkRequestForm', '', '', 1, '2021-03-12 16:43:45', '2021-03-12 20:00:11', 'password/reset', 1, 1, 1000, '<i class="fa fa-refresh menu-icon"></i>'),
	(878, 'password/email', 'POST | App\\Http\\Controllers\\Auth\\ForgotPasswordController@sendResetLinkEmail', 'POST', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@sendResetLinkEmail', '', '', 877, '2021-03-12 16:43:45', '2021-03-12 19:36:41', 'password/email', 1, 2, 1000, NULL),
	(879, 'password/reset/{token}', 'GET | App\\Http\\Controllers\\Auth\\ResetPasswordController@showResetForm', 'GET', 'App\\Http\\Controllers\\Auth\\ResetPasswordController@showResetForm', '', '', 877, '2021-03-12 16:43:45', '2021-03-12 19:36:54', 'password/reset/{token}', 1, 1, 1000, NULL),
	(880, 'password/reset', 'POST | App\\Http\\Controllers\\Auth\\ResetPasswordController@reset', 'POST', 'App\\Http\\Controllers\\Auth\\ResetPasswordController@reset', '', '', 877, '2021-03-12 16:43:45', '2021-03-12 19:37:04', 'password/reset', 1, 2, 1000, NULL),
	(881, 'password/confirm', 'GET | App\\Http\\Controllers\\Auth\\ConfirmPasswordController@showConfirmForm', 'GET', 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController@showConfirmForm', '', '', 877, '2021-03-12 16:43:45', '2021-03-12 19:37:14', 'password/confirm', 1, 1, 1000, NULL),
	(882, 'password/confirm', 'POST | App\\Http\\Controllers\\Auth\\ConfirmPasswordController@confirm', 'POST', 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController@confirm', '', '', 877, '2021-03-12 16:43:45', '2021-03-12 19:37:25', 'password/confirm', 1, 2, 1000, NULL),
	(883, 'Danh mục phường xã', 'GET | App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXa', 'GET', 'App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXa', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:28:32', 'dm-phuong-xa', 1, 1, 8, '<i class="menu-icon icon-location-pin"></i>'),
	(884, 'Import danh mục phường xã', 'POST | App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXaAndImport', 'POST', 'App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXaAndImport', '', '', 883, '2021-03-12 16:43:45', '2021-03-12 19:38:06', 'dm-phuong-xa/import', 1, 2, 1000, NULL),
	(885, 'Danh mục quận huyện', 'GET | App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyen', 'GET', 'App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyen', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:28:25', 'dm-quan-huyen', 1, 1, 7, '<i class="menu-icon icon-location-pin"></i>'),
	(886, 'Import danh mục quận/huyện', 'POST | App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyenAndImport', 'POST', 'App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyenAndImport', '', '', 885, '2021-03-12 16:43:45', '2021-03-12 19:38:49', 'dm-quan-huyen/import', 1, 2, 1000, NULL),
	(887, 'Đơn vị', 'GET | App\\Modules\\DonVi\\Controllers\\DonViController@donVi', 'GET', 'App\\Modules\\DonVi\\Controllers\\DonViController@donVi', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:28:16', 'don-vi', 1, 1, 6, '<i class="fa fa-university menu-icon"></i>'),
	(888, 'Xem danh sách đơn vị', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@danhSachDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@danhSachDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-03-12 19:39:32', 'danh-sach-don-vi', 1, 2, 1000, NULL),
	(889, 'Thêm đơn vị', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@themDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@themDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-03-12 19:39:47', 'them-don-vi', 1, 2, 1000, NULL),
	(890, 'Load thông tin đơn vị', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@donViSingle', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@donViSingle', '', '', 887, '2021-03-12 16:43:45', '2021-03-12 19:40:09', 'don-vi-single', 1, 2, 1000, NULL),
	(891, 'Cập nhật đơn vị', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@capNhatDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@capNhatDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-03-12 19:40:22', 'cap-nhat-don-vi', 1, 2, 1000, NULL),
	(892, 'Xóa đơn vị', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@xoaDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@xoaDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-03-12 19:40:40', 'xoa-don-vi', 1, 2, 1000, NULL),
	(893, 'Nhóm quyền', 'GET | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyen', 'GET', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyen', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:27:34', 'nhom-quyen', 1, 1, 3, '<i class="fa fa-users menu-icon"></i>'),
	(894, 'Xem danh sách nhóm quyền', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@danhSachNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@danhSachNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-03-12 19:41:10', 'danh-sach-nhom-quyen', 1, 2, 1000, NULL),
	(895, 'Thêm nhóm quyền', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@themNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@themNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-03-12 19:41:24', 'them-nhom-quyen', 1, 2, 1000, NULL),
	(896, 'Load thông tin nhóm quyền', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyenSingle', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyenSingle', '', '', 893, '2021-03-12 16:43:45', '2021-03-12 19:41:38', 'nhom-quyen-single', 1, 2, 1000, NULL),
	(897, 'Cập nhật nhóm quyền', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@capNhatNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@capNhatNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-03-12 19:41:53', 'cap-nhat-nhom-quyen', 1, 2, 1000, NULL),
	(898, 'Xóa nhóm quyền', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@xoaNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@xoaNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-03-12 19:42:06', 'xoa-nhom-quyen', 1, 2, 1000, NULL),
	(899, 'Phân quyền', 'GET | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyen', 'GET', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyen', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:27:42', 'phan-quyen', 1, 1, 4, '<i class="fa fa-cogs menu-icon"></i>'),
	(900, 'Lưu thông tin quyền', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenPost', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenPost', '', '', 899, '2021-03-12 16:43:45', '2021-03-12 19:42:48', 'phan-quyen-post', 1, 2, 1000, NULL),
	(901, 'Load danh sách nhóm quyền', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachNhomQuyen', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachNhomQuyen', '', '', 899, '2021-03-12 16:43:45', '2021-03-12 19:44:01', 'phan-quyen/danh-sach-nhom-quyen', 1, 2, 1000, NULL),
	(902, 'Load danh sách quyền', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachQuyenTheoNhomQuyenId', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachQuyenTheoNhomQuyenId', '', '', 899, '2021-03-12 16:43:45', '2021-03-12 19:44:25', 'phan-quyen/danh-sach-quyen-theo-nhom-quyen-id', 1, 2, 1000, NULL),
	(903, 'Danh mục chức năng', 'GET | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyen', 'GET', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyen', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:28:04', 'tai-nguyen', 1, 1, 5, '<i class="menu-icon icon-list"></i>'),
	(904, 'Xem danh sách tài nguyên', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@danhSachTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@danhSachTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:44:44', 'danh-sach-tai-nguyen', 1, 2, 1000, NULL),
	(905, 'Quét tài nguyên hệ thống', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@quetTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@quetTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:45:37', 'quet-tai-nguyen', 1, 2, 1000, NULL),
	(906, 'Thêm tài nguyên', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@themTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@themTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:45:55', 'them-tai-nguyen', 1, 2, 1000, NULL),
	(907, 'Load thông tin tài nguyên', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyenSingle', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyenSingle', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:46:16', 'tai-nguyen-single', 1, 2, 1000, NULL),
	(908, 'Cập nhật tài nguyên', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@capNhatTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@capNhatTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:46:30', 'cap-nhat-tai-nguyen', 1, 2, 1000, NULL),
	(909, 'Xóa tài nguyên', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@xoaTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@xoaTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-03-12 19:46:41', 'xoa-tai-nguyen', 1, 2, 1000, NULL),
	(910, 'Trang chủ', 'GET | App\\Modules\\TrangChu\\Controllers\\TrangChuController@home', 'GET', 'App\\Modules\\TrangChu\\Controllers\\TrangChuController@home', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:25:54', '/', 1, 1, 1, '<i class="fa fa-home menu-icon"></i>'),
	(911, 'Tài khoản', 'GET | App\\Modules\\User\\Controllers\\UserController@user', 'GET', 'App\\Modules\\User\\Controllers\\UserController@user', '', '', 1, '2021-03-12 16:43:45', '2021-03-13 06:26:17', 'user', 1, 1, 2, '<i class="fa fa-address-book menu-icon"></i>'),
	(912, 'Xem danh sách tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@danhSachUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@danhSachUser', '', '', 911, '2021-03-12 16:43:45', '2021-03-12 19:47:23', 'danh-sach-user', 1, 2, 1000, NULL),
	(913, 'Tạo tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@themUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@themUser', '', '', 911, '2021-03-12 16:43:45', '2021-03-12 19:47:40', 'them-user', 1, 2, 1000, NULL),
	(914, 'Load thông tin tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@userSingle', 'POST', 'App\\Modules\\User\\Controllers\\UserController@userSingle', '', '', 911, '2021-03-12 16:43:45', '2021-03-12 19:49:20', 'user-single', 1, 2, 1000, NULL),
	(915, 'Cập nhật tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@capNhatUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@capNhatUser', '', '', 911, '2021-03-12 16:43:45', '2021-03-12 19:49:36', 'cap-nhat-user', 1, 2, 1000, NULL),
	(916, 'Xóa tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@xoaUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@xoaUser', '', '', 911, '2021-03-12 16:43:45', '2021-03-12 19:49:47', 'xoa-user', 1, 2, 1000, NULL);
/*!40000 ALTER TABLE `admin_resource` ENABLE KEYS */;

-- Dumping structure for table alcomputer.admin_role
CREATE TABLE IF NOT EXISTS `admin_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` int(10) unsigned NOT NULL DEFAULT 1 COMMENT '0: ngừng hoạt động; 1: hoạt động',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alcomputer.admin_role: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` (`id`, `role_name`, `state`, `created_at`, `updated_at`) VALUES
	(1, 'ADMIN', 1, NULL, '2021-03-12 21:01:52');
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;

-- Dumping structure for table alcomputer.admin_rule
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alcomputer.admin_rule: ~44 rows (approximately)
/*!40000 ALTER TABLE `admin_rule` DISABLE KEYS */;
INSERT INTO `admin_rule` (`id`, `role_id`, `resource_id`, `created_at`, `updated_at`) VALUES
	(163, 1, 872, '2021-03-12 21:11:41', '2021-03-12 21:11:41'),
	(164, 1, 873, '2021-03-12 21:11:41', '2021-03-12 21:11:41'),
	(165, 1, 875, '2021-03-12 21:11:42', '2021-03-12 21:11:42'),
	(166, 1, 876, '2021-03-12 21:11:42', '2021-03-12 21:11:42'),
	(167, 1, 877, '2021-03-12 21:11:44', '2021-03-12 21:11:44'),
	(168, 1, 878, '2021-03-12 21:11:44', '2021-03-12 21:11:44'),
	(169, 1, 879, '2021-03-12 21:11:44', '2021-03-12 21:11:44'),
	(170, 1, 880, '2021-03-12 21:11:44', '2021-03-12 21:11:44'),
	(171, 1, 881, '2021-03-12 21:11:44', '2021-03-12 21:11:44'),
	(172, 1, 882, '2021-03-12 21:11:44', '2021-03-12 21:11:44'),
	(173, 1, 883, '2021-03-12 21:11:45', '2021-03-12 21:11:45'),
	(174, 1, 884, '2021-03-12 21:11:45', '2021-03-12 21:11:45'),
	(175, 1, 885, '2021-03-12 21:11:47', '2021-03-12 21:11:47'),
	(176, 1, 886, '2021-03-12 21:11:47', '2021-03-12 21:11:47'),
	(177, 1, 887, '2021-03-12 21:11:48', '2021-03-12 21:11:48'),
	(178, 1, 888, '2021-03-12 21:11:48', '2021-03-12 21:11:48'),
	(179, 1, 889, '2021-03-12 21:11:48', '2021-03-12 21:11:48'),
	(180, 1, 890, '2021-03-12 21:11:48', '2021-03-12 21:11:48'),
	(181, 1, 891, '2021-03-12 21:11:48', '2021-03-12 21:11:48'),
	(182, 1, 892, '2021-03-12 21:11:48', '2021-03-12 21:11:48'),
	(183, 1, 893, '2021-03-12 21:11:50', '2021-03-12 21:11:50'),
	(184, 1, 894, '2021-03-12 21:11:50', '2021-03-12 21:11:50'),
	(185, 1, 895, '2021-03-12 21:11:50', '2021-03-12 21:11:50'),
	(186, 1, 896, '2021-03-12 21:11:50', '2021-03-12 21:11:50'),
	(187, 1, 897, '2021-03-12 21:11:50', '2021-03-12 21:11:50'),
	(188, 1, 898, '2021-03-12 21:11:50', '2021-03-12 21:11:50'),
	(189, 1, 899, '2021-03-12 21:11:51', '2021-03-12 21:11:51'),
	(190, 1, 900, '2021-03-12 21:11:51', '2021-03-12 21:11:51'),
	(191, 1, 901, '2021-03-12 21:11:51', '2021-03-12 21:11:51'),
	(192, 1, 902, '2021-03-12 21:11:51', '2021-03-12 21:11:51'),
	(193, 1, 903, '2021-03-12 21:11:53', '2021-03-12 21:11:53'),
	(194, 1, 904, '2021-03-12 21:11:53', '2021-03-12 21:11:53'),
	(195, 1, 905, '2021-03-12 21:11:53', '2021-03-12 21:11:53'),
	(196, 1, 906, '2021-03-12 21:11:53', '2021-03-12 21:11:53'),
	(197, 1, 907, '2021-03-12 21:11:53', '2021-03-12 21:11:53'),
	(198, 1, 908, '2021-03-12 21:11:53', '2021-03-12 21:11:53'),
	(199, 1, 909, '2021-03-12 21:11:53', '2021-03-12 21:11:53'),
	(200, 1, 910, '2021-03-12 21:11:54', '2021-03-12 21:11:54'),
	(201, 1, 911, '2021-03-12 21:11:56', '2021-03-12 21:11:56'),
	(202, 1, 912, '2021-03-12 21:11:56', '2021-03-12 21:11:56'),
	(203, 1, 913, '2021-03-12 21:11:56', '2021-03-12 21:11:56'),
	(204, 1, 914, '2021-03-12 21:11:56', '2021-03-12 21:11:56'),
	(205, 1, 915, '2021-03-12 21:11:56', '2021-03-12 21:11:56'),
	(206, 1, 916, '2021-03-12 21:11:56', '2021-03-12 21:11:56');
/*!40000 ALTER TABLE `admin_rule` ENABLE KEYS */;

-- Dumping structure for table alcomputer.dm_cap_don_vi
CREATE TABLE IF NOT EXISTS `dm_cap_don_vi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_cap` varchar(50) DEFAULT NULL,
  `ten_cap` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table alcomputer.dm_cap_don_vi: ~8 rows (approximately)
/*!40000 ALTER TABLE `dm_cap_don_vi` DISABLE KEYS */;
INSERT INTO `dm_cap_don_vi` (`id`, `ma_cap`, `ten_cap`) VALUES
	(1, 'UBT', 'UBND Tỉnh'),
	(2, 'VTT', 'VIỄN THÔNG TỈNH TRÀ VINH'),
	(3, 'TTCNTT', 'Trung tâm công nghệ thông tin'),
	(4, 'TTDHTT', 'Trung tâm Điều hành thông tin'),
	(5, 'TTKDTT', 'Trung tâm Kinh doanh thông tin'),
	(6, 'TTVT', 'Trung tâm Viễn thông'),
	(7, 'HUYEN', 'Viễn thông cấp huyện'),
	(8, 'XA', 'Viễn thông cấp huyện');
/*!40000 ALTER TABLE `dm_cap_don_vi` ENABLE KEYS */;

-- Dumping structure for table alcomputer.dm_phuong_xa
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

-- Dumping data for table alcomputer.dm_phuong_xa: ~106 rows (approximately)
/*!40000 ALTER TABLE `dm_phuong_xa` DISABLE KEYS */;
INSERT INTO `dm_phuong_xa` (`ma_phuong_xa`, `ten_phuong_xa`, `loai`, `ma_quan_huyen`, `created_at`, `updated_at`) VALUES
	(29236, 'Phường 4', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29239, 'Phường 1', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29242, 'Phường 3', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29245, 'Phường 2', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29248, 'Phường 5', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29251, 'Phường 6', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29254, 'Phường 7', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29257, 'Phường 8', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29260, 'Phường 9', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29263, 'Xã Long Đức', 'Xa', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29266, 'Thị trấn Càng Long', 'TT', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29269, 'Xã Mỹ Cẩm', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29272, 'Xã An Trường A', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29275, 'Xã An Trường', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29278, 'Xã Huyền Hội', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29281, 'Xã Tân An', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29284, 'Xã Tân Bình', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29287, 'Xã Bình Phú', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29290, 'Xã Phương Thạnh', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29293, 'Xã Đại Phúc', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29296, 'Xã Đại Phước', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29299, 'Xã Nhị Long Phú', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29302, 'Xã Nhị Long', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29305, 'Xã Đức Mỹ', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29308, 'Thị trấn Cầu Kè', 'TT', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29311, 'Xã Hòa Ân', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29314, 'Xã Châu Điền', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29317, 'Xã An Phú Tân', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29320, 'Xã Hoà Tân', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29323, 'Xã Ninh Thới', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29326, 'Xã Phong Phú', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29329, 'Xã Phong Thạnh', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29332, 'Xã Tam Ngãi', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29335, 'Xã Thông Hòa', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29338, 'Xã Thạnh Phú', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29341, 'Thị trấn Tiểu Cần', 'TT', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29344, 'Thị trấn Cầu Quan', 'TT', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29347, 'Xã Phú Cần', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29350, 'Xã Hiếu Tử', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29353, 'Xã Hiếu Trung', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29356, 'Xã Long Thới', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29359, 'Xã Hùng Hòa', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29362, 'Xã Tân Hùng', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29365, 'Xã Tập Ngãi', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29368, 'Xã Ngãi Hùng', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29371, 'Xã Tân Hòa', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29374, 'Thị trấn Châu Thành', 'TT', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29377, 'Xã Đa Lộc', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29380, 'Xã Mỹ Chánh', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29383, 'Xã Thanh Mỹ', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29386, 'Xã Lương Hoà A', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29389, 'Xã Lương Hòa', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29392, 'Xã Song Lộc', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29395, 'Xã Nguyệt Hóa', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29398, 'Xã Hòa Thuận', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29401, 'Xã Hòa Lợi', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29404, 'Xã Phước Hảo', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29407, 'Xã Hưng Mỹ', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29410, 'Xã Hòa Minh', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29413, 'Xã Long Hòa', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29416, 'Thị trấn Cầu Ngang', 'TT', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29419, 'Thị trấn Mỹ Long', 'TT', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29422, 'Xã Mỹ Long Bắc', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29425, 'Xã Mỹ Long Nam', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29428, 'Xã Mỹ Hòa', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29431, 'Xã Vĩnh Kim', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29434, 'Xã Kim Hòa', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29437, 'Xã Hiệp Hòa', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29440, 'Xã Thuận Hòa', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29443, 'Xã Long Sơn', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29446, 'Xã Nhị Trường', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29449, 'Xã Trường Thọ', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29452, 'Xã Hiệp Mỹ Đông', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29455, 'Xã Hiệp Mỹ Tây', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29458, 'Xã Thạnh Hòa Sơn', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29461, 'Thị trấn Trà Cú', 'TT', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29462, 'Thị trấn Định An', 'TT', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29464, 'Xã Phước Hưng', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29467, 'Xã Tập Sơn', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29470, 'Xã Tân Sơn', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29473, 'Xã An Quảng Hữu', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29476, 'Xã Lưu Nghiệp Anh', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29479, 'Xã Ngãi Xuyên', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29482, 'Xã Kim Sơn', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29485, 'Xã Thanh Sơn', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29488, 'Xã Hàm Giang', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29489, 'Xã Hàm Tân', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29491, 'Xã Đại An', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29494, 'Thị trấn Định An', 'TT', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29497, 'Xã Đôn Xuân', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29500, 'Xã Đôn Châu', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29503, 'Xã Ngọc Biên', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29506, 'Xã Long Hiệp', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29509, 'Xã Tân Hiệp', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29512, 'Phường 1', 'Phuong', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29513, 'Thị trấn Long Thành', 'TT', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29515, 'Xã Long Toàn', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29516, 'Phường 2', 'Phuong', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29518, 'Xã Long Hữu', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29521, 'Xã Long Khánh', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29524, 'Xã Dân Thành', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29527, 'Xã Trường Long Hòa', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29530, 'Xã Ngũ Lạc', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29533, 'Xã Long Vĩnh', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29536, 'Xã Đông Hải', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29539, 'Xã Hiệp Thạnh', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54');
/*!40000 ALTER TABLE `dm_phuong_xa` ENABLE KEYS */;

-- Dumping structure for table alcomputer.dm_quan_huyen
CREATE TABLE IF NOT EXISTS `dm_quan_huyen` (
  `ma_quan_huyen` int(10) unsigned NOT NULL,
  `ten_quan_huyen` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_tinh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ma_quan_huyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table alcomputer.dm_quan_huyen: ~9 rows (approximately)
/*!40000 ALTER TABLE `dm_quan_huyen` DISABLE KEYS */;
INSERT INTO `dm_quan_huyen` (`ma_quan_huyen`, `ten_quan_huyen`, `ma_tinh`, `loai`, `updated_at`, `created_at`) VALUES
	(842, 'Thành phố Trà Vinh', '84', 'TP', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(844, 'Huyện Càng Long', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(845, 'Huyện Cầu Kè', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(846, 'Huyện Tiểu Cần', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(847, 'Huyện Châu Thành', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(848, 'Huyện Cầu Ngang', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(849, 'Huyện Trà Cú', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(850, 'Huyện Duyên Hải', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(851, 'Thị xã Duyên Hải', '84', 'TX', '2020-08-13 02:00:55', '2020-08-13 02:00:55');
/*!40000 ALTER TABLE `dm_quan_huyen` ENABLE KEYS */;

-- Dumping structure for table alcomputer.dm_tham_so_he_thong
CREATE TABLE IF NOT EXISTS `dm_tham_so_he_thong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_tham_so` varchar(250) DEFAULT NULL,
  `ten_tham_so` varchar(250) DEFAULT NULL,
  `loai_tham_so` varchar(250) DEFAULT NULL,
  `gia_tri_tham_so` varchar(250) DEFAULT NULL,
  `mo_ta_tham_so` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table alcomputer.dm_tham_so_he_thong: ~0 rows (approximately)
/*!40000 ALTER TABLE `dm_tham_so_he_thong` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_tham_so_he_thong` ENABLE KEYS */;

-- Dumping structure for table alcomputer.don_vi
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
  `state` int(11) NOT NULL DEFAULT 1 COMMENT '0: không hoạt động; 1: hoạt động',
  PRIMARY KEY (`id`),
  KEY `FK_don_vi_don_vi` (`parent_id`),
  KEY `order` (`order`),
  KEY `FK_don_vi_dm_phuong_xa` (`ma_phuong_xa`),
  CONSTRAINT `FK_don_vi_dm_phuong_xa` FOREIGN KEY (`ma_phuong_xa`) REFERENCES `dm_phuong_xa` (`ma_phuong_xa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_don_vi_don_vi` FOREIGN KEY (`parent_id`) REFERENCES `don_vi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table alcomputer.don_vi: ~25 rows (approximately)
/*!40000 ALTER TABLE `don_vi` DISABLE KEYS */;
INSERT INTO `don_vi` (`id`, `ma_don_vi`, `ten_don_vi`, `ma_phuong_xa`, `ma_cap`, `ma_dinh_danh`, `email`, `co_dinh`, `di_dong`, `fax`, `parent_id`, `order`, `state`) VALUES
	(1, NULL, 'Tỉnh Trà Vinh', 29239, 'UBT', '000.00.00.H59', NULL, NULL, NULL, NULL, NULL, 0, 1),
	(2, NULL, 'VNPT Trà Vinh', 29236, 'VTT', '000.00.01.H59', NULL, NULL, NULL, NULL, 1, 1, 1),
	(12, NULL, 'Trung tâm Công nghệ Thông tin', 29236, 'TTCNTT', '000.01.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1),
	(13, NULL, 'Trung tâm Viễn Thông I', 29236, 'TTVT', '000.02.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1),
	(14, NULL, 'Trung tâm Viễn Thông II', 29236, 'TTVT', '000.03.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1),
	(15, NULL, 'Trung tâm Viễn Thông III', 29236, 'TTVT', '000.04.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1),
	(16, NULL, 'Viễn Thông TP.Trà Vinh', 29239, 'HUYEN', '001.02.01.H59', NULL, NULL, NULL, NULL, 13, 1, 1),
	(17, NULL, 'Viễn Thông Châu Thành', 29374, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 13, 1, 1),
	(18, NULL, 'Phòng giải pháp', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1),
	(19, NULL, 'Phòng tổng hợp', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1),
	(20, NULL, 'Viễn Thông Cầu Kè', 29308, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 14, 1, 1),
	(21, NULL, 'Viễn Thông Càng Long', 29266, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 14, 1, 1),
	(22, NULL, 'Viễn Thông Trà Cú', 29461, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1),
	(23, NULL, 'Viễn Thông Tiểu Cần', 29341, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1),
	(24, NULL, 'Viễn Thông Cầu Ngang', 29416, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1),
	(25, NULL, 'Viễn Thông huyện Duyên Hải', 29497, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1),
	(26, NULL, 'Viễn Thông thị xã Duyên Hải', 29512, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1),
	(27, NULL, 'Phòng 001', 29512, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, 1),
	(28, NULL, 'Phòng 002', 29512, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, 1),
	(29, NULL, 'Phòng 003', 29512, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, 1),
	(31, NULL, 'Tổ tiếp nhận - TTVT 1', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1),
	(32, NULL, 'Tổ xử lý - TTVT 1', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1),
	(33, NULL, 'Tổ lãnh đạo - TTVT 1', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1),
	(34, NULL, 'Ban giám đốc', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1),
	(35, NULL, 'Tthị xã Duyên Hải', 29512, 'Xa', '001.03.01.H59', NULL, NULL, NULL, NULL, 26, 1, 1);
/*!40000 ALTER TABLE `don_vi` ENABLE KEYS */;

-- Dumping structure for table alcomputer.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alcomputer.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('thanhpv.tvh', '$2y$10$GeJq5nbaNzdeY8UqlCnDIOIh6uSHYw5iZcRhpKuPxDrBtqBT4qAG.', '2019-06-20 02:17:07');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table alcomputer.users
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alcomputer.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `hinh_anh`, `remember_token`, `created_at`, `updated_at`, `di_dong`, `state`) VALUES
	(1, 1, 'Quản trị hệ thống', 'admin', '$2y$10$VZI0siYq7lRPvqt8e.QbXOWDBelj91YwJoLsEKx4GxbWH5XQb87xO', '/user.png', 'k5qMwFAiDw2vTxbwXx9S0Gg5KJRsIPs2bZSqO4pwSplKWVItXD9RpMMLshGq', '2021-03-12 20:57:11', '2021-03-12 21:48:10', '0941138484', 1),
	(3, 1, 'test', 'test', '$2y$10$lJa0GHz7joT3Bk8bCHUZa.r9sLdsknhnYUy2ZMH8cfQWth3rMaqf.', '/user.png', 'ICUhjIjBFWJs0tWVq4CJBKZUFgoqv7CSyYgrBvD2eGHjgntRr1pNh9RyhwXP', '2021-03-12 20:57:11', '2021-03-12 21:50:06', '0941138484', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
