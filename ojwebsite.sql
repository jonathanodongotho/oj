-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 02:56 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ojwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `secrete_id` int(4) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`secrete_id`, `password`) VALUES
(7758, '107ce5a87b0f65cfc8015c38de2c0b88');

-- --------------------------------------------------------

--
-- Table structure for table `blogtable`
--

CREATE TABLE `blogtable` (
  `blog_id` int(10) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_content` text NOT NULL,
  `blog_image` varchar(100) DEFAULT NULL,
  `blog_writer` varchar(10) NOT NULL,
  `blog_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogtable`
--

INSERT INTO `blogtable` (`blog_id`, `blog_title`, `blog_content`, `blog_image`, `blog_writer`, `blog_date`) VALUES
(1, 'Christ is enough', 'Lorem ipsum dolor sit amet.', 'd.jpg', 'jonathan', '2023-03-22'),
(3, 'Christ is Lord', 'Lorem ipsum dolor sit amet. \r\nLorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', NULL, 'obina', '2023-03-09'),
(4, 'Another Sample', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et dolor at enim suscipit consequat. Donec eu ligula at ipsum ornare luctus non et tortor. Cras semper ipsum vulputate nisi tincidunt, ac ullamcorper justo luctus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus at tempor augue, sit amet facilisis purus. Mauris egestas urna vitae lectus pellentesque vulputate. Ut aliquam purus nisl, eget sollicitudin nisl euismod et. Fusce condimentum massa eget tempor accumsan. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\n\r\nInteger aliquet euismod tellus ac consequat. Vivamus eu egestas felis, a lacinia purus. Phasellus luctus ullamcorper purus quis gravida. Sed elementum orci id leo efficitur condimentum. Fusce orci nulla, cursus et ornare non, rhoncus sit amet lorem. Morbi aliquam felis nec urna placerat, at bibendum libero ullamcorper. Donec at luctus est, at dictum risus. Integer at tellus id neque viverra tincidunt. Quisque maximus erat ac urna sodales fringilla. Quisque molestie diam lacinia, malesuada turpis pharetra, tristique ex. Proin non leo id lorem ultrices commodo. Nullam porta convallis cursus. Nulla sit amet velit vitae nibh sodales rhoncus id quis justo.\r\n\r\nNulla vel turpis quis libero pharetra varius vel id turpis. Curabitur ac egestas arcu, ut pretium mauris. Nullam quis turpis sit amet nisl efficitur accumsan. Aenean et molestie est, ac aliquet lorem. Duis aliquet magna sit amet luctus iaculis. Maecenas mattis diam eu odio semper ultricies. Ut ante velit, auctor id mauris in, tincidunt maximus velit. Morbi dictum tortor est, vitae pellentesque magna maximus accumsan. In placerat egestas tortor, non rhoncus libero maximus quis. Vivamus placerat ullamcorper gravida. Vivamus et fermentum enim.\r\n\r\nPraesent efficitur feugiat justo vel ullamcorper. Curabitur et tristique libero, a aliquet erat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris blandit neque luctus, lacinia nibh euismod, lobortis sapien. Etiam velit urna, tristique ut lacinia sit amet, sodales vitae metus. Nunc vitae leo varius metus ultrices fermentum a sit amet turpis. Vivamus ac neque in neque rhoncus feugiat quis sed sapien. Nulla gravida condimentum magna, vitae molestie arcu maximus in. Etiam molestie eleifend nisl sit amet cursus. Nulla viverra ante eget nibh convallis, id aliquam quam lacinia. Vestibulum condimentum risus turpis, sit amet semper justo vestibulum ac. Ut molestie sem neque, ut cursus turpis malesuada sed. Nunc iaculis urna sed lectus condimentum, eget consectetur tellus facilisis. Etiam eu pellentesque massa, eget vulputate tellus.\r\n\r\nAliquam erat volutpat. Proin eget facilisis velit. Morbi luctus placerat nisi in finibus. Ut consequat urna vitae rhoncus pharetra. Suspendisse sit amet leo ipsum. Aenean sit amet velit odio. Maecenas ligula arcu, viverra nec risus et, vestibulum rutrum diam. Pellentesque eget lacus vitae nulla finibus accumsan. Nullam elit velit, laoreet sit amet hendrerit in, dapibus eu libero. Sed efficitur erat a enim tristique, et malesuada libero hendrerit. Aenean luctus commodo eros, eleifend vehicula tortor fringilla a.', NULL, 'lorem', '2023-03-26'),
(22, 'test image', 'ANOTHER trial', '2.jpg', '', '0000-00-00'),
(25, 'Image test 2', ' Etiam velit urna, tristique ut lacinia sit amet, sodales vitae metus. Nunc vitae leo varius metus ultrices fermentum a sit amet turpis. Vivamus ac neque in neque rhoncus feugiat quis sed sapien. Nulla gravida condimentum magna, vitae molestie arcu maximus in. Etiam molestie eleifend nisl sit amet cursus. Nulla viverra ante eget nibh convallis, id aliquam quam lacinia. Vestibulum condimentum risus turpis, sit amet semper justo vestibulum ac. Ut molestie sem neque, ut cursus turpis malesuada sed. Nunc iaculis urna sed lectus condimentum, eget consectetur tellus facilisis. Etiam eu pellentesque massa, eget vulputate tellus. Aliquam erat volutpat. Proin eget facilisis velit. Morbi luctus placerat nisi in finibus. Ut consequat urna vitae rhoncus pharetra. Suspendisse sit amet leo ipsum. Aenean sit amet velit odio. Maecenas ligula arcu, viverra nec risus et, vestibulum rutrum diam. Pellentesque eget lacus vitae nulla finibus accumsan. Nullam elit velit, laoreet sit amet hendrerit in, dapibus eu libero. Sed efficitur erat a enim tristique, et malesuada libero hendrerit. Aenean luctus commodo eros, eleifend vehicula tortor fringilla a.', 'profile.jpg', 'Ever the o', '2023-03-12'),
(26, 'Image test 2', ' Etiam velit urna, tristique ut lacinia sit amet, sodales vitae metus. Nunc vitae leo varius metus ultrices fermentum a sit amet turpis. Vivamus ac neque in neque rhoncus feugiat quis sed sapien. Nulla gravida condimentum magna, vitae molestie arcu maximus in. Etiam molestie eleifend nisl sit amet cursus. Nulla viverra ante eget nibh convallis, id aliquam quam lacinia. Vestibulum condimentum risus turpis, sit amet semper justo vestibulum ac. Ut molestie sem neque, ut cursus turpis malesuada sed. Nunc iaculis urna sed lectus condimentum, eget consectetur tellus facilisis. Etiam eu pellentesque massa, eget vulputate tellus. Aliquam erat volutpat. Proin eget facilisis velit. Morbi luctus placerat nisi in finibus. Ut consequat urna vitae rhoncus pharetra. Suspendisse sit amet leo ipsum. Aenean sit amet velit odio. Maecenas ligula arcu, viverra nec risus et, vestibulum rutrum diam. Pellentesque eget lacus vitae nulla finibus accumsan. Nullam elit velit, laoreet sit amet hendrerit in, dapibus eu libero. Sed efficitur erat a enim tristique, et malesuada libero hendrerit. Aenean luctus commodo eros, eleifend vehicula tortor fringilla a.', 'profile.jpg', 'Ever the o', '2023-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `devotionaltable`
--

CREATE TABLE `devotionaltable` (
  `dev_id` int(20) NOT NULL,
  `dev_title` varchar(50) NOT NULL,
  `dev_content` text NOT NULL,
  `dev_image` varchar(100) NOT NULL,
  `dev_writer` varchar(20) NOT NULL,
  `dev_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `devotionaltable`
--

INSERT INTO `devotionaltable` (`dev_id`, `dev_title`, `dev_content`, `dev_image`, `dev_writer`, `dev_date`) VALUES
(1, 'devotional', ' Lorem ipsum dolor sit amet. Nunc iaculis urna sed lectus condimentum, eget consectetur tellus facilisis. Etiam eu pellentesque massa, eget vulputate tellus. Aliquam erat volutpat. Proin eget facilisis velit. Morbi luctus placerat nisi in finibus. Ut consequat urna vitae rhoncus pharetra. Suspendisse sit amet leo ipsum. Aenean sit amet velit odio. Maecenas ligula arcu, viverra nec risus et, vestibulum rutrum diam. Pellentesque eget lacus vitae nulla finibus accumsan. Nullam elit velit, laoreet sit amet hendrerit in, dapibus eu libero. Sed efficitur erat a enim tristique, et malesuada libero hendrerit. Aenean luctus commodo eros, eleifend vehicula tortor fringilla a.', '6.jpg', 'ovk', '2023-03-02'),
(2, 'first dev test', 'Etiam velit urna, tristique ut lacinia sit amet, sodales vitae metus. Nunc vitae leo varius metus ultrices fermentum a sit amet turpis. Vivamus ac neque in neque rhoncus feugiat quis sed sapien. Nulla gravida condimentum magna, vitae molestie arcu maximus in. Etiam molestie eleifend nisl sit amet cursus. Nulla viverra ante eget nibh convallis, id aliquam quam lacinia. Vestibulum condimentum risus turpis, sit amet semper justo vestibulum ac. Ut molestie sem neque, ut cursus turpis malesuada sed. Nunc iaculis urna sed lectus condimentum, eget consectetur tellus facilisis. Etiam eu pellentesque massa, eget vulputate tellus. Aliquam erat volutpat. Proin eget facilisis velit. Morbi luctus placerat nisi in finibus. Ut consequat urna vitae rhoncus pharetra. Suspendisse sit amet leo ipsum. Aenean sit amet velit odio. Maecenas ligula arcu, viverra nec risus et, vestibulum rutrum diam. Pellentesque eget lacus vitae nulla finibus accumsan. Nullam elit velit, laoreet sit amet hendrerit in, dapibus eu libero. Sed efficitur erat a enim tristique, et malesuada libero hendrerit. Aenean luctus commodo eros, eleifend vehicula tortor fringilla a.', 'mark-mc-neill-C3nm0U1raXY-unsplash.jpg', 'one and only', '2023-03-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogtable`
--
ALTER TABLE `blogtable`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `devotionaltable`
--
ALTER TABLE `devotionaltable`
  ADD PRIMARY KEY (`dev_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogtable`
--
ALTER TABLE `blogtable`
  MODIFY `blog_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `devotionaltable`
--
ALTER TABLE `devotionaltable`
  MODIFY `dev_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
