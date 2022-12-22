-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2022 lúc 04:57 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `foodyweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cateid`
--

CREATE TABLE `cateid` (
  `id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cateid`
--

INSERT INTO `cateid` (`id`, `name`) VALUES
('1', 'Food'),
('2', 'Drink'),
('3', 'Cake'),
('4', 'Fruit');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `idOrder` int(5) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalAll` int(10) NOT NULL,
  `detailOrder` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUser` int(5) NOT NULL,
  `fullName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`idOrder`, `status`, `totalAll`, `detailOrder`, `idUser`, `fullName`, `address`, `phone`, `note`) VALUES
(8, 'Chờ xác nhận', 20000, 'serial: 1, Cơm Gà Xối Mỡ 142 - Ba Đình, 20000, quantity: 1\n', 10, 'thu', '42/7', '0931021845', 'canh day du'),
(9, 'Chờ xác nhận', 68000, 'serial: 1, Cơm Gà Xối Mỡ 142 - Ba Đình, 20000, quantity: 1\nserial: 2, Bún Chả Giò - Quán Chay Sala, 48000, quantity: 1\n', 10, 'thu', '42/7', '0931021845', ''),
(10, 'Chờ xác nhận', 20000, 'serial: 1, Cơm Gà Xối Mỡ 142 - Ba Đình, 20000, quantity: 1\n', 10, 'thu', '42/7', '0931021845', 'abc'),
(11, 'Chờ xác nhận', 20000, 'serial: 1, Royaltea - Trà Sữa Hồng Kông - Cầu Đất, 20000, quantity: 1\n', 10, 'thu', '42/7', '0931021845', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(200) DEFAULT NULL,
  `descreption` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sell_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `address`, `time`, `price`, `descreption`, `image`, `cate_id`, `sell_id`) VALUES
(1, 'Cơm Gà Xối Mỡ 142 - Ba Đình', '38 - 39 - 41 Mã Mây, Hoàn Kiếm, Hà Nội', '09:00 - 22:00', 20000, 'h', 'img/food/comga.jpg', '1', 1),
(2, 'Royaltea - Trà Sữa Hồng Kông - Cầu Đất', '23 Cầu Đất, P. Chương Dương Độ, Hoàn Kiếm, Hà Nội', '11:00 - 23:00', 20000, '', 'img/drink/trasuahongkong.jpg', '2', 0),
(3, 'Italian Pizza - Khuất Duy Tiến', '15 Khuất Duy Tiến, P. Thanh Xuân Bắc, Thanh Xuân, ', '09:00 - 20:30', 45000, '', 'img/food/pizza.jpg', '1', 0),
(4, 'Cơm sườn ốp la - Cơm Tấm Huyền - Đinh Tiên Hoàng', 'Hẻm 95 Đinh Tiên Hoàng, P. 3, Bình Thạnh, TP. HCM', '00:00 - 03:00', 40000, '', 'img/food/comsuon.jpg', '1', 0),
(5, 'Cơm Gà Xối Mỡ 142 - Ba Đình', '142 Ba Đình, P. 10, Quận 8, TP. HCM', '09:00 - 22:00', 20000, '', 'img/food/comga.jpg', '1', 0),
(6, 'Trà Sữa Gong Cha - 貢茶 - An Dương Vương', '498 An Dương Vương, P. 4, Quận 5, TP. HCM', '09:30 - 21:30', 40000, '', 'img/drink/trasuagongcha.jpg', '2', 1),
(7, 'Là Việt Coffee Saigon - Bà Huyện Thanh Quan', '16 Bà Huyện Thanh Quan, P. 6,  Quận 3, TP. HCM', '07:00 - 22:00', 35000, '', 'img/drink/cafe.jpg', '2', 0),
(8, 'Nước Ép - Fruit Station - Đinh Tiên Hoàng', '12Bis Đinh Tiên Hoàng, P. Đa Kao,  Quận 1, TP. HCM', '09:00 - 21:00', 45000, '', 'img/drink/nuocep.jpg', '2', 0),
(9, 'Cơm Tấm Kiều Giang - Trần Quang Khải', '192E Trần Quang Khải, Quận 1, TP. HCM', '07:30 - 20:30', 28000, 'Combo Đầy đủ\r\nBao gồm 1 Cơm Sườn Bì Chả + 1 Canh Tự Chọn + 1 Nước Sâm Lạnh Khách Hàng Có Yêu Cầu Khá', 'img/dochay/comtam.jpg', '3', 0),
(10, 'Bánh Bao - Quán Chay Sala', '71C Nguyễn Thị Minh Khai, P. Bến Thành, Quận 1, TP', '06:00 - 20:59', 17000, '', 'img/dochay/banhbao.jpg', '3', 0),
(11, 'Bún Chả Giò - Quán Chay Sala', '71C Nguyễn Thị Minh Khai, P. Bến Thành, Quận 1, TP', '06:00 - 20:59', 48000, '', 'img/dochay/bunchagio.jpg', '3', 0),
(12, 'Bánh Canh - Quán Chay Sala', '71C Nguyễn Thị Minh Khai, P. Bến Thành, Quận 1, TP', '06:00 - 20:59', 50000, '', 'img/dochay/banhcanh.jpg', '3', 1),
(13, 'Bánh Kem - TOUS les JOURS - Hai Bà Trưng', '180 Hai Bà Trưng, Quận 1, TP. HCM\r\n', '07:30 - 21:00', 30000, '', 'img/banhkem/banhkem1.jpg', '4', 1),
(14, 'Bánh Sừng Trâu - TOUS les JOURS - Hai Bà Trưng', '180 Hai Bà Trưng, Quận 1, TP. HCM\r\n', '07:30 - 21:00', 33000, 'Bánh croissant với nhân kem phô mai vị mâm xôi.', 'img/banhkem/banhsungtrau.jpg', '4', 0),
(15, 'Bánh chiên kem - TOUS les JOURS - Hai Bà Trưng', '180 Hai Bà Trưng, Quận 1, TP. HCM\r\n', '07:30 - 21:00', 15000, '', 'img/banhkem/chienkem.jpg', '4', 1),
(16, 'Bánh mì chà bông - TOUS les JOURS - Hai Bà Trưng', '180 Hai Bà Trưng, Quận 1, TP. HCM\r\n', '07:30 - 21:00', 40000, '', 'img/banhkem/banhmichabong.jpg', '4', 0),
(17, 'Bánh Mì Huynh Hoa - Bánh Mì Pate', '26 Lê Thị Riêng, P. Bến Thành, Quận 1, TP. HCM\r\n', '10:50 - 22:21', 38000, '', 'img/food/banhmi.jpg', '1', 0),
(18, 'Combo Salad Dzui Dzẻ - McDonald\'s Đa Kao', '2 - 6 Bis Điện Biên Phủ, Quận 1, TP. HCM\r\n', '00:00 - 23:59', 99000, 'Gồm 2 Miếng Gà Rán Cay hoặc Không Cay, 1 Xà Lách Lắc, 1 Khoai Tây Nhỏ, 1 Nước Nhỏ', 'img/food/mcdonal.jpg', '1', 1),
(19, 'Bánh Tráng Chấm Cô Gánh - Chung Cư A4 Phan Xích Lo', 'Lô D001 Chung Cư A4 Phan xích Long, P. 7, Phú Nhuậ', '10:00 - 21:00', 20000, '', 'img/food/banhtrang.jpg', '1', 0),
(20, 'Lẩu Cá Thác Lác Tươi Đặc Biệt - Phan Phú Tiên', '28 Phan Phú Tiên, P. 10,  Quận 5, TP. HCM', '09:00 - 22:00', 99000, '', 'img/food/lauca.jpg', '1', 0),
(21, 'Trà Thanh Đào - Highlands Coffee - Vincom Quang Tr', 'Tầng Hầm 1, B1-K2 Vincom Gò Vấp, 190 Quang Trung, ', '07:00 - 21:00', 45000, 'Sự hài hòa giữa vị trà cao cấp, những miếng đào ngọt giòn thêm chút hương thanh mát của sả, thoả mãn', 'img/drink/trathanhdao.jpg', '2', 0),
(22, 'Kem sữa chua trái cây trân châu', '60 Sương Nguyệt Ánh, P. Bến Thành, Quận 1, TP. HCM', '10:00 - 23:00', 45000, 'Da-ua trân châu với trái cây tươi', 'img/drink/daua.jpg', '2', 0),
(23, 'Trà thảo mộc Hội An', '436 Nguyễn Thị Thập, P. Tân Quy, Quận 7, TP. HCM\r\n', '07:00 - 21:00', 30000, '', 'img/drink/trathaomoc.jpg', '2', 0),
(24, 'Hazelnut coffee', '45 Nguyễn Oanh, P. 10, Gò Vấp, TP. HCM\r\n', '00:00 - 23:59', 55000, 'Cà phê hạt dẻ', 'img/drink/hazelnut.jpg', '2', 0),
(25, 'Soup bí đỏ - bánh mì', '60/2 Vân Côi, P. 7, Tân Bình, TP. HCM\r\n', '08:00 - 18:00', 65000, '', 'img/dochay/supbido.jpg', '3', 0),
(26, 'Gỏi nấm sao nhật', '60/2 Vân Côi, P. 7, Tân Bình, TP. HCM\r\n', '08:00 - 18:00', 95000, '', 'img/dochay/goinam.jpg', '3', 0),
(27, 'Cơm thập cẩm Muối sả', '160 Nguyễn Phúc Chu, P. 15, Tân Bình, TP. HCM\r\n', '07:00 - 21:00', 35000, 'Sườn nướng chay + thịt kho tiêu chay + cá cơm giòn chay + Muối sả Huế', 'img/dochay/comthapcam.jpg', '3', 1),
(29, 'Gỏi Cuốn', '160 Nguyễn Phúc Chu, P. 15, Tân Bình, TP. HCM\r\n', '07:30 - 21:00', 9000, '', 'img/dochay/goicuon.jpg', '3', 0),
(30, 'Bánh Mì Hoa Cúc', '148 Nguyễn Gia Trí (Đường D2), P. 25, Bình Thạnh, ', '07:30 - 21:00', 99000, 'Trọng lượng: 260gr/ bánh\r\n', 'img/banhkem/banhmihoacuc.jpg', '4', 0),
(31, 'Bánh Kem bento', '70 Võ Oanh ( Đường D3), P. 25, Bình Thạnh, TP. HCM', '08:30 - 20:00', 120000, '', 'img/banhkem/bento.jpg', '4', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sellis` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `sellis`, `admin`) VALUES
(1, 'hoangtu', '1004', 0, 0),
(2, 'minhphu', '1305', 1, 1),
(3, 'khanhvan', '0608', 1, 0),
(10, 'anhthu', '123', 0, 1),
(12, 'bamboo', 'q', 0, 0),
(13, 'dsdda', 'dada', 0, 0),
(14, '123', '123', 0, 0),
(15, '134', '134', 0, 0),
(16, 'thu1', '123', 0, 0),
(17, 'thu2', '123', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cateid`
--
ALTER TABLE `cateid`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`idOrder`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pro_link` (`cate_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `idOrder` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `pro_link` FOREIGN KEY (`cate_id`) REFERENCES `cateid` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
