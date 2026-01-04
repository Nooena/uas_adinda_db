-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2026 at 12:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charming_noeen`
--
CREATE DATABASE IF NOT EXISTS `charming_noeen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `charming_noeen`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(64) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `jenis_barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `jenis_barang`) VALUES
(1, 'gelang', 'mutiara'),
(2, 'cincin', 'logam');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(64) NOT NULL,
  `nama_pembeli` varchar(255) DEFAULT NULL,
  `usn_tiktok` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `usn_tiktok`) VALUES
(1, 'muhammad irfan mufid', 'calon adin'),
(2, 'aya', 'shersizui');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(64) NOT NULL,
  `id_barang` int(64) DEFAULT NULL,
  `id_pembeli` int(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_transaksi_pembeli` (`id_pembeli`),
  ADD KEY `fk_transaksi_barang` (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(64) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_transaksi_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaksi_pembeli` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`);
--
-- Database: `database_slims`
--
CREATE DATABASE IF NOT EXISTS `database_slims` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `database_slims`;

-- --------------------------------------------------------

--
-- Table structure for table `backup_log`
--

CREATE TABLE `backup_log` (
  `backup_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `backup_time` datetime NOT NULL,
  `backup_file` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `gmd_id` int(3) DEFAULT NULL,
  `title` text NOT NULL,
  `sor` varchar(200) DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `isbn_issn` varchar(32) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) DEFAULT NULL,
  `collation` varchar(100) DEFAULT NULL,
  `series_title` varchar(200) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `language_id` char(5) DEFAULT 'en',
  `source` varchar(10) DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `file_att` varchar(255) DEFAULT NULL,
  `opac_hide` smallint(1) DEFAULT 0,
  `promoted` smallint(1) DEFAULT 0,
  `labels` text DEFAULT NULL,
  `frequency_id` int(11) NOT NULL DEFAULT 0,
  `spec_detail_info` text DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `media_type_id` int(11) DEFAULT NULL,
  `carrier_type_id` int(11) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio`
--

INSERT INTO `biblio` (`biblio_id`, `gmd_id`, `title`, `sor`, `edition`, `isbn_issn`, `publisher_id`, `publish_year`, `collation`, `series_title`, `call_number`, `language_id`, `source`, `publish_place_id`, `classification`, `notes`, `image`, `file_att`, `opac_hide`, `promoted`, `labels`, `frequency_id`, `spec_detail_info`, `content_type_id`, `media_type_id`, `carrier_type_id`, `input_date`, `last_update`, `uid`) VALUES
(1, 1, 'Value Your Life', 'Onggy Hianata', '-', '978 – 602 – 04 – 8690 – 1', 1, '2019', 'xxv, 225 hlm. : ilust. ; 21 cm', '-', '300 ONG v', 'id', NULL, NULL, 'NONE', 'Buku ini membahas tentang pengembangan diri,  membantu pembaca untuk mengenali diri sendiri, melepaskan beban hidup, dan mengoptimalkan pencapaian.', 'cover_value_your_life-31033936.jpeg', NULL, 0, 1, NULL, 0, '', 20, 7, 47, '2025-10-21 15:39:36', '2025-10-21 15:42:30', 1),
(2, 1, 'Pengantar Sosiologi Perkotaan', 'Damsar dan Indrayani', 'Edisi Pertama, Cetakan Kedua', '978-602-422-067-9', 2, '2019', 'x, 246 hlm. : ilust. ; 23 cm', '-', '300 DAM p', 'id', NULL, 1, '300 DAM p', 'Buku ini membahas suatu perspektif baru sosiologi terhadap berbagi fenomena kota dan masyarakatnya. – Catatan indeks halaman 239 sampai 244. - Catatan biografi halaman 245 sampai 246. - Catatan bibliografi halaman 223 sampai 237.', 'cover_pengantar_sosiologi_perkotaan-31105336.jpeg', NULL, 0, 1, NULL, 0, '', 20, 7, 47, '2025-10-24 10:44:16', '2025-10-24 10:53:36', 1),
(4, 1, 'Islam dan Ilmu Pengetahuan', 'Darori Amin', 'Cetakan Pertama', '979-9193-57-5', 3, '2000', 'xii, 312 hlm. : illust. ; 21 cm', '', '300 ABD i', 'id', NULL, 2, 'NONE', 'Buku ini memuat tentang islam dan jawa merupakan dua entitas yang berbeda. – Catatan bibliografi halaman 307. – Catatan biografi halaman 308 sampai 312.', 'cover_islam_dan_ilmu_pengetahuan-31110938.jpeg', NULL, 0, 1, NULL, 0, '', 20, 7, 47, '2025-10-24 11:09:37', '2025-10-27 16:57:10', 1),
(5, 1, 'Penilaian Autentik', 'Ridwan Abdullah Sani', 'Cetakan Pertama', '978-602-217-577-3', 4, '2016', 'viii, 388 hlm. : illust. ; 23 cm', '', '300 RID p', 'id', NULL, 3, 'NONE', 'Buku ini membahas penilaian autentik yang seharusnya digunakan dalam implementasi kurikulum berbasis kompetensi. – Catatan bibliografi halaman 359 sampai 366. – Catatan biografi halaman 386 sampai 387.', NULL, NULL, 0, 1, NULL, 0, '', 20, 7, 47, '2025-10-24 11:21:36', '2025-10-27 10:08:44', 1),
(6, 1, 'Bahasa Indonesia : Lihat Sekitar', 'Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia', 'Edisi Revisi', '978-623-118-358-3', 5, '2023', 'x, 222 hlm. : illust. ; 32 cm', '-', '300 KEM b', 'id', NULL, 3, 'NONE', 'Buku teks Pelajaran Bahasa Indonesia yang disusun untuk siswa SD/MI kelas IV. Materi dalam buku ini mengajarkan keterampilan berbahasa, membaca, menulis, dan berbicara dengan tema ”lihat sekitar”. – Catatan Biografi halaman 211 sampai 222. – Catatan indeks halaman 208 sampai 210. – Catatan Bibliografi halaman 206.', NULL, NULL, 0, 1, NULL, 0, '', 20, 7, 47, '2025-10-24 11:30:15', '2025-10-24 11:30:15', 1),
(7, 1, 'Amendemen Undang – Undang KPK (UU RI No. 19 Tahun 2019)', 'Redaksi Sinar Grafika', 'Cetakan Pertama', '978-979-007-897-0', 6, '2020', 'x, 320 hlm. : 19 cm', '', '300 AME', 'id', NULL, 3, 'NONE', 'Buku ini dilengkapi dengan UU RI No. 10 Tahun 2015, UU RI No. 30 Tahun 2002, UU RI No. 20 Tahun 2001, UU RI No. 31 Tahun 1999, PP RI No. 43 Tahun 2018, PP RI No. 14 Tahun 2017, PP RI No.103 Tahun 2012, PP RI No. 63 Tahun 2005, Perpres RI No. 54 Tahun 2018, Perpres RI No. 1 Tahun 2015', 'cover_amendemen_undang_undang_kpk_uu_ri_no_19_tahun_2019_-31102542.jpeg', NULL, 0, 1, NULL, 0, '', 20, 7, 47, '2025-10-27 10:25:42', '2025-10-27 10:25:42', 1),
(8, 1, 'Media Kebijakan : Sumber Informasi Kebijakan dalam Negeri', 'Kementerian Dalam Negeri Republik Indonesia, Badan Strategi Kebijakan Dalam Negeri', '', '2503-3352', 7, '2016 - 2022', '... jil. : illust. ; 30 cm', '', '300 MED b', 'id', NULL, 3, 'NONE', '', 'cover_media-kebijakan-sumber-informasi-kebijakan-dalam-negeri-20251027104408.jpg', NULL, 0, 1, NULL, 5, '', 20, 7, 47, '2025-10-27 10:44:08', '2025-10-27 10:44:08', 1),
(9, 21, 'Butter', '', '-', '-', 8, '2021', '1 disk (12 men.) : digital,  streo. ; 12 inc.', '-', '300 BTS b', 'en', NULL, 4, 'NONE', 'Berisi lagu Permission to Dance. – Dinyanyikan oleh BTS. – Lagu ini dinyanyikan menggunakan Bahasa Inggris.', NULL, NULL, 0, 1, NULL, 0, '-', 11, 1, 3, '2025-12-13 08:42:25', '2025-12-13 08:42:25', 1),
(10, 27, 'Atlas Ilmu Pengetahuan Sosial', 'Chalid Latif dan M.J Ridwan', '-', '979-8549-02-3', 9, '1998', '1 atlas (48 hlm.) : 30 peta : berwarna ; 24 cm.', '-', '300 CHA a', 'id', NULL, 3, 'NONE', 'Atlas ini dilengkapi dengan wawasan nusantara dan dunia, profil wilayah dan dunia', 'cover_atlas-ilmu-pengetahuan-sosial-20251215113949.jpg', NULL, 0, 1, NULL, 0, 'Berbagai Skala', 2, 7, 47, '2025-12-15 11:34:30', '2025-12-15 13:42:19', 1),
(11, 1, 'Elemental', 'Walt Disney Production dan Pixar Animation Studios, Peter Sohn, Denise Ream.', '-', '', 10, '2023', '1 Disk film (109 men.) : bersuara, berwarna.', '-', '300 WAL e', 'en', NULL, 5, 'NONE', 'Film ini membahas tentang membahas tentang perbedaan dan keberagaman, khususnya bagaimana individu dari latar belakang, budaya, dan identitas yang berbeda dapat saling memahami dan membangun hubungan, meskipun menghadapi batasan tradisi, prasangka, dan ekspektasi keluarga', 'cover_elemental-20251215123202.jpeg', NULL, 0, 1, NULL, 0, '-', NULL, NULL, NULL, '2025-12-15 11:49:24', '2025-12-15 13:46:45', 1),
(12, 21, 'Butter', 'Big Hit Music', '-', '-', 11, '2021', '1 disk (12 men.) : digital, streo. ; 12 inc.', '-', '300 BIG b', 'id', NULL, 4, 'NONE', 'Berisi lagu Permission to Dance. – Dinyanyikan\r\noleh BTS. – Lagu ini dinyanyikan menggunakan\r\nBahasa Inggris.', 'cover_butter-20251215120037.png', NULL, 0, 1, NULL, 0, '-', 11, 1, 3, '2025-12-15 12:00:37', '2025-12-15 13:43:03', 1),
(13, 18, '[Zayyan Selca]', 'One Cool Jacso Entertainment', '-', '-', 12, '2024', '-', '-', '300 ONE z', 'id', NULL, 6, 'NONE', 'Karya bahan grafis berbentuk photocard.', 'cover_-zayyan-selca-20251215121857.jpeg', NULL, 0, 1, NULL, 0, '-', 23, 7, 43, '2025-12-15 12:18:56', '2025-12-15 13:43:55', 1),
(14, 30, 'Shopee', 'Sea Limited', 'Versi 3.63.26', '-', 13, '2015', '1 file : Data dan Program elektronik ; 270,8 MB', '-', '300 SEA s', 'id', NULL, 7, 'NONE', 'Platform e-commerce atau belanja online yang menyediakan tempat bagi penjual untuk memasarkan produk dan pembeli untuk menemukan berbagai barang, mulai dari fashion, elektronik, kebutuhan  sehari-hari, hingga makanan.', 'cover_shopee-20251215123118.jpeg', NULL, 0, 1, NULL, 0, '-', 8, 9, 16, '2025-12-15 12:31:18', '2025-12-15 13:46:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_attachment`
--

CREATE TABLE `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `placement` enum('link','popup','embed') DEFAULT NULL,
  `access_type` enum('public','private') NOT NULL,
  `access_limit` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_author`
--

CREATE TABLE `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_author`
--

INSERT INTO `biblio_author` (`biblio_id`, `author_id`, `level`) VALUES
(1, 1, 1),
(2, 2, 1),
(2, 3, 2),
(4, 5, 1),
(4, 6, 2),
(4, 7, 2),
(5, 8, 1),
(6, 9, 1),
(8, 10, 1),
(10, 13, 1),
(10, 12, 2),
(11, 0, 1),
(12, 16, 1),
(13, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_custom`
--

CREATE TABLE `biblio_custom` (
  `biblio_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Table structure for table `biblio_log`
--

CREATE TABLE `biblio_log` (
  `biblio_log_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `realname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `affectedrow` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rawdata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_log`
--

INSERT INTO `biblio_log` (`biblio_log_id`, `biblio_id`, `user_id`, `realname`, `title`, `ip`, `action`, `affectedrow`, `rawdata`, `additional_information`, `date`) VALUES
(1, 1, 1, 'Admin', 'Value Your Life', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%221%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%221%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%221%22%3Bs%3A5%3A%22title%22%3Bs%3A15%3A%22Value+Your+Life%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A13%3A%22Onggy+Hianata%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A33%3A%22978+%E2%80%93+602+%E2%80%93+04+%E2%80%93+8690+%E2%80%93+1%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A21%3A%22Elex+Media+Computindo%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222019%22%3Bs%3A9%3A%22collation%22%3Bs%3A30%3A%22xxv%2C+225+hlm.+%3A+ilust.+%3B+21+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ONG+v%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A147%3A%22Buku+ini+membahas+tentang+pengembangan+diri%2C++membantu+pembaca+untuk+mengenali+diri+sendiri%2C+melepaskan+beban+hidup%2C+dan+mengoptimalkan+pencapaian.%22%3Bs%3A5%3A%22image%22%3Bs%3A35%3A%22cover_value_your_life-31033936.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Onggy+Hianata%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A17%3A%22Pengembangan+Diri%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22f869b682085ceb9e1a4669aae4291aa66b6699ac%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22440dfc4c5b9c0f508ec788b2c5d930e5676695ec%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%223b72be12f73f912bd5eff9e953fcfba7378be797%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%229a46968b6374ac7ed0e6811b834d1d801321d1ab%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-21+15%3A39%3A36%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-21+15%3A39%3A36%22%3B%7D', 'New data. Bibliography.', '2025-10-21 15:39:36'),
(2, 1, 1, 'Admin', 'Value Your Life', '::1', 'update', 'cover', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%221%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%221%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%221%22%3Bs%3A5%3A%22title%22%3Bs%3A15%3A%22Value+Your+Life%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A13%3A%22Onggy+Hianata%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A33%3A%22978+%E2%80%93+602+%E2%80%93+04+%E2%80%93+8690+%E2%80%93+1%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A21%3A%22Elex+Media+Computindo%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222019%22%3Bs%3A9%3A%22collation%22%3Bs%3A30%3A%22xxv%2C+225+hlm.+%3A+ilust.+%3B+21+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ONG+v%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A147%3A%22Buku+ini+membahas+tentang+pengembangan+diri%2C++membantu+pembaca+untuk+mengenali+diri+sendiri%2C+melepaskan+beban+hidup%2C+dan+mengoptimalkan+pencapaian.%22%3Bs%3A5%3A%22image%22%3Bs%3A35%3A%22cover_value_your_life-31033936.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Onggy+Hianata%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A17%3A%22Pengembangan+Diri%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22f869b682085ceb9e1a4669aae4291aa66b6699ac%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22440dfc4c5b9c0f508ec788b2c5d930e5676695ec%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%223b72be12f73f912bd5eff9e953fcfba7378be797%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%229a46968b6374ac7ed0e6811b834d1d801321d1ab%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-21+15%3A39%3A36%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-21+15%3A39%3A36%22%3B%7D', 'New data. Image. File: cover_value_your_life-31033936.jpeg', '2025-10-21 15:39:36'),
(3, 1, 1, 'Admin', 'Value Your Life', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%221%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%221%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%221%22%3Bs%3A5%3A%22title%22%3Bs%3A15%3A%22Value+Your+Life%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A13%3A%22Onggy+Hianata%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A33%3A%22978+%E2%80%93+602+%E2%80%93+04+%E2%80%93+8690+%E2%80%93+1%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A21%3A%22Elex+Media+Computindo%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222019%22%3Bs%3A9%3A%22collation%22%3Bs%3A30%3A%22xxv%2C+225+hlm.+%3A+ilust.+%3B+21+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ONG+v%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A147%3A%22Buku+ini+membahas+tentang+pengembangan+diri%2C++membantu+pembaca+untuk+mengenali+diri+sendiri%2C+melepaskan+beban+hidup%2C+dan+mengoptimalkan+pencapaian.%22%3Bs%3A5%3A%22image%22%3Bs%3A35%3A%22cover_value_your_life-31033936.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Onggy+Hianata%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A17%3A%22Pengembangan+Diri%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22f869b682085ceb9e1a4669aae4291aa66b6699ac%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22440dfc4c5b9c0f508ec788b2c5d930e5676695ec%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%223b72be12f73f912bd5eff9e953fcfba7378be797%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%229a46968b6374ac7ed0e6811b834d1d801321d1ab%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-21+15%3A39%3A36%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-21+15%3A39%3A36%22%3B%7D', 'New data. Author. Names: Onggy Hianata;', '2025-10-21 15:39:36'),
(4, 1, 1, 'Admin', 'Value Your Life', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%221%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%221%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%221%22%3Bs%3A5%3A%22title%22%3Bs%3A15%3A%22Value+Your+Life%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A13%3A%22Onggy+Hianata%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A33%3A%22978+%E2%80%93+602+%E2%80%93+04+%E2%80%93+8690+%E2%80%93+1%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A21%3A%22Elex+Media+Computindo%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222019%22%3Bs%3A9%3A%22collation%22%3Bs%3A30%3A%22xxv%2C+225+hlm.+%3A+ilust.+%3B+21+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ONG+v%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A147%3A%22Buku+ini+membahas+tentang+pengembangan+diri%2C++membantu+pembaca+untuk+mengenali+diri+sendiri%2C+melepaskan+beban+hidup%2C+dan+mengoptimalkan+pencapaian.%22%3Bs%3A5%3A%22image%22%3Bs%3A35%3A%22cover_value_your_life-31033936.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Onggy+Hianata%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A17%3A%22Pengembangan+Diri%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22f869b682085ceb9e1a4669aae4291aa66b6699ac%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22440dfc4c5b9c0f508ec788b2c5d930e5676695ec%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%223b72be12f73f912bd5eff9e953fcfba7378be797%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%229a46968b6374ac7ed0e6811b834d1d801321d1ab%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-21+15%3A39%3A36%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-21+15%3A39%3A36%22%3B%7D', 'New data. Subject. Names: Pengembangan Diri;', '2025-10-21 15:39:36'),
(5, 2, 1, 'Admin', 'Pengantar Sosiologi Perkotaan', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Pengantar+Sosiologi+Perkotaan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Damsar+dan+Indrayani%22%3Bs%3A7%3A%22edition%22%3Bs%3A28%3A%22Edisi+Pertama%2C+Cetakan+Kedua%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A6%3A%22Damsar%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A9%3A%22Indrayani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%222ba9daa85f6a92c38d40512472d02d20ea540e7f%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222a295dc42f048bb64758866869a998937b09a0c6%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A16%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A16%22%3B%7D', 'New data. Bibliography.', '2025-10-24 10:44:17'),
(6, 2, 1, 'Admin', 'Pengantar Sosiologi Perkotaan', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Pengantar+Sosiologi+Perkotaan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Damsar+dan+Indrayani%22%3Bs%3A7%3A%22edition%22%3Bs%3A28%3A%22Edisi+Pertama%2C+Cetakan+Kedua%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A6%3A%22Damsar%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A9%3A%22Indrayani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%222ba9daa85f6a92c38d40512472d02d20ea540e7f%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222a295dc42f048bb64758866869a998937b09a0c6%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A16%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A16%22%3B%7D', 'New data. Author. Names: Damsar; Indrayani;', '2025-10-24 10:44:17'),
(7, 3, 1, 'Admin', 'Pengantar Sosiologi Perkotaan', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%223%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%223%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%223%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Pengantar+Sosiologi+Perkotaan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Damsar+dan+Indrayani%22%3Bs%3A7%3A%22edition%22%3Bs%3A28%3A%22Edisi+Pertama%2C+Cetakan+Kedua%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2279e6ee874dc63d9d1ede37ea3a60b68ee75afcaf%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A17%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A17%22%3B%7D', 'New data. Bibliography.', '2025-10-24 10:44:17'),
(8, 3, 1, 'Admin', 'Pengantar Sosiologi Perkotaan', '::1', 'delete', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%223%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%223%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%223%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Pengantar+Sosiologi+Perkotaan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Damsar+dan+Indrayani%22%3Bs%3A7%3A%22edition%22%3Bs%3A28%3A%22Edisi+Pertama%2C+Cetakan+Kedua%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2279e6ee874dc63d9d1ede37ea3a60b68ee75afcaf%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A17%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A17%22%3B%7D', 'Data bibliografi dihapus.', '2025-10-24 10:44:42'),
(9, 2, 1, 'Admin', 'Pengantar Sosiologi Perkotaan', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Pengantar+Sosiologi+Perkotaan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Damsar+dan+Indrayani%22%3Bs%3A7%3A%22edition%22%3Bs%3A28%3A%22Edisi+Pertama%2C+Cetakan+Kedua%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-422-067-9%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222019%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22x%2C+246+hlm.+%3A+ilust.+%3B+23+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+DAM+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A16%3A%22Pranemedia+Group%22%3Bs%3A14%3A%22classification%22%3Bs%3A9%3A%22300+DAM+p%22%3Bs%3A5%3A%22notes%22%3Bs%3A231%3A%22Buku+ini+membahas+suatu+perspektif+baru+sosiologi+terhadap+berbagi+fenomena+kota+dan+masyarakatnya.+%E2%80%93+Catatan+indeks+halaman+239+sampai+244.+-+Catatan+biografi+halaman+245+sampai+246.+-+Catatan+bibliografi+halaman+223+sampai+237.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A6%3A%22Damsar%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A9%3A%22Indrayani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A9%3A%22Sosiologi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2208723304db0c3d7ef410128611a84d1264d02b7e%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%220c9258dabf7b9c643abc45f5c34ad3c921222779%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222a295dc42f048bb64758866869a998937b09a0c6%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22015a31e5a35a114516bd9110db59fd40c9fdb478%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A16%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+10%3A52%3A01%22%3B%7D', 'Updated data. Bibliography.', '2025-10-24 10:52:02'),
(10, 2, 1, 'Admin', 'Pengantar Sosiologi Perkotaan', '::1', 'update', 'classification', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Pengantar+Sosiologi+Perkotaan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Damsar+dan+Indrayani%22%3Bs%3A7%3A%22edition%22%3Bs%3A28%3A%22Edisi+Pertama%2C+Cetakan+Kedua%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-422-067-9%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222019%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22x%2C+246+hlm.+%3A+ilust.+%3B+23+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+DAM+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A16%3A%22Pranemedia+Group%22%3Bs%3A14%3A%22classification%22%3Bs%3A9%3A%22300+DAM+p%22%3Bs%3A5%3A%22notes%22%3Bs%3A231%3A%22Buku+ini+membahas+suatu+perspektif+baru+sosiologi+terhadap+berbagi+fenomena+kota+dan+masyarakatnya.+%E2%80%93+Catatan+indeks+halaman+239+sampai+244.+-+Catatan+biografi+halaman+245+sampai+246.+-+Catatan+bibliografi+halaman+223+sampai+237.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A6%3A%22Damsar%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A9%3A%22Indrayani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A9%3A%22Sosiologi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2208723304db0c3d7ef410128611a84d1264d02b7e%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%220c9258dabf7b9c643abc45f5c34ad3c921222779%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222a295dc42f048bb64758866869a998937b09a0c6%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22015a31e5a35a114516bd9110db59fd40c9fdb478%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A16%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+10%3A52%3A01%22%3B%7D', 'Updated data. Classification. Number: 300 DAM p', '2025-10-24 10:52:02'),
(11, 2, 1, 'Admin', 'Pengantar Sosiologi Perkotaan', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Pengantar+Sosiologi+Perkotaan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Damsar+dan+Indrayani%22%3Bs%3A7%3A%22edition%22%3Bs%3A28%3A%22Edisi+Pertama%2C+Cetakan+Kedua%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-422-067-9%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222019%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22x%2C+246+hlm.+%3A+ilust.+%3B+23+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+DAM+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A16%3A%22Pranemedia+Group%22%3Bs%3A14%3A%22classification%22%3Bs%3A9%3A%22300+DAM+p%22%3Bs%3A5%3A%22notes%22%3Bs%3A231%3A%22Buku+ini+membahas+suatu+perspektif+baru+sosiologi+terhadap+berbagi+fenomena+kota+dan+masyarakatnya.+%E2%80%93+Catatan+indeks+halaman+239+sampai+244.+-+Catatan+biografi+halaman+245+sampai+246.+-+Catatan+bibliografi+halaman+223+sampai+237.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A6%3A%22Damsar%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A9%3A%22Indrayani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A9%3A%22Sosiologi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2208723304db0c3d7ef410128611a84d1264d02b7e%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%220c9258dabf7b9c643abc45f5c34ad3c921222779%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222a295dc42f048bb64758866869a998937b09a0c6%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22015a31e5a35a114516bd9110db59fd40c9fdb478%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A16%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+10%3A52%3A01%22%3B%7D', 'Updated data. Subject. Names: Sosiologi;', '2025-10-24 10:52:02'),
(12, 2, 1, 'Admin', 'Pengantar Sosiologi Perkotaan', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Pengantar+Sosiologi+Perkotaan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Damsar+dan+Indrayani%22%3Bs%3A7%3A%22edition%22%3Bs%3A28%3A%22Edisi+Pertama%2C+Cetakan+Kedua%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-422-067-9%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222019%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22x%2C+246+hlm.+%3A+ilust.+%3B+23+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+DAM+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A16%3A%22Pranemedia+Group%22%3Bs%3A14%3A%22classification%22%3Bs%3A9%3A%22300+DAM+p%22%3Bs%3A5%3A%22notes%22%3Bs%3A231%3A%22Buku+ini+membahas+suatu+perspektif+baru+sosiologi+terhadap+berbagi+fenomena+kota+dan+masyarakatnya.+%E2%80%93+Catatan+indeks+halaman+239+sampai+244.+-+Catatan+biografi+halaman+245+sampai+246.+-+Catatan+bibliografi+halaman+223+sampai+237.%22%3Bs%3A5%3A%22image%22%3Bs%3A49%3A%22cover_pengantar_sosiologi_perkotaan-31105336.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A6%3A%22Damsar%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A9%3A%22Indrayani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A9%3A%22Sosiologi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22d7a7d50ab01d0c641fddc288b17bb2e9b3155982%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%220c9258dabf7b9c643abc45f5c34ad3c921222779%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222a295dc42f048bb64758866869a998937b09a0c6%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22015a31e5a35a114516bd9110db59fd40c9fdb478%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22a1df54852b9b41d3806ec4687eb8da07981ae630%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A16%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+10%3A53%3A36%22%3B%7D', 'Updated data. Bibliography.', '2025-10-24 10:53:36'),
(13, 2, 1, 'Admin', 'Pengantar Sosiologi Perkotaan', '::1', 'update', 'cover', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Pengantar+Sosiologi+Perkotaan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Damsar+dan+Indrayani%22%3Bs%3A7%3A%22edition%22%3Bs%3A28%3A%22Edisi+Pertama%2C+Cetakan+Kedua%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-422-067-9%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222019%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22x%2C+246+hlm.+%3A+ilust.+%3B+23+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+DAM+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A16%3A%22Pranemedia+Group%22%3Bs%3A14%3A%22classification%22%3Bs%3A9%3A%22300+DAM+p%22%3Bs%3A5%3A%22notes%22%3Bs%3A231%3A%22Buku+ini+membahas+suatu+perspektif+baru+sosiologi+terhadap+berbagi+fenomena+kota+dan+masyarakatnya.+%E2%80%93+Catatan+indeks+halaman+239+sampai+244.+-+Catatan+biografi+halaman+245+sampai+246.+-+Catatan+bibliografi+halaman+223+sampai+237.%22%3Bs%3A5%3A%22image%22%3Bs%3A49%3A%22cover_pengantar_sosiologi_perkotaan-31105336.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A6%3A%22Damsar%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A9%3A%22Indrayani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A9%3A%22Sosiologi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22d7a7d50ab01d0c641fddc288b17bb2e9b3155982%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%220c9258dabf7b9c643abc45f5c34ad3c921222779%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222a295dc42f048bb64758866869a998937b09a0c6%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22015a31e5a35a114516bd9110db59fd40c9fdb478%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22a1df54852b9b41d3806ec4687eb8da07981ae630%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+10%3A44%3A16%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+10%3A53%3A36%22%3B%7D', 'Updated data. Image. File: cover_pengantar_sosiologi_perkotaan-31105336.jpeg', '2025-10-24 10:53:36'),
(14, 4, 1, 'Admin', 'Islam dan Ilmu Pengetahuan', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%224%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%224%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%224%22%3Bs%3A5%3A%22title%22%3Bs%3A26%3A%22Islam+dan+Ilmu+Pengetahuan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A11%3A%22Darori+Amin%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-9193-57-5%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A10%3A%22Gama+Media%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222000%22%3Bs%3A9%3A%22collation%22%3Bs%3A31%3A%22xii%2C+312+hlm.+%3A+illust.+%3B+21+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ABD+i%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A10%3A%22Yogyakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A46%3A%22cover_islam_dan_ilmu_pengetahuan-31110938.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A3%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Abdul+Jamil%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A20%3A%22Abdurrahman+Mas%E2%80%99ud%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7Di%3A2%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22M.+Amin+Syukur%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A15%3A%22Sosiologi+Agama%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%221dd2a1c75489d374bb4a90279789a1d78b2ce4ad%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22e8e25a678efa9ad003bb768f43d3292bb9881916%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2292de789aaa8b3d9fc8edafe913730e31343fdad8%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%2281f4709d0d3efb8b50fb1202b8ad892b7b8a24cf%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A09%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+11%3A09%3A37%22%3B%7D', 'New data. Bibliography.', '2025-10-24 11:09:38'),
(15, 4, 1, 'Admin', 'Islam dan Ilmu Pengetahuan', '::1', 'update', 'cover', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%224%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%224%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%224%22%3Bs%3A5%3A%22title%22%3Bs%3A26%3A%22Islam+dan+Ilmu+Pengetahuan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A11%3A%22Darori+Amin%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-9193-57-5%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A10%3A%22Gama+Media%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222000%22%3Bs%3A9%3A%22collation%22%3Bs%3A31%3A%22xii%2C+312+hlm.+%3A+illust.+%3B+21+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ABD+i%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A10%3A%22Yogyakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A46%3A%22cover_islam_dan_ilmu_pengetahuan-31110938.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A3%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Abdul+Jamil%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A20%3A%22Abdurrahman+Mas%E2%80%99ud%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7Di%3A2%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22M.+Amin+Syukur%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A15%3A%22Sosiologi+Agama%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%221dd2a1c75489d374bb4a90279789a1d78b2ce4ad%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22e8e25a678efa9ad003bb768f43d3292bb9881916%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2292de789aaa8b3d9fc8edafe913730e31343fdad8%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%2281f4709d0d3efb8b50fb1202b8ad892b7b8a24cf%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A09%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+11%3A09%3A37%22%3B%7D', 'New data. Image. File: cover_islam_dan_ilmu_pengetahuan-31110938.jpeg', '2025-10-24 11:09:38'),
(16, 4, 1, 'Admin', 'Islam dan Ilmu Pengetahuan', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%224%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%224%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%224%22%3Bs%3A5%3A%22title%22%3Bs%3A26%3A%22Islam+dan+Ilmu+Pengetahuan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A11%3A%22Darori+Amin%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-9193-57-5%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A10%3A%22Gama+Media%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222000%22%3Bs%3A9%3A%22collation%22%3Bs%3A31%3A%22xii%2C+312+hlm.+%3A+illust.+%3B+21+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ABD+i%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A10%3A%22Yogyakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A46%3A%22cover_islam_dan_ilmu_pengetahuan-31110938.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A3%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Abdul+Jamil%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A20%3A%22Abdurrahman+Mas%E2%80%99ud%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7Di%3A2%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22M.+Amin+Syukur%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A15%3A%22Sosiologi+Agama%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%221dd2a1c75489d374bb4a90279789a1d78b2ce4ad%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22e8e25a678efa9ad003bb768f43d3292bb9881916%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2292de789aaa8b3d9fc8edafe913730e31343fdad8%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%2281f4709d0d3efb8b50fb1202b8ad892b7b8a24cf%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A09%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+11%3A09%3A37%22%3B%7D', 'New data. Author. Names: Abdul Jamil; Abdurrahman Mas’ud; M. Amin Syukur;', '2025-10-24 11:09:38'),
(17, 4, 1, 'Admin', 'Islam dan Ilmu Pengetahuan', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%224%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%224%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%224%22%3Bs%3A5%3A%22title%22%3Bs%3A26%3A%22Islam+dan+Ilmu+Pengetahuan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A11%3A%22Darori+Amin%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-9193-57-5%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A10%3A%22Gama+Media%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222000%22%3Bs%3A9%3A%22collation%22%3Bs%3A31%3A%22xii%2C+312+hlm.+%3A+illust.+%3B+21+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ABD+i%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A10%3A%22Yogyakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A46%3A%22cover_islam_dan_ilmu_pengetahuan-31110938.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A3%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Abdul+Jamil%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A20%3A%22Abdurrahman+Mas%E2%80%99ud%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7Di%3A2%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22M.+Amin+Syukur%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A15%3A%22Sosiologi+Agama%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%221dd2a1c75489d374bb4a90279789a1d78b2ce4ad%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22e8e25a678efa9ad003bb768f43d3292bb9881916%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2292de789aaa8b3d9fc8edafe913730e31343fdad8%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%2281f4709d0d3efb8b50fb1202b8ad892b7b8a24cf%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A09%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+11%3A09%3A37%22%3B%7D', 'New data. Subject. Names: Sosiologi Agama;', '2025-10-24 11:09:38');
INSERT INTO `biblio_log` (`biblio_log_id`, `biblio_id`, `user_id`, `realname`, `title`, `ip`, `action`, `affectedrow`, `rawdata`, `additional_information`, `date`) VALUES
(18, 5, 1, 'Admin', 'Penilaian Autentik', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%225%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%225%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%225%22%3Bs%3A5%3A%22title%22%3Bs%3A18%3A%22Penilaian+Autentik%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Ridwan+Abdullah+Sani%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-217-577-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A11%3A%22Bumi+Aksara%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222016%22%3Bs%3A9%3A%22collation%22%3Bs%3A32%3A%22viii%2C+388+hlm.+%3A+illust.+%3B+23+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+RID+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A205%3A%22Buku+ini+membahas+penilaian+autentik+yang+seharusnya+digunakan+dalam+implementasi+kurikulum+berbasis+kompetensi.+%E2%80%93+Catatan+bibliografi+halaman+359+sampai+366.+%E2%80%93+Catatan+biografi+halaman+386+sampai+387.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A20%3A%22Ridwan+Abdullah+Sani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A10%3A%22Pendidikan%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22348e559ebf7cf721f1f6321bc59701e09a800b43%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%224508eff05c5dcbd5fa13f98cd3f2161b34ec8741%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2218fd2a250b1e4167891e33e3d9b526225609fb33%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A21%3A36%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+11%3A21%3A36%22%3B%7D', 'New data. Bibliography.', '2025-10-24 11:21:36'),
(19, 5, 1, 'Admin', 'Penilaian Autentik', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%225%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%225%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%225%22%3Bs%3A5%3A%22title%22%3Bs%3A18%3A%22Penilaian+Autentik%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Ridwan+Abdullah+Sani%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-217-577-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A11%3A%22Bumi+Aksara%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222016%22%3Bs%3A9%3A%22collation%22%3Bs%3A32%3A%22viii%2C+388+hlm.+%3A+illust.+%3B+23+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+RID+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A205%3A%22Buku+ini+membahas+penilaian+autentik+yang+seharusnya+digunakan+dalam+implementasi+kurikulum+berbasis+kompetensi.+%E2%80%93+Catatan+bibliografi+halaman+359+sampai+366.+%E2%80%93+Catatan+biografi+halaman+386+sampai+387.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A20%3A%22Ridwan+Abdullah+Sani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A10%3A%22Pendidikan%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22348e559ebf7cf721f1f6321bc59701e09a800b43%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%224508eff05c5dcbd5fa13f98cd3f2161b34ec8741%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2218fd2a250b1e4167891e33e3d9b526225609fb33%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A21%3A36%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+11%3A21%3A36%22%3B%7D', 'New data. Author. Names: Ridwan Abdullah Sani;', '2025-10-24 11:21:36'),
(20, 5, 1, 'Admin', 'Penilaian Autentik', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%225%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%225%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%225%22%3Bs%3A5%3A%22title%22%3Bs%3A18%3A%22Penilaian+Autentik%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Ridwan+Abdullah+Sani%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-217-577-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A11%3A%22Bumi+Aksara%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222016%22%3Bs%3A9%3A%22collation%22%3Bs%3A32%3A%22viii%2C+388+hlm.+%3A+illust.+%3B+23+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+RID+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A205%3A%22Buku+ini+membahas+penilaian+autentik+yang+seharusnya+digunakan+dalam+implementasi+kurikulum+berbasis+kompetensi.+%E2%80%93+Catatan+bibliografi+halaman+359+sampai+366.+%E2%80%93+Catatan+biografi+halaman+386+sampai+387.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A20%3A%22Ridwan+Abdullah+Sani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A10%3A%22Pendidikan%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22348e559ebf7cf721f1f6321bc59701e09a800b43%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%224508eff05c5dcbd5fa13f98cd3f2161b34ec8741%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2218fd2a250b1e4167891e33e3d9b526225609fb33%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A21%3A36%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+11%3A21%3A36%22%3B%7D', 'New data. Subject. Names: Pendidikan;', '2025-10-24 11:21:36'),
(21, 6, 1, 'Admin', 'Bahasa Indonesia : Lihat Sekitar', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A32%3A%22Bahasa+Indonesia+%3A+Lihat+Sekitar%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A75%3A%22Kementerian+Pendidikan%2C+Kebudayaan%2C+Riset%2C+dan+Teknologi+Republik+Indonesia%22%3Bs%3A7%3A%22edition%22%3Bs%3A12%3A%22Edisi+Revisi%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-623-118-358-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A75%3A%22Kementerian+Pendidikan%2C+Kebudayaan%2C+Riset%2C+dan+Teknologi+Republik+Indonesia%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222023%22%3Bs%3A9%3A%22collation%22%3Bs%3A29%3A%22x%2C+222+hlm.+%3A+illust.+%3B+32+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+KEM+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A325%3A%22Buku+teks+Pelajaran+Bahasa+Indonesia+yang+disusun+untuk+siswa+SD%2FMI+kelas+IV.+Materi+dalam+buku+ini+mengajarkan+keterampilan+berbahasa%2C+membaca%2C+menulis%2C+dan+berbicara+dengan+tema+%E2%80%9Dlihat+sekitar%E2%80%9D.+%E2%80%93+Catatan+Biografi+halaman+211+sampai+222.+%E2%80%93+Catatan+indeks+halaman+208+sampai+210.+%E2%80%93+Catatan+Bibliografi+halaman+206.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A75%3A%22Kementerian+Pendidikan%2C+Kebudayaan%2C+Riset%2C+dan+Teknologi+Republik+Indonesia%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Buku+Pelajaran%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22b7bd6eadb27f67c1a7a5f3c3c26dbe418eca9d14%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22fd01acbdbabe1854785315be581f3ae82dc3cde0%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2202d60d35bb0fb27fee98c3eb6b958c8f9fb54821%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A30%3A15%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+11%3A30%3A15%22%3B%7D', 'New data. Bibliography.', '2025-10-24 11:30:15'),
(22, 6, 1, 'Admin', 'Bahasa Indonesia : Lihat Sekitar', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A32%3A%22Bahasa+Indonesia+%3A+Lihat+Sekitar%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A75%3A%22Kementerian+Pendidikan%2C+Kebudayaan%2C+Riset%2C+dan+Teknologi+Republik+Indonesia%22%3Bs%3A7%3A%22edition%22%3Bs%3A12%3A%22Edisi+Revisi%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-623-118-358-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A75%3A%22Kementerian+Pendidikan%2C+Kebudayaan%2C+Riset%2C+dan+Teknologi+Republik+Indonesia%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222023%22%3Bs%3A9%3A%22collation%22%3Bs%3A29%3A%22x%2C+222+hlm.+%3A+illust.+%3B+32+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+KEM+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A325%3A%22Buku+teks+Pelajaran+Bahasa+Indonesia+yang+disusun+untuk+siswa+SD%2FMI+kelas+IV.+Materi+dalam+buku+ini+mengajarkan+keterampilan+berbahasa%2C+membaca%2C+menulis%2C+dan+berbicara+dengan+tema+%E2%80%9Dlihat+sekitar%E2%80%9D.+%E2%80%93+Catatan+Biografi+halaman+211+sampai+222.+%E2%80%93+Catatan+indeks+halaman+208+sampai+210.+%E2%80%93+Catatan+Bibliografi+halaman+206.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A75%3A%22Kementerian+Pendidikan%2C+Kebudayaan%2C+Riset%2C+dan+Teknologi+Republik+Indonesia%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Buku+Pelajaran%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22b7bd6eadb27f67c1a7a5f3c3c26dbe418eca9d14%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22fd01acbdbabe1854785315be581f3ae82dc3cde0%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2202d60d35bb0fb27fee98c3eb6b958c8f9fb54821%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A30%3A15%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+11%3A30%3A15%22%3B%7D', 'New data. Author. Names: Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia;', '2025-10-24 11:30:15'),
(23, 6, 1, 'Admin', 'Bahasa Indonesia : Lihat Sekitar', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A32%3A%22Bahasa+Indonesia+%3A+Lihat+Sekitar%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A75%3A%22Kementerian+Pendidikan%2C+Kebudayaan%2C+Riset%2C+dan+Teknologi+Republik+Indonesia%22%3Bs%3A7%3A%22edition%22%3Bs%3A12%3A%22Edisi+Revisi%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-623-118-358-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A75%3A%22Kementerian+Pendidikan%2C+Kebudayaan%2C+Riset%2C+dan+Teknologi+Republik+Indonesia%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222023%22%3Bs%3A9%3A%22collation%22%3Bs%3A29%3A%22x%2C+222+hlm.+%3A+illust.+%3B+32+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+KEM+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A325%3A%22Buku+teks+Pelajaran+Bahasa+Indonesia+yang+disusun+untuk+siswa+SD%2FMI+kelas+IV.+Materi+dalam+buku+ini+mengajarkan+keterampilan+berbahasa%2C+membaca%2C+menulis%2C+dan+berbicara+dengan+tema+%E2%80%9Dlihat+sekitar%E2%80%9D.+%E2%80%93+Catatan+Biografi+halaman+211+sampai+222.+%E2%80%93+Catatan+indeks+halaman+208+sampai+210.+%E2%80%93+Catatan+Bibliografi+halaman+206.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A75%3A%22Kementerian+Pendidikan%2C+Kebudayaan%2C+Riset%2C+dan+Teknologi+Republik+Indonesia%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Buku+Pelajaran%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22b7bd6eadb27f67c1a7a5f3c3c26dbe418eca9d14%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22fd01acbdbabe1854785315be581f3ae82dc3cde0%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2202d60d35bb0fb27fee98c3eb6b958c8f9fb54821%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A30%3A15%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-24+11%3A30%3A15%22%3B%7D', 'New data. Subject. Names: Buku Pelajaran;', '2025-10-24 11:30:15'),
(24, 5, 1, 'Admin', 'Penilaian Autentik', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%225%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%225%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%225%22%3Bs%3A5%3A%22title%22%3Bs%3A18%3A%22Penilaian+Autentik%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A20%3A%22Ridwan+Abdullah+Sani%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-217-577-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A11%3A%22Bumi+Aksara%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222016%22%3Bs%3A9%3A%22collation%22%3Bs%3A32%3A%22viii%2C+388+hlm.+%3A+illust.+%3B+23+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+RID+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A205%3A%22Buku+ini+membahas+penilaian+autentik+yang+seharusnya+digunakan+dalam+implementasi+kurikulum+berbasis+kompetensi.+%E2%80%93+Catatan+bibliografi+halaman+359+sampai+366.+%E2%80%93+Catatan+biografi+halaman+386+sampai+387.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A20%3A%22Ridwan+Abdullah+Sani%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A10%3A%22Pendidikan%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%224%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00004%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+RID+p%22%3Bs%3A14%3A%22coll_type_name%22%3BN%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3BN%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222025-10-24%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222025-10-24%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222025-10-24%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A1%3A%220%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%222928b3ed2e2366acc51fad4e2f1dfd5eb099157a%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%224508eff05c5dcbd5fa13f98cd3f2161b34ec8741%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2218fd2a250b1e4167891e33e3d9b526225609fb33%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A21%3A36%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-27+10%3A08%3A44%22%3B%7D', 'Updated data. Bibliography.', '2025-10-27 10:08:44'),
(25, 7, 1, 'Admin', 'Amendemen Undang – Undang KPK (UU RI No. 19 Tahun 2019)', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%227%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%227%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%227%22%3Bs%3A5%3A%22title%22%3Bs%3A57%3A%22Amendemen+Undang+%E2%80%93+Undang+KPK+%28UU+RI+No.+19+Tahun+2019%29%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A21%3A%22Redaksi+Sinar+Grafika%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-979-007-897-0%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Sinar+Grafika%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222020%22%3Bs%3A9%3A%22collation%22%3Bs%3A19%3A%22x%2C+320+hlm.+%3A+19+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%22300+AME%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A284%3A%22Buku+ini+dilengkapi+dengan+UU+RI+No.+10+Tahun+2015%2C+UU+RI+No.+30+Tahun+2002%2C+UU+RI+No.+20+Tahun+2001%2C+UU+RI+No.+31+Tahun+1999%2C+PP+RI+No.+43+Tahun+2018%2C+PP+RI+No.+14+Tahun+2017%2C+PP+RI+No.103+Tahun+2012%2C+PP+RI+No.+63+Tahun+2005%2C+Perpres+RI+No.+54+Tahun+2018%2C+Perpres+RI+No.+1+Tahun+2015%22%3Bs%3A5%3A%22image%22%3Bs%3A71%3A%22cover_amendemen_undang_undang_kpk_uu_ri_no_19_tahun_2019_-31102542.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A21%3A%22Pemberantasan+Korupsi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22f4b76c8be55a6f8d433d9b1a0b779d469512b168%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22fa6b41f929dff5149f364eef03d8345044c06dab%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22cdb9c27fe1f3da96fb18e615df2b44020272728b%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-27+10%3A25%3A42%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-27+10%3A25%3A42%22%3B%7D', 'New data. Bibliography.', '2025-10-27 10:25:42'),
(26, 7, 1, 'Admin', 'Amendemen Undang – Undang KPK (UU RI No. 19 Tahun 2019)', '::1', 'update', 'cover', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%227%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%227%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%227%22%3Bs%3A5%3A%22title%22%3Bs%3A57%3A%22Amendemen+Undang+%E2%80%93+Undang+KPK+%28UU+RI+No.+19+Tahun+2019%29%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A21%3A%22Redaksi+Sinar+Grafika%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-979-007-897-0%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Sinar+Grafika%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222020%22%3Bs%3A9%3A%22collation%22%3Bs%3A19%3A%22x%2C+320+hlm.+%3A+19+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%22300+AME%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A284%3A%22Buku+ini+dilengkapi+dengan+UU+RI+No.+10+Tahun+2015%2C+UU+RI+No.+30+Tahun+2002%2C+UU+RI+No.+20+Tahun+2001%2C+UU+RI+No.+31+Tahun+1999%2C+PP+RI+No.+43+Tahun+2018%2C+PP+RI+No.+14+Tahun+2017%2C+PP+RI+No.103+Tahun+2012%2C+PP+RI+No.+63+Tahun+2005%2C+Perpres+RI+No.+54+Tahun+2018%2C+Perpres+RI+No.+1+Tahun+2015%22%3Bs%3A5%3A%22image%22%3Bs%3A71%3A%22cover_amendemen_undang_undang_kpk_uu_ri_no_19_tahun_2019_-31102542.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A21%3A%22Pemberantasan+Korupsi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22f4b76c8be55a6f8d433d9b1a0b779d469512b168%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22fa6b41f929dff5149f364eef03d8345044c06dab%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22cdb9c27fe1f3da96fb18e615df2b44020272728b%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-27+10%3A25%3A42%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-27+10%3A25%3A42%22%3B%7D', 'New data. Image. File: cover_amendemen_undang_undang_kpk_uu_ri_no_19_tahun_2019_-31102542.jpeg', '2025-10-27 10:25:42'),
(27, 7, 1, 'Admin', 'Amendemen Undang – Undang KPK (UU RI No. 19 Tahun 2019)', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%227%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%227%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%227%22%3Bs%3A5%3A%22title%22%3Bs%3A57%3A%22Amendemen+Undang+%E2%80%93+Undang+KPK+%28UU+RI+No.+19+Tahun+2019%29%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A21%3A%22Redaksi+Sinar+Grafika%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-979-007-897-0%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Sinar+Grafika%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222020%22%3Bs%3A9%3A%22collation%22%3Bs%3A19%3A%22x%2C+320+hlm.+%3A+19+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%22300+AME%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A284%3A%22Buku+ini+dilengkapi+dengan+UU+RI+No.+10+Tahun+2015%2C+UU+RI+No.+30+Tahun+2002%2C+UU+RI+No.+20+Tahun+2001%2C+UU+RI+No.+31+Tahun+1999%2C+PP+RI+No.+43+Tahun+2018%2C+PP+RI+No.+14+Tahun+2017%2C+PP+RI+No.103+Tahun+2012%2C+PP+RI+No.+63+Tahun+2005%2C+Perpres+RI+No.+54+Tahun+2018%2C+Perpres+RI+No.+1+Tahun+2015%22%3Bs%3A5%3A%22image%22%3Bs%3A71%3A%22cover_amendemen_undang_undang_kpk_uu_ri_no_19_tahun_2019_-31102542.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A21%3A%22Pemberantasan+Korupsi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22f4b76c8be55a6f8d433d9b1a0b779d469512b168%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22fa6b41f929dff5149f364eef03d8345044c06dab%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22cdb9c27fe1f3da96fb18e615df2b44020272728b%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-27+10%3A25%3A42%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-27+10%3A25%3A42%22%3B%7D', 'New data. Subject. Names: Pemberantasan Korupsi;', '2025-10-27 10:25:42'),
(28, 8, 1, 'Admin', 'Media Kebijakan : Sumber Informasi Kebijakan dalam Negeri', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A57%3A%22Media+Kebijakan+%3A+Sumber+Informasi+Kebijakan+dalam+Negeri%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A82%3A%22Kementerian+Dalam+Negeri+Republik+Indonesia%2C+Badan+Strategi+Kebijakan+Dalam+Negeri%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A9%3A%222503-3352%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A81%3A%22Bina+Praja+Press%2C+Badan+Strategi+Kebijakan+Dalam+Negeri%2C+Kementerian+Dalam+Negeri%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A11%3A%222016+-+2022%22%3Bs%3A9%3A%22collation%22%3Bs%3A26%3A%22...+jil.+%3A+illust.+%3B+30+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+MED+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A80%3A%22cover_media-kebijakan-sumber-informasi-kebijakan-dalam-negeri-20251027104408.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3Bs%3A10%3A%22Bi-Monthly%22%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A82%3A%22Badan+Strategi+Kebijakan+Dalam+Negeri%2C+Kementerian+Dalam+Negeri+Republik+Indonesia%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A16%3A%22Kebijakan+Publik%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22b162d97cfaf028ca0883b9a502bfc4efe6e41571%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%2258675205b61863923256454032d05456e08e003a%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%224faab7a76df7b3b1bdffeb586167b7e99bc6a00b%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22d525213201515f83b58fe726d0b18e144de1734f%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-27+10%3A44%3A08%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-27+10%3A44%3A08%22%3B%7D', 'New data. Bibliography.', '2025-10-27 10:44:09'),
(29, 8, 1, 'Admin', 'Media Kebijakan : Sumber Informasi Kebijakan dalam Negeri', '::1', 'update', 'cover', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A57%3A%22Media+Kebijakan+%3A+Sumber+Informasi+Kebijakan+dalam+Negeri%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A82%3A%22Kementerian+Dalam+Negeri+Republik+Indonesia%2C+Badan+Strategi+Kebijakan+Dalam+Negeri%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A9%3A%222503-3352%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A81%3A%22Bina+Praja+Press%2C+Badan+Strategi+Kebijakan+Dalam+Negeri%2C+Kementerian+Dalam+Negeri%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A11%3A%222016+-+2022%22%3Bs%3A9%3A%22collation%22%3Bs%3A26%3A%22...+jil.+%3A+illust.+%3B+30+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+MED+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A80%3A%22cover_media-kebijakan-sumber-informasi-kebijakan-dalam-negeri-20251027104408.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3Bs%3A10%3A%22Bi-Monthly%22%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A82%3A%22Badan+Strategi+Kebijakan+Dalam+Negeri%2C+Kementerian+Dalam+Negeri+Republik+Indonesia%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A16%3A%22Kebijakan+Publik%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22b162d97cfaf028ca0883b9a502bfc4efe6e41571%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%2258675205b61863923256454032d05456e08e003a%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%224faab7a76df7b3b1bdffeb586167b7e99bc6a00b%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22d525213201515f83b58fe726d0b18e144de1734f%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-27+10%3A44%3A08%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-27+10%3A44%3A08%22%3B%7D', 'New data. Image. File: cover_media-kebijakan-sumber-informasi-kebijakan-dalam-negeri-20251027104408.jpg', '2025-10-27 10:44:09'),
(30, 8, 1, 'Admin', 'Media Kebijakan : Sumber Informasi Kebijakan dalam Negeri', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A57%3A%22Media+Kebijakan+%3A+Sumber+Informasi+Kebijakan+dalam+Negeri%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A82%3A%22Kementerian+Dalam+Negeri+Republik+Indonesia%2C+Badan+Strategi+Kebijakan+Dalam+Negeri%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A9%3A%222503-3352%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A81%3A%22Bina+Praja+Press%2C+Badan+Strategi+Kebijakan+Dalam+Negeri%2C+Kementerian+Dalam+Negeri%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A11%3A%222016+-+2022%22%3Bs%3A9%3A%22collation%22%3Bs%3A26%3A%22...+jil.+%3A+illust.+%3B+30+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+MED+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A80%3A%22cover_media-kebijakan-sumber-informasi-kebijakan-dalam-negeri-20251027104408.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3Bs%3A10%3A%22Bi-Monthly%22%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A82%3A%22Badan+Strategi+Kebijakan+Dalam+Negeri%2C+Kementerian+Dalam+Negeri+Republik+Indonesia%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A16%3A%22Kebijakan+Publik%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22b162d97cfaf028ca0883b9a502bfc4efe6e41571%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%2258675205b61863923256454032d05456e08e003a%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%224faab7a76df7b3b1bdffeb586167b7e99bc6a00b%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22d525213201515f83b58fe726d0b18e144de1734f%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-27+10%3A44%3A08%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-27+10%3A44%3A08%22%3B%7D', 'New data. Author. Names: Badan Strategi Kebijakan Dalam Negeri, Kementerian Dalam Negeri Republik Indonesia;', '2025-10-27 10:44:09'),
(31, 8, 1, 'Admin', 'Media Kebijakan : Sumber Informasi Kebijakan dalam Negeri', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A57%3A%22Media+Kebijakan+%3A+Sumber+Informasi+Kebijakan+dalam+Negeri%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A82%3A%22Kementerian+Dalam+Negeri+Republik+Indonesia%2C+Badan+Strategi+Kebijakan+Dalam+Negeri%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A9%3A%222503-3352%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A81%3A%22Bina+Praja+Press%2C+Badan+Strategi+Kebijakan+Dalam+Negeri%2C+Kementerian+Dalam+Negeri%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A11%3A%222016+-+2022%22%3Bs%3A9%3A%22collation%22%3Bs%3A26%3A%22...+jil.+%3A+illust.+%3B+30+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+MED+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A80%3A%22cover_media-kebijakan-sumber-informasi-kebijakan-dalam-negeri-20251027104408.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3Bs%3A10%3A%22Bi-Monthly%22%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A82%3A%22Badan+Strategi+Kebijakan+Dalam+Negeri%2C+Kementerian+Dalam+Negeri+Republik+Indonesia%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A16%3A%22Kebijakan+Publik%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22b162d97cfaf028ca0883b9a502bfc4efe6e41571%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%2258675205b61863923256454032d05456e08e003a%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%224faab7a76df7b3b1bdffeb586167b7e99bc6a00b%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22d525213201515f83b58fe726d0b18e144de1734f%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-27+10%3A44%3A08%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-27+10%3A44%3A08%22%3B%7D', 'New data. Subject. Names: Kebijakan Publik;', '2025-10-27 10:44:09'),
(32, 4, 1, 'Admin', 'Islam dan Ilmu Pengetahuan', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%224%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%224%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%224%22%3Bs%3A5%3A%22title%22%3Bs%3A26%3A%22Islam+dan+Ilmu+Pengetahuan%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A11%3A%22Darori+Amin%22%3Bs%3A7%3A%22edition%22%3Bs%3A15%3A%22Cetakan+Pertama%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-9193-57-5%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A10%3A%22Gama+Media%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222000%22%3Bs%3A9%3A%22collation%22%3Bs%3A31%3A%22xii%2C+312+hlm.+%3A+illust.+%3B+21+cm%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ABD+i%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A10%3A%22Yogyakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A156%3A%22Buku+ini+memuat+tentang+islam+dan+jawa+merupakan+dua+entitas+yang+berbeda.+%E2%80%93+Catatan+bibliografi+halaman+307.+%E2%80%93+Catatan+biografi+halaman+308+sampai+312.%22%3Bs%3A5%3A%22image%22%3Bs%3A46%3A%22cover_islam_dan_ilmu_pengetahuan-31110938.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A4%3A%22text%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A3%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Abdul+Jamil%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A20%3A%22Abdurrahman+Mas%E2%80%99ud%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7Di%3A2%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22M.+Amin+Syukur%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A15%3A%22Sosiologi+Agama%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%223%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00003%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ABD+i%22%3Bs%3A14%3A%22coll_type_name%22%3BN%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3BN%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222025-10-24%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222025-10-24%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222025-10-24%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A1%3A%220%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%228920926fb65e53e0a109fd3bd3d2ca72ac46123a%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22e8e25a678efa9ad003bb768f43d3292bb9881916%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%2292de789aaa8b3d9fc8edafe913730e31343fdad8%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%2281f4709d0d3efb8b50fb1202b8ad892b7b8a24cf%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-10-24+11%3A09%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-10-27+16%3A57%3A10%22%3B%7D', 'Updated data. Bibliography.', '2025-10-27 16:57:10'),
(33, 9, 1, 'Admin', 'Butter', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%229%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%229%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%229%22%3Bs%3A5%3A%22title%22%3Bs%3A6%3A%22Butter%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A15%3A%22Sound+Recording%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A12%3A%22Big+Hit+Musi%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222021%22%3Bs%3A9%3A%22collation%22%3Bs%3A45%3A%221+disk+%2812+men.%29+%3A+digital%2C++streo.+%3B+12+inc.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+BTS+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A5%3A%22Seoul%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A111%3A%22Berisi+lagu+Permission+to+Dance.+%E2%80%93+Dinyanyikan+oleh+BTS.+%E2%80%93+Lagu+ini+dinyanyikan+menggunakan+Bahasa+Inggris.%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A15%3A%22performed+music%22%3Bs%3A10%3A%22media_type%22%3Bs%3A5%3A%22audio%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A10%3A%22audio+disc%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22e926384f03e2bd0694297cfb1bfde4ca5900f4ae%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-13+08%3A42%3A25%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-13+08%3A42%3A25%22%3B%7D', 'New data. Bibliography.', '2025-12-13 08:42:25');
INSERT INTO `biblio_log` (`biblio_log_id`, `biblio_id`, `user_id`, `realname`, `title`, `ip`, `action`, `affectedrow`, `rawdata`, `additional_information`, `date`) VALUES
(34, 10, 1, 'Admin', 'Atlas Ilmu Pengetahuan Sosial', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2210%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2210%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Atlas+Ilmu+Pengetahuan+Sosial%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A21%3A%22Cartographic+Material%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-8549-02-3%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3Bs%3A18%3A%22cartographic+image%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22af1d825cada0c4170d1f03b72c7a2de8253ced5b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A34%3A30%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+11%3A34%3A30%22%3B%7D', 'New data. Bibliography.', '2025-12-15 11:34:30'),
(35, 10, 1, 'Admin', 'Atlas Ilmu Pengetahuan Sosial', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2210%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2210%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Atlas+Ilmu+Pengetahuan+Sosial%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A21%3A%22Cartographic+Material%22%3Bs%3A3%3A%22sor%22%3Bs%3A27%3A%22Chalid+Latif+dan+M.J+Ridwan%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-8549-02-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A16%3A%22PT+Pembina+Praga%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%221998%22%3Bs%3A9%3A%22collation%22%3Bs%3A47%3A%221+atlas+%2848+hlm.%29+%3A+30+peta+%3A+berwarna+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A81%3A%22Atlas+ini+dilengkapi+dengan+wawasan+nusantara+dan+dunia%2C+profil+wilayah+dan+dunia%22%3Bs%3A5%3A%22image%22%3Bs%3A54%3A%22cover_atlas-ilmu-pengetahuan-sosial-20251215113949.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A14%3A%22Berbagai+Skala%22%3Bs%3A12%3A%22content_type%22%3Bs%3A18%3A%22cartographic+image%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A10%3A%22M.J+Ridwan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Chalid+Latif%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A4%3A%22Peta%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22dd4cf0146a55ec047c3153d3cb5383a2933ca3f8%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222017785dc109e1963655e54c37ba3c5e4ec7e1d4%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22efd039e7bd56cd38d69abd9b1de213bc6ddcb5a1%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%229d6072041a091597536bebf2572951349e177ca7%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A34%3A30%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+11%3A39%3A49%22%3B%7D', 'Updated data. Bibliography.', '2025-12-15 11:39:50'),
(36, 10, 1, 'Admin', 'Atlas Ilmu Pengetahuan Sosial', '::1', 'update', 'cover', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2210%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2210%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Atlas+Ilmu+Pengetahuan+Sosial%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A21%3A%22Cartographic+Material%22%3Bs%3A3%3A%22sor%22%3Bs%3A27%3A%22Chalid+Latif+dan+M.J+Ridwan%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-8549-02-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A16%3A%22PT+Pembina+Praga%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%221998%22%3Bs%3A9%3A%22collation%22%3Bs%3A47%3A%221+atlas+%2848+hlm.%29+%3A+30+peta+%3A+berwarna+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A81%3A%22Atlas+ini+dilengkapi+dengan+wawasan+nusantara+dan+dunia%2C+profil+wilayah+dan+dunia%22%3Bs%3A5%3A%22image%22%3Bs%3A54%3A%22cover_atlas-ilmu-pengetahuan-sosial-20251215113949.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A14%3A%22Berbagai+Skala%22%3Bs%3A12%3A%22content_type%22%3Bs%3A18%3A%22cartographic+image%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A10%3A%22M.J+Ridwan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Chalid+Latif%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A4%3A%22Peta%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22dd4cf0146a55ec047c3153d3cb5383a2933ca3f8%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222017785dc109e1963655e54c37ba3c5e4ec7e1d4%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22efd039e7bd56cd38d69abd9b1de213bc6ddcb5a1%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%229d6072041a091597536bebf2572951349e177ca7%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A34%3A30%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+11%3A39%3A49%22%3B%7D', 'Updated data. Image. File: cover_atlas-ilmu-pengetahuan-sosial-20251215113949.jpg', '2025-12-15 11:39:50'),
(37, 10, 1, 'Admin', 'Atlas Ilmu Pengetahuan Sosial', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2210%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2210%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Atlas+Ilmu+Pengetahuan+Sosial%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A21%3A%22Cartographic+Material%22%3Bs%3A3%3A%22sor%22%3Bs%3A27%3A%22Chalid+Latif+dan+M.J+Ridwan%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-8549-02-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A16%3A%22PT+Pembina+Praga%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%221998%22%3Bs%3A9%3A%22collation%22%3Bs%3A47%3A%221+atlas+%2848+hlm.%29+%3A+30+peta+%3A+berwarna+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A81%3A%22Atlas+ini+dilengkapi+dengan+wawasan+nusantara+dan+dunia%2C+profil+wilayah+dan+dunia%22%3Bs%3A5%3A%22image%22%3Bs%3A54%3A%22cover_atlas-ilmu-pengetahuan-sosial-20251215113949.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A14%3A%22Berbagai+Skala%22%3Bs%3A12%3A%22content_type%22%3Bs%3A18%3A%22cartographic+image%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A10%3A%22M.J+Ridwan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Chalid+Latif%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A4%3A%22Peta%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22dd4cf0146a55ec047c3153d3cb5383a2933ca3f8%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222017785dc109e1963655e54c37ba3c5e4ec7e1d4%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22efd039e7bd56cd38d69abd9b1de213bc6ddcb5a1%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%229d6072041a091597536bebf2572951349e177ca7%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A34%3A30%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+11%3A39%3A49%22%3B%7D', 'Updated data. Author. Names: M.J Ridwan; Chalid Latif;', '2025-12-15 11:39:50'),
(38, 10, 1, 'Admin', 'Atlas Ilmu Pengetahuan Sosial', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2210%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2210%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Atlas+Ilmu+Pengetahuan+Sosial%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A21%3A%22Cartographic+Material%22%3Bs%3A3%3A%22sor%22%3Bs%3A27%3A%22Chalid+Latif+dan+M.J+Ridwan%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-8549-02-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A16%3A%22PT+Pembina+Praga%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%221998%22%3Bs%3A9%3A%22collation%22%3Bs%3A47%3A%221+atlas+%2848+hlm.%29+%3A+30+peta+%3A+berwarna+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A81%3A%22Atlas+ini+dilengkapi+dengan+wawasan+nusantara+dan+dunia%2C+profil+wilayah+dan+dunia%22%3Bs%3A5%3A%22image%22%3Bs%3A54%3A%22cover_atlas-ilmu-pengetahuan-sosial-20251215113949.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A14%3A%22Berbagai+Skala%22%3Bs%3A12%3A%22content_type%22%3Bs%3A18%3A%22cartographic+image%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A10%3A%22M.J+Ridwan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Chalid+Latif%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A4%3A%22Peta%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22dd4cf0146a55ec047c3153d3cb5383a2933ca3f8%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222017785dc109e1963655e54c37ba3c5e4ec7e1d4%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22efd039e7bd56cd38d69abd9b1de213bc6ddcb5a1%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%229d6072041a091597536bebf2572951349e177ca7%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A34%3A30%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+11%3A39%3A49%22%3B%7D', 'Updated data. Subject. Names: Peta;', '2025-12-15 11:39:50'),
(39, 10, 1, 'Admin', 'Atlas Ilmu Pengetahuan Sosial', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2210%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2210%22%3Bs%3A5%3A%22title%22%3Bs%3A29%3A%22Atlas+Ilmu+Pengetahuan+Sosial%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A21%3A%22Cartographic+Material%22%3Bs%3A3%3A%22sor%22%3Bs%3A27%3A%22Chalid+Latif+dan+M.J+Ridwan%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22979-8549-02-3%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A16%3A%22PT+Pembina+Praga%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%221998%22%3Bs%3A9%3A%22collation%22%3Bs%3A47%3A%221+atlas+%2848+hlm.%29+%3A+30+peta+%3A+berwarna+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+CHA+a%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A7%3A%22Jakarta%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A81%3A%22Atlas+ini+dilengkapi+dengan+wawasan+nusantara+dan+dunia%2C+profil+wilayah+dan+dunia%22%3Bs%3A5%3A%22image%22%3Bs%3A54%3A%22cover_atlas-ilmu-pengetahuan-sosial-20251215113949.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A14%3A%22Berbagai+Skala%22%3Bs%3A12%3A%22content_type%22%3Bs%3A18%3A%22cartographic+image%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A6%3A%22volume%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A10%3A%22M.J+Ridwan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A18%3A%22Pengarang+Tambahan%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Chalid+Latif%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A10%3A%22Nama+Orang%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A4%3A%22Peta%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22K00001%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22coll_type_name%22%3BN%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3BN%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A1%3A%220%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%226dae216dd6bc2c002cb65e59614d962f2aa0dca9%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%222017785dc109e1963655e54c37ba3c5e4ec7e1d4%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22efd039e7bd56cd38d69abd9b1de213bc6ddcb5a1%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%229d6072041a091597536bebf2572951349e177ca7%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A34%3A30%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+11%3A41%3A00%22%3B%7D', 'Updated data. Bibliography.', '2025-12-15 11:41:00'),
(40, 11, 1, 'Admin', 'Elemental', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2211%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2211%22%3Bs%3A5%3A%22title%22%3Bs%3A9%3A%22Elemental%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A76%3A%22Walt+Disney+Production+dan+Pixar+Animation+Studios%2C+Peter+Sohn%2C+Denise+Ream.%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A35%3A%22Walt+Disney+Studios+Motion+Pictures%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222023%22%3Bs%3A9%3A%22collation%22%3Bs%3A44%3A%221+Disk+film+%28109+men.%29+%3A+bersuara%2C+berwarna.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+WAL+e%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A10%3A%22California%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A272%3A%22Film+ini+membahas+tentang+membahas+tentang+perbedaan+dan+keberagaman%2C+khususnya+bagaimana+individu+dari+latar+belakang%2C+budaya%2C+dan+identitas+yang+berbeda+dapat+saling+memahami+dan+membangun+hubungan%2C+meskipun+menghadapi+batasan+tradisi%2C+prasangka%2C+dan+ekspektasi+keluarga%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A12%3A%22Film+Animasi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22e4f3df8cc51fcc68749f2af11bc32ab1075fa39b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22674ca56579b7b2b62f9d5d2e249008d912564d95%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A49%3A24%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+11%3A49%3A24%22%3B%7D', 'New data. Bibliography.', '2025-12-15 11:49:24'),
(41, 11, 1, 'Admin', 'Elemental', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2211%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2211%22%3Bs%3A5%3A%22title%22%3Bs%3A9%3A%22Elemental%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A76%3A%22Walt+Disney+Production+dan+Pixar+Animation+Studios%2C+Peter+Sohn%2C+Denise+Ream.%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A35%3A%22Walt+Disney+Studios+Motion+Pictures%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222023%22%3Bs%3A9%3A%22collation%22%3Bs%3A44%3A%221+Disk+film+%28109+men.%29+%3A+bersuara%2C+berwarna.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+WAL+e%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A10%3A%22California%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A272%3A%22Film+ini+membahas+tentang+membahas+tentang+perbedaan+dan+keberagaman%2C+khususnya+bagaimana+individu+dari+latar+belakang%2C+budaya%2C+dan+identitas+yang+berbeda+dapat+saling+memahami+dan+membangun+hubungan%2C+meskipun+menghadapi+batasan+tradisi%2C+prasangka%2C+dan+ekspektasi+keluarga%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A12%3A%22Film+Animasi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22e4f3df8cc51fcc68749f2af11bc32ab1075fa39b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22674ca56579b7b2b62f9d5d2e249008d912564d95%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A49%3A24%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+11%3A49%3A24%22%3B%7D', 'New data. Subject. Names: Film Animasi;', '2025-12-15 11:49:24'),
(42, 11, 1, 'Admin', 'Elemental', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2211%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2211%22%3Bs%3A5%3A%22title%22%3Bs%3A9%3A%22Elemental%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A76%3A%22Walt+Disney+Production+dan+Pixar+Animation+Studios%2C+Peter+Sohn%2C+Denise+Ream.%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A35%3A%22Walt+Disney+Studios+Motion+Pictures%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222023%22%3Bs%3A9%3A%22collation%22%3Bs%3A44%3A%221+Disk+film+%28109+men.%29+%3A+bersuara%2C+berwarna.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+WAL+e%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A10%3A%22California%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A272%3A%22Film+ini+membahas+tentang+membahas+tentang+perbedaan+dan+keberagaman%2C+khususnya+bagaimana+individu+dari+latar+belakang%2C+budaya%2C+dan+identitas+yang+berbeda+dapat+saling+memahami+dan+membangun+hubungan%2C+meskipun+menghadapi+batasan+tradisi%2C+prasangka%2C+dan+ekspektasi+keluarga%22%3Bs%3A5%3A%22image%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A12%3A%22Film+Animasi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22F00001%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+WAL+e%22%3Bs%3A14%3A%22coll_type_name%22%3BN%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3BN%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A1%3A%220%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%225bd4505faeba3daeb1d9c60253e378ef55648bcf%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22674ca56579b7b2b62f9d5d2e249008d912564d95%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%226ef89e192823d62ae9d77f9a66ed17d70c2713d3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A49%3A24%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+11%3A50%3A33%22%3B%7D', 'Updated data. Bibliography.', '2025-12-15 11:50:33'),
(43, 12, 1, 'Admin', 'Butter', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2212%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2212%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2212%22%3Bs%3A5%3A%22title%22%3Bs%3A6%3A%22Butter%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A15%3A%22Sound+Recording%22%3Bs%3A3%3A%22sor%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222021%22%3Bs%3A9%3A%22collation%22%3Bs%3A44%3A%221+disk+%2812+men.%29+%3A+digital%2C+streo.+%3B+12+inc.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+BIG+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A5%3A%22Seoul%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A113%3A%22Berisi+lagu+Permission+to+Dance.+%E2%80%93+Dinyanyikan%0D%0Aoleh+BTS.+%E2%80%93+Lagu+ini+dinyanyikan+menggunakan%0D%0ABahasa+Inggris.%22%3Bs%3A5%3A%22image%22%3Bs%3A31%3A%22cover_butter-20251215120037.png%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A15%3A%22performed+music%22%3Bs%3A10%3A%22media_type%22%3Bs%3A5%3A%22audio%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A10%3A%22audio+disc%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A19%3A%22Musik+populer+korea%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22a53144a9416b0000a1c4e40b7edfd12f255bfdb0%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%221ca90d645af481df2dc6edb2f4c7d633fc76cb00%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%225877261d8127c35e37e7af47ecdbc5ecdce17176%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22fc9b5b68bb1c3da03f41c8d5e710566f6e11ff1e%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A00%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A00%3A37%22%3B%7D', 'New data. Bibliography.', '2025-12-15 12:00:37'),
(44, 12, 1, 'Admin', 'Butter', '::1', 'update', 'cover', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2212%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2212%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2212%22%3Bs%3A5%3A%22title%22%3Bs%3A6%3A%22Butter%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A15%3A%22Sound+Recording%22%3Bs%3A3%3A%22sor%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222021%22%3Bs%3A9%3A%22collation%22%3Bs%3A44%3A%221+disk+%2812+men.%29+%3A+digital%2C+streo.+%3B+12+inc.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+BIG+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A5%3A%22Seoul%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A113%3A%22Berisi+lagu+Permission+to+Dance.+%E2%80%93+Dinyanyikan%0D%0Aoleh+BTS.+%E2%80%93+Lagu+ini+dinyanyikan+menggunakan%0D%0ABahasa+Inggris.%22%3Bs%3A5%3A%22image%22%3Bs%3A31%3A%22cover_butter-20251215120037.png%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A15%3A%22performed+music%22%3Bs%3A10%3A%22media_type%22%3Bs%3A5%3A%22audio%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A10%3A%22audio+disc%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A19%3A%22Musik+populer+korea%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22a53144a9416b0000a1c4e40b7edfd12f255bfdb0%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%221ca90d645af481df2dc6edb2f4c7d633fc76cb00%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%225877261d8127c35e37e7af47ecdbc5ecdce17176%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22fc9b5b68bb1c3da03f41c8d5e710566f6e11ff1e%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A00%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A00%3A37%22%3B%7D', 'New data. Image. File: cover_butter-20251215120037.png', '2025-12-15 12:00:37'),
(45, 12, 1, 'Admin', 'Butter', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2212%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2212%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2212%22%3Bs%3A5%3A%22title%22%3Bs%3A6%3A%22Butter%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A15%3A%22Sound+Recording%22%3Bs%3A3%3A%22sor%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222021%22%3Bs%3A9%3A%22collation%22%3Bs%3A44%3A%221+disk+%2812+men.%29+%3A+digital%2C+streo.+%3B+12+inc.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+BIG+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A5%3A%22Seoul%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A113%3A%22Berisi+lagu+Permission+to+Dance.+%E2%80%93+Dinyanyikan%0D%0Aoleh+BTS.+%E2%80%93+Lagu+ini+dinyanyikan+menggunakan%0D%0ABahasa+Inggris.%22%3Bs%3A5%3A%22image%22%3Bs%3A31%3A%22cover_butter-20251215120037.png%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A15%3A%22performed+music%22%3Bs%3A10%3A%22media_type%22%3Bs%3A5%3A%22audio%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A10%3A%22audio+disc%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A19%3A%22Musik+populer+korea%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22a53144a9416b0000a1c4e40b7edfd12f255bfdb0%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%221ca90d645af481df2dc6edb2f4c7d633fc76cb00%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%225877261d8127c35e37e7af47ecdbc5ecdce17176%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22fc9b5b68bb1c3da03f41c8d5e710566f6e11ff1e%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A00%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A00%3A37%22%3B%7D', 'New data. Author. Names: Big Hit Music;', '2025-12-15 12:00:37'),
(46, 12, 1, 'Admin', 'Butter', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2212%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2212%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2212%22%3Bs%3A5%3A%22title%22%3Bs%3A6%3A%22Butter%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A15%3A%22Sound+Recording%22%3Bs%3A3%3A%22sor%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222021%22%3Bs%3A9%3A%22collation%22%3Bs%3A44%3A%221+disk+%2812+men.%29+%3A+digital%2C+streo.+%3B+12+inc.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+BIG+b%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A5%3A%22Seoul%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A113%3A%22Berisi+lagu+Permission+to+Dance.+%E2%80%93+Dinyanyikan%0D%0Aoleh+BTS.+%E2%80%93+Lagu+ini+dinyanyikan+menggunakan%0D%0ABahasa+Inggris.%22%3Bs%3A5%3A%22image%22%3Bs%3A31%3A%22cover_butter-20251215120037.png%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A15%3A%22performed+music%22%3Bs%3A10%3A%22media_type%22%3Bs%3A5%3A%22audio%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A10%3A%22audio+disc%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Big+Hit+Music%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A19%3A%22Musik+populer+korea%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22a53144a9416b0000a1c4e40b7edfd12f255bfdb0%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%221ca90d645af481df2dc6edb2f4c7d633fc76cb00%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%225877261d8127c35e37e7af47ecdbc5ecdce17176%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22fc9b5b68bb1c3da03f41c8d5e710566f6e11ff1e%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A00%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A00%3A37%22%3B%7D', 'New data. Subject. Names: Musik populer korea;', '2025-12-15 12:00:37'),
(47, 13, 1, 'Admin', '[Zayyan Selca]', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2213%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2213%22%3Bs%3A5%3A%22title%22%3Bs%3A14%3A%22%5BZayyan+Selca%5D%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A7%3A%22Picture%22%3Bs%3A3%3A%22sor%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222024%22%3Bs%3A9%3A%22collation%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ONE+z%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A5%3A%22Korea%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A39%3A%22Karya+bahan+grafis+berbentuk+photocard.%22%3Bs%3A5%3A%22image%22%3Bs%3A39%3A%22cover_-zayyan-selca-20251215121857.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A28%3A%22two-dimensional+moving+image%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A4%3A%22card%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A10%3A%22Idol+Korea%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%224d804128489ef37aa8b47b63c33972a76632fe50%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%226e408c8007fc611ebbb49238f6b2b868477eca7e%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22992777eacc87ee29fbe6985597e35cd87d052ffc%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%228fb7b5224f12b0a32f1a9b014a9ed65a1096dcb4%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A18%3A56%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A18%3A56%22%3B%7D', 'New data. Bibliography.', '2025-12-15 12:18:58'),
(48, 13, 1, 'Admin', '[Zayyan Selca]', '::1', 'update', 'cover', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2213%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2213%22%3Bs%3A5%3A%22title%22%3Bs%3A14%3A%22%5BZayyan+Selca%5D%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A7%3A%22Picture%22%3Bs%3A3%3A%22sor%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222024%22%3Bs%3A9%3A%22collation%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ONE+z%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A5%3A%22Korea%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A39%3A%22Karya+bahan+grafis+berbentuk+photocard.%22%3Bs%3A5%3A%22image%22%3Bs%3A39%3A%22cover_-zayyan-selca-20251215121857.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A28%3A%22two-dimensional+moving+image%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A4%3A%22card%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A10%3A%22Idol+Korea%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%224d804128489ef37aa8b47b63c33972a76632fe50%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%226e408c8007fc611ebbb49238f6b2b868477eca7e%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22992777eacc87ee29fbe6985597e35cd87d052ffc%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%228fb7b5224f12b0a32f1a9b014a9ed65a1096dcb4%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A18%3A56%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A18%3A56%22%3B%7D', 'New data. Image. File: cover_-zayyan-selca-20251215121857.jpeg', '2025-12-15 12:18:58'),
(49, 13, 1, 'Admin', '[Zayyan Selca]', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2213%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2213%22%3Bs%3A5%3A%22title%22%3Bs%3A14%3A%22%5BZayyan+Selca%5D%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A7%3A%22Picture%22%3Bs%3A3%3A%22sor%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222024%22%3Bs%3A9%3A%22collation%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ONE+z%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A5%3A%22Korea%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A39%3A%22Karya+bahan+grafis+berbentuk+photocard.%22%3Bs%3A5%3A%22image%22%3Bs%3A39%3A%22cover_-zayyan-selca-20251215121857.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A28%3A%22two-dimensional+moving+image%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A4%3A%22card%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A10%3A%22Idol+Korea%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%224d804128489ef37aa8b47b63c33972a76632fe50%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%226e408c8007fc611ebbb49238f6b2b868477eca7e%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22992777eacc87ee29fbe6985597e35cd87d052ffc%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%228fb7b5224f12b0a32f1a9b014a9ed65a1096dcb4%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A18%3A56%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A18%3A56%22%3B%7D', 'New data. Author. Names: One Cool Jacso Entertainment;', '2025-12-15 12:18:58'),
(50, 13, 1, 'Admin', '[Zayyan Selca]', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2213%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2213%22%3Bs%3A5%3A%22title%22%3Bs%3A14%3A%22%5BZayyan+Selca%5D%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A7%3A%22Picture%22%3Bs%3A3%3A%22sor%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222024%22%3Bs%3A9%3A%22collation%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+ONE+z%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A5%3A%22Korea%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A39%3A%22Karya+bahan+grafis+berbentuk+photocard.%22%3Bs%3A5%3A%22image%22%3Bs%3A39%3A%22cover_-zayyan-selca-20251215121857.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A28%3A%22two-dimensional+moving+image%22%3Bs%3A10%3A%22media_type%22%3Bs%3A10%3A%22unmediated%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A4%3A%22card%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A28%3A%22One+Cool+Jacso+Entertainment%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A16%3A%22Badan+Organisasi%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A15%3A%22Pengarang+Utama%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A10%3A%22Idol+Korea%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%224d804128489ef37aa8b47b63c33972a76632fe50%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%226e408c8007fc611ebbb49238f6b2b868477eca7e%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22992777eacc87ee29fbe6985597e35cd87d052ffc%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%228fb7b5224f12b0a32f1a9b014a9ed65a1096dcb4%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A18%3A56%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A18%3A56%22%3B%7D', 'New data. Subject. Names: Idol Korea;', '2025-12-15 12:18:58');
INSERT INTO `biblio_log` (`biblio_log_id`, `biblio_id`, `user_id`, `realname`, `title`, `ip`, `action`, `affectedrow`, `rawdata`, `additional_information`, `date`) VALUES
(51, 14, 1, 'Admin', 'Shopee', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2214%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2214%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2214%22%3Bs%3A5%3A%22title%22%3Bs%3A6%3A%22Shopee%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A19%3A%22Electronic+Resource%22%3Bs%3A3%3A%22sor%22%3Bs%3A11%3A%22Sea+Limited%22%3Bs%3A7%3A%22edition%22%3Bs%3A13%3A%22Versi+3.63.26%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A11%3A%22Sea+Limited%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222015%22%3Bs%3A9%3A%22collation%22%3Bs%3A47%3A%221+file+%3A+Data+dan+Program+elektronik+%3B+270%2C8+MB%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+SEA+s%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A9%3A%22Singapura%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A217%3A%22Platform+e-commerce+atau+belanja+online+yang+menyediakan+tempat+bagi+penjual+untuk+memasarkan+produk+dan+pembeli+untuk+menemukan+berbagai+barang%2C+mulai+dari+fashion%2C+elektronik%2C+kebutuhan++sehari-hari%2C+hingga+makanan.%22%3Bs%3A5%3A%22image%22%3Bs%3A32%3A%22cover_shopee-20251215123118.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A16%3A%22computer+program%22%3Bs%3A10%3A%22media_type%22%3Bs%3A5%3A%22other%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A15%3A%22online+resource%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A16%3A%22Platform+belanja%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2254024295124944e76c1c4241f81fa44f108e89a6%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%226bcc7ab6bc5a45946410cae77cd011352c83b704%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22be6fd544d2459a68104c85f61447711c11d88d62%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A31%3A18%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A31%3A18%22%3B%7D', 'New data. Bibliography.', '2025-12-15 12:31:18'),
(52, 14, 1, 'Admin', 'Shopee', '::1', 'update', 'cover', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2214%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2214%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2214%22%3Bs%3A5%3A%22title%22%3Bs%3A6%3A%22Shopee%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A19%3A%22Electronic+Resource%22%3Bs%3A3%3A%22sor%22%3Bs%3A11%3A%22Sea+Limited%22%3Bs%3A7%3A%22edition%22%3Bs%3A13%3A%22Versi+3.63.26%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A11%3A%22Sea+Limited%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222015%22%3Bs%3A9%3A%22collation%22%3Bs%3A47%3A%221+file+%3A+Data+dan+Program+elektronik+%3B+270%2C8+MB%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+SEA+s%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A9%3A%22Singapura%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A217%3A%22Platform+e-commerce+atau+belanja+online+yang+menyediakan+tempat+bagi+penjual+untuk+memasarkan+produk+dan+pembeli+untuk+menemukan+berbagai+barang%2C+mulai+dari+fashion%2C+elektronik%2C+kebutuhan++sehari-hari%2C+hingga+makanan.%22%3Bs%3A5%3A%22image%22%3Bs%3A32%3A%22cover_shopee-20251215123118.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A16%3A%22computer+program%22%3Bs%3A10%3A%22media_type%22%3Bs%3A5%3A%22other%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A15%3A%22online+resource%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A16%3A%22Platform+belanja%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2254024295124944e76c1c4241f81fa44f108e89a6%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%226bcc7ab6bc5a45946410cae77cd011352c83b704%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22be6fd544d2459a68104c85f61447711c11d88d62%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A31%3A18%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A31%3A18%22%3B%7D', 'New data. Image. File: cover_shopee-20251215123118.jpeg', '2025-12-15 12:31:18'),
(53, 14, 1, 'Admin', 'Shopee', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2214%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2214%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2214%22%3Bs%3A5%3A%22title%22%3Bs%3A6%3A%22Shopee%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A19%3A%22Electronic+Resource%22%3Bs%3A3%3A%22sor%22%3Bs%3A11%3A%22Sea+Limited%22%3Bs%3A7%3A%22edition%22%3Bs%3A13%3A%22Versi+3.63.26%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A1%3A%22-%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A11%3A%22Sea+Limited%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222015%22%3Bs%3A9%3A%22collation%22%3Bs%3A47%3A%221+file+%3A+Data+dan+Program+elektronik+%3B+270%2C8+MB%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+SEA+s%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A9%3A%22Singapura%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A217%3A%22Platform+e-commerce+atau+belanja+online+yang+menyediakan+tempat+bagi+penjual+untuk+memasarkan+produk+dan+pembeli+untuk+menemukan+berbagai+barang%2C+mulai+dari+fashion%2C+elektronik%2C+kebutuhan++sehari-hari%2C+hingga+makanan.%22%3Bs%3A5%3A%22image%22%3Bs%3A32%3A%22cover_shopee-20251215123118.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3Bs%3A16%3A%22computer+program%22%3Bs%3A10%3A%22media_type%22%3Bs%3A5%3A%22other%22%3Bs%3A12%3A%22carrier_type%22%3Bs%3A15%3A%22online+resource%22%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A16%3A%22Platform+belanja%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2254024295124944e76c1c4241f81fa44f108e89a6%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%226bcc7ab6bc5a45946410cae77cd011352c83b704%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22be6fd544d2459a68104c85f61447711c11d88d62%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+12%3A31%3A18%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A31%3A18%22%3B%7D', 'New data. Subject. Names: Platform belanja;', '2025-12-15 12:31:18'),
(54, 11, 1, 'Admin', 'Elemental', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2211%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2211%22%3Bs%3A5%3A%22title%22%3Bs%3A9%3A%22Elemental%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A76%3A%22Walt+Disney+Production+dan+Pixar+Animation+Studios%2C+Peter+Sohn%2C+Denise+Ream.%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A35%3A%22Walt+Disney+Studios+Motion+Pictures%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222023%22%3Bs%3A9%3A%22collation%22%3Bs%3A44%3A%221+Disk+film+%28109+men.%29+%3A+bersuara%2C+berwarna.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+WAL+e%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A10%3A%22California%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A272%3A%22Film+ini+membahas+tentang+membahas+tentang+perbedaan+dan+keberagaman%2C+khususnya+bagaimana+individu+dari+latar+belakang%2C+budaya%2C+dan+identitas+yang+berbeda+dapat+saling+memahami+dan+membangun+hubungan%2C+meskipun+menghadapi+batasan+tradisi%2C+prasangka%2C+dan+ekspektasi+keluarga%22%3Bs%3A5%3A%22image%22%3Bs%3A35%3A%22cover_elemental-20251215123202.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A12%3A%22Film+Animasi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22F00001%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+WAL+e%22%3Bs%3A14%3A%22coll_type_name%22%3BN%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3BN%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A1%3A%220%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2278895637ac021dd4089328ec0210319246cb502e%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22674ca56579b7b2b62f9d5d2e249008d912564d95%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%2233550c84f9f5da9d63dced52cf9a843a16db5a41%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A49%3A24%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A32%3A02%22%3B%7D', 'Updated data. Bibliography.', '2025-12-15 12:32:02'),
(55, 11, 1, 'Admin', 'Elemental', '::1', 'update', 'cover', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2211%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2211%22%3Bs%3A5%3A%22title%22%3Bs%3A9%3A%22Elemental%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A76%3A%22Walt+Disney+Production+dan+Pixar+Animation+Studios%2C+Peter+Sohn%2C+Denise+Ream.%22%3Bs%3A7%3A%22edition%22%3Bs%3A1%3A%22-%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A35%3A%22Walt+Disney+Studios+Motion+Pictures%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222023%22%3Bs%3A9%3A%22collation%22%3Bs%3A44%3A%221+Disk+film+%28109+men.%29+%3A+bersuara%2C+berwarna.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A1%3A%22-%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+WAL+e%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A10%3A%22California%22%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A272%3A%22Film+ini+membahas+tentang+membahas+tentang+perbedaan+dan+keberagaman%2C+khususnya+bagaimana+individu+dari+latar+belakang%2C+budaya%2C+dan+identitas+yang+berbeda+dapat+saling+memahami+dan+membangun+hubungan%2C+meskipun+menghadapi+batasan+tradisi%2C+prasangka%2C+dan+ekspektasi+keluarga%22%3Bs%3A5%3A%22image%22%3Bs%3A35%3A%22cover_elemental-20251215123202.jpeg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%221%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A1%3A%22-%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3BN%3Bs%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A12%3A%22Film+Animasi%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topik%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22F00001%22%3Bs%3A11%3A%22call_number%22%3Bs%3A9%3A%22300+WAL+e%22%3Bs%3A14%3A%22coll_type_name%22%3BN%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3BN%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222025-12-15%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A1%3A%220%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2278895637ac021dd4089328ec0210319246cb502e%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22674ca56579b7b2b62f9d5d2e249008d912564d95%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%2233550c84f9f5da9d63dced52cf9a843a16db5a41%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222025-12-15+11%3A49%3A24%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222025-12-15+12%3A32%3A02%22%3B%7D', 'Updated data. Image. File: cover_elemental-20251215123202.jpeg', '2025-12-15 12:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `biblio_mark`
--

CREATE TABLE `biblio_mark` (
  `id` varchar(32) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_relation`
--

CREATE TABLE `biblio_relation` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `rel_biblio_id` int(11) NOT NULL DEFAULT 0,
  `rel_type` int(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_topic`
--

CREATE TABLE `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `topic_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_topic`
--

INSERT INTO `biblio_topic` (`biblio_id`, `topic_id`, `level`) VALUES
(1, 18, 1),
(2, 19, 1),
(4, 20, 1),
(5, 21, 1),
(6, 22, 1),
(7, 23, 1),
(8, 24, 1),
(10, 25, 1),
(11, 26, 1),
(12, 27, 1),
(13, 28, 1),
(14, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `name` varchar(64) NOT NULL,
  `contents` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expired_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(255) NOT NULL,
  `content_desc` text NOT NULL,
  `content_path` varchar(20) NOT NULL,
  `is_news` smallint(1) DEFAULT NULL,
  `is_draft` smallint(1) DEFAULT 0,
  `publish_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `is_draft`, `publish_date`, `input_date`, `last_update`, `content_ownpage`) VALUES
(1, 'Library Information', '<h3>Contact Information</h3>\r\n<p><strong>Address :</strong> <br /> Jenderal Sudirman Road, Senayan, Jakarta, Indonesia - Postal Code : 10270 <br /> <strong>Phone Number :</strong> <br /> (021) 5711144 <br /> <strong>Fax Number :</strong> <br /> (021) 5711144</p>\r\n<h3>Opening Hours</h3>\r\n<p><strong>Monday - Friday :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 20.00 PM <br /> <strong>Saturday  :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 17.00 PM</p>\r\n<h3>Collections</h3>\r\n<p>We have many types of collections in our library, range from Fictions to Sciences Material, from printed material to digital collections such CD-ROM, CD, VCD and DVD. We also collect daily serials publications such as newspaper and also monthly serials such as magazines.</p>\r\n<h3>Library Membership</h3>\r\n<p>To be able to loan our library collections, you must first become library member. There is terms and conditions that you must obey.</p>', 'libinfo', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(2, 'Help On Usage', '<h3>Searching</h3>\r\n<p>There are 2 methods available on searching library catalog. The first one is <strong>SIMPLE SEARCH</strong>, which is the simplest method on searching catalog. You just enter any keyword, either it containes in titles, author(s) names or subjects. You can supply more than one keywords in Simple Search method and it will expanding your search results.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ADVANCED SEARCH</strong>, lets you define keywords in more specific fields. If you want your keywords only contained in title field, then type your keyword in Title field and the system will limit its search within <strong>Title</strong> fields only, not in other fields. Location field lets you narrowing search results by specific location, so only collection that exists in selected location get fetched by system.</p>', 'help', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(3, 'Welcome To Admin Page', '<div class=\"container admin_home\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Bibliography</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon biblioIcon notAJAX\" href=\"index.php?mod=bibliography\"></a></div>\r\n<div class=\"col-sm-8\">The Bibliography module lets you manage your library bibliographical data. It also include collection items management to manage a copies of your library collection so it can be used in library circulation.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Circulation</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon circulationIcon notAJAX\" href=\"index.php?mod=circulation\"></a></div>\r\n<div class=\"col-sm-8\">The Circulation module is used for doing library circulation transaction such as collection loans and return. In this module you can also create loan rules that will be used in loan transaction proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Membership</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon memberIcon notAJAX\" href=\"index.php?mod=membership\"></a></div>\r\n<div class=\"col-sm-8\">The Membership module lets you manage library members such adding, updating and also removing. You can also manage membership type in this module.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Stock Take</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon stockTakeIcon notAJAX\" href=\"index.php?mod=stock_take\"></a></div>\r\n<div class=\"col-sm-8\">The Stock Take module is the easy way to do Stock Opname for your library collections. Follow several steps that ease your pain in Stock Opname proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Serial Control</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon serialIcon notAJAX\" href=\"index.php?mod=serial_control\"></a></div>\r\n<div class=\"col-sm-8\">Serial Control module help you manage library\'s serial publication subscription. You can track issues for each subscription.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Reporting</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon reportIcon notAJAX\" href=\"index.php?mod=reporting\"></a></div>\r\n<div class=\"col-sm-8\">Reporting lets you view various type of reports regardings membership data, circulation data and bibliographic data. All compiled on-the-fly from current library database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Master File</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon masterFileIcon notAJAX\" href=\"index.php?mod=master_file\"></a></div>\r\n<div class=\"col-sm-8\">The Master File modules lets you manage referential data that will be used by another modules. It include Authority File management such as Authority, Subject/Topic List, GMD and other data.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>System</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon systemIcon notAJAX\" href=\"index.php?mod=system\"></a></div>\r\n<div class=\"col-sm-8\">The System module is used to configure application globally, manage index, manage librarian, and also backup database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'adminhome', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 22:02:11', '1'),
(4, 'Homepage Info', '<p>Welcome To <strong>SLiMS Library</strong> Online Public Access Catalog (OPAC). Use OPAC to search collection in our library.</p>', 'headerinfo', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(5, 'Tentang SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> adalah akronim dari Senayan Library Management System. Awalnya dikembangkan oleh Perpustakaan Kementerian Pendidikan Nasional untuk menggantikan Alice (http://www2.softlinkint.com). Tujuan utamanya agar Perpustakaan Kemdiknas mempunyai kebebasan untuk menggunakan, mempelajari, memodifikasi dan mendistribusikan perangkat lunak yang digunakan. SLiMS, maka dirilis dengan lisensi GPL dan sekarang pengembangan SLiMS dilakukan oleh komunitas penggunanya.<!--intro_akhir--></p>\r\n<p><strong>Asal Mula</strong></p>\r\n<p>Setelah beroperasi 50 tahun lebih, karena beberapa alasan Perpustakaan BC Indonesia yang telah selama bertahun-tahun menjadi andalan layanan BC di Indonesia harus ditutup. Pengelola BC Indonesia kemudian berinisiatif untuk menghibahkan pengelolaan aset perpustakaanya ke tangan institusi pemerintah. Dalam hal ini, institusi pemerintah yang dianggap sesuai bidangnya dan strategis tempatnya, adalah Departemen Pendidikan Nasional (Depdiknas). Yang dihibahkan tidak hanya koleksi, tetapi juga rak koleksi, hardware (server dan workstation) serta sistem termasuk untuk aplikasi manajemen administrasi perpustakaan (Alice).</p>\r\n<p>Seiring dengan berjalannya waktu, manajemen Perpustakaan Depdiknas mulai menghadapi beberapa kendala dalam penggunaan sistem Alice. Pertama, keterbatasan dalam menambahkan fitur-fitur baru. Antara lain: kebutuhan manajemen serial, meng-online-kan katalog di web dan kustomisasi report yang sering berubah-ubah kebutuhannya. Penambahan fitur jika harus meminta modul resmi dari developer Alice, berarti membutuhkan dana tambahan yang tidak kecil. Apalagi tidak ada distributor resminya di Indonesia sehingga harus mengharapkan support dari Inggris. Ditambah lagi beberapa persyaratan yang membutuhkan infrastruktur biaya mahal seperti dedicated public IP agar bisa meng-online-kan Alice di web.<br /><br />Saat itu untuk mengatasi sebagian kebutuhan (utamanya kustomisasi report), dilakukan dengan ujicoba mengakses langsung database yang disimpan dalam format DBase. Terkadang berhasil terkadang tidak karena struktur datanya proprietary dan kompleks serta jumlah rekodnya banyak. Untuk mempelajari struktur database, dicoba melakukan kontak via email ke developer Alice. Tetapi tidak ada respon sama sekali. Disini muncul masalah kedua. Sulitnya mempelajari lebih mendalam cara kerja perangkat lunak Alice. Karena Alice merupakan sistem proprietary yang serba tertutup, segala sesuatunya sangat tergantung vendor. Dibutuhkan sejumlah uang untuk mendapatkan layanan resmi untuk kustomisasi.<br /><br />Perpustakaan Depdiknas salah satu tupoksinya adalah melakukan koordinasi pengelolaan perpustakaan unit kerja dibawah lingkungan Depdiknas. Dalam implementasinya, seringkali muncul kebutuhan untuk bisa mendistribusikan perangkat lunak sistem perpustakaan ke berbagai unit kerja tersebut. Disini masalah ketiga: sulit (atau tidak mungkin) untuk melakukan redistribusi sistem Alice. Alice merupakan perangkat lunak yang secara lisensi tidak memungkinkan diredistribusi oleh pengelola Perpustakaan Depdiknas secara bebas. Semuanya harus ijin dan membutuhkan biaya.<br /><br />November 2006, perpustakaan dihadapkan oleh sebuah masalah mendasar. Sistem Alice tiba-tiba tidak bisa digunakan. Ternyata Alice yang digunakan selama ini diimplementasikan dengan sistem sewa. Pantas saja biayanya relatif murah. Tiap tahun pengguna harus membayar kembali untuk memperpanjang masa sewa pakainya. Tetapi yang mengkhawatirkan adalah fakta bahwa perpustakaan harus menyimpan semua informasi penting dan kritikal di sebuah sistem yang tidak pernah dimiliki. Yang kalau lupa atau tidak mau membayar sewa lagi, hilanglah akses terhadap data kita sendiri. Konyol sekali. Itu sama saja dengan bunuh diri kalau masih tergantung dengan sistem berlisensi seperti itu.<br /><br />Akhirnya pengelola Perpustakaan Depdiknas me-review kembali penggunaan sistem Alice di perpustakaan Depdiknas. Beberapa poin pentingnya antara lain:<br />&bull;&nbsp;&nbsp;&nbsp; Alice memang handal (reliable), tapi punya banyak keterbatasan. Biaya sewanya memang relatif murah, tetapi kalau membutuhkan support tambahan, baik sederhana ataupun kompleks, sangat tergantung dengan developer Alice yang berpusat di Inggris. Butuh biaya yang kalau di total juga tidak murah.<br />&bull;&nbsp;&nbsp;&nbsp; Model lisensi proprietary yang digunakan developer Alice tidak cocok dengan kondisi kebanyakan perpustakaan di Indonesia. Padahal pengelola Perpustakaan Depdiknas sebagai koordinator banyak perpustakaan di lingkungan Depdiknas, punya kepentingan untuk bisa dengan bebas melakukan banyak hal terhadap software yang digunakan.<br />&bull;&nbsp;&nbsp;&nbsp; Menyimpan data penting dan kritikal untuk operasional perpustakaan di suatu software yang proprietary dan menggunakan sistem sewa, dianggap sesuatu yang konyol dan mengancam independensi dan keberlangsungan perpustakaan itu sendiri.<br />&bull;&nbsp;&nbsp;&nbsp; Alice berjalan diatas sistem operasi Windows yang juga proprietary padahal pengelola Perpustakaan Depdiknas ingin beralih menggunakan Sistem Operasi open source (seperti GNU/Linux dan FreeBSD).<br />&bull;&nbsp;&nbsp;&nbsp; Masalah devisa negara yang terbuang untuk membayar software yang tidak pernah dimiliki.<br />&bull;&nbsp;&nbsp;&nbsp; Intinya: pengelola Perpustakaan Depdiknas ingin menggunakan software yang memberikan dan menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Lisensi Alice tidak memungkinkan untuk itu.<br /><br />Setelah memutuskan untuk hijrah menggunakan sistem yang lain, maka langkah berikutnya adalah mencari sistem yang ada untuk digunakan atau mengembangkan sendiri sistem yang dibutuhkan. Beberapa pertimbangan yang harus dipenuhi:<br />&bull;&nbsp;&nbsp;&nbsp; Dirilis dibawah lisensi yang menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Model lisensi open source (www.openosurce.org) dianggap sebagai model yang paling ideal dan sesuai.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan untuk membangun sistem juga harus berlisensi open source.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan haruslah teknologi yang relatif mudah dipelajari oleh pengelola perpustakaan Depdiknas yang berlatarbelakang pendidiknas pustakawan, seperti PHP (scripting language) dan MySQL (database). Jika tidak menguasai sisi teknis teknologi, maka akan terjebak kembali terhadap ketergantungan pada developer.<br /><br />Langkah berikutnya adalah melakukan banding software sistem perpustakaan open source yang bisa diperoleh di internet. Beberapa software yang dicoba antara lain: phpMyLibrary, OpenBiblio, KOHA, EverGreen. Pengelola perpustakaan Depdiknas merasa tidak cocok dengan software yang ada, dengan beberapa alasan:<br />&bull;&nbsp;&nbsp;&nbsp; Desain aplikasi dan database yang tidak baik atau kurang menerapkan secara serius prinsip-prinsip pengembangan aplikasi dan database yang baik sesuai dengan teori yang ada (PHPMyLibrary, OpenBiblio).<br />&bull;&nbsp;&nbsp;&nbsp; Menggunakan teknologi yang sulit dikuasai oleh pengelola perpustakaan Depdiknas (KOHA dan EverGreen dikembangkan menggunakan Perl dan C++ Language yang relatif lebih sulit dipelajari).<br />&bull;&nbsp;&nbsp;&nbsp; Beberapa sudah tidak aktif atau lama sekali tidak di rilis versi terbarunya (PHPMyLibrary dan OpenBiblio).<br /><br />Karena tidak menemukan sistem yang dibutuhkan, maka diputuskan untuk mengembangkan sendiri aplikasi sistem perpustakaan yang dibutuhkan. Dalam dunia pengembangan software, salah satu best practice-nya adalah memberikan nama kode (codename) pengembangan. Nama kode berbeda dengan nama aplikasinya itu sendiri. Nama kode biasanya berbeda-beda tiap versi. Misalnya kode nama &ldquo;Hardy Heron&rdquo; untuk Ubuntu Linux 8.04 dan &ldquo;Jaunty Jackalope&rdquo; untuk Ubuntu Linux 9.04. Pengelola perpustakaan Depdiknas Untuk versi awal (1.0) aplikasi yang akan dikembangkan, memberikan nama kode &ldquo;Senayan&rdquo;. Alasannya sederhana, karena awal dikembangkan di perpustakaan Depdiknas yang berlokasi di Senayan. Apalagi Perpustakaan Depdiknas mempunyai brand sebagai library@senayan. Belakangan karena dirasa nama &ldquo;Senayan&rdquo; dirasa cocok dan punya nilai marketing yang bagus, maka nama &ldquo;Senayan&rdquo; dijadikan nama resmi aplikasi sistem perpustakaan yang dikembangkan.<br /><br />Mengembangkan Senayan<br /><br />Sebelum mulai mengembangkan Senayan, ada beberapa keputusan desain aplikasi yang harus dibuat. Aspek desain ini penting diantaranya untuk pengambilankeputusan dari berbagai masukan yang datang dari komunitas. Antara lain:<br /><br />Pertama,&nbsp; Senayan adalah aplikasi untuk kebutuhan administrasi dan konten perpustakaan (Library Automation System). Senayan didesain untuk kebutuhan skala menengah maupun besar. Cocok untuk perpustakaan yang memiliki koleksi, anggota dan staf banyak di lingkungan jaringan, baik itu lokal (intranet) dan internet.<br /><br />Kedua, Senayan dibangun dengan memperhatikan best practice dalam pengembangan software seperti dalam hal penulisan source code, dokumentasi, dan desain database.<br /><br />Ketiga, Senayan dirancang untuk compliant dengan standar pengelolaan koleksi di perpustakaan. Untuk standar pengatalogan minimal memenuhi syarat AACR 2 level 2 (Anglo-American Cataloging Rules). Kebutuhan untuk kesesuaian dengan standar di perpustakaan terus berkembang dan pengelola perpustakaan Depdiknas dan developer Senayan berkomitmen untuk terus mengembangkan Senayan agar mengikuti standar-standar tersebut.<br /><br />Keempat, Senayan didesain agar bisa juga menjadi middleware bagi aplikasi lain untuk menggunakan data yang ada didalam Senayan. Untuk itu Senayan akan menyediakan API (application programming Interface) yang berbasis web service.<br /><br />Kelima, Senayan merupakan aplikasi yang cross-platform, baik dari sisi aplikasinya itu sendiri dan akses terhadap aplikasi. Untuk itu basis yang paling tepat ada basis web.<br /><br />Keenam, teknologi yang digunakan untuk membangun Senayan, haruslah terbukti bisa diinstall di banyak platform sistem operasi, berlisensi open source dan mudah dipelajari oleh pengelola perpustakaan Depdiknas. Diputuskan untuk menggunakan PHP (www.php.net) untuk web scripting languange dan MySQL (www.mysql.com) untuk server database.<br /><br />Ketujuh, diputuskan untuk mengembangkan library PHP sendiri yang didesain spesifik untuk kebutuhan membangun library automation system. Tidak menggunakan library PHP yang sudah terkenal seperti PEAR (pear.php.net) karena alasan penguasaan terhadap teknologi dan kesederhanaan. Library tersebut diberinama &ldquo;simbio&rdquo;.<br /><br />Kedelapan, untuk mempercepat proses pengembangan, beberapa modul atau fungsi yang dibutuhkan yang dirasa terlalu lama dan rumit untuk dikembangkan sendiri, akan menggunakan software open source yang berlisensi open source juga. Misalnya: flowplayer untuk dukungan multimedia, jQuery untuk dukungan AJAX (Asynchronous Javascript and XML), genbarcode untuk dukungan pembuatan barcode, PHPThumb untuk dukungan generate image on-the-fly, tinyMCE untuk web-based text editor, dan lain-lain.<br /><br />Kesembilan, untuk menjaga spirit open source, proses pengembangan Senayan dilakukan dengan infrastruktur yang berbasis open source. Misalnya: server web menggunakan Apache, server produksi menggunakan OS Linux Centos dan OpenSuse, para developer melakukan pengembangan dengan OS Ubuntu Linux, manajemen source code menggunakan software git, dan lain-lain.<br /><br />Kesepuluh, Senayan dirilis ke masyarakat umum dengan lisensi GNU/GPL versi 3 yang menjamin kebebasan penggunanya untuk mempelajari, menggunakan, memodifikasi dan redistribusi Senayan.<br /><br />Kesebelas, para developer dan pengelola perpustakaan Depdiknas berkomitmen untuk terus mengembangkan Senayan dan menjadikannya salah satu contoh software perpustakaan yang open source, berbasis di indonesia dan menjadi salah satu contoh bagi model pengembangan open source yang terbukti berjalan dengan baik.<br /><br />Keduabelas, model pengembangan Senayan adalah open source yang artinya setiap orang dipersilahkan memberikan kontribusinya. Baik dari sisi pemrogaman, template, dokumentasi, dan lain-lain. Tentu saja ada mekanisme mana kontribusi yang bagus untuk dimasukkan dalam rilis resmi, mana yang tidak. Mengacu ke dokumen &hellip; (TAMBAHKAN DENGAN TULISAN ERIC S RAYMOND)<br /><br />Model pengembangan senayan<br /><br />Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.<br />Fitur Senayan<br />Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN adalah sebagai berikut:<br />Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.<br /><br />Roadmap Pengembangan Senayan<br />SENAYAN akan terus dikembangkan oleh para pengembangnya beserta komunitas pengguna SENAYAN lainnya. Berikut adalah Roadmap pengembangan SENAYAN ke depannya:<br /><br />Pengembangan aplikasi:<br />1.&nbsp;&nbsp;&nbsp; Kompatibilitas dengan MARC dan standar pertukaran data yang komplit. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Memastikan bahwa format data bibliografi kompatibel dengan MARC secara lebih baik (minimal MARC light).<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap RFID.<br />&bull;&nbsp;&nbsp;&nbsp; Fitur untuk impor / ekspor rekod dari The Online Computer Library Centre (OCLC), Research Libraries Information Network (RLIN), vendor sistem lain yang compliant dengan MARC.<br />&bull;&nbsp;&nbsp;&nbsp; Validasi data ISBN menggunakan modulus seven.<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap standar di perpustakaan, seperti: Library of Congress Subject Headings, Library of Congress Classification, ALA filing rules, International Standard Bibliographic Description, ANSI Standard for Bibliographic Information Exchange on magnetic tape, Common communication format (ISO 2709).<br />2.&nbsp;&nbsp;&nbsp; Katalog induk/bersama (union catalog)<br />3.&nbsp;&nbsp;&nbsp; Implementasi Thesaurus. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pengatalogan.<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pencarian, misalnya memberikan advis pencarian menggunakan knowledge base yang dibangun dengan sistem tesaurus.<br />4.&nbsp;&nbsp;&nbsp; Implementasi Library 2.0. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; User bisa login dan mempunyai halaman personalisasi.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan reservasi koleksi dan memperpanjang peminjaman.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan komunikasi dengan pustakawan via messaging system.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan tagging, rekomendasi koleksi dan menyimpannya didalam daftar koleksi favoritnya.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa memberikan komentar terhadap koleksi.<br />&bull;&nbsp;&nbsp;&nbsp; Pustakawan bisa memasukkan preferensi pemakai didalam data keanggotaan. Preferensi tersebut bisa dimanfaatkan salah satunya untuk men-generate semacam daftar koleksi terpilih untuk dicetak atau ditampilkan ketika user login.<br />5.&nbsp;&nbsp;&nbsp; Peningkatan dukungan manajemen konten digital dan entri analitikal<br /><br />Pengembangan basis komunitas pengguna:<br />&bull;&nbsp;&nbsp;&nbsp; Membangun komunitas pengguna di berbagai kota <br />&bull;&nbsp;&nbsp;&nbsp; Mengadakan Senayan Developers Day untuk silaturahmi antar developer Senayan, update dokumentasi, penambahan fitur baru dan bug fixing dan mencari bibit pengembang yang baru.<br />&bull;&nbsp;&nbsp;&nbsp; Workshop/Seminar Nasional Tahunan<br />&bull;&nbsp;&nbsp;&nbsp; Jam Sessions rutin setiap 3 bulan</p>', 'about_slims', NULL, 0, NULL, '2010-08-28 23:29:55', '2010-11-12 18:21:01', '1'),
(6, 'Modul yang Tersedia', '<p><!--intro_awal-->Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN antara lain: pengatalogan/bibliografi, keanggotaan, sirkulasi, masterfile, stock opname (inventarisasi koleksi), pelaporan/reporting, manajemen kontrol serial, digital library, dan lain-lain.<!--intro_akhir--></p>\r\n<p>Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.</p>', 'modul_tersedia', NULL, 0, NULL, '2010-08-29 04:03:09', '2010-08-29 04:05:49', '1'),
(7, 'Lisensi SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> dilisensikan dibawah GNU/GPL (http://www.gnu.org/licenses/gpl.html) untuk menjamin kebebasan pengguna dalam menggunakannya. GNU General Public License (disingkat GNU GPL atau cukup GPL) merupakan suatu lisensi perangkat lunak bebas yang aslinya ditulis oleh Richard Stallman untuk proyek GNU. Lisensi GPL memberikan penerima salinan perangkat lunak hak dari perangkat lunak bebas dan menggunakan copyleft&nbsp; untuk memastikan kebebasan yang sama diterapkan pada versi berikutnya dari karya tersebut.<!--intro_akhir--></p>\r\n<p>&nbsp;GNU LESSER GENERAL PUBLIC LICENSE<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version 3, 29 June 2007<br /><br />&nbsp;Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;<br />&nbsp;Everyone is permitted to copy and distribute verbatim copies<br />&nbsp;of this license document, but changing it is not allowed.<br /><br /><br />&nbsp; This version of the GNU Lesser General Public License incorporates<br />the terms and conditions of version 3 of the GNU General Public<br />License, supplemented by the additional permissions listed below.<br /><br />&nbsp; 0. Additional Definitions.<br /><br />&nbsp; As used herein, \"this License\" refers to version 3 of the GNU Lesser<br />General Public License, and the \"GNU GPL\" refers to version 3 of the GNU<br />General Public License.<br /><br />&nbsp; \"The Library\" refers to a covered work governed by this License,<br />other than an Application or a Combined Work as defined below.<br /><br />&nbsp; An \"Application\" is any work that makes use of an interface provided<br />by the Library, but which is not otherwise based on the Library.<br />Defining a subclass of a class defined by the Library is deemed a mode<br />of using an interface provided by the Library.<br /><br />&nbsp; A \"Combined Work\" is a work produced by combining or linking an<br />Application with the Library.&nbsp; The particular version of the Library<br />with which the Combined Work was made is also called the \"Linked<br />Version\".<br /><br />&nbsp; The \"Minimal Corresponding Source\" for a Combined Work means the<br />Corresponding Source for the Combined Work, excluding any source code<br />for portions of the Combined Work that, considered in isolation, are<br />based on the Application, and not on the Linked Version.<br /><br />&nbsp; The \"Corresponding Application Code\" for a Combined Work means the<br />object code and/or source code for the Application, including any data<br />and utility programs needed for reproducing the Combined Work from the<br />Application, but excluding the System Libraries of the Combined Work.<br /><br />&nbsp; 1. Exception to Section 3 of the GNU GPL.<br /><br />&nbsp; You may convey a covered work under sections 3 and 4 of this License<br />without being bound by section 3 of the GNU GPL.<br /><br />&nbsp; 2. Conveying Modified Versions.<br /><br />&nbsp; If you modify a copy of the Library, and, in your modifications, a<br />facility refers to a function or data to be supplied by an Application<br />that uses the facility (other than as an argument passed when the<br />facility is invoked), then you may convey a copy of the modified<br />version:<br /><br />&nbsp;&nbsp; a) under this License, provided that you make a good faith effort to<br />&nbsp;&nbsp; ensure that, in the event an Application does not supply the<br />&nbsp;&nbsp; function or data, the facility still operates, and performs<br />&nbsp;&nbsp; whatever part of its purpose remains meaningful, or<br /><br />&nbsp;&nbsp; b) under the GNU GPL, with none of the additional permissions of<br />&nbsp;&nbsp; this License applicable to that copy.<br /><br />&nbsp; 3. Object Code Incorporating Material from Library Header Files.<br /><br />&nbsp; The object code form of an Application may incorporate material from<br />a header file that is part of the Library.&nbsp; You may convey such object<br />code under terms of your choice, provided that, if the incorporated<br />material is not limited to numerical parameters, data structure<br />layouts and accessors, or small macros, inline functions and templates<br />(ten or fewer lines in length), you do both of the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the object code that the<br />&nbsp;&nbsp; Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the object code with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp; 4. Combined Works.<br /><br />&nbsp; You may convey a Combined Work under terms of your choice that,<br />taken together, effectively do not restrict modification of the<br />portions of the Library contained in the Combined Work and reverse<br />engineering for debugging such modifications, if you also do each of<br />the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the Combined Work that<br />&nbsp;&nbsp; the Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the Combined Work with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp;&nbsp; c) For a Combined Work that displays copyright notices during<br />&nbsp;&nbsp; execution, include the copyright notice for the Library among<br />&nbsp;&nbsp; these notices, as well as a reference directing the user to the<br />&nbsp;&nbsp; copies of the GNU GPL and this license document.<br /><br />&nbsp;&nbsp; d) Do one of the following:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0) Convey the Minimal Corresponding Source under the terms of this<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License, and the Corresponding Application Code in a form<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suitable for, and under terms that permit, the user to<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recombine or relink the Application with a modified version of<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Linked Version to produce a modified Combined Work, in the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; manner specified by section 6 of the GNU GPL for conveying<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Corresponding Source.<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1) Use a suitable shared library mechanism for linking with the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Library.&nbsp; A suitable mechanism is one that (a) uses at run time<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a copy of the Library already present on the user\'s computer<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; system, and (b) will operate properly with a modified version<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the Library that is interface-compatible with the Linked<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version.<br /><br />&nbsp;&nbsp; e) Provide Installation Information, but only if you would otherwise<br />&nbsp;&nbsp; be required to provide such information under section 6 of the<br />&nbsp;&nbsp; GNU GPL, and only to the extent that such information is<br />&nbsp;&nbsp; necessary to install and execute a modified version of the<br />&nbsp;&nbsp; Combined Work produced by recombining or relinking the<br />&nbsp;&nbsp; Application with a modified version of the Linked Version. (If<br />&nbsp;&nbsp; you use option 4d0, the Installation Information must accompany<br />&nbsp;&nbsp; the Minimal Corresponding Source and Corresponding Application<br />&nbsp;&nbsp; Code. If you use option 4d1, you must provide the Installation<br />&nbsp;&nbsp; Information in the manner specified by section 6 of the GNU GPL<br />&nbsp;&nbsp; for conveying Corresponding Source.)<br /><br />&nbsp; 5. Combined Libraries.<br /><br />&nbsp; You may place library facilities that are a work based on the<br />Library side by side in a single library together with other library<br />facilities that are not Applications and are not covered by this<br />License, and convey such a combined library under terms of your<br />choice, if you do both of the following:<br /><br />&nbsp;&nbsp; a) Accompany the combined library with a copy of the same work based<br />&nbsp;&nbsp; on the Library, uncombined with any other library facilities,<br />&nbsp;&nbsp; conveyed under the terms of this License.<br /><br />&nbsp;&nbsp; b) Give prominent notice with the combined library that part of it<br />&nbsp;&nbsp; is a work based on the Library, and explaining where to find the<br />&nbsp;&nbsp; accompanying uncombined form of the same work.<br /><br />&nbsp; 6. Revised Versions of the GNU Lesser General Public License.<br /><br />&nbsp; The Free Software Foundation may publish revised and/or new versions<br />of the GNU Lesser General Public License from time to time. Such new<br />versions will be similar in spirit to the present version, but may<br />differ in detail to address new problems or concerns.<br /><br />&nbsp; Each version is given a distinguishing version number. If the<br />Library as you received it specifies that a certain numbered version<br />of the GNU Lesser General Public License \"or any later version\"<br />applies to it, you have the option of following the terms and<br />conditions either of that published version or of any later version<br />published by the Free Software Foundation. If the Library as you<br />received it does not specify a version number of the GNU Lesser<br />General Public License, you may choose any version of the GNU Lesser<br />General Public License ever published by the Free Software Foundation.<br /><br />&nbsp; If the Library as you received it specifies that a proxy can decide<br />whether future versions of the GNU Lesser General Public License shall<br />apply, that proxy\'s public statement of acceptance of any version is<br />permanent authorization for you to choose that version for the<br />Library.</p>', 'lisensi_slims', NULL, 0, NULL, '2010-08-29 04:04:33', '2010-11-12 22:15:43', '1');
INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `is_draft`, `publish_date`, `input_date`, `last_update`, `content_ownpage`) VALUES
(8, 'Model Pengembangan Open Source', '<p><!--intro_awal-->Sumber terbuka (Inggris: open source) adalah sistem pengembangan yang tidak dikoordinasi oleh suatu individu / lembaga pusat, tetapi oleh para pelaku yang bekerja sama dengan memanfaatkan kode sumber (source-code) yang tersebar dan tersedia bebas (biasanya menggunakan fasilitas komunikasi internet). Pola pengembangan ini mengambil model ala bazaar, sehingga pola Open Source ini memiliki ciri bagi komunitasnya yaitu adanya dorongan yang bersumber dari budaya memberi.<!--intro_akhir--><br /><br />Pola Open Source lahir karena kebebasan berkarya, tanpa intervensi berpikir dan mengungkapkan apa yang diinginkan dengan menggunakan pengetahuan dan produk yang cocok. Kebebasan menjadi pertimbangan utama ketika dilepas ke publik. Komunitas yang lain mendapat kebebasan untuk belajar, mengutak-ngatik, merevisi ulang, membenarkan ataupun bahkan menyalahkan, tetapi kebebasan ini juga datang bersama dengan tanggung jawab, bukan bebas tanpa tanggung jawab.<br /><br />Pada intinya konsep sumber terbuka adalah membuka \"kode sumber\" dari sebuah perangkat lunak. Konsep ini terasa aneh pada awalnya dikarenakan kode sumber merupakan kunci dari sebuah perangkat lunak. Dengan diketahui logika yang ada di kode sumber, maka orang lain semestinya dapat membuat perangkat lunak yang sama fungsinya. Sumber terbuka hanya sebatas itu. Artinya, dia tidak harus gratis. Definisi sumber terbuka yang asli adalah seperti tertuang dalam OSD (Open Source Definition)/Definisi sumber terbuka.</p>\r\n<p>Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.</p>', 'opensource', NULL, 0, NULL, '2010-08-29 04:05:16', '2010-08-29 04:34:04', '1');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_title` text NOT NULL,
  `file_name` text NOT NULL,
  `file_url` text DEFAULT NULL,
  `file_dir` text DEFAULT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `file_desc` text DEFAULT NULL,
  `file_key` text DEFAULT NULL,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `files_read`
--

CREATE TABLE `files_read` (
  `filelog_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `date_read` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `member_id` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `fines_id` int(11) NOT NULL,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `debet` int(11) DEFAULT 0,
  `credit` int(11) DEFAULT 0,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_access`
--

CREATE TABLE `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `menus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`menus`)),
  `r` int(1) NOT NULL DEFAULT 0,
  `w` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `menus`, `r`, `w`) VALUES
(1, 1, NULL, 1, 1),
(1, 2, NULL, 1, 1),
(1, 3, NULL, 1, 1),
(1, 4, NULL, 1, 1),
(1, 5, NULL, 1, 1),
(1, 6, NULL, 1, 1),
(1, 7, NULL, 1, 1),
(1, 8, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dayname` varchar(20) NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Table structure for table `index_documents`
--

CREATE TABLE `index_documents` (
  `document_id` int(11) NOT NULL,
  `word_id` bigint(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `hit_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `index_documents`
--

INSERT INTO `index_documents` (`document_id`, `word_id`, `location`, `hit_count`) VALUES
(1, 1, 'biblio', 1),
(1, 2, 'biblio', 1),
(1, 3, 'biblio', 1),
(1, 4, 'biblio', 1),
(1, 5, 'biblio', 1),
(1, 6, 'biblio', 1),
(1, 7, 'biblio', 1),
(2, 8, 'biblio', 1),
(2, 9, 'biblio', 1),
(2, 10, 'biblio', 1),
(2, 11, 'biblio', 1),
(2, 12, 'biblio', 1),
(4, 15, 'biblio', 1),
(4, 14, 'biblio', 1),
(4, 13, 'biblio', 1),
(4, 16, 'biblio', 1),
(4, 17, 'biblio', 1),
(4, 18, 'biblio', 1),
(4, 19, 'biblio', 1),
(4, 20, 'biblio', 1),
(4, 21, 'biblio', 1),
(4, 22, 'biblio', 1),
(4, 23, 'biblio', 1),
(4, 24, 'biblio', 1),
(4, 9, 'biblio', 1),
(4, 25, 'biblio', 1),
(5, 26, 'biblio', 1),
(5, 27, 'biblio', 1),
(5, 28, 'biblio', 1),
(5, 29, 'biblio', 1),
(5, 30, 'biblio', 1),
(5, 31, 'biblio', 1),
(6, 32, 'biblio', 1),
(6, 33, 'biblio', 1),
(6, 34, 'biblio', 1),
(6, 35, 'biblio', 1),
(6, 36, 'biblio', 1),
(6, 31, 'biblio', 1),
(6, 37, 'biblio', 1),
(6, 38, 'biblio', 1),
(6, 14, 'biblio', 1),
(6, 39, 'biblio', 1),
(6, 40, 'biblio', 1),
(6, 41, 'biblio', 1),
(6, 42, 'biblio', 1),
(7, 43, 'biblio', 1),
(7, 44, 'biblio', 1),
(7, 45, 'biblio', 1),
(7, 46, 'biblio', 1),
(7, 47, 'biblio', 1),
(7, 48, 'biblio', 1),
(7, 49, 'biblio', 1),
(7, 50, 'biblio', 1),
(7, 51, 'biblio', 1),
(7, 52, 'biblio', 1),
(7, 53, 'biblio', 1),
(8, 54, 'biblio', 1),
(8, 55, 'biblio', 1),
(8, 56, 'biblio', 1),
(8, 57, 'biblio', 1),
(8, 58, 'biblio', 1),
(8, 59, 'biblio', 1),
(8, 60, 'biblio', 1),
(8, 61, 'biblio', 1),
(8, 36, 'biblio', 1),
(8, 40, 'biblio', 1),
(8, 33, 'biblio', 1),
(8, 62, 'biblio', 1),
(9, 63, 'biblio', 1),
(10, 64, 'biblio', 1),
(10, 15, 'biblio', 1),
(10, 16, 'biblio', 1),
(10, 65, 'biblio', 1),
(10, 66, 'biblio', 1),
(10, 67, 'biblio', 1),
(10, 22, 'biblio', 1),
(10, 68, 'biblio', 1),
(10, 28, 'biblio', 1),
(10, 69, 'biblio', 1),
(11, 70, 'biblio', 1),
(11, 71, 'biblio', 1),
(11, 72, 'biblio', 1),
(12, 63, 'biblio', 1),
(12, 73, 'biblio', 1),
(12, 74, 'biblio', 1),
(12, 75, 'biblio', 1),
(12, 76, 'biblio', 1),
(12, 77, 'biblio', 1),
(12, 78, 'biblio', 1),
(13, 79, 'biblio', 1),
(13, 80, 'biblio', 1),
(13, 81, 'biblio', 1),
(13, 82, 'biblio', 1),
(13, 83, 'biblio', 1),
(13, 84, 'biblio', 1),
(13, 85, 'biblio', 1),
(13, 78, 'biblio', 1),
(14, 86, 'biblio', 1),
(14, 87, 'biblio', 1),
(14, 88, 'biblio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `index_words`
--

CREATE TABLE `index_words` (
  `id` bigint(20) NOT NULL,
  `word` varchar(50) NOT NULL,
  `num_hits` int(11) NOT NULL,
  `doc_hits` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `index_words`
--

INSERT INTO `index_words` (`id`, `word`, `num_hits`, `doc_hits`) VALUES
(1, 'value', 1, 1),
(2, 'your', 1, 1),
(3, 'life', 1, 1),
(4, 'onggy', 1, 1),
(5, 'hianata', 1, 1),
(6, 'pengembangan', 1, 1),
(7, 'diri', 1, 1),
(8, 'pengantar', 1, 1),
(9, 'sosiologi', 2, 2),
(10, 'perkotaan', 1, 1),
(11, 'damsar', 1, 1),
(12, 'indrayani', 1, 1),
(13, 'islam', 1, 1),
(14, 'dan', 2, 2),
(15, 'ilmu', 2, 2),
(16, 'pengetahuan', 2, 2),
(17, 'abdul', 1, 1),
(18, 'jamil', 1, 1),
(19, 'abdurrahman', 1, 1),
(20, 'mas', 1, 1),
(21, 'ud', 1, 1),
(22, 'm', 1, 1),
(23, 'amin', 1, 1),
(24, 'syukur', 1, 1),
(25, 'agama', 1, 1),
(26, 'penilaian', 1, 1),
(27, 'autentik', 1, 1),
(28, 'ridwan', 1, 1),
(29, 'abdullah', 1, 1),
(30, 'sani', 1, 1),
(31, 'pendidikan', 2, 2),
(32, 'bahasa', 1, 1),
(33, 'indonesia', 2, 2),
(34, 'lihat', 1, 1),
(35, 'sekitar', 1, 1),
(36, 'kementerian', 2, 2),
(37, 'kebudayaan', 1, 1),
(38, 'riset', 1, 1),
(39, 'teknologi', 1, 1),
(40, 'republik', 2, 2),
(41, 'buku', 1, 1),
(42, 'pelajaran', 1, 1),
(43, 'amendemen', 1, 1),
(44, 'undang', 1, 1),
(45, 'kpk', 1, 1),
(46, 'uu', 1, 1),
(47, 'ri', 1, 1),
(48, 'no', 1, 1),
(49, '19', 1, 1),
(50, 'tahun', 1, 1),
(51, '2019', 1, 1),
(52, 'pemberantasan', 1, 1),
(53, 'korupsi', 1, 1),
(54, 'media', 1, 1),
(55, 'kebijakan', 1, 1),
(56, 'sumber', 1, 1),
(57, 'informasi', 1, 1),
(58, 'dalam', 1, 1),
(59, 'negeri', 1, 1),
(60, 'badan', 1, 1),
(61, 'strategi', 1, 1),
(62, 'publik', 1, 1),
(63, 'butter', 2, 2),
(64, 'atlas', 1, 1),
(65, 'sosial', 1, 1),
(66, 'chalid', 1, 1),
(67, 'latif', 1, 1),
(68, 'j', 1, 1),
(69, 'peta', 1, 1),
(70, 'elemental', 1, 1),
(71, 'film', 1, 1),
(72, 'animasi', 1, 1),
(73, 'big', 1, 1),
(74, 'hit', 1, 1),
(75, 'music', 1, 1),
(76, 'musik', 1, 1),
(77, 'populer', 1, 1),
(78, 'korea', 2, 2),
(79, 'zayyan', 1, 1),
(80, 'selca', 1, 1),
(81, 'one', 1, 1),
(82, 'cool', 1, 1),
(83, 'jacso', 1, 1),
(84, 'entertainment', 1, 1),
(85, 'idol', 1, 1),
(86, 'shopee', 1, 1),
(87, 'platform', 1, 1),
(88, 'belanja', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `inventory_code` varchar(200) DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) DEFAULT NULL,
  `order_no` varchar(20) DEFAULT NULL,
  `location_id` varchar(3) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT 0,
  `invoice` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `biblio_id`, `call_number`, `coll_type_id`, `item_code`, `inventory_code`, `received_date`, `supplier_id`, `order_no`, `location_id`, `order_date`, `item_status_id`, `site`, `source`, `invoice`, `price`, `price_currency`, `invoice_date`, `input_date`, `last_update`, `uid`) VALUES
(1, 1, '300 ONG v', 0, 'B00001', NULL, '2025-10-21', '0', '', '', '2025-10-21', '0', '', 1, '', 0, '0', '2025-10-21', '2025-10-21 15:39:36', '2025-10-21 15:39:36', 1),
(2, 2, '300 DAM p', 0, 'B00002', NULL, '2025-10-24', '0', '', '', '2025-10-24', '0', '', 1, '', 0, '0', '2025-10-24', '2025-10-24 10:53:36', '2025-10-24 10:53:36', 1),
(3, 4, '300 ABD i', 0, 'B00003', NULL, '2025-10-24', '0', '', '', '2025-10-24', '0', '', 1, '', 0, '0', '2025-10-24', '2025-10-24 11:10:47', '2025-10-24 11:10:47', 1),
(4, 5, '300 RID p', 0, 'B00004', NULL, '2025-10-24', '0', '', '', '2025-10-24', '0', '', 1, '', 0, '0', '2025-10-24', '2025-10-24 11:21:36', '2025-10-24 11:21:36', 1),
(5, 6, '300 KEM b', 0, 'B00005', NULL, '2025-10-24', '0', '', '', '2025-10-24', '0', '', 1, '', 0, '0', '2025-10-24', '2025-10-24 11:30:15', '2025-10-24 11:30:15', 1),
(7, 7, '300 AME', 0, 'B00006', NULL, '2025-10-27', '0', '', '', '2025-10-27', '0', '', 1, '', 0, '0', '2025-10-27', '2025-10-27 10:25:42', '2025-10-27 10:25:42', 1),
(8, 8, '300 MED b', 0, 'M00001', NULL, '2025-10-27', '0', '', '', '2025-10-27', '0', '', 1, '', 0, '0', '2025-10-27', '2025-10-27 10:44:09', '2025-10-27 10:44:09', 1),
(9, 9, '300 BTS b', 0, 'M00002', NULL, '2025-12-13', '0', '', '', '2025-12-13', '0', '', 1, '', 0, '0', '2025-12-13', '2025-12-13 08:42:25', '2025-12-13 08:42:25', 1),
(10, 10, '', 0, 'K00001', NULL, '2025-12-15', '0', '', '', '2025-12-15', '0', '', 1, '', 0, '0', '2025-12-15', '2025-12-15 11:39:50', '2025-12-15 11:39:50', 1),
(11, 11, '300 WAL e', 0, 'F00001', NULL, '2025-12-15', '0', '', '', '2025-12-15', '0', '', 1, '', 0, '0', '2025-12-15', '2025-12-15 11:49:24', '2025-12-15 11:49:24', 1),
(12, 12, '300 BIG b', 0, 'M00003', NULL, '2025-12-15', '0', '', '', '2025-12-15', '0', '', 1, '', 0, '0', '2025-12-15', '2025-12-15 12:00:37', '2025-12-15 12:00:37', 1),
(13, 13, '300 ONE z', 0, 'G00001', NULL, '2025-12-15', '0', '', '', '2025-12-15', '0', '', 1, '', 0, '0', '2025-12-15', '2025-12-15 12:18:58', '2025-12-15 12:18:58', 1),
(14, 14, '300 SEA s', 0, 'E00001', NULL, '2025-12-15', '0', '', '', '2025-12-15', '0', '', 1, '', 0, '0', '2025-12-15', '2025-12-15 12:31:18', '2025-12-15 12:31:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_custom`
--

CREATE TABLE `item_custom` (
  `item_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='one to one relation with real item table';

-- --------------------------------------------------------

--
-- Table structure for table `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT 0,
  `loan_rules_id` int(11) NOT NULL DEFAULT 0,
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT 0,
  `is_return` int(11) NOT NULL DEFAULT 0,
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Triggers `loan`
--
DELIMITER $$
CREATE TRIGGER `delete_loan_history` AFTER DELETE ON `loan` FOR EACH ROW DELETE FROM `loan_history` WHERE loan_id=OLD.loan_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_loan_history` AFTER INSERT ON `loan` FOR EACH ROW INSERT INTO loan_history
     SET loan_id=NEW.loan_id,
     item_code=NEW.item_code,
     member_id=NEW.member_id,
     loan_date=NEW.loan_date,
     due_date=NEW.due_date,
     renewed=NEW.renewed,
     is_lent=NEW.is_lent,
     is_return=NEW.is_return,
     return_date=NEW.return_date,
     input_date=NEW.input_date,
     last_update=NEW.last_update,
     title=(SELECT b.title FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     biblio_id=(SELECT b.biblio_id FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     call_number=(SELECT IF(i.call_number IS NULL, b.call_number,i.call_number) FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     classification=(SELECT b.classification FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     gmd_name=(SELECT g.gmd_name FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id LEFT JOIN mst_gmd g ON g.gmd_id=b.gmd_id WHERE i.item_code=NEW.item_code),
     language_name=(SELECT l.language_name FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id LEFT JOIN mst_language l ON b.language_id=l.language_id WHERE i.item_code=NEW.item_code),
     location_name=(SELECT ml.location_name FROM item i LEFT JOIN mst_location ml ON i.location_id=ml.location_id WHERE i.item_code=NEW.item_code),
     collection_type_name=(SELECT mct.coll_type_name FROM mst_coll_type mct LEFT JOIN item i ON i.coll_type_id=mct.coll_type_id WHERE i.item_code=NEW.item_code),
     member_name=(SELECT m.member_name FROM member m WHERE m.member_id=NEW.member_id),
     member_type_name=(SELECT mmt.member_type_name FROM mst_member_type mmt LEFT JOIN member m ON m.member_type_id=mmt.member_type_id WHERE m.member_id=NEW.member_id)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_loan_history` AFTER UPDATE ON `loan` FOR EACH ROW UPDATE loan_history 
    SET is_lent=NEW.is_lent,
    is_return=NEW.is_return,
    renewed=NEW.renewed,
    return_date=NEW.return_date
    WHERE loan_id=NEW.loan_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `loan_history`
--

CREATE TABLE `loan_history` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `biblio_id` int(11) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `classification` varchar(40) DEFAULT NULL,
  `gmd_name` varchar(30) DEFAULT NULL,
  `language_name` varchar(20) DEFAULT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `collection_type_name` varchar(100) DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  `member_type_name` varchar(64) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `renewed` int(11) NOT NULL DEFAULT 0,
  `is_lent` int(11) NOT NULL DEFAULT 0,
  `is_return` int(11) NOT NULL DEFAULT 0,
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` varchar(20) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) DEFAULT NULL,
  `member_mail_address` varchar(255) DEFAULT NULL,
  `member_email` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `inst_name` varchar(100) DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `member_phone` varchar(50) DEFAULT NULL,
  `member_fax` varchar(50) DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text DEFAULT NULL,
  `is_pending` smallint(1) NOT NULL DEFAULT 0,
  `mpasswd` varchar(64) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(50) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_custom`
--

CREATE TABLE `member_custom` (
  `member_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Table structure for table `mst_author`
--

CREATE TABLE `mst_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `author_year` varchar(20) DEFAULT NULL,
  `authority_type` enum('p','o','c') DEFAULT 'p',
  `auth_list` varchar(20) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_author`
--

INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `input_date`, `last_update`) VALUES
(1, 'Onggy Hianata', NULL, 'p', NULL, '2025-10-21', '2025-10-21'),
(2, 'Damsar', NULL, 'p', NULL, '2025-10-24', '2025-10-24'),
(3, 'Indrayani', NULL, 'p', NULL, '2025-10-24', '2025-10-24'),
(4, 'Abdul J', NULL, 'p', NULL, '2025-10-24', '2025-10-24'),
(5, 'Abdul Jamil', NULL, 'p', NULL, '2025-10-24', '2025-10-24'),
(6, 'Abdurrahman Mas’ud', NULL, 'p', NULL, '2025-10-24', '2025-10-24'),
(7, 'M. Amin Syukur', NULL, 'p', NULL, '2025-10-24', '2025-10-24'),
(8, 'Ridwan Abdullah Sani', NULL, 'p', NULL, '2025-10-24', '2025-10-24'),
(9, 'Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia', NULL, 'o', NULL, '2025-10-24', '2025-10-24'),
(10, 'Badan Strategi Kebijakan Dalam Negeri, Kementerian Dalam Negeri Republik Indonesia', NULL, 'o', NULL, '2025-10-27', '2025-10-27'),
(11, 'Chlaid Latif', NULL, 'p', NULL, '2025-12-15', '2025-12-15'),
(12, 'M.J Ridwan', NULL, 'p', NULL, '2025-12-15', '2025-12-15'),
(13, 'Chalid Latif', NULL, 'p', NULL, '2025-12-15', '2025-12-15'),
(14, 'M.J', NULL, 'p', NULL, '2025-12-15', '2025-12-15'),
(15, 'Walt Disney Production', NULL, 'o', NULL, '2025-12-15', '2025-12-15'),
(16, 'Big Hit Music', NULL, 'o', NULL, '2025-12-15', '2025-12-15'),
(17, 'One Cool Jacso Entertainment', NULL, 'o', NULL, '2025-12-15', '2025-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `mst_carrier_type`
--

CREATE TABLE `mst_carrier_type` (
  `id` int(11) NOT NULL,
  `carrier_type` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `code2` char(1) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_carrier_type`
--

INSERT INTO `mst_carrier_type` (`id`, `carrier_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio cartridge', 'sg', 'g', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(2, 'audio cylinder', 'se', 'e', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(3, 'audio disc', 'sd', 'd', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(4, 'sound track reel', 'si', 'i', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(5, 'audio roll', 'sq', 'q', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(6, 'audiocassette', 'ss', 's', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(7, 'audiotape reel', 'st', 't', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(8, 'other (audio)', 'sz', 'z', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(9, 'computer card', 'ck', 'k', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(10, 'computer chip cartridge', 'cb', 'b', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(11, 'computer disc', 'cd', 'd', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(12, 'computer disc cartridge', 'ce', 'e', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(13, 'computer tape cartridge', 'ca', 'a', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(14, 'computer tape cassette', 'cf', 'f', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(15, 'computer tape reel', 'ch', 'h', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(16, 'online resource', 'cr', 'r', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(17, 'other (computer)', 'cz', 'z', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(18, 'aperture card', 'ha', 'a', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(19, 'microfiche', 'he', 'e', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(20, 'microfiche cassette', 'hf', 'f', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(21, 'microfilm cartridge', 'hb', 'b', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(22, 'microfilm cassette', 'hc', 'c', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(23, 'microfilm reel', 'hd', 'd', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(24, 'microfilm roll', 'hj', 'j', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(25, 'microfilm slip', 'hh', 'h', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(26, 'microopaque', 'hg', 'g', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(27, 'other (microform)', 'hz', 'z', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(28, 'microscope slide', 'pp', 'p', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(29, 'other (microscope)', 'pz', 'z', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(30, 'film cartridge', 'mc', 'c', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(31, 'film cassette', 'mf', 'f', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(32, 'film reel', 'mr', 'r', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(33, 'film roll', 'mo', 'o', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(34, 'filmslip', 'gd', 'd', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(35, 'filmstrip', 'gf', 'f', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(36, 'filmstrip cartridge', 'gc', 'c', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(37, 'overhead transparency', 'gt', 't', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(38, 'slide', 'gs', 's', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(39, 'other (projected image)', 'mz', 'z', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(40, 'stereograph card', 'eh', 'h', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(41, 'stereograph disc', 'es', 's', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(42, 'other (stereographic)', 'ez', 'z', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(43, 'card', 'no', 'o', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(44, 'flipchart', 'nn', 'n', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(45, 'roll', 'na', 'a', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(46, 'sheet', 'nb', 'b', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(47, 'volume', 'nc', 'c', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(48, 'object', 'nr', 'r', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(49, 'other (unmediated)', 'nz', '', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(50, 'video cartridge', 'vc', '', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(51, 'videocassette', 'vf', '', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(52, 'videodisc', 'vd', '', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(53, 'videotape reel', 'vr', '', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(54, 'other (video)', 'vz', '', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(55, 'unspecified', 'zu', 'u', '2025-10-20 13:59:00', '2025-10-20 13:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `mst_coll_type`
--

CREATE TABLE `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL,
  `coll_type_name` varchar(30) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Reference', '2007-11-29', '2007-11-29'),
(2, 'Textbook', '2007-11-29', '2007-11-29'),
(3, 'Fiction', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_content_type`
--

CREATE TABLE `mst_content_type` (
  `id` int(11) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `code2` char(1) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_content_type`
--

INSERT INTO `mst_content_type` (`id`, `content_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'cartographic dataset', 'crd', 'e', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(2, 'cartographic image', 'cri', 'e', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(3, 'cartographic moving image', 'crm', 'e', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(4, 'cartographic tactile image', 'crt', 'e', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(5, 'cartographic tactile three-dimensional form', 'crn', 'e', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(6, 'cartographic three-dimensional form', 'crf', 'e', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(7, 'computer dataset', 'cod', 'm', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(8, 'computer program', 'cop', 'm', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(9, 'notated movement', 'ntv', 'a', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(10, 'notated music', 'ntm', 'c', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(11, 'performed music', 'prm', 'j', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(12, 'sounds', 'snd', 'i', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(13, 'spoken word', 'spw', 'i', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(14, 'still image', 'sti', 'k', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(15, 'tactile image', 'tci', 'k', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(16, 'tactile notated music', 'tcm', 'c', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(17, 'tactile notated movement', 'tcn', 'a', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(18, 'tactile text', 'tct', 'a', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(19, 'tactile three-dimensional form', 'tcf', 'r', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(20, 'text', 'txt', 'a', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(21, 'three-dimensional form', 'tdf', 'r', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(22, 'three-dimensional moving image', 'tdm', 'g', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(23, 'two-dimensional moving image', 'tdi', 'g', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(24, 'other', 'xxx', 'o', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(25, 'unspecified', 'zzz', '', '2025-10-20 13:59:00', '2025-10-20 13:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `mst_custom_field`
--

CREATE TABLE `mst_custom_field` (
  `field_id` int(11) NOT NULL,
  `primary_table` varchar(100) DEFAULT NULL,
  `dbfield` varchar(50) NOT NULL,
  `label` varchar(80) NOT NULL,
  `type` enum('text','checklist','numeric','dropdown','longtext','choice','date') NOT NULL,
  `default` varchar(80) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `indexed` tinyint(1) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `width` int(5) DEFAULT 100,
  `note` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_frequency`
--

CREATE TABLE `mst_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency` varchar(25) NOT NULL,
  `language_prefix` varchar(5) DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'Weekly', 'en', 1, 'week', '2009-05-23', '2009-05-23'),
(2, 'Bi-weekly', 'en', 2, 'week', '2009-05-23', '2009-05-23'),
(3, 'Fourth-Nightly', 'en', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'Monthly', 'en', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'Bi-Monthly', 'en', 2, 'month', '2009-05-23', '2009-05-23'),
(6, 'Quarterly', 'en', 3, 'month', '2009-05-23', '2009-05-23'),
(7, '3 Times a Year', 'en', 4, 'month', '2009-05-23', '2009-05-23'),
(8, 'Annualy', 'en', 1, 'year', '2009-05-23', '2009-05-23'),
(9, 'Harian', 'id', 1, 'day', '2025-10-21', '2025-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `mst_gmd`
--

CREATE TABLE `mst_gmd` (
  `gmd_id` int(11) NOT NULL,
  `gmd_code` varchar(3) DEFAULT NULL,
  `gmd_name` varchar(30) NOT NULL,
  `icon_image` varchar(100) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'Text', NULL, '2025-10-20', '2025-10-20'),
(2, 'AR', 'Art Original', NULL, '2025-10-20', '2025-10-20'),
(3, 'CH', 'Chart', NULL, '2025-10-20', '2025-10-20'),
(4, 'CO', 'Computer Software', NULL, '2025-10-20', '2025-10-20'),
(5, 'DI', 'Diorama', NULL, '2025-10-20', '2025-10-20'),
(6, 'FI', 'Filmstrip', NULL, '2025-10-20', '2025-10-20'),
(7, 'FL', 'Flash Card', NULL, '2025-10-20', '2025-10-20'),
(8, 'GA', 'Game', NULL, '2025-10-20', '2025-10-20'),
(9, 'GL', 'Globe', NULL, '2025-10-20', '2025-10-20'),
(10, 'KI', 'Kit', NULL, '2025-10-20', '2025-10-20'),
(11, 'MA', 'Map', NULL, '2025-10-20', '2025-10-20'),
(12, 'MI', 'Microform', NULL, '2025-10-20', '2025-10-20'),
(13, 'MN', 'Manuscript', NULL, '2025-10-20', '2025-10-20'),
(14, 'MO', 'Model', NULL, '2025-10-20', '2025-10-20'),
(15, 'MP', 'Motion Picture', NULL, '2025-10-20', '2025-10-20'),
(16, 'MS', 'Microscope Slide', NULL, '2025-10-20', '2025-10-20'),
(17, 'MU', 'Music', NULL, '2025-10-20', '2025-10-20'),
(18, 'PI', 'Picture', NULL, '2025-10-20', '2025-10-20'),
(19, 'RE', 'Realia', NULL, '2025-10-20', '2025-10-20'),
(20, 'SL', 'Slide', NULL, '2025-10-20', '2025-10-20'),
(21, 'SO', 'Sound Recording', NULL, '2025-10-20', '2025-10-20'),
(22, 'TD', 'Technical Drawing', NULL, '2025-10-20', '2025-10-20'),
(23, 'TR', 'Transparency', NULL, '2025-10-20', '2025-10-20'),
(24, 'VI', 'Video Recording', NULL, '2025-10-20', '2025-10-20'),
(25, 'EQ', 'Equipment', NULL, '2025-10-20', '2025-10-20'),
(26, 'CF', 'Computer File', NULL, '2025-10-20', '2025-10-20'),
(27, 'CA', 'Cartographic Material', NULL, '2025-10-20', '2025-10-20'),
(28, 'CD', 'CD-ROM', NULL, '2025-10-20', '2025-10-20'),
(29, 'MV', 'Multimedia', NULL, '2025-10-20', '2025-10-20'),
(30, 'ER', 'Electronic Resource', NULL, '2025-10-20', '2025-10-20'),
(31, 'DVD', 'Digital Versatile Disc', NULL, '2025-10-20', '2025-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `mst_item_status`
--

CREATE TABLE `mst_item_status` (
  `item_status_id` char(3) NOT NULL,
  `item_status_name` varchar(30) NOT NULL,
  `rules` varchar(255) DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT 0,
  `skip_stock_take` smallint(1) NOT NULL DEFAULT 0,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'Repair', 'a:1:{i:0;s:1:\"1\";}', 1, 1, '2025-10-20', '2025-10-20'),
('NL', 'No Loan', 'a:1:{i:0;s:1:\"1\";}', 1, 1, '2025-10-20', '2025-10-20'),
('MIS', 'Missing', NULL, 1, 1, '2025-10-20', '2025-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `mst_label`
--

CREATE TABLE `mst_label` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(20) NOT NULL,
  `label_desc` varchar(50) DEFAULT NULL,
  `label_image` varchar(200) NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2025-10-20', '2025-10-20'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2025-10-20', '2025-10-20'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2025-10-20', '2025-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `mst_language`
--

CREATE TABLE `mst_language` (
  `language_id` char(5) NOT NULL,
  `language_name` varchar(20) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('id', 'Indonesia', '2025-10-20', '2025-10-20'),
('en', 'English', '2025-10-20', '2025-10-20'),
('Arb', 'Arab', '2025-10-21', '2025-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `mst_loan_rules`
--

CREATE TABLE `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL DEFAULT 0,
  `coll_type_id` int(11) DEFAULT 0,
  `gmd_id` int(11) DEFAULT 0,
  `loan_limit` int(3) DEFAULT 0,
  `loan_periode` int(3) DEFAULT 0,
  `reborrow_limit` int(3) DEFAULT 0,
  `fine_each_day` int(3) DEFAULT 0,
  `grace_periode` int(2) DEFAULT 0,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(3) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('SL', 'My Library', '2025-10-20', '2025-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `mst_media_type`
--

CREATE TABLE `mst_media_type` (
  `id` int(11) NOT NULL,
  `media_type` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `code2` char(1) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_media_type`
--

INSERT INTO `mst_media_type` (`id`, `media_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio', 's', 's', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(2, 'computer', 'c', 'c', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(3, 'microform', 'h', 'h', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(4, 'microscopic', 'p', '', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(5, 'projected', 'g', 'g', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(6, 'stereographic', 'e', '', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(7, 'unmediated', 'n', 't', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(8, 'video', 'v', 'v', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(9, 'other', 'x', 'z', '2025-10-20 13:59:00', '2025-10-20 13:59:00'),
(10, 'unspecified', 'z', 'z', '2025-10-20 13:59:00', '2025-10-20 13:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `mst_member_type`
--

CREATE TABLE `mst_member_type` (
  `member_type_id` int(11) NOT NULL,
  `member_type_name` varchar(50) NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT 0,
  `reserve_limit` int(11) NOT NULL DEFAULT 0,
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT 0,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'Standard', 2, 7, 1, 2, 365, 1, 0, 0, '2025-10-20', '2025-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `mst_module`
--

CREATE TABLE `mst_module` (
  `module_id` int(3) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_path` varchar(200) DEFAULT NULL,
  `module_desc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'bibliography', 'bibliography', 'Manage your bibliographic/catalog and items/copies database'),
(2, 'circulation', 'circulation', 'Module for doing library items circulation such as loan and return'),
(3, 'membership', 'membership', 'Manage your library membership and membership type'),
(4, 'master_file', 'master_file', 'Manage your referential data that will be used by other modules'),
(5, 'stock_take', 'stock_take', 'Ease your pain in doing library stock opname process'),
(6, 'system', 'system', 'Configure system behaviour, user and backups'),
(7, 'reporting', 'reporting', 'Real time and dynamic report about library collections and circulation'),
(8, 'serial_control', 'serial_control', 'Serial publication management');

-- --------------------------------------------------------

--
-- Table structure for table `mst_place`
--

CREATE TABLE `mst_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_place`
--

INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES
(1, 'Pranemedia Group', '2025-10-24', '2025-10-24'),
(2, 'Yogyakarta', '2025-10-24', '2025-10-24'),
(3, 'Jakarta', '2025-10-24', '2025-10-24'),
(4, 'Seoul', '2025-12-13', '2025-12-13'),
(5, 'California', '2025-12-15', '2025-12-15'),
(6, 'Korea', '2025-12-15', '2025-12-15'),
(7, 'Singapura', '2025-12-15', '2025-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `mst_publisher`
--

CREATE TABLE `mst_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(1, 'Elex Media Computindo', '2025-10-21', '2025-10-21'),
(2, 'Jakarta', '2025-10-24', '2025-10-24'),
(3, 'Gama Media', '2025-10-24', '2025-10-24'),
(4, 'Bumi Aksara', '2025-10-24', '2025-10-24'),
(5, 'Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia', '2025-10-24', '2025-10-24'),
(6, 'Sinar Grafika', '2025-10-27', '2025-10-27'),
(7, 'Bina Praja Press, Badan Strategi Kebijakan Dalam Negeri, Kementerian Dalam Negeri', '2025-10-27', '2025-10-27'),
(8, 'Big Hit Musi', '2025-12-13', '2025-12-13'),
(9, 'PT Pembina Praga', '2025-12-15', '2025-12-15'),
(10, 'Walt Disney Studios Motion Pictures', '2025-12-15', '2025-12-15'),
(11, 'Big Hit Music', '2025-12-15', '2025-12-15'),
(12, 'One Cool Jacso Entertainment', '2025-12-15', '2025-12-15'),
(13, 'Sea Limited', '2025-12-15', '2025-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `mst_relation_term`
--

CREATE TABLE `mst_relation_term` (
  `ID` int(11) NOT NULL,
  `rt_id` varchar(11) NOT NULL,
  `rt_desc` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_relation_term`
--

INSERT INTO `mst_relation_term` (`ID`, `rt_id`, `rt_desc`) VALUES
(1, 'U', 'Use'),
(2, 'UF', 'Use For'),
(3, 'BT', 'Broader Term'),
(4, 'NT', 'Narrower Term'),
(5, 'RT', 'Related Term'),
(6, 'SA', 'See Also');

-- --------------------------------------------------------

--
-- Table structure for table `mst_servers`
--

CREATE TABLE `mst_servers` (
  `server_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` text NOT NULL,
  `server_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - p2p server; 2 - z3950; 3 - z3950  SRU',
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_supplier`
--

CREATE TABLE `mst_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postal_code` char(10) DEFAULT NULL,
  `phone` char(14) DEFAULT NULL,
  `contact` char(30) DEFAULT NULL,
  `fax` char(14) DEFAULT NULL,
  `account` char(12) DEFAULT NULL,
  `e_mail` char(80) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_topic`
--

CREATE TABLE `mst_topic` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') NOT NULL,
  `auth_list` varchar(20) DEFAULT NULL,
  `classification` varchar(50) NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_topic`
--

INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(1, 'Programming', 't', NULL, '', '2007-11-29', '2007-11-29'),
(2, 'Website', 't', NULL, '', '2007-11-29', '2007-11-29'),
(3, 'Operating System', 't', NULL, '', '2007-11-29', '2007-11-29'),
(4, 'Linux', 't', NULL, '', '2007-11-29', '2007-11-29'),
(5, 'Computer', 't', NULL, '', '2007-11-29', '2007-11-29'),
(6, 'Database', 't', NULL, '', '2007-11-29', '2007-11-29'),
(7, 'RDBMS', 't', NULL, '', '2007-11-29', '2007-11-29'),
(8, 'Open Source', 't', NULL, '', '2007-11-29', '2007-11-29'),
(9, 'Project', 't', NULL, '', '2007-11-29', '2007-11-29'),
(10, 'Design', 't', NULL, '', '2007-11-29', '2007-11-29'),
(11, 'Information', 't', NULL, '', '2007-11-29', '2007-11-29'),
(12, 'Organization', 't', NULL, '', '2007-11-29', '2007-11-29'),
(13, 'Metadata', 't', NULL, '', '2007-11-29', '2007-11-29'),
(14, 'Library', 't', NULL, '', '2007-11-29', '2007-11-29'),
(15, 'Corruption', 't', NULL, '', '2007-11-29', '2007-11-29'),
(16, 'Development', 't', NULL, '', '2007-11-29', '2007-11-29'),
(17, 'Poverty', 't', NULL, '', '2007-11-29', '2007-11-29'),
(18, 'Pengembangan Diri', 't', NULL, '', '2025-10-21', '2025-10-21'),
(19, 'Sosiologi', 't', NULL, '', '2025-10-24', '2025-10-24'),
(20, 'Sosiologi Agama', 't', NULL, '', '2025-10-24', '2025-10-24'),
(21, 'Pendidikan', 't', NULL, '', '2025-10-24', '2025-10-24'),
(22, 'Buku Pelajaran', 't', NULL, '', '2025-10-24', '2025-10-24'),
(23, 'Pemberantasan Korupsi', 't', NULL, '', '2025-10-27', '2025-10-27'),
(24, 'Kebijakan Publik', 't', NULL, '', '2025-10-27', '2025-10-27'),
(25, 'Peta', 't', NULL, '', '2025-12-15', '2025-12-15'),
(26, 'Film Animasi', 't', NULL, '', '2025-12-15', '2025-12-15'),
(27, 'Musik populer korea', 't', NULL, '', '2025-12-15', '2025-12-15'),
(28, 'Idol Korea', 't', NULL, '', '2025-12-15', '2025-12-15'),
(29, 'Platform belanja', 't', NULL, '', '2025-12-15', '2025-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `mst_visitor_room`
--

CREATE TABLE `mst_visitor_room` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unique_code` varchar(5) NOT NULL COMMENT 'Code for identification each room',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_voc_ctrl`
--

CREATE TABLE `mst_voc_ctrl` (
  `vocabolary_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `rt_id` varchar(11) NOT NULL,
  `related_topic_id` varchar(250) NOT NULL,
  `scope` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` varchar(32) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `path` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `reserve_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_biblio`
--

CREATE TABLE `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `isbn_issn` varchar(32) DEFAULT NULL,
  `author` text DEFAULT NULL,
  `topic` text DEFAULT NULL,
  `gmd` varchar(30) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `publish_place` varchar(30) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `classification` varchar(40) DEFAULT NULL,
  `spec_detail_info` text DEFAULT NULL,
  `carrier_type` varchar(100) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `media_type` varchar(100) NOT NULL,
  `location` text DEFAULT NULL,
  `publish_year` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `series_title` text DEFAULT NULL,
  `items` text DEFAULT NULL,
  `collection_types` text DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT 0,
  `promoted` smallint(1) NOT NULL DEFAULT 0,
  `labels` text DEFAULT NULL,
  `collation` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

--
-- Dumping data for table `search_biblio`
--

INSERT INTO `search_biblio` (`biblio_id`, `title`, `edition`, `isbn_issn`, `author`, `topic`, `gmd`, `publisher`, `publish_place`, `language`, `classification`, `spec_detail_info`, `carrier_type`, `content_type`, `media_type`, `location`, `publish_year`, `notes`, `series_title`, `items`, `collection_types`, `call_number`, `opac_hide`, `promoted`, `labels`, `collation`, `image`, `input_date`, `last_update`) VALUES
(1, 'Value Your Life', '-', '978 – 602 – 04 – 8690 – 1', 'Onggy Hianata', 'Pengembangan Diri', 'Text', 'Elex Media Computindo', '', 'Indonesia', 'NONE', '', 'volume', 'text', 'unmediated', NULL, '2019', 'Buku ini membahas tentang pengembangan diri,  membantu pembaca untuk mengenali diri sendiri, melepaskan beban hidup, dan mengoptimalkan pencapaian.', '-', 'B00001', NULL, '300 ONG v', 0, 1, NULL, 'xxv, 225 hlm. : ilust. ; 21 cm', 'cover_value_your_life-31033936.jpeg', '2025-10-21 15:39:36', '2025-10-21 15:42:30'),
(2, 'Pengantar Sosiologi Perkotaan', 'Edisi Pertama, Cetakan Kedua', '978-602-422-067-9', 'Damsar - Indrayani', 'Sosiologi', 'Text', 'Jakarta', 'Pranemedia Group', 'Indonesia', '300 DAM p', '', 'volume', 'text', 'unmediated', NULL, '2019', 'Buku ini membahas suatu perspektif baru sosiologi terhadap berbagi fenomena kota dan masyarakatnya. – Catatan indeks halaman 239 sampai 244. - Catatan biografi halaman 245 sampai 246. - Catatan bibliografi halaman 223 sampai 237.', '-', 'B00002', NULL, '300 DAM p', 0, 1, NULL, 'x, 246 hlm. : ilust. ; 23 cm', 'cover_pengantar_sosiologi_perkotaan-31105336.jpeg', '2025-10-24 10:44:16', '2025-10-24 10:53:36'),
(4, 'Islam dan Ilmu Pengetahuan', 'Cetakan Pertama', '979-9193-57-5', 'Abdul Jamil - Abdurrahman Mas’ud - M. Amin Syukur', 'Sosiologi Agama', 'Text', 'Gama Media', 'Yogyakarta', 'Indonesia', 'NONE', '', 'volume', 'text', 'unmediated', NULL, '2000', 'Buku ini memuat tentang islam dan jawa merupakan dua entitas yang berbeda. – Catatan bibliografi halaman 307. – Catatan biografi halaman 308 sampai 312.', NULL, 'B00003', NULL, '300 ABD i', 0, 1, NULL, 'xii, 312 hlm. : illust. ; 21 cm', 'cover_islam_dan_ilmu_pengetahuan-31110938.jpeg', '2025-10-24 11:09:37', '2025-10-27 16:57:10'),
(6, 'Bahasa Indonesia : Lihat Sekitar', 'Edisi Revisi', '978-623-118-358-3', 'Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia', 'Buku Pelajaran', 'Text', 'Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia', 'Jakarta', 'Indonesia', 'NONE', '', 'volume', 'text', 'unmediated', NULL, '2023', 'Buku teks Pelajaran Bahasa Indonesia yang disusun untuk siswa SD/MI kelas IV. Materi dalam buku ini mengajarkan keterampilan berbahasa, membaca, menulis, dan berbicara dengan tema ”lihat sekitar”. – Catatan Biografi halaman 211 sampai 222. – Catatan indeks halaman 208 sampai 210. – Catatan Bibliografi halaman 206.', '-', 'B00005', NULL, '300 KEM b', 0, 1, NULL, 'x, 222 hlm. : illust. ; 32 cm', '', '2025-10-24 11:30:15', '2025-10-24 11:30:15'),
(5, 'Penilaian Autentik', 'Cetakan Pertama', '978-602-217-577-3', 'Ridwan Abdullah Sani', 'Pendidikan', 'Text', 'Bumi Aksara', 'Jakarta', 'Indonesia', 'NONE', '', 'volume', 'text', 'unmediated', NULL, '2016', 'Buku ini membahas penilaian autentik yang seharusnya digunakan dalam implementasi kurikulum berbasis kompetensi. – Catatan bibliografi halaman 359 sampai 366. – Catatan biografi halaman 386 sampai 387.', NULL, 'B00004', NULL, '300 RID p', 0, 1, NULL, 'viii, 388 hlm. : illust. ; 23 cm', '', '2025-10-24 11:21:36', '2025-10-27 10:08:44'),
(7, 'Amendemen Undang – Undang KPK (UU RI No. 19 Tahun 2019)', 'Cetakan Pertama', '978-979-007-897-0', NULL, 'Pemberantasan Korupsi', 'Text', 'Sinar Grafika', 'Jakarta', 'Indonesia', 'NONE', '', 'volume', 'text', 'unmediated', NULL, '2020', 'Buku ini dilengkapi dengan UU RI No. 10 Tahun 2015, UU RI No. 30 Tahun 2002, UU RI No. 20 Tahun 2001, UU RI No. 31 Tahun 1999, PP RI No. 43 Tahun 2018, PP RI No. 14 Tahun 2017, PP RI No.103 Tahun 2012, PP RI No. 63 Tahun 2005, Perpres RI No. 54 Tahun 2018, Perpres RI No. 1 Tahun 2015', NULL, 'B00006', NULL, '300 AME', 0, 1, NULL, 'x, 320 hlm. : 19 cm', 'cover_amendemen_undang_undang_kpk_uu_ri_no_19_tahun_2019_-31102542.jpeg', '2025-10-27 10:25:42', '2025-10-27 10:25:42'),
(8, 'Media Kebijakan : Sumber Informasi Kebijakan dalam Negeri', '', '2503-3352', 'Badan Strategi Kebijakan Dalam Negeri, Kementerian Dalam Negeri Republik Indonesia', 'Kebijakan Publik', 'Text', 'Bina Praja Press, Badan Strategi Kebijakan Dalam Negeri, Kementerian Dalam Negeri', 'Jakarta', 'Indonesia', 'NONE', '', 'volume', 'text', 'unmediated', NULL, '2016 - 2022', NULL, NULL, 'M00001', NULL, '300 MED b', 0, 1, NULL, '... jil. : illust. ; 30 cm', 'cover_media-kebijakan-sumber-informasi-kebijakan-dalam-negeri-20251027104408.jpg', '2025-10-27 10:44:08', '2025-10-27 10:44:08'),
(9, 'Butter', '-', '-', NULL, NULL, 'Sound Recording', 'Big Hit Musi', 'Seoul', 'English', 'NONE', '-', 'audio disc', 'performed music', 'audio', NULL, '2021', 'Berisi lagu Permission to Dance. – Dinyanyikan oleh BTS. – Lagu ini dinyanyikan menggunakan Bahasa Inggris.', '-', 'M00002', NULL, '300 BTS b', 0, 1, NULL, '1 disk (12 men.) : digital,  streo. ; 12 inc.', '', '2025-12-13 08:42:25', '2025-12-13 08:42:25'),
(10, 'Atlas Ilmu Pengetahuan Sosial', '-', '979-8549-02-3', 'Chalid Latif - M.J Ridwan', 'Peta', 'Cartographic Material', 'PT Pembina Praga', 'Jakarta', 'Indonesia', 'NONE', 'Berbagai Skala', 'volume', 'cartographic image', 'unmediated', NULL, '1998', 'Atlas ini dilengkapi dengan wawasan nusantara dan dunia, profil wilayah dan dunia', '-', 'K00001', NULL, '300 CHA a', 0, 1, NULL, '1 atlas (48 hlm.) : 30 peta : berwarna ; 24 cm.', 'cover_atlas-ilmu-pengetahuan-sosial-20251215113949.jpg', '2025-12-15 11:34:30', '2025-12-15 13:42:19'),
(12, 'Butter', '-', '-', 'Big Hit Music', 'Musik populer korea', 'Sound Recording', 'Big Hit Music', 'Seoul', 'Indonesia', 'NONE', '-', 'audio disc', 'performed music', 'audio', NULL, '2021', 'Berisi lagu Permission to Dance. – Dinyanyikan\r\noleh BTS. – Lagu ini dinyanyikan menggunakan\r\nBahasa Inggris.', '-', 'M00003', NULL, '300 BIG b', 0, 1, NULL, '1 disk (12 men.) : digital, streo. ; 12 inc.', 'cover_butter-20251215120037.png', '2025-12-15 12:00:37', '2025-12-15 13:43:03'),
(13, '[Zayyan Selca]', '-', '-', 'One Cool Jacso Entertainment', 'Idol Korea', 'Picture', 'One Cool Jacso Entertainment', 'Korea', 'Indonesia', 'NONE', '-', 'card', 'two-dimensional moving image', 'unmediated', NULL, '2024', 'Karya bahan grafis berbentuk photocard.', '-', 'G00001', NULL, '300 ONE z', 0, 1, NULL, '-', 'cover_-zayyan-selca-20251215121857.jpeg', '2025-12-15 12:18:56', '2025-12-15 13:43:55'),
(14, 'Shopee', 'Versi 3.63.26', '-', NULL, 'Platform belanja', 'Electronic Resource', 'Sea Limited', 'Singapura', 'Indonesia', 'NONE', '-', 'online resource', 'computer program', 'other', NULL, '2015', 'Platform e-commerce atau belanja online yang menyediakan tempat bagi penjual untuk memasarkan produk dan pembeli untuk menemukan berbagai barang, mulai dari fashion, elektronik, kebutuhan  sehari-hari, hingga makanan.', '-', 'E00001', NULL, '300 SEA s', 0, 1, NULL, '1 file : Data dan Program elektronik ; 270,8 MB', 'cover_shopee-20251215123118.jpeg', '2025-12-15 12:31:18', '2025-12-15 13:46:05'),
(11, 'Elemental', '-', '', '', 'Film Animasi', 'Text', 'Walt Disney Studios Motion Pictures', 'California', 'English', 'NONE', '-', '', '', '', NULL, '2023', 'Film ini membahas tentang membahas tentang perbedaan dan keberagaman, khususnya bagaimana individu dari latar belakang, budaya, dan identitas yang berbeda dapat saling memahami dan membangun hubungan, meskipun menghadapi batasan tradisi, prasangka, dan ekspektasi keluarga', '-', 'F00001', NULL, '300 WAL e', 0, 1, NULL, '1 Disk film (109 men.) : bersuara, berwarna.', 'cover_elemental-20251215123202.jpeg', '2025-12-15 11:49:24', '2025-12-15 13:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `serial`
--

CREATE TABLE `serial` (
  `serial_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(3) NOT NULL,
  `setting_name` varchar(30) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:14:\"LIBRARY NOEENA\";'),
(2, 'library_subname', 's:37:\"Open Source Library Management System\";'),
(3, 'template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:26:\"template/default/style.css\";}'),
(4, 'admin_template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";}'),
(5, 'default_lang', 's:5:\"id_ID\";'),
(6, 'opac_result_num', 's:2:\"10\";'),
(7, 'enable_promote_titles', 'N;'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:0;'),
(10, 'loan_limit_override', 'b:0;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:\"7200\";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:7:\"code128\";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:\"barcode_page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:21:\"barcode_items_per_row\";i:3;s:20:\"barcode_items_margin\";d:0.1000000000000000055511151231257827021181583404541015625;s:17:\"barcode_box_width\";i:7;s:18:\"barcode_box_height\";i:5;s:27:\"barcode_include_header_text\";i:1;s:17:\"barcode_cut_title\";i:50;s:19:\"barcode_header_text\";s:0:\"\";s:13:\"barcode_fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:17:\"barcode_font_size\";i:11;s:13:\"barcode_scale\";i:70;s:19:\"barcode_border_size\";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:\"page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:13:\"items_per_row\";i:3;s:12:\"items_margin\";d:0.05000000000000000277555756156289135105907917022705078125;s:9:\"box_width\";i:8;s:10:\"box_height\";d:3.29999999999999982236431605997495353221893310546875;s:19:\"include_header_text\";i:1;s:11:\"header_text\";s:0:\"\";s:5:\"fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:9:\"font_size\";i:11;s:11:\"border_size\";i:1;}'),
(20, 'membercard_print_settings', 'a:19:{s:18:\"front_header1_text\";s:19:\"Library Member Card\";s:18:\"front_header2_text\";s:10:\"My Library\";s:17:\"back_header1_text\";s:10:\"My Library\";s:17:\"back_header2_text\";s:35:\"My Library Full Address and Website\";s:9:\"box_width\";s:3:\"8.6\";s:10:\"box_height\";s:3:\"5.4\";s:6:\"factor\";s:12:\"37.795275591\";s:13:\"barcode_scale\";s:3:\"100\";s:5:\"rules\";s:150:\"&lt;ul&gt;&lt;li&gt;This card is published by Library.&lt;/li&gt;&lt;li&gt;Please return this card to its owner if you found it.&lt;/li&gt;&lt;/ul&gt;\";s:7:\"f_color\";s:7:\"#000000\";s:8:\"fr_color\";s:7:\"#e5e5e5\";s:7:\"b_color\";s:7:\"#ffffff\";s:4:\"city\";s:9:\"City Name\";s:5:\"title\";s:15:\"Library Manager\";s:9:\"officials\";s:14:\"Librarian Name\";s:12:\"officials_id\";s:12:\"Librarian ID\";s:15:\"back_side_image\";s:11:\"bg-back.svg\";s:3:\"css\";s:0:\"\";s:8:\"template\";s:7:\"classic\";}'),
(21, 'enable_visitor_limitation', 's:1:\"0\";'),
(22, 'time_visitor_limitation', 's:2:\"60\";'),
(23, 'logo_image', NULL),
(24, 'init_info', 'a:3:{s:7:\"version\";s:24:\"SLiMS 9 (Bulian D Roger)\";s:3:\"tag\";s:6:\"v9.7.2\";s:9:\"admin_url\";s:12:\"/slims/admin\";}'),
(25, 'static_file_version', 'i:1641061070;'),
(26, 'timezone', 's:12:\"Asia/Jakarta\";'),
(27, 'search_engine', 's:34:\"SLiMS\\\\SearchEngine\\\\DefaultEngine\";'),
(28, 'remember_me_timeout', 'i:30;'),
(29, 'enable_counter_by_ip', 's:1:\"1\";'),
(30, 'allowed_counter_ip', 'a:1:{i:0;s:9:\"127.0.0.1\";}'),
(31, 'reserve_direct_database', 's:1:\"1\";'),
(32, 'reserve_on_loan_only', 's:1:\"0\";'),
(33, 'spellchecker_enabled', 'b:1;'),
(34, 'enable_chbox_confirm', 'i:1;'),
(35, 'http', 'a:2:{s:6:\"client\";a:2:{s:6:\"verify\";b:1;s:7:\"timeout\";i:60;}s:5:\"cache\";a:1:{s:8:\"lifetime\";i:300;}}'),
(36, 'simplified_simple_search', 'b:1;'),
(37, 'password_policy_strong', 'b:1;'),
(38, 'password_policy_min_length', 'i:8;'),
(39, 'batch_item_code_pattern', 'a:8:{i:0;s:6:\"E00000\";i:1;s:6:\"G00000\";i:2;s:7:\"G00000S\";i:3;s:6:\"K00000\";i:4;s:7:\"K000000\";i:5;s:6:\"F00000\";i:6;s:6:\"M00000\";i:7;s:6:\"B00000\";}');

-- --------------------------------------------------------

--
-- Table structure for table `stock_take`
--

CREATE TABLE `stock_take` (
  `stock_take_id` int(11) NOT NULL,
  `stock_take_name` varchar(200) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT 0,
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `report_file` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_take_item`
--

CREATE TABLE `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gmd_name` varchar(30) DEFAULT NULL,
  `classification` varchar(30) DEFAULT NULL,
  `coll_type_name` varchar(30) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `status` enum('e','m','u','l') NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `log_id` int(11) NOT NULL,
  `log_type` enum('staff','member','system') NOT NULL DEFAULT 'staff',
  `id` varchar(50) DEFAULT NULL,
  `log_location` varchar(50) NOT NULL,
  `sub_module` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `log_msg` text NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `sub_module`, `action`, `log_msg`, `log_date`) VALUES
(1, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-10-20 14:02:36'),
(2, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-10-21 14:43:17'),
(3, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-10-21 14:43:29'),
(4, 'staff', '1', 'system', 'Global Config', 'Update', 'Admin change application global configuration', '2025-10-21 14:59:48'),
(5, 'staff', '1', 'system', '', '', 'Invalid form submission token, might be a CSRF attack from ::1', '2025-10-21 15:34:47'),
(6, 'staff', '1', 'system', '', '', 'Invalid form submission token, might be a CSRF attack from ::1', '2025-10-21 15:35:01'),
(7, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Value Your Life) with biblio_id (1)', '2025-10-21 15:39:36'),
(8, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Value Your Life) with biblio_id (1)', '2025-10-21 15:42:30'),
(9, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-10-24 10:40:11'),
(10, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Pengantar Sosiologi Perkotaan) with biblio_id (2)', '2025-10-24 10:44:17'),
(11, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Pengantar Sosiologi Perkotaan) with biblio_id (3)', '2025-10-24 10:44:17'),
(12, 'staff', '1', 'bibliography', '', '', 'Admin DELETE bibliographic data (Pengantar Sosiologi Perkotaan) with biblio_id (3)', '2025-10-24 10:44:42'),
(13, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Pengantar Sosiologi Perkotaan) with biblio_id (2)', '2025-10-24 10:52:02'),
(14, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Pengantar Sosiologi Perkotaan) with biblio_id (2)', '2025-10-24 10:53:36'),
(15, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Islam dan Ilmu Pengetahuan) with biblio_id (4)', '2025-10-24 11:09:38'),
(16, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Islam dan Ilmu Pengetahuan) with biblio_id (4)', '2025-10-24 11:10:08'),
(17, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Islam dan Ilmu Pengetahuan) with biblio_id (4)', '2025-10-24 11:10:47'),
(18, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Penilaian Autentik) with biblio_id (5)', '2025-10-24 11:21:36'),
(19, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Bahasa Indonesia : Lihat Sekitar) with biblio_id (6)', '2025-10-24 11:30:15'),
(20, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-10-27 10:00:36'),
(21, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Penilaian Autentik) with biblio_id (5)', '2025-10-27 10:03:06'),
(22, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Penilaian Autentik) with biblio_id (5)', '2025-10-27 10:08:44'),
(23, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Amendemen Undang – Undang KPK (UU RI No. 19 Tahun 2019)) with biblio_id (7)', '2025-10-27 10:25:42'),
(24, 'system', '6', 'failed exif check', '', '', 'Invalid data URI.', '2025-10-27 10:44:09'),
(25, 'staff', '1', 'bibliography', '', '', 'Admin upload image file cover_media-kebijakan-sumber-informasi-kebijakan-dalam-negeri-20251027104408.jpg', '2025-10-27 10:44:09'),
(26, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Media Kebijakan : Sumber Informasi Kebijakan dalam Negeri) with biblio_id (8)', '2025-10-27 10:44:09'),
(27, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-10-27 16:35:55'),
(28, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Islam dan Ilmu Pengetahuan) with biblio_id (4)', '2025-10-27 16:57:10'),
(29, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-12-13 08:19:45'),
(30, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Butter) with biblio_id (9)', '2025-12-13 08:42:25'),
(31, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-12-14 07:09:24'),
(32, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-12-15 10:56:20'),
(33, 'staff', '1', 'system', '', '', 'Invalid form submission token, might be a CSRF attack from ::1', '2025-12-15 11:32:11'),
(34, 'staff', '1', 'system', '', '', 'Invalid form submission token, might be a CSRF attack from ::1', '2025-12-15 11:32:57'),
(35, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address ::1', '2025-12-15 11:33:34'),
(36, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-12-15 11:33:38'),
(37, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Atlas Ilmu Pengetahuan Sosial) with biblio_id (10)', '2025-12-15 11:34:30'),
(38, 'system', '6', 'failed exif check', '', '', 'Invalid data URI.', '2025-12-15 11:39:50'),
(39, 'staff', '1', 'bibliography', '', '', 'Admin upload image file cover_atlas-ilmu-pengetahuan-sosial-20251215113949.jpg', '2025-12-15 11:39:50'),
(40, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Atlas Ilmu Pengetahuan Sosial) with biblio_id (10)', '2025-12-15 11:39:50'),
(41, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Atlas Ilmu Pengetahuan Sosial) with biblio_id (10)', '2025-12-15 11:41:00'),
(42, 'staff', '1', 'bibliography', '', '', 'ERROR : Admin FAILED TO upload image file e3f89d0ab2176875c36ec7f54d455682.jfif, with error (Ekstensi .jfif tidak diizinkan!)', '2025-12-15 11:49:24'),
(43, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Elemental) with biblio_id (11)', '2025-12-15 11:49:24'),
(44, 'staff', '1', 'bibliography', '', '', 'ERROR : Admin FAILED TO upload image file 5a4acc44b157a3a758254b8218b5514d.webp, with error (Ekstensi .webp tidak diizinkan!)', '2025-12-15 11:50:33'),
(45, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Elemental) with biblio_id (11)', '2025-12-15 11:50:33'),
(46, 'system', '6', 'failed exif check', '', '', 'Invalid data URI.', '2025-12-15 12:00:37'),
(47, 'staff', '1', 'bibliography', '', '', 'Admin upload image file cover_butter-20251215120037.png', '2025-12-15 12:00:37'),
(48, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Butter) with biblio_id (12)', '2025-12-15 12:00:37'),
(49, 'system', '6', 'failed exif check', '', '', 'Invalid data URI.', '2025-12-15 12:18:58'),
(50, 'staff', '1', 'bibliography', '', '', 'Admin upload image file cover_-zayyan-selca-20251215121857.jpeg', '2025-12-15 12:18:58'),
(51, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data ([Zayyan Selca]) with biblio_id (13)', '2025-12-15 12:18:58'),
(52, 'system', '6', 'failed exif check', '', '', 'Invalid data URI.', '2025-12-15 12:31:18'),
(53, 'staff', '1', 'bibliography', '', '', 'Admin upload image file cover_shopee-20251215123118.jpeg', '2025-12-15 12:31:18'),
(54, 'staff', '1', 'bibliography', '', '', 'Admin insert bibliographic data (Shopee) with biblio_id (14)', '2025-12-15 12:31:18'),
(55, 'system', '6', 'failed exif check', '', '', 'Invalid data URI.', '2025-12-15 12:32:02'),
(56, 'staff', '1', 'bibliography', '', '', 'Admin upload image file cover_elemental-20251215123202.jpeg', '2025-12-15 12:32:02'),
(57, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Elemental) with biblio_id (11)', '2025-12-15 12:32:02'),
(58, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address ::1', '2025-12-15 12:32:11'),
(59, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-12-15 13:40:54'),
(60, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Atlas Ilmu Pengetahuan Sosial) with biblio_id (10)', '2025-12-15 13:42:19'),
(61, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Butter) with biblio_id (12)', '2025-12-15 13:43:03'),
(62, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data ([Zayyan Selca]) with biblio_id (13)', '2025-12-15 13:43:55'),
(63, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Shopee) with biblio_id (14)', '2025-12-15 13:46:05'),
(64, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Elemental) with biblio_id (11)', '2025-12-15 13:46:46'),
(65, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2025-12-15 17:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `realname` varchar(100) NOT NULL,
  `passwd` varchar(64) NOT NULL,
  `2fa` text DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) DEFAULT NULL,
  `social_media` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(50) DEFAULT NULL,
  `groups` varchar(200) DEFAULT NULL,
  `admin_template` text DEFAULT NULL,
  `forgot` varchar(80) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `2fa`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `admin_template`, `forgot`, `input_date`, `last_update`) VALUES
(1, 'admin', 'Admin', '$2y$10$AcYzVpnXhk6.VjbWhl9s6OHgsZvqxUuZOdPKsvWWizjzncHxKA.X2', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'a:1:{i:0;s:1:\"1\";}', 'a:4:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";s:13:\"default_color\";s:7:\"#f4bde9\";s:18:\"always_show_tracks\";s:1:\"1\";}', NULL, '2025-10-20', '2025-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2025-10-20', '2025-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `user_tokens`
--

CREATE TABLE `user_tokens` (
  `id` int(11) NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashed_validator` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_count`
--

CREATE TABLE `visitor_count` (
  `visitor_id` int(11) NOT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `member_name` varchar(255) NOT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `room_code` varchar(5) DEFAULT NULL,
  `checkin_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup_log`
--
ALTER TABLE `backup_log`
  ADD PRIMARY KEY (`backup_log_id`);

--
-- Indexes for table `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`),
  ADD KEY `biblio_flag_idx` (`opac_hide`,`promoted`),
  ADD KEY `rda_idx` (`content_type_id`,`media_type_id`,`carrier_type_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `publisher_id` (`publisher_id`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `biblio_attachment`
--
ALTER TABLE `biblio_attachment`
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `biblio_id_2` (`biblio_id`,`file_id`);

--
-- Indexes for table `biblio_author`
--
ALTER TABLE `biblio_author`
  ADD PRIMARY KEY (`biblio_id`,`author_id`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `biblio_custom`
--
ALTER TABLE `biblio_custom`
  ADD PRIMARY KEY (`biblio_id`);

--
-- Indexes for table `biblio_log`
--
ALTER TABLE `biblio_log`
  ADD PRIMARY KEY (`biblio_log_id`),
  ADD KEY `realname` (`realname`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `action` (`action`),
  ADD KEY `affectedrow` (`affectedrow`),
  ADD KEY `date` (`date`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `rawdata` (`rawdata`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `additional_information` (`additional_information`);

--
-- Indexes for table `biblio_mark`
--
ALTER TABLE `biblio_mark`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `member_id_idx` (`member_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indexes for table `biblio_relation`
--
ALTER TABLE `biblio_relation`
  ADD PRIMARY KEY (`biblio_id`,`rel_biblio_id`);

--
-- Indexes for table `biblio_topic`
--
ALTER TABLE `biblio_topic`
  ADD PRIMARY KEY (`biblio_id`,`topic_id`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_path` (`content_path`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_title` (`content_title`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_desc` (`content_desc`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_name` (`file_name`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_dir` (`file_dir`);

--
-- Indexes for table `files_read`
--
ALTER TABLE `files_read`
  ADD PRIMARY KEY (`filelog_id`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fines_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`),
  ADD UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`);

--
-- Indexes for table `index_documents`
--
ALTER TABLE `index_documents`
  ADD PRIMARY KEY (`document_id`,`word_id`,`location`),
  ADD KEY `document_id` (`document_id`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `index_words`
--
ALTER TABLE `index_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `uid` (`uid`),
  ADD KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indexes for table `item_custom`
--
ALTER TABLE `item_custom`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`),
  ADD KEY `fk_serial` (`serial_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `input_date` (`input_date`,`last_update`,`uid`);

--
-- Indexes for table `loan_history`
--
ALTER TABLE `loan_history`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `member_name` (`member_name`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `member_type_id` (`member_type_id`);

--
-- Indexes for table `member_custom`
--
ALTER TABLE `member_custom`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `mst_author`
--
ALTER TABLE `mst_author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_name` (`author_name`,`authority_type`);

--
-- Indexes for table `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`carrier_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  ADD PRIMARY KEY (`coll_type_id`),
  ADD UNIQUE KEY `coll_type_name` (`coll_type_name`);

--
-- Indexes for table `mst_content_type`
--
ALTER TABLE `mst_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type` (`content_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_custom_field`
--
ALTER TABLE `mst_custom_field`
  ADD PRIMARY KEY (`dbfield`),
  ADD UNIQUE KEY `field_id` (`field_id`);

--
-- Indexes for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Indexes for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  ADD PRIMARY KEY (`gmd_id`),
  ADD UNIQUE KEY `gmd_name` (`gmd_name`),
  ADD UNIQUE KEY `gmd_code` (`gmd_code`);

--
-- Indexes for table `mst_item_status`
--
ALTER TABLE `mst_item_status`
  ADD PRIMARY KEY (`item_status_id`),
  ADD UNIQUE KEY `item_status_name` (`item_status_name`);

--
-- Indexes for table `mst_label`
--
ALTER TABLE `mst_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_name` (`label_name`);

--
-- Indexes for table `mst_language`
--
ALTER TABLE `mst_language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Indexes for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  ADD PRIMARY KEY (`loan_rules_id`);

--
-- Indexes for table `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Indexes for table `mst_media_type`
--
ALTER TABLE `mst_media_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`media_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  ADD PRIMARY KEY (`member_type_id`),
  ADD UNIQUE KEY `member_type_name` (`member_type_name`);

--
-- Indexes for table `mst_module`
--
ALTER TABLE `mst_module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_name` (`module_name`,`module_path`);

--
-- Indexes for table `mst_place`
--
ALTER TABLE `mst_place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Indexes for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Indexes for table `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mst_servers`
--
ALTER TABLE `mst_servers`
  ADD PRIMARY KEY (`server_id`);

--
-- Indexes for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Indexes for table `mst_topic`
--
ALTER TABLE `mst_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_type`);

--
-- Indexes for table `mst_visitor_room`
--
ALTER TABLE `mst_visitor_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_code_unq` (`unique_code`),
  ADD KEY `unique_code_idx` (`unique_code`);

--
-- Indexes for table `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  ADD PRIMARY KEY (`vocabolary_id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `references_idx` (`member_id`,`biblio_id`),
  ADD KEY `item_code_idx` (`item_code`);

--
-- Indexes for table `search_biblio`
--
ALTER TABLE `search_biblio`
  ADD UNIQUE KEY `biblio_id` (`biblio_id`),
  ADD KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  ADD KEY `add_indexes2` (`opac_hide`,`promoted`),
  ADD KEY `rda_indexes` (`carrier_type`,`media_type`,`content_type`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `title` (`title`,`series_title`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `author` (`author`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `topic` (`topic`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `location` (`location`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `items` (`items`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `collection_types` (`collection_types`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `fk_serial_biblio` (`biblio_id`),
  ADD KEY `fk_serial_gmd` (`gmd_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `stock_take`
--
ALTER TABLE `stock_take`
  ADD PRIMARY KEY (`stock_take_id`);

--
-- Indexes for table `stock_take_item`
--
ALTER TABLE `stock_take_item`
  ADD PRIMARY KEY (`stock_take_id`,`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `status` (`status`),
  ADD KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `realname` (`realname`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `room_code` (`room_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup_log`
--
ALTER TABLE `backup_log`
  MODIFY `backup_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `biblio_log`
--
ALTER TABLE `biblio_log`
  MODIFY `biblio_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_read`
--
ALTER TABLE `files_read`
  MODIFY `filelog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `fines_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `index_words`
--
ALTER TABLE `index_words`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_author`
--
ALTER TABLE `mst_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  MODIFY `coll_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_content_type`
--
ALTER TABLE `mst_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mst_custom_field`
--
ALTER TABLE `mst_custom_field`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  MODIFY `gmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `mst_label`
--
ALTER TABLE `mst_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  MODIFY `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_media_type`
--
ALTER TABLE `mst_media_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  MODIFY `member_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_module`
--
ALTER TABLE `mst_module`
  MODIFY `module_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_place`
--
ALTER TABLE `mst_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mst_servers`
--
ALTER TABLE `mst_servers`
  MODIFY `server_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_topic`
--
ALTER TABLE `mst_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mst_visitor_room`
--
ALTER TABLE `mst_visitor_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  MODIFY `vocabolary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serial`
--
ALTER TABLE `serial`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `stock_take`
--
ALTER TABLE `stock_take`
  MODIFY `stock_take_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `database_slims_adinda`
--
CREATE DATABASE IF NOT EXISTS `database_slims_adinda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `database_slims_adinda`;
--
-- Database: `gerai_serangkai`
--
CREATE DATABASE IF NOT EXISTS `gerai_serangkai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gerai_serangkai`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(5) NOT NULL,
  `jenis_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);
--
-- Database: `nooena's`
--
CREATE DATABASE IF NOT EXISTS `nooena's` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nooena's`;
--
-- Database: `perpus_fah`
--
CREATE DATABASE IF NOT EXISTS `perpus_fah` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `perpus_fah`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"tbd_adinda\",\"table\":\"peminjaman\"},{\"db\":\"tbd_adinda\",\"table\":\"anggota\"},{\"db\":\"tbd_adinda\",\"table\":\"buku\"},{\"db\":\"gerai_serangkai\",\"table\":\"barang\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('tbd_adinda', 'peminjaman', 'status_peminjaman');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-01-04 11:23:47', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sauna`
--
CREATE DATABASE IF NOT EXISTS `sauna` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sauna`;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_sauna`
--

CREATE TABLE `jenis_sauna` (
  `id_sauna` int(11) NOT NULL,
  `tipe_sauna` varchar(100) DEFAULT NULL,
  `harga_sauna` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_telp` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_sauna`
--
ALTER TABLE `jenis_sauna`
  ADD PRIMARY KEY (`id_sauna`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);
--
-- Database: `tbd_adinda`
--
CREATE DATABASE IF NOT EXISTS `tbd_adinda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tbd_adinda`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(5) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `NIM` varchar(20) NOT NULL,
  `jurusan` varchar(32) NOT NULL,
  `fakultas` varchar(32) NOT NULL,
  `Umur` varchar(15) NOT NULL,
  `no_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `NIM`, `jurusan`, `fakultas`, `Umur`, `no_telp`) VALUES
(1, 'Muhammad Irfan Mufid', '', 'Ekonomi Syariah', 'Ekonomi dan Bisnis', '', '085766357960'),
(2, 'Nooena Adinda', '', 'Ilmu Perpustakaan', 'Adab dan Humaniora', '', '081523931843'),
(3, 'Sayyida Nafisa', '', 'Ilmu Perpustakaan', 'Dakwah dan Ilmu Komunikasi', '', '081293513047'),
(4, 'Tiara Fadhilatunnisa', '', 'Ilmu Perpustakaan', 'Adab dan Humaniora', '', '085772589680'),
(5, 'Shevaya Rubyfirlie', '', 'Ilmu Hukum', 'Syariah dan Hukum', '', '098987654321'),
(6, 'Niki ', '', 'Hubungan Internasional', 'Ilmu Sosial dan Politik', '', '098976895454'),
(7, 'Hindia', '', 'Komunikasi ', 'Dakwah dan Ilmu Komunikasi', '', '098978676565'),
(9, 'Sarbina Carpenter', '', 'Ilmu Hadist', 'Ushuluddin', '', '099897685643');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `tahun_terbit` year(4) DEFAULT NULL,
  `stok` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `isbn`, `judul`, `penulis`, `tahun_terbit`, `stok`) VALUES
(1, '978-602-06-3854-4', 'Bumi', 'Tere Liye', '2014', 15),
(2, '978-602-5713-02-6', 'Best Husband', 'Sa_Mazid', '2018', 5),
(3, '978-602-04-8690-1', 'Value Your Life', 'Onggy Hianata', '2019', 6),
(4, '979-9193-57-5', 'Islam dan ilmu pengetahuan', 'Darori amin', '2000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status_peminjaman` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `id_anggota`, `tanggal_pinjam`, `tanggal_kembali`, `status_peminjaman`) VALUES
(1, 3, 2, '2025-12-04', '2025-12-11', 'dipinjam'),
(2, 4, 3, '2025-12-01', '2025-12-11', 'dipinjam'),
(3, 3, 2, '2025-12-04', '2025-12-11', 'dikembalikan'),
(4, 2, 3, '2025-12-01', '2025-12-11', 'dipinjam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `fk_anggota` (`id_anggota`),
  ADD KEY `fk_buku` (`id_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_anggota` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `toko_online`
--
CREATE DATABASE IF NOT EXISTS `toko_online` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko_online`;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`) VALUES
(1, 'Laptop Gamming', 15000000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);
--
-- Database: `zoopark`
--
CREATE DATABASE IF NOT EXISTS `zoopark` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zoopark`;

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id_pengunjung` int(11) NOT NULL,
  `nama_pengunjung` varchar(60) DEFAULT NULL,
  `no_telp` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `jenis_tiket` varchar(60) DEFAULT NULL,
  `harga_tiket` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pengunjung` int(11) DEFAULT NULL,
  `id_tiket` int(11) DEFAULT NULL,
  `jumlah_tiket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id_pengunjung`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_pengunjung` (`id_pengunjung`),
  ADD KEY `fk_tiket` (`id_tiket`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_pengunjung` FOREIGN KEY (`id_pengunjung`) REFERENCES `pengunjung` (`id_pengunjung`),
  ADD CONSTRAINT `fk_tiket` FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
