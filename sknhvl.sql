-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 09:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sknhvl`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(8, 'Tin tức'),
(9, 'Tin nổi bật'),
(10, 'Tin tuyển dụng'),
(11, 'Đơn vị đồng hành'),
(12, 'Sự kiện việc làm');

-- --------------------------------------------------------

--
-- Table structure for table `gianhang`
--

CREATE TABLE `gianhang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gianhang`
--

INSERT INTO `gianhang` (`id`, `name`) VALUES
(1, 'Gian hàng số 1'),
(2, 'Gian hàng số 2'),
(3, 'Gian hàng số 3'),
(4, 'Gian hàng số 4');

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`id`, `name`) VALUES
(1, ' CNTT&TT'),
(2, 'Kinh Te');

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hinh` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `name`, `hinh`, `detail`, `mota`) VALUES
(14, '', 'maxresdefault.jpg', '', ''),
(16, 'Thư ngỏ', 'thu ngo doanh nghiep 31.jpg', '', ''),
(20, 'Sơ đồ gian hàng', 'SO DO MAT BANG 2-01.png', '', 'Sơ đồ bố trí gian hàng'),
(21, 'Hoạt động trong ngày hội', 'Bia_Profile_NHVL-13.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `iddm` int(255) DEFAULT NULL,
  `detail` longblob NOT NULL,
  `ngaydang` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `name`, `img`, `mota`, `iddm`, `detail`, `ngaydang`) VALUES
(44, 'Ngày hội việc lam can tho', '', 'đ', 12, 0x63616e2074686f, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_formdn`
--

CREATE TABLE `tbl_formdn` (
  `id` int(11) NOT NULL,
  `iduser` int(255) NOT NULL,
  `tendv` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `tendk` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `ndtd` varchar(255) NOT NULL,
  `ngaydk` varchar(255) NOT NULL,
  `tenws` varchar(255) NOT NULL,
  `chiphi` varchar(255) NOT NULL DEFAULT '3 triệu đồng',
  `idtrangthai` int(11) NOT NULL DEFAULT 1,
  `idgianhang` int(11) NOT NULL,
  `idsukien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_formuv`
--

CREATE TABLE `tbl_formuv` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `vttd` varchar(11) NOT NULL,
  `ngaydk` varchar(255) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idtrangthai` int(22) DEFAULT 1,
  `nhomnganh` varchar(255) NOT NULL,
  `idkhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_formuv`
--

INSERT INTO `tbl_formuv` (`id`, `ten`, `email`, `sdt`, `vttd`, `ngaydk`, `iduser`, `idtrangthai`, `nhomnganh`, `idkhoa`) VALUES
(166, 'Lê Thị Bích Trâm', 'tram@gmail.com', '0783937373', 'Nhân viên', '11/11/2022', 2, 1, 'CNTT', 1),
(176, 'Tram', 'thanh@gmail.com', '56789o0p2', 'Thuc tap', '15/11/2022', 1, 1, 'CNTT', 1),
(177, 'Le Anh Tuan', 'Tuan@gmail.com', '091763839', 'Thuc tap', '15/11/2022', 2, 2, 'CNTT', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `user`, `role`, `email`, `pass`) VALUES
(1, 'tram', '0', 'tram@gmail.com', 'tram'),
(2, 'admin', '1', 'admin@gmail.com', 'admin'),
(11, 'rr', '0', 'tram@gmail.com', '0451dd9e0a14b6ace45c8558764f605f'),
(12, 'dn', '0', 'dn@gmail,=.com', 'dn'),
(13, 'tram', '0', 'tram', 'tram');

-- --------------------------------------------------------

--
-- Table structure for table `trangthai`
--

CREATE TABLE `trangthai` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trangthai`
--

INSERT INTO `trangthai` (`id`, `name`) VALUES
(1, 'Đang xử lý'),
(2, 'Đã đăng kí'),
(3, 'Chưa thanh toán'),
(4, 'Đã thanh toán');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gianhang`
--
ALTER TABLE `gianhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_baiviet_danhmuc` (`iddm`);

--
-- Indexes for table `tbl_formdn`
--
ALTER TABLE `tbl_formdn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_user_form1` (`iduser`),
  ADD KEY `lk_tt` (`idtrangthai`),
  ADD KEY `idgianhang` (`idgianhang`),
  ADD KEY `lk_sk_dn` (`idsukien`);

--
-- Indexes for table `tbl_formuv`
--
ALTER TABLE `tbl_formuv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_user` (`iduser`),
  ADD KEY `idtrangthai` (`idtrangthai`),
  ADD KEY `idkhoa` (`idkhoa`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gianhang`
--
ALTER TABLE `gianhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_formdn`
--
ALTER TABLE `tbl_formdn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_formuv`
--
ALTER TABLE `tbl_formuv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `trangthai`
--
ALTER TABLE `trangthai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD CONSTRAINT `lk_baiviet_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);

--
-- Constraints for table `tbl_formdn`
--
ALTER TABLE `tbl_formdn`
  ADD CONSTRAINT `lk_sk_dn` FOREIGN KEY (`idsukien`) REFERENCES `tbl_baiviet` (`id`),
  ADD CONSTRAINT `lk_tt` FOREIGN KEY (`idtrangthai`) REFERENCES `trangthai` (`id`),
  ADD CONSTRAINT `lk_user_form1` FOREIGN KEY (`iduser`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `tbl_formdn_ibfk_1` FOREIGN KEY (`idgianhang`) REFERENCES `gianhang` (`id`);

--
-- Constraints for table `tbl_formuv`
--
ALTER TABLE `tbl_formuv`
  ADD CONSTRAINT `lk_user` FOREIGN KEY (`iduser`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `tbl_formuv_ibfk_1` FOREIGN KEY (`idtrangthai`) REFERENCES `trangthai` (`id`),
  ADD CONSTRAINT `tbl_formuv_ibfk_2` FOREIGN KEY (`idkhoa`) REFERENCES `khoa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
