-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2023 lúc 05:56 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `apartment_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `city`, `district`, `ward`, `apartment_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '203', '1527', '40202', '130 Điện Biên Phủ', '2023-05-02 03:24:48', '2023-05-02 03:24:48', NULL),
(2, 3, '203', '1527', '40210', '120 Phạm Như Xương', '2023-05-03 10:11:19', '2023-05-03 10:11:19', NULL),
(3, 1, '201', '3440', '13010', '130 Điện Biên Phủ', '2023-05-02 03:24:48', '2023-12-03 02:27:29', NULL),
(8, 9, '269', '2264', '90816', '105, Hữu Phước', '2023-05-04 01:10:44', '2023-05-04 01:10:44', NULL),
(9, 10, '269', '2264', '90816', '105, Hữu Phước', '2023-09-21 12:47:49', '2023-09-21 12:47:49', NULL),
(10, 11, '269', '2264', '90816', '222222', '2023-09-21 13:39:31', '2023-09-21 13:39:31', NULL),
(12, 13, '201', '3440', '13010', '78', '2023-11-22 04:22:17', '2023-11-22 04:22:17', NULL),
(13, 14, '201', '3440', '13010', '12', '2023-11-28 04:24:47', '2023-11-28 04:24:47', NULL),
(14, 15, '201', '3440', '13010', '12', '2023-12-02 23:54:39', '2023-12-02 23:54:39', NULL),
(15, 16, '267', '2270', '231013', '12', '2023-12-03 00:32:04', '2023-12-03 00:32:04', NULL),
(16, 17, '201', '3440', '13010', '12', '2023-12-03 01:12:50', '2023-12-03 01:12:50', NULL),
(17, 18, '201', '3440', '13010', '12', '2023-12-03 01:20:39', '2023-12-03 01:20:39', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nike', NULL, '2023-11-20 17:31:28', '2023-11-20 17:31:28'),
(2, 'Gucci', NULL, '2023-11-20 17:31:30', '2023-11-20 17:31:30'),
(3, 'Adidas', NULL, '2023-11-20 17:31:31', '2023-11-20 17:31:31'),
(4, 'Chanel', NULL, '2023-11-20 17:31:32', '2023-11-20 17:31:32'),
(5, 'Uniqlo', NULL, '2023-11-20 17:31:34', '2023-11-20 17:31:34'),
(6, 'Costum', '2023-11-20 17:44:03', '2023-11-20 17:44:03', NULL),
(7, 'Apple', '2023-11-28 04:38:50', '2023-11-28 04:38:50', NULL),
(8, 'Logitech', '2023-11-29 04:27:03', '2023-11-29 04:27:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `parent_id`, `slug`) VALUES
(1, 'Phụ kiện', NULL, NULL, NULL, 0, 'phu-kien'),
(2, 'Đồ trang trí', NULL, NULL, NULL, 0, 'do-trang-tri'),
(3, 'Áo polo', NULL, '2023-11-20 17:23:51', '2023-11-20 17:23:51', 1, 'ao-polo'),
(4, 'Áo thể thao', NULL, '2023-11-20 17:23:53', '2023-11-20 17:23:53', 1, 'ao-the-thao'),
(5, 'Áo Sơ Mi', NULL, '2023-11-20 17:23:54', '2023-11-20 17:23:54', 1, 'ao-so-mi'),
(6, 'Áo Thun', NULL, '2023-11-20 17:23:56', '2023-11-20 17:23:56', 1, 'ao-thun'),
(7, 'Quần Jeans', NULL, '2023-11-20 17:23:57', '2023-11-20 17:23:57', 1, 'quan-jeans'),
(8, 'Quần Shorts', NULL, '2023-11-20 17:23:59', '2023-11-20 17:23:59', 1, 'quan-shorts'),
(9, 'Áo Thun', NULL, '2023-11-20 17:24:01', '2023-11-20 17:24:01', 2, 'ao-thun-1'),
(10, 'Đầm Váy', NULL, '2023-11-20 17:24:02', '2023-11-20 17:24:02', 2, 'dam-vay'),
(11, 'Áo Sơ Mi', NULL, '2023-11-20 17:24:04', '2023-11-20 17:24:04', 2, 'ao-so-mi-1'),
(12, 'Chân Váy', NULL, '2023-11-20 17:24:06', '2023-11-20 17:24:06', 2, 'chan-vay'),
(13, 'Quần Jeans', NULL, '2023-11-20 17:24:07', '2023-11-20 17:24:07', 2, 'quan-jeans-1'),
(14, 'Lê Hữu Phước', '2023-09-25 13:25:03', '2023-09-25 13:25:10', '2023-09-25 13:25:10', 1, 'le-huu-phuoc'),
(15, 'Chuột máy tính', '2023-11-20 17:24:26', '2023-11-20 17:24:26', NULL, 1, 'chuot-may-tinh'),
(16, 'Bàn phím', '2023-11-20 17:24:36', '2023-11-20 17:24:36', NULL, 1, 'ban-phim'),
(17, 'Tai nghe', '2023-11-20 17:24:52', '2023-11-20 17:24:52', NULL, 1, 'tai-nghe'),
(18, 'Costum keycap', '2023-11-20 17:25:05', '2023-11-20 17:25:05', NULL, 2, 'costum-keycap'),
(19, 'Figure', '2023-11-29 04:00:33', '2023-11-29 04:00:33', NULL, 2, 'figure'),
(20, 'Costum case', '2023-11-29 06:34:15', '2023-11-29 06:34:15', NULL, 2, 'costum-case');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trắng', NULL, NULL, NULL),
(2, 'Đen', NULL, NULL, NULL),
(3, 'Xám', NULL, NULL, NULL),
(4, 'Đỏ', NULL, NULL, NULL),
(5, 'Vàng', NULL, NULL, NULL),
(6, 'Xanh', NULL, NULL, NULL),
(7, 'Tím', NULL, NULL, NULL),
(8, 'XANH NHAT', '2023-09-21 13:34:31', '2023-12-03 02:11:59', '2023-12-03 02:11:59'),
(9, 'Nguyên bản', '2023-11-22 04:40:01', '2023-11-22 04:40:01', NULL),
(10, 'Hồng', '2023-11-29 04:17:12', '2023-11-29 04:17:12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_06_054552_create_roles_table', 1),
(3, '2023_02_06_093103_create_users_table', 1),
(4, '2023_02_06_093104_create_addresses_table', 1),
(5, '2023_02_09_141232_create_user_verifies_table', 1),
(6, '2023_02_17_101710_create_brands_table', 1),
(7, '2023_03_13_104142_create_colors_table', 1),
(8, '2023_03_13_104200_create_sizes_table', 1),
(9, '2023_03_15_111222_create_categories_table', 1),
(10, '2023_03_16_130121_create_products_table', 1),
(11, '2023_03_16_140642_create_products_color_table', 1),
(12, '2023_03_16_140906_create_products_size_table', 1),
(13, '2023_03_23_091419_create_payments_table', 1),
(14, '2023_03_23_095605_create_orders_table', 1),
(15, '2023_03_27_001440_create_order_details_table', 1),
(16, '2023_03_28_004112_alert_orders_table', 1),
(17, '2023_03_28_004113_alert_orders_table', 1),
(18, '2023_03_28_143413_alert_products_size_table', 1),
(19, '2023_03_28_144341_alert_products_color_table', 1),
(20, '2023_03_28_144345_alert_products_table', 1),
(21, '2023_03_28_144347_alert_orders_table', 1),
(22, '2023_03_28_144348_create_trigger_validate_quantity', 1),
(23, '2023_03_28_144349_create_trigger_group_by_quantity', 1),
(24, '2023_04_11_111222_alter_categories_table', 1),
(25, '2023_04_11_111223_alter_categories_table', 1),
(26, '2023_04_13_114627_create_product_reviews_table', 1),
(27, '2023_04_17_180428_drop_personal_access_tokens_table', 1),
(28, '2023_04_13_114628_alter_products_size_table ', 2),
(29, '2023_04_30_114628_alter_product_table ', 3),
(30, '2023_04_18_180428_create_setting_table', 4),
(31, '2023_04_19_180428_alter_setting_table', 4),
(32, '2023_03_28_144348_create_reduce_quantity_product_trigger', 5),
(33, '2023_05_1_114628_alter_payments_table ', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `total_money` double NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `transport_fee` double NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `total_money`, `order_status`, `created_at`, `updated_at`, `deleted_at`, `transport_fee`, `note`, `payment_status`) VALUES
(1700627709805, 13, 1, 24984000, 3, '2023-11-22 04:35:09', '2023-12-03 00:29:14', '2023-12-03 00:29:14', 34000, NULL, 0),
(1700628107194, 13, 1, 134000, 3, '2023-11-22 04:41:47', '2023-11-22 04:42:12', NULL, 34000, NULL, 0),
(1701142280237, 13, 1, 934000, 3, '2023-11-28 03:31:20', '2023-11-28 03:31:44', NULL, 34000, NULL, 0),
(1701145168686, 13, 1, 134000, 3, '2023-11-28 04:19:28', '2023-11-28 04:19:58', NULL, 34000, NULL, 0),
(1701145658190, 14, 1, 533000, 3, '2023-11-28 04:27:38', '2023-11-28 04:28:10', NULL, 34000, NULL, 0),
(1701563132810, 13, 1, 5034000, 3, '2023-12-03 00:25:32', '2023-12-03 00:26:05', NULL, 34000, NULL, 0),
(1701563193483, 13, 1, 1034000, 3, '2023-12-03 00:26:33', '2023-12-03 00:27:54', NULL, 34000, NULL, 0),
(1701563216132, 13, 1, 834000, 3, '2023-12-03 00:26:56', '2023-12-03 00:27:53', NULL, 34000, NULL, 0),
(1701563238372, 13, 1, 1034000, 3, '2023-12-03 00:27:18', '2023-12-03 00:27:52', NULL, 34000, NULL, 0),
(1701567217166, 18, 1, 1034000, 3, '2023-12-03 01:33:37', '2023-12-03 01:34:05', NULL, 34000, NULL, 0),
(1701567840884, 18, 1, 1034000, 3, '2023-12-03 01:44:00', '2023-12-03 01:50:37', NULL, 34000, NULL, 0),
(1701570351500, 18, 1, 234000, 0, '2023-12-03 02:25:51', '2023-12-03 02:25:51', NULL, 34000, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_size_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_size_id`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
(33, 1700627709805, 418, 499000, 50, '2023-11-22 04:35:09', '2023-11-22 04:35:09'),
(34, 1700628107194, 419, 100000, 1, '2023-11-22 04:41:47', '2023-11-22 04:41:47'),
(35, 1701142280237, 420, 900000, 1, '2023-11-28 03:31:20', '2023-11-28 03:31:20'),
(36, 1701145168686, 419, 100000, 1, '2023-11-28 04:19:28', '2023-11-28 04:19:28'),
(37, 1701145658190, 418, 499000, 1, '2023-11-28 04:27:38', '2023-11-28 04:27:38'),
(38, 1701563132810, 454, 500000, 10, '2023-12-03 00:25:32', '2023-12-03 00:25:32'),
(39, 1701563193483, 450, 200000, 5, '2023-12-03 00:26:33', '2023-12-03 00:26:33'),
(40, 1701563216132, 451, 200000, 4, '2023-12-03 00:26:56', '2023-12-03 00:26:56'),
(41, 1701563238372, 452, 200000, 5, '2023-12-03 00:27:18', '2023-12-03 00:27:18'),
(42, 1701567217166, 454, 500000, 2, '2023-12-03 01:33:37', '2023-12-03 01:33:37'),
(43, 1701567840884, 450, 200000, 5, '2023-12-03 01:44:00', '2023-12-03 01:44:00'),
(44, 1701570351500, 451, 200000, 1, '2023-12-03 02:25:51', '2023-12-03 02:25:51');

--
-- Bẫy `order_details`
--
DELIMITER $$
CREATE TRIGGER `group_by_quantity` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
                declare _record int;
                declare _quantity int;
                select count(*) into _record from order_details where product_size_id = new.product_size_id and order_id = new.order_id;
                if (_record >= 2) then
                    select sum(quantity) into _quantity from order_details where product_size_id = new.product_size_id and order_id = new.order_id;
                    update order_details set quantity = _quantity where product_size_id = new.product_size_id and order_id = new.order_id;
                    SIGNAL sqlstate "45001" set message_text = "error";
                end if;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reduce_quantity_product` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
                    declare _quantity int;
                    select quantity into _quantity from products_size where id = new.product_size_id;
                    if (new.quantity <= 0 || _quantity < new.quantity) then
                        SIGNAL sqlstate "45001" set message_text = "error";
                    else
                        update products_size set quantity = _quantity - new.quantity where id = new.product_size_id;
                    end if;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `validate_quantity` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
            declare _quantity int;
            select quantity into _quantity from products_size where id = new.product_size_id;
            if (new.quantity <= 0 || _quantity < new.quantity) then
                SIGNAL sqlstate "45001" set message_text = "error";
            end if;
        END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `status`, `img`) VALUES
(1, 'Khi nhận hàng', NULL, NULL, NULL, 1, '1682960154.png'),
(2, 'Ví điện tử Momo', NULL, NULL, NULL, 1, '1682960202.png'),
(3, 'VNPAY', NULL, '2023-09-17 17:15:35', NULL, 1, '1694970935.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `price_import` double NOT NULL,
  `price_sell` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price_import`, `price_sell`, `img`, `description`, `status`, `category_id`, `brand_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(43, 'Costum keycap', 10000, 150000, '1699894240.png', 'adad', 1, 3, 1, '2023-11-13 16:50:40', '2023-11-13 16:50:40', NULL),
(44, 'Bàn phím Noel 2023', 200000, 250000, '1700502302.png', 'Bàn phím costum Noel 2023', 1, 16, 6, '2023-11-20 17:45:02', '2023-11-20 18:32:49', '2023-11-20 18:32:49'),
(45, 'Keycaps Ông già Noel Dwarf.Factory', 75000, 100000, '1700504231.jpg', 'Keycaps Ông già Noel đến từ Dwarf.Factory', 1, 18, 6, '2023-11-20 18:17:11', '2023-12-02 23:59:58', '2023-12-02 23:59:58'),
(46, 'Keycaps Gingerbread Man Dwarf.Factory', 75000, 100000, '1700504524.jpg', '<p>Keycaps Gingerbread Man đến từ Dwarf.Factory<div><span style=\"font-family: &quot;Source Sans Pro&quot;;\">﻿</span><font color=\"#434343\" face=\"Roboto, sans-serif\"><span style=\"font-size: 12px;\"><br></span></font><div><span style=\"color: rgb(67, 67, 67); font-family: Roboto, sans-serif; font-size: 12px;\"><br></span></div></div></p>', 1, 18, 6, '2023-11-20 18:22:04', '2023-12-02 23:59:53', '2023-12-02 23:59:53'),
(47, 'Keycaps Elf Dwarf.Factory', 75000, 100000, '1700504635.jpg', 'Keycaps Elf đến từ Dwarf.Factory', 1, 18, 6, '2023-11-20 18:23:55', '2023-12-03 00:00:07', '2023-12-03 00:00:07'),
(48, 'Bàn phím Noel 2023', 400000, 499000, '1700505225.png', 'Bàn phím costum Noel 2023', 1, 16, 6, '2023-11-20 18:33:45', '2023-12-03 00:00:13', '2023-12-03 00:00:13'),
(49, 'Bàn phím a', 800000, 900000, '1701142159.jpg', 'add', 1, 16, 6, '2023-11-01 03:29:19', '2023-11-29 04:06:07', '2023-11-29 04:06:07'),
(50, 'Costum keycap Win 95 của DELLIUM', 100000, 150000, '1701230897.png', 'Costum keycap Win 95', 1, 18, 6, '2023-11-29 04:08:17', '2023-11-29 04:08:17', NULL),
(51, 'Costum keycap Mecha\'s primal pink của Dwarf.factory', 200000, 200000, '1701231412.png', 'Costum keycap Mecha\'s primal của Dwarf.factory', 1, 18, 6, '2023-11-29 04:16:52', '2023-11-29 04:18:42', NULL),
(52, 'Costum keycap Mecha\'s primal Blu của Dwarf.factory', 200000, 250000, '1701231712.png', 'Costum keycap Mecha\'s primal Blu của Dwarf.factory', 1, 18, 6, '2023-11-29 04:21:52', '2023-11-29 04:21:52', NULL),
(53, 'Chuột Máy Tính Logitech Gaming G102 Gen 2 (Black)', 350000, 400000, '1701232133.jpg', 'Chuột Máy Tính Logitech Gaming G102 Gen 2 (Black)', 1, 15, 8, '2023-11-29 04:28:53', '2023-11-29 04:28:53', NULL),
(54, 'Chuột Máy Tính E-Dra EM6102 (White)', 100000, 150000, '1701232302.jpg', '<ul style=\"list-style: none; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto; font-size: 14px;\"><li style=\"margin-bottom: 7px; position: relative; padding-left: 15px;\">Độ nhạy chuột DPI:&nbsp;1200/1600/2400/3600 DPI</li><li style=\"margin-bottom: 7px; position: relative; padding-left: 15px;\">Cảm biến: Quang học</li><li style=\"margin-bottom: 7px; position: relative; padding-left: 15px;\">Màu sắc: Trắng</li><li style=\"margin-bottom: 7px; position: relative; padding-left: 15px;\">Độ bền:&nbsp;Huano switch 10 triệu lần nhấn</li><li style=\"margin-bottom: 7px; position: relative; padding-left: 15px;\">Đèn nền: LED 7 màu</li><li style=\"margin-bottom: 7px; position: relative; padding-left: 15px;\">Kết nối: Có dây</li></ul>', 1, 15, 6, '2023-11-29 04:31:42', '2023-11-29 04:31:42', NULL),
(55, 'Chuột game Không dây Logitech G502 Hero Lightspeed', 2000000, 2200000, '1701232658.jpg', '<ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Chuột Chơi game Không dây Logitech G502 Lightspeed</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Phiên bản không dây của huyền thoại Logitech G502</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Công nghệ không dây Lightspeed với độ trễ cực thấp</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Mắt đọc Hero 16K cho độ chính xác cực cao và tiết kiệm pin</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Tương thích vơi bàn di chuột kèm sạc không dây Logitech PowerPlay</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Led RGB LightSync 16.8 triệu màu đồng bộ với các thiết bị Logitech khác</li></ul>', 1, 15, 8, '2023-11-29 04:37:38', '2023-11-29 05:15:06', NULL),
(56, 'CHUỘT KHÔNG DÂY LOGITECH MX MASTER 3S PALE GREY', 180000, 2200000, '1701233131.jpg', '<ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Chuột không dây Logitech MX Master 3S</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Chuẩn kết nối: Wireless 2.4Ghz (usb Logi Bolt) / Bluetooth / Dây</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Mắt cảm biến Darkfield cao cấp cho việc di chuyển chuột trên nhiều bề mặt</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Độ phân giải: 8000 DPI</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Tính năng nút cuộn điện từ Magspeed cao cấp</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Tính năng sạc nhanh cao cấp, cho 3 giờ sử dụng chỉ sau 1 phút sạc</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Tuỳ chỉnh dễ dàng với phần mềm Logi Option+</li></ul>', 1, 15, 8, '2023-11-29 04:45:31', '2023-11-29 05:14:49', NULL),
(57, 'CHUỘT GAME LOGITECH G502 HERO (USB/RGB/ĐEN)', 1500000, 1699000, '1701233340.jpg', '<ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Phiên bản mới của Logitech G502</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Mắt cảm biến Logitech HERO</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Phiên bản mới thay thế dây cáp cao su (phiên bản cũ là dây bọc dù)</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Độ chính xác cao hơn cùng DPI tối đa 25000</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Chất lượng được cải thiện rõ rệt</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Hệ thống Led RGB LIGHTSYNC</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Nút cuộn công nghệ Hyper Scroll</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Nút bấm chính 50 triệu lượt nhấn</li></ul>', 1, 15, 8, '2023-11-29 04:49:00', '2023-11-29 04:49:00', NULL),
(58, 'CHUỘT KHÔNG DÂY LOGITECH POP MÀU XÁM _ 910-006622', 550000, 600000, '1701233454.jpg', '<ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Chuột không dây Logitech POP màu xám</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Chuẩn kết nối: Bluetooth</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Độ phân giải: 4000 DPI</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Kết nối tối đa với 3 thiết bị</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Nút cuộn thông minh SmartWheel</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Dễ dàng tuỳ chỉnh với Logitech Flow</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Tương thích với đầu thu Logi Bolt</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 615.625px;\">Tương thích với Windows, macOS, iPadOS, Chrome OS, Linux</li></ul>', 1, 15, 8, '2023-11-29 04:50:54', '2023-11-29 04:50:54', NULL),
(59, 'BÀN PHÍM APPLE MAGIC – ITS (MLA22ZA/A) (TRẮNG)', 2200000, 2600000, '1701233663.jpg', '<ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Bàn phím Apple Magic</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Thiết kế sang trọng, nhỏ gọn</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Kết nối: Bluetooth / Wireless / Cổng Lightning</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Thời lượng pin lên đến 1 tháng sử dụng</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Tương thích với MacOS và iOS</li></ul>', 1, 16, 7, '2023-11-29 04:54:23', '2023-11-29 04:54:23', NULL),
(60, 'BÀN PHÍM APPLE MAGIC WITH NUMERIC KEYPAD – US ENGLISH', 3000000, 3300000, '1701233964.jpg', '<ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Bàn phím Apple Magic with Numeric Keypad</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Thiết kế full-size 108 phím</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Tích hợp phím Multimedia</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Chuẩn kết nối Bluetooth / Wireless</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Tích hợp cổng Lightning</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Bàn phím chuyên dụng dành cho iOS / MacOS</li></ul>', 1, 16, 7, '2023-11-29 04:59:24', '2023-11-29 05:13:46', NULL),
(61, 'Bàn phím Costum Raiden Shogun', 400000, 500000, '1701237695.jpg', 'Bàn phím Costum Raiden Shogun&nbsp;genshin impact', 1, 16, 6, '2023-11-29 06:01:35', '2023-11-29 06:01:35', NULL),
(62, 'Bàn phím Costum Whizard Cat', 400000, 500000, '1701237855.jpg', 'Bàn phím Costum Whizard Cat', 1, 16, 6, '2023-11-29 06:04:15', '2023-11-29 06:04:15', NULL),
(63, 'Bàn phím Costum CSGO Hyper Beast', 400000, 500000, '1701238093.jpg', 'Bàn phím Costum CSGO Hyper Beast', 1, 16, 6, '2023-11-29 06:08:13', '2023-11-29 07:35:00', NULL),
(64, 'TAI NGHE LOGITECH G333 BLACK', 1000000, 12000000, '1701238299.jpg', '<ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Tai nghe Logitech G333 Black</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Kết nối: 3.5mm, đi kèm cổng chuyển type-C</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Màng loa dynamic kép mang lại âm thanh chi tiết</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Thiết kế vỏ nhôm sang trọng, siêu nhẹ</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Tương thích PC, mobile, Xbox, PlayStation, Nintendo...</li></ul>', 1, 17, 8, '2023-11-29 06:11:39', '2023-11-29 07:30:17', NULL),
(65, 'TAI NGHE LOGITECH G435 LIGHTSPEED WIRELESS BLUE', 1700000, 2000000, '1701238452.jpg', '<ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Tai nghe Logitech G435 LightSpeed Wireless</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Chuẩn kết nối: Lightspeed Wireless / Bluetooth</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Thời lượng pin lên đến 18h sử dụng</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Kích thước màng loa: 40mm</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Trọng lượng siêu nhẹ 165g</li></ul>', 1, 17, 8, '2023-11-29 06:14:12', '2023-11-29 06:14:12', NULL),
(66, 'TAI NGHE KHÔNG DÂY LOGITECH ZONE VIBE 100', 2000000, 2300000, '1701238627.jpg', '<ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Tai nghe không dây Logitech Zone Vibe 100</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Chuẩn kết nối: Bluetooh 5.2</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Driver 40mm</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Thiết kế gọn nhẹ, thời trang. Đệm tai nghe bọc vải làm từ mút hoạt tính (memory foam) mang lại sự thoải mái khi đeo lâu dài</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Micro khử tiếng ồn, có thể gập lại</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 616.91px;\">Tích hợp pin có thể sạc lại, thời gian nghe lên tới 20 giờ và thời gian đàm thoại 18 giờ cho một lần sạc đầy</li></ul>', 1, 17, 8, '2023-11-29 06:17:07', '2023-11-29 06:17:07', NULL),
(67, 'Tai nghe Bluetooth AirPods Pro Gen 2', 6000000, 6200000, '1701239149.jpg', '<h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: 0px;\"><a href=\"https://www.thegioididong.com/tai-nghe/tai-nghe-bluetooth-airpods-pro-gen-2-magsafe-charge-usb-c-apple-mtjv3\" target=\"_blank\" title=\"Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3 tại Thế Giới Di Động\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: 18px; outline: 0px;\">Tai nghe Bluetooth AirPods Pro (2nd Gen) USB-C Charge Apple</a>&nbsp;sở hữu thiết kế mang đậm chất thương hiệu Apple, màu sắc sang trọng, đi cùng nhiều công nghệ cho các iFan: chip Apple H2, chống bụi, chống ồn chủ động,... hứa hẹn mang đến trải nghiệm âm thanh sống động, chinh phục người dùng.</h3>', 1, 17, 7, '2023-11-29 06:25:49', '2023-11-29 06:25:49', NULL),
(68, 'Tai nghe Bluetooth AirPods 3 Lightning', 4300000, 4500000, '1701239310.jpg', '<h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: 0px;\"><a href=\"https://www.thegioididong.com/tai-nghe/tai-nghe-bluetooth-airpods-3-lightning-charge-apple-mpny3-trang\" target=\"_blank\" title=\"Tai nghe Bluetooth AirPods 3 Lightning Charge Apple MPNY3 đang bán tại Thế Giới Di Động\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: 18px; outline: 0px;\">Tai nghe Bluetooth AirPods 3 Lightning Charge Apple MPNY3</a>&nbsp;sở hữu thiết kế gọn nhẹ, màu sắc trang nhã cùng nhiều công nghệ hiện đại đang chờ đón các iFan như: kết nối Bluetooth, Adaptive EQ, Chip Apple H1,...</h3>', 1, 17, 7, '2023-11-29 06:28:30', '2023-11-29 06:28:30', NULL),
(69, 'Tai nghe Có Dây Apple MTJY3', 400000, 500000, '1701239410.jpg', '<h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: 0px;\"><a href=\"https://www.thegioididong.com/tai-nghe/tai-nghe-co-day-apple-mtjy3\" target=\"_blank\" title=\"Tai nghe Có Dây Apple MTJY3 tại Thế Giới Di Động\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(21, 94, 193); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: 18px; outline: 0px;\">Tai nghe Có Dây Apple MTJY3</a>&nbsp;là dòng sản phẩm gây ấn tượng ngay khi vừa ra mắt với diện mạo trang nhã, chất lượng âm thanh đỉnh cao,&nbsp;có thể mang theo mọi lúc mọi nơi bằng cách cuộn gọn, không chiếm quá nhiều diện tích.</h3>', 1, 17, 7, '2023-11-29 06:30:10', '2023-11-29 06:30:10', NULL),
(70, 'Vỏ Ốp Case airpod airpods', 200000, 250000, '1701239733.jpg', '<h3 class=\"GW0XC indIKd cS4Vcb-pGL6qe-fwJd0c\" style=\"-webkit-tap-highlight-color: transparent; text-decoration-line: none; color: var(--uv-styles-color-text-emphasis); flex: 1 1 auto; overflow: hidden; font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255); line-height: 24px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2;\">Vỏ Ốp Case airpod airpods 1 2 3 pro 2 pro2 bảo vệ, bao đựng tai nghe không dây bluetooth Tặng kèm móc.</h3>', 1, 20, 6, '2023-11-29 06:35:33', '2023-11-29 06:35:33', NULL),
(71, 'Airpods Case Nike Österreich', 250000, 300000, '1701240084.jpg', 'Airpods Case Nike Österreich', 1, 20, 6, '2023-11-29 06:41:24', '2023-11-29 06:41:24', NULL),
(72, 'Figure KDA Akali', 5000000, 5500000, '1701241617.jpg', 'Figure KDA Akali', 1, 19, 6, '2023-11-29 07:06:57', '2023-11-29 07:06:57', NULL),
(73, 'Mô Hình Honkai Impact 3rd - Elysia', 500000, 900000, '1701241789.jpg', '<div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Hãng sản xuất: Little Blue Studio</font></span></div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Kích thước: Cao 8cm</font></span></div>', 1, 19, 6, '2023-11-29 07:09:49', '2023-11-29 07:09:49', NULL),
(74, 'League of Legends - Irelia - 1/7 - Divine Sword (Myethos)', 3500000, 4200000, '1701241993.jpg', '<span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\"><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">League of Legends - Irelia - 1/7 - Divine Sword (Myethos)</span><br style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">Kích thước: 34cm</span><br style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">Tỉ lệ: 1/7</span><br style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">Chất liệu: ABS, PVC</span></font></span>', 1, 19, 6, '2023-11-29 07:13:13', '2023-11-29 07:13:13', NULL),
(75, 'Chainsaw Man - Nendoroid Makima', 800000, 1250000, '1701242187.jpg', '<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span style=\"color: rgb(0, 0, 0); font-family: inherit;\">Kích thước: 10cm</span><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: inherit;\"><br></span></font></span></div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span style=\"color: rgb(0, 0, 0); font-family: inherit;\">Chất liệu: ABS, PVC</span><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: inherit;\"><br></span></font></span></div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span style=\"color: rgb(0, 0, 0); font-family: inherit;\">Thời gian phát hành: Tháng 6 năm 2023</span><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: inherit;\"><br></span></font></span></div></div>', 1, 19, 6, '2023-11-29 07:16:27', '2023-11-29 07:16:27', NULL),
(76, 'Mô Hình Minifig-Tiệc Chào Mừng Lên Tàu', 200000, 330000, '1701242509.jpg', '<div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"><br></div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">- Chất liệu: PVC&amp;ABS </font></span></div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">- Kích thước sản phẩm Cao khoảng 7,5-8cm</font></span></div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\">- Giá 330.000/1 nhân vật </font></span></div>', 1, 19, 6, '2023-11-29 07:21:49', '2023-11-29 07:21:49', NULL),
(77, 'Son Goku New Spec Ver. - Figure-rise Standard', 500000, 680000, '1701242959.jpg', 'Son Goku New Spec Ver. - Figure-rise Standard', 1, 19, 6, '2023-10-01 07:29:19', '2023-11-29 07:29:19', NULL),
(78, 'Keycaps Gingerbread Man Dwarf.Factory', 100000, 200000, '1701562132.jpg', 'Keycaps Gingerbread Man Dwarf.Factory', 1, 18, 6, '2023-12-03 00:08:52', '2023-12-03 00:08:52', NULL),
(79, 'Keycaps Ông già Noel Dwarf.Factory', 100000, 200000, '1701562213.jpg', 'Keycaps Ông già Noel Dwarf.Factory', 1, 18, 6, '2023-12-03 00:10:13', '2023-12-03 00:10:13', NULL),
(80, 'Keycaps Yêu Tinh Noel Dwarf.Factory', 100000, 200000, '1701562292.jpg', 'Keycaps Yêu Tinh Noel Dwarf.Factory', 1, 18, 6, '2023-12-03 00:11:32', '2023-12-03 00:11:32', NULL),
(81, 'Keycaps Tuần lộc Noel Dwarf.Factory', 100000, 200000, '1701562365.jpg', 'Keycaps Tuần lộc Noel Dwarf.Factory', 1, 18, 6, '2023-12-03 00:12:45', '2023-12-03 00:12:45', NULL),
(82, 'Keycaps Ngôi nhà Noel Dwarf.Factory', 100000, 200000, '1701562443.jpg', 'Keycaps Ngôi nhà Noel Dwarf.Factory', 1, 18, 6, '2023-12-03 00:14:03', '2023-12-03 00:14:03', NULL),
(83, 'Bàn phím Costum Noel 2023', 400000, 500000, '1701562548.png', 'Bàn phím Costum Noel 2023', 1, 16, 6, '2023-12-03 00:15:48', '2023-12-03 00:15:48', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_color`
--

CREATE TABLE `products_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_color`
--

INSERT INTO `products_color` (`id`, `img`, `color_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(130, '1700627666.png', 1, 48, '2023-11-22 04:34:26', '2023-11-22 04:34:26', NULL),
(131, '1700628065.jpg', 9, 47, '2023-11-22 04:41:05', '2023-11-22 04:41:05', NULL),
(132, '1701142167.jpg', 1, 49, '2023-11-28 03:29:27', '2023-11-28 03:29:27', NULL),
(133, '1701230919.png', 1, 50, '2023-11-29 04:08:39', '2023-11-29 04:08:39', NULL),
(134, '1701231447.png', 10, 51, '2023-11-29 04:17:27', '2023-11-29 04:17:27', NULL),
(135, '1701231720.png', 6, 52, '2023-11-29 04:22:00', '2023-11-29 04:22:31', NULL),
(136, '1701232143.jpg', 2, 53, '2023-11-29 04:29:03', '2023-11-29 04:29:03', NULL),
(137, '1701232315.jpg', 1, 54, '2023-11-29 04:31:55', '2023-11-29 04:31:55', NULL),
(138, '1701232665.jpg', 2, 55, '2023-11-29 04:37:45', '2023-11-29 04:37:45', NULL),
(139, '1701233139.jpg', 1, 56, '2023-11-29 04:45:39', '2023-11-29 04:45:39', NULL),
(140, '1701233352.jpg', 2, 57, '2023-11-29 04:49:12', '2023-11-29 04:49:12', NULL),
(141, '1701233465.jpg', 3, 58, '2023-11-29 04:51:05', '2023-11-29 04:51:05', NULL),
(142, '1701233670.jpg', 1, 59, '2023-11-29 04:54:30', '2023-11-29 04:54:30', NULL),
(143, '1701233970.jpg', 3, 60, '2023-11-29 04:59:30', '2023-11-29 04:59:30', NULL),
(144, '1701237708.jpg', 7, 61, '2023-11-29 06:01:48', '2023-11-29 06:01:48', NULL),
(145, '1701237869.jpg', 7, 62, '2023-11-29 06:04:29', '2023-11-29 06:04:29', NULL),
(146, '1701238124.jpg', 9, 63, '2023-11-29 06:08:44', '2023-11-29 06:08:44', NULL),
(147, '1701238311.jpg', 6, 64, '2023-11-29 06:11:51', '2023-11-29 06:11:51', NULL),
(148, '1701238463.jpg', 10, 65, '2023-11-29 06:14:23', '2023-11-29 06:14:23', NULL),
(149, '1701238638.jpg', 3, 66, '2023-11-29 06:17:18', '2023-11-29 06:17:18', NULL),
(150, '1701239158.jpg', 1, 67, '2023-11-29 06:25:58', '2023-11-29 06:25:58', NULL),
(151, '1701239318.jpg', 1, 68, '2023-11-29 06:28:38', '2023-11-29 06:28:38', NULL),
(152, '1701239417.jpg', 1, 69, '2023-11-29 06:30:17', '2023-11-29 06:30:17', NULL),
(153, '1701239740.jpg', 1, 70, '2023-11-29 06:35:40', '2023-11-29 06:35:40', NULL),
(154, '1701240092.jpg', 1, 71, '2023-11-29 06:41:32', '2023-11-29 06:41:32', NULL),
(155, '1701241637.jpg', 1, 72, '2023-11-29 07:07:17', '2023-11-29 07:07:17', NULL),
(156, '1701241800.jpg', 10, 73, '2023-11-29 07:10:00', '2023-11-29 07:10:00', NULL),
(157, '1701242000.jpg', 1, 74, '2023-11-29 07:13:20', '2023-11-29 07:13:20', NULL),
(158, '1701242196.jpg', 9, 75, '2023-11-29 07:16:36', '2023-11-29 07:16:36', NULL),
(159, '1701242523.jpg', 9, 76, '2023-11-29 07:22:03', '2023-11-29 07:22:03', NULL),
(160, '1701242967.jpg', 9, 77, '2023-11-29 07:29:27', '2023-11-29 07:29:27', NULL),
(161, '1701562144.jpg', 9, 78, '2023-12-03 00:09:04', '2023-12-03 00:09:04', NULL),
(162, '1701562222.jpg', 9, 79, '2023-12-03 00:10:22', '2023-12-03 00:10:22', NULL),
(163, '1701562302.jpg', 9, 80, '2023-12-03 00:11:42', '2023-12-03 00:11:42', NULL),
(164, '1701562379.jpg', 9, 81, '2023-12-03 00:12:59', '2023-12-03 00:12:59', NULL),
(165, '1701562462.jpg', 9, 82, '2023-12-03 00:14:22', '2023-12-03 00:14:22', NULL),
(166, '1701562557.png', 4, 83, '2023-12-03 00:15:57', '2023-12-03 00:15:57', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_size`
--

CREATE TABLE `products_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_size`
--

INSERT INTO `products_size` (`id`, `product_color_id`, `size_id`, `created_at`, `updated_at`, `quantity`, `deleted_at`) VALUES
(418, 130, 2, NULL, NULL, 49, NULL),
(419, 131, 5, NULL, NULL, 98, NULL),
(420, 132, 1, NULL, NULL, 499, NULL),
(421, 133, 5, NULL, NULL, 50, NULL),
(422, 134, 5, NULL, NULL, 50, NULL),
(423, 135, 5, NULL, NULL, 50, NULL),
(424, 136, 5, NULL, NULL, 50, NULL),
(425, 137, 5, NULL, NULL, 50, NULL),
(426, 138, 5, NULL, NULL, 50, NULL),
(427, 139, 5, NULL, NULL, 50, NULL),
(428, 140, 6, NULL, NULL, 50, NULL),
(429, 141, 6, NULL, NULL, 50, NULL),
(430, 142, 9, NULL, NULL, 50, NULL),
(431, 143, 7, NULL, NULL, 50, NULL),
(432, 144, 8, NULL, NULL, 50, NULL),
(433, 145, 8, NULL, NULL, 50, NULL),
(434, 146, 7, NULL, NULL, 50, NULL),
(435, 147, 6, NULL, NULL, 20, NULL),
(436, 148, 6, NULL, NULL, 20, NULL),
(437, 149, 6, NULL, NULL, 20, NULL),
(438, 150, 6, NULL, NULL, 20, NULL),
(439, 151, 6, NULL, NULL, 20, NULL),
(440, 152, 6, NULL, NULL, 20, NULL),
(441, 153, 6, NULL, NULL, 50, NULL),
(442, 154, 6, NULL, NULL, 20, NULL),
(443, 155, 2, NULL, NULL, 5, NULL),
(444, 156, 1, NULL, NULL, 10, NULL),
(445, 157, 1, NULL, NULL, 10, NULL),
(446, 158, 1, NULL, NULL, 10, NULL),
(447, 159, 1, NULL, NULL, 50, NULL),
(448, 160, 1, NULL, NULL, 30, NULL),
(449, 161, 5, NULL, NULL, 20, NULL),
(450, 162, 5, NULL, NULL, 10, NULL),
(451, 163, 5, NULL, NULL, 15, NULL),
(452, 164, 5, NULL, NULL, 15, NULL),
(453, 165, 5, NULL, NULL, 20, NULL),
(454, 166, 8, NULL, NULL, 38, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rating`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 13, 48, 5, 'on', '2023-11-28 04:36:32', '2023-11-28 04:36:32', NULL),
(25, 13, 48, 5, 'on', '2023-11-28 04:36:32', '2023-11-28 04:36:32', NULL),
(27, 18, 83, 5, 'Rất đẹp', '2023-12-03 01:34:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Quản trị viên'),
(2, 'Nhân Viên'),
(3, 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `name` char(100) NOT NULL,
  `email` char(100) NOT NULL,
  `address` char(255) NOT NULL,
  `phone_number` char(20) NOT NULL,
  `maintenance` int(11) NOT NULL,
  `notification` text NOT NULL,
  `introduction` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `logo`, `name`, `email`, `address`, `phone_number`, `maintenance`, `notification`, `introduction`, `created_at`, `updated_at`) VALUES
(1, '1701560903.png', 'PKShop', 'PKShop@gmail.com', 'Việt Nam', '123125934093', 2, '<b>WEBSITE tạm thời bảo trì để nâng cấp xin  quay lại sau</b>', '<h3 style=\"text-align: center; \">\r\n                            <b>GIỚI THIỆU VỀ PK Shop</b></h3><h5><br></h5><h5 style=\"text-align: center; \"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\" times=\"\" new=\"\" roman\";=\"\" \"=\"\">\r\n                            Chào mừng đến với website </span><br></h5><h5><br></h5><h5><br></h5>', NULL, '2023-12-02 23:48:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'S', NULL, NULL, NULL),
(2, 'M', NULL, NULL, NULL),
(3, 'L', NULL, NULL, NULL),
(4, 'XL', NULL, NULL, NULL),
(5, 'Nguyên bản', '2023-11-22 04:40:14', '2023-11-22 04:40:14', NULL),
(6, 'Không', '2023-11-29 04:46:11', '2023-11-29 04:46:11', NULL),
(7, '100%', '2023-11-29 04:56:49', '2023-11-29 04:56:49', NULL),
(8, '75%', '2023-11-29 04:56:55', '2023-11-29 04:56:55', NULL),
(9, '60%', '2023-11-29 04:57:04', '2023-11-29 04:57:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `disable_reason` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `email_verified_at`, `phone_number`, `role_id`, `active`, `disable_reason`, `created_by`, `updated_by`, `deleted_by`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-04-28 04:29:18', '000 000-0000', 1, 1, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-03 02:27:29', NULL),
(2, 'Ho Anh Nguyen', 'han16052001@gmail.com', '$2y$10$Q8XcfyypiOp348/xjPVxLOVpuC00zJLgF4D5LXMLF68ymKCa.6Ho.', '2023-05-02 03:25:18', '1234567890', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-05-02 03:24:23', '2023-12-03 01:56:28', '2023-12-03 01:56:28'),
(3, 'Nguyễn Trần Gia Bảo 1', 'bao123@gmail.com', '$2y$10$X2oo0TcQ1rSxRdJwFFLRCuTRD2Q/KUY4gwOa/heJtYPdMwriWe72e', '2023-05-18 10:11:58', '845 642-4326', 2, 1, NULL, 1, 1, NULL, NULL, '2023-05-03 10:11:06', '2023-11-29 03:58:31', '2023-11-29 03:58:31'),
(9, 'Lê Hữu Phước', 'huuphuocit0201@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-05-04 01:10:50', '0845151117', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-05-04 01:10:39', '2023-12-03 01:56:30', '2023-12-03 01:56:30'),
(10, 'Lê Hữu Phước', 'lehuuphuocit0201@gmail.com', '$2y$10$ahO52/FEOOecsWvnpcI9fO3Heu3kMNnyiIe5Pd4T9NdMh36Qsy7W.', '2023-09-21 12:55:34', '0845151117', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-09-21 12:47:43', '2023-12-03 01:56:26', '2023-12-03 01:56:26'),
(11, 'Lê Hữu Phước', 'test@gmail.comaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '$2y$10$AqRDBZgakr6/En4YhwG5AeILGcPnRyqMJ4ZMFqTTIpXjQktoTTfL2', NULL, '0845151117', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-09-21 13:39:27', '2023-12-03 01:56:32', '2023-12-03 01:56:32'),
(13, 'Thanh', 'xuanthanh020620@gmail.com', '$2y$10$vFWC5muyZtDyBbhC8qCk7.YV0jtX6a8mRWE9/Z/R9.nRqGM1KQYTy', '2023-11-22 04:33:01', '1324567890', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-11-22 04:22:13', '2023-11-22 04:33:01', NULL),
(14, 'A', 'a@mail.com', '$2y$10$y7XS9F4vvqkntTcfIL4Td.Zxx.emQBS1oJtRYVI3JfF1zuko1vxJe', '2023-11-28 04:26:27', '123 456-7890', 3, 1, NULL, 1, NULL, NULL, NULL, '2023-11-28 04:24:22', '2023-11-28 04:24:22', NULL),
(15, 'thanh', 'xuanthanhriot@gmail.com', '$2y$10$sCcBe3a/BhCSPCHTYpfewuiTyxDnVDYXazF3CKeblw0c94QrtZWpW', '2023-12-02 23:55:45', '1234567890', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-12-02 23:54:36', '2023-12-02 23:58:54', '2023-12-02 23:58:54'),
(16, 'Thanh', 'thanh@gmail.com', '$2y$10$RfMpLakoU2Sa2ylzsK.o6Owql3RLa3ArnJfKIWSb1t/nVnkFg0Fc2', NULL, '123 456-7890', 2, 1, NULL, 1, NULL, NULL, NULL, '2023-12-03 00:32:01', '2023-12-03 00:32:01', NULL),
(17, 'Thanh', 'xthanh0206@gmail.com', '$2y$10$HDaX7/NirqYu.ykvnCR8gOmN/y8bh/G9ji/GK9wdTtuJeijoaN1sa', '2023-12-03 01:17:30', '1234567890', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-12-03 01:12:40', '2023-12-03 01:20:10', '2023-12-03 01:20:10'),
(18, 'Thanh', 'xthanh0206@gmail.com', '$2y$10$wN3UA7JhS4TvChjUX9cixuv.PFpSGC0Wc50ToOaVhKH/m15Wyg6BG', '2023-12-03 01:24:02', '1234567890', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-12-03 01:20:35', '2023-12-03 01:24:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_verifies`
--

CREATE TABLE `user_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `email_verify` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_verifies`
--

INSERT INTO `user_verifies` (`id`, `user_id`, `token`, `expires_at`, `email_verify`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 3, 'A8TeoYsNWoLXolZ3g7uItst6cGXGdoaBxOnJXC3oCboNbc4pEwmmJJefgJuUhNwW', '2023-05-03 11:11:06', NULL, '2023-05-03 10:11:06', '2023-05-03 10:11:06', NULL),
(6, 7, 'i7cgmFkliCXdWeMYmpVtZihzyZcBy5V2ZBcI6VVbWkdgvNSbEyHpdmpNqlGm78s9', '2023-05-03 16:54:10', NULL, '2023-05-03 15:54:10', '2023-05-03 15:54:10', NULL),
(7, 8, 'aDYaSWNOs8RsfngYfP01kHpnGQuecCgyizcPKBwnPLskgtUqpXunkd0VOdadiSay', '2023-05-03 16:55:09', NULL, '2023-05-03 15:55:09', '2023-05-03 15:55:09', NULL),
(10, 11, 'aLR0fHF2jlm3r2Us06NlwXAZ2ju1uxYiWJXCYvFE0Uwp0V0SxZ66q4myE7XdOMy5', '2023-09-21 14:39:27', NULL, '2023-09-21 13:39:27', '2023-09-21 13:39:27', NULL),
(13, 14, '8TKoS4ZGElOxpHcMmxXvtwFGUlJBq4wBUl7JfplpByhtT6vUrMe7O1nYg1B0kHVN', '2023-11-28 05:24:22', NULL, '2023-11-28 04:24:22', '2023-11-28 04:24:22', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

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
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_size_id_foreign` (`product_size_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `products_color`
--
ALTER TABLE `products_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_color_color_id_foreign` (`color_id`),
  ADD KEY `products_color_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `products_size`
--
ALTER TABLE `products_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_size_product_color_id_foreign` (`product_color_id`),
  ADD KEY `products_size_size_id_foreign` (`size_id`);

--
-- Chỉ mục cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1701570351501;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `products_color`
--
ALTER TABLE `products_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT cho bảng `products_size`
--
ALTER TABLE `products_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `user_verifies`
--
ALTER TABLE `user_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_size_id_foreign` FOREIGN KEY (`product_size_id`) REFERENCES `products_size` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `products_color`
--
ALTER TABLE `products_color`
  ADD CONSTRAINT `products_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `products_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products_size`
--
ALTER TABLE `products_size`
  ADD CONSTRAINT `products_size_product_color_id_foreign` FOREIGN KEY (`product_color_id`) REFERENCES `products_color` (`id`),
  ADD CONSTRAINT `products_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Các ràng buộc cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
