-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2019 lúc 07:49 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tin_tuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `idTinTuc` int(10) UNSIGNED NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `idUser`, `idTinTuc`, `NoiDung`, `created_at`, `updated_at`) VALUES
(1, 10, 93, 'Bài viết này được', '2016-06-09 10:20:45', NULL),
(2, 8, 19, 'Hay quá trời', '2016-06-09 10:20:45', NULL),
(3, 2, 22, 'Tôi rất thích bài viết này', '2016-06-09 10:20:45', NULL),
(4, 2, 41, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:45', NULL),
(5, 6, 50, 'Tôi rất thích bài viết này', '2016-06-09 10:20:45', NULL),
(6, 9, 79, 'Bài viết này được', '2016-06-09 10:20:45', NULL),
(7, 5, 94, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(8, 8, 99, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(9, 7, 22, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(10, 5, 48, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:46', NULL),
(11, 4, 69, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:46', NULL),
(12, 5, 87, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(13, 6, 72, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:46', NULL),
(14, 5, 6, 'Tôi rất thích bài viết này', '2016-06-09 10:20:46', NULL),
(15, 7, 88, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(16, 9, 58, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(17, 1, 19, 'Không thích bài viết này', '2016-06-09 10:20:46', NULL),
(18, 4, 80, 'Tôi rất thích bài viết này', '2016-06-09 10:20:46', NULL),
(19, 10, 40, 'Bài viết này tạm ổn', '2016-06-09 10:20:46', NULL),
(20, 2, 17, 'Bài viết rất hay', '2016-06-09 10:20:46', NULL),
(21, 5, 25, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:46', NULL),
(22, 1, 48, 'Không thích bài viết này', '2016-06-09 10:20:46', NULL),
(23, 4, 68, 'Hay quá trời', '2016-06-09 10:20:46', NULL),
(24, 10, 14, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:46', NULL),
(25, 4, 8, 'Bài viết này tạm ổn', '2016-06-09 10:20:46', NULL),
(26, 10, 39, 'Tôi rất thích bài viết này', '2016-06-09 10:20:46', NULL),
(27, 4, 61, 'Bài viết này được', '2016-06-09 10:20:47', NULL),
(28, 6, 55, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:47', NULL),
(29, 3, 34, 'Hay quá trời', '2016-06-09 10:20:47', NULL),
(30, 10, 30, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:47', NULL),
(31, 10, 59, 'Bài viết này được', '2016-06-09 10:20:47', NULL),
(32, 5, 91, 'Hay quá trời', '2016-06-09 10:20:47', NULL),
(33, 9, 16, 'Bài viết này tạm ổn', '2016-06-09 10:20:47', NULL),
(34, 5, 50, 'Tôi rất thích bài viết này', '2016-06-09 10:20:47', NULL),
(35, 8, 55, 'Bài viết rất hay', '2016-06-09 10:20:47', NULL),
(36, 9, 27, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:47', NULL),
(37, 4, 22, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:47', NULL),
(38, 4, 77, 'Bài viết này được', '2016-06-09 10:20:47', NULL),
(39, 7, 88, 'Bài viết rất hay', '2016-06-09 10:20:47', NULL),
(40, 5, 14, 'Hay quá trời', '2016-06-09 10:20:47', NULL),
(41, 7, 67, 'Tôi rất thích bài viết này', '2016-06-09 10:20:47', NULL),
(42, 10, 38, 'Tôi sẽ học thèo bài viết này', '2016-06-09 10:20:47', NULL),
(43, 3, 49, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:47', NULL),
(44, 4, 57, 'Bài viết rất hay', '2016-06-09 10:20:47', NULL),
(45, 1, 17, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:47', NULL),
(46, 5, 13, 'Tôi sẽ học thèo bài viết này', '2016-06-09 10:20:47', NULL),
(47, 7, 78, 'Bài viết này được', '2016-06-09 10:20:47', NULL),
(48, 3, 9, 'Không thích bài viết này', '2016-06-09 10:20:48', NULL),
(49, 2, 86, 'Bài viết rất hay', '2016-06-09 10:20:48', NULL),
(50, 10, 29, 'Hay quá trời', '2016-06-09 10:20:48', NULL),
(51, 3, 67, 'Tôi sẽ học thèo bài viết này', '2016-06-09 10:20:48', NULL),
(52, 3, 71, 'Bài viết này tạm ổn', '2016-06-09 10:20:48', NULL),
(53, 5, 41, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:48', NULL),
(54, 5, 65, 'Hay quá trời', '2016-06-09 10:20:48', NULL),
(55, 3, 55, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:48', NULL),
(56, 1, 99, 'Tôi rất thích bài viết này', '2016-06-09 10:20:48', NULL),
(57, 6, 98, 'Hay quá trời', '2016-06-09 10:20:48', NULL),
(58, 5, 47, 'Bài viết rất hay', '2016-06-09 10:20:48', NULL),
(59, 10, 34, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:48', NULL),
(60, 9, 94, 'Không thích bài viết này', '2016-06-09 10:20:48', NULL),
(61, 9, 22, 'Bài viết này được', '2016-06-09 10:20:48', NULL),
(62, 9, 56, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:48', NULL),
(63, 7, 44, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(64, 3, 10, 'Hay quá trời', '2016-06-09 10:20:49', NULL),
(65, 2, 28, 'Bài viết này tạm ổn', '2016-06-09 10:20:49', NULL),
(66, 10, 18, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(67, 7, 75, 'Hay quá trời', '2016-06-09 10:20:49', NULL),
(68, 4, 50, 'Bài viết rất hay', '2016-06-09 10:20:49', NULL),
(69, 6, 82, 'Bài viết này tạm ổn', '2016-06-09 10:20:49', NULL),
(70, 7, 12, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:49', NULL),
(71, 2, 69, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(72, 10, 68, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(73, 1, 1, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:49', NULL),
(74, 5, 66, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(75, 6, 16, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:49', NULL),
(76, 1, 65, 'Tôi rất thích bài viết này', '2016-06-09 10:20:49', NULL),
(77, 9, 48, 'Bài viết này được', '2016-06-09 10:20:49', NULL),
(78, 3, 58, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:49', NULL),
(79, 10, 56, 'Bài viết rất hay', '2016-06-09 10:20:49', NULL),
(80, 5, 96, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(81, 7, 41, 'Bài viết này được', '2016-06-09 10:20:49', NULL),
(82, 4, 16, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:49', NULL),
(83, 10, 80, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:49', NULL),
(84, 2, 64, 'Hay quá trời', '2016-06-09 10:20:50', NULL),
(85, 9, 45, 'Tôi sẽ học thèo bài viết này', '2016-06-09 10:20:50', NULL),
(86, 8, 19, 'Bài viết này được', '2016-06-09 10:20:50', NULL),
(87, 5, 30, 'Không thích bài viết này', '2016-06-09 10:20:50', NULL),
(88, 1, 21, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:50', NULL),
(89, 2, 75, 'Không thích bài viết này', '2016-06-09 10:20:50', NULL),
(90, 9, 94, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:50', NULL),
(91, 10, 94, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:50', NULL),
(92, 1, 71, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:50', NULL),
(93, 9, 97, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:50', NULL),
(94, 6, 19, 'Bài viết này tạm ổn', '2016-06-09 10:20:50', NULL),
(95, 7, 15, 'Hay quá trời', '2016-06-09 10:20:50', NULL),
(96, 9, 66, 'Hay quá trời', '2016-06-09 10:20:50', NULL),
(97, 8, 27, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:50', NULL),
(98, 3, 24, 'Hay quá trời', '2016-06-09 10:20:50', NULL),
(99, 1, 83, 'Bài viết rất hay', '2016-06-09 10:20:50', NULL),
(100, 8, 11, 'Tôi rất thích bài viết này', '2016-06-09 10:20:50', NULL),
(101, 1, 1, 'Được', '2016-06-16 07:25:59', '2016-06-16 07:25:59'),
(102, 1, 1, 'Chán muốn chết', '2016-06-16 07:32:43', '2016-06-16 07:32:43'),
(103, 1, 403, 'a', '2016-06-18 07:02:59', '2016-06-18 07:02:59'),
(104, 12, 1, 'fff', NULL, NULL),
(105, 12, 1, 'fff', NULL, NULL),
(106, 12, 2, 'gggg', NULL, NULL),
(107, 12, 2, 'gggg', NULL, NULL),
(108, 12, 2, 'xxxxxxxxxxxxxxxx', NULL, NULL),
(109, 12, 2, 'ccccccccccccccc', NULL, NULL),
(110, 12, 2, 'ccccccccccccc', NULL, NULL),
(111, 17, 161, 'ok ok', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `id` int(10) UNSIGNED NOT NULL,
  `idTheLoai` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitin`
--

INSERT INTO `loaitin` (`id`, `idTheLoai`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 1, 'Giáo Dục', 'Giao-Duc', NULL, NULL),
(2, 1, 'Nhịp Điệu Trẻ', 'Nhip-Dieu-Tre', NULL, NULL),
(3, 1, 'Du Lịch', 'Du-Lich', NULL, NULL),
(4, 1, 'Du Học', 'Du-Hoc', NULL, NULL),
(5, 2, 'Cuộc Sống Đó Đây', 'Cuoc-Song-Do-Day', NULL, NULL),
(6, 2, 'Ảnh', 'Anh', NULL, NULL),
(7, 2, 'Người Việt 5 Châu', 'Nguoi-Viet-5-Chau', NULL, NULL),
(8, 2, 'Phân Tích', 'Phan-Tich', NULL, NULL),
(9, 3, 'Chứng Khoán', 'Chung-Khoan', NULL, NULL),
(10, 3, 'Bất Động Sản', 'Bat-Dong-San', NULL, NULL),
(11, 3, 'Doanh Nhân', 'Doanh-Nhan', NULL, NULL),
(12, 3, 'Quốc Tế', 'Quoc-Te', NULL, NULL),
(13, 3, 'Mua Sắm', 'Mua-Sam', NULL, NULL),
(14, 3, 'Doanh Nghiệp Viết', 'Doanh-Nghiep-Viet', NULL, NULL),
(15, 4, 'Hoa Hậu', 'Hoa-Hau', NULL, NULL),
(16, 4, 'Nghệ Sỹ', 'Nghe-Sy', NULL, NULL),
(17, 4, 'Âm Nhạc', 'Am-Nhac', NULL, NULL),
(18, 4, 'Thời Trang', 'Thoi-Trang', NULL, NULL),
(19, 4, 'Điện Ảnh', 'Dien-Anh', NULL, NULL),
(20, 4, 'Mỹ Thuật', 'My-Thuat', NULL, NULL),
(21, 5, 'Bóng Đá', 'Bong-Da', NULL, NULL),
(22, 5, 'Tennis', 'Tennis', NULL, NULL),
(23, 5, 'Chân Dung', 'Chan-Dung', NULL, NULL),
(24, 5, 'Ảnh', 'Anh-TT', NULL, NULL),
(25, 6, 'Hình Sự', 'Hinh-Su', NULL, NULL),
(27, 1, 'Sennehi 12', '', '2016-06-11 01:43:27', '2016-06-11 01:43:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 'Xã Hội', 'Xa-Hoi', NULL, NULL),
(2, 'Thế Giới', 'The-Gioi', NULL, NULL),
(3, 'Kinh Doanh', 'Kinh-Doanh', NULL, NULL),
(4, 'Văn Hoá', 'Van-Hoa', NULL, NULL),
(5, 'Thể Thao', 'The-Thao', NULL, NULL),
(6, 'Pháp Luật', 'Phap-Luat', NULL, NULL),
(7, 'Đời Sống', 'Doi-Song', NULL, NULL),
(8, 'Khoa Học', 'Khoa-Hoc', NULL, NULL),
(9, 'Vi Tính', 'Vi-Tinh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Ngọc Hương', 'huongnguyen08.cv@gmail.com', '$2y$10$CEdbdsSMU9Nv.6yjdRMEtOhR0kdIiOBWtNR2Bup9upjueOPbcsM9m', '2016-06-09 03:05:09', '2016-06-18 07:06:27'),
(2, 'Hương Hương', 'huongnguyen08@gmail.com', '$2y$10$VSYdTPHgu6iQ0NBouPmQTe2nxENOouLMEcjQiG54cFNlUbEInurxC', '2016-06-09 03:05:09', NULL),
(3, 'User_3', 'user_3@mymail.com', '$2y$10$DES3NL8tozlU99dvO9o4lOfYyYcaM9n86gJcJV5.fz2G8b6qLa6Gq', '2016-06-09 03:05:09', NULL),
(4, 'User_4', 'user_4@mymail.com', '$2y$10$xqfx9motmrCAEuEjCyQroOo/eFqum1hPhgwnz5LSLkhdyGHvf6l8O', '2016-06-09 03:05:10', NULL),
(5, 'User_5', 'user_5@mymail.com', '$2y$10$rTviORV94uWv/KcNK7s0UeGwlQ2DSN5UGSOAzMkZ6sGgfr9nE2fSq', '2016-06-09 03:05:10', NULL),
(6, 'User_6', 'user_6@mymail.com', '$2y$10$AwcqOIqwnPM9ZkYE1e6x.OkQAjY5V7H.WP73VVod/2mGNp1Y0zWUy', '2016-06-09 03:05:10', NULL),
(7, 'User_7', 'user_7@mymail.com', '$2y$10$nSJhdDCm7zfF5uZpkhEuQufsLAqc1OZZnTME4AcTIx/2PsnnbrpZ6', '2016-06-09 03:05:10', NULL),
(8, 'User_8', 'user_8@mymail.com', '$2y$10$s1ik567.aaB/ZbykP5zBR.20Ps5Qd6EPkhHFGdSQwERYmX1G/CnEK', '2016-06-09 03:05:10', NULL),
(9, 'User_9', 'user_9@mymail.com', '$2y$10$/GQdzMM1G0CsrEF7RnQy4eHCkO2SqTNbE6QyRXCBtOuvyqIaFoMnm', '2016-06-09 03:05:10', NULL),
(10, 'User_10', 'user_10@mymail.com', '$2y$10$gV.fAHxmpvB57JXKIEuUYumcZZhbCqtM8MpXDZOfDFBTl6X0WAHiK', '2016-06-09 03:05:10', NULL),
(11, 'h', 'huongnguyenak96@gmail.comhh', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL),
(12, 'Hương Hương', 'huongnguyenak96@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL),
(14, 'H', 'huongnguyenak96@gmail.comhhHHHHHHHHHHHHHHHHHHHHH', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL),
(15, 'hhh', 'huongnguyenak96@gmail.comhhh', 'c4ca4238a0b923820dcc509a6f75849b', '2017-04-06 08:20:16', NULL),
(17, 'Quách Duy Hưng', 'hyp12345698@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-06-25 09:04:34', NULL),
(20, 'Lenovo', 'nguyenvana@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2019-06-25 09:13:20', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_iduser_foreign` (`idUser`),
  ADD KEY `comment_idtintuc_foreign` (`idTinTuc`);

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaitin_idtheloai_foreign` (`idTheLoai`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
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
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_idtintuc_foreign` FOREIGN KEY (`idTinTuc`) REFERENCES `tintuc` (`id`),
  ADD CONSTRAINT `comment_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD CONSTRAINT `loaitin_idtheloai_foreign` FOREIGN KEY (`idTheLoai`) REFERENCES `theloai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
