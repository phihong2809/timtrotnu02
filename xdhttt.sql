-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2021 lúc 03:54 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xdhttt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `id` int(11) NOT NULL,
  `phanquyen` int(11) NOT NULL,
  `userid_created` int(11) NOT NULL,
  `userid_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phanhoi`
--

CREATE TABLE `tbl_phanhoi` (
  `id` int(11) NOT NULL,
  `nguoibaocao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaybaocao` datetime NOT NULL,
  `maphong` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tk_user`
--

CREATE TABLE `tk_user` (
  `id` int(11) NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `quequan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `photo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tk_user`
--

INSERT INTO `tk_user` (`id`, `hoten`, `ngaysinh`, `quequan`, `email`, `matkhau`, `sdt`, `photo`) VALUES
(1, 'Nguyễn Văn A', '2000-03-03', 'Ninh Bình', 'nva@gmail.com', '123123', '012345678', 0),
(2, 'Nguyễn Văn B', '2000-04-04', 'Thái Nguyên', 'nvb@gmail.com', '123123', '0123456789', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tt_phong`
--

CREATE TABLE `tt_phong` (
  `id` int(11) NOT NULL,
  `HOTEN_CHUPHONG` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SDT_CHUPHONG` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL_CHUPHONG` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `GIA_PHONG` float NOT NULL,
  `DIENTICH` float NOT NULL,
  `GIADIEN` float NOT NULL,
  `GIANUOC` float NOT NULL,
  `TINH_TP` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `QUAN_HUYEN` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `XA_PHUONG` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `SONHA` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ANH1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ANH2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ANH3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MOTA` varchar(3000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tt_phong`
--

INSERT INTO `tt_phong` (`id`, `HOTEN_CHUPHONG`, `SDT_CHUPHONG`, `EMAIL_CHUPHONG`, `GIA_PHONG`, `DIENTICH`, `GIADIEN`, `GIANUOC`, `TINH_TP`, `QUAN_HUYEN`, `XA_PHUONG`, `SONHA`, `ANH1`, `ANH2`, `ANH3`, `MOTA`) VALUES
(1, 'HOÀNG ĐỨC CẢNH', '0355400799', 'HOANGDUCCANH@GMAIL.COM', 5000000, 10, 5000, 10000, 'NINH BÌNH', 'HOA LƯ', 'NINH AN', 'XÓM ĐÌNH, THÔN ĐÔNG TRANG', '0', '0', '0', 'PHÒNG CÓ MÁY GIẶT, ĐIỀU HÒA '),
(2, 'Nguyễn Chí Thanh', '0355400788', 'nguyenchithanh@gmail.com', 10000000, 20, 3000, 10000, 'Thái Nguyên', 'Thái Nguyên', 'Tân Thịnh', 'Ngõ Việt Bắc đường Z115', '0', '0', '0', 'Có wifi, nóng lạnh, điều hòa'),
(3, 'Nguyễn Phương Thảo', '0355400777', 'nguyenphuongthao@gmail.com', 3000000, 30, 5000, 10000, 'Quảng Ninh', 'Hạ Long', 'Khum biết', 'Chưa biết', '0', '0', '0', 'Phòng thường'),
(4, '4894', '4389', '892', 839, 792, 28, 82, '82', '7', '82', '82', 'uploads/9-15973701127031695825269.jpg', '', '', 'dbv'),
(8, 'Phạm Văn Vũ', '0355411022', 'pvv@gmail.com', 5000000, 100, 2000, 5000, 'Thái Nguyên', 'tp Thái Nguyên', 'Quyết Thắng', 'ktx 58 A4', 'uploads/248686372_891228875086072_2429800132724372672_n.jpg', 'uploads/247678401_1488567168168267_9065891997615468848_n.jpg', 'uploads/249813524_631360101571708_4737147875772603789_n.jpg', ''),
(11, '', '', '', 0, 0, 0, 0, '', '', '', '', 'uploads/', 'uploads/', 'uploads/', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_phanhoi`
--
ALTER TABLE `tbl_phanhoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tk_user`
--
ALTER TABLE `tk_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tt_phong`
--
ALTER TABLE `tt_phong`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_phanhoi`
--
ALTER TABLE `tbl_phanhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tk_user`
--
ALTER TABLE `tk_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tt_phong`
--
ALTER TABLE `tt_phong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_phanhoi`
--
ALTER TABLE `tbl_phanhoi`
  ADD CONSTRAINT `tbl_phanhoi_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tk_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
