-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 01:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lelang`
--

-- --------------------------------------------------------

--
-- Table structure for table `abe_admin`
--

CREATE TABLE `abe_admin` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `hak_akses` varchar(20) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abe_admin`
--

INSERT INTO `abe_admin` (`id_user`, `nama_lengkap`, `password`, `email`, `status`, `hak_akses`, `foto`, `tgl_daftar`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'agus@fgsgroup.com', 'aktif', 'administrator', 'user.png', '2018-05-31'),
(2, 'admin 12', '81dc9bdb52d04dc20036dbd8313ed055', 'agus@mail.com', 'non aktif', 'administrator', 'user.png', '2018-05-31'),
(3, 'admin coba', '81dc9bdb52d04dc20036dbd8313ed055', 'agus.ladur@gmail.com', 'aktif', 'admin', 'user.png', '2018-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `abe_deposit`
--

CREATE TABLE `abe_deposit` (
  `id_deposit` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `jumlah` double NOT NULL,
  `file_foto` varchar(100) NOT NULL,
  `bank_pengirim` varchar(30) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `nomor_rekening` varchar(30) NOT NULL,
  `bank_penerima` varchar(30) NOT NULL,
  `catatan` text NOT NULL,
  `tgl_deposit` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abe_deposit`
--

INSERT INTO `abe_deposit` (`id_deposit`, `id_invoice`, `id_user`, `id_produk`, `status`, `jumlah`, `file_foto`, `bank_pengirim`, `nama_pengirim`, `nomor_rekening`, `bank_penerima`, `catatan`, `tgl_deposit`) VALUES
(13, 0, 1, 0, 'oke', 2000000, '1530762653861.jpeg', 'BCA', 'agus bahrudin', '0321654987', 'BCA - 9876543210', 'Buat Deposit', '2018-07-05 10:50:53'),
(14, 0, 5, 0, 'oke', 10000000, '1531928558549.png', 'BCA', 'Rivaldi', '9008485761', 'BCA - 9876543210', 'test', '2018-07-18 22:42:38'),
(15, 0, 6, 0, 'oke', 5000000, '1532452414562.png', 'BCA', 'pelelang 33', '12345678', 'BCA - 9876543210', '', '2018-07-25 00:13:34'),
(16, 2, 9, 35, 'bayar', 1000000, '1532607902934.jpg', 'cimb', 'juhar', '123456789', 'MANDIRI - 9876543210', 'ler', '2018-07-26 19:25:02'),
(17, 0, 10, 0, 'oke', 1000000, '1532672627652.jpg', 'bni', 'hghg', '123445', 'BCA - 9876543210', '3234343', '2018-07-27 13:23:47'),
(18, 3, 14, 37, 'bayar', 1000000, '1532895067868.jpg', 'BCA', 'Aldi', '123456', 'BCA - 9876543210', 'ok', '2018-07-30 03:11:07'),
(19, 5, 15, 38, 'bayar', 1000000, '1532895765641.jpg', 'mandiri', 'odil', '08245583', 'MANDIRI - 9876543210', 'Deposit Awal', '2018-07-30 03:22:45'),
(20, 0, 14, 0, 'transfer', 2500000, '1532954735291.jpg', 'BCA', 'Bidder Testing', '123456', 'BCA - 9876543210', 'deposit 2', '2018-07-30 19:45:35'),
(21, 6, 16, 40, 'bayar', 1000000, '1533542799697.jpg', 'BCA', 'Bidder', '123456', 'BCA - 9876543210', 'bukti', '2018-08-06 15:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `abe_foto_produk`
--

CREATE TABLE `abe_foto_produk` (
  `id_foto_produk` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_foto` varchar(100) NOT NULL,
  `file_foto` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abe_foto_produk`
--

INSERT INTO `abe_foto_produk` (`id_foto_produk`, `id_produk`, `nama_foto`, `file_foto`, `status`, `id_user`) VALUES
(5, 3, 'Mixed Media 1', '1528248070548.jpg', 'oke', 4),
(6, 4, 'Mixed Media 2', '1528248140683.jpg', 'oke', 4),
(7, 5, 'Mixed Media 3', '1528248191937.jpg', 'oke', 4),
(8, 6, 'Painting 1', '1528248257788.jpg', 'oke', 4),
(9, 7, 'Painting 2', '1528248305379.jpg', 'oke', 4),
(10, 8, 'Painting 3', '1528248354793.jpg', 'oke', 4),
(11, 9, 'Sculpture 1', '1528248476546.jpg', 'oke', 4),
(12, 10, '', '1528248507292.jpg', 'oke', 4),
(13, 11, 'Sculpture 3', '1528248555021.jpg', 'oke', 4),
(14, 12, 'woodcut 1', '1528248603982.jpg', 'oke', 4),
(15, 13, 'woodcut 2', '1528248638132.png', 'oke', 4),
(16, 14, 'woodcut 3', '1528248686274.jpg', 'oke', 4),
(17, 15, 'woodencraft 1', '1528248771583.jpg', 'oke', 4),
(18, 16, 'woodencraft 2', '1528248807161.jpg', 'oke', 4),
(19, 17, 'woodencraft 3', '1528248841911.jpg', 'oke', 4),
(20, 18, 'woodencraft 1', '1528249101998.jpg', 'oke', 5),
(21, 19, 'woodencraft 2', '1528249131487.jpg', 'oke', 5),
(22, 20, 'woodencraft 3', '1528249160934.jpg', 'oke', 5),
(23, 21, 'woodcut 1', '1528249210135.jpg', 'oke', 5),
(24, 22, 'woodcut 2', '1528249239853.jpg', 'oke', 5),
(25, 23, 'woodcut 3', '1528249283619.jpg', 'oke', 5),
(26, 24, 'Sculpture 1', '1528249351845.jpg', 'oke', 5),
(27, 25, 'Sculpture 2', '1528249384698.jpg', 'oke', 5),
(28, 26, 'Sculpture 3', '1528249411273.jpg', 'oke', 5),
(29, 27, 'Painting 1', '1528249479076.jpg', 'oke', 5),
(30, 28, 'Painting 2', '1528249513244.jpeg', 'oke', 5),
(31, 29, 'Painting 3', '1528249537554.jpeg', 'oke', 5),
(32, 30, 'Mixed Media 1', '1528249589631.jpg', 'oke', 5),
(33, 31, 'Mixed Media 2', '1528249645662.jpg', 'oke', 5),
(34, 32, 'Mixed Media 3', '1528249710180.jpg', 'oke', 5),
(35, 33, 'Mixed Media 1', '1528254598139.jpg', 'oke', 5),
(36, 34, 'starry night', '1532452687694.jpeg', 'oke', 8),
(37, 35, 'gundam', '1532608026469.png', 'oke', 8),
(39, 37, 'Giraffe Gold Sculpture', '1532893968628.jpg', 'oke', 8),
(40, 38, 'Patung', '1532918362728.png', 'oke', 8),
(41, 39, 'Sandra Chevrier', '1533513882149.jpg', 'oke', 11),
(42, 40, 'Collage Girl Face 2', '1533514286298.jpg', 'oke', 11),
(43, 41, 'Monday', '1533514583125.jpg', 'oke', 11),
(44, 42, 'Painting 1', '1533514888115.jpg', 'oke', 11),
(45, 44, 'Test Skill', '1534324792680.jpg', 'oke', 11);

-- --------------------------------------------------------

--
-- Table structure for table `abe_invoice`
--

CREATE TABLE `abe_invoice` (
  `id_invoice` int(11) NOT NULL,
  `no_invoice` varchar(20) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `harga_produk` double NOT NULL,
  `kode_unik` double NOT NULL,
  `tgl_buat` datetime NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `tgl_lunas` datetime NOT NULL,
  `jumlah_transfer` double NOT NULL,
  `bank_pengirim` varchar(70) NOT NULL,
  `nama_pengirim` varchar(70) NOT NULL,
  `nomor_rekening` int(30) NOT NULL,
  `bank_penerima` varchar(70) NOT NULL,
  `ppn` double NOT NULL,
  `catatan` text NOT NULL,
  `file_foto` varchar(30) NOT NULL,
  `deposit` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abe_invoice`
--

INSERT INTO `abe_invoice` (`id_invoice`, `no_invoice`, `id_produk`, `id_user`, `harga_produk`, `kode_unik`, `tgl_buat`, `id_transaksi`, `status`, `tgl_lunas`, `jumlah_transfer`, `bank_pengirim`, `nama_pengirim`, `nomor_rekening`, `bank_penerima`, `ppn`, `catatan`, `file_foto`, `deposit`) VALUES
(1, 'INV0001072018', 34, 6, 1500000, 894, '2018-07-25 00:23:40', 6, 'lunas', '2018-07-25 01:13:21', 1650894, 'BCA', 'Pelelang33', 1234578, 'BCA - 9876543210', 150000, 'udah saya bayar', '1532456001006.jpg', 0),
(2, 'INV0001072018', 35, 9, 600000, 664, '2018-07-26 19:30:49', 7, 'belum bayar', '0000-00-00 00:00:00', 0, '', '', 0, '', 0, '', '', 1000000),
(3, 'INV0001072018', 37, 14, 2500000, 130, '2018-07-30 09:57:23', 10, 'transfer', '2018-07-30 19:42:25', 1750130, 'BCA', 'Bidder testing', 9580725, 'BCA - 9876543210', 250000, 'Bayar Sisa', '1532954545579.jpg', 1000000),
(4, 'INV0001072018', 37, 14, 2500000, 209, '2018-07-30 09:57:23', 10, 'belum bayar', '0000-00-00 00:00:00', 0, '', '', 0, '', 0, '', '', 0),
(5, 'INV0001072018', 38, 15, 700000, 592, '2018-07-31 10:27:57', 11, 'belum bayar', '0000-00-00 00:00:00', 0, '', '', 0, '', 0, '', '', 1000000),
(6, 'INV0001082018', 40, 16, 1200000, 760, '2018-08-06 15:12:30', 12, 'belum bayar', '0000-00-00 00:00:00', 0, '', '', 0, '', 0, '', '', 1000000),
(7, 'INV0001082018', 44, 5, 1000000, 834, '2018-08-15 16:22:43', 13, 'belum bayar', '0000-00-00 00:00:00', 0, '', '', 0, '', 0, '', '', 0),
(8, 'INV0001082018', 45, 5, 500000, 244, '2018-08-15 16:27:48', 14, 'belum bayar', '0000-00-00 00:00:00', 0, '', '', 0, '', 0, '', '', 0),
(9, 'INV0001082018', 45, 5, 500000, 512, '2018-08-15 16:27:57', 14, 'belum bayar', '0000-00-00 00:00:00', 0, '', '', 0, '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `abe_kategori`
--

CREATE TABLE `abe_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `url_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abe_kategori`
--

INSERT INTO `abe_kategori` (`id_kategori`, `nama_kategori`, `url_kategori`) VALUES
(1, 'painting', 'painting'),
(2, 'sculpture', 'sculpture'),
(3, 'woodcut', 'woodcut'),
(4, 'woodencraft', 'woodencraft'),
(5, 'fine art', 'fineart'),
(6, 'mixed media', 'mixedmedia');

-- --------------------------------------------------------

--
-- Table structure for table `abe_kategori_klik`
--

CREATE TABLE `abe_kategori_klik` (
  `id_kategori_klik` int(11) NOT NULL,
  `id_bidder` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `jumlah_klik` double NOT NULL,
  `url_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abe_kategori_klik`
--

INSERT INTO `abe_kategori_klik` (`id_kategori_klik`, `id_bidder`, `id_kategori`, `jumlah_klik`, `url_kategori`) VALUES
(4, 1, 6, 8, 'mixedmedia'),
(5, 1, 1, 2, 'painting'),
(6, 2, 1, 2, 'painting'),
(7, 16, 1, 5, 'painting'),
(8, 16, 2, 2, 'sculpture'),
(9, 17, 4, 1, 'woodencraft'),
(10, 5, 1, 6, 'painting'),
(11, 16, 6, 4, 'mixedmedia'),
(12, 5, 6, 7, 'mixedmedia');

-- --------------------------------------------------------

--
-- Table structure for table `abe_lelang_bidder`
--

CREATE TABLE `abe_lelang_bidder` (
  `id_lelang_bidder` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_bidder` int(11) NOT NULL,
  `harga_lelang` double NOT NULL,
  `status` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abe_lelang_bidder`
--

INSERT INTO `abe_lelang_bidder` (`id_lelang_bidder`, `id_barang`, `id_kategori`, `id_bidder`, `harga_lelang`, `status`, `tanggal`) VALUES
(5, 11, 2, 1, 15000000, 'pending', '2018-07-05 10:51:46'),
(6, 34, 1, 6, 1500000, 'pemenang', '2018-07-25 00:20:57'),
(7, 35, 5, 9, 600000, 'pemenang', '2018-07-26 19:29:09'),
(8, 37, 2, 14, 1800000, 'kalah', '2018-07-30 03:20:28'),
(9, 37, 2, 15, 2000000, 'kalah', '2018-07-30 03:26:23'),
(10, 37, 2, 14, 2500000, 'pemenang', '2018-07-30 09:56:23'),
(11, 38, 2, 15, 700000, 'pemenang', '2018-07-31 10:27:21'),
(12, 40, 6, 16, 1200000, 'pemenang', '2018-08-06 15:11:26'),
(13, 44, 6, 5, 1000000, 'pemenang', '2018-08-15 16:21:58'),
(14, 45, 1, 5, 500000, 'pemenang', '2018-08-15 16:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `abe_pelelang`
--

CREATE TABLE `abe_pelelang` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `hak_akses` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `nik_ktp` varchar(20) NOT NULL,
  `telpon` varchar(16) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `foto` varchar(20) NOT NULL,
  `tgl_aktif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abe_pelelang`
--

INSERT INTO `abe_pelelang` (`id_user`, `nama_lengkap`, `password`, `email`, `status`, `hak_akses`, `alamat`, `nik_ktp`, `telpon`, `tgl_daftar`, `foto`, `tgl_aktif`) VALUES
(3, 'agus', 'fdf169558242ee051cca1479770ebac3', '', 'blokir', 'pelelang', '', '', '', '2018-05-31', 'user.png', '0000-00-00 00:00:00'),
(4, 'pelelang pertama', '827ccb0eea8a706c4c34a16891f84e7b', 'pelelang01@gmail.com', 'aktif', 'pelelang', '', '', '', '2018-06-05', 'user.png', '0000-00-00 00:00:00'),
(5, 'pelelang kedua', '827ccb0eea8a706c4c34a16891f84e7b', 'pelelang02@gmail.com', 'aktif', 'pelelang', '', '', '', '2018-06-06', 'user.png', '0000-00-00 00:00:00'),
(6, 'pelelang ketiga', '827ccb0eea8a706c4c34a16891f84e7b', 'agus.fgs@gmail.com', 'aktif', 'pelelang', '', '', '', '2018-06-07', 'user.png', '0000-00-00 00:00:00'),
(8, 'M Rizky Rivaldi', '15bf121abd365bdc2e19a0d80ab7a7d2', 'rzkyrvld@gmail.com', 'aktif', 'pelelang', 'Jakarta Selatan', '123456', '087780269553', '2018-07-10', '1532893266016.jpg', '2018-08-06 06:34:51'),
(10, 'naomi gus kerinda', 'e4e4dece4385d3850f9253ee97e6bf70', 'naomigusks@gmail.com', 'daftar', 'pelelang', '', '', '', '2018-07-27', 'user.png', '0000-00-00 00:00:00'),
(11, 'M Rizky Rivaldi', '15bf121abd365bdc2e19a0d80ab7a7d2', 'muhrizkyrivaldi@gmail.com', 'aktif', 'pelelang', '', '', '', '2018-07-27', 'user.png', '0000-00-00 00:00:00'),
(12, 'Srikandi Putri', '827ccb0eea8a706c4c34a16891f84e7b', 'srikandiputri333@gmail.com', 'daftar', 'pelelang', '', '', '', '2018-07-27', 'user.png', '0000-00-00 00:00:00'),
(14, 'auctioner01', '3f787b20d01ae14021259724d43faf94', 'auctionertest01@gmail.com', 'aktif', 'pelelang', '', '', '', '2018-07-28', 'user.png', '2018-07-28 11:24:41'),
(15, 'auctioner 2', '3f787b20d01ae14021259724d43faf94', 'auctionertest02@gmail.com', 'daftar', 'pelelang', '', '', '', '2018-07-28', 'user.png', '0000-00-00 00:00:00'),
(16, 'auctine 2', '3f787b20d01ae14021259724d43faf94', 'auctioner02@gmail.com', 'daftar', 'pelelang', '', '', '', '2018-07-28', 'user.png', '0000-00-00 00:00:00'),
(18, 'm rizky rivaldi', '15bf121abd365bdc2e19a0d80ab7a7d2', 'rivaldicapaldi@gmail.com', 'aktif', 'pelelang', '', '', '', '2018-08-06', 'user.png', '2018-08-06 15:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `abe_produk`
--

CREATE TABLE `abe_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` double NOT NULL,
  `harga_jual` double NOT NULL,
  `jumlah_produk` double NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_pelelang` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `tgl_buka` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  `deskripsi` longtext NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abe_produk`
--

INSERT INTO `abe_produk` (`id_produk`, `nama_produk`, `harga_produk`, `harga_jual`, `jumlah_produk`, `id_kategori`, `id_pelelang`, `status`, `tgl_buka`, `tgl_tutup`, `deskripsi`, `keterangan`) VALUES
(3, 'Mixed Media 01', 17000000, 0, 1, 6, 4, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(4, 'Mixed Media 02', 18500000, 0, 1, 6, 4, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(5, 'Mixed Media 03', 12300000, 0, 1, 6, 4, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(6, 'Painting 01', 9800000, 0, 1, 1, 4, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(7, 'Painting 02', 16200000, 0, 1, 1, 4, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(8, 'Painting 03', 8450000, 0, 1, 1, 4, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(9, 'Sculpture 01', 9500000, 0, 1, 2, 4, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(10, 'Sculpture 02', 6900000, 0, 1, 2, 4, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(11, 'Sculpture 03', 14600000, 0, 1, 2, 4, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(12, 'Woodcut 01', 6200000, 0, 1, 3, 4, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(13, 'Woodcut 02', 5600000, 0, 1, 3, 4, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(14, 'Woodcut 03', 8400000, 0, 1, 3, 4, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(15, 'WoodenCraft 01', 13200000, 0, 1, 4, 4, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(16, 'WoodenCraft 02', 6900000, 0, 1, 4, 4, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(17, 'WoodenCraft 03', 8500000, 0, 1, 4, 4, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(18, 'WoodenCraft 01', 5900000, 0, 1, 4, 5, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(19, 'WoodenCraft 02', 4600000, 0, 1, 4, 5, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(20, 'WoodenCraft 03', 9100000, 0, 1, 4, 5, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(21, 'Woodcut 01', 7200000, 0, 1, 3, 5, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(22, 'Woodcut 02', 6900000, 0, 1, 3, 5, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(23, 'Woodcut 03', 7000000, 0, 1, 3, 5, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(24, 'Sculpture 01', 15200000, 0, 1, 2, 5, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(25, 'Sculpture 02', 19000000, 0, 1, 2, 5, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(26, 'Sculpture 03', 11300000, 0, 1, 2, 5, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(27, 'Painting 01', 6900000, 0, 1, 1, 5, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(28, 'Painting 02', 8500000, 0, 1, 1, 5, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(29, 'Painting 03', 4500000, 0, 1, 1, 5, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(30, 'Mixed Media 01', 12000000, 0, 1, 6, 5, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(31, 'Mixed Media 02', 8500000, 0, 1, 6, 5, 'ready', '0000-00-00', '0000-00-00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', ''),
(32, 'Mixed Media 03', 11500000, 0, 1, 6, 5, 'lelang', '2018-06-06', '2018-06-28', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p>', 'Kondisi sangat baik'),
(33, 'Mixed Media 04', 7500000, 0, 1, 6, 5, 'lelang', '2018-06-06', '2018-06-29', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus sodales mattis. Praesent condimentum velit ante, non mattis enim porta at. Sed elementum ex a arcu consequat, ac luctus sapien fringilla. Mauris nec odio urna. Duis ut neque egestas, elementum arcu et, euismod massa. Suspendisse sit amet hendrerit nulla, congue varius mauris. Morbi eleifend diam velit, ut rutrum dolor aliquet sit amet.</p><p>Nam elementum iaculis lobortis. Quisque a risus eget lectus aliquet luctus in ac urna. Aenean condimentum sapien vitae turpis interdum, vitae pretium augue tincidunt. Donec iaculis a enim et ultrices. Donec vitae lectus ut lacus fringilla consectetur quis eu purus. Aenean id gravida erat, et rhoncus odio. Vestibulum quis metus risus. Nam ut lacus ut tortor suscipit ullamcorper. Mauris maximus elementum eros ac molestie. Morbi vel sapien id velit accumsan dignissim. Nulla facilisi. Aenean rutrum ante gravida massa posuere pretium. Nunc consequat risus at felis luctus, ac tincidunt arcu egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Praesent venenatis dignissim ultrices. Suspendisse feugiat tortor dapibus nunc condimentum, eu semper est tincidunt. Nullam non cursus metus. Proin viverra porta ipsum, quis fringilla nisl luctus eu. Quisque mollis diam quam, sed volutpat enim maximus et. Nulla facilisi. Aliquam erat volutpat. Sed lorem dui, tincidunt eget tempor in, blandit at felis. Maecenas ut erat et nisl aliquam molestie non et purus. Donec gravida, sapien ac dignissim mattis, nisl est luctus urna, at gravida dolor quam ac urna.</p>', 'Kondisi sangat baik'),
(34, 'Starry Night', 1000000, 1500000, 1, 1, 8, 'sold out', '2018-07-24', '2018-07-25', '<p>lukisan malam yang indah</p>\r\n', 'sebelum tanggal 25'),
(35, 'hundam', 500000, 600000, 1, 5, 8, 'sold out', '2018-07-26', '2018-07-27', '<p>1234567890esrdtyuiodfcghj345678</p>\r\n', ''),
(37, 'Giraffe Gold Sculpture', 1500000, 2500000, 1, 2, 8, 'sold out', '2018-07-29', '2018-08-10', '<p>Made by 24K Premium Gold</p>\r\n', 'Limited Edition'),
(38, 'patung', 500000, 700000, 1, 2, 8, 'sold out', '2018-07-31', '2018-08-01', '<p>gdjbcykandruabckeuymna</p>\r\n', 'Update'),
(39, 'Sandra Cherier', 1000000, 0, 1, 6, 11, 'lelang', '2018-08-06', '2018-08-08', '<p>Collage Art With Vintage Superman Comics</p>\r\n', 'Limited Collage Art'),
(40, 'Collage Face Art Girl', 1000000, 1200000, 1, 6, 11, 'sold out', '2018-08-06', '2018-08-08', '<p>Mixed With Oil Paint And News paper</p>\r\n', 'Limited art\r\n'),
(41, 'Monday', 1000000, 0, 1, 6, 11, 'lelang', '2018-08-06', '2018-08-09', '<p>Monday Mixed Media With Photo and pink marker</p>\r\n', 'Monday Yeah !!!'),
(42, 'Sensitive', 2000000, 0, 1, 1, 11, 'ready', '0000-00-00', '0000-00-00', '<p>Senstivy With Stranger</p>\r\n', ''),
(43, 'flower', 1000000, 0, 1, 1, 18, 'lelang', '2018-08-06', '2018-08-09', '<p>pink and with oil paint</p>\r\n', 'limited'),
(44, 'Test Skill', 500000, 1000000, 1, 6, 11, 'sold out', '2018-08-15', '2018-08-24', '<p>Ujian Skripsi Test Skill</p>\r\n', 'Test Skill'),
(45, 'Test Skill 2', 500000, 500000, 1, 1, 11, 'sold out', '2018-08-15', '2018-08-15', '<p>Test Skill 2</p>\r\n', 'test Skill 2\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `abe_rekomendasi`
--

CREATE TABLE `abe_rekomendasi` (
  `id_rekomendasi` int(11) NOT NULL,
  `bidder` int(11) NOT NULL,
  `kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abe_rekomendasi`
--

INSERT INTO `abe_rekomendasi` (`id_rekomendasi`, `bidder`, `kategori`) VALUES
(6, 1, 3),
(7, 1, 1),
(12, 15, 2),
(18, 5, 1),
(21, 16, 2),
(22, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `abe_review`
--

CREATE TABLE `abe_review` (
  `id_review` int(11) NOT NULL,
  `user_input` int(11) NOT NULL,
  `kepuasan` varchar(30) NOT NULL,
  `review` text NOT NULL,
  `produk` int(11) NOT NULL,
  `kategori_produk` int(11) NOT NULL,
  `pelelang` int(11) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `locale` varchar(20) NOT NULL,
  `picture_url` varchar(255) NOT NULL,
  `profile_url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'daftar',
  `alamat` text NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT 'user.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `password`, `gender`, `locale`, `picture_url`, `profile_url`, `created`, `modified`, `nama_lengkap`, `status`, `alamat`, `telephone`, `foto`) VALUES
(1, 'google', '102806248632969767141', 'agus', 'fgs', 'agus.fgs@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'laki-laki', 'in', 'https://lh6.googleusercontent.com/-egzxhjjZJC8/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7rlQgz47zr2x_0HGtxB26EavU-zPg/mo/photo.jpg', '', '2018-06-07 08:13:18', '2018-08-05 09:37:48', 'agus fgs', 'daftar', 'Jl. Wisma GKBI', '081219000806', 'user.png'),
(2, 'google', '116940494689630597608', 'Agus', 'Bahrudin', 'agusbahrudin.bahteragroup@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 'en', 'https://lh6.googleusercontent.com/-2Tc84IVPDIg/AAAAAAAAAAI/AAAAAAAAAAA/AB6qoq3U_qmLdPfX7NHgKDLQEBWq1KNlsQ/mo/photo.jpg', '', '2018-06-07 08:17:17', '2018-06-22 01:46:30', 'agus bahtera', 'aktif', '', '', 'user.png'),
(4, 'google', '102727085440102612164', 'Agus', 'Bahrudin', 'agus.ladur@gmail.com', '', 'laki-laki', 'in', 'https://lh3.googleusercontent.com/-_M1NvdD-7m0/AAAAAAAAAAI/AAAAAAAAAYA/fOs2n-Zuhv8/photo.jpg', 'https://plus.google.com/102727085440102612164', '2018-06-22 01:54:08', '2018-07-29 00:42:31', '', 'daftar', '', '081219000806', 'user.png'),
(5, 'google', '115346392104739904762', 'RV', 'LD', 'rzkyrvld@gmail.com', '15bf121abd365bdc2e19a0d80ab7a7d2', 'laki-laki', 'en', 'https://lh4.googleusercontent.com/-3kt2wAmQS4E/AAAAAAAAAAI/AAAAAAAAAEs/pjZI0etzLco/photo.jpg', 'https://plus.google.com/115346392104739904762', '2018-06-22 04:20:48', '2018-08-15 06:38:25', '', 'aktif', 'Taman Wisma Asri Blok S 21', '087780269553', 'user.png'),
(6, 'google', '106885159605675539102', 'pelelang', '33', 'pelelang33@gmail.com', '', 'laki-laki', 'en', 'https://lh3.googleusercontent.com/-QtrMVghZmFM/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7oai0cGuw-ppG1K8ePZHYsJpOBAgg/mo/photo.jpg', '', '2018-07-24 17:09:35', '2018-07-31 17:15:25', '', 'aktif', 'Jakarta', '1234567', 'user.png'),
(7, 'google', '103226956745110977280', 'Rivaldi', 'NS', 'rivaldins333@gmail.com', '', '', 'en', 'https://lh3.googleusercontent.com/-ww3J5ZulL8Y/AAAAAAAAAAI/AAAAAAAAAHM/3GLOo4mk6o8/photo.jpg', 'https://plus.google.com/103226956745110977280', '2018-07-25 10:20:46', '2018-07-25 10:20:46', '', 'daftar', '', '', 'user.png'),
(8, 'google', '106163623532048085437', 'Rivaldi', 'capaldi', 'rivaldicapaldi@gmail.com', '2f1b55d4deba7f7b6aa21ff5cbee5f2e', 'laki-laki', 'en', 'https://lh3.googleusercontent.com/-pFv9ujssNUk/AAAAAAAAAAI/AAAAAAAAAAc/k6ffM_f6u9A/photo.jpg', '', '2018-07-26 04:23:27', '2018-07-26 04:23:27', '', 'daftar', 'Duren Tiga Utara II Pancoran – Pela Mampang\r\nJakarta Selatan, Indonesia 12760', '087780269553', 'user.png'),
(9, 'google', '112194221894475409900', 'Juhardi', 'Hamsyah', 'juhardihamsyah@gmail.com', '', '', 'en', 'https://lh3.googleusercontent.com/-b9_tQNiOFTQ/AAAAAAAAAAI/AAAAAAAAABI/4IgSY3-OgbI/photo.jpg', 'https://plus.google.com/112194221894475409900', '2018-07-26 12:19:53', '2018-07-26 13:41:03', '', 'aktif', '', '', 'user.png'),
(10, 'google', '113703384882308782548', 'herianto', 'yunus', 'heri.unsada@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'laki-laki', 'en', 'https://lh5.googleusercontent.com/-MTgZItsHAAM/AAAAAAAAAAI/AAAAAAAAaZ4/hXoZ_NyYuh0/photo.jpg', 'https://plus.google.com/113703384882308782548', '2018-07-27 06:11:11', '2018-07-27 06:11:11', '', 'aktif', 'bhghgh', 'hghgh', 'user.png'),
(11, 'google', '107094077173178066846', 'Naomi', 'Gus Kerinda', 'naomigusks@gmail.com', 'e4e4dece4385d3850f9253ee97e6bf70', 'perempuan', 'in', 'https://lh3.googleusercontent.com/-enU0Ncqz1hk/AAAAAAAAAAI/AAAAAAAAATs/XQVFG3JFgXI/photo.jpg', 'https://plus.google.com/107094077173178066846', '2018-07-27 14:56:33', '2018-07-27 14:56:33', '', 'daftar', 'Tambun Utara', '08778026955', 'user.png'),
(12, 'google', '105640085767689235314', 'Auctioner', 'test02', 'auctionertest02@gmail.com', '', '', 'en', 'https://lh6.googleusercontent.com/-8XoogdGJOMg/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7qswJ7mncudadbK_2bzF2omXa396w/mo/photo.jpg', '', '2018-07-28 13:19:29', '2018-07-29 09:34:51', '', 'daftar', '', '', 'user.png'),
(13, 'google', '108516650027525810270', 'bidder', 'test', 'biddertesting01@gmail.com', '', '', 'en', 'https://lh5.googleusercontent.com/-fTfjZ2eMC68/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7o-zov6xe0bJPrNU7FdLAaelVXbPw/mo/photo.jpg', '', '2018-07-29 11:20:29', '2018-07-29 11:21:27', '', 'daftar', '', '', 'user.png'),
(14, 'google', '115113261780660877498', 'bidder', 'test', 'biddertesting02@gmail.com', '3f787b20d01ae14021259724d43faf94', 'laki-laki', 'en', 'https://lh6.googleusercontent.com/-maSv73EWJWo/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7oOykDVXxYJxGh_3mTzTxAxJFsFrQ/mo/photo.jpg', '', '2018-07-29 18:21:51', '2018-07-30 18:03:41', '', 'aktif', 'Jakarta Utara', '0218877245', 'user.png'),
(15, 'google', '100927878723444844140', 'bidder', 'testing', 'biddertesting03@gmail.com', '3f787b20d01ae14021259724d43faf94', 'perempuan', 'en', 'https://lh6.googleusercontent.com/-I8ViYE8r5a8/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7qt037lLochFfik2ZlfCzzmKc5dxA/mo/photo.jpg', '', '2018-07-29 20:21:14', '2018-07-31 08:55:56', '', 'aktif', 'Jakarta Selatan', '021974537', 'user.png'),
(16, 'google', '110380479192630514049', 'bidder', 'bimbingan', 'bidderbimbingan01@gmail.com', 'ad556d63e9333734ab1fd7e76f753269', 'laki-laki', 'en', 'https://lh4.googleusercontent.com/-4g9yCKme7rY/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7qKJ2uWTeJYmvDTTjnAOAnlQCQHmw/mo/photo.jpg', '', '2018-07-31 13:21:06', '2018-08-08 14:36:11', '', 'aktif', '', '02189132432', 'user.png'),
(17, 'google', '117193650012864029243', 'Muhammad', 'Fauzan', 'mizourov01@gmail.com', 'ef38b75e5463fcba0d5b3f56580ccfc2', 'laki-laki', 'in', 'https://lh3.googleusercontent.com/-xQomUP1i6-8/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7pMb-8S8xlTE6uH10Bwawzaz4h-FA/mo/photo.jpg', 'https://plus.google.com/117193650012864029243', '2018-08-04 16:01:29', '2018-08-04 16:01:29', '', 'daftar', 'Taman Wisma Asri, Blok G21 no.12', '081382950809', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abe_admin`
--
ALTER TABLE `abe_admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `abe_deposit`
--
ALTER TABLE `abe_deposit`
  ADD PRIMARY KEY (`id_deposit`);

--
-- Indexes for table `abe_foto_produk`
--
ALTER TABLE `abe_foto_produk`
  ADD PRIMARY KEY (`id_foto_produk`);

--
-- Indexes for table `abe_invoice`
--
ALTER TABLE `abe_invoice`
  ADD PRIMARY KEY (`id_invoice`);

--
-- Indexes for table `abe_kategori`
--
ALTER TABLE `abe_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `abe_kategori_klik`
--
ALTER TABLE `abe_kategori_klik`
  ADD PRIMARY KEY (`id_kategori_klik`);

--
-- Indexes for table `abe_lelang_bidder`
--
ALTER TABLE `abe_lelang_bidder`
  ADD PRIMARY KEY (`id_lelang_bidder`);

--
-- Indexes for table `abe_pelelang`
--
ALTER TABLE `abe_pelelang`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `abe_produk`
--
ALTER TABLE `abe_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `abe_rekomendasi`
--
ALTER TABLE `abe_rekomendasi`
  ADD PRIMARY KEY (`id_rekomendasi`);

--
-- Indexes for table `abe_review`
--
ALTER TABLE `abe_review`
  ADD PRIMARY KEY (`id_review`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abe_admin`
--
ALTER TABLE `abe_admin`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `abe_deposit`
--
ALTER TABLE `abe_deposit`
  MODIFY `id_deposit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `abe_foto_produk`
--
ALTER TABLE `abe_foto_produk`
  MODIFY `id_foto_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `abe_invoice`
--
ALTER TABLE `abe_invoice`
  MODIFY `id_invoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `abe_kategori`
--
ALTER TABLE `abe_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `abe_kategori_klik`
--
ALTER TABLE `abe_kategori_klik`
  MODIFY `id_kategori_klik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `abe_lelang_bidder`
--
ALTER TABLE `abe_lelang_bidder`
  MODIFY `id_lelang_bidder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `abe_pelelang`
--
ALTER TABLE `abe_pelelang`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `abe_produk`
--
ALTER TABLE `abe_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `abe_rekomendasi`
--
ALTER TABLE `abe_rekomendasi`
  MODIFY `id_rekomendasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `abe_review`
--
ALTER TABLE `abe_review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
