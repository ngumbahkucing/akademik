-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2022 at 01:00 PM
-- Server version: 5.7.38-0ubuntu0.18.04.1
-- PHP Version: 7.3.33-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `foto`) VALUES
(19, 'admin', '202cb962ac59075b964b07152d234b70', 'Maz Nanda', NULL),
(21, 'gssdemo', 'e07a5102e6cbbca34104a5ab185a5565', 'DEMO GSS', NULL),
(22, 'gss', '202cb962ac59075b964b07152d234b70', 'gss', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip` char(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nidn` char(10) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip`, `password`, `nidn`, `nama_dosen`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `foto`) VALUES
('123123', '202cb962ac59075b964b07152d234b70', '23456', 'PAk Firman', 'Pria', 'Semarang', '03/17/2021', 'Islam', 'semarang', ''),
('19740731', '5a2c9b549d594cd12e00ad35c595678b', '2020057056', 'Abdullah Mahrus', 'Pria', 'Purwodadi', '01/06/1974', 'Islam', 'Jl. Dokter Cipto No.21 C Pati', ''),
('19740777', '720b4aa610ad4a6d40d10976a5b92276', '2020057657', 'Sri Dahlia', 'Wanita', 'Purwodadi', '03/06/1981', 'Islam', 'Jl Panglima  Sudirman N0 34 Pati', ''),
('19740788', 'ca506944e9a39d2e13b4c0fc4233621b', '202005732', 'Abdul Wahab', 'Pria', 'Pati', '10/06/1967', 'Islam', 'Desa Sunggingwarno Rt/Rw 02/06 Gabus , Pati', ''),
('19740797', '1ef595e065dfbb612969193a4045fe1c', '2005085601', 'Aida Husna', 'Wanita', 'Rembang', '10/06/1979', 'Islam', 'Ds. Bakaran Kulon Rt/Rw 03/01 Juwana Pati', ''),
('19740799', 'dfaf483c57d481d9e43582adb8b3b012', '2020057099', 'Shodiq, M.Pd', 'Pria', 'Pati', '03/06/1979', 'Islam', 'Perum Winong Asri Blok A No.09 Puri Pati', ''),
('19860289', '7327c53cd767e717802cd9d5af875259', '2020057001', 'Iffah Mardiyati', 'Wanita', 'Pati', '08/06/1982', 'Islam', 'Perum Bumirejo No3 Margorejo, Pati', ''),
('56789', '099ebea48ea9666a7da2177267983138', '1234', 'PAK YANI', 'Pria', 'Semarang', '09/26/1977', 'Islam', 'Semarang', ''),
('666666', 'f379eaf3c831b04de153469d1bec345e', '69', 'Yudho', 'Pria', 'Semarang', '11/01/1978', 'Islam', 'Ungaran', '');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(3, 'PAI'),
(4, 'AHWAL SYAKHSHIYYAH');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(11) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `tanggal`, `judul`, `isi`) VALUES
(1, '12/19/2017', 'Jadwal Kegiatan Gua Maria Talanging Sih', 'hjjjasasknkjnkjsd sdcjknksdlkscd ksdjknklksdc jcksnjlksmlsd kjnjsdnjknnsd knjsndomomsdc kjnonknl;ksdc scdkm;lkmsdc csndjnknklskcsd kjsdnjknkmlcsd kncdnsklnsldkc csdnjdsnnkcsd csdlkmslksdc sckmlkscmlkmsd kklsdkmlmsldc sdlkmlsmc  csdklsdldsmlmlsdc lsdlcdslmlsc'),
(2, '12/06/2017', 'nkjnsdknksdnkndks', 'kjnkjndskklml;lsd;mcsdc sdlmdslkmklcdsi duhsdcubsdc sjcduhsinjscd sdcnnskdjnjkscd sdcnjndskjcsd kjnincs n oijoiik eoejioi mokfmokmgf kfmomvl evfmoemkefv feomomeevef ejfjkfev fevfevkefk njijhsd jbiuhidsc jnsijnsdcjndcs ');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `id_makul` int(11) NOT NULL,
  `nip` char(10) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `jam` time NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `id_ruang` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_tahun`, `id_makul`, `nip`, `hari`, `jam`, `jenis`, `id_ruang`, `semester`) VALUES
