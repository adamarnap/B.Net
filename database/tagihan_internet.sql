-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 03:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tagihan_internet`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kas`
--

CREATE TABLE `tb_kas` (
  `id_kas` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `tgl_kas` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `penerimaan` int(11) NOT NULL,
  `pengeluaran` int(11) NOT NULL,
  `jenis_kas` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `id_tagihan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kas`
--

INSERT INTO `tb_kas` (`id_kas`, `id_transaksi`, `tgl_kas`, `keterangan`, `penerimaan`, `pengeluaran`, `jenis_kas`, `status`, `id_tagihan`) VALUES
(68, 0, '2022-10-12', 'Pembayaran Internet AN. Alvind Febri, Paket 2 Mbps', 100000, 0, '', 1, 0),
(69, 0, '2022-10-12', 'Pembayaran Internet AN. Yogi Suartawan, Paket 1 Mbps', 50000, 0, '', 1, 0),
(70, 0, '2022-10-12', 'Pembayaran Internet AN. Rafly Yansyah Efendi, Paket 2 Mbps', 100000, 0, '', 1, 0),
(71, 0, '2022-10-12', 'Pembayaran Internet AN. Oka Sucitra, Paket 1 Mbps', 50000, 0, '', 1, 0),
(72, 0, '2022-10-10', 'Kabel ', 0, 150000, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket`
--

CREATE TABLE `tb_paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `keterangan_paket` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_paket`
--

INSERT INTO `tb_paket` (`id_paket`, `nama_paket`, `harga`, `keterangan_paket`) VALUES
(7, '1 Mbps', 100000, 'psum dolor sit amet consectetur adipisicing elit. Soluta aliquid, architecto magni ducimus enim possimus quibusdam error ad iusto assumenda consequuntur iure aperiam voluptatum magnam placeat n'),
(8, '2 Mbps', 200000, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid, architecto magni ducimus enim possimus quibusdam error ad iusto assumenda consequuntur iure aperiam voluptatum magnam placeat n'),
(9, '3 Mbps', 300000, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid, architecto magni ducimus enim possimus quibusdam error ad iusto assumenda consequuntur iure aperiam voluptatum magnam placeat n'),
(10, '4 Mbps', 400000, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid, architecto magni ducimus enim possimus quibusdam error ad iusto assumenda consequuntur iure aperiam voluptatum magnam placeat n'),
(11, '7 Mbps', 400000, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid, architecto magni ducimus enim possimus quibusdam error ad iusto assumenda consequuntur iure aperiam voluptatum magnam placeat n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `paket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telp`, `paket`) VALUES
(2, 'Alvind Febri', 'Yogyakarta', '081245676754', 2),
(4, 'Oka sucitra', 'Bali', '087789876543', 1),
(5, 'Rafly Yansyah Efendi', 'Yogyakarta', '081315029099', 2),
(6, 'Yogi Suartawanto', 'Bali', '085781480396', 7),
(7, 'Gus adi ', 'jogja', '081390340376', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian`
--

CREATE TABLE `tb_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nominal_paket` varchar(50) NOT NULL,
  `harga_paket` varchar(50) NOT NULL,
  `no_tlp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pembelian`
--

INSERT INTO `tb_pembelian` (`id_pembelian`, `nama`, `nominal_paket`, `harga_paket`, `no_tlp`, `email`, `alamat`) VALUES
(3, 'Nata', '1 Mbps', '100000', '08123545657', 'contohDaftar@mail.com', 'DIY'),
(4, 'Nata', '1 Mbps', '100000', '08123545657', 'contohDaftar@mail.com', 'DIY'),
(5, 'Nata', '1 Mbps', '100000', '08123545657', 'nata@gmail.com', 'Denpasar, Bali'),
(6, 'Nata', '1 Mbps', '100000', '08123545657', 'nata@gmail.com', 'Denpasar, Bali'),
(7, 'Adam', '1 Mbps', '100000', '08123456789', 'email@email.com', 'Ngaglik, Sleman, DIY'),
(8, 'Adam', '1 Mbps', '100000', '08123456789', 'email@email.com', 'Ngaglik, Sleman, DIY'),
(9, 'Adam', '1 Mbps', '100000', '08123456789', 'email@email.com', 'Ngaglik, Sleman, DIY'),
(10, 'Nata', '1 Mbps', '100000', '08123545657', 'contohDaftar@mail.com', 'DIY'),
(11, 'Adam', '1 Mbps', '100000', '08123456789', 'email@email.com', 'Ngaglik, Sleman, DIY'),
(12, 'Nata', '1 Mbps', '100000', '08123545657', 'contohDaftar@mail.com', 'fhfdghfg'),
(13, 'Nata', '1 Mbps', '100000', '08123545657', 'contohDaftar@mail.com', 'fhfdghfg'),
(14, 'Nata', '1 Mbps', '100000', '08123545657', 'contohDaftar@mail.com', 'fhfdghfg'),
(15, 'Nata', '1 Mbps', '100000', '08123545657', 'contohDaftar@mail.com', 'fhfdghfg'),
(16, 'Nata', '1 Mbps', '100000', '08123545657', 'contohDaftar@mail.com', 'fhfdghfg'),
(17, 'Nata', '1 Mbps', '100000', '08123545657', 'contohDaftar@mail.com', 'fhfdghfg'),
(18, 'Adnan', '1 Mbps', '100000', '0835426565676', 'adnan@gmail.com', 'Tangerang'),
(22, 'Rehan Dikaghgbg', '2 Mbps', '200000', '08123545657', 'contohDaftar@mail.com', 'Casagrande, Catur Tunggal'),
(23, 'Gus adi ', '1 Mbps', '100000', '08123545657', 'gusadi@gmail.com', 'asdasdasdasdasdasdsadasdasdas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile`
--

CREATE TABLE `tb_profile` (
  `nama_sekolah` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `website` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `bendahara` varchar(100) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `ktu` varchar(255) NOT NULL,
  `nip_ktu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profile`
--

INSERT INTO `tb_profile` (`nama_sekolah`, `alamat`, `telpon`, `website`, `kota`, `bendahara`, `nip`, `foto`, `ktu`, `nip_ktu`) VALUES
('Banjar Net', 'JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '1968890993933434', '—Pngtree—wifi vector icon_4236405.png', 'ABDUL MUIS', '343434343434');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan`
--

CREATE TABLE `tb_tagihan` (
  `id_tagihan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `bulan_tahun` varchar(30) NOT NULL,
  `jml_bayar` int(11) NOT NULL,
  `terbayar` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `status_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tagihan`
--

INSERT INTO `tb_tagihan` (`id_tagihan`, `id_pelanggan`, `bulan_tahun`, `jml_bayar`, `terbayar`, `tgl_bayar`, `status_bayar`) VALUES
(18, 2, '102020', 100000, 100000, '2020-10-28', 1),
(19, 4, '102020', 50000, 50000, '2022-10-12', 1),
(20, 5, '102020', 100000, 100000, '2022-10-12', 1),
(21, 6, '102020', 50000, 50000, '2022-10-12', 1),
(22, 6, '102022', 100000, 0, '0000-00-00', 0),
(23, 7, '102022', 100000, 0, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `nama_user`, `password`, `level`, `foto`, `id_pelanggan`) VALUES
(1, 'admin', 'Pranata Gitaswara', 'admin', 'admin', 'kisspng-computer-icons-user-clip-art-user-5abf13db5624e4.1771742215224718993529.png', 0),
(3, 'Alvin', 'Alvind Febri', 'alvin', 'user', 'kisspng-computer-icons-user-clip-art-user-5abf13db5624e4.1771742215224718993529.png', 2),
(5, 'Oka', 'Oka sucitra', 'oka', 'user', 'kisspng-computer-icons-user-clip-art-user-5abf13db5624e4.1771742215224718993529.png', 4),
(6, 'Rafly', 'Rafly Yansyah Efendi', 'rafly', 'user', 'kisspng-computer-icons-user-clip-art-user-5abf13db5624e4.1771742215224718993529.png', 5),
(7, 'Yogi', 'Yogi suartawan', 'yogi', 'user', 'kisspng-computer-icons-user-clip-art-user-5abf13db5624e4.1771742215224718993529.png', 6),
(8, 'gus adi', 'Gus adi ', '1234', 'user', 'kisspng-computer-icons-user-clip-art-user-5abf13db5624e4.1771742215224718993529.png', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kas`
--
ALTER TABLE `tb_kas`
  ADD PRIMARY KEY (`id_kas`);

--
-- Indexes for table `tb_paket`
--
ALTER TABLE `tb_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  ADD PRIMARY KEY (`id_tagihan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kas`
--
ALTER TABLE `tb_kas`
  MODIFY `id_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tb_paket`
--
ALTER TABLE `tb_paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
