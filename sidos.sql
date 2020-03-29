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
-- Database: `sidos`
--

-- --------------------------------------------------------

--
-- Table structure for table `20192membimbing`
--

CREATE TABLE `20192membimbing` (
  `id_membimbing` int(11) NOT NULL,
  `nama_dosen` varchar(60) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `sk_pembimbing` varchar(255) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `20192membimbing`
--

INSERT INTO `20192membimbing` (`id_membimbing`, `nama_dosen`, `nama_mhs`, `sk_pembimbing`, `verified`, `id_dosen`) VALUES
(1, 'Yusuf Anshori', 'Ihzanul Haekal New', 'KRS_al.pdf', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `20192mengajar`
--

CREATE TABLE `20192mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `nama_dosen` varchar(60) NOT NULL,
  `total_sks` int(11) NOT NULL,
  `bukti_mengajar` varchar(100) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `20192mengajar`
--

INSERT INTO `20192mengajar` (`id_mengajar`, `nama_dosen`, `total_sks`, `bukti_mengajar`, `verified`, `id_dosen`) VALUES
(1, 'Dwi Shinta Angreni', 23, 'ding20188.pdf', 1, 5),
(2, 'Dwi Shinta Angreni', 17, 'ding20189.pdf', 1, 5),
(3, 'Yusuf Anshori', 40, 'ding201811.pdf', 0, 2),
(5, 'Dessy Santi', 32, 'Cetak_KHS2.pdf', 1, 3),
(7, 'Yusuf Anshori', 10, 'Cetak_KHS6.pdf', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `20192menguji`
--

CREATE TABLE `20192menguji` (
  `id_menguji` int(11) NOT NULL,
  `nama_dosen` varchar(60) NOT NULL,
  `menguji` varchar(20) NOT NULL,
  `bukti_menguji` varchar(100) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `20192menguji`
--

INSERT INTO `20192menguji` (`id_menguji`, `nama_dosen`, `menguji`, `bukti_menguji`, `verified`, `id_dosen`) VALUES
(1, 'Yusuf Anshori', 'Ujian Tutup', 'KRS_ibnu.pdf', 1, 2),
(2, 'Yusuf Anshori', 'seminar hasil', 'Cetak_KHS1.pdf', 1, 2),
(3, 'Yusuf Anshori', 'seminar hasil', 'Cetak_KHS2.pdf', 0, 2),
(4, 'Yusuf Anshori', 'ujian tutup', 'Transkrip_Nilai_F55116018.pdf', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `20192penelitian`
--

CREATE TABLE `20192penelitian` (
  `id_penelitian` int(11) NOT NULL,
  `nama_dosen` varchar(60) NOT NULL,
  `judul_penelitian` varchar(255) NOT NULL,
  `dokumen_penelitian` varchar(255) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `20192penelitian`
--

INSERT INTO `20192penelitian` (`id_penelitian`, `nama_dosen`, `judul_penelitian`, `dokumen_penelitian`, `id_dosen`) VALUES
(1, 'Yusuf Anshori', 'Implementasi Mikrokontroler sebagai Detektor Getar', 'Yusuf_Anshori1.pdf', 2),
(2, 'Yusuf Anshori', 'This is a new research', 'Yusuf_Anshori3.pdf', 2),
(4, 'Dessy Santi', 'ini adalah penelitian terbaru', 'DessySanti.pdf', 3),
(5, 'Dessy Santi', 'ini juga merupakan penelitian terbaru', 'DessySanti1.pdf', 3);

-- --------------------------------------------------------

--
-- Table structure for table `20192pengabdian`
--

CREATE TABLE `20192pengabdian` (
  `id_pengabdian` int(11) NOT NULL,
  `nama_dosen` varchar(60) NOT NULL,
  `judul_pengabdian` varchar(255) NOT NULL,
  `dokumen_pengabdian` varchar(255) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `20192pengabdian`
--

INSERT INTO `20192pengabdian` (`id_pengabdian`, `nama_dosen`, `judul_pengabdian`, `dokumen_pengabdian`, `id_dosen`) VALUES
(1, 'Yusuf Anshori', 'IBM Keterampilan Masyarakat Pelosok dalam Pemanfaatan Energi Angin untuk Keperluan Kebun dan Rumah Tangga', 'Yusuf_Anshori5.pdf', 2);

-- --------------------------------------------------------

--
-- Table structure for table `20192wali`
--

CREATE TABLE `20192wali` (
  `id_wali` int(11) NOT NULL,
  `nama_dosen` varchar(60) NOT NULL,
  `total_mhs` int(11) NOT NULL,
  `bukti_wali` varchar(255) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `20192wali`
--

INSERT INTO `20192wali` (`id_wali`, `nama_dosen`, `total_mhs`, `bukti_wali`, `verified`, `id_dosen`) VALUES
(2, 'Yusuf Anshori', 11, 'khs_ibnu1.pdf', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nama` varchar(70) NOT NULL,
  `id_dosen` int(4) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `foto_profil` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(4) NOT NULL,
  `rw` varchar(4) NOT NULL,
  `kelurahan` varchar(20) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kode_pos` varchar(7) NOT NULL,
  `no_telpon` varchar(13) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `no_sk_cpns` varchar(30) NOT NULL,
  `tgl_sk_cpns` date NOT NULL,
  `no_sk_pns` varchar(30) NOT NULL,
  `tgl_pns` date NOT NULL,
  `sumber_gaji` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `status_perkawinan` varchar(30) NOT NULL,
  `nama_pasangan` varchar(30) NOT NULL,
  `nip_pasangan` varchar(30) NOT NULL,
  `pekerjaan_pasangan` varchar(20) NOT NULL,
  `tgl_pns_pasangan` date NOT NULL,
  `npwp` varchar(30) NOT NULL,
  `nama_pajak` varchar(30) NOT NULL,
  `pt_s1` varchar(100) NOT NULL,
  `bidang_s1` varchar(50) NOT NULL,
  `masuk_s1` varchar(5) NOT NULL,
  `lulus_s1` varchar(5) NOT NULL,
  `ijazah_s1` varchar(100) NOT NULL,
  `pt_s2` varchar(100) NOT NULL,
  `bidang_s2` varchar(50) NOT NULL,
  `masuk_s2` varchar(5) NOT NULL,
  `lulus_s2` varchar(5) NOT NULL,
  `ijazah_s2` varchar(100) NOT NULL,
  `pt_s3` varchar(100) NOT NULL,
  `bidang_s3` varchar(50) NOT NULL,
  `masuk_s3` varchar(5) NOT NULL,
  `lulus_s3` varchar(5) NOT NULL,
  `ijazah_s3` varchar(100) NOT NULL,
  `golongan` varchar(10) NOT NULL,
  `pangkat` varchar(20) NOT NULL,
  `tmt_pangkat` date NOT NULL,
  `sk_pangkat` varchar(100) NOT NULL,
  `fungsional` varchar(20) NOT NULL,
  `sk_fungsional` varchar(100) NOT NULL,
  `notif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nama`, `id_dosen`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `kewarganegaraan`, `foto_profil`, `email`, `alamat`, `rt`, `rw`, `kelurahan`, `kecamatan`, `kota`, `provinsi`, `kode_pos`, `no_telpon`, `no_hp`, `nip`, `jurusan`, `no_sk_cpns`, `tgl_sk_cpns`, `no_sk_pns`, `tgl_pns`, `sumber_gaji`, `nama_ibu`, `status_perkawinan`, `nama_pasangan`, `nip_pasangan`, `pekerjaan_pasangan`, `tgl_pns_pasangan`, `npwp`, `nama_pajak`, `pt_s1`, `bidang_s1`, `masuk_s1`, `lulus_s1`, `ijazah_s1`, `pt_s2`, `bidang_s2`, `masuk_s2`, `lulus_s2`, `ijazah_s2`, `pt_s3`, `bidang_s3`, `masuk_s3`, `lulus_s3`, `ijazah_s3`, `golongan`, `pangkat`, `tmt_pangkat`, `sk_pangkat`, `fungsional`, `sk_fungsional`, `notif`) VALUES
('Yusuf Anshori, S.T., M.T', 2, 'Laki-Laki', 'Kotaraya', '1980-10-27', 'Islam', 'Indonesia', 'Yusuf_Anshori3.jpg', 'iyus.jr@gmail.com', 'JL. Malonda', '', '', 'tipo', 'Ulujadi Palu', 'palu', 'sulawesi tengah', '', '', '085241170909', '198010272006041001', 'Teknologi Informasi', '', '2019-12-31', '', '2019-12-07', '', '', '', '', '', '', '2019-12-07', '', '', 'Universitas Muhammadiyah Malang', 'Teknik Elektro', '2000', '2005', 'Yusuf_AnshoriS14.pdf', 'Universitas Hasanuddin', 'Teknik Elektro', '2009', '', 'Yusuf_AnshoriS2.pdf', '', '', '', '', '', 'III/d', 'Penata TK I', '2016-03-17', 'Cetak_KHS.pdf', 'Lektor', 'ding2018.pdf', ''),
('Dessy Santi, S.Kom.,M.T', 3, 'Perempuan', 'Ujung Pandang', '1981-12-23', 'Kristen', 'Indonesia', 'DessySanti.jpg', 'dessy.santi81@gmail.com', '', '', '', '', '', '', '', '', '422355', '081355339005', '198112232015042002', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'Universitas Dr. Soetomo Surabaya', 'Teknik Informatika', '2001', '2007', '', 'Universitas Hasanuddin Makassar', 'Teknik Elektro (konsentrasi Teknik Informatika)', '2011', '2013', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '2016-02-18', '', 'Tenaga Pengajar', '', ''),
('Hajra Rasmita Ngembaa, S.Kom., MM., M.Kom', 4, 'Perempuan', 'Gintu', '1989-08-09', 'Islam', 'Indonesia', 'Hajra_Rasmita_Ngemba.jpg', 'hajra.rasmita@gmail.com', 'Jl. Eboni 3 No.10 Perumnas Tinggede', '', '', '', '', '', '', '0', '454014-422355', '08114536968', '198908092019032019', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'Satya Wacana Christian University', 'Komputer- Sistem Informasi', '2007', '2011', '', 'Indonesian Islamic University in Yogyakarta', 'Komputer- Teknik Informatika', '2013', '2015', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Dwi Shinta Angreni, S.Si., M.Kom', 5, 'Perempuan', 'Palu', '1991-07-20', 'Islam', 'indonesia', 'Dwi_Shinta_Angreni2.jpg', 'shintadwi.suyatno@gmail.c', 'Jl. Lagarutu No.27 D Palu', '', '', '', '', '', '', '', '', '081933979717', '0020079102', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'Universitas Tadulako Palu', 'Matematika', '2009', '2014', '', 'Institut Teknologi Sepuluh Nopember (ITS) Surabaya', 'Teknik Informatika', '2014', '2016', '', '', '', '', '', '', '', '', '0000-00-00', '', 'Tenaga Pengajar', '', ''),
('Albrecht Yordanus Erwin Dodu, S.T., M.Eng', 6, 'Laki-Laki', 'Palu', '1976-11-12', 'Kristen', 'indonesia', 'Albrecht_Yordanus_Erwin_Dodu.jpg', 'ayerwin.dodu@gmail.com', 'Jl. Marjun Habi, No. 11', '', '', '', '', 'palu', 'sulawesi tengah', '', '', '082187372287', '197611122006041001', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'Universitas Gadjah Mada', 'Teknik Elektro', '1994', '2002', '', 'HAN University Of Applied Sciences, The Netherlands', 'Control Systems Engineering', '2010', '2012', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Yazdi Pusadan', 7, 'Laki-Laki', 'Palu', '1979-02-10', 'Islam', 'indonesia', '', 'yazdi.diyanara@gmail.com', 'Jl. TelukTomini No. 9 A', '', '', '', '', 'palu', '', '', '', '081225113983 ', '197902102006041002 ', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'Universitas Gadjah Mada', 'Ilmu Komputer', '2002', '2004', '', 'Universitas Gadjah Mada', 'Teknologi Informasi', '2008', '2010', '', 'Institut Teknologi Sepuluh Nopember', 'Ilmu Komputer', '2014', '2019', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Anita Ahmad Kasim', 8, 'Perempuan', 'Poso', '1979-01-12', 'Islam', 'Indonesia', 'Anita_Ahmad_Kasim.jpg', 'nita.kasim@gmail.com', '', '', '', '', '', '', '', '', '', '081241232008', '197901122005012002', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'Universitas Gadjah Mada', 'Ilmu Komputer', '1997', '2002', '', 'Universitas Gadjah Mada', 'Ilmu Komputer', '2008', '2018', '', 'Universitas Gadjah Mada', 'Ilmu Komputer', '2012', '2018', '', '', '', '0000-00-00', '', 'Lektor', '', ''),
('Amriana', 9, 'Perempuan', 'Cinnong', '1976-10-20', 'Islam', 'Indonesia', 'Amriana.jpg', 'amrianaa23@gmail.com', 'Jl. Perdos Blok D7 No 4', '', '', '', '', 'palu', '', '', '', '085824316051', '197610202006042033', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'Universitas Muslim Indonesia', 'Elektronika dan komunikasi', '1995', '2000', '', 'Universitas Gadjah Mada', 'Sistem Komputer dan Informatika', '2003', '2005', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Rizka Ardiansyah', 10, 'Laki-Laki', 'Palu', '1989-04-23', 'Islam', 'Indonesia', 'Rizka_Ardiansyah.jpg', 'ardiansyah.rizka@gmail.co', 'BTN Tavanjuka Mas Blok C No 6', '', '', 'tavanjuka', 'Tatanga', 'palu', 'sulawesi tengah', '', '', '', '198904232015041001', '', '', '0000-00-00', '0', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '0', '', 'Universitas Muhammadiyah Malang', 'Teknik Informatika', '2006', '2011', '', 'Institut Teknologi Sepuluh Nopember Surabaya', 'Network Centric Computing', '2011', '2014', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Tenaga Pengajar', '', ''),
('Ryfial Azhar', 11, 'Laki-Laki', 'Bantaeng', '1990-06-07', 'Islam', 'Indonesia', 'Ryfial_Azhar.jpg', 'Phyal_dp08@yahoo.com', 'Jl. Ampana Raya No. 113', '', '', '', '', 'palu', 'sulawesi tengah', '', '', ' 082337837352', '8823620016', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'STIMIK Dipanegara Makassar', 'Teknik Informatika', '2008', '2012', '', 'Institut Teknologi Sepuluh Nopember Surabaya', 'Teknik Informatika', '2014', '2016', '', '', '', '', '', '', '', '', '0000-00-00', '', 'Tenaga Pengajar', '', ''),
('Wirdayanti, S.T., M.Eng', 12, 'Perempuan', ' Palu', '1984-11-28', 'Islam', 'Indonesia', 'Wirdayanti.jpg', 'wirda.ida28@gmail.com', 'Jl. M. Thamrin No. 61', '', '', '', '', '', '', '', '454014-422355', '085240681668', '198411282019032007', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'Universitas ARS Internasional Bandung', 'Teknik Informatika', '2002', '2006', '', 'Universitas Gadjah Mada Yogyakarta', 'Teknik Elektro', '2008', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Tenaga Pengajar', '', ''),
('Deny Wiria Nugraha', 13, 'Laki-Laki', 'Palu', '1979-08-14', 'Islam', 'indonesia', 'Deny_Wiria_Nugraha.jpg', 'deny.wiria.nugraha@gmail', 'Perumahan Zebra Indah Blok H No. 22', '', '', '', '', 'palu', 'sulawesi tengah', '', '', '081227442448', '197908142005011002', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'Institut Teknologi Adhi Tama Surabaya', 'Teknik Elektro', '1997', '2002', '', 'Universitas Gadjah Mada Yogyakarta', 'Teknologi Informasi', '2008', '2010', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Syaiful Hendra', 14, 'Laki-Laki', 'Medan', '1987-05-14', 'Islam', 'indonesia', 'Syaiful_Hendra.jpg', 'syaiful.hendra.garuda@', 'Jl. Eboni 3 No.10 Perumnas Tinggede', '', '', '', '', 'palu', 'sulawesi tengah', '', '', '08114538853', '198705142018031 ', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', 'STMIK Adhi Guna Palu', 'Komputer- Sistem Informasi', '2007', '2011', '', 'Universitas Islam Indonesia', 'Komputer- Teknik Informatika', '2013', '2015', '', '', '', '', '', '', '', '', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Ir. Mery Subito MT', 15, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196205191988032001', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Tan  Suryani  Sollu MT', 16, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196512171994122001', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Muhammad Sarjan MT', 17, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195604141986031006', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Drs. Agustinus Kali M.Si.', 18, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196008041988031001', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Ardi Amir ST.MT', 19, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197008152005011002', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Ing. Sari Dewi  ST. MSc.', 20, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197703062002122002', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Yulius Salu Pirade ST M.P.W', 21, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196707121997021001', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Ahmad  Antares Adam ST M.Sc', 22, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196804201994121001', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Baso Mukhlis ST. MT', 23, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196705151997021001', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Yuli Asmi Rahman ST.MT', 24, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198107022005012001', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Yusnaini Arifin ST.MT', 25, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197906242003122002', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Alamsyah ST.MT', 26, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197404142002121001', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', 'Data anda masih diragukan harap perbaiki'),
('Nurhani Amin S.Pd MT', 27, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197908272008012018', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Maryantho Masarrang ST MT', 28, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198201222006041003', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Jumiyatun S.ST M.T', 29, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197509052000122004', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Rizana Fauzi ST MT', 30, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198603162019031010', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Muh. Aristo Indrajaya STMT', 31, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '199008102019031013', 'Teknik Elektro', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Dr. Ir. Daud Patabang MT', 32, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195912291988031001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/c', 'Pembina Utama Muda', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Alimuddin Sam M.Si', 33, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195812311988111001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Bakri ST M.Phil', 34, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197412121998021001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Mustofa ST Grad. Dipl.EngM.Eng', 35, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197009061994121001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ramang Magga ST MT', 36, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197504212002121004', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Kennedy ST MT', 37, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197302102000031001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Muh.  Iqbal ST MT', 38, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197105141999031001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Mustafa STMT', 39, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197607172005011003', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Awal Syahrani Sirajuddin ST', 40, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197105132003121001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Ir. Kristian   Selleng MM', 41, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196706201995121001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Muhammad Zuchry ST MT', 42, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197008031997021001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Basri ST MT', 43, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197102061998021002', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Naharuddin ST MT', 44, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197105151997021002', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Sri  Candrabakty ST. M.Eng', 45, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197012061997021001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Anjar Asmara ST M.Sc', 46, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196512311997021001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Muhammad Sadat Hamzah STMT', 47, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198008142005011001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Muhammad Hasan Basri ST MT', 48, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197709062005011002', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Khairil Anwar ST MT', 49, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198005152003121001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Iskandar ST MT', 50, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197201042006041001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Muchsin ST MT', 51, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197805122008121000', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Andi Idhan ST Grad. Dipl.', 52, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196509041995121001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Danny Syamsu Wawolumaja ST.', 53, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196512211998021001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Tenaga Pengajar', '', ''),
('Dr. Abdul MuisST. MT', 54, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197411192003121000', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Reyhan Kiay Demak STM Eng', 55, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198306232006041002', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Rustan Hatib ST. MT.', 56, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197807202007101001', 'Teknik Mesin', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Ir. Jusnan Kelo MT', 57, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195706301987011001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/c', 'Pembina Utama Muda', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Prof. Dr. Amar ST MT', 58, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196807141994031006', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/c', 'Pembina Utama Muda', '0000-00-00', '', 'Guru Besar', '', ''),
('Ir. Muhammad Ramlan Salam MT', 59, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195604121985031004', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr.Ir. Zaenal  MT', 60, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195911011987011001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Muhammad Najib MT', 61, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196215041988031002', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Pudji Astutiek Fachruddin M.Si', 62, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195710121988032001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Ir. Ahda Mulyati MT', 63, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196007101989032001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Muhammad Bakri ST MT', 64, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197408182003121002', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Ir. Andi Muhammad Yamin Astha ', 65, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195812151987101001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Ir. Sarifuddin MT', 66, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196512311992031033', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Zubair  Butudoka ST MT', 67, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196705041997021001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Andi Herniwati ST MT', 68, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196712101999032001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Ir. Abdul Gani Akhmad M.Si', 69, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196703091998021002', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Mashuri ST. M.Sc', 70, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197105142002121001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Eng. Rifai ST M.Si', 71, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197403252002121001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Zulfitriah Masiming ST MT', 72, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196809141997022002', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Rusli ST MT', 73, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196408022000031001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Burhanuddin ST. M.Sc', 74, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197001132005011001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Iwan Setiawan Basri ST MT', 75, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197210031999031003', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Altim Setiawan ST MT', 76, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197105301999031002', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Andi Jiba Rifai Bassaleng ST MT', 77, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196703101998022001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Fuad Zubaidi STM.Sc', 78, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197512252005011001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Lutfi ST M.si', 79, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196704071997021001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Azis Budianta ST MT', 80, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197004032000031001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Gator Timbang ST MT', 81, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196809041998021001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/C', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Luthfiah ST M.Sc', 82, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197210091998022003', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', '', '', ''),
('Dr. Eng. Puteri Fitriaty ST. MT.', 83, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198011032006042003', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Mariani STMT', 84, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196809021997022001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Saiful Alam ST MT', 85, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196401131997021001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Rahmat Saleh STMT', 86, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197312272006041001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Andi Chairul Achsan SP M Si', 87, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '19820823201212121001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Dwinsani Pratiwi Astha S.T.M.T.', 88, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198911082015042002', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', '', '', ''),
('Ardiansyah Winarta ST M.Si', 89, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198312142015041002', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', '', '', ''),
('Rezki Awalia ST MT', 90, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '199101022019032017', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Khairinrahmat ST MT', 91, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198703212019031012', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Ir. Iskandar M.Si', 92, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196107291997021001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Lektor', '', ''),
('Nur Rahmanina Burhan ST MT', 93, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197106252000032001', 'Teknik Arsitektur', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Prof. Dr. Ir. Muhammad Galib Ishak M.S', 94, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195609031985031006', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/d', 'Pembina Utama Madya', '0000-00-00', '', 'Guru Besar', '', ''),
('Ir. Donny Marga Mangitung M.Sc Ph.D', 95, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195811241986011003', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/c', 'Pembina Utama Muda', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Andi Hasanuddin Azikin M.Si', 96, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195609111986011001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Armin Basong M.Si', 97, 'Laki-Laki', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195604261986031001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Drs. Saparuddin M. Kes', 98, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195901161986031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Burhan Tatong M.Si', 99, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195603051986011001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Shyama Maricar M.Si', 100, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195805051987012001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Ir.  Taslim Bahar MT. ', 101, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196208191992031001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Prof. Dr. Ir. I  Wayan  Sutapa M.Eng', 102, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196606051998021001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Guru Besar', '', ''),
('Dr. Ir. Jurair Patunrangi MT', 103, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196209091991021002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. I Gede Tunas ST MT', 104, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197504022000031001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Sukardan Tawil STMTa', 105, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195905171984031012', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', '', '', ''),
('Drs. Marhaban M.Hum', 106, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195612311987021003', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Triyanti Anasiru MT', 107, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195511221986032001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Ir. Syamsul Arifin M.Sc', 108, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196411111991021001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Gidion Turu Allo ST M.Sc Ph D.', 109, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197002111998021001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Rudi ST M.Sc', 110, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197110211997021001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Zeffitni S.Pd MT', 111, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197109191998032001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Harun  Mallisa ST MT', 112, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196906261998021001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Zet  Malisa ST MT', 113, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196611061999031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Gusti Made Oka ST MT', 114, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196512311997021002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Dr. Yassir Arafat ST MT', 115, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197012312000031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Andi Asnudin ST MT', 116, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '19721018200031001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Atur. P.N. Siregar ST M.Sc Ph.D', 117, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197011141999031001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/a', 'Pembina', '0000-00-00', '', 'Lektor Kepala', '', ''),
('Ir. Nicodemus Rupang M.Si', 118, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195611231986031001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Ir. Muhammad Kasan MT', 119, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195911101986031004', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Sukiman ST M.Sc', 120, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197310241999031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Mastura Labombang ST MT', 121, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196812021998022001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Irdhiani ST MT', 122, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197609082000032001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Fahirah ST MT', 123, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197304092000122001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Eng. Hendra Setiawan ST MT', 124, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197504181999031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Arifin  B ST MT', 125, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197011021999031004', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Kusnindar Abd. Chauf ST MT', 126, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197401202000031003', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Martini ST MT', 127, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197203311999032001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Rahmatang Rahman ST. MT', 128, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197006272005012001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Muslimin U. Botjing ST MT', 129, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197003122000121002', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IV/b', 'Pembina TK I', '0000-00-00', '', '', '', ''),
('Ir. Hasan  Basri MS', 130, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '195707021986031001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Ir. Irianto Uno M.Sc', 131, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196112171987031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Ir. Arody  Tanga MT', 132, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196608111994031003', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', '');
INSERT INTO `dosen` (`nama`, `id_dosen`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `kewarganegaraan`, `foto_profil`, `email`, `alamat`, `rt`, `rw`, `kelurahan`, `kecamatan`, `kota`, `provinsi`, `kode_pos`, `no_telpon`, `no_hp`, `nip`, `jurusan`, `no_sk_cpns`, `tgl_sk_cpns`, `no_sk_pns`, `tgl_pns`, `sumber_gaji`, `nama_ibu`, `status_perkawinan`, `nama_pasangan`, `nip_pasangan`, `pekerjaan_pasangan`, `tgl_pns_pasangan`, `npwp`, `nama_pajak`, `pt_s1`, `bidang_s1`, `masuk_s1`, `lulus_s1`, `ijazah_s1`, `pt_s2`, `bidang_s2`, `masuk_s2`, `lulus_s2`, `ijazah_s2`, `pt_s3`, `bidang_s3`, `masuk_s3`, `lulus_s3`, `ijazah_s3`, `golongan`, `pangkat`, `tmt_pangkat`, `sk_pangkat`, `fungsional`, `sk_fungsional`, `notif`) VALUES
('Abdul  Mukaddas S.Si MT', 133, 'Laki-Laki', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196412311995031005', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Adnan Fadjar ST M.Eng.Sc', 134, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196705291995121001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Nur Hidayat ST MT', 135, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196806181999031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Ir. Nirmalawati MT. ', 136, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196010081995122001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Andi Arham Adam ST M.Sc. P hD ', 137, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197403231999031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Mashuri ST MT', 138, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197010051999031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Anas Tahir ST MT', 139, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197012181998031004', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Eng. Andi  Rusdin ST MT M.Sc', 140, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197103031998031003', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor Kepala', '', ''),
('I  Ketut Sulendra ST MT', 141, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197310241999031003', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/d', 'Penata TK I', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Nina Bariro Rustiati ST MT', 142, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197312212000032001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Vera Wim Andiase ST MT', 143, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197605072006042001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Fatmawati Amir ST. M.Sc', 144, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197704152002122001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Arief Setiawan ST MT', 145, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197506212003121003', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Sance Lipu ST M.Eng', 146, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196909261997021001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Dr. Muhammmad Aswadi ST MT', 147, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196807271997021001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Dr. Alifi Yunar ST MT', 148, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196612161999031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Ir.Ismadarni M Si ', 149, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196604251997022001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Siti Rahmi Oktavia ST MT', 150, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197610112003122002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Ratnasari Ramlan ST MT', 151, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198011042006042002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Anwar Dollu ST MT', 152, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197210142002121001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Dr. Setiyawan ST MT', 153, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197612172000031001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Tutang Muhtar Kamaludin ST M.Si', 154, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197102142005011002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Hilda Listiawaty ST MT', 155, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198111022014042001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', '', '', ''),
('Dr. Sriyati Ramadhani ST MT', 156, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197509252005012002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Tuty Amaliah S.T M. Eng', 157, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198308012015042004', 'Tek. Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Novita Pradani ST MT', 158, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198111282006042002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/c', 'Penata', '0000-00-00', '', 'Lektor', '', ''),
('Dr. Astri Rahayu ST MT', 159, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196707051997022002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Riska Puspita ST M.Eng', 160, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '199104042019032014', 'Tek. Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Asrafil S.Si M.Eng', 161, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '198704182019031014', 'Tek. Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Ruslan Mohammad Yunus ST MT', 162, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197102281997021001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Ida Sri Oktaviana ST MT', 163, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197410281999032001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Agus Dwidjaka ST MT', 164, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '196608311999031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Harly Hamad ST MT', 165, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197001052000031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Agus Rivani ST MT', 166, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197508092000121001', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Lektor', '', ''),
('Eko Rakhmat Labaso ST M.Si', 167, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197710092005011005', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Alamsyah Prawirabhakti ST M Eng', 168, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '197908202006041003', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/a', 'Penata Muda', '0000-00-00', '', 'Asisten Ahli', '', ''),
('Ahmad Imam Abdullah S.Si MT', 169, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '199009092018031002', 'Teknik Sipil', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'III/b', 'Penata Muda TK I', '0000-00-00', '', 'Asisten Ahli', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dosen_veri`
--

CREATE TABLE `dosen_veri` (
  `nama` varchar(20) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen_veri`
--

INSERT INTO `dosen_veri` (`nama`, `id_dosen`, `jenis_kelamin`) VALUES
('john doe', 2, 'laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `eventsemester`
--

CREATE TABLE `eventsemester` (
  `id` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `statussemester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventsemester`
--

INSERT INTO `eventsemester` (`id`, `semester`, `statussemester`) VALUES
(1, '20191', 'tidak aktif'),
(3, '20192', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `membimbing`
--

CREATE TABLE `membimbing` (
  `id_membimbing` int(11) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `sk_pembimbing` varchar(255) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membimbing`
--

INSERT INTO `membimbing` (`id_membimbing`, `nama_mhs`, `sk_pembimbing`, `semester`, `verified`, `id_dosen`) VALUES
(1, 'Ihzanul Haekal Jr.', 'Yusuf_Anshori.pdf', '20191', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `total_sks` int(11) NOT NULL,
  `bukti_mengajar` varchar(100) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`id_mengajar`, `total_sks`, `bukti_mengajar`, `semester`, `verified`, `id_dosen`) VALUES
(1, 30, 'Dwi_Shinta_Angreni.pdf', '20192', 1, 5),
(3, 30, 'Yusuf_Anshori7.pdf', '20191', 0, 2),
(4, 20, '', '20191', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `menguji`
--

CREATE TABLE `menguji` (
  `id_menguji` int(11) NOT NULL,
  `menguji` varchar(20) NOT NULL,
  `bukti_menguji` varchar(100) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menguji`
--

INSERT INTO `menguji` (`id_menguji`, `menguji`, `bukti_menguji`, `semester`, `verified`, `id_dosen`) VALUES
(1, 'Seminar Hasil', 'Yusuf_Anshori.pdf', '20191', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `id_notfi` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_by` varchar(10) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

CREATE TABLE `penelitian` (
  `id_penelitian` int(11) NOT NULL,
  `judul_penelitian` text NOT NULL,
  `dokumen_penelitian` varchar(255) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id_penelitian`, `judul_penelitian`, `dokumen_penelitian`, `semester`, `id_dosen`) VALUES
(2, 'Implementasi Mikrokontroler sebagai Detektor Getaran Terbaru', '', '20191', 2),
(3, 'Prediksi Kelulusan Siswa Berdasarkan Algoritma C4.5', '', '20191', 3),
(4, 'Rancang Bangun Sistem\r\nInformasi Pendaftaran Siswa\r\nBaru, Studi Kasus Pada SMA\r\nLABSCHOLL UNTAD', '', '20191', 3),
(5, 'Sistem Informasi Voluntary\r\nCounseling And Testing pada Pasien\r\nPenyakit Menular HIV/AIDS Di Kota\r\nP', '', '20191', 4),
(6, 'Aplikasi E-Kohort\r\nRegister Kesehatan Ibu Dan Anak\r\n(KIA) Pada Puskesmas\r\nNosarara Kota Palu', '', '20191', 4),
(7, 'Optimasi Rute Terbaik\r\nMenggunakan Algoritma\r\nGenetika Pada Pencarian Jalur\r\nEvakuasi Tsunami\r\nKota ', '', '20191', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pengabdian`
--

CREATE TABLE `pengabdian` (
  `id_pengabdian` int(11) NOT NULL,
  `judul_pengabdian` varchar(255) NOT NULL,
  `dokumen_pengabdian` varchar(255) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengabdian`
--

INSERT INTO `pengabdian` (`id_pengabdian`, `judul_pengabdian`, `dokumen_pengabdian`, `semester`, `id_dosen`) VALUES
(2, 'Pelatihan Desain Grafis bagi Pemuda/Pemudi di Kelurahan Tipo', '', '20191', 2),
(3, 'Pelatihan Cara membuat Web\r\nBlog Menggunakan Blogger\r\nbagi siswa-siswi SMKN 2 Palu,\r\nSulteng', '', '20191', 3),
(4, 'Pelatihan Aplikasi Penomoran Agenda Surat di\r\nKemenkumham Sulteng', '', '20191', 4),
(5, 'Pelatihan Cara Membuat Blog\r\nMenggunakan Wordpress bagi Siswa- siswi SMK 2 Palu Sulteng', '', '20191', 5),
(6, 'Pelatihan Pengenalan Web Bagi Siswa-siswi\r\nSMKN 2 Palu, Sulawesi Tengah.', '', '20191', 6),
(7, 'Pelatihan Optimalisasi Penggunaan Program\r\nMicrosoft Word Bagi Aparat Desa Labuan\r\nLelea', '', '20191', 6),
(8, 'RelawanPalu Coin A Chance', '', '20181', 8),
(9, 'Relawan Lokal Dalam Kegiatan\r\nDistribusi Bantuan Posko ITS Tanggap\r\nBencana', '', '20181', 11),
(10, 'Pelatihan bagi Siswa-Siswi SMK N 6 Palu:\r\nCara Membuat Web Blog Menggunakan Blogger', '', '20191', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(4) NOT NULL,
  `posisi` varchar(6) NOT NULL,
  `NIP` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `posisi`, `NIP`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin', 'admin'),
(2, 'user', '198010272006041001', 'dosen', 'untad2020'),
(3, 'user', '198112232015042002', 'dosen', 'untad2020'),
(4, 'user', '198908092019032019', 'dosen', 'untad2020'),
(5, 'user', '0020079102', 'dosen', 'untad2020'),
(6, 'user', '197611122006041001', 'dosen', 'untad2020'),
(7, 'user', '197902102006041002 ', 'dosen', 'untad2020'),
(8, 'user', '197901122005012002', 'dosen', 'untad2020'),
(9, 'user', '197610202006042033', 'dosen', 'untad2020'),
(10, 'user', '198904232015041001', 'dosen', 'untad2020'),
(11, 'user', '8823620016', 'dosen', 'untad2020'),
(12, 'user', '198411282019032007', 'dosen', 'untad2020'),
(13, 'user', '197908142005011002', 'dosen', 'untad2020'),
(14, 'user', '198705142018031 ', 'dosen', 'untad2020'),
(15, 'user', '196205191988032001', 'dosen', 'untad2020'),
(16, 'user', '196512171994122001', 'dosen', 'untad2020'),
(17, 'user', '195604141986031006', 'dosen', 'untad2020'),
(18, 'user', '196008041988031001', 'dosen', 'untad2020'),
(19, 'user', '197008152005011002', 'dosen', 'untad2020'),
(20, 'user', '197703062002122002', 'dosen', 'untad2020'),
(21, 'user', '196707121997021001', 'dosen', 'untad2020'),
(22, 'user', '196804201994121001', 'dosen', 'untad2020'),
(23, 'user', '196705151997021001', 'dosen', 'untad2020'),
(24, 'user', '198107022005012001', 'dosen', 'untad2020'),
(25, 'user', '197906242003122002', 'dosen', 'untad2020'),
(26, 'user', '197404142002121001', 'dosen', 'untad2020'),
(27, 'user', '197908272008012018', 'dosen', 'untad2020'),
(28, 'user', '198201222006041003', 'dosen', 'untad2020'),
(29, 'user', '197509052000122004', 'dosen', 'untad2020'),
(30, 'user', '198603162019031010', 'dosen', 'untad2020'),
(31, 'user', '199008102019031013', 'dosen', 'untad2020'),
(32, 'user', '195912291988031001', 'dosen', 'untad2020'),
(33, 'user', '195812311988111001', 'dosen', 'untad2020'),
(34, 'user', '197412121998021001', 'dosen', 'untad2020'),
(35, 'user', '197009061994121001', 'dosen', 'untad2020'),
(36, 'user', '197504212002121004', 'dosen', 'untad2020'),
(37, 'user', '197302102000031001', 'dosen', 'untad2020'),
(38, 'user', '197105141999031001', 'dosen', 'untad2020'),
(39, 'user', '197607172005011003', 'dosen', 'untad2020'),
(40, 'user', '197105132003121001', 'dosen', 'untad2020'),
(41, 'user', '196706201995121001', 'dosen', 'untad2020'),
(42, 'user', '197008031997021001', 'dosen', 'untad2020'),
(43, 'user', '197102061998021002', 'dosen', 'untad2020'),
(44, 'user', '197105151997021002', 'dosen', 'untad2020'),
(45, 'user', '197012061997021001', 'dosen', 'untad2020'),
(46, 'user', '196512311997021001', 'dosen', 'untad2020'),
(47, 'user', '198008142005011001', 'dosen', 'untad2020'),
(48, 'user', '197709062005011002', 'dosen', 'untad2020'),
(49, 'user', '198005152003121001', 'dosen', 'untad2020'),
(50, 'user', '197201042006041001', 'dosen', 'untad2020'),
(51, 'user', '197805122008121000', 'dosen', 'untad2020'),
(52, 'user', '196509041995121001', 'dosen', 'untad2020'),
(53, 'user', '196512211998021001', 'dosen', 'untad2020'),
(54, 'user', '197411192003121000', 'dosen', 'untad2020'),
(55, 'user', '198306232006041002', 'dosen', 'untad2020'),
(56, 'user', '197807202007101001', 'dosen', 'untad2020'),
(57, 'user', '195706301987011001', 'dosen', 'untad2020'),
(58, 'user', '196807141994031006', 'dosen', 'untad2020'),
(59, 'user', '195604121985031004', 'dosen', 'untad2020'),
(60, 'user', '195911011987011001', 'dosen', 'untad2020'),
(61, 'user', '196215041988031002', 'dosen', 'untad2020'),
(62, 'user', '195710121988032001', 'dosen', 'untad2020'),
(63, 'user', '196007101989032001', 'dosen', 'untad2020'),
(64, 'user', '197408182003121002', 'dosen', 'untad2020'),
(65, 'user', '195812151987101001', 'dosen', 'untad2020'),
(66, 'user', '196512311992031033', 'dosen', 'untad2020'),
(67, 'user', '196705041997021001', 'dosen', 'untad2020'),
(68, 'user', '196712101999032001', 'dosen', 'untad2020'),
(69, 'user', '196703091998021002', 'dosen', 'untad2020'),
(70, 'user', '197105142002121001', 'dosen', 'untad2020'),
(71, 'user', '197403252002121001', 'dosen', 'untad2020'),
(72, 'user', '196809141997022002', 'dosen', 'untad2020'),
(73, 'dekan', '196408022000031001', 'dosen', 'untad2020'),
(74, 'user', '197001132005011001', 'dosen', 'untad2020'),
(75, 'user', '197210031999031003', 'dosen', 'untad2020'),
(76, 'user', '197105301999031002', 'dosen', 'untad2020'),
(77, 'user', '196703101998022001', 'dosen', 'untad2020'),
(78, 'user', '197512252005011001', 'dosen', 'untad2020'),
(79, 'user', '196704071997021001', 'dosen', 'untad2020'),
(80, 'user', '197004032000031001', 'dosen', 'untad2020'),
(81, 'user', '196809041998021001', 'dosen', 'untad2020'),
(82, 'user', '197210091998022003', 'dosen', 'untad2020'),
(83, 'user', '198011032006042003', 'dosen', 'untad2020'),
(84, 'user', '196809021997022001', 'dosen', 'untad2020'),
(85, 'user', '196401131997021001', 'dosen', 'untad2020'),
(86, 'user', '197312272006041001', 'dosen', 'untad2020'),
(87, 'user', '19820823201212121001', 'dosen', 'untad2020'),
(88, 'user', '198911082015042002', 'dosen', 'untad2020'),
(89, 'user', '198312142015041002', 'dosen', 'untad2020'),
(90, 'user', '199101022019032017', 'dosen', 'untad2020'),
(91, 'user', '198703212019031012', 'dosen', 'untad2020'),
(92, 'user', '196107291997021001', 'dosen', 'untad2020'),
(93, 'user', '197106252000032001', 'dosen', 'untad2020'),
(94, 'user', '195609031985031006', 'dosen', 'untad2020'),
(95, 'user', '195811241986011003', 'dosen', 'untad2020'),
(96, 'user', '195609111986011001', 'dosen', 'untad2020'),
(97, 'user', '195604261986031001', 'dosen', 'untad2020'),
(98, 'user', '195901161986031002', 'dosen', 'untad2020'),
(99, 'user', '195603051986011001', 'dosen', 'untad2020'),
(100, 'user', '195805051987012001', 'dosen', 'untad2020'),
(101, 'user', '196208191992031001', 'dosen', 'untad2020'),
(102, 'user', '196606051998021001', 'dosen', 'untad2020'),
(103, 'user', '196209091991021002', 'dosen', 'untad2020'),
(104, 'user', '197504022000031001', 'dosen', 'untad2020'),
(105, 'user', '195905171984031012', 'dosen', 'untad2020'),
(106, 'user', '195612311987021003', 'dosen', 'untad2020'),
(107, 'user', '195511221986032001', 'dosen', 'untad2020'),
(108, 'user', '196411111991021001', 'dosen', 'untad2020'),
(109, 'user', '197002111998021001', 'dosen', 'untad2020'),
(110, 'user', '197110211997021001', 'dosen', 'untad2020'),
(111, 'user', '197109191998032001', 'dosen', 'untad2020'),
(112, 'user', '196906261998021001', 'dosen', 'untad2020'),
(113, 'user', '196611061999031002', 'dosen', 'untad2020'),
(114, 'user', '196512311997021002', 'dosen', 'untad2020'),
(115, 'user', '197012312000031002', 'dosen', 'untad2020'),
(116, 'user', '19721018200031001', 'dosen', 'untad2020'),
(117, 'user', '197011141999031001', 'dosen', 'untad2020'),
(118, 'user', '195611231986031001', 'dosen', 'untad2020'),
(119, 'user', '195911101986031004', 'dosen', 'untad2020'),
(120, 'user', '197310241999031002', 'dosen', 'untad2020'),
(121, 'user', '196812021998022001', 'dosen', 'untad2020'),
(122, 'user', '197609082000032001', 'dosen', 'untad2020'),
(123, 'user', '197304092000122001', 'dosen', 'untad2020'),
(124, 'user', '197504181999031002', 'dosen', 'untad2020'),
(125, 'user', '197011021999031004', 'dosen', 'untad2020'),
(126, 'user', '197401202000031003', 'dosen', 'untad2020'),
(127, 'user', '197203311999032001', 'dosen', 'untad2020'),
(128, 'user', '197006272005012001', 'dosen', 'untad2020'),
(129, 'user', '197003122000121002', 'dosen', 'untad2020'),
(130, 'user', '195707021986031001', 'dosen', 'untad2020'),
(131, 'user', '196112171987031002', 'dosen', 'untad2020'),
(132, 'user', '196608111994031003', 'dosen', 'untad2020'),
(133, 'user', '196412311995031005', 'dosen', 'untad2020'),
(134, 'user', '196705291995121001', 'dosen', 'untad2020'),
(135, 'user', '196806181999031002', 'dosen', 'untad2020'),
(136, 'user', '196010081995122001', 'dosen', 'untad2020'),
(137, 'user', '197403231999031002', 'dosen', 'untad2020'),
(138, 'user', '197010051999031002', 'dosen', 'untad2020'),
(139, 'user', '197012181998031004', 'dosen', 'untad2020'),
(140, 'user', '197103031998031003', 'dosen', 'untad2020'),
(141, 'user', '197310241999031003', 'dosen', 'untad2020'),
(142, 'user', '197312212000032001', 'dosen', 'untad2020'),
(143, 'user', '197605072006042001', 'dosen', 'untad2020'),
(144, 'user', '197704152002122001', 'dosen', 'untad2020'),
(145, 'user', '197506212003121003', 'dosen', 'untad2020'),
(146, 'user', '196909261997021001', 'dosen', 'untad2020'),
(147, 'user', '196807271997021001', 'dosen', 'untad2020'),
(148, 'user', '196612161999031002', 'dosen', 'untad2020'),
(149, 'user', '196604251997022001', 'dosen', 'untad2020'),
(150, 'user', '197610112003122002', 'dosen', 'untad2020'),
(151, 'user', '198011042006042002', 'dosen', 'untad2020'),
(152, 'user', '197210142002121001', 'dosen', 'untad2020'),
(153, 'user', '197612172000031001', 'dosen', 'untad2020'),
(154, 'user', '197102142005011002', 'dosen', 'untad2020'),
(155, 'user', '198111022014042001', 'dosen', 'untad2020'),
(156, 'user', '197509252005012002', 'dosen', 'untad2020'),
(157, 'user', '198308012015042004', 'dosen', 'untad2020'),
(158, 'user', '198111282006042002', 'dosen', 'untad2020'),
(159, 'user', '196707051997022002', 'dosen', 'untad2020'),
(160, 'user', '199104042019032014', 'dosen', 'untad2020'),
(161, 'user', '198704182019031014', 'dosen', 'untad2020'),
(162, 'user', '197102281997021001', 'dosen', 'untad2020'),
(163, 'user', '197410281999032001', 'dosen', 'untad2020'),
(164, 'user', '196608311999031002', 'dosen', 'untad2020'),
(165, 'user', '197001052000031002', 'dosen', 'untad2020'),
(166, 'user', '197508092000121001', 'dosen', 'untad2020'),
(167, 'user', '197710092005011005', 'dosen', 'untad2020'),
(168, 'user', '197908202006041003', 'dosen', 'untad2020'),
(169, 'user', '199009092018031002', 'dosen', 'untad2020'),
(170, 'ktu', 'ktufatek', 'ktu', 'untad2020');

-- --------------------------------------------------------

--
-- Table structure for table `wali`
--

CREATE TABLE `wali` (
  `id_wali` int(11) NOT NULL,
  `total_mhs` int(11) NOT NULL,
  `bukti_wali` varchar(255) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wali`
--

INSERT INTO `wali` (`id_wali`, `total_mhs`, `bukti_wali`, `semester`, `verified`, `id_dosen`) VALUES
(2, 15, 'Yusuf_Anshori.pdf', '20191', 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `20192membimbing`
--
ALTER TABLE `20192membimbing`
  ADD PRIMARY KEY (`id_membimbing`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `20192mengajar`
--
ALTER TABLE `20192mengajar`
  ADD PRIMARY KEY (`id_mengajar`);

--
-- Indexes for table `20192menguji`
--
ALTER TABLE `20192menguji`
  ADD PRIMARY KEY (`id_menguji`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `20192penelitian`
--
ALTER TABLE `20192penelitian`
  ADD PRIMARY KEY (`id_penelitian`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `20192pengabdian`
--
ALTER TABLE `20192pengabdian`
  ADD PRIMARY KEY (`id_pengabdian`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `20192wali`
--
ALTER TABLE `20192wali`
  ADD PRIMARY KEY (`id_wali`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `dosen_veri`
--
ALTER TABLE `dosen_veri`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `eventsemester`
--
ALTER TABLE `eventsemester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membimbing`
--
ALTER TABLE `membimbing`
  ADD PRIMARY KEY (`id_membimbing`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `menguji`
--
ALTER TABLE `menguji`
  ADD PRIMARY KEY (`id_menguji`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`id_notfi`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id_penelitian`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `pengabdian`
--
ALTER TABLE `pengabdian`
  ADD PRIMARY KEY (`id_pengabdian`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wali`
--
ALTER TABLE `wali`
  ADD PRIMARY KEY (`id_wali`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `20192membimbing`
--
ALTER TABLE `20192membimbing`
  MODIFY `id_membimbing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `20192mengajar`
--
ALTER TABLE `20192mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `20192menguji`
--
ALTER TABLE `20192menguji`
  MODIFY `id_menguji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `20192penelitian`
--
ALTER TABLE `20192penelitian`
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `20192pengabdian`
--
ALTER TABLE `20192pengabdian`
  MODIFY `id_pengabdian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `20192wali`
--
ALTER TABLE `20192wali`
  MODIFY `id_wali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `eventsemester`
--
ALTER TABLE `eventsemester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membimbing`
--
ALTER TABLE `membimbing`
  MODIFY `id_membimbing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menguji`
--
ALTER TABLE `menguji`
  MODIFY `id_menguji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notif`
--
ALTER TABLE `notif`
  MODIFY `id_notfi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengabdian`
--
ALTER TABLE `pengabdian`
  MODIFY `id_pengabdian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `wali`
--
ALTER TABLE `wali`
  MODIFY `id_wali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `membimbing`
--
ALTER TABLE `membimbing`
  ADD CONSTRAINT `membimbing_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

--
-- Constraints for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `mengajar_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

--
-- Constraints for table `menguji`
--
ALTER TABLE `menguji`
  ADD CONSTRAINT `menguji_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

--
-- Constraints for table `notif`
--
ALTER TABLE `notif`
  ADD CONSTRAINT `notif_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

--
-- Constraints for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD CONSTRAINT `penelitian_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengabdian`
--
ALTER TABLE `pengabdian`
  ADD CONSTRAINT `pengabdian_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

--
-- Constraints for table `wali`
--
ALTER TABLE `wali`
  ADD CONSTRAINT `wali_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