(9, 1, 9, '19740299', 'Senin', '08:00:00', 'Teori', 8, 0),
(10, 1, 10, '19740717', 'Senin', '08:00:00', 'Teori', 10, 0),
(11, 1, 11, '19740731', 'Senin', '08:00:00', 'Teori', 9, 0),
(12, 1, 12, '19740727', 'Senin', '09:00:00', 'Teori', 13, 0),
(13, 1, 13, '19740287', 'Senin', '09:00:00', 'Teori', 13, 0),
(14, 1, 14, '19740772', 'Senin', '01:00:00', 'Teori', 8, 0),
(15, 1, 16, '19740772', 'Senin', '01:00:00', 'Teori', 19, 0),
(16, 1, 17, '19740737', 'Senin', '11:00:00', 'Teori', 17, 0),
(17, 1, 18, '19740731', 'Senin', '11:00:00', 'Teori', 18, 0),
(18, 1, 19, '19740737', 'Senin', '08:00:00', 'Teori', 15, 0),
(19, 1, 9, '19740299', 'Senin', '01:00:00', 'Teori', 9, 0),
(20, 1, 10, '19740717', 'Senin', '01:00:00', 'Teori', 10, 0),
(21, 1, 11, '19740777', 'Senin', '08:00:00', 'Teori', 22, 0),
(22, 1, 13, '19740781', 'Senin', '08:00:00', 'Teori', 21, 0),
(23, 1, 12, '19740727', 'Senin', '01:00:00', 'Teori', 20, 0),
(24, 1, 14, '19740772', 'Selasa', '08:00:00', 'Teori', 8, 0),
(25, 1, 16, '19740717', 'Selasa', '08:00:00', 'Teori', 9, 0),
(26, 1, 17, '19740737', 'Selasa', '08:00:00', 'Teori', 10, 0),
(27, 1, 18, '19740776', 'Selasa', '08:00:00', 'Teori', 11, 0),
(28, 1, 19, '19740737', 'Selasa', '01:00:00', 'Teori', 12, 0),
(29, 1, 20, '19740799', 'Selasa', '09:00:00', 'Teori', 13, 0),
(30, 1, 21, '19740762', 'Selasa', '01:00:00', 'Teori', 14, 0),
(31, 1, 22, '19740287', 'Selasa', '09:00:00', 'Teori', 14, 0),
(32, 1, 23, '19740731', 'Selasa', '09:00:00', 'Teori', 17, 0),
(33, 1, 24, '19860289', 'Selasa', '01:00:00', 'Teori', 15, 0),
(34, 1, 25, '19740715', 'Selasa', '01:00:00', 'Teori', 18, 0),
(35, 1, 26, '19740788', 'Selasa', '09:00:00', 'Teori', 16, 0),
(36, 1, 27, '19740797', 'Selasa', '01:00:00', 'Teori', 19, 0),
(37, 1, 28, '19740790', 'Selasa', '02:00:00', 'Teori', 8, 0),
(38, 1, 29, '19740299', 'Selasa', '01:00:00', 'Teori', 9, 0),
(39, 1, 25, '19740790', 'Rabu', '08:00:00', 'Teori', 8, 1),
(40, 1, 26, '19740797', 'Rabu', '08:00:00', 'Teori', 9, 0),
(41, 1, 27, '19860289', 'Rabu', '08:00:00', 'Teori', 10, 0),
(42, 1, 28, '19740299', 'Rabu', '10:00:00', 'Teori', 11, 0),
(43, 1, 29, '197407002', 'Rabu', '10:00:00', 'Teori', 12, 0),
(44, 1, 20, '19740788', 'Rabu', '01:00:00', 'Teori', 13, 0),
(45, 1, 21, '19740762', 'Rabu', '01:00:00', 'Teori', 14, 0),
(46, 1, 22, '19740287', 'Rabu', '09:00:00', 'Teori', 17, 0),
(47, 1, 23, '19740787', 'Rabu', '01:00:00', 'Teori', 15, 0),
(48, 1, 24, '19740799', 'Rabu', '02:00:00', 'Teori', 16, 0),
(49, 1, 30, '19740776', 'Rabu', '10:00:00', 'Teori', 18, 0),
(50, 1, 31, '19740717', 'Rabu', '02:00:00', 'Teori', 19, 0),
(51, 1, 32, '19740731', 'Kamis', '01:00:00', 'Teori', 18, 0),
(52, 1, 33, '19740299', 'Kamis', '10:00:00', 'Teori', 19, 0),
(53, 1, 34, '19860187', 'Kamis', '01:00:00', 'Teori', 20, 0),
(54, 1, 30, '19740776', 'Kamis', '08:00:00', 'Teori', 8, 0),
(55, 1, 31, '19740717', 'Kamis', '08:00:00', 'Teori', 9, 0),
(56, 1, 32, '19740799', 'Kamis', '09:00:00', 'Teori', 10, 0),
(57, 1, 33, '19740731', 'Kamis', '01:00:00', 'Teori', 11, 0),
(58, 1, 35, '19740781', 'Kamis', '01:00:00', 'Teori', 12, 0),
(59, 1, 34, '19740787', 'Kamis', '09:00:00', 'Teori', 13, 0),
(60, 1, 36, '19740781', 'Kamis', '08:00:00', 'Teori', 14, 0),
(61, 1, 35, '19740715', 'Jumat', '09:00:00', 'Teori', 8, 0),
(62, 1, 36, '19740299', 'Jumat', '10:00:00', 'Teori', 9, 0),
(63, 1, 37, '19740727', 'Jumat', '02:00:00', 'Praktikum', 21, 0),
(64, 1, 38, '19740781', 'Jumat', '02:00:00', 'Praktikum', 20, 0),
(65, 1, 39, '19740715', 'Jumat', '02:00:00', 'Teori', 16, 0),
(66, 3, 12, '123123', 'Senin', '10:15:00', 'Teori', 8, 0),
(67, 3, 22, '666666', 'Senin', '11:45:00', 'Praktikum', 12, 1),
(68, 3, 19, '56789', 'Selasa', '01:15:00', 'Teori', 10, 0),
(69, 3, 9, '56789', 'Senin', '01:30:00', 'Teori', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `id_fakultas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `id_fakultas`) VALUES
(1, 'TARBIYAH', 3),
(3, 'SYARI\'AH', 4);

-- --------------------------------------------------------

--
-- Table structure for table `khs`
--

CREATE TABLE `khs` (
  `id_khs` int(11) NOT NULL,
  `id_krs` int(11) NOT NULL,
  `nilai` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`id_khs`, `id_krs`, `nilai`) VALUES
(9, 45, 'A'),
(13, 41, 'B'),
(22, 50, 'C'),
(30, 53, 'D'),
(64, 54, 'B'),
(78, 55, 'A'),
(84, 58, 'B'),
(87, 60, 'A'),
(88, 59, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `nim`, `id_tahun`, `semester`, `status`) VALUES
(41, 'G111130032', 2, 0, 1),
(42, 'G111130033', 2, 1, 0),
(45, 'G111130024', 2, 0, 1),
(46, 'G111130032', 2, 1, 0),
(47, 'G111130024', 2, 1, 0),
(48, 'G111130024', 1, 0, 0),
(49, 'G111130024', 1, 1, 0),
(50, '0116001', 1, 1, 1),
(51, '0116001', 1, 0, 1),
(52, '0116005', 1, 0, 0),
(53, 'G211130185', 1, 1, 1),
(54, 'G211130185', 1, 0, 1),
(55, '1234567', 1, 0, 1),
(56, '114012', 1, 0, 0),
(57, '114012', 1, 1, 0),
(58, '1114001', 1, 0, 1),
(59, '909090', 3, 0, 1),
(60, '9696', 3, 1, 1),
(61, '767676', 3, 0, 0),
(62, '114001', 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `krs_detail`
--

CREATE TABLE `krs_detail` (
  `id_detailkrs` int(11) NOT NULL,
  `id_krs` int(11) NOT NULL,
  `nim` char(10) NOT NULL,
  `id_jadwal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs_detail`
--

INSERT INTO `krs_detail` (`id_detailkrs`, `id_krs`, `nim`, `id_jadwal`) VALUES
(50, 41, 'G111130032', 2),
(51, 41, 'G111130032', 3),
(52, 42, 'G111130033', 2),
(54, 45, 'G111130024', 2),
(55, 46, 'G111130032', 2),
(56, 47, 'G111130024', 2),
(57, 48, 'G111130024', 1),
(59, 50, '0116001', 5),
(61, 50, '0116001', 6),
(63, 50, '0116001', 1),
(64, 51, '0116001', 4),
(65, 53, 'G211130185', 1),
(66, 53, 'G211130185', 5),
(67, 53, 'G211130185', 6),
(68, 53, 'G211130185', 7),
(76, 54, 'G211130185', 9),
(77, 54, 'G211130185', 10),
(78, 54, 'G211130185', 62),
(79, 54, 'G211130185', 48),
(80, 54, 'G211130185', 30),
(81, 54, 'G211130185', 41),
(82, 54, 'G211130185', 11),
(83, 54, 'G211130185', 14),
(84, 54, 'G211130185', 52),
(85, 55, '1234567', 9),
(86, 55, '1234567', 14),
(87, 55, '1234567', 24),
(88, 55, '1234567', 46),
(89, 55, '1234567', 55),
(90, 55, '1234567', 61),
(91, 55, '1234567', 64),
(92, 55, '1234567', 65),
(93, 58, '1114001', 9),
(94, 58, '1114001', 14),
(95, 58, '1114001', 16),
(96, 58, '1114001', 33),
(98, 58, '1114001', 24),
(99, 58, '1114001', 57),
(100, 59, '909090', 66),
(102, 60, '9696', 66),
(103, 60, '9696', 67),
(104, 61, '767676', 69),
(105, 62, '114001', 66),
(106, 62, '114001', 67);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` char(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `pekerjaan_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `pekerjaan_ibu` varchar(30) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `nama_kelas` varchar(15) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `id_progdi` char(5) NOT NULL,
  `nip` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `password`, `nama_mhs`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `angkatan`, `nama_kelas`, `foto`, `id_progdi`, `nip`) VALUES
('114001', '202cb962ac59075b964b07152d234b70', 'Yuliati', 'Wanita', 'Pati', '02/09/1995', 'Islam', 'Angkatanlor Rt 004/Rw 001 Kec. Gabus Kab. Patii', 'purwadi', 'Petani', 'lilik tanjung', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114002', 'ad36e35731d98c999ae39bf81780f485', 'YUNITA IRVIANA', 'Wanita', 'Pati', '08/22/1993', 'Islam', 'Perum Winong Asri Blok D no 7 Pati', 'Agus Sucipto', 'Guru', 'purnawinsih', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114003', 'f2c94c4ae0aed93dd9baee0b29772053', 'Zaenal Arifin', 'Pria', 'Pati', '01/09/1990', 'Islam', 'Tambakromo Rt 05/Rw 04 Kecamatan Tambakromo Kabupaten Pati\r\n', 'Antoni', 'Pedagang', 'Jasmi', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114004', '216a83bac61a8113a963ecdc4df41bca', 'WULAN ZUMAROTUS SHOLIKAH', 'Pria', 'Purwodadi', '02/08/1995', 'Islam', 'Desa Sunggingan  Rt/Rw Kec. Bangsi Kab. Jepara', 'nurrokham', 'Dosen', 'Siti Jumronah', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114005', '8df9cc82526b5be661f22843a1872632', 'Yanik Muzaro\'ah', 'Wanita', 'Pati', '01/02/1995', 'Islam', 'Perum Margorejo Asri Blok D No 08 Pati', 'parmin', 'Guru', 'istiadah', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114006', 'dbd4dcfb0bf316a796a5512f7aeeccf5', 'YANTI DAHLIA PUTRI', 'Wanita', 'Pati', '04/13/1995', 'Islam', 'Perum Puri Asri Blok D No004 PATI', 'sukoco', 'wiraswasta', 'nunung ambarwati', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114007', '3b20435b5cd8663fc3b2db91e7012740', 'YUSRON HARIYADI', 'Pria', 'Pati', '01/16/1994', 'Islam', 'Jambean Kidul Rt/Rw 009/003 Margorejo Pati', 'Suparno', 'mekanik', 'sulasih', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114008', '21eeb82b6c053cc0ed27a0cb781354fa', 'ZAENAL ABIDIN', 'Pria', 'Pati', '04/12/1991', 'Islam', 'Kedalingan Rt/Rw 002/001 Pati', 'Slamet', 'wiraswasta', 'marsiningsih', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114009', 'cad0871d6e9619fa1f5437cbc53910ba', 'Yusuf Asyari', 'Pria', 'Kudus', '06/02/1989', 'Islam', 'Perum Jekulo Indah Kudus', 'Pardi', 'Petani', 'sulastri ningsih', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114010', 'c101966aefbb4738fca436923f9cfbeb', 'WIWIK ARIYANA NURANIPAH', 'Wanita', 'Jepara', '08/09/1993', 'Islam', 'Perum Puri asri No09 Pati', 'Arief mulyono', 'Guru', 'wiwik ambarwati', 'guru', 2014, 'PAI1', '', '1', '19740287'),
('114011', '67ac61a6b8a7d5bb5b1e03402f9def89', 'ZAHIROTUL FARIDA', 'Wanita', 'Pati', '02/01/1995', 'Islam', 'Ds.Sinomwidodo Rt/Rw 009/001 Kec.Tambakromo Kab.Pati', 'suwardi', 'Petani', 'kustini', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114012', 'f3ff654d876891810095b7738b26591f', 'Wulan Suci Mulyaningrum', 'Wanita', 'Pati', '02/04/1995', 'Islam', 'Perum Rendole Indah No09 Pati', 'Ali mahmudi', 'Guru', 'Siti Asminah', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114013', '48761beb36ba966db5706ad2d67263aa', 'YENI RAHMAWATI', 'Pria', 'Pati', '02/10/1995', 'Islam', 'Mojomulyo Rt 02/Rw 01 Kec. Tambakromo Kab. Pati', 'Supeno', 'Pedagang', 'Munarsih', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114014', '063f792763255d35fe1132b4b96978be', 'ZAKIYATUN NI\'MAH', 'Wanita', 'Pati', '02/10/1993', 'Islam', 'Bawen Rt/Rw 09/02 no 43 dawe Kudus', 'Supri', 'wiraswasta', 'Puji ', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114015', '1514622e4ab01511f3c1947e84bb584a', 'Ali Purwanti Ningsih', 'Wanita', 'Rembang', '03/15/1992', 'Islam', 'Perum Winong Kota Blok D  No 009 Pati', 'Kartono', 'Guru', 'suci', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114016', 'cc081933560b92623f7048db318878e8', 'Zainatul Hidayah', 'Wanita', 'Semarang', '01/05/1990', 'Islam', 'Perum Joyokusumo No.032 Pati', 'Agus Hartono', 'Guru', 'lilik ', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114017', 'afbd5096690c29c1c7022250ca2a052b', 'ZULFA AULIYATUN NAFISAH', 'Wanita', 'Kudus', '02/08/1995', 'Islam', 'Ds.Ngerang Rt/Rw 008/004 Kec Tambakromo Kab.Pati', 'Antoni Fatah', 'Guru', 'Hartatik', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114018', 'fc3c08f91e819e89053549525d17a494', 'Yuliati Putri', 'Wanita', 'Pati', '', 'Islam', 'Gunungpanti RT 002/RW 001 Kec Winong Kab Pati', 'Parso', 'Guru', 'sulastri ', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114019', '414e575fa599a7464adea05ececd9510', 'YULFIANA FIDAYATI AMALIAH', 'Wanita', 'Pati', '01/15/1995', 'Islam', 'Brati RT 003/RW 001 Kec Dukuhseti Kab Pati', 'Parwi', 'wiraswasta', 'sulasih', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114020', '0f346bc17aaca2a1686bf8f7231c881c', 'Hidhayatul Ika Juliyanti', 'Wanita', 'Kudus', '08/09/1994', 'Islam', 'Karangwono RT 002/RW 004 Kec Tayu Kab. Pati\r\n', 'Sunardi', 'Pegawai', 'Sundari', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114021', 'b02c148203e50dada0a8ef560f44e6f7', 'Dimas Iskandar Nur Romandhoni', 'Pria', 'Blitar', '06/14/1995', 'Islam', 'Perum Griya Asri Blok D No 40B Blitar', 'Kuswanto', 'Guru', 'Yayu Sri Purwati', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114022', 'a80a102f5fd0c38c133fb236d40facfe', 'YOYOK HERUMUNAJAT', 'Pria', 'Purwodadi', '03/29/1992', 'Islam', 'Brati Rt 04/Rw 02 Kec Tambakromo Kab Pati', 'Mardi', 'Petani', 'Sulasmi', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114023', 'bf627df0f7ae63abe37c3d80bda6aebf', 'YULIA HENING WAHYUNI PUTRI', 'Pria', 'Pati', '10/25/1994', 'Islam', 'Perum Winong Asri Blok A No 08 Pati', 'Sutrisno', 'Guru', 'Suharti', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114024', '9460975a42eb79353e7ca2391edb40ad', 'Adi Syahputra', 'Pria', 'Kudus', '02/22/1995', 'Islam', 'Perum Bae Asri Blok D No23 Kudus', 'Ahmad Sholeh', 'PNS', 'Sri Lestari', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114025', 'c12cdd698b4f689d32234d7e3c115edf', 'Antoni Fajar Syahputra', 'Pria', 'Pati', '07/02/1994', 'Islam', 'Marotoko Rt 02/Rw 02 Kec Wateshaji Kab Pati', 'Suparnianto', 'Pedagang', 'Murni', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114026', '26aba7f4780d4fbe4132e395c060f09c', 'Suparyono', 'Pria', 'Pati', '11/23/1994', 'Islam', 'Angkatankidul Rt 04/Rw 01 Kec Margorejo Kab Pati', 'Iswanto', 'Petani', 'Suparti', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114027', 'a04b2bdc1d9d9c72240d6ab2118ef8f1', 'Satroda Muryanto', 'Pria', 'Blora', '11/22/1994', 'Islam', '', 'Supar', 'Guru', 'Rukamah', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114028', '4409f852481f0ab10cc31461957eb02f', 'Sopa Angger Saputra', 'Pria', 'Pati', '09/20/1994', 'Islam', 'Ds. Jamean Kidul Rt/Rw 003/002 Margorejo Pati', 'Parno', 'Buruh', 'Purwati', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114029', 'd27cbfe116bb6648048052ae11379cfa', 'Saputra Ali Ni\'am', 'Pria', 'Pati', '05/30/1994', 'Islam', 'Karangawen Rt 03/RWw01 Kec Margorejo Kab Pati', 'Hikmat', 'Buruh', 'Suwari', 'Buruh', 2014, 'PAI1', '', '1', '19740287'),
('114030', '0b590514b9cd9909b06a433e25bc1b38', 'WENING KINANTHI PRAMUDIASRI', 'Wanita', 'Pati', '03/29/1995', 'Islam', 'Ds.Margorejo Kec MArgorejo Kab Pati', 'KAsnawai', 'Buruh', 'Parti', 'Buruh', 2014, 'PAI1', '', '1', '19740287'),
('114031', '0dbd76e6d74d40e8e475e6bfbf2adda7', 'Yayuk Astuti', 'Wanita', 'Pati', '02/01/1992', 'Islam', 'Desa Jimbaran Rt/Rw 009/007 Margorejo Pati', 'Anton', 'Buruh', 'Minah', 'Buruh', 2014, 'PAI1', '', '1', '19740287'),
('114032', '5689a800ad2e5838e9c8016425106114', 'Jalamudin Ahmad', 'Pria', 'Pati', '06/29/1995', 'Islam', 'Desa Langenharjo  Rt/Rw 001/002 Margorejo Pati', 'Parto', 'Pedagang', 'Lasih', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114033', '2638ca7cbd31fccb7bfee5715019694c', 'Erna Wati Nur Hidayah', 'Wanita', 'Kudus', '12/11/1995', 'Islam', 'Desa Sokokulon  Rt/Rw 003/002 MArgorejo Pati', 'Parjan', 'Buruh', 'Sulastri', 'Buruh', 2014, 'PAI1', '', '1', '19740287'),
('114034', 'bb741c5c19be4a55e8f4ed0b264835d3', 'Rustomo', 'Pria', 'Pati', '11/15/1992', 'Islam', 'Desa Wangunrejo Rt/Rw 003/002', 'sukoco', 'wiraswasta', 'Narti', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114035', '0ec1d898c0231d74800ab835a0043364', 'Eko Henu Purwanto', 'Pria', 'Pati', '10/19/1993', 'Islam', 'Desa Margorejo Rt/Rw 02/05 Margorejo Pati', 'Raslan', 'Pedagang', 'Sami', 'petani', 2014, 'PAI1', '', '1', '19740287'),
('114036', 'daf3e1d24e6f57046f833d61b548f3b6', 'Muhammad Ali Basuki', 'Pria', 'Purwodadi', '11/06/1994', 'Islam', 'Desa Sukoagung  Rt/Rw 02/04 Juwana Pati', 'Suindro', 'Pedagang', 'purnawingsih', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114037', '7ee8e2fdc6652f2351e0bf3cd9a1a4be', 'Putri Juanitasari', 'Wanita', 'Pati', '02/10/1994', 'Islam', 'Perum Margorejo Permai No 8 Pati', 'Hadi Winarno', 'PNS', 'Endang Kumiati', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114038', '3353670be84d759d0c1681a72dc6c679', 'Adhitya Ramadhan', 'Pria', 'Purwodadi', '03/30/1995', 'Islam', 'Perum Muktiharjo Indan Blok D No 32 A Rembang', 'Arief Sunandar', 'PNS', 'Evrikasari', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114039', '59afaddcacd79edbb0609f0432244bfd', 'Muhammad Yogi Novianto', 'Pria', 'Pati', '01/04/1994', 'Islam', 'Ds.Teranggung Rt/Rw 007/002 Pucakwangi Pati', 'Antoni', 'Pedagang', 'Sundari', 'Ibu rumah tangga', 2014, 'PAI1', '', '1', '19740287'),
('114040', 'b577609e80d6304e8a9651d72d807d6e', 'YUANITA DESI PUSPITA', 'Wanita', 'Pati', '02/04/1995', 'Islam', '', 'Sucipto', 'Guru', 'Kesi', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114041', 'c9f75c38e93b9988df760a39de7d7832', 'Desi Santikasari', 'Wanita', 'Pati', '01/24/2018', 'Islam', 'Jl. Margasari V No 9 Gajahmati Pati', 'Suparjan', 'wiraswasta', 'Kuswarni', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114042', '4824feaed4f935003a66153c4ec4d8f4', 'Sulsitiyani ', 'Wanita', 'Pati', '01/06/1994', 'Islam', 'Desa Semampir Rt/Rw 007/002 Kecamatan Pati Kabupaten Pati', 'Suharno', 'Guru', 'Asih', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114043', 'a9156a05699d393c7ac4e6d603013d62', 'Zahraotus Sa\'adah', 'Wanita', 'Kudus', '10/11/1996', 'Islam', 'Jl Kolonel Sunandar No 80 Kudus', 'Triono', 'PNS', 'Endah Kusumawati', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114044', '80edc839105c1689cdc84a8258d2edd3', 'Naila Rahmawati', 'Wanita', 'Pati', '05/03/1996', 'Islam', 'Desa Kutoharjo Rt/Rw 008/002 Kec Pati Kab Pati', 'Parsu', 'Petani', 'Pasmi', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114045', '870d620af7e0483aa9a46935dc1217a5', 'Janatul Firdaus Nawang Wulan', 'Wanita', 'Pati', '03/29/1995', 'Islam', 'Desa Tlogoharum Rt/Rw 009/002 Kec Wedarijaksa Kab. Pati', 'Sofwan Ali', 'Guru', 'Siti ruminah', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114046', '73747165760fc06c584bdb2b3b2ab028', 'Ahmad Malik Azis', 'Pria', 'Pati', '08/08/1996', 'Islam', 'Desa Bringinwareng Rt/Rw 002/004', 'Nuryanto', 'Guru', 'Indah Suciati', 'Guru', 2014, 'PAI1', '', '1', '19740287'),
('114047', '869e8a5c5902aefb1b6239dc9b24ec62', 'Endar Prasetyo', 'Pria', 'Pati', '06/22/1992', 'Islam', 'Desa Tawangrejo  Kec Winong Kab Pati', 'Parjan', 'Buruh', 'Jarmi', 'pedagang', 2014, 'PAI1', '', '1', '19740287'),
('114048', '0700b6594fed90cae96b5c991f57d3b6', 'Nehayatul Maula Alfarikhah', 'Wanita', 'Kudus', '07/26/1993', 'Islam', 'Perum Dawe Sari Blok D No 09 Dawe Kudus', 'seno mulazim', 'Guru', 'Siti sulasih', 'Ibu rumah tangga', 2014, 'PAI2', '', '1', '19740715'),
('114049', 'dc3bbb517506955e0b7dd2dc8d969fb6', 'Alfarizi Khoirun Nisa', 'Wanita', 'Blora', '10/10/1993', 'Islam', 'Desa Sumbermulyo Todanan Blora', 'Parminto', 'wiraswasta', 'Parsini', 'pedagang', 2014, 'PAI2', '', '1', '19740715'),
('114050', '4aabb60def1bcafceda06ee61370a8e6', 'Putri Deswitasari', 'Wanita', 'Semarang', '02/09/1993', 'Islam', 'Jl Soekarno Hatta gang Tambakboyo Raya No.3  Tlogosari Semarang', 'Sumardi', 'Guru', 'Edang Sulastri', 'Ibu rumah tangga', 2014, 'PAI2', '', '1', '19740715'),
('114078', '3481c7309ff8df02f4fa0b26750e587e', 'Zaenal arifin ', 'Pria', 'Pati', '01/03/1992', 'Islam', 'Gunungpanti Rt 03/Rw 01 Kecamatan Winong Kabupaten Pati\r\n', 'Mardi', 'Petani', 'Jani', 'petani', 2014, 'PAI2', '', '1', '19740715'),
('114106', '39253f1aa7bfa8f5dc23572740b1feca', 'ZAHROTUL UMMAH', 'Wanita', 'Purwodadi', '04/12/1995', 'Islam', 'Desa Bageng Rt/Rw 003/001 Kec.Gembong Kab. Pati\\', 'Rebin', 'Guru', 'Sulastri', 'Guru', 2014, 'PAI2', '', '1', '19740715'),
('114128', 'a91d4ce6098d480a55357ebf85931bf4', 'Yeni Purnamasari', 'Wanita', 'Pati', '12/31/1899', 'Islam', 'Panggungroyom Rt/Rw 002/008 Kec.Wedarijaksa Kab.Pati', 'Mo\'in', 'Petani', 'sulasih', 'petani', 2014, 'PAI2', '', '1', '19740715'),
('123456', 'e10adc3949ba59abbe56e057f20f883e', 'DEMO', 'Pria', 'Semarang', '03/17/2021', 'Islam', 'KETANGI', 'agus', 'tukang cetak duit', 'ayu', 'ibu rumah tangga', 2020, 'A', '', '1', '123123'),
('767676', '60c2ce8f2c04510630ddace8530a5c1c', 'IQBAL', 'Pria', 'Semarang', '07/12/1995', 'Islam', 'Semarang barat', 'Susilo', 'Guru', 'Ayu R', 'Wiraswasta', 2019, '', '', '2', '56789'),
('909090', 'df780a97b7d6a8f779f14728bccd3c4c', 'slamet riyadi', 'Pria', 'Semarang', '03/08/2021', 'Islam', 'semarang', 'agus', 'tukang cetak duit', 'ayu', 'ibu rumah tangga', 2020, '', '', '1', '123123'),
('9696', '7610db9e380ba9775b3c215346184a87', 'Bejo', 'Pria', 'Semarang', '03/03/1999', 'Islam', 'Demak', 'Suroto', 'Wiraswasta', 'Suyani', 'Guru', 2018, '', '', '1', '666666');

-- --------------------------------------------------------

--
-- Table structure for table `makul`
--

CREATE TABLE `makul` (
  `id_makul` int(11) NOT NULL,
  `nama_makul` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makul`
--

INSERT INTO `makul` (`id_makul`, `nama_makul`, `sks`) VALUES
(9, 'Pancasila', 2),
(10, 'Bahasa Inggris  I', 3),
(11, 'Bahasa Arab   I', 3),
(12, 'Bahasa Indonesia', 2),
(13, 'Akhlak Tasawuf', 2),
(14, 'IAD ISD IBD', 3),
(16, 'Psikologi Umum', 2),
(17, 'Sejarah & Peradaban Islam', 3),
(18, 'Metodologi Studi Islam', 2),
(19, 'Fiqih', 2),
(20, 'Tafsir', 2),
(21, 'Psikologi Pendidikan', 2),
(22, 'Ilmu Pendidikan Islam', 3),
(23, 'Filsafat Pendidikan', 3),
(24, 'Sejarah Pendidikan Umum', 2),
(25, 'Ulumul Hadis', 2),
(26, 'Supervisi Pendidikan', 3),
(27, 'Statistik Inferensial', 3),
(28, 'Ushul Fiqh', 2),
(29, 'Perencanaan Sistem  PAI', 3),
(30, 'Metode Pendidikan Agama Islam', 3),
(31, 'Psikologi Agama', 2),
(32, 'Pengembangan Kurikulum PAI', 3),
(33, 'Pengembangan Kurikulum', 3),
(34, 'Metode Penelitian Pendidikan', 3),
(35, 'Pengembangan Materi Metode Penilaian', 2),
(36, 'Manajemen Pendidikan', 2),
(37, 'PPL (Praktik Pengalaman Lapangan)', 4),
(38, 'KKN', 4),
(39, 'Skripsi', 6);

-- --------------------------------------------------------

--
-- Table structure for table `progdi`
--

CREATE TABLE `progdi` (
  `id_progdi` int(11) NOT NULL,
  `nama_progdi` varchar(50) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progdi`
--

INSERT INTO `progdi` (`id_progdi`, `nama_progdi`, `id_jurusan`) VALUES
(1, 'PENDIDIKAN AGAMA ISLAM', 1),
(2, 'AHWAL SYAKHSHIYYAH', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL,
  `kapasitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nama_ruang`, `kapasitas`) VALUES
(8, 'Gd.Lama  no 1', 50),
(9, 'Gd.Lama  no 2', 50),
(10, 'Gd.Lama  no 3', 50),
(11, 'Gd.Lama  no 4', 50),
(12, 'Gd.Baru Lt1 no1', 55),
(13, 'Gd.Baru Lt1 no2', 55),
(14, 'Gd.Baru Lt2 no1', 55),
(15, 'Gd.Baru Lt2 no3', 55),
(16, 'Gd.Baru Lt2 no4', 55),
(17, 'Gd.Baru Lt2 no2', 50),
(18, 'Gd.Baru Lt3 no1', 55),
(19, 'Gd.Baru Lt3 no2', 55),
(20, 'Gd.Baru Lt3 no4', 55),
(21, 'Gd.Baru Lt4 no3', 55),
(22, 'Gd.Baru Lt4 no2', 55);

-- --------------------------------------------------------

--
-- Table structure for table `thn_ajaran`
--

CREATE TABLE `thn_ajaran` (
  `id_tahun` int(11) NOT NULL,
  `nama_tahun` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thn_ajaran`
--

INSERT INTO `thn_ajaran` (`id_tahun`, `nama_tahun`, `status`) VALUES
(1, '2016-2017', '0'),
(2, '2017-2018', '0'),
(3, '2020-2021', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`id_khs`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`);

--
-- Indexes for table `krs_detail`
--
ALTER TABLE `krs_detail`
  ADD PRIMARY KEY (`id_detailkrs`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`id_makul`);

--
-- Indexes for table `progdi`
--
ALTER TABLE `progdi`
  ADD PRIMARY KEY (`id_progdi`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `thn_ajaran`
--
ALTER TABLE `thn_ajaran`
  ADD PRIMARY KEY (`id_tahun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `khs`
--
ALTER TABLE `khs`
  MODIFY `id_khs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `krs_detail`
--
ALTER TABLE `krs_detail`
  MODIFY `id_detailkrs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `makul`
--
ALTER TABLE `makul`
  MODIFY `id_makul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `progdi`
--
ALTER TABLE `progdi`
  MODIFY `id_progdi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `thn_ajaran`
--
ALTER TABLE `thn_ajaran`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
