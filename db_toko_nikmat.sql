-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 03:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko_nikmat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_about`
--

CREATE TABLE `tb_about` (
  `id_about` int(11) NOT NULL,
  `foto_about` varchar(100) NOT NULL,
  `isi_about` text NOT NULL,
  `atm` varchar(25) NOT NULL,
  `telpon_toko` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_about`
--

INSERT INTO `tb_about` (`id_about`, `foto_about`, `isi_about`, `atm`, `telpon_toko`) VALUES
(2, 'FA-1689493355-IMG_20230703_132949.jpg', 'Kami dari Toko Elektronik Nikmat Seruyan, menyediakan berbagai produk-produk elektronik keperluan rumah tangga, seperti Kipas Angin, Mesin Cuci, Lemari Es dan masih banyak lagi.\r\n\r\nAnda dapat melakukan pemesanan melalui Website ini atau datang langsung ke Toko Kami yang Ber-alamat dijalan Ais Nasution, anda juga dapat menghubungi kami untuk melakukan pemesanan melalui nomor yang tertera di Website ini.\r\n\r\nUntuk pemesanan melalui Website ini anda dapat memilih 1 dari 3 metode pembayaran yang telah kami sediakan, yaitu \r\n1. Bayar ditempat, dimana anda datang secara langsung ke Toko kami dan melakukan pembayaran sekaligus dengan pengambilan barang. \r\n2. Transfer, dimana anda melakukan pembayaran secara online, setelah pembayaran anda dapat mengubungi kami apakah anda ingin mengambil barang secara langsung atau diantar ke alamat anda.\r\n3. Cash On Delivery (COD), barang akan kami antar ke alamat anda dan pembayaran akan dilakukan ketika barang telah diterima.', 'xxxxxxxxxxxxx/BCA', '084376481696');

-- --------------------------------------------------------

--
-- Table structure for table `tb_balas_komen`
--

