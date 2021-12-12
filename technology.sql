-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2021 lúc 05:53 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `technology`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
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
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2021-12-04 08:32:01', '$2y$10$bxEfWBsxKBRmN7q6KGSNQu7Wg/3ndCUaBTGPZUT2KqL4WG.eCoUzm', 'B5QCNDI8Fj', '2021-12-04 08:32:01', '2021-12-04 08:32:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Tin tuyển dụng', '<p>Tuyển dụng 10 ctv bán hàng</p>', 1, '2021-12-04 08:43:32', '2021-12-04 08:43:32'),
(2, 'Khai trương cửa hàng mới', '<p>khai trương cửa hàng mới, tặng ngay voucher trị giá 200.000 VND</p>', 2, '2021-12-04 08:44:43', '2021-12-04 08:44:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Acer', '/storage/images/brands/254_aceraspire.jpg', '2021-12-04 08:32:06', '2021-12-04 09:46:50'),
(2, 'Asus', '/storage/images/brands/logo-Asus.jpg', '2021-12-04 08:32:06', '2021-12-04 09:47:31'),
(3, 'Dell', '/storage/images/brands/dell-logo-inkythuatso-4-01-30-10-18-11.jpg', '2021-12-04 08:32:06', '2021-12-04 09:47:59'),
(4, 'Logitech', '/storage/images/brands/Logitech-Logo-2015-present.jpg', '2021-12-04 08:32:06', '2021-12-04 09:48:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `image_path`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', '/storage/images/categories/laptop.jpg', 1, '2021-12-04 08:32:11', '2021-12-04 09:20:53'),
(2, 'Chuột', '/storage/images/categories/chuot.jpg', 1, '2021-12-04 08:32:11', '2021-12-04 09:21:01'),
(3, 'Bàn phím', '/storage/images/categories/banphim.jpg', 1, '2021-12-04 08:32:11', '2021-12-04 09:21:17'),
(4, 'Loa và tai nghe', '/storage/images/categories/tainghe.jpg', 1, '2021-12-04 08:32:11', '2021-12-04 09:31:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_08_19_000000_create_failed_jobs_table', 1),
(31, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(32, '2021_11_18_171524_create_admins_table', 1),
(33, '2021_11_18_172426_create_categories_table', 1),
(34, '2021_11_18_172646_create_products_table', 1),
(35, '2021_11_26_181714_create_ships_table', 1),
(36, '2021_11_26_181916_create_comments_table', 1),
(37, '2021_11_26_181941_create_replies_table', 1),
(38, '2021_11_26_181950_create_orders_table', 1),
(39, '2021_11_26_181958_create_orders_detail_table', 1),
(40, '2021_11_29_124411_create_brands_table', 1),
(41, '2021_11_29_124412_add_brand_id_column_to_products_table', 1),
(42, '2021_11_30_183550_create_articles_table', 1),
(43, '2021_12_03_184931_create_vouchers_table', 1),
(44, '2021_12_03_185032_add_voucher_code_column_to_orders_table', 1),
(45, '2021_12_04_155612_create_wishlist_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ship_id` bigint(20) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `voucher_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `ship_id`, `total`, `address`, `status`, `created_at`, `updated_at`, `voucher_code`) VALUES
('ch_3K30hkHEueodV3DA0vpfHmbU', 1, 1, 117857, 'An Khánh, Ninh Kiều, Cần Thơ', 0, '2021-12-04 09:03:22', '2021-12-04 09:03:22', NULL),
('ch_3K30pGHEueodV3DA1Jxbxzxq', 1, 2, 160414, 'An Khánh, Ninh Kiều, Cần Thơ', 2, '2021-12-04 09:11:08', '2021-12-04 09:12:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `order_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'ch_3K30hkHEueodV3DA0vpfHmbU', 1, 1, '2021-12-04 09:03:22', '2021-12-04 09:03:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `qty_buy` int(11) NOT NULL DEFAULT 0,
  `type` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `image_path`, `description`, `qty`, `qty_buy`, `type`, `discount`, `status`, `created_at`, `updated_at`, `brand_id`) VALUES
(1, 'Chuột Logitech G102 Lightsync RGB Black', 400000, 2, '/storage/images/products/chuot-1.jpg', '<p><span style=\"font-size:15pt\"><strong>Thông số kỹ thuật</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: \">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Thương hiệu</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Logitech</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Tên sản phẩm</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Logitech G102 Lightsync RGB</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Thiết kế</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Đối xứng - Ambidextrous</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Mắt đọc</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Mercury Sensor</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Điểm ảnh trên 1 inch (DPI)</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">8000</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>IPS</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">200</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Gia tốc</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">30g</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Tần số phản hồi</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">1000Hz</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Chất liệu vỏ</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Nhựa ABS</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Màu sắc</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Đen</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Số lượng nút bấm</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">6</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Switch</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Omron</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Tuổi thọ</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">50 triệu lần nhấn</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>LED</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">RGB Lightsync</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Kết nối</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">USB</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Độ dài dây (cm)</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">210</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Kích thước (mm)</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Dài 116.6 x Rộng 62.15 x Cao 38.2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Trọng lượng (gr)</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">85g (không cable)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">\r\n			<p><span style=\"font-size:16px\"><strong>Phần mềm</strong></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">\r\n			<p><span style=\"font-size:16px\">Logitech G-Hub</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 653, 867, NULL, NULL, 1, '2021-12-04 08:32:17', '2021-12-04 09:49:24', 4),
(3, 'Chuột Logitech G102 Lightsync RGB White', 400000, 2, '/storage/images/products/chuot-2.jpg', '<p><span style=\"font-size:15pt\"><strong>Thông số kỹ thuật</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: \">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Thương hiệu</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Logitech</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Tên sản phẩm</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Logitech G102 Lightsync RGB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Thiết kế</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Đối xứng - Ambidextrous</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Mắt đọc</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Mercury Sensor</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Điểm ảnh trên 1 inch (DPI)</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">8000</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">IPS</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">200</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Gia tốc</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">30g</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Tần số phản hồi</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">1000Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Chất liệu vỏ</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Nhựa ABS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Màu sắc</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Số lượng nút bấm</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">6</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Switch</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Omron</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Tuổi thọ</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">50 triệu lần nhấn</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">LED</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">RGB Lightsync</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Kết nối</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Độ dài dây (cm)</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">210</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Kích thước (mm)</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Dài 116.6 x Rộng 62.15 x Cao 38.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Trọng lượng (gr)</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">85g (không cable)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\">Phần mềm</td>\r\n			<td style=\"vertical-align:top; width:792.641px\">Logitech G-Hub</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 818, 264, NULL, NULL, 1, '2021-12-04 08:32:17', '2021-12-04 09:49:31', 4),
(4, 'Tai nghe DareU EH469 7.1 RGB Black', 400000, 4, '/storage/images/products/tainghe-1.jpg', '<h2 style=\"text-align:justify\"><strong><span style=\"font-size:20pt\">Tai nghe DAREU EH469 7.1 RGB Black</span></strong></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:15pt\"><strong>Thông số kỹ thuật</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; text-align:justify; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:16px\">Thương hiệu</span></strong></td>\r\n			<td style=\"text-align:justify; vertical-align:top; width:792.641px\"><span style=\"font-size:16px\">DareU</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; text-align:justify; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:16px\">Màu</span></strong></td>\r\n			<td style=\"text-align:justify; vertical-align:top; width:792.641px\"><span style=\"font-size:16px\">Đen</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; text-align:justify; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:16px\">Đường kính củ loa</span></strong></td>\r\n			<td style=\"text-align:justify; vertical-align:top; width:792.641px\"><span style=\"font-size:16px\">50mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; text-align:justify; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:16px\">Led</span></strong></td>\r\n			<td style=\"text-align:justify; vertical-align:top; width:792.641px\"><span style=\"font-size:16px\">RGB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; text-align:justify; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:16px\">Hiệu ứng</span></strong></td>\r\n			<td style=\"text-align:justify; vertical-align:top; width:792.641px\"><span style=\"font-size:16px\">Giả lập 7.1</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; text-align:justify; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:16px\">Kết nối</span></strong></td>\r\n			<td style=\"text-align:justify; vertical-align:top; width:792.641px\"><span style=\"font-size:16px\">USB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; text-align:justify; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:16px\">Dây</span></strong></td>\r\n			<td style=\"text-align:justify; vertical-align:top; width:792.641px\"><span style=\"font-size:16px\">2.0 m</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; text-align:justify; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:16px\">Đệm tai</span></strong></td>\r\n			<td style=\"text-align:justify; vertical-align:top; width:792.641px\"><span style=\"font-size:16px\">Da mềm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; text-align:justify; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:16px\">Headband</span></strong></td>\r\n			<td style=\"text-align:justify; vertical-align:top; width:792.641px\"><span style=\"font-size:16px\">Kim loại</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; text-align:justify; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:16px\">Trọng lượng</span></strong></td>\r\n			<td style=\"text-align:justify; vertical-align:top; width:792.641px\"><span style=\"font-size:16px\">280 +/- 10g</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 998, 212, NULL, 32, 1, '2021-12-04 08:32:17', '2021-12-04 09:34:03', 2),
(13, 'Laptop Acer Aspire 3 A315 56 37DV', 11000000, 1, '/storage/images/products/maytinh-1.jpg', '<p><span style=\"font-size:22px\"><strong>Thông số kỹ thuật:&nbsp;</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; height:0px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong>Thương hiệu</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\">ACER</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong>Bảo hành</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\">12 tháng</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong>Model</strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\">Acer Aspire 3 A315 56 37DV</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">CPU</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Intel Core i3-1005G1 1.2GHz up to 3.4GHz 4MB</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">RAM</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">4GB DDR4 2400MHz&nbsp;Onboard&nbsp;</span>( 1x onboard 4GB +&nbsp;<span style=\"color:rgb(0, 0, 0)\">1x SO-DIMM socket, up to 12GB SDRAM)</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Ổ cứng</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">256GB SSD M.2 PCIE, 1x slot SATA3 2.5\"</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Card đồ họa</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Intel UHD Graphics</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Màn hình</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">15.6\" FHD (1920 x 1080) Acer ComfyView LCD, Anti-Glare</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Cổng giao tiếp</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">1x USB 3.1, 2x USB 2.0, HDMI, RJ-45</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Ổ quang</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">None</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Audio</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Realtek High Definition</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Đọc thẻ nhớ</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">None</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Chuẩn LAN</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">10/100/1000 Mbps</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Chuẩn WIFI</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">802.11 ac</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Bluetooth</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">v4.2</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Webcam</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">HD Webcam</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Hệ điều hành</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Windows 10 Home</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Pin</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">3 Cell 36.7 Whr</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Trọng lượng</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">1.7 kg</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Màu sắc</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">Shale Black</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:240px\"><span style=\"font-size:16px\"><strong><span style=\"color:rgb(0, 0, 0)\">Kích thước</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:1017px\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 0, 0)\">363 x 247.5 x 19.9 (mm)</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 100, 0, NULL, NULL, 1, '2021-12-04 09:50:56', '2021-12-04 09:50:56', 1),
(14, 'Bàn phím Leopold FC660MPD Light Pink', 2800000, 3, '/storage/images/products/banphim-1.jpg', '<p><span style=\"font-size:15pt\"><strong>Thông số kỹ thuật</strong></span></p>\r\n\r\n<div class=\"scroll-table\" style=\"box-sizing: border-box; max-width: 100%; font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" class=\"table table-bordered\" id=\"tblGeneralAttribute\" style=\"background-color:transparent; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); font-family:roboto,sans-serif; font-size:13px; line-height:20px; margin-bottom:20px; margin-left:auto; margin-right:auto; max-width:100%; min-width:500px; width:1258px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Thương hiệu:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Leopold</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Model:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Leopold FC660MPD Light Pink</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Màu sắc:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Trắng - Hồng</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><span style=\"font-size:15px\"><strong><span style=\"color:rgb(0, 0, 0)\">Kết nối:</span></strong></span></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\">Có dây</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Kiểu dáng:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">66 phím</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Size:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">TKL</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Đèn led:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Không LED</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Switch:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Cherry Switch&nbsp;MX Red</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Keycaps:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">PBT Double shot</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Dây:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Dài 2m</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Trọng lượng:</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">800g</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(247, 247, 247) !important; vertical-align:top; width:464.359px\"><strong><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Chất liệu</span></span></strong></td>\r\n			<td style=\"vertical-align:top; width:792.641px\"><span style=\"font-size:15px\"><span style=\"color:rgb(0, 0, 0)\">Nhựa cao cấp</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 1000, 0, NULL, NULL, 1, '2021-12-04 09:52:16', '2021-12-04 09:52:16', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ships`
--

CREATE TABLE `ships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ships`
--

INSERT INTO `ships` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Grap', 10000, '2021-12-04 09:02:28', '2021-12-04 09:02:28'),
(2, 'Gojeck', 20000, '2021-12-04 09:02:37', '2021-12-04 09:02:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `provider` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `sex`, `provider`, `provider_id`, `access_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thuận Nguyễn', 'nmthuanst@gmail.com', NULL, '$2y$10$0wFHQRLAfqjKp9SYIgN7UeStK/Yq/ibOetde0Dp/NkyriErSubOKy', '0123456789', 0, NULL, NULL, NULL, 'uV5WafukmSdUdiyxackFc5swcyk8H6AQaJgl2Pn7XdiPnH5iT0YSWdbEgwjg', '2021-12-04 08:39:22', '2021-12-04 08:39:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`code`, `price`, `qty`, `created_at`, `updated_at`) VALUES
('birthday', 10000, 198, '2021-12-04 08:42:52', '2021-12-04 09:11:08'),
('welcome', 200000, 100, '2021-12-04 08:42:10', '2021-12-04 08:42:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_index` (`user_id`),
  ADD KEY `orders_ship_id_index` (`ship_id`),
  ADD KEY `orders_voucher_code_index` (`voucher_code`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_detail_order_id_index` (`order_id`),
  ADD KEY `orders_detail_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_index` (`category_id`),
  ADD KEY `products_brand_id_index` (`brand_id`);

--
-- Chỉ mục cho bảng `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_comment_id_index` (`comment_id`);

--
-- Chỉ mục cho bảng `ships`
--
ALTER TABLE `ships`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`code`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_product_id_index` (`product_id`),
  ADD KEY `wishlist_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ships`
--
ALTER TABLE `ships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ship_id_foreign` FOREIGN KEY (`ship_id`) REFERENCES `ships` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_voucher_code_foreign` FOREIGN KEY (`voucher_code`) REFERENCES `vouchers` (`code`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
