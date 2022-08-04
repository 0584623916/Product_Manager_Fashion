-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 10:10 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webat`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(255) NOT NULL,
  `warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `warranty`) VALUES
(1, 'Vest nữ', 'at1.jpg', 13000000, 'Thời trang Vest chắc hẳn nàng đã nghe nhiều và khá phổ biến, nhưng nghe nhắc đến thời trang vest nữ chắc hẳn nàng nghe rất mới và xa lạ đúng không. Khi phụ nữ mặc Vest chắc hẳn sẽ không kém sự tinh tế sang trọng và sắc sảo như nam giới. Nên Vest là một tr'),
(2, 'Váy bó', 'at2.jpg', 1000000, 'Đường cong là một trong những mơ ước mà bao cô gái hằng có được, chiếc váy bó sẽ là một trong những lựa chọn mà bao cô gái dùng để chinh phục những chàng trai với đường cong gợi cảm qua chiếc váy bó. Khi nàng mang lên mình chiếc váy bó, điều đó hoàn toàn '),
(3, 'Áo trễ vai ', 'at3.jpg', 15000000, 'Đối với phái nữ thì việc để một bờ vai trần sẽ là một điểm vô cùng quyến rũ và thu hút khá nhiều mọi ánh nhìn của cánh nam giới. Nên hầu hết đối với mọi cô nàng, trong tủ đồ chắc hẳn luôn luôn có một đến vài chiếc áo trễ vai. Bởi đặc tính quyến rũ, dịu dà'),
(18, 'Mốt thời trang caro', 'at4.jpg', 14500000, 'Những thiết kế thời trang caro khá là đa dạng, những mẫu áo caro rất dễ kết hợp và đa dạng có thể phối đồ với nhiều kiểu khác nhau. Ngoài ra đầm caro còn là một trong những lựa chọn mà các nàng thích sự dịu dàng và nữ tính lựa chọn. Đầm ngắn caro khá là đ'),
(19, 'Xu hướng thời trang hở vai', 'at5.jpg', 1000000, 'Sự kết hợp này sẽ là xu hướng thời trang 2022 dành cho số đông bạn nữ. Là một trong những style có thể đi dự tiệc cưới sang trọng, sự kiện hay là đi chơi cùng bạn bè đều được nhé.'),
(20, 'Thời trang hot đầm body', 'at6.jpg', 13000000, 'Những mẫu đầm Body sẽ giúp nàng khoe dáng thân hình có đường cong vô cùng quyến rũ đầy gợi cảm là một trong những style chưa bao giờ lãng quên của năm 2022. Kiểu thời trang này sẽ rất phù hợp cho mọi bữa tiệc, hay những sự kiện lớn vô cùng trang trọng và '),
(21, '    Kiểu phồng', 'at7.jpg', 16000000, '    Áo tay phồng hay váy phồng là một trong những thời trang được xuất hiện khá là lâu đời tại các nước Châu Âu. Nhưng đến nay thì đang còn là rất mới lạ với xu hướng thời trang hiện nay. Áo tay phồng hay váy phồng là một trong những mẫu thời trang khá ít');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', '123456', 2),
(2, 'Tien Thanh', '1004', 2),
(4, 'Phạm Tiến Thành', '12340987', 2),
(5, 'NguyenVanQuyet', '1234567', 2),
(6, 'toilathanh', '1234567890', 2),
(7, 'toilatuan', '1234567890', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