CREATE TABLE `tb_balas_komen` (
  `id_balas` int(11) NOT NULL,
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_balas` date NOT NULL,
  `isi_balas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_balas_komen`
--

INSERT INTO `tb_balas_komen` (`id_balas`, `id_komentar`, `id_user`, `tgl_balas`, `isi_balas`) VALUES
(1, 1, 3, '2023-06-29', 'aku balas ini yah'),
(2, 1, 3, '2023-06-29', 'aku balas ini yah'),
(3, 1, 3, '2023-06-29', 'aku balas ini yah'),
(4, 3, 3, '2023-06-29', 'gua mau komen tadi'),
(5, 2, 3, '2023-06-29', 'gak niat beli saya'),
(6, 4, 1, '2023-06-29', 'numpang lagi\r\n'),
(7, 4, 3, '2023-07-08', 'numpang komen juga');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `kode`, `nama_barang`, `id_kategori`, `deskripsi`, `harga`, `diskon`, `stok`) VALUES
(2, 'K0001', 'Kipas Angin Besi', 1, 'Kipas Angin dari besi.', 2250000, 15, 3),
(3, 'MC0001', 'Mesin Cuci 250cc', 4, 'Mesin Cuci dengan tenaga mesin 250cc.', 2000000, 35, 18),
(4, 'S0001', 'Salon Dangdut', 2, 'Salon standar buat dangdutan.', 1000000, 10, 14),
(5, 'K0002', 'Kipas Angin mini', 1, 'kipas angin berukuran kecil portable', 50000, 0, 10),
(6, 'MC0002', 'Mesin Cuci turbo 2k23', 4, 'mesin cuci tenaga turbo terbaru.', 5000000, 5, 10),
(7, 'S0002', 'Salon Supersonik ', 2, 'Salon dengan tenaga suara supersonik.', 4500000, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_masuk`
--

CREATE TABLE `tb_barang_masuk` (
  `id_masuk` int(11) NOT NULL,
  `id_beli` int(11) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang_masuk`
--

INSERT INTO `tb_barang_masuk` (`id_masuk`, `id_beli`, `tgl_masuk`, `id_user`) VALUES
(1, 5, '2023-05-31', 3),
(2, 6, '2023-06-02', 3),
(3, 7, '2023-06-02', 3),
(4, 8, '2023-06-02', 3),
(5, 9, '2023-06-02', 3),
(6, 10, '2023-06-02', 3),
(7, 11, '2023-06-02', 3),
(8, 12, '2023-07-07', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_beli_stok`
--

CREATE TABLE `tb_beli_stok` (
  `id_beli` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_beli_stok`
--

INSERT INTO `tb_beli_stok` (`id_beli`, `id_user`, `id_barang`, `jumlah`, `harga_satuan`, `tgl`, `status`) VALUES
(5, 3, 2, 6, 800000, '2023-05-31', 'Pembelian Selesai'),
(6, 3, 6, 15, 2500000, '2023-06-02', 'Pembelian Selesai'),
(7, 3, 2, 16, 500000, '2023-06-02', 'Pembelian Selesai'),
(8, 3, 5, 14, 35000, '2023-06-02', 'Pembelian Selesai'),
(9, 3, 3, 14, 1000000, '2023-06-02', 'Pembelian Selesai'),
(10, 3, 4, 17, 750000, '2023-06-02', 'Pembelian Selesai'),
(11, 3, 7, 19, 1500000, '2023-06-02', 'Pembelian Selesai'),
(12, 2, 3, 15, 2000000, '2023-07-06', 'Pembelian Selesai'),
(14, 2, 5, 25, 100000, '2023-07-08', 'Menunggu Konfirmasi Pemilik'),
(16, 3, 2, 15, 300000, '2023-07-18', 'Menunggu Konfirmasi Pemilik'),
(17, 3, 2, 6, 250000, '2023-07-18', 'Menunggu Konfirmasi Pemilik');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bookmark`
--

CREATE TABLE `tb_bookmark` (
  `id_bookmark` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bookmark`
--

INSERT INTO `tb_bookmark` (`id_bookmark`, `id_barang`, `id_user`) VALUES
(2, 7, 1),
(3, 4, 1),
(6, 7, 5),
(9, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_foto_barang`
--

CREATE TABLE `tb_foto_barang` (
  `id_foto` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_foto_barang`
--

INSERT INTO `tb_foto_barang` (`id_foto`, `id_barang`, `foto`) VALUES
(28, 2, 'FB-1688809508-kipasbesi.jpeg'),
(29, 5, 'FB-1688809562-kipasmini.jpg'),
(30, 3, 'FB-1688809570-mseincuci250cc.jpg'),
(31, 6, 'FB-1688809576-mesincuci2k23.jpg'),
(32, 4, 'FB-1688809583-salondangdut.jpg'),
(33, 7, 'FB-1688809588-salonsupersonik.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Kipas Angin'),
(2, 'Salon'),
(4, 'Mesin Cuci');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `tingkat_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `tingkat_kelas`, `nama_kelas`) VALUES
(1, 1, 'pemilik'),
(2, 2, 'pegawai'),
(3, 3, 'pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_keranjang`
--

CREATE TABLE `tb_keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pesan` int(11) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_keranjang`
--

INSERT INTO `tb_keranjang` (`id_keranjang`, `id_barang`, `id_user`, `id_pesan`, `jumlah`, `total`, `status`) VALUES
(18, 7, 1, 9, 2, 8730000, 'Checkout'),
(22, 6, 1, 10, 1, 4750000, 'Checkout'),
(23, 5, 1, 9, 1, 50000, 'Checkout'),
(24, 5, 1, 11, 3, 150000, 'Checkout'),
(25, 7, 1, 11, 2, 8730000, 'Checkout'),
(26, 7, 3, 12, 2, 8730000, 'Checkout'),
(27, 3, 3, 12, 1, 1300000, 'Checkout'),
(28, 3, 3, 13, 1, 1300000, 'Checkout'),
(29, 2, 3, 13, 3, 5737500, 'Checkout'),
(30, 2, 1, 15, 2, 3825000, 'Checkout'),
(31, 4, 1, 17, 1, 900000, 'Checkout'),
(32, 3, 3, 14, 1, 1300000, 'Checkout'),
(33, 7, 1, 18, 1, 4365000, 'Checkout'),
(34, 6, 1, 20, 1, 4750000, 'Checkout'),
(35, 3, 1, 23, 2, 2600000, 'Checkout'),
(36, 5, 1, 24, 1, 50000, 'Checkout'),
(41, 4, 1, 28, 1, 900000, 'Checkout'),
(43, 3, 1, 30, 1, 1300000, 'Checkout'),
(44, 4, 1, 31, 1, 900000, 'Checkout'),
(45, 2, 1, 32, 1, 1912500, 'Checkout'),
(46, 2, 3, 33, 2, 3825000, 'Checkout'),
(47, 3, 3, 34, 1, 1300000, 'Checkout'),
(48, 6, 3, 35, 1, 4750000, 'Checkout'),
(49, 2, 1, 37, 1, 1912500, 'Checkout'),
(50, 4, 1, 40, 1, 900000, 'Checkout'),
(51, 3, 3, 36, 1, 1300000, 'Checkout'),
(52, 7, 1, 40, 1, 4365000, 'Checkout'),
(53, 3, 1, 41, 1, 1300000, 'Checkout');

-- --------------------------------------------------------

--
-- Table structure for table `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_komen` date NOT NULL,
  `isi_komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_komentar`
--

INSERT INTO `tb_komentar` (`id_komentar`, `id_user`, `id_barang`, `tgl_komen`, `isi_komentar`) VALUES
(1, 3, 6, '2023-06-29', 'lumayan barangnya \r\nGGWP'),
(2, 3, 6, '2023-06-29', 'lumayan barangnya \r\nGGWP'),
(3, 3, 6, '2023-06-29', 'aku komen lagi nih'),
(4, 1, 2, '2023-06-29', 'numpang komen'),
(6, 3, 2, '2023-07-08', 'coba komen');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konfirmasi`
--

CREATE TABLE `tb_konfirmasi` (
  `id_konfirmasi` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_konfirmasi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_konfirmasi`
--

INSERT INTO `tb_konfirmasi` (`id_konfirmasi`, `id_pesan`, `id_user`, `tgl_konfirmasi`) VALUES
(1, 9, 3, '2023-06-08'),
(2, 10, 3, '2023-06-26'),
(3, 11, 3, '2023-06-28'),
(4, 12, 3, '2023-06-29'),
(5, 13, 3, '2023-06-29'),
(6, 15, 3, '2023-06-30'),
(7, 17, 3, '2023-06-30'),
(8, 18, 3, '2023-06-30'),
(9, 20, 3, '2023-06-30'),
(10, 23, 3, '2023-07-08'),
(11, 24, 3, '2023-07-08'),
(12, 28, 3, '2023-07-08'),
(13, 30, 3, '2023-07-08'),
(14, 31, 3, '2023-07-08'),
(15, 14, 3, '2023-07-08'),
(16, 33, 3, '2023-07-08'),
(17, 34, 3, '2023-07-08'),
(18, 35, 3, '2023-07-08'),
(19, 37, 3, '2023-07-09'),
(20, 36, 3, '2023-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_metode_bayar`
--

CREATE TABLE `tb_metode_bayar` (
  `id_metode` int(11) NOT NULL,
  `nama_metode` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_metode_bayar`
--

INSERT INTO `tb_metode_bayar` (`id_metode`, `nama_metode`) VALUES
(2, 'Bayar Ditempat'),
(3, 'Transfer'),
(4, 'Cash On Delivery (COD)'),
(5, 'Belum Dipilih');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_bayar` date NOT NULL,
  `tgl_terima` date NOT NULL,
  `id_metode` int(11) DEFAULT NULL,
  `bukti_bayar` varchar(100) DEFAULT NULL,
  `status_pesan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesan`
--

INSERT INTO `tb_pesan` (`id_pesan`, `id_user`, `total_harga`, `tgl_pesan`, `tgl_bayar`, `tgl_terima`, `id_metode`, `bukti_bayar`, `status_pesan`) VALUES
(9, 1, 8780000, '2023-06-07', '0000-00-00', '2023-06-08', 2, NULL, 'Transaksi Selesai'),
(10, 1, 4750000, '2023-06-17', '2023-06-26', '2023-06-26', 3, 'BB-1687768721-sfsfd.PNG', 'Transaksi Selesai'),
(11, 1, 8880000, '2023-06-28', '0000-00-00', '2023-06-28', 2, NULL, 'Transaksi Selesai'),
(12, 3, 10030000, '2023-06-29', '2023-06-29', '2023-06-29', 2, NULL, 'Barang dalam perjalanan'),
(13, 3, 7037500, '2023-06-29', '2023-06-29', '2023-06-29', 2, NULL, 'Transaksi Selesai'),
(14, 3, 1300000, '2023-07-08', '2023-07-08', '2023-07-08', 2, NULL, 'Transaksi Selesai'),
(15, 1, 3825000, '2023-06-30', '0000-00-00', '2023-06-30', 2, NULL, 'Transaksi Selesai'),
(17, 1, 900000, '2023-06-30', '0000-00-00', '2023-06-30', 3, NULL, 'Transaksi Selesai'),
(18, 1, 4365000, '2023-06-30', '2023-06-30', '2023-06-30', 3, 'BB-1688110470-78122272_2681081158881554_7492015435018141696_n.jpg', 'Transaksi Selesai'),
(20, 1, 4750000, '2023-06-30', '0000-00-00', '2023-06-30', 4, NULL, 'Transaksi Selesai'),
(21, 2, 0, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, 'keranjang'),
(23, 1, 2600000, '2023-07-08', '0000-00-00', '2023-07-08', 2, NULL, 'Transaksi Selesai'),
(24, 1, 50000, '2023-07-08', '0000-00-00', '2023-07-08', 4, NULL, 'Transaksi Selesai'),
(28, 1, 900000, '2023-07-08', '2023-07-08', '0000-00-00', 3, 'BB-1688806164-28.png', 'Barang dalam perjalanan'),
(30, 1, 1300000, '2023-07-08', '0000-00-00', '0000-00-00', 4, NULL, 'Barang dalam perjalanan'),
(31, 1, 900000, '2023-07-08', '0000-00-00', '0000-00-00', 4, NULL, 'Barang dalam perjalanan'),
(32, 1, 1912500, '2023-07-08', '0000-00-00', '0000-00-00', 2, NULL, 'Pesanan Ditolak'),
(33, 3, 3825000, '2023-07-08', '2023-07-08', '2023-07-08', 2, NULL, 'Transaksi Selesai'),
(34, 3, 1300000, '2023-07-08', '2023-07-08', '2023-07-08', 2, NULL, 'Transaksi Selesai'),
(35, 3, 4750000, '2023-07-08', '2023-07-08', '2023-07-08', 2, NULL, 'Transaksi Selesai'),
(36, 3, 1300000, '2023-07-09', '2023-07-09', '2023-07-09', 2, NULL, 'Transaksi Selesai'),
(37, 1, 1912500, '2023-07-08', '0000-00-00', '2023-07-15', 2, NULL, 'Transaksi Selesai'),
(39, 3, 0, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, 'keranjang'),
(40, 1, 5265000, '2023-07-15', '0000-00-00', '0000-00-00', 3, NULL, 'Menunggu Bukti Pembayaran'),
(41, 1, 1300000, '2023-07-19', '0000-00-00', '0000-00-00', 2, NULL, 'Menunggu Konfirmasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rating`
--

CREATE TABLE `tb_rating` (
  `id_rating` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rating`
--

INSERT INTO `tb_rating` (`id_rating`, `id_barang`, `id_user`, `rating`) VALUES
(1, 7, 1, NULL),
(3, 2, 1, 4),
(8, 7, 3, NULL),
(16, 4, 1, NULL),
(18, 3, 3, NULL),
(21, 6, 1, NULL),
(24, 3, 1, NULL),
(26, 5, 1, NULL),
(37, 2, 3, NULL),
(57, 6, 3, NULL),
(71, 5, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_retur`
--

CREATE TABLE `tb_retur` (
  `id_retur` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `alasan` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `tgl_retur` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_retur`
--

INSERT INTO `tb_retur` (`id_retur`, `id_user`, `id_barang`, `jumlah`, `alasan`, `status`, `tgl_retur`) VALUES
(2, 1, 2, 1, 'barang rusak\r\n', 'Retur Selesai', '2023-06-03'),
(3, 1, 6, 1, 'Mesin terlalu OP', 'Retur Ditolak', '2023-06-04'),
(4, 1, 7, 1, 'Terlalu Op sampe bisa menembak pesawat jatuh', 'Retur Selesai', '2023-06-04'),
(5, 1, 5, 1, 'kwwkwk', 'Retur Selesai', '2023-06-30'),
(7, 1, 3, 1, 'adada', 'Retur Ditolak', '2023-07-09'),
(8, 1, 7, 1, 'adadads', 'Retur Selesai', '2023-07-09'),
(9, 1, 4, 1, 'waqqs', 'Menunggu Pengembalian Barang', '2023-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff_retur`
--

CREATE TABLE `tb_staff_retur` (
  `id_staff` int(11) NOT NULL,
  `id_retur` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_staff_retur`
--

INSERT INTO `tb_staff_retur` (`id_staff`, `id_retur`, `id_user`, `tgl`) VALUES
(1, 2, 3, '2023-06-04'),
(2, 3, 3, '2023-06-04'),
(3, 5, 3, '2023-06-30'),
(4, 4, 3, '2023-07-03'),
(5, 8, 3, '2023-07-09'),
(6, 7, 3, '2023-07-09'),
(7, 9, 3, '2023-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok`
--

CREATE TABLE `tb_stok` (
  `id_stok` int(11) NOT NULL,
  `id_keranjang` int(11) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `stok_akhir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_stok`
--

INSERT INTO `tb_stok` (`id_stok`, `id_keranjang`, `stok_awal`, `stok_akhir`) VALUES
(1, 18, 17, 15),
(2, 23, 14, 13),
(3, 22, 13, 12),
(4, 24, 13, 10),
(5, 25, 15, 13),
(6, 26, 13, 11),
(7, 27, 11, 10),
(8, 28, 10, 9),
(9, 29, 11, 8),
(10, 30, 8, 6),
(11, 31, 17, 16),
(12, 33, 11, 10),
(13, 34, 12, 11),
(14, 35, 24, 22),
(15, 36, 11, 10),
(16, 41, 16, 15),
(17, 43, 22, 21),
(18, 44, 15, 14),
(19, 32, 21, 20),
(20, 46, 6, 4),
(21, 47, 20, 19),
(22, 48, 11, 10),
(23, 49, 4, 3),
(24, 51, 19, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok_masuk`
--

CREATE TABLE `tb_stok_masuk` (
  `id_stok_masuk` int(11) NOT NULL,
  `id_beli` int(11) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `stok_akhir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_stok_masuk`
--

INSERT INTO `tb_stok_masuk` (`id_stok_masuk`, `id_beli`, `stok_awal`, `stok_akhir`) VALUES
(1, 5, 0, 6),
(2, 6, 0, 15),
(3, 7, 0, 16),
(4, 8, 0, 14),
(5, 9, 0, 14),
(6, 10, 0, 17),
(7, 11, 0, 19),
(8, 12, 9, 24);

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok_retur`
--

CREATE TABLE `tb_stok_retur` (
  `id_stok_retur` int(11) NOT NULL,
  `id_retur` int(11) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `stok_akhir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_stok_retur`
--

INSERT INTO `tb_stok_retur` (`id_stok_retur`, `id_retur`, `stok_awal`, `stok_akhir`) VALUES
(1, 2, 0, 11),
(2, 5, 10, 11),
(3, 4, 10, 11),
(4, 8, 11, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tb_terima_retur`
--

CREATE TABLE `tb_terima_retur` (
  `id_terima` int(11) NOT NULL,
  `id_retur` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_terima_retur`
--

INSERT INTO `tb_terima_retur` (`id_terima`, `id_retur`, `id_user`, `tgl`) VALUES
(1, 2, 3, '2023-06-04'),
(2, 5, 3, '2023-06-30'),
(3, 4, 3, '2023-07-03'),
(4, 8, 3, '2023-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `alamat` varchar(75) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `foto` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `no_telpon`, `alamat`, `id_kelas`, `foto`) VALUES
(1, 'cobaan', 'cobaan21', 'coba2', '080808080808', 'Jl.coba2', 3, 'FP-1688191485-94491305_876108339572877_5776769165314490368_n.jpg'),
(2, 'saya admin', 'admins', 'ads', '087361528375', 'Jl.admin24', 1, 'FP-1689493042-271732028_4703408469744804_5625360441620403182_n.jpg'),
(3, 'orang karyawan', 'orangutan', 'orang', '099996782345', 'Jl.borneo', 2, 'FP-1688355722-90056933_2504354359817637_52241014366142464_n.jpg'),
(5, 'agus', '123', '123', '0844444444', 'jl', 3, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_about`
--
ALTER TABLE `tb_about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `tb_balas_komen`
--
ALTER TABLE `tb_balas_komen`
  ADD PRIMARY KEY (`id_balas`),
  ADD KEY `id_komentar` (`id_komentar`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tb_barang_masuk`
--
ALTER TABLE `tb_barang_masuk`
  ADD PRIMARY KEY (`id_masuk`),
  ADD KEY `id_beli` (`id_beli`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_beli_stok`
--
ALTER TABLE `tb_beli_stok`
  ADD PRIMARY KEY (`id_beli`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tb_bookmark`
--
ALTER TABLE `tb_bookmark`
  ADD PRIMARY KEY (`id_bookmark`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_foto_barang`
--
ALTER TABLE `tb_foto_barang`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pesan` (`id_pesan`);

--
-- Indexes for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tb_konfirmasi`
--
ALTER TABLE `tb_konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi`),
  ADD KEY `id_pesan` (`id_pesan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_metode_bayar`
--
ALTER TABLE `tb_metode_bayar`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_metode` (`id_metode`);

--
-- Indexes for table `tb_rating`
--
ALTER TABLE `tb_rating`
  ADD PRIMARY KEY (`id_rating`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_retur`
--
ALTER TABLE `tb_retur`
  ADD PRIMARY KEY (`id_retur`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tb_staff_retur`
--
ALTER TABLE `tb_staff_retur`
  ADD PRIMARY KEY (`id_staff`),
  ADD KEY `id_retur` (`id_retur`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_stok`
--
ALTER TABLE `tb_stok`
  ADD PRIMARY KEY (`id_stok`),
  ADD KEY `id_keranjang` (`id_keranjang`);

--
-- Indexes for table `tb_stok_masuk`
--
ALTER TABLE `tb_stok_masuk`
  ADD PRIMARY KEY (`id_stok_masuk`),
  ADD KEY `id_beli` (`id_beli`);

--
-- Indexes for table `tb_stok_retur`
--
ALTER TABLE `tb_stok_retur`
  ADD PRIMARY KEY (`id_stok_retur`),
  ADD KEY `id_retur` (`id_retur`);

--
-- Indexes for table `tb_terima_retur`
--
ALTER TABLE `tb_terima_retur`
  ADD PRIMARY KEY (`id_terima`),
  ADD KEY `id_retur` (`id_retur`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_about`
--
ALTER TABLE `tb_about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_balas_komen`
--
ALTER TABLE `tb_balas_komen`
  MODIFY `id_balas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_barang_masuk`
--
ALTER TABLE `tb_barang_masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_beli_stok`
--
ALTER TABLE `tb_beli_stok`
  MODIFY `id_beli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_bookmark`
--
ALTER TABLE `tb_bookmark`
  MODIFY `id_bookmark` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_foto_barang`
--
ALTER TABLE `tb_foto_barang`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_konfirmasi`
--
ALTER TABLE `tb_konfirmasi`
  MODIFY `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_metode_bayar`
--
ALTER TABLE `tb_metode_bayar`
  MODIFY `id_metode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_rating`
--
ALTER TABLE `tb_rating`
  MODIFY `id_rating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tb_retur`
--
ALTER TABLE `tb_retur`
  MODIFY `id_retur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_staff_retur`
--
ALTER TABLE `tb_staff_retur`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_stok`
--
ALTER TABLE `tb_stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_stok_masuk`
--
ALTER TABLE `tb_stok_masuk`
  MODIFY `id_stok_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_stok_retur`
--
ALTER TABLE `tb_stok_retur`
  MODIFY `id_stok_retur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_terima_retur`
--
ALTER TABLE `tb_terima_retur`
  MODIFY `id_terima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_balas_komen`
--
ALTER TABLE `tb_balas_komen`
  ADD CONSTRAINT `tb_balas_komen_ibfk_1` FOREIGN KEY (`id_komentar`) REFERENCES `tb_komentar` (`id_komentar`),
  ADD CONSTRAINT `tb_balas_komen_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `tb_barang_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`);

--
-- Constraints for table `tb_barang_masuk`
--
ALTER TABLE `tb_barang_masuk`
  ADD CONSTRAINT `tb_barang_masuk_ibfk_1` FOREIGN KEY (`id_beli`) REFERENCES `tb_beli_stok` (`id_beli`),
  ADD CONSTRAINT `tb_barang_masuk_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_beli_stok`
--
ALTER TABLE `tb_beli_stok`
  ADD CONSTRAINT `tb_beli_stok_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_beli_stok_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_bookmark`
--
ALTER TABLE `tb_bookmark`
  ADD CONSTRAINT `tb_bookmark_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_bookmark_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_foto_barang`
--
ALTER TABLE `tb_foto_barang`
  ADD CONSTRAINT `tb_foto_barang_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`);

--
-- Constraints for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD CONSTRAINT `tb_keranjang_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_keranjang_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_keranjang_ibfk_3` FOREIGN KEY (`id_pesan`) REFERENCES `tb_pesan` (`id_pesan`);

--
-- Constraints for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD CONSTRAINT `tb_komentar_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_komentar_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_konfirmasi`
--
ALTER TABLE `tb_konfirmasi`
  ADD CONSTRAINT `tb_konfirmasi_ibfk_1` FOREIGN KEY (`id_pesan`) REFERENCES `tb_pesan` (`id_pesan`),
  ADD CONSTRAINT `tb_konfirmasi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD CONSTRAINT `tb_pesan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_pesan_ibfk_2` FOREIGN KEY (`id_metode`) REFERENCES `tb_metode_bayar` (`id_metode`);

--
-- Constraints for table `tb_rating`
--
ALTER TABLE `tb_rating`
  ADD CONSTRAINT `tb_rating_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_rating_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_retur`
--
ALTER TABLE `tb_retur`
  ADD CONSTRAINT `tb_retur_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_retur_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_staff_retur`
--
ALTER TABLE `tb_staff_retur`
  ADD CONSTRAINT `tb_staff_retur_ibfk_1` FOREIGN KEY (`id_retur`) REFERENCES `tb_retur` (`id_retur`),
  ADD CONSTRAINT `tb_staff_retur_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_stok`
--
ALTER TABLE `tb_stok`
  ADD CONSTRAINT `tb_stok_ibfk_1` FOREIGN KEY (`id_keranjang`) REFERENCES `tb_keranjang` (`id_keranjang`);

--
-- Constraints for table `tb_stok_masuk`
--
ALTER TABLE `tb_stok_masuk`
  ADD CONSTRAINT `tb_stok_masuk_ibfk_1` FOREIGN KEY (`id_beli`) REFERENCES `tb_beli_stok` (`id_beli`);

--
-- Constraints for table `tb_stok_retur`
--
ALTER TABLE `tb_stok_retur`
  ADD CONSTRAINT `tb_stok_retur_ibfk_1` FOREIGN KEY (`id_retur`) REFERENCES `tb_retur` (`id_retur`);

--
-- Constraints for table `tb_terima_retur`
--
ALTER TABLE `tb_terima_retur`
  ADD CONSTRAINT `tb_terima_retur_ibfk_1` FOREIGN KEY (`id_retur`) REFERENCES `tb_retur` (`id_retur`),
  ADD CONSTRAINT `tb_terima_retur_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
