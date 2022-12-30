-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2022 lúc 11:43 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_quanghuy`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 29, 2, 370000, NULL, NULL),
(2, 1, 33, 3, 504000, NULL, NULL),
(3, 2, 29, 2, 370000, NULL, NULL),
(4, 2, 33, 3, 504000, NULL, NULL),
(5, 3, 29, 2, 370000, NULL, NULL),
(6, 3, 30, 1, 370000, NULL, NULL),
(7, 3, 33, 3, 504000, NULL, NULL),
(8, 4, 19, 1, 257000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Quang Huy', '0961640909', 'Hải châu - Đà nẵng', 'huylmht10@gmail.com', '123', '2022-11-13 05:45:45', '2022-11-13 05:45:45'),
(2, 'Nguyễn Quang Huy', '0961640909', 'Hải châu - Đà nẵng', 'huylmht10@gmail.com', 'adb', '2022-11-13 06:02:42', '2022-11-13 06:02:42'),
(3, 'Nguyễn Quang Huy', '0961640909', 'Hải châu - Đà nẵng', 'huylmht10@gmail.com', '123', '2022-11-13 06:14:14', '2022-11-13 06:14:14'),
(4, 'Nguyễn Quang Huy', '0961640909', 'Hải châu - Đà nẵng', 'huylmht7@gmail.com', '123', '2022-11-13 06:17:53', '2022-11-13 06:17:53');

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
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(11, 'Rau củ quả', 0, '', '', 1, '2022-12-28 04:36:37', '2022-12-28 23:34:28', '/storage/uploads/2022/12/29/icon6.png'),
(14, 'Thịt', 0, '', '', 1, '2022-12-28 04:37:28', '2022-12-28 23:33:45', '/storage/uploads/2022/12/29/icon9.png'),
(15, 'Đồ ngọt', 0, '', '', 1, '2022-12-28 04:38:55', '2022-12-28 23:32:41', '/storage/uploads/2022/12/29/icon3.png'),
(17, 'Trái cây', 11, '', '', 1, '2022-12-28 04:48:36', '2022-12-29 02:14:23', '/storage/uploads/2022/12/29/cua-hang-trai-cay-nhap-khau-da-nang-2.jpg'),
(18, 'Rau củ', 11, '', '', 1, '2022-12-28 04:48:51', '2022-12-29 02:15:06', '/storage/uploads/2022/12/29/giam-can-bang-rau-cu-qua-1-1.webp'),
(19, 'Bánh kẹo', 15, '', '', 1, '2022-12-28 04:52:07', '2022-12-29 02:14:51', '/storage/uploads/2022/12/29/icon4.png'),
(20, 'Đồ uống', 15, '', '', 1, '2022-12-28 04:52:16', '2022-12-29 02:14:37', '/storage/uploads/2022/12/29/nuoc-ngot (1).png'),
(21, 'Hải sản', 14, '', '', 1, '2022-12-28 04:52:35', '2022-12-29 02:13:15', '/storage/uploads/2022/12/29/131267335_213548630437137_8669065743994907144_o_7f6bab4ad6bf440bb813194952b0d2d7_master.jpg'),
(22, 'Gia súc', 14, '', '', 1, '2022-12-28 04:52:46', '2022-12-29 02:12:50', '/storage/uploads/2022/12/29/bòvai-800x500.jpg'),
(23, 'Gia cầm', 14, '', '', 1, '2022-12-28 04:52:54', '2022-12-29 02:12:42', '/storage/uploads/2022/12/29/img-bgt-2021-cach-bao-quan-thit-ga-tuoi-1636439842-width660height440.jpg');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_03_144342_create_menus_table', 1),
(6, '2022_11_05_091305_create_products_table', 1),
(7, '2022_11_07_012202_create_sliders_table', 1),
(8, '2022_11_13_102314_create_customers_table', 1),
(9, '2022_11_13_102410_create_carts_table', 1),
(10, '2022_11_13_125940_create_jobs_table', 1),
(11, '2022_12_28_022634_add_column_user_type_to_table_user', 1),
(12, '2022_12_29_062207_add_column_thumb_to_table_menu', 1),
(13, '2022_12_30_093818_add_column_provider_avatar_to_table_user', 1);

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
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `thumb`, `created_at`, `updated_at`) VALUES
(34, 'Táo Gala nhập khẩu', 'Táo nhập khẩu 100% từ New Zealand (giấy chứng nhận nguồn gốc xuất xứ). Đạt tiêu chuẩn xuất khẩu toàn cầu. Bảo quản tươi ngon đến tận tay khách hàng. Trái vừa ăn, chắc, bóng đẹp. Táo giòn, ngọt, thơm ngon, mọng nước, vỏ mỏng, màu cam vàng đặc trưng.\r\nTáo Gala là một trong những loại trái cây tươi rất được mọi người yêu thích vì độ giòn ngọt, thơm ngon và lượng chất dinh dưỡng dồi dào mà nó mang lại cho cơ thể. \r\nSản phẩm là trái cây nhập khẩu New Zealand chất lượng an toàn, vừa tiết kiệm về giá, lại vừa vặn cho một lần ăn mà không gây ngán, không phải dự trữ lại.', '<h2>GI&Aacute; TRỊ DINH DƯỠNG CỦA T&Aacute;O</h2>\r\n\r\n<p>✓&nbsp;Chứa chất chống oxy h&oacute;a gi&uacute;p đẹp da, đẹp d&aacute;ng</p>\r\n\r\n<p>✓&nbsp;Chứa nhiều kho&aacute;ng chất thiết yếu tốt cho tr&iacute; n&atilde;o v&agrave; hệ miễn dịch</p>\r\n\r\n<p>✓&nbsp;Kh&ocirc;ng cholesterol gi&uacute;p tăng cường tuần ho&agrave;n m&aacute;u</p>\r\n\r\n<p>✓&nbsp;Gi&agrave;u chất xơ c&oacute; lợi cho hệ ti&ecirc;u h&oacute;a</p>\r\n\r\n<p>✓&nbsp;Gi&agrave;u vitamin A, C, B1, B2</p>\r\n\r\n<p>✓&nbsp;&Iacute;t chất b&eacute;o hỗ trợ giảm c&acirc;n hiệu quả</p>', 17, 10000, 9000, 1, '/storage/uploads/2022/12/28/tao-gala-nhap-khau-new-zealand-tui-1kg-6-7-trai-202101271720530567.jpg', '2022-12-28 05:39:09', '2022-12-28 05:39:09'),
(35, 'Me', 'Me là một loại trái cây nhiệt đới và cây của nó có nguồn gốc từ các vùng nhiệt đới của châu Phi, cụ thể là Sudan. Nó phát triển ở nhiều vùng như Ấn Độ và Pakistan. Me có tên khoa học của là Tam meus indica. Cây thuộc loại cây thân bụi cỡ trung bình, lá thường xanh, quả phát triển thành vỏ. Quả có đặc điểm là dài, vỏ màu nâu. Bên trong vỏ quả có cùi dẻo, bùi và mọng nước.\r\n\r\nTùy từng giống me mà chúng có vị khác nhau, từ chua cho đến ngọt và có mùi thơm. Nó có vị giống như quả chà là và quả chanh pha trộn với nhau, thường dùng quả me nấu canh chua. Với một vài người không thích chua, ăn quả me sẽ khiến hàm của họ bị ê. Với đặc điểm đó, me thường được sấy khô hoặc dùng làm gia vị nước sốt.', '<h2>GI&Aacute; TRỊ DINH DƯỠNG CỦA T&Aacute;O</h2>\r\n\r\n<p>✓&nbsp;Chứa chất chống oxy h&oacute;a gi&uacute;p đẹp da, đẹp d&aacute;ng</p>\r\n\r\n<p>✓&nbsp;Chứa nhiều kho&aacute;ng chất thiết yếu tốt cho tr&iacute; n&atilde;o v&agrave; hệ miễn dịch</p>\r\n\r\n<p>✓&nbsp;Kh&ocirc;ng cholesterol gi&uacute;p tăng cường tuần ho&agrave;n m&aacute;u</p>\r\n\r\n<p>✓&nbsp;Gi&agrave;u chất xơ c&oacute; lợi cho hệ ti&ecirc;u h&oacute;a</p>\r\n\r\n<p>✓&nbsp;Gi&agrave;u vitamin A, C, B1, B2</p>\r\n\r\n<p>✓&nbsp;&Iacute;t chất b&eacute;o hỗ trợ giảm c&acirc;n hiệu quả</p>', 17, 58000, NULL, 1, '/storage/uploads/2022/12/28/download (12).jfif', '2022-12-28 05:47:11', '2022-12-28 05:47:11'),
(36, 'Na (mảng cầu)', 'Mãng cầu xiêm (mãng cầu gai) là một loại quả vô cùng quen thuộc đối với mọi người. Loại quả này có ít calo, chứa nhiều chất xơ và vitamin C. Đặc biệt, mãng cầu là loại quả có chứa hàm lượng chất chống oxy hóa cực kỳ cao.\r\n\r\nVào những ngày nắng nóng, một ly mãng cầu dầm đơn giản cũng đã có thể giúp bạn giải nhiệt mà lại còn giàu dinh dưỡng. Nhưng bạn có biết, không chỉ dừng lại ở giải nhiệt, mãng cầu xiêm còn có rất nhiều lợi ích tuyệt vời đối với sức khỏe đấy. Cùng tìm hiểu rõ hơn trong bài viết này nhé.', '<p><em>Vitamin C</em>. Một quả na với k&iacute;ch cỡ trung b&igrave;nh nặng khoảng 150g c&oacute; chứa 56,3mg vitamin C. Lượng vitamin C n&agrave;y tương đương với 75% lượng vitamin C cần thiết mỗi ng&agrave;y cho một người phụ nữ v&agrave; 62% lượng vitamin C cần thiết mỗi ng&agrave;y cho một người đ&agrave;n &ocirc;ng.</p>\r\n\r\n<p><em>Chất xơ</em>. Loại quả n&agrave;y rất gi&agrave;u chất xơ v&agrave; carbonhydrate. Một quả na nặng khoảng 150g sẽ cung cấp khoảng 6,8g chất xơ, tương đương với 18% lượng chất xơ cần thiết cho một người lớn mỗi ng&agrave;y. Ngo&agrave;i ra, trung b&igrave;nh mỗi tr&aacute;i c&ograve;n chứa tới 36,6g carbonhydrate, khiến loại tr&aacute;i c&acirc;y n&agrave;y trở th&agrave;nh nguồn cung cấp năng lượng dồi d&agrave;o.</p>\r\n\r\n<p><em>Chất chống oxy h&oacute;a. </em>Một nghi&ecirc;n cứu cho thấy rằng những loại quả thuộc họ Na c&oacute; chứa nhiều hợp chất chống oxy h&oacute;a, c&oacute; &iacute;ch cho qu&aacute; tr&igrave;nh điều trị y khoa v&agrave; hỗ trợ dinh dưỡng.</p>\r\n\r\n<p>Ngo&agrave;i ra, quả na c&ograve;n chứa nhiều chất dinh dưỡng thiết yếu kh&aacute;c như protein, kẽm, kali, photphat, magie, sắt, vitamin B1, B2, B3, B5, B6,&hellip;</p>', 17, 41000, NULL, 1, '/storage/uploads/2022/12/28/download (9).jfif', '2022-12-28 05:49:47', '2022-12-28 05:49:47'),
(37, 'Lê Singo nhập khẩu Trung Quốc', 'Cửa hàng tiện lợi Fresh Food xin giới thiệu đến các bạn giống Lê Singo từ Trung Quốc có kích thước rất lớn, nổi tiếng với mùi vị ngon ngọt và rất giòn, 600g đến 1kg là cân nặng trung bình của mỗi quả Lê bởi vậy Lê Singo rất được nhiều nước trên thế giới ưa chuộng và sử dụng.\r\n\r\nNgoài hương vị thanh mát và thơm ngon, loại lê này còn có rất nhiều công dụng quý giá như sau:\r\n\r\n– Trong táo có nhiều vitamin và chất xơ rất có lợi cho sức khỏe của người sử dụng.\r\n\r\n– Nhờ hương vị ngọt thanh mát chiết suất của táo được dùng làm gia vị nêm nếp thức ăn.\r\n\r\n– Những khoáng chất có trong táo giúp táo cũng là một vị thuốc chữa các bệnh về đường hô hấp, tiêu đờm, giảm ho, giải cảm hiệu quả', '<p><a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon/le-singo-nhap-khau-trung-quoc-hop-1kg\">L&ecirc; Singo</a>&nbsp;l&agrave;&nbsp;<a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon\">tr&aacute;i c&acirc;y</a>&nbsp;<strong>nhập khẩu từ Trung Quốc</strong>&nbsp;với đầy đủ c&aacute;c ti&ecirc;u chuẩn chất lượng sản phẩm đảm bảo ti&ecirc;u chuẩn xuất nhập khẩu to&agrave;n cầu. L&ecirc; Singo đặc điểm quả to tr&ograve;n, vỏ m&agrave;u v&agrave;ng đậm, m&ugrave;i thơm đặc trưng, thịt b&ecirc;n trong trắng phau, &iacute;t hạt, c&oacute; vị ngọt thanh m&aacute;t, t&iacute;nh chất mềm v&agrave; mọng nước.</p>', 17, 9000, NULL, 1, '/storage/uploads/2022/12/28/le_han_quoc_singo__3__1288140c49734873a6acdc9e9eac7057.jpg', '2022-12-28 05:53:50', '2022-12-29 19:36:06'),
(38, 'Dưa Hấu Siêu Ngọt Nhập Khẩu', 'Dưa hấu có tên khoa học là Citrullus lanatus, là một loại thực vật thuộc họ bầu bí, vỏ cứng, chứa nhiều nước, có nguồn gốc từ miền nam Châu Phi. Dưa hấu được được nhiều người ưa chuộng bởi tính ngọt mát và nhiều nước, đồng thời còn giúp cung cấp nhiều vitamin và các nguyên tố vi lượng cho cơ thể.', '<p>Trong 100g dưa hấu c&oacute; c&aacute;c th&agrave;nh phần dinh dưỡng như:</p>\r\n\r\n<p>Nước &ndash; 95.5 g</p>\r\n\r\n<p>Năng lượng &ndash; 16 KCal</p>\r\n\r\n<p>Chất đạm &ndash; 2.3 g</p>\r\n\r\n<p>Chất b&eacute;o &ndash; 0.2 g</p>\r\n\r\n<p>Chất xơ &ndash; 0.5 g</p>\r\n\r\n<p>Canxi &ndash; 8 mg</p>\r\n\r\n<p>Magie 15 &ndash; mg</p>\r\n\r\n<p>Kali &ndash; 187 mg</p>\r\n\r\n<p>Đồng &ndash; 80 mg</p>\r\n\r\n<p>Vitamin C &ndash; 7 mg</p>', 17, 35000, 31500, 1, '/storage/uploads/2022/12/28/281563-073449064.jpg', '2022-12-28 05:58:25', '2022-12-28 05:58:25'),
(39, 'Cà Tím Đà Lạt Loại To', 'Cà tím của Insale được nhập trực tiếp từ các nhà vườn Đà Lạt theo những tiêu chuẩn nghiêm ngặt, bảo đảm các tiêu chuẩn xanh – sạch, chất lượng và an toàn với người dùng.', '<p>Trong c&aacute;c loại&nbsp;<strong>rau củ quả&nbsp;</strong>hiện nay, bạn c&oacute; biết c&agrave; t&iacute;m Đ&agrave; Lạt đứng h&agrave;ng top ten về h&agrave;m lượng dinh dưỡng? V&igrave; trong quả c&agrave; t&iacute;m chứa nhiều dưỡng chất sau đ&acirc;y:</p>\r\n\r\n<ul>\r\n	<li>Chất b&eacute;o, chất xơ</li>\r\n	<li>Vitamin E, Vitamin B1, B6, Vitamin C v&agrave; K</li>\r\n	<li>Kẽm</li>\r\n	<li>Magie</li>\r\n	<li>Phốt pho</li>\r\n	<li>Calcium</li>\r\n	<li>Mangan</li>\r\n	<li>Đồng</li>\r\n	<li>Folate</li>\r\n	<li>Niacin</li>\r\n	<li>Glucid, Protid v&agrave; Lipid.</li>\r\n</ul>', 18, 132000, NULL, 1, '/storage/uploads/2022/12/29/pro49-grande.webp', '2022-12-28 18:42:07', '2022-12-28 18:42:07'),
(40, 'Cà chua beef túi lưới 500g', 'Là loại rau củ rất tốt cho sức khoẻ của người sử dụng, loại rau củ này không những giúp bổ sung chất dinh dưỡng cần thiết cho cơ thể mà chúng có giúp làm đẹp da cho phái nữ. Cà chua có thể ăn sống hoặc chế biến các món ăn cũng rất ngon.', '<h3><strong>C&agrave; chua beef kh&aacute;c c&agrave; chua thường như thế n&agrave;o?</strong></h3>\r\n\r\n<p><a href=\"https://www.bachhoaxanh.com/cu/ca-chua-beef-hop-500g\" target=\"_blank\">C&agrave; chua beef</a>&nbsp;l&agrave; giống c&agrave; chua cao cấp của ch&acirc;u &Acirc;u c&oacute; nhiều ưu điểm như tr&aacute;i&nbsp;to, chắc, &iacute;t hạt, cơm d&agrave;y.</p>\r\n\r\n<h3><strong>C&ocirc;ng dụng của c&agrave; chua Beef</strong></h3>\r\n\r\n<p>Cung cấp một lượng Vitamin A, C, K tuyệt vời. Những chất n&agrave;y c&oacute; t&aacute;c dụng gi&uacute;p tăng cường thị lực, ph&ograve;ng bệnh qu&aacute;ng g&agrave;. Ngo&agrave;i ra, c&agrave; chua beef hữu cơ c&ograve;n l&agrave; loại thực phẩm gi&uacute;p kiểm so&aacute;t lượng đường trong m&aacute;u, c&oacute; canxi hỗ trợ cho xương chắc khỏe. C&agrave; chua l&agrave; loại thực phẩm được sử dụng phổ biến trong mỗi bữa ăn cũng như trong l&agrave;m đẹp của chị em phụ nữ.</p>', 18, 10000, 9000, 1, '/storage/uploads/2022/12/29/5a4acb179b272745b7c2980d84b2b359.png', '2022-12-28 18:43:48', '2022-12-28 18:43:48'),
(41, 'Cà Rốt Đà Lạt GAP', 'Cà rốt là loại củ cực kỳ giàu beta-carotene, là tiền tố cấu thành vitamin A trong gan, hỗ trợ gan đào thải chất độc khỏi cơ thể, rất tốt cho mắt nhờ làm giảm nguy cơ thoái hóa điểm vàng ở mắt, giúp mắt nhìn trong bóng tối tốt hơn (do vitamin A trong mắt chuyển hóa thành Rhodopsin). Cà rốt còn có chứa rất nhiều chất chống oxy hóa làm trẻ hóa da, ngăn ngừa ung thư và tốt cho hệ tim mạch.', '<p><strong>1. Nguồn gốc:&nbsp;</strong>Trang trại Đ&agrave; Lạt GAP - đơn vị n&ocirc;ng nghiệp đầu ti&ecirc;n tại Việt Nam đạt được chứng nhận Global GAP.&nbsp;</p>\r\n\r\n<p><strong>2. Ti&ecirc;u chuẩn:&nbsp;</strong>GAP to&agrave;n cầu (Global GAP)</p>\r\n\r\n<p>- Ti&ecirc;u chuẩn GAP (Good Agricultural Practice) to&agrave;n cầu l&agrave; một bộ ti&ecirc;u chuẩn sản xuất n&ocirc;ng nghiệp trong phạm vi to&agrave;n cầu, nhằm mục đ&iacute;ch kiểm so&aacute;t chất lượng, an to&agrave;n thực phẩm, minh bạch về nguồn gốc, đảm bảo uy t&iacute;n cho đơn vị sản xuất v&agrave; bảo vệ quyền lợi người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>- Việc chứng nhận bao h&agrave;m to&agrave;n bộ c&aacute;c qu&aacute; tr&igrave;nh sản xuất ra sản phẩm, từ đầu v&agrave;o trang trại như thức ăn, giống, v&agrave; c&aacute;c hoạt động nu&ocirc;i trồng cho đến khi sản phẩm rời khỏi trang trại. Nh&agrave; sản xuất phải tu&acirc;n thủ nhiều ti&ecirc;u ch&iacute; nghi&ecirc;m ngặt mới c&oacute; thể đạt được chứng nhận ti&ecirc;u chuẩn n&agrave;y.</p>\r\n\r\n<p><strong>3. M&oacute;n ngon với c&agrave; rốt:</strong><br />\r\nC&agrave; rốt thường được l&agrave;m sinh tố hoặc nước &eacute;p l&agrave;m đẹp da m&agrave; cơ thể lại hấp thụ được lượng vitamin nhiều nhất. Do c&agrave; rốt ORFARM c&oacute; vị ngọt v&agrave; kh&ocirc;ng hăng n&ecirc;n bạn c&oacute; thể th&aacute;i v&agrave; ăn sống cũng rất ngọt, thơm ngon v&agrave; thanh miệng.&nbsp;Ngo&agrave;i ra bạn cũng c&oacute; thể nấu canh c&agrave; rốt khoai t&acirc;y ninh ch&acirc;n gi&ograve; hay xương cục ăn trong bữa ch&iacute;nh. Mứt c&agrave; rốt hay s&uacute;p c&agrave; rốt cũng l&agrave; lựa chọn được rất nhiều chị em lựa chọn v&igrave; dễ ăn v&agrave; thơm ngon.</p>', 18, 100000, 90000, 1, '/storage/uploads/2022/12/29/14750448136825_ca-rot.jpg', '2022-12-28 18:46:00', '2022-12-28 18:46:00'),
(42, 'Bí Đỏ Tròn Vn Farm Food', 'Thực phẩm tốt cho sức khỏe\r\nCó thể chế biến thành nhiều món ăn\r\nSản phẩm đạt chất lượng VietGap\r\nLiên hệ trực tiếp để được giá sỉ tốt nhất.', '<p><strong>B&iacute; đỏ tr&ograve;n&nbsp;</strong>do Csfood ph&acirc;n phối&nbsp;được trồng tự nhi&ecirc;n tại c&aacute;c n&ocirc;ng trại v&agrave; chăm s&oacute;c tỉ mỉ để thu được những quả b&iacute; chất lượng. Đặc biệt, sản phẩm được&nbsp;trồng&nbsp;bằng ph&acirc;n b&oacute;n hữu cơ, kh&ocirc;ng sử dụng c&aacute;c h&oacute;a chất g&acirc;y hại, đảm bảo kh&ocirc;ng ảnh hưởng đến sức khỏe người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p><strong>B&iacute; đỏ tr&ograve;n</strong>&nbsp;được coi l&agrave; thực phẩm v&agrave;ng bởi b&iacute; đỏ c&oacute; chứa nhiều vitamin v&agrave; kho&aacute;ng chất cần thiết cho cơ thể.&nbsp;Trong b&iacute; đỏ c&oacute; h&agrave;m lượng sắt cao, c&aacute;c chất muối kho&aacute;ng, gi&agrave;u vitamin v&agrave; c&aacute;c axit hữu cơ tốt cho cơ thể. Kh&ocirc;ng chỉ l&agrave; đồ ăn bổ dưỡng m&agrave;&nbsp;b&iacute; đỏ c&ograve;n c&oacute; c&ocirc;ng dụng&nbsp;gi&uacute;p ngăn ngừa&nbsp;ung thư, hỗ trợ giảm c&acirc;n, chống l&atilde;o h&oacute;a da, tốt cho hệ ti&ecirc;u h&oacute;a, hệ thống xương khớp&hellip; Do đ&oacute;, sản phẩm&nbsp;<strong>B&iacute; đỏ tr&ograve;n&nbsp;</strong>sẽ lu&ocirc;n l&agrave; thực phẩm l&yacute; tưởng cho thực đơn bữa ăn h&agrave;ng ng&agrave;y để bạn chăm s&oacute;c chu đ&aacute;o cho sức khỏe cả gia đ&igrave;nh.</p>', 18, 100000, 90000, 1, '/storage/uploads/2022/12/29/R.png', '2022-12-28 18:47:30', '2022-12-28 18:47:30'),
(43, 'Ớt chuông', 'Dùng chế biến món ăn\r\nGiàu vitamin và có tác dụng phóng chống bệnh\r\nAn toàn chất lượng', '<p>Ớt ngọt c&oacute; t&ecirc;n khoa học: Capsicum annum L. N&oacute; được gọi l&agrave; ớt ngọt v&igrave; n&oacute; kh&ocirc;ng c&oacute; vị cay gắt như ớt cay; v&igrave; được trồng nhiều ở Đ&agrave; Lạt n&ecirc;n c&ograve;n được gọi l&agrave; ớt Đ&agrave; Lạt.</p>\r\n\r\n<p><strong>Ớt chu&ocirc;ng</strong>&nbsp;gi&agrave;u vitamin A, vitamin C v&agrave; chất dinh dưỡng kh&aacute;c.&nbsp;<strong>Ớt chu&ocirc;ng</strong>&nbsp;cũng cung cấp folate, hỗ trợ chức năng của c&aacute;c tế b&agrave;o hồng cầu v&agrave; đặc biệt quan trọng đối với phụ nữ mang thai v&igrave; n&oacute; gi&uacute;p ngăn ngừa một số loại khuyết tật bẩm sinh ở thai nhi.</p>\r\n\r\n<p><strong>T&aacute;c dụng của ớt chu&ocirc;ng:</strong></p>\r\n\r\n<ul>\r\n	<li>Ph&ograve;ng chống ung thư</li>\r\n	<li>Gi&uacute;p đ&ocirc;i mắt s&aacute;ng khỏe</li>\r\n	<li>Chống vi&ecirc;m v&agrave; chống oxy h&oacute;a</li>\r\n	<li>L&agrave;m đẹp t&oacute;c v&agrave; da</li>\r\n</ul>', 18, 59000, NULL, 1, '/storage/uploads/2022/12/29/OIP (8).jfif', '2022-12-28 18:48:47', '2022-12-28 18:52:34'),
(44, 'Cà Tím Tươi VietRAT', 'Dùng để chế biến các món ăn\r\nAn toàn chất lượng\r\nLiên hệ trực tiếp để được giá sỉ tốt nhất', '<p><strong>C&agrave; T&iacute;m</strong>&nbsp;l&agrave; một thực phẩm c&oacute; nguồn gốc từ Ấn Độ, loại thực phẩm n&agrave;y rất tốt cho những người đang cố gắng giảm c&acirc;n hay đang chiến đấu với căn bệnh b&eacute;o ph&igrave; bởi gi&aacute; trị dinh dưỡng tuyệt vời n&oacute; mang đến, hơn nữa c&agrave; t&iacute;m hầu như kh&ocirc;ng c&oacute; chlesterol, chất b&eacute;o b&atilde;o h&ograve;a.</p>\r\n\r\n<p>Qu&aacute; tr&igrave;nh chăm s&oacute;c c&acirc;y trồng kh&ocirc;ng sử dụng thuốc trừ s&acirc;u, ph&acirc;n b&oacute;n h&oacute;a học, c&aacute;c chất k&iacute;ch th&iacute;ch tăng trưởng, thay v&agrave;o đ&oacute; l&agrave; c&aacute;c chế phẩm sinh học, vi sinh vật tự nhi&ecirc;n c&oacute; lợi v&agrave; kh&ocirc;ng mang mầm bệnh.</p>\r\n\r\n<p><strong>C&agrave; T&iacute;m</strong>&nbsp;chứa nhiều chất dinh dưỡng: một h&agrave;m lượng chất xơ cao v&agrave; kho&aacute;ng chất như vitamin C, vitamin K, Thiamin, Niacin, vitamin B6, axit Phantothenic, photpho, đồng, kali, mangan&hellip;</p>\r\n\r\n<p>C&aacute;c m&oacute;n ăn được chế biến từ c&agrave; t&iacute;m:</p>\r\n\r\n<p>+ C&agrave; t&iacute;m tẩm bọt chi&ecirc;n gi&ograve;n ch&agrave; b&ocirc;ng.</p>\r\n\r\n<p>+ C&agrave; t&iacute;m x&agrave;o thịt băm.</p>\r\n\r\n<p>+ C&aacute; sốt c&agrave; t&iacute;m.</p>\r\n\r\n<p>+ C&agrave; t&iacute;m nướng h&agrave;nh mỡ.</p>\r\n\r\n<p>+ C&agrave; t&iacute;m nhồi thịt sốt maggi.</p>\r\n\r\n<p>+ C&agrave; t&iacute;m &aacute;p chảo.</p>', 18, 30000, NULL, 1, '/storage/uploads/2022/12/29/Cà-Tím-Tươi-VietRAT-Túi-500g.png', '2022-12-28 18:50:06', '2022-12-28 18:50:06'),
(45, 'Cá Hồi Tươi Nhập Khẩu', 'Được nhập khẩu từ các nhà sản xuất cá hồi uy tín như Salmar, Leroy bằng đường hàng không liên tục 3 lần/tuần. Homefarm cung cấp Cá hồi tươi Fillet, Cá hồi tươi nguyên con, Lườn cá hồi đông lạnh và gia vị chuyên cá hồi có chất lượng và giá thành tốt nhất tại Hà Nội, Hải Phòng, TP Hồ Chí Minh .', '<h2>M&ocirc; tả sản phẩm</h2>\r\n\r\n<p><strong>Đơn vị t&iacute;nh:</strong>&nbsp;Kg</p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nauy, &Uacute;c</p>\r\n\r\n<p><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i:</strong>&nbsp;b&aacute;n theo lạng, cắt th&aacute;i sashimi, theo miếng.</p>\r\n\r\n<p><strong>Chế biến:</strong>&nbsp;L&agrave;m sashimi c&aacute; hồi, sushi, gỏi, c&aacute; hồi nướng, ruốc, &aacute;p chảo, r&aacute;n&hellip;</p>\r\n\r\n<p><strong>Đặt h&agrave;ng: 0247.108.1008</strong></p>\r\n\r\n<p><strong>Nhận giao h&agrave;ng to&agrave;n tận nơi tại H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh, Hải Ph&ograve;ng</strong></p>\r\n\r\n<p><strong>** Ăn sashimi, sushi: Bảo quản ngăn m&aacute;t tủ lạnh (0-4 độ C) - Hạn sử dụng: 3 ng&agrave;y<br />\r\nKh&ocirc;ng n&ecirc;n bảo quản sản phẩm trong ngăn đ&aacute; tủ lạnh. Khi bảo quản trong ngăn đ&aacute; tủ lạnh chất lượng sản phẩm c&oacute; thể bị giảm. Sử dụng sản phẩm trong thời gian sớm nhất c&oacute; thể.</strong></p>', 21, 100000, 90000, 1, '/storage/uploads/2022/12/29/products-0013s-0002-3.webp', '2022-12-28 18:56:09', '2022-12-28 18:56:09'),
(46, 'Cá Basa Phi Lê', 'Cá basa phi lê được rút hết xương, thịt cá ngọt, bổ dưỡng và ai cũng có thể ăn được. Các món ngon không thể bỏ qua với cá basa phi lê như cá basa chiên giòn, cá basa nhúng giấm, ăn cùng với lẩu,... Cá được sơ chế và đóng gói tiện lợi, tiết kiệm thời gian đi chợ.', '<p>C&aacute; basa phi l&ecirc; tươi ngon, thịt mềm, ngọt v&agrave; b&eacute;o. C&aacute; được phi l&ecirc;, loại bỏ da, th&agrave;nh miếng lớn, xếp trong khay 300g, được h&uacute;t ch&acirc;n kh&ocirc;ng gi&uacute;p bảo quản v&agrave; vận chuyển tiện lợi hơn.</p>\r\n\r\n<p>C&aacute; được đảm bảo nguồn gốc xuất xứ r&otilde; r&agrave;ng.</p>\r\n\r\n<p>Đặt giao h&agrave;ng nhanh</p>\r\n\r\n<h3><strong>Gi&aacute; trị dinh dưỡng của basa phi l&ecirc;</strong></h3>\r\n\r\n<ul>\r\n	<li>Trong thịt c&aacute; basa chứa nhiều chất đạm, chất b&eacute;o, omega 3, kho&aacute;ng chất như canxi, kẽm, đồng,...</li>\r\n	<li>Trong 100g c&aacute; basa c&oacute; khoảng&nbsp;<strong>50 Kcal.</strong></li>\r\n</ul>\r\n\r\n<h3><strong>T&aacute;c dụng của basa phi l&ecirc; đối với sức khỏe</strong></h3>\r\n\r\n<ul>\r\n	<li>Gi&uacute;p xương chắc khỏe</li>\r\n	<li>Ngăn ngừa lo&atilde;ng xương</li>\r\n	<li>Tăng cường qu&aacute; tr&igrave;nh trao đổi chất</li>\r\n</ul>', 21, 100000, 90000, 1, '/storage/uploads/2022/12/29/cá-basa-phi-le-bilofist.jpg', '2022-12-28 18:57:28', '2022-12-28 19:03:23'),
(47, 'Nạc lưng bò mát nhập khẩu', 'Nạc dăm là phần nạc dăm mềm, có lớp mỡ mỏng, chứa nhiều axit amin cần thiết cho cơ thể, dùng làm nguyên liệu chế biến các món ăn hấp dẫn. Nạc dăm heo nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', '<ul>\r\n	<li><strong>Thịt nạc dăm nhập khẩu Brazil</strong>&nbsp;l&agrave; c&aacute;c khối thịt nạc mềm, c&oacute; c&aacute;c lớp mỡ mỏng v&agrave; kh&ocirc;ng đều nhau xen kẽ v&agrave;o b&ecirc;n trong miếng thịt nhưng kh&ocirc;ng t&aacute;ch th&agrave;nh lớp mỡ v&agrave; lợp thịt nạc r&otilde; r&agrave;ng</li>\r\n	<li>Thịt nạc dăm sạch sẽ, chất lượng</li>\r\n	<li>Đặt giao h&agrave;ng nhanh</li>\r\n	<li>\r\n	<h3><strong>Gi&aacute; trị dinh dưỡng của nạc dăm heo</strong></h3>\r\n	</li>\r\n	<li>Trong thịt heo chứa nhiều vitamin như vitamin B6, vitamin B12, c&aacute;c kho&aacute;ng chất như phốt pho, kali, canxi,...</li>\r\n	<li>Trong 100g nạc dăm c&oacute;&nbsp;<strong>145 Kcal.</strong></li>\r\n	<li>\r\n	<h3><strong>T&aacute;c dụng của nạc dăm heo đối với sức khỏe</strong></h3>\r\n	</li>\r\n	<li>Tốt cho tim mạch</li>\r\n	<li>Hỗ trợ qu&aacute; tr&igrave;nh trao đổi chất</li>\r\n	<li>Tăng cường hệ miễn dịch</li>\r\n</ul>', 22, 108000, NULL, 1, '/storage/uploads/2022/12/29/R (1).jfif', '2022-12-28 18:58:50', '2022-12-28 18:58:50'),
(48, 'Ba Chỉ Bò NK Úc', 'Thịt đông lạnh Orifood là thương hiệu chuyên cung cấp thịt bò đông lạnh vô cùng chất lượng, được nhiều khách hàng quan tâm và tin dùng, với chất lượng rất đáng tin cậy. Hotpot Story thịt ba chỉ bò Mỹ Orifood hộp 300g với thị đạt chuẩn từ Mỹ, cho vị ngon khó cưỡng kèm sốt chấm đậm đà bắt vị.', '<p>Thịt ba chỉ b&ograve; Mỹ Orifood hộp 300g c&oacute; th&agrave;nh phần l&agrave;: Ba chỉ b&ograve; 67%. G&oacute;i sốt chấm 33% - Nước, tương c&agrave;, ớt bột, đường, tỏi, dầu m&egrave;, ng&ograve;, chao,..</p>\r\n\r\n<h3><strong>T&aacute;c dụng đối với sức khỏe&nbsp;</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Cung cấp c&aacute;c dưỡng chất cần thiết cho cơ thể như: Protein, Vitamin, sắt, kẽm,..</p>\r\n	</li>\r\n	<li>\r\n	<p>Tăng cường khả năng miễn dịch cho cơ thể</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm b&eacute;o hiệu quả</p>\r\n	</li>\r\n	<li>\r\n	<p>Hạn chế t&igrave;nh trạng thiếu m&aacute;u</p>\r\n	</li>\r\n	<li>\r\n	<p>Cung cấp năng lượng cần thiết cho cơ thể</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Hướng dẫn sử dụng v&agrave; bảo quản sản phẩ</strong>m</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sử dụng: R&atilde; đ&ocirc;ng v&agrave; tiến h&agrave;nh chế biến c&aacute;c m&oacute;n ăn y&ecirc;u th&iacute;ch như: nướng, nấu lẩu,..</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo quản: Bảo quản sản phẩm ở nhiệt độ - 18 độ C hoặc ngăn đ&aacute; tủ lạnh</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>C&aacute;c m&oacute;n ăn y&ecirc;u th&iacute;ch</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thịt ba chỉ nướng BBQ</p>\r\n	</li>\r\n	<li>\r\n	<p>Thịt ba chỉ nướng sa tế</p>\r\n	</li>\r\n	<li>\r\n	<p>Thịt ba chỉ nấu lẩu</p>\r\n	</li>\r\n</ul>', 22, 100000, 90000, 1, '/storage/uploads/2022/12/29/R.jfif', '2022-12-28 19:00:43', '2022-12-28 19:00:43'),
(49, 'Bắp Bò Úc', 'Bắp bò Úc tươi hút chân không khay 250g là phần thịt đầy dinh dưỡng và năng lượng, tốt cho hệ cơ, hệ thần kinh và tăng sức dẻo dai cho cơ thể. Phần bắp bò là phần giàu kẽm, sắt, protein gấp đôi so với cá, thịt gia cầm. Bắp bò úc nấu lẩu, nấu bún bò thơm ngon đặc biệt đậm đà, cả nhà ai cũng mê', '<h3><strong>Ưu điểm khi mua bắp b&ograve; &Uacute;c tại B&aacute;ch ho&aacute; XANH</strong></h3>\r\n\r\n<ul>\r\n	<li>Bắp b&ograve; &Uacute;c tươi l&agrave; một phần thịt với hương vị đậm ngọt, thịt dai gi&ograve;n sần sật v&agrave; nhiều nạc &iacute;t mỡ, thịt cực chắc v&agrave; nhiều g&acirc;n. Thịt bắp b&ograve; tươi ngon, dai.</li>\r\n	<li>Bắp b&ograve; được đ&oacute;ng khay 250g, h&uacute;t ch&acirc;n kh&ocirc;ng gi&uacute;p bảo quản thịt tốt hơn. Bắp b&ograve; Trung Đồng được đảm bảo nguồn gốc xuất xứ r&otilde; r&agrave;ng.</li>\r\n	<li>Đặt giao h&agrave;ng nhanh</li>\r\n</ul>\r\n\r\n<h3><strong>Đ&ocirc;i n&eacute;t về thương hiệu thịt b&ograve; Trung Đồng</strong></h3>\r\n\r\n<p>L&agrave; thương hiệu thịt b&ograve; l&acirc;u đời, được th&agrave;nh lập từ năm 2011 với nền tảng của một c&ocirc;ng ty c&oacute; bề d&agrave;y lịch sử hơn 30 năm.&nbsp;<a href=\"https://www.bachhoaxanh.com/thit-bo-trung-dong\" target=\"_blank\">Thịt b&ograve; Trung Đồng</a>&nbsp;chuy&ecirc;n cung cấp c&aacute;c sản phẩm thịt b&ograve; thơm ngon, chất lượng v&agrave; dai ngọt.</p>\r\n\r\n<h3><strong>Gi&aacute; trị dinh dưỡng của bắp b&ograve;</strong></h3>\r\n\r\n<ul>\r\n	<li>Thịt bắp b&ograve; &Uacute;c cung cấp nhiều vitamin v&agrave; kho&aacute;ng chất cho cơ thể như axit amin, vitamin B6, vitamin B12,... những vitamin n&agrave;y gi&uacute;p tăng sức bền cho cơ thể, bổ sung năng lượng cho cơ thể.</li>\r\n	<li>Trong 100g thịt bắp b&ograve; c&oacute; khoảng&nbsp;<strong>250 Kcal.</strong></li>\r\n</ul>', 22, 109000, NULL, 1, '/storage/uploads/2022/12/29/ou8mn-3ojHv5f6VLjTnOVMiAUbWjgbpHbap-bo-uc-tuoi.jpg', '2022-12-28 19:02:15', '2022-12-28 19:02:15'),
(50, 'Thùng 48 bịch sữa 220ml', 'Sữa tươi Dutch Lady bổ sung canxi và protein thiết yếu mỗi ngày cho bé, giúp bé khoẻ mạnh, cao lớn. Sữa tươi còn được thêm đường giúp tăng độ thơm ngon, uống không bị ngán. Thùng 48 bịch sữa tiệt trùng có đường Dutch Lady Canxi & Protein 210ml tiện lợi, tiết kiệm, phù hợp sử dụng lâu dài.', '<p>Thương hiệu Sữa tươi Dutch Lady (hay c&ograve;n được người ti&ecirc;u d&ugrave;ng&nbsp;Việt quen gọi l&agrave; C&ocirc; G&aacute;i H&agrave; Lan) l&agrave; thương hiệu chuy&ecirc;n mang đến c&aacute;c d&ograve;ng sữa v&agrave; c&aacute;c sản phẩm từ sữa&nbsp;được l&agrave;m từ nguồn nguy&ecirc;n liệu chọn lọc, trải qua quy tr&igrave;nh sản xuất v&agrave; kiểm so&aacute;t chất lượng&nbsp;nghi&ecirc;m ngặt theo&nbsp;<strong>ti&ecirc;u chuẩn 4 kh&ocirc;ng</strong>&nbsp;được quốc tế c&ocirc;ng nhận.&nbsp;<br />\r\n<br />\r\nVới hơn 145 năm kinh nghiệm, sữa tươi c&oacute; đường của Dutch Lady đem đ&ecirc;́n vị thơm béo thu&acirc;̀n khi&ecirc;́t, ngọt thanh dễ uống, đồng thời bổ sung nhiều dưỡng chất thiết yếu như vitamin A, vitamin D, vitamin nh&oacute;m B, đặc biệt canxi v&agrave; protein gi&uacute;p ph&aacute;t triển v&agrave; củng cố hệ xương chắc khoẻ.</p>\r\n\r\n<h3><strong>Th&agrave;nh phần dinh dưỡng trong sản phẩm</strong></h3>\r\n\r\n<p><br />\r\nTh&agrave;nh phần ch&iacute;nh của sản phẩm bao gồm: Sữa 93% (Nước, sữa tươi, bột sữa gầy), đường 4%, dầu thực vật, chất nhũ h&oacute;a 471, hương tổng hợp d&ugrave;ng trong thực phẩm, chất ổn định 407. Ngo&agrave;i ra, sản phẩm cung cấp khoảng 74 kcal tr&ecirc;n 100ml sữa, c&ugrave;ng nhiều h&agrave;m lượng vitamin v&agrave; kho&aacute;ng chất kh&aacute;c cho cơ thể.</p>', 20, 290000, NULL, 1, '/storage/uploads/2022/12/29/thung-48-bich-sua-tiet-trung-co-duong-dutch-lady-canxi-protein-220ml-202104090008341878.jpg', '2022-12-28 19:06:48', '2022-12-29 19:35:25'),
(51, 'Thùng 40 sữa đậu nành', 'Sữa đậu nành Fami là sữa đậu nành được bổ sung thêm canxi, vitamin D3 và vitamin B12 giúp chắc khoẻ xương. Sữa đậu nành Fami thơm ngon, dễ uống vô cùng. 40 bịch sữa ít đường canxi 200ml dễ uống, đóng thùng tiết kiệm, tiện dùng lâu dài.', '<p>Dịch tr&iacute;ch từ đậu n&agrave;nh hạt (50%), nước, đường kính trắng (5.8%), canxi photphat (0.23%), d&acirc;̀u đ&acirc;̣u nành, hương li&ecirc;̣u gi&ocirc;́ng tự nhi&ecirc;n dùng cho thực ph&acirc;̉m, h&ocirc;̃n hợp vitamin và khoáng ch&acirc;́t (vitamin A, D3, B6, B9, B12, magi&ecirc; và kẽm), ch&acirc;́t &ocirc;̉n định (E407, E418), mu&ocirc;́i ăn, ch&acirc;́t đi&ecirc;̀u chỉnh đ&ocirc;̣ pH (500ii)</p>', 20, 145000, NULL, 1, '/storage/uploads/2022/12/29/thung-40-bich-sua-dau-nanh-it-duong-fami-canxi-200ml-202112161407019015.jpg', '2022-12-28 19:08:09', '2022-12-29 19:35:53'),
(52, '12 chai Coca Cola 390ml', 'Sản phẩm chất lượng thương hiệu nước giải khát Coca Cola nổi tiếng thế giới được ưa chuộng tại nhiều nhiều quốc gia. 12 chai nước ngọt Coca Cola Zero 390ml giải khát nhanh chóng, nước ngọt lại không chứa đường ít ngọt tốt cho sức khỏe đặc biệt với những người giảm cân.', '<p>Nước b&atilde;o h&ograve;a CO2, m&agrave;u tự nhi&ecirc;n, chất điều chỉnh độ acid, chất tạo ngọt tổng hợp, chất bảo quản, hương cola tự nhi&ecirc;n v&agrave; caffeine.</p>', 20, 90000, NULL, 1, '/storage/uploads/2022/12/29/12-chai-nuoc-ngot-co-ga-coca-cola-zero-390ml-202110221452296015.jpg', '2022-12-28 19:09:25', '2022-12-29 19:35:08'),
(53, 'Kẹo socola nhập khẩu từ Mỹ', 'Những viên kẹo socola với nhiều màu sắc và đa dạng hương vị bắt mắt rất thích thú. Kẹo socola dạng viên M&M\'s 90g với lớp socola béo, thơm và ngọt rất ngon, ăn vui miệng. Kẹo socola M&M\'s là thương hiệu của Mỹ, sản phẩm được đóng gói tiện lợi dễ mang theo bên người trong các hoạt động ngoài trời.', '<h3>Đ&ocirc;i n&eacute;t về thương hiệu</h3>\r\n\r\n<p>Thương hiệu M&amp;M&#39;s được nhiều người ti&ecirc;u d&ugrave;ng biết đến qua c&aacute;c sản phẩm kẹo socola với nhiều m&agrave;u sắc bắt mắt, hấp dẫn được b&aacute;n phổ biến ở nhiều nước tr&ecirc;n thế giới. Đ&acirc;y l&agrave; thương hiệu kẹo c&oacute; xuất xứ từ Mỹ, được th&agrave;nh lập v&agrave;o năm 1941 thuộc tập đo&agrave;n Mars, với hương vị kẹo thơm ngon, sản xuất theo quy tr&igrave;nh hiện đại, chất lượng n&ecirc;n c&aacute;c sản phẩm mang thương hiệu M&amp;M&#39;s được rất nhiều người ưa chuộng tr&ecirc;n to&agrave;n cầu.</p>\r\n\r\n<h3>Th&agrave;nh phần dinh dưỡng trong sản phẩm</h3>\r\n\r\n<p>Sản phẩm kẹo socola sữa M&amp;M&#39;s g&oacute;i 90g c&oacute; chứa những th&agrave;nh phần dinh dưỡng như: Năng lượng, đạm, cholesterol, carbohydrate, chất xơ, đường, natri. Theo th&ocirc;ng tin tr&ecirc;n bao b&igrave; cung cấp th&igrave; trong 100g kẹo socola M&amp;M&#39;s sẽ bổ sung khoảng 519 kcal.</p>\r\n\r\n<h3>T&aacute;c dụng của sản phẩm với sức khỏe</h3>\r\n\r\n<p>Được l&agrave;m từ những nguy&ecirc;n liệu đ&atilde; qua chọn lọc kỹ lưỡng v&agrave; sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại của Mỹ, tất cả c&aacute;c c&ocirc;ng đoạn đều được đảm bảo an to&agrave;n vệ sinh thực phẩm. Kh&ocirc;ng chỉ để ăn cho vui miệng m&agrave; kẹo socola sữa M&amp;M&#39;s mang lại nhiều c&ocirc;ng dụng tốt cho sức khỏe như:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm stress hiệu quả.</p>\r\n	</li>\r\n	<li>\r\n	<p>Ngăn ngừa bệnh ung thư.</p>\r\n	</li>\r\n	<li>\r\n	<p>Điều h&ograve;a huyết &aacute;p.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chống oxy h&oacute;a cho cơ thể.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tăng cường hoạt động của tr&iacute; n&atilde;o.</p>\r\n	</li>\r\n</ul>', 19, 230000, 207000, 1, '/storage/uploads/2022/12/29/scl1.jpg', '2022-12-28 19:11:21', '2022-12-28 19:11:53'),
(54, 'Mứt bí 500g', 'Bí đỏ tròn bùi ngậy, thơm ngon và bảo quản theo tiêu chuẩn nghiêm ngặt để giữ được độ tươi ngon của thực phẩm. Sự kết hợp giữa bí đỏ béo bùi với xương heo ngọt, canh bí đỏ xương heo luôn là sự lựa chọn tuyệt vời cho mâm cơm mỗi ngày của bạn.', '<h3><strong>Gi&aacute; trị dinh dưỡng của b&iacute; đỏ</strong></h3>\r\n\r\n<ul>\r\n	<li>Trong b&iacute; đỏ chứa nhiều chất xơ, c&aacute;c kho&aacute;ng chất tốt cho cơ thể như kali, canxi, kẽm,... B&iacute; đỏ c&ograve;n chứa nhiều vitamin A, vitamin B,... tốt cho cơ thể.</li>\r\n	<li>Trong 100g b&iacute; đỏ c&oacute; khoảng 26 Kcal.</li>\r\n</ul>\r\n\r\n<h3><strong>T&aacute;c dụng của b&iacute; đỏ đối với sức khỏe</strong></h3>\r\n\r\n<ul>\r\n	<li>Bảo vệ thị lực tốt</li>\r\n	<li>Tăng cường hệ miễn dịch</li>\r\n	<li>Hỗ trợ giảm c&acirc;n hiệu quả</li>\r\n	<li>Tăng cường sức khỏe tim v&agrave; da</li>\r\n</ul>', 19, 130000, 117000, 1, '/storage/uploads/2022/12/29/mutbi3.jpg', '2022-12-28 19:13:09', '2022-12-28 19:13:09'),
(55, 'Mứt gừng 500g', 'Mức gừng có thành phần bột gừng được chiết xuất từ 100% củ gừng già, đường tinh luyện. Trà Cozy luôn được đông đảo người Việt tin dùng và còn làm quà tặng người thân yêu. Mứcgừng hòa tan dạng gói tiện lợi, nhanh chóng cho bạn cảm giác ấm nóng, thơm dịu dễ chịu', '<p>Cozy l&agrave; nh&atilde;n hiệu chuy&ecirc;n sản xuất v&agrave; ph&acirc;n phối c&aacute;c sản phẩm tr&agrave; truyền thống của Việt Nam thuộc C&ocirc;ng ty cổ phần Sản phẩm Sinh th&aacute;i. Với bề d&agrave;y gần 20 năm ho&agrave;n thiện v&agrave; ph&aacute;t triển, Cozy hiện đang rất được c&aacute;c sản phẩm nổi bật như tr&agrave; t&uacute;i lọc, tr&agrave; t&uacute;i nh&uacute;ng. Đặc biệt, hiện nay Cozy đang đ&aacute;nh mạnh v&agrave;o thị trường tr&agrave; uống liền, đ&aacute;p ứng nhu cầu người ti&ecirc;u d&ugrave;ng với sản phẩm đ&oacute;ng hộp v&igrave; t&iacute;nh tiện lợi, nhanh ch&oacute;ng.</p>', 19, 89000, 81000, 1, '/storage/uploads/2022/12/29/mutgu1.jpg', '2022-12-28 19:15:14', '2022-12-28 19:15:14'),
(56, 'Giỏ quà bánh cosy', 'Bánh kẹo, trà và mứt đã trở thành những món quà không thể thiếu trong dịp tết của mỗi người Việt. Theo quan niệm xưa, một mâm bánh mứt đủ đầy mang ý nghĩa cầu mong cho một năm sung túc và bình an. Vì thế, hộp quà bánh kẹo và giỏ quà bánh kẹo thường được mọi người lựa chọn làm quà Tết. Hãy cùng Bazanland điểm qua những hộp quà và giỏ quà bánh kẹo bán chạy nhất hiện nay nhé.', '<h2>Giỏ qu&agrave; b&aacute;nh kẹo Tết gồm những g&igrave;?</h2>\r\n\r\n<p>Th&ocirc;ng thường, c&aacute;c phần qu&agrave; tết thường bao gồm c&aacute;c loại b&aacute;nh kẹo nội, ngoại nhập phong ph&uacute;. T&ugrave;y theo chất lượng của sản phẩm b&ecirc;n trong m&agrave; c&aacute;c loại b&aacute;nh kẹo sẽ c&oacute; gi&aacute; kh&aacute;c nhau. Cho n&ecirc;n c&aacute;c combo b&aacute;nh kẹo Tết&nbsp;thường c&oacute; mức gi&aacute; từ 500.000đ &ndash; 2.000.000đ/phần.</p>\r\n\r\n<p>Một&nbsp;<strong>giỏ qu&agrave; b&aacute;nh kẹo</strong>&nbsp;chất lượng v&agrave; &yacute; nghĩa cần phải c&oacute; c&aacute;c loại b&aacute;nh mứt truyền thống kết hợp với b&aacute;nh kẹo mới lạ. Bạn c&oacute; thể tham khảo một số loại b&aacute;nh kẹo sau nh&eacute;.</p>\r\n\r\n<h3>Hộp b&aacute;nh quy</h3>\r\n\r\n<p>B&aacute;nh quy l&agrave; loại b&aacute;nh dễ ăn, c&oacute; thiết kế đẹp mắt n&ecirc;n được d&ugrave;ng rất phổ biến trong c&aacute;c&nbsp;<strong><a href=\"https://bazanland.com/qua-tang-tet/\" rel=\"noopener\" target=\"_blank\">hộp qu&agrave; Tết</a></strong>. Nếu c&oacute; ng&acirc;n s&aacute;ch tầm trung bạn c&oacute; thể lựa chọn c&aacute;c loại b&aacute;nh quy của Kinh Đ&ocirc;, Cosy,&hellip; để l&agrave;m qu&agrave;. C&ograve;n nếu bạn c&oacute; ng&acirc;n s&aacute;ch nhỉnh hơn một ch&uacute;t th&igrave; c&aacute;c loại b&aacute;nh ngoại nhập như: LU, b&aacute;nh quy bơ Danisa,&hellip;sẽ l&agrave; qu&agrave; tặng Tết th&iacute;ch hợp.</p>', 19, 340000, 306000, 1, '/storage/uploads/2022/12/29/kinhdo1.jpg', '2022-12-28 19:16:37', '2022-12-29 19:34:34'),
(57, 'Mứt dừa 500g', 'Mứt dừa là món quà quê cực kỳ tinh tế để tặng người thân và thưởng thức trong gia đình. Mứt dừa được làm từ cơm dừa, có tác dụng cung cấp chất xơ, tốt cho tim mạch, tốt cho những người bị huyết áp cao, tăng cường chức năng não bộ…', '<p>Mứt dừa l&agrave; m&oacute;n qu&agrave; qu&ecirc; cực kỳ tinh tế để tặng người th&acirc;n v&agrave; thưởng thức trong gia đ&igrave;nh. Mứt dừa được l&agrave;m từ cơm dừa, c&oacute; t&aacute;c dụng cung cấp chất xơ, tốt cho tim mạch, tốt cho những người bị huyết &aacute;p cao, tăng cường chức năng n&atilde;o bộ&hellip;</p>', 19, 110000, 90000, 1, '/storage/uploads/2022/12/29/mutdua3.jpg', '2022-12-28 19:18:16', '2022-12-28 19:18:16'),
(58, 'Bánh KitKat Nhật Bản', 'Sản phẩm (Nhiều vị) Bánh KitKat Nhật Bản các vị gói 140gr đang được mở bán với mức giá siêu tốt khi mua online, giao hàng online trên toàn quốc với chi phí tiết kiệm nhất,130 đã được bán ra kể từ lúc chào bán lần cuối cùng.Trên đây là số liệu về sản phẩm chúng tôi thống kê và gửi đến bạn, hi vọng với những gợi ý ở trên giúp bạn mua sắm tốt hơn tại HolCim', '<p>B&aacute;nh KitKat Nhật Bản c&aacute;c vị g&oacute;i 140gr<br />\r\n<br />\r\nKh&ocirc;ng phải ngẫu nhi&ecirc;n m&agrave; nhiều người g&aacute;n cho Nhật Bản c&aacute;i t&ecirc;n &quot;vương quốc của những thanh Kitkat&quot; khi đ&acirc;y l&agrave; m&oacute;n ăn ưa th&iacute;ch của người d&acirc;n đất nước n&agrave;y.<br />\r\n<br />\r\nPhần lớn mọi người tr&ecirc;n thế giới đều biến đến Kitkat như một m&oacute;n điểm t&acirc;m s&aacute;ng được l&agrave;m từ b&aacute;nh xốp v&agrave; chocolate trắng. Tuy nhi&ecirc;n tại Nhật Bản, n&oacute; l&agrave; một thứ ho&agrave;n to&agrave;n kh&aacute;c. Bạn sẽ kh&ocirc;ng chỉ thấy những miếng chocolate đơn điệu m&agrave; đầy m&agrave;u sắc, hương vị độc đ&aacute;o đến k&igrave; dị!<br />\r\n<br />\r\nNgay khi xuất hiện tại Nhật Bản, Kitkat thường được phụ huynh học sinh tặng cho con m&igrave;nh hay những người bạn tặng cho nhau trước mỗi kỳ thi như một lời ch&uacute;c may mắn. V&agrave; nếu c&oacute; những người bạn Nhật Bản, họ cũng sẽ gửi cho bạn những phong kẹo Kitkat trước mỗi kỳ thi với mong ước một b&agrave;i kiểm tra xuất sắc.&nbsp;<br />\r\n<br />\r\nPh&acirc;n loại<br />\r\n- Chocolate (14 thanh)<br />\r\n- Strong Green Tea (12 thanh)<br />\r\n- Dark Choco (13 thanh)<br />\r\n- Ph&uacute;c bồn tử (12 thanh)<br />\r\n- D&acirc;u Daifuku (11 thanh)<br />\r\n- Khoai Lang (11 thanh)<br />\r\n- Hạt dẻ (12 thanh)<br />\r\n- Sakura Sake (12 thanh)<br />\r\n- Ocean Salt (12 thanh)<br />\r\n- Halloween Break (14 thanh)<br />\r\n- Apple Pie vị B&aacute;nh t&aacute;o nướng (12 thanh)<br />\r\n- Strawberry (13 thanh)<br />\r\n- Onsen Manju (12 thanh)<br />\r\n- Shinshu Apple (10 thanh)<br />\r\n- Strawberry Cheesecake (10 thanh)</p>', 19, 100000, 90000, 1, '/storage/uploads/2022/12/29/kika1.jpg', '2022-12-28 19:20:04', '2022-12-29 19:34:06'),
(59, 'Kẹo đậu phộng Hà tĩnh', 'Nhắc đến các món đặc sản Hà Tĩnh thì ai cũng nhớ đến kẹo Cu Đơ. Với lớp đường mật ngọt dẻo quyện với vị beo béo của hạt đậu phộng giòn kẹp với lớp bánh tráng, miếng kẹo mang đến hương vị không thể trộn lẫn vào đâu được. Hôm nay, cùng Điện máy XANH vào bếp làm ngay món ăn vặt dễ làm này nhé!', '<h2>Nguy&ecirc;n liệu l&agrave;m Kẹo cu đơ đậu phộng</h2>\r\n\r\n<p>&nbsp;Đậu phộng&nbsp;<small>300 gr</small>&nbsp;Mật m&iacute;a&nbsp;<small>150 ml</small>&nbsp;Mạch nha nếp&nbsp;<small>100 gr</small>&nbsp;Nước cốt gừng&nbsp;<small>20 ml</small>&nbsp;Gừng&nbsp;<small>2 nh&aacute;nh</small>&nbsp;B&aacute;nh tr&aacute;ng nướng&nbsp;<small>300 gr</small></p>\r\n\r\n<h2>C&aacute;ch chọn đậu phộng ngon, chắc</h2>\r\n\r\n<ul>\r\n	<li>Hạt to tr&ograve;n, bấm m&oacute;n tay v&agrave;o hạt c&oacute; cảm gi&aacute;c chắc, mẩy.</li>\r\n	<li>Vỏ hạt đậu phộng c&oacute; m&agrave;u s&aacute;ng.</li>\r\n	<li>Hạt đều, kh&ocirc;ng bị lẫn c&aacute;c hạt l&eacute;p, hư thối.</li>\r\n	<li>Kh&ocirc;ng chọn hạt đậu đ&atilde; bị mốc, hoặc xuất hiện c&aacute;c m&agrave;u sắc lạ.</li>\r\n</ul>', 19, 40000, 36000, 1, '/storage/uploads/2022/12/29/keodau1.jpg', '2022-12-28 19:21:15', '2022-12-28 19:21:35'),
(60, 'Bánh trứng custas', 'Bánh bông lan thơm mềm, xôm xốp, dai ngon hấp dẫn. Bánh kem trứng Custas hộp 470g (20 cái) với lớp kem trứng béo ngậy bên trong lớp bánh bông lan, tạo nên hương vị độc đáo. Bánh bông lan Custas hấp dẫn, thơm ngon, phù hợp để ăn vặt hay dùng để làm quà.', '<h3><strong>Th&agrave;nh phần dinh dưỡng trong sản phẩm</strong></h3>\r\n\r\n<p>B&aacute;nh kem trứng Custas hộp 470g (20 c&aacute;i) được l&agrave;m từ c&aacute;c th&agrave;nh phần như: Trứng, bột m&igrave;, dầu thực vật, chất b&eacute;o thực vật hydro h&oacute;a ho&agrave;n to&agrave;n, chất giữ ẩm, chất nhũ ho&aacute;, isomalto oligo syrup, bột sữa nguy&ecirc;n kem, bột l&ograve;ng đỏ trứng, cồn thực phẩm, hương thực phẩm,...<br />\r\nNgo&agrave;i ra, sản phẩm đảm bảo cung cấp được c&aacute;c gi&aacute; trị dinh dưỡng như: Năng lượng, chất b&eacute;o, chất đạm, natri,... Theo như th&ocirc;ng tin h&atilde;ng c&ocirc;ng bố th&igrave; trong&nbsp;<strong>mỗi g&oacute;i b&aacute;nh&nbsp;Custas 23.5g</strong>&nbsp;sẽ cung cấp cho cơ thể&nbsp;<strong>khoảng 110 calo</strong>.</p>\r\n\r\n<h3><strong>T&aacute;c dụng của sản phẩm với sức khỏe</strong></h3>\r\n\r\n<p>B&aacute;nh kem trứng Custas hương vị ngon kh&oacute; cưỡng. B&ecirc;n ngo&agrave;i l&agrave; vỏ b&aacute;nh b&ocirc;ng lan mềm xốp, b&ecirc;n trong nh&acirc;n kem trứng b&eacute;o ngậy ngọt ng&agrave;o cực bắt vị, gi&uacute;p k&iacute;ch th&iacute;ch vị gi&aacute;c tốt, b&ecirc;n cạnh đ&oacute; sản phẩm c&ograve;n chứa c&aacute;c chất dinh dưỡng, năng lượng cần thiết cho cơ thể, bạn c&oacute; thể vượt qua cơn đ&oacute;i, hoạt động cả ng&agrave;y d&agrave;i.</p>', 19, 60000, 54000, 1, '/storage/uploads/2022/12/29/banhtr1.jpg', '2022-12-28 19:23:17', '2022-12-29 19:34:27'),
(61, 'Hạt óc chó', 'Là sản phẩm sữa hạt có nguyên liệu hoàn toàn từ tự nhiên với những hạt thiên nhiên kết hợp với sữa tươi sạch tại trang trại TH, sữa hạt TH True Nut cung cấp các vitamin, khoáng chất cho cơ thể. Lốc 4 hộp sữa hạt óc chó TH True Nut 180ml thơm béo của óc chó, giàu dinh dỡng cho cơ thể', '<p>Th&agrave;nh phần của sản phẩm&nbsp;<strong>Hạt &oacute;c ch&oacute; TH True Nut 180ml</strong>&nbsp;chủ yếu bao gồm: Dịch hạt &oacute;c ch&oacute; (60%), dịch quả ch&agrave; l&agrave;, dịch yến mạch, sữa b&ograve; tươi, chất ổn định (E418, 471, 410). Đặc biệt, với mỗi 100ml sữa hạt &oacute;c ch&oacute; TH True Nut, bạn sẽ nạp v&agrave;o cơ thể 42.8 kcal, 4.3g carbodydrate, 1g protein v&agrave; 2.4g chất b&eacute;o, cho bạn nguồn năng lượng đủ đầy trong sinh hoạt hằng ng&agrave;y.</p>\r\n\r\n<h3><strong>T&aacute;c dụng của sản phẩm với sức khỏe</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Kh&ocirc;ng bổ sung đường</strong>: TH true NUT l&agrave; sản phẩm thức uống duy nhất tại Việt Nam v&agrave; ti&ecirc;n phong tr&ecirc;n thế giới d&ugrave;ng quả ch&agrave; l&agrave; để tạo vị ngọt tự nhi&ecirc;n thay cho việc sử dụng đường tinh luyện</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tốt cho tim mạch</strong>: Chứa Acid ellagic chống lại sự t&iacute;ch tụ mỡ b&ecirc;n trong động mạch, đặc biệt dồi d&agrave;o h&agrave;m lượng Omega-3 l&agrave;m giảm vi&ecirc;m v&agrave; ngăn cản sự t&iacute;ch tụ mảng b&aacute;m</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tốt cho n&atilde;o bộ</strong>: Dồi d&agrave;o c&aacute;c chất chống oxi h&oacute;a bảo vệ thần kinh: Polyphenol, Axit b&eacute;o n-3 a-linolenic, Folate, v&agrave; | Vitamin E gi&uacute;p ngăn ngừa tổn thương thần kinh do c&aacute;c gốc tự do</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>L&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a</strong>: C&aacute;c chất chống oxi h&oacute;a như Polyphenol, Flavonoids | trong hạt &oacute;c ch&oacute; ngăn ngừa tổn thương tế b&agrave;o do c&aacute;c gốc tự do, từ đ&oacute; l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a chung cho cả n&atilde;o bộ v&agrave; cơ thể.</p>\r\n	</li>\r\n</ul>', 19, 48000, NULL, 1, '/storage/uploads/2022/12/29/download (6).jfif', '2022-12-28 19:25:03', '2022-12-28 19:25:03'),
(62, 'Bánh nệp nhân kiến', 'Đến với mảnh đất Tuyên Quang, ngoài việc được tham quan những ngôi nhà sàn độc đáo của người dân tộc Tày. Bạn còn có cơ hội thưởng thức một loại bánh rất thú vị có cái tên rất lạ là bánh nếp nhân trứng kiến, một loại bánh trứ danh của đặc sản Tuyên Quang.', '<h4><em><strong>Nguy&ecirc;n liệu l&agrave;m nh&acirc;n b&aacute;nh:</strong></em></h4>\r\n\r\n<p>Nh&acirc;n b&aacute;nh được người d&acirc;n &nbsp;nghĩ ra một c&aacute;ch rất s&aacute;ng tạo, đ&oacute; l&agrave; d&ugrave;ng trứng (ấu tr&ugrave;ng) trong những tổ kiến đen. Kiến đen thường sinh v&agrave; dưỡng trứng v&agrave;o m&ugrave;a xu&acirc;n, những ấu tr&ugrave;ng trứng khi c&ograve;n non tr&ocirc;ng trắng v&agrave;ng v&agrave; b&eacute;o ngậy đ&oacute; l&agrave; một thứ thức ăn rất bổ dưỡng.</p>\r\n\r\n<h4><em><strong>L&agrave;m vỏ b&aacute;nh:</strong></em></h4>\r\n\r\n<p>Vỏ b&aacute;nh th&igrave; đơn giản hơn rất nhiều, gạo nếp được xay bằng cối đ&aacute; cho nhuyễn v&agrave; c&ocirc; th&agrave;nh bột dẻo, c&ugrave;ng với những chiếc l&aacute; ngải b&aacute;nh tẻ xanh non để l&agrave;m &aacute;o bọc cho những chiếc b&aacute;nh.</p>\r\n\r\n<h4><em><strong>Thực hiện l&agrave;m b&aacute;nh:</strong></em></h4>\r\n\r\n<p>Người ta rang trứng kiến qua lửa với h&agrave;nh v&agrave; th&igrave; l&agrave; th&aacute;i nhỏ, việc n&agrave;y cũng phải hết sức kh&eacute;o l&eacute;o v&igrave; nếu qu&aacute; lửa trứng sẽ ch&aacute;y n&aacute;t hết.</p>\r\n\r\n<p>Nh&acirc;n b&aacute;nh được chuẩn bị xong, người ta lấy bột nếp v&ecirc; th&agrave;nh những chiếc b&aacute;nh tr&ograve;n, nhỏ xinh xinh rồi cho nh&acirc;n trứng kiến v&agrave;o bọc k&iacute;n. Những chiếc b&aacute;nh nhỏ như quả trứng g&agrave; được bọc bằng l&aacute; ngải non cho l&ecirc;n nồi hấp c&aacute;ch thủy độ một tuần hương l&agrave; ch&iacute;n.</p>', 19, 90000, NULL, 1, '/storage/uploads/2022/12/29/R (4).jfif', '2022-12-28 19:27:51', '2022-12-29 19:34:18'),
(63, 'Bánh phu thuê', 'Bánh phu thê là một món bánh không chỉ có hương vị thơm ngon, cuốn hút mà còn chứa đựng rất nhiều ý nghĩa đặc biệt. Hôm nay, chuyên mục Mẹo vào bếp của Fresh Food sẽ giúp bạn tìm hiểu bánh phu thê là gì? Đặc sản ở đâu? Có ý nghĩa như thế nào nhé!', '<p>B&aacute;nh phu th&ecirc; l&agrave;m bằng bột g&igrave;?</p>\r\n\r\n<p>Tuy c&oacute; vẻ ngo&agrave;i kh&ocirc;ng qu&aacute; nổi bật nhưng b&aacute;nh phu th&ecirc; được chế biến rất kỳ c&ocirc;ng, từ kh&acirc;u chọn lọc nguy&ecirc;n liệu cho đến khi th&agrave;nh phẩm.</p>\r\n\r\n<p>Bột để l&agrave;m b&aacute;nh phải l&agrave; loại&nbsp;<a href=\"https://www.dienmayxanh.com/vao-bep/bot-gao-la-gi-cach-phan-biet-bot-gao-te-va-bot-gao-nep-05813\" rel=\"noopener\" target=\"_blank\" title=\"bột gạo\">bột gạo</a>&nbsp;được l&agrave;m ra từ những hạt gạo nếp c&aacute;i hoa v&agrave;ng thơm ngon. Một số nơi c&ograve;n trộn th&ecirc;m&nbsp;<a href=\"https://www.dienmayxanh.com/vao-bep/bot-nang-la-gi-bot-mi-la-gi-cach-nhan-biet-hai-loai-bot-01268\" rel=\"noopener\" target=\"_blank\" title=\"bột năng\">bột năng</a>&nbsp;v&agrave;o để tăng độ dẻo dai cho b&aacute;nh.</p>\r\n\r\n<p>C&oacute; bột xong, người ta phải đem phơi cho thật kh&ocirc; trong khoảng 15 ng&agrave;y mới tiến h&agrave;nh l&agrave;m b&aacute;nh. Nh&acirc;n b&aacute;nh được l&agrave;m từ&nbsp;<a href=\"https://www.dienmayxanh.com/vao-bep/dau-xanh-co-tac-dung-gi-nhung-mon-an-dinh-duong-tu-dau-xanh-05017\" rel=\"noopener\" target=\"_blank\" title=\"đậu xanh\">đậu xanh</a>&nbsp;nghiền mịn, trộn với đường v&agrave; cơm dừa.</p>\r\n\r\n<p>Một chiếc b&aacute;nh phu th&ecirc; truyền thống sẽ được g&oacute;i bằng 2 thứ l&aacute;: b&ecirc;n trong l&agrave; l&aacute; chuối v&agrave; b&ecirc;n ngo&agrave;i l&agrave; l&aacute; dừa, sau đ&oacute; đem đi luộc ch&iacute;n. Tuy nhi&ecirc;n, khi được sử dụng để l&agrave;m lễ vật đựng tr&aacute;p, b&aacute;nh sẽ được đặt trong một chiếc hộp giấy m&agrave;u đỏ mang m&agrave;u may mắn.</p>', 19, 10000, 9000, 1, '/storage/uploads/2022/12/29/banh-phu-the.jpg', '2022-12-28 19:29:05', '2022-12-28 19:29:20'),
(64, 'Bánh trung thu', 'Thành lập năm 1993 và cho đến nay, Kinh Đô là thương hiệu dẫn đầu thị phần bánh trung thu tại Việt Nam và xuất khẩu sang thị trường thế giới.  Với nhà máy hiện đại bậc nhất và hệ thống phân phối rộng khắp cùng sản phẩm bánh thơm ngon, đa dạng và không ngừng sáng tạo, Kinh Đô luôn được các doanh nghiệp, xí nghiệp, đoàn thể tin cậy, lựa chọn làm quà tặng cho nhân viên cùng khách hàng của mình.', '<p>B&aacute;nh trăng v&agrave;ng d&agrave;nh ri&ecirc;ng cho ph&acirc;n kh&uacute;c b&aacute;nh trung thu cao cấp với nguy&ecirc;n liệu cao cấp, độc đ&aacute;o m&agrave; bạn kh&ocirc;ng thể t&igrave;m ở đ&acirc;u được như Cua b&aacute;t bửu, T&ocirc;m c&agrave;ng, Hải s&acirc;m, S&ograve; điệp, Thịt sốt BBQ&hellip;.Đặc biệt, mỗi hộp b&aacute;nh trăng v&agrave;ng Kinh Đ&ocirc; lu&ocirc;n được thiết kế tỉ mỉ từng đường n&eacute;t đem đến vẻ đẹp lịch l&atilde;m, đẳng cấp cho hộp qu&agrave; tặng. Gi&aacute; dao động từ 470.000đ &ndash; 4.000.000đ/hộp.</p>\r\n\r\n<p>B&aacute;nh trung thu thường gồm b&aacute;nh nướng v&agrave; b&aacute;nh dẻo l&agrave; những hương vị quen thuộc với hơn 50 vị b&aacute;nh c&ugrave;ng trọng lượng kh&aacute;c nhau đ&aacute;p ứng đa dạng nhu cầu của kh&aacute;ch h&agrave;ng. Bạn c&oacute; thể chọn hộp 2 b&aacute;nh hoặc 4 b&aacute;nh nh&eacute;. Gi&aacute; dao động từ 45.000đ - 65.000đ/b&aacute;nh.</p>', 19, 40000, NULL, 1, '/storage/uploads/2022/12/29/banh-trung-thu-1629769530136945795794-47-0-460-660-crop-1629769537341793257055.jpg', '2022-12-28 19:31:02', '2022-12-28 19:31:02'),
(65, 'Nho xanh sấy khô', 'Nho vàng khô Sun Maid 425g chất lượng 100% nho tự nhiên, không chứa đường, cholesterol và chất bảo quản độc hại, có vị ngọt ngọt, chua chua, hấp dẫn, ngon miệng, người lớn và trẻ em đều thích.', '<p><a href=\"https://www.cqmart.vn/thuc-pham-kho\"><strong>Nho Kh&ocirc; Raisin Hiệu Thaco Hộp Dẹp D&agrave;i 140g</strong></a></p>\r\n\r\n<p>- Thương hiệu : Thaco&nbsp;</p>\r\n\r\n<p>- Khối lượng : 140g</p>\r\n\r\n<p>- Xuất xứ : Ấn độ</p>\r\n\r\n<p>-&nbsp;<em><a href=\"https://www.cqmart.vn/thuc-pham-kho\">Nho kh&ocirc;</a></em>&nbsp;được sấy kh&ocirc; tự nhi&ecirc;n, kh&ocirc;ng qua sấy c&ocirc;ng nghiệp n&ecirc;n vẫn giữ được c&aacute;c vị ngọt tự nhi&ecirc;n của nho. Hấp thu &aacute;nh s&aacute;ng trực tiếp l&agrave;m cho vỏ nho dai dai, c&ograve;n b&ecirc;n trong th&igrave; ngọt ươn ướt. Nho kh&ocirc; 100% tự nhi&ecirc;n, kh&ocirc;ng th&ecirc;m bất kỳ đường hay phụ gia n&agrave;o. Vị lạ, ngọt tự nhi&ecirc;n, kh&ocirc;ng tẩm đường, kh&ocirc;ng ngọt gắt như c&aacute;c loại nho kh&ocirc; kh&aacute;c. Vỏ dai dai, b&ecirc;n trong vẫn c&ograve;n ươn ướt thịt nho v&agrave; mật nho.</p>', 19, 25000, NULL, 1, '/storage/uploads/2022/12/29/keonhoxanh.jpg', '2022-12-28 19:33:08', '2022-12-29 19:33:52');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `thumb`, `created_at`, `updated_at`) VALUES
(66, 'Bánh sắn Mộc Châu', 'Đặc sản Mộc Châu vốn đã nhiều và phong phú, nay lại thêm có món bánh sắn bổ sung vào danh mục ẩm thực nhất định phải thử.', '<p>B&aacute;nh sắn r&aacute;n v&agrave;ng ruộm nh&igrave;n đ&atilde; hấp dẫn, ăn n&oacute;ng c&oacute; độ ngậy, b&eacute;o, bở, ngọt cực kỳ hấp dẫn khiến người ta ăn 1 chiếc lại muốn thưởng thức lu&ocirc;n chiếc thứ 2.<br />\r\n<br />\r\nChị Khu&ecirc;, chủ nh&acirc;n của m&oacute;n b&aacute;nh sắn Mộc Ch&acirc;u hiện đại n&agrave;y,cho biết: qu&ecirc; t&ocirc;i l&agrave; v&ugrave;ng đất bạt ng&agrave;n sắn, lớn l&ecirc;n c&ugrave;ng c&acirc;y sắn, rời xa n&oacute; l&ecirc;n thị trấn Mộc Ch&acirc;u ở, nhưng t&ocirc;i vẫn trăn trở l&agrave;m g&igrave; để n&acirc;ng cao gi&aacute; trị củ sắn qu&ecirc; minh. T&ocirc;i nghĩ v&agrave; thử phối hợp những củ sắn hấp l&ecirc;n vừa bở, dẻo thơm với đặc sản Mộc Ch&acirc;u đặc trưng l&agrave; sữa b&ograve; tươi. Hai m&oacute;n n&agrave;y kết hợp với nhau để l&agrave;m n&ecirc;n chi&ecirc;c b&aacute;nh th&igrave; sẽ rất thơm ngon. Thế l&agrave; t&ocirc;i bắt tay v&agrave;o l&agrave;m: h&ocirc;ng sắn, gi&atilde; nhỏ, trộn sữa v&agrave; r&aacute;n. Th&agrave;nh phẩm r&aacute;n l&ecirc;n ai ăn cũng khen ngon, sau n&agrave;y nghe lời khuy&ecirc;n nhiều người, t&ocirc;i th&ecirc;m nước cốt dừa, dừa nạo v&agrave; th&ecirc;m vừng rắc l&ecirc;n. B&aacute;nh ăn c&agrave;ng đạt hơn.</p>\r\n\r\n<p>Quả đ&uacute;ng như chị Khu&ecirc; n&oacute;i, m&oacute;n b&aacute;nh được đ&ocirc;ng đảo người d&acirc;n địa phương v&agrave; kh&aacute;ch du lịch Mộc Ch&acirc;u phản hồi rất tốt. Chị Thu H&agrave;, kh&aacute;ch du lịch đến từ H&agrave; Nội h&agrave;o hứng chia sẻ: b&aacute;nh thơm ngon, độ ngọt vừa phải, khi chi&ecirc;n l&ecirc;n b&ecirc;n ngo&agrave;i vỏ rất gi&ograve;n, b&ecirc;n trong bở dẻo. C&ograve;n chị Hải Duy&ecirc;n, Nh&agrave; h&agrave;ng Đ&ocirc;ng Hải quyết định thay thế m&oacute;n b&aacute;nh sắn cho m&oacute;n khoai lang k&eacute;n trước nay m&igrave;nh vẫn l&agrave;m cho kh&aacute;ch. Chị Kim Oanh, nh&agrave; h&agrave;ng Hoa Mộc Ch&acirc;u, anh Ho&agrave;ng Duy, homestay N&uacute;i Mộc chia sẻ, kh&aacute;ch ăn xong cả đo&agrave;n to&agrave;n đặt lu&ocirc;n mỗi người 1 hộp mang về.<br />\r\n<br />\r\nM&oacute;n b&aacute;nh sắn Mộc Ch&acirc;u đơn giản, mộc mạc l&agrave;m từ thứ củ d&acirc;n d&atilde; ấy đ&atilde; v&agrave;o c&aacute;c nh&agrave; h&agrave;ng, đ&atilde; th&agrave;nh m&oacute;n qu&agrave; tặng đặc sản Mộc Ch&acirc;u để du kh&aacute;ch mang về tặng người th&acirc;n, hoặc để trữ tủ đ&aacute; ăn dần.</p>', 19, 9000, NULL, 1, '/storage/uploads/2022/12/29/banh-san-moc-chau-copy.jpg', '2022-12-28 19:34:26', '2022-12-28 19:34:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(4, 'Thực phẩm sạch', '#', '/storage/uploads/2022/12/28/thuc-pham-sach-vita-banner1.jpg', 1, 1, '2022-11-08 19:16:29', '2022-12-28 06:02:19'),
(5, 'Hữu cơ', '#', '/storage/uploads/2022/12/28/slider_1.webp', 1, 1, '2022-11-08 19:16:40', '2022-12-28 06:01:48'),
(6, 'Nhập khẩu', '#', '/storage/uploads/2022/12/28/slider_2.webp', 1, 1, '2022-11-08 19:16:53', '2022-12-28 06:01:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `userType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR',
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `userType`, `provider_id`, `avatar`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$zN/rwcB7/XXwJSr0nc39aebHXhT8hl0q/PvvuBK0sA518JJILO4wm', NULL, '2022-11-03 12:00:01', '2022-12-29 20:24:30', 'ADM', NULL, NULL),
(2, 'Nguyễn Quang Huy', 'huylmht10@gmail.com', NULL, '$2y$10$eOKj6/zC5Z43U21us5hdwOr8hQxzDJAk3/PIJYMozRyayLiqpE1GC', NULL, '2022-12-27 21:24:28', '2022-12-28 01:04:35', 'USR', NULL, NULL),
(3, 'Pham Van Thien', 'thiendev@gmail.com', NULL, '$2y$10$a29Ku58TSfLVZrm61zOiFu5k..pqvUj5IlrKfpcD3Wx88l1erGKbu', NULL, '2022-12-27 21:52:13', '2022-12-27 21:52:13', 'USR', NULL, NULL),
(4, 'Bùi văn sỹ', 'bvsy', NULL, '$2y$10$LKhTzig29ccuALNPrjTEpOFhfAzEkMjHh2VKX2vfPRcL2kxelEdiK', NULL, '2022-12-28 04:28:11', '2022-12-28 04:28:11', 'USR', NULL, NULL),
(5, 'Quang Huy', 'huylmht7@gmail.com', NULL, NULL, NULL, '2022-12-30 03:33:56', '2022-12-30 03:33:56', 'USR', '1827828777596375', 'https://graph.facebook.com/v3.3/1827828777596375/picture?type=normal');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
