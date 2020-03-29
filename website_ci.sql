-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2020 at 01:41 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `artikel_id` int(11) NOT NULL,
  `artikel_tanggal` datetime NOT NULL,
  `artikel_judul` varchar(255) NOT NULL,
  `artikel_slug` varchar(255) NOT NULL,
  `artikel_konten` longtext NOT NULL,
  `artikel_sampul` varchar(255) NOT NULL,
  `artikel_author` int(11) NOT NULL,
  `artikel_kategori` int(11) NOT NULL,
  `artikel_status` enum('publish','draft') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`artikel_id`, `artikel_tanggal`, `artikel_judul`, `artikel_slug`, `artikel_konten`, `artikel_sampul`, `artikel_author`, `artikel_kategori`, `artikel_status`) VALUES
(6, '2019-02-03 20:45:40', 'Apa Tren Terbaru Web Design Tahun 2019 ?', 'apa-tren-terbaru-web-design-tahun-2019', '<h2>Tren Web Design Tahun 2019</h2>\r\n\r\n<p>Testing update There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text.</p>\r\n\r\n<h2>Testing</h2>\r\n\r\n<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated&nbsp; All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'pexels-photo-270348.jpg', 1, 8, 'publish'),
(7, '2019-02-24 16:05:20', 'Tes Buat Artikel Baru Untuk Website CI', 'tes-buat-artikel-baru-untuk-website-ci', '<p>voluptate velit esse cillum dolore eu fugiat nulla pariaturvoluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h2>Nulla pariaturvoluptate velit esse cillum dolore</h2>\r\n\r\n<p>voluptate velit esse cillum dolore eu fugiat nulla pariaturvoluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>\r\n\r\n<p>voluptate velit esse cillum dolore eu fugiat nulla pariaturvoluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>\r\n\r\n<p>voluptate velit esse cillum dolore eu fugiat nulla pariaturvoluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>\r\n', 'pexels-photo-1181298.jpg', 4, 8, 'publish'),
(8, '2019-02-24 16:07:34', 'Voluptate Velit Esse Cillum Dolore Fugiat Nulla Pariatur', 'voluptate-velit-esse-cillum-dolore-fugiat-nulla-pariatur', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h2>voluptate velit esse cillum dolore eu fugiat nulla pariatur</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3>voluptate velit esse cillum dolore eu fugiat nulla pariatur</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', 'pexels-photo-1917575.jpg', 4, 10, 'publish'),
(9, '2019-02-26 12:49:06', 'Belajar Membuat Website', 'belajar-membuat-website', '<p>All the All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>The Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'startup-photos.jpg', 1, 6, 'publish'),
(10, '2019-02-26 12:51:36', 'Algoritma Pemrograman Terbaru', 'algoritma-pemrograman-terbaru', '<p>&nbsp;to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero.</p>\r\n\r\n<p>Written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n', 'pexels-photo-160107.jpg', 1, 14, 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `data_bidang_kj`
--

CREATE TABLE `data_bidang_kj` (
  `id` int(11) NOT NULL,
  `nama_bidang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_bidang_kj`
--

INSERT INTO `data_bidang_kj` (`id`, `nama_bidang`) VALUES
(1, 'Pendidikan dan Pengajaran'),
(2, 'Penelitian'),
(3, 'Pengabdian'),
(4, 'Penunjang');

-- --------------------------------------------------------

--
-- Table structure for table `data_kinerja_kj`
--

CREATE TABLE `data_kinerja_kj` (
  `id` int(11) NOT NULL,
  `nama_kinerja` varchar(100) NOT NULL,
  `id_bidang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kinerja_kj`
--

INSERT INTO `data_kinerja_kj` (`id`, `nama_kinerja`, `id_bidang`) VALUES
(1, 'Bimbingan Kuliah Kerja', 1),
(2, 'Membimbing Dosen Muda', 1),
(17, 'Mengajar AA/Pekerti', 1),
(18, 'Mengajar Matrikulasi S2/S3', 1),
(19, 'Mengajar pada Program D3/S1', 1),
(20, 'Mengajar pada Program S2', 1),
(21, 'Mengajar pada Program S3', 1),
(22, 'Mengajar TOEFL/IELTS/Bahasa Inggris', 1),
(23, 'Mengembangkan Program Kuliah', 1),
(24, 'Menguji Prelium/Kualifikasi Doktor', 1),
(25, 'Menguji Seminar Hasil S1', 1),
(26, 'Menguji Seminar Hasil S2', 1),
(27, 'Menguji Seminar Hasil S3', 1),
(28, 'Menguji Seminar Proposal S1', 1),
(29, 'Menguji Seminar Proposal S2', 1),
(30, 'Menguji Seminar Proposal S3', 1),
(31, 'Menguji Sidang Komisi I, II, dan III', 1),
(32, 'Menguji Tugas Akhir/Skripsi', 1),
(33, 'Menguji Ujian Disertasi (Terbuka)', 1),
(34, 'Menguji Ujian Tesis', 1),
(35, 'Menguji Wawancara Mahasiswa Baru S2', 1),
(36, 'Menguji Wawancara Mahasiswa Baru S3', 1),
(37, 'Menulis Buku Monograf ber-ISBN', 1),
(38, 'Menguji Buku Referensi ber-ISBN', 1),
(39, 'Menulis Buku Teks ber-ISBN', 1),
(40, 'Pembimbing Disertasi', 1),
(41, 'Pembimbing Tesis', 1),
(42, 'Pembimbing Tugas Akhir/Skripsi', 1),
(43, 'Pembuatan Naskah Ujian S2/S3', 1),
(44, 'Pemeriksaan Naskah Ujian S2/S3', 1),
(45, 'Penasihat Akademik', 1),
(46, 'Perolehan Profesor', 1),
(47, 'Kategori A.', 2),
(48, 'Kategori B.', 2),
(49, 'Kategori C.', 2),
(50, 'Kategori D.', 2),
(51, 'Kategori E.', 2),
(52, 'Kategori F.', 2),
(53, 'Kategori G.', 2),
(54, 'Kategori H.', 2),
(55, 'Kategori I.', 2),
(56, 'Memperoleh Hak Paten', 2),
(57, 'Memperoleh Hak Desain', 2),
(58, 'Penelitian Mandiri', 2),
(59, 'Instruktur Kursus Bahasa Inggris', 3),
(60, 'Pengabdian Kepada Masyarakat', 3),
(61, 'Menguji Ujian Disertasi (Tertutup)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_tugas_kj`
--

CREATE TABLE `data_tugas_kj` (
  `id` int(11) NOT NULL,
  `nama_tugas` varchar(100) NOT NULL,
  `rubrik_tugas` double NOT NULL,
  `satuan_tugas` varchar(10) NOT NULL,
  `id_kinerja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_tugas_kj`
--

INSERT INTO `data_tugas_kj` (`id`, `nama_tugas`, `rubrik_tugas`, `satuan_tugas`, `id_kinerja`) VALUES
(1, 'Bimbingan Kuliah KKN', 0.39, 'KEG', 1),
(2, 'Bimbingan Magang', 0.39, 'MHS', 1),
(3, 'Bimbingan PPL/ PKL', 0.39, 'MHS', 1),
(4, '1 Orang', 0.5, 'MK', 2),
(5, 'AA/Pekerti', 2.19, 'JAM', 17),
(6, 'Mengajar S2/S3', 2.9, 'SKS', 18),
(7, 'Mengajar D3/S1', 1, 'SKS', 19),
(8, 'Mengajar S2', 0.97, 'SKS', 20),
(9, 'Mengajar S3', 1.17, 'SKS', 21),
(10, 'Mengajar TOEFL', 2.19, 'JAM', 22),
(11, 'Program Kuliah', 1, 'MK', 23),
(12, 'Penguji Bidang Ilmu', 2.92, 'MHS', 24),
(13, 'Penguji Filsafat Ilmu', 2.92, 'MK', 24),
(14, 'Penguji Metodologi Penelitian', 2.92, 'MK', 24),
(15, 'Anggota', 0.51, 'MHS', 25),
(16, 'Ketua', 0.58, 'MHS', 25),
(17, 'Anggota', 0.51, 'MHS', 26),
(18, 'Ketua', 0.58, 'MHS', 26),
(19, 'Tim Oponen', 1.46, 'MHS', 27),
(20, 'Ketua', 0.73, 'MHS', 27),
(21, 'Sekretaris/Anggota', 0.58, 'MHS', 27),
(22, 'Anggota', 0.36, 'MHS', 28),
(23, 'Ketua', 0.43, 'MHS', 28),
(24, 'Anggota', 0.51, 'MHS', 29),
(25, 'Ketua', 0.58, 'MHS', 29),
(26, 'Anggota', 0.58, 'MHS', 30),
(27, 'Ketua', 0.73, 'MHS', 30),
(28, 'Tim Oponen', 1.46, 'MHS', 30);

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `halaman_id` int(11) NOT NULL,
  `halaman_judul` varchar(255) NOT NULL,
  `halaman_slug` varchar(255) NOT NULL,
  `halaman_konten` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`halaman_id`, `halaman_judul`, `halaman_slug`, `halaman_konten`) VALUES
(3, 'Kontak Kami', 'kontak-kami', '<p>Berikut ini adalah kontak kami yang bisa anda hubungi :</p>\r\n\r\n<p><strong>WhatsApp</strong> : 0812-3456-7890</p>\r\n\r\n<p><strong>Email</strong> : me@dikialfarabi.com</p>\r\n\r\n<p><strong>Webiste</strong> : https://www.malasngoding.com</p>\r\n'),
(4, 'Tentang', 'tentang', '<h2>Siapa Kami ?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Jasa Yang Ditawarkan</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n'),
(5, 'Layanan', 'layanan', '<p>Berikut adalah layanan kami,</p>\r\n\r\n<ol>\r\n	<li>Jasa Pembuatan Aplikasi<br />\r\n	It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br />\r\n	&nbsp;</li>\r\n	<li>Jasa Pembuatan Website<br />\r\n	It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br />\r\n	&nbsp;</li>\r\n	<li>Jasa Content Writer<br />\r\n	It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br />\r\n	&nbsp;</li>\r\n	<li>Jasa Translate Bahasa Inggris - Indonesia<br />\r\n	It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br />\r\n	&nbsp;</li>\r\n</ol>\r\n\r\n<p>Terima Kasih</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_slug`) VALUES
(6, 'Web Programming', 'web-programming'),
(8, 'Web Design', 'web-design'),
(9, 'Travel', 'travel'),
(10, 'Olahraga', 'olahraga'),
(11, 'Informasi Publik', 'informasi-publik'),
(12, 'Masakan', 'masakan'),
(13, 'Berita', 'berita'),
(14, 'Teknologi', 'teknologi'),
(15, 'Kegiatan', 'kegiatan');

-- --------------------------------------------------------

--
-- Table structure for table `kinerja`
--

CREATE TABLE `kinerja` (
  `id` int(11) NOT NULL,
  `bidang` varchar(50) NOT NULL,
  `kinerja` varchar(100) NOT NULL,
  `tugas` varchar(50) NOT NULL,
  `uraian` text NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `poin` double NOT NULL,
  `bukti` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `persentase` enum('30','70') NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tamuk` int(5) NOT NULL,
  `rubrik` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kinerja`
--

INSERT INTO `kinerja` (`id`, `bidang`, `kinerja`, `tugas`, `uraian`, `satuan`, `poin`, `bukti`, `tanggal`, `persentase`, `nip`, `jumlah`, `tamuk`, `rubrik`) VALUES
(1, 'Pendidikan dan Pengajaran', 'Mengajar pada Program D3/S1', 'Mengajar D3/S1', 'Mengajar Bahasa Jepang', 'SKS', 4, 'Kominfo', '2019-10-22', '30', '0821', 8, 16, 1),
(2, 'Penelitian', 'KATEGORI A', 'PUBLIKASI', 'Penelitian Chrom', 'JUDUL', 21.87, 'Internet', '2019-11-23', '30', '0821', 1, 0, 21.87);

-- --------------------------------------------------------

--
-- Table structure for table `kinerja_detail`
--

CREATE TABLE `kinerja_detail` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tamuk` int(5) NOT NULL,
  `rubrik` float NOT NULL,
  `persentase` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `link_facebook` varchar(255) NOT NULL,
  `link_twitter` varchar(255) NOT NULL,
  `link_instagram` varchar(255) NOT NULL,
  `link_github` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`nama`, `deskripsi`, `logo`, `link_facebook`, `link_twitter`, `link_instagram`, `link_github`) VALUES
('Malas Ngoding', 'Situs Belajar Pemrograman terlengkap', 'logoku.png', 'https://www.facebook.com/malasngodingpage/', 'https://twitter.com/malasngoding', 'https://www.instagram.com/malasngoding/', 'https://github.com/malasngoding');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nip` varchar(50) NOT NULL,
  `pengguna_password` varchar(255) NOT NULL,
  `pengguna_level` enum('admin','dosen','verifikator','validator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`pengguna_id`, `pengguna_nip`, `pengguna_password`, `pengguna_level`) VALUES
(1, 'admin', '7488e331b8b64e5794da3fa4eb10ad5d', 'admin'),
(6, '123456789', '018a9567ea15470312c40d3e5d6bbcd4', 'admin'),
(7, 'F55116045', '018a9567ea15470312c40d3e5d6bbcd4', 'admin'),
(8, '0821', '6fb42da0e32e07b61c9f0251fe627a9c', 'admin'),
(9, '1029', '018a9567ea15470312c40d3e5d6bbcd4', 'admin'),
(10, '0821', '018a9567ea15470312c40d3e5d6bbcd4', 'dosen'),
(11, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(12, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(13, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(14, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(15, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(16, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(17, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(18, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(19, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(20, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(21, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(22, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(23, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(24, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(25, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(26, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(27, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(28, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(29, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(30, 'F55116000', '018a9567ea15470312c40d3e5d6bbcd4', ''),
(31, '12345678', '25d55ad283aa400af464c76d713c07ad', 'dosen'),
(32, '198010272006041001', 'f5bb0c8de146c67b44babbf4e6584cc0', 'dosen');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_detail`
--

CREATE TABLE `pengguna_detail` (
  `id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) NOT NULL,
  `pengguna_nip` varchar(30) NOT NULL,
  `pengguna_pg` varchar(50) NOT NULL,
  `pengguna_jf` varchar(20) NOT NULL,
  `pengguna_sk` varchar(30) NOT NULL,
  `pengguna_uk` varchar(50) NOT NULL,
  `pengguna_jd` varchar(30) NOT NULL,
  `pengguna_js` varchar(50) NOT NULL,
  `pengguna_skp` int(30) NOT NULL,
  `pengguna_khd` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna_detail`
--

INSERT INTO `pengguna_detail` (`id`, `pengguna_nama`, `pengguna_nip`, `pengguna_pg`, `pengguna_jf`, `pengguna_sk`, `pengguna_uk`, `pengguna_jd`, `pengguna_js`, `pengguna_skp`, `pengguna_khd`) VALUES
(38, 'ALDO CHRISTOPHER LEO', 'F55116045', 'Penata Tingkat I, III/d', 'Tenaga Pengajar/CPNS', 'Jurusan Teknologi Informasi', 'Fakultas', 'Dosen Tugas Tambahan', 'Wakil Rektor', 2, 100),
(48, 'Emil', '1029', 'Penata Muda Tingkat I, III/b', 'Lektor Kepala', 'Jurusan Teknologi Informasi', 'Fakultas', 'Dosen Tugas Tambahan', 'Wakil Rektor', 85, 100),
(49, 'Budi', '0821', 'Penata Muda Tingkat I, III/b', 'Lektor Kepala', 'Jurusan Teknologi Informasi', 'Fakultas', 'Dosen Biasa', '-', 0, 0),
(50, 'Steve', 'F55116000', 'Penata, III/c', 'Lektor Kepala', 'Jurusan Teknologi Informasi', 'Fakultas', '-', 'Kepala Biro BUK', 80, 95),
(51, 'AA', '12345678', 'Penata Muda, III/a', 'Tenaga Pengajar/CPNS', 'Jurusan Teknologi Informasi', 'Fakultas', 'Dosen Biasa', '-', 0, 0),
(58, 'Yusuf Anshori, S.T., M.T', '198010272006041001', 'Penata TK I, III/d', 'Lektor', 'Teknologi Informasi', 'Fakultas', 'Dosen Biasa', '-', 0, 0),
(59, 'Yusuf Anshori, S.T., M.T', '198010272006041001', 'Penata TK I, III/d', 'Lektor', 'Teknologi Informasi', 'Fakultas', 'Dosen Biasa', '-', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikel_id`);

--
-- Indexes for table `data_bidang_kj`
--
ALTER TABLE `data_bidang_kj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_kinerja_kj`
--
ALTER TABLE `data_kinerja_kj`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_kinerja_kj_ibfk_1` (`id_bidang`);

--
-- Indexes for table `data_tugas_kj`
--
ALTER TABLE `data_tugas_kj`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kinerja` (`id_kinerja`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`halaman_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kinerja`
--
ALTER TABLE `kinerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kinerja_detail`
--
ALTER TABLE `kinerja_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `pengguna_detail`
--
ALTER TABLE `pengguna_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `artikel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_bidang_kj`
--
ALTER TABLE `data_bidang_kj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_kinerja_kj`
--
ALTER TABLE `data_kinerja_kj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `data_tugas_kj`
--
ALTER TABLE `data_tugas_kj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `halaman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kinerja`
--
ALTER TABLE `kinerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kinerja_detail`
--
ALTER TABLE `kinerja_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pengguna_detail`
--
ALTER TABLE `pengguna_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_kinerja_kj`
--
ALTER TABLE `data_kinerja_kj`
  ADD CONSTRAINT `data_kinerja_kj_ibfk_1` FOREIGN KEY (`id_bidang`) REFERENCES `data_bidang_kj` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `data_tugas_kj`
--
ALTER TABLE `data_tugas_kj`
  ADD CONSTRAINT `data_tugas_kj_ibfk_1` FOREIGN KEY (`id_kinerja`) REFERENCES `data_kinerja_kj` (`id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
