-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2022 pada 14.43
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `foto`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'admin', NULL),
(2, 'gssdemo', 'e07a5102e6cbbca34104a5ab185a5565', 'gssdemo', NULL),
(3, 'gss', '202cb962ac59075b964b07152d234b70', 'gss', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
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
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `password`, `nidn`, `nama_dosen`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `foto`) VALUES
('0015085204', '202cb962ac59075b964b07152d234b70', '', 'Prof. DR. Suwandi, M.Pd', 'Pria', '', '', '', '', ''),
('0604097302', '202cb962ac59075b964b07152d234b70', '', 'Dyah Kusumawati, SKM, MPH', 'Wanita', '', '', '', '', ''),
('0605017104', '202cb962ac59075b964b07152d234b70', '', 'Hj. Nur P T,S.Si.M.Si.Med, Apt', 'Wanita', '', '', '', '', ''),
('0616036702', '202cb962ac59075b964b07152d234b70', '', 'Drs. Agus Widodo, M.Kes', 'Pria', '', '', '', '', ''),
('0619056501', '202cb962ac59075b964b07152d234b70', '', 'dr. Faiza Munabari, M.Ke', 'Pria', '', '', '', '', ''),
('0620068901', '202cb962ac59075b964b07152d234b70', '', 'Armydha Dwi S, S.Pd, M.Sc', 'Pria', '', '', '', '', ''),
('0628018402', '202cb962ac59075b964b07152d234b70', '', 'dr. Fransisca P H, M.Si.Med', 'Wanita', '', '', '', '', ''),
('0629047101', '202cb962ac59075b964b07152d234b70', '', 'Kartika Ikawati, SKM.M.Kes', 'Wanita', '', '', '', '', ''),
('1000001', '202cb962ac59075b964b07152d234b70', '', 'Florentina Sri W, S. Ag', 'Wanita', '', '', '', '', ''),
('1000002', '202cb962ac59075b964b07152d234b70', '', 'Yohanes Aries, S.Th', 'Pria', '', '', '', '', ''),
('1000003', '202cb962ac59075b964b07152d234b70', '', 'Drs. Muh Ahyadi ', 'Pria', '', '', '', '', ''),
('1000004', '202cb962ac59075b964b07152d234b70', '', 'dr. Nugroho Edy R, M.Kes', 'Pria', '', '', '', '', ''),
('1000005', '202cb962ac59075b964b07152d234b70', '', 'dr. Ika Pawita Miranti, SpPA', 'Wanita', '', '', '', '', ''),
('1000006', '202cb962ac59075b964b07152d234b70', '', 'dr. Desy Armalina, M.Si.Med', 'Wanita', '', '', '', '', ''),
('1000007', '202cb962ac59075b964b07152d234b70', '', 'Atika Nur A, S,Si,M.Si', 'Wanita', '', '', '', '', ''),
('1234567', 'fcea920f7412b5da7be0cf42b8c93759', '123456789', 'purwo', 'Pria', 'tempat lahir', '01/01/1979', 'Islam', 'tes', 'kunti.jpg'),
('9906002516', '202cb962ac59075b964b07152d234b70', '', 'dr. H. Fuad Alhamidy, M.Kes', 'Pria', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(1, 'Analis Kesehatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(11) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `tanggal`, `judul`, `isi`) VALUES
(1, '12/19/2017', 'Jadwal Kegiatan Gua Maria Talanging Sih', 'hjjjasasknkjnkjsd sdcjknksdlkscd ksdjknklksdc jcksnjlksmlsd kjnjsdnjknnsd knjsndomomsdc kjnonknl;ksdc scdkm;lkmsdc csndjnknklskcsd kjsdnjknkmlcsd kncdnsklnsldkc csdnjdsnnkcsd csdlkmslksdc sckmlkscmlkmsd kklsdkmlmsldc sdlkmlsmc  csdklsdldsmlmlsdc lsdlcdslmlsc'),
(2, '12/06/2017', 'nkjnsdknksdnkndks', 'kjnkjndskklml;lsd;mcsdc sdlmdslkmklcdsi duhsdcubsdc sjcduhsinjscd sdcnnskdjnjkscd sdcnjndskjcsd kjnincs n oijoiik eoejioi mokfmokmgf kfmomvl evfmoemkefv feomomeevef ejfjkfev fevfevkefk njijhsd jbiuhidsc jnsijnsdcjndcs ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `id_fakultas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `id_fakultas`) VALUES
(1, 'Analis Kesehatan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `khs`
--

CREATE TABLE `khs` (
  `id_khs` int(11) NOT NULL,
  `id_krs` int(11) NOT NULL,
  `nilai` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs_detail`
--

CREATE TABLE `krs_detail` (
  `id_detailkrs` int(11) NOT NULL,
  `id_krs` int(11) NOT NULL,
  `nim` char(10) NOT NULL,
  `id_jadwal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` char(10) NOT NULL,
  `no_nik` varchar(20) NOT NULL,
  `no_kk` varchar(20) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `pekerjaan_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `pekerjaan_ibu` varchar(30) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `nama_kelas` varchar(15) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `id_progdi` int(11) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sekolah_asal` varchar(50) NOT NULL,
  `alamat_sekolah_asal` text NOT NULL,
  `no_ijasah` varchar(50) NOT NULL,
  `nilai_masuk` varchar(5) NOT NULL,
  `sumber_info` varchar(50) NOT NULL,
  `pembawa` varchar(50) NOT NULL,
  `ukuran_jas` varchar(3) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `id_tahun`, `password`, `nama_mhs`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `no_nik`, `no_kk`, `agama`, `alamat`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `angkatan`, `nama_kelas`, `foto`, `id_progdi`, `no_hp`, `email`, `sekolah_asal`, `alamat_sekolah_asal`, `no_ijasah`, `nilai_masuk`, `sumber_info`, `pembawa`, `ukuran_jas`, `nama_dosen`) VALUES
(' 3K110384', 2, '', 'Nurul Ani Wijayanti', 'Wanita', 'Blora', '28/03/1992', '', '', 'Islam', 'Ds. Tamansari Rt. 3 Rw. II Kec. Mranggen Kab. Demak 59567', 'Su\'adi (Alm)', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Mranggen', '', '', '', '', '', '', ''),
(' 3K110398', 2, '', 'Saflin Akham', 'Pria', 'Balauring', '17/09/1992', '', '', 'Islam', 'Jl. Bukit Beringin Asri VII/A-222 Rt. 6 Rw. 6 Kel. Gondoriyo Kec. Ngaliyan Semarang', 'Sumadi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 8 Semarang', '', '', '', '', '', '', ''),
('1070010965', 1, '', 'Welmina Rohana Selviana Kutang', 'Wanita', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', ''),
('1170010970', 1, '', 'Abrantu Erna Klaudia Way Mra M', 'Wanita', 'Jayapura', '07/10/1993', '', '', 'Kristen', 'Jayapura - Papua', 'Felix F Mra Mra', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170010971', 1, '', 'Ahmad Fadholi', 'Pria', 'Grobogan', '27/02/1991', '', '', 'Islam', 'Pepe Rt. 07 Rw. 01 Kec. Tegowanu Kab. Grobogan 58165', 'Suryadi', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170010972', 1, '', 'Aida Natasia', 'Wanita', 'Kendal', '25/12/1993', '', '', 'Islam', 'Jl. Masjid Agung Kendal Rt. 01 Rw. 01 Bandengan Kendal', 'Sugiharto', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010973', 1, '', 'Alex Faizal Rizza', 'Pria', 'Kudus', '22/04/1986', '', '', 'Islam', 'Gondosari Rt. 05 Rw. IV Gebog Kudus 59354', 'Ali Syavawi', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170010974', 1, '', 'Ana Sulistiyoningsih', 'Wanita', 'Pati', '23/10/1993', '', '', 'Islam', 'Ds. Tondomulyo Rt. 04 Rw. 02 Jakenan Pati 59182', 'Ngali', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010975', 1, '', 'Arindah Nabila Dewi', 'Wanita', 'Semarang', '11/01/1994', '', '', 'Islam', 'Jatisari Rt. 04 Rw. 13 No. 22 Kel. Gisikdrono Semarang 50149', 'Moch. Takari', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170010976', 1, '', 'Arum Sari', 'Wanita', 'Kendal', '25/04/1992', '', '', 'Islam', 'Limbangan Kendal Rt. 04 Rw. 06 51381', 'Kasiyan', '', '', '', 0, '', '', 0, '', '', '', '', '', '4L', '', '', '', ''),
('1170010977', 1, '', 'Arya Bima Baskoro', 'Pria', 'Semarang', '16/07/1993', '', '', 'Islam', 'Jl. Taman Lebdosari Rt. 08 Rw. 06 Semarang 50145', 'Sugiyono', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170010978', 1, '', 'Atiko Zahro', 'Wanita', 'Semarang', '14/07/1994', '', '', 'Islam', 'Podorejo Rt. 01 Rw. 01 Kec. Ngaliyan Semarang', 'Sutopo', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010979', 1, '', 'Azis Budi Setyawan', 'Pria', 'Temanggung', '02/03/1990', '', '', 'Islam', 'Pageruyung Rt. 01 Rw. 03 Kendal 51361', 'Junari (alm)', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010980', 1, '', 'Azizah Nur Khasanah', 'Wanita', 'Banjarnegara', '12/09/1993', '', '', 'Islam', 'Banjengan Rt. 01 Rw. 02 Mandiraja Banjarnegara 53473', 'Hadi Nurdiyanto', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170010981', 1, '', 'Benedicta Giovanni Dian Pratiw', 'Wanita', 'Semarang', '29/06/1993', '', '', 'Katholik', 'Pucang Anom RT. 6 Rw. 18 No. 40 Kel. Batursari Kec. Mranggen 59567', 'Ambrosius Satyandjojo P', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170010982', 1, '', 'Cicilia Debby Efrillyanti', 'Wanita', 'Semarang', '24/04/1991', '', '', '', 'Kluar', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '4L', '', '', '', ''),
('1170010983', 1, '', 'Devi Tri Rohmawati', 'Wanita', 'Jepara', '14/12/1993', '', '', 'Islam', 'Desa Kelet Rt. 07 Rw. 01 Kec. Keling Kab. Jepara 59454 ', 'H. Supa\'at', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010984', 1, '', 'Dewi Apriliyani', 'Wanita', 'Jakarta', '21/04/1994', '', '', 'Islam', 'Ds. Sidawung Rt. 2 Rw. 3 Kel. Kaligading Kec. Boja Kab. Kendal 51381', 'Heru Sulistiyo', '', '', '', 0, '', '', 0, '', '', '', '', '', '4L', '', '', '', ''),
('1170010985', 1, '', 'Dlufatul Khasanah', 'Wanita', 'Semarang', '20/07/1993', '', '', 'Islam', 'Randusari Rt. 03 Rw. 02 Kel. Nongkosawit Kec. Gunungpati Semarang 50225', 'Manuri', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010986', 1, '', 'Dwi Asih Ramadhani', 'Wanita', 'Semarang', '13/02/1994', '', '', 'Islam', 'Bukit Panjangan Asri Blok G/11A Semarang', 'R. Sukandono', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170010987', 1, '', 'Elsya Aldonna Viveronika', 'Wanita', 'Blora', '08/08/1993', '', '', 'Islam', 'Jl. A. Yani V/32 Rt. 05 Rw. 01 Blora', 'Sumaryono', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170010988', 1, '', 'Elta Lisa', 'Wanita', 'Kab. Semarang', '18/05/1993', '', '', 'Islam', 'Tlogosari Banyukuning Rt. 04 Rw. 04 Bandungan ', 'Kardiyono', '', '', '', 0, '', '', 0, '', '', '', '', '', '4L', '', '', '', ''),
('1170010989', 1, '', 'Endrianto', 'Pria', 'Margokoyo', '30/03/1991', '', '', 'Islam', 'KP. I Margo Koyo Rt. 01 Rw. 01 Belitang Jaya Kab.  OKU Timur', 'Sutiono', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010990', 1, '', 'Fella Sufah', 'Wanita', 'Temanggung', '24/03/1993', '', '', 'Islam', 'Ds. Bangunsari Rt. 01 Rw. 07 Kel. Bansari Kec. Bansari, Temanggung 56265', 'Rochan', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170010991', 1, '', 'Feri Triunika Sari', 'Wanita', 'Pati', '21/03/1992', '', '', 'Kristen', 'Ds. Tegalombo Rt. 04 Rw. 02 Kec. Dukuhseti Kab. Pati Jl. Tayu - Puncel Km. 15 Pati', 'Sudarmono', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010992', 1, '', 'Gabriel Demon', 'Pria', 'Kinabalu', '20/05/1992', '', '', 'Katholik', 'NTT - Lembata - Lebatukan ', 'Lambertus Raja', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010993', 1, '', 'Galih Arfianto', 'Pria', 'Grobogan', '15/08/1990', '', '', 'Islam', 'Sendangharjo Rt. 02 Rw. 06 Kec.  Karangrayung, Kab. Grobogan 58163', 'Bambang Sunarto', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170010994', 1, '', 'Habib Prayuda', 'Pria', 'Blora', '15/07/1993', '', '', 'Islam', 'Dsn. Jati Rt. 4 Rw. 7  Desa Jati Kec. Jati Kab. Blora', 'Jayo', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010995', 1, '', 'Hani Oktaviani', 'Wanita', 'Kuningan', '27/10/1993', '', '', 'Islam', 'Cihideunghilir -Cireja Rt. 01 Rw. 07 Kec. Cidahu Kab. Kuningan 45595 Jawa Barat ', 'Asro', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010996', 1, '', 'Hilal Mutakin', 'Pria', 'Pemalang', '29/12/1992', '', '', 'Islam', 'Tanahbaya Rt. 14 Rw. 03 Pemalang 52353', 'Khojin', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170010997', 1, '', 'Ibnu Arief Maulana', 'Pria', 'Brebes', '21/01/1993', '', '', 'Islam', 'Losari Lor Rt. 01 Rw. 02 Kab. Brebes 52255 ', 'Suroto', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170010998', 1, '', 'Ida Nuraini', 'Wanita', 'Semarang', '28/12/1993', '', '', 'Islam', 'Bambankerep Rt. 01 Rw. 04 Kel. Kedungpani Kec. Mijen Semarang 50211', 'Nurhadi', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170010999', 1, '', 'Ika Putri Septiani', 'Wanita', 'Blora', '02/09/1993', '', '', 'Islam', 'Ds. Bogem Rt. 06 Rw. 01 Kec. Japah Kab. Blora 58257', 'Sudarmadi', '', '', '', 0, '', '', 0, '', '', '', '', '', '4L', '', '', '', ''),
('1170011000', 1, '', 'Isma Nursalji Wibisono', 'Pria', 'Purbalingga', '15/10/1993', '', '', 'Islam', 'Babakan Rt. 08 Rw. 02 Kalimanah Purbalingga', 'Agus Taryono', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170011001', 1, '', 'Khoirul Lutfiana', 'Wanita', 'Batang', '21/06/1993', '', '', 'Islam', 'Karanganom Rt. 10 Rw. 02 Kec. Weleri Kab. Kendal', 'Sunar', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011002', 1, '', 'Linda Fitriana Wati', 'Wanita', 'Banjarnegara', '14/05/1994', '', '', 'Islam', 'Bawang Rt. 03 Rw. 05 Kel. Bawang Kec. Bawang Banjarnegara 54371', 'Siswoyo', '', '', '', 0, '', '', 0, '', '', '', '', '', '4L', '', '', '', ''),
('1170011003', 1, '', 'Luthfi Indah Lestariyani', 'Wanita', 'Semarang', '19/12/1992', '', '', 'Islam', 'Segaran Rt. 002 Rw. 004 Kel. Tambakaji Kec. Ngaliyan Semarang 50185', 'Marsono', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011004', 1, '', 'Mahesa Bagus Permana', 'Pria', 'Rembang', '27/01/1993', '', '', 'Islam', 'Jl. Taruma Negara No. 3A Kembangarum Timur Rt. 02 Rw. 10 Kutoarjo Kab. Purworejo ', 'Sukur', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170011005', 1, '', 'Miftahus Sa\'adah', 'Wanita', 'Demak', '24/04/1993', '', '', 'Islam', 'Ds. Tangkis Kec. Guntur Kab. Demak ', 'Suwondo', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011006', 1, '', 'Mikha Priyo Darminto', 'Pria', 'Cirebon', '31/12/1992', '', '', 'Kristen', 'Jl. Bawean No. 67 Rt. 04 Rw. 02 Cirebon 45145', 'Karsani', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011007', 1, '', 'Nailal Muna', 'Wanita', 'Blora', '30/04/1993', '', '', 'Islam', 'Ds. Semawur Rt. 01 Rw. 01 Kel. Semawur Kec. Ngawen Kab. Blora 58254', 'Tamyis', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011008', 1, '', 'Nia Ayu Atfera', 'Wanita', 'Demak', '24/04/1993', '', '', 'Islam', 'Ds. Cabean Gang Merak Rt. 006 Rw. 001 Demak 59551', 'Agus Munir', '', '', '', 0, '', '', 0, '', '', '', '', '', '4L', '', '', '', ''),
('1170011009', 1, '', 'Nur Jannah', 'Wanita', 'Maros', '21/10/1992', '', '', 'Islam', 'Walangkeang/NTT', 'H. Layo', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011010', 1, '', 'Nurul Ani Wijayanti', 'Wanita', 'Blora', '28/03/1992', '', '', 'Islam', 'Ds. Bekutuk Rt. 03 Rw. 01 Kel. Bekutuk Kec. Randublatung Kab. Blora', 'Ramijan', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011011', 1, '', 'Nurul Septiana Dewi', 'Wanita', 'Blora', '16/09/1993', '', '', 'Islam', 'Jl. Tentara Pelajar No. 85 A Blora', 'Suharsono', '', '', '', 0, '', '', 0, '', '', '', '', '', '4L', '', '', '', ''),
('1170011012', 1, '', 'Okky Rafena Pratiwi', 'Wanita', 'Semarang', '11/10/1993', '', '', 'Islam', 'Jl. Taman Sri Kuncoro I No. 2 Rt. 4 Rw. 2 Kel. Kalibanteng Kulon Semarang Barat', 'Sutarno', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011013', 1, '', 'Partilah Rahayu', 'Wanita', 'Kab. Semarang', '31/07/1993', '', '', 'Islam', 'Dsn. Plimbungan Ds. Genting Kec. Jambu Kab. Semarang Rt. 001 Rw. 005 ', 'Mulyo', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170011014', 1, '', 'Pitantio Atmaja', 'Pria', 'Semarang', '07/09/1993', '', '', 'Islam', 'Kalialang Lama Rt. 03 Rw. 01 Semarang', 'Tukino', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011015', 1, '', 'Purna Irawan', 'Pria', 'Pati', '01/05/1992', '', '', 'Islam', 'Jl. Brangkalan Rt. 02 Rw. 02 Ds. Keben Kec. Tambakkromo Kab. Pati Jawa Tengah 59174', 'Sabit', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011016', 1, '', 'Purwanto', 'Pria', 'Demak', '04/02/1989', '', '', 'Islam', 'Ds. Wonokerto Rt. 02 Rw. 02 Kec. Karangtengah - Demak 59561', 'Kasbi', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011017', 1, '', 'Rahmad Sudadi', 'Pria', 'Maraokoyo', '19/06/1993', '', '', 'Kristen', 'Ds. Margokoyo Belitang Jaya OKU Timur SUMSEL Rt. 02 Rw. 03', 'Ngatimin', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170011018', 1, '', 'Ratih Novriza Sari', 'Wanita', 'Blora', '20/11/1992', '', '', 'Islam', 'Jl. Rajawali 9 Rt. 06 Rw. 02 Kel. Bangkle Blora', 'Suratman', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011019', 1, '', 'Ridhiani Nur Aminah', 'Wanita', 'Blora', '14/03/1993', '', '', 'Islam', 'Jl. Gianti No. 6 Rt. 02 Rw. 02 Ngelo Marhen - Cepu 58313', 'Karnawi', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011020', 1, '', 'Riyana Septiyorini', 'Wanita', 'Semarang', '08/09/1993', '', '', 'Islam', 'Jl. Sadeng Gunungpati Rt. 03 Rw. 02 Semarang', 'Madmuri', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011021', 1, '', 'Riyana Yuli Purnamasari', 'Wanita', 'Grobogan', '14/07/1992', '', '', 'Islam', 'Keluar', 'Sutono', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170011022', 1, '', 'Rohmafati', 'Wanita', 'Kebumen', '22/09/1993', '', '', 'Islam', 'Wonocolo, Prembun, Kebumen rt. 04 Rw. 07', 'Sudarto', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011023', 1, '', 'Sabila Miftachul Janah', 'Wanita', 'Demak', '24/09/1993', '', '', 'Islam', 'Ds. Cabean Rt. 09 Rw. 01 Demak 59511', 'Daryono', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011024', 1, '', 'Saflin Akham', 'Pria', 'Balauring', '17/09/1992', '', '', 'Islam', 'Flores - NTT', 'Muhammad Ali', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011025', 1, '', 'Santi Saras Wati', 'Wanita', 'Semarang', '05/09/1992', '', '', 'Islam', 'Dk. Sidodadi Rt. 001 Rw. 002 Kel. Jatibarang Kec. Mijen Semarang 50219', 'Sumadi', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011026', 1, '', 'Shofiana Nurul Haida', 'Wanita', 'Demak', '07/05/1993', '', '', 'Islam', 'Ds. Angin - angin Dsn. Buko Kec. Wedung Kab. Demak', 'H. Agus Salim', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011027', 1, '', 'Sisca Fitin Oktaviani', 'Wanita', 'Grobogan', '18/10/1993', '', '', 'Islam', 'Ds. Mlowo Karangtalun Rt. 004 Rw. III Kec. Pulokulon Kab. Grobogan 58181', 'Suprat', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170011028', 1, '', 'Siti Alfiyah', 'Wanita', 'Grobogan', '31/10/1990', '', '', 'Islam', 'Ds. Tunjung Harjo Rt. 12 Rw. 3 Kec. Tegowanu Kab. Grobogan', 'Sugiharto', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011029', 1, '', 'Siti Khomsatun', 'Wanita', 'Pemalang', '25/05/1991', '', '', 'Islam', 'Kendal Rejo Rt. 001 Rw. 001 Petarukan Pemalang', 'Sobirin', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011030', 1, '', 'Siti Nurchasanah', 'Wanita', 'Kebumen', '31/03/1993', '', '', 'Islam', 'Ds.Wonocolo Rt. 02 Rw. 07 Kec. Prembun Kab. Kebumen 54394 ', 'Moch. Kozin', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011031', 1, '', 'Sugiyati', 'Wanita', 'Banyumas', '25/01/1992', '', '', 'Islam', 'Gumelar Rt. 06 Rw. 04 Kec. Gumelar Kab. Banyumas 53165', 'Samsudin', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170011032', 1, '', 'Syehabudin Umar Zakariya', 'Pria', 'Kendal', '28/12/1992', '', '', 'Islam', 'Ds. Mororejo Kaliwungu Rt. 04 Rw. 06 Kendal', 'Zakariya Ghofar', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011033', 1, '', 'Tri Susilowati', 'Wanita', 'Kebumen', '21/05/1993', '', '', 'Islam', 'Dukuh Tamansari Rt. 02 Rw. 01 Kel. Bonjoklor Kec. Bonorowo Kab. Kebumen 54395', 'Karto Sudarmo', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011034', 1, '', 'Uki Ervi Falah', 'Wanita', 'Purwokerto', '17/08/1993', '', '', 'Islam', 'Sumilir Rt. 01 Rw. 01 Kec. Kemangkon Kab. Purbalingga 53381', 'Wahyudi', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170011035', 1, '', 'Uswatun Khasanah', 'Wanita', 'Kendal', '12/04/1993', '', '', 'Islam', 'Gemuh Singkalan Sidodadi Patean Kendal 51364', 'Tumani', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011036', 1, '', 'Vega Aditi', 'Wanita', 'Blora', '15/05/1993', '', '', 'Islam', 'Jl. Bima 26 Rt. 002 Rw. 002 Kel. Bangkle Blora 58218', 'Mujiyono', '', '', '', 0, '', '', 0, '', '', '', '', '', 'PMDP', '', '', '', ''),
('1170011037', 1, '', 'Wahyu Adi Hendarto', 'Pria', 'Grobogan', '01/05/1993', '', '', 'Islam', 'Jl. Bakung No. 75 Rt. 02 Rw. 08 Kel. Grobogan Kec. Grobogan 58152', 'Rustanto', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011038', 1, '', 'Wahyu Utami', 'Wanita', 'Batang', '23/09/1993', '', '', 'Islam', 'Ds. Ketanggan Rt. 07 Rw. 02 Batang Gringsing 51281', 'Solechan', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170011039', 1, '', 'Widodo', 'Pria', 'Tegowanu', '25/12/1989', '', '', 'Islam', 'Ds. Kedungwungu Kec. Tegowanu Kab. Grobogan', 'Harjo', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011040', 1, '', 'Wisnu Aditiya Pratama', 'Pria', 'Semarang', '26/10/1990', '', '', 'Islam', 'Jl. Taman Srinindito Rt. 3 Rw. 4 Kel. Ngemplak Simongan Kec. Semarang Barat', 'Subiyanto', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011041', 1, '', 'Yashinta Ella Izmiarni', 'Wanita', 'Pati', '28/06/1993', '', '', 'Islam', 'Jl. Kol. Sunandar Gg. V No. 32 Rt. 16 Rw. III Ds. Winong Pati 59112', 'Wagiyanto', '', '', '', 0, '', '', 0, '', '', '', '', '', '1L', '', '', '', ''),
('1170011042', 1, '', 'Yohanes Dicky Kurniawan', 'Pria', 'Ungaran', '06/06/1992', '', '', 'Katholik', 'Griya Karangjati Rt. 08 Rw. 02 Pringsari Kec. Pringapus Kab. Semarang ', 'Agus Supriyanto', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('1170011043', 1, '', 'Yolenta Ulli Pornatintri', 'Wanita', 'Kab. Semarang', '20/09/1993', '', '', 'Katholik', 'Jl. Kemuning Rt. 02 Rw. 03 No. 7 Kupang Lor Ambarawa', 'Tri Komayanti', '', '', '', 0, '', '', 0, '', '', '', '', '', '2L', '', '', '', ''),
('1170011044', 1, '', 'Zulfiana Sari', 'Wanita', 'Demak', '25/10/1993', '', '', 'Islam', 'Ds. Cabean Gg. Merak Rt. 05 Rw. 01 No. 139 Demak 59511', 'Triyono', '', '', '', 0, '', '', 0, '', '', '', '', '', '3L', '', '', '', ''),
('123', 11, '202cb962ac59075b964b07152d234b70', 'purwo', 'Wanita', 'semarang', '01/01/1979', 'nik', 'kk', 'Islam', 'alamat', 'ayah', 'gawe ayah', 'ibu', 'gawe ibu', 100, '123', '', 1, '123123', 'email', 'sekolah asal', 'alamat sekolah asal', 'no_ijasah', '3L', 'sumber info', 'pembawa', 'XXL', 'dr. H. Fuad Alhamidy, M.Kes'),
('1270011045', 2, '', 'Agus Mugiarto', 'Pria', 'Blora', '30/10/1992', '', '', 'Islam', 'Dk. Ngampel Rt. 1 Rw. 4 Kel. Plosorejo Kec. Randublatung Blora', 'Suprat', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Randublatung Blora', '', '', '', '', '', '', ''),
('1270011046', 2, '', 'Ahmadi', 'Pria', 'Demak', '06/08/1987', '', '', 'Islam', 'Ds. Tamansari Rt. 3 Rw. II Kec. Mranggen Kab. Demak 59567', 'Su\'adi (Alm)', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Mranggen', '', '', '', '', '', '', ''),
('1270011047', 2, '', 'Aisyah Retno Puspito Asri', 'Wanita', 'Magelang', '07/09/1994', '', '', 'Islam', 'Jl. Bukit Beringin Asri VII/A-222 Rt. 6 Rw. 6 Kel. Gondoriyo Kec. Ngaliyan Semarang', 'Sumadi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 8 Semarang', '', '', '', '', '', '', ''),
('1270011048', 2, '', 'Aisyatun Noor', 'Wanita', 'Jepara', '27/10/1994', '', '', 'Islam', 'Rt. 4 Rw. 5 Bulungan Pakis Aji Jepara 59452', 'Soedarsono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tahunan Jepara', '', '', '', '', '', '', ''),
('1270011049', 2, '', 'Anisa Natalia', 'Wanita', 'Long Bawan', '24/12/1994', '', '', 'Kristen', 'Tanjung Lapang, Jl. Rotan Rt. 8 No. 3 Malinau Barat Kalimantan Timur 77554', 'Bian Ngilo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Malinau', '', '', '', '', '', '', ''),
('1270011050', 2, '', 'Annies Zoraya Wahyuningratri', 'Wanita', 'Semarang', '21/06/1994', '', '', 'Islam', 'Padi Utara Raya No. 16 Genuk Indah Semarang 50114', 'Ngomahwono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 11 Semarang', '', '', '', '', '', '', ''),
('1270011051', 2, '', 'Arif Rahman', 'Pria', 'Rasabou-Sape', '10/12/1994', '', '', 'Islam', 'Rasabou, Sape NTB', 'H. Yasin', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Sape', '', '', '', '', '', '', ''),
('1270011052', 2, '', 'Arika Andriani', 'Wanita', 'Kudus', '31/10/1992', '', '', 'Islam', 'Ds. Gondoharum Tlogo Rt. 2 Rw. 2 Kec. Jekulo Kab. Kudus 59382 (Drs. Budiyono Saputro, M.Pd)', 'Jamil', '', '', '', 0, '', '', 0, '', '', 'SMA PGRI Kaliwungu Kudus', '', '', '', '', '', '', ''),
('1270011053', 2, '', 'Arini Gestri Anandhita', 'Wanita', 'Grobogan', '02/08/1993', '', '', 'Islam', 'Jl. A. Yani Ds. Ngraji Rt. 5 Rw. 1 Purwodadi 58151', 'Djoko Sunarto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Toroh', '', '', '', '', '', '', ''),
('1270011054', 2, '', 'Arini Rafika', 'Wanita', 'Pangkalan Bun', '21/01/1995', '', '', 'Islam', 'Jl. Pakunegara No. 68 Rt. 13 Kalimantan Tengah 74114', 'Arbani', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Pangkalan Bun', '', '', '', '', '', '', ''),
('1270011055', 2, '', 'Atik Fatmawati', 'Wanita', 'Demak', '30/11/1993', '', '', 'Islam', 'Ds. Bonangrejo Rt. 4 Rw. I Kec. Bonang Kab. Demak', 'Akhmad', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Demak', '', '', '', '', '', '', ''),
('1270011056', 2, '', 'Ayu Oktavia Ardi Yanti', 'Wanita', 'Demak', '06/10/1994', '', '', 'Islam', 'Ds. Cabean, Jl. Sekolahan Rt. 9 Rw. 1 Demak 59511', 'Supardi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Demak', '', '', '', '', '', '', ''),
('1270011057', 2, '', 'Benedikta Oe Naimnou', 'Wanita', 'Oenenu', '16/03/1996', '', '', 'Katholik', 'Kefamenanu NTT/TTU', 'Hironimus Oe Naimnou', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Insana', '', '', '', '', '', '', ''),
('1270011058', 2, '', 'Candra Ariawan', 'Pria', 'Semarang', '26/01/1993', '', '', 'Islam', 'Jl. Graha Sendang Mulyo Blok JJ I/12 Rt. 12 Rw. 3 Semarang', 'Sri Mulyono', '', '', '', 0, '', '', 0, '', '', 'SMK Negeri 1 Semarang', '', '', '', '', '', '', ''),
('1270011059', 2, '', 'Dian Melisa', 'Wanita', 'Pati', '22/05/1994', '', '', 'Islam', 'Ds. Sendangsoko Rt. 7 Rw. 2 Jakenan Pati 59182', 'Saryadi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Jakenan', '', '', '', '', '', '', ''),
('1270011060', 2, '', 'Dianita Meiratri', 'Wanita', 'Jepara', '28/05/1994', '', '', 'Islam', 'Ds. Sesenan Rt. 12 Rw. 4 Kec. Tahunan Kab. Jepara 59426', 'Kasan', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tahunan Jepara', '', '', '', '', '', '', ''),
('1270011061', 2, '', 'Dita Mardiani Agustina', 'Wanita', 'Kudus', '06/08/1994', '', '', 'Islam', 'Jurang Rt. 2 Rw. 3 No. 26 Gebog Kudus', 'Edy Suyanto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Kudus', '', '', '', '', '', '', ''),
('1270011062', 2, '', 'Dwi Setiyaningsih', 'Wanita', 'Grobogan', '17/01/1994', '', '', 'Islam', 'Ds. Ngraji Rt. 5 Rw. 1 Purwodadi Grobogan 58151', 'Sukardjo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Purwodadi', '', '', '', '', '', '', ''),
('1270011063', 2, '', 'Dwi Yulianto', 'Pria', 'Purwodadi', '26/07/1994', '', '', 'Kristen', 'Jl. Hayamwuruk No. 46 Purwodadi 58111', 'Putut Kusdianto', '', '', '', 0, '', '', 0, '', '', 'SMA Kristen Purwodadi', '', '', '', '', '', '', ''),
('1270011064', 2, '', 'Emilia Sri Ayu Bintari', 'Wanita', 'Semarang', '08/01/1995', '', '', 'Islam', 'Bandaran Barat Rt. 7 Rw. 5 Kel. Bandarjo Kec. Ungaran Barat', 'Sugi', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana Semarang', '', '', '', '', '', '', ''),
('1270011065', 2, '', 'Endah Dwi Wijayanti', 'Wanita', 'Brebes', '21/06/1993', '', '', 'Islam', 'Jl. Baksokumis Selatan Ds. Patijangan Rt. 3 Rw. 7 Brebes 52252', 'Sukarjo', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi VPIB Brebes', '', '', '', '', '', '', ''),
('1270011066', 2, '', 'Erza Wahyuni Asri', 'Wanita', 'Blora', '15/06/1994', '', '', 'Islam', 'Jl. Agil Kusumodiya No. 41 Rt. 1 Rw. 3 Kel. Kunden Kec. Blora', 'Jayono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('1270011067', 2, '', 'Evy Kartika Sari', 'Wanita', 'Semarang', '18/05/1994', '', '', 'Islam', 'Jl. Borobudur Timur XIV Rt. 11 Rw. 9 Semarang  50148', 'Edy Supaliyo', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana AK Semarang', '', '', '', '', '', '', ''),
('1270011068', 2, '', 'Fajar Arif Saputra', 'Pria', 'Demak', '19/04/1994', '', '', 'Islam', 'Ds. Sayung Rt. 4 Rw. IV Belakang pasar Sayung Kec. Sayung Demak 59563', 'Sugiarto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Karangtengah', '', '', '', '', '', '', ''),
('1270011069', 2, '', 'Fanny Dian Aulia', 'Wanita', 'Semarang', '07/01/1994', '', '', 'Islam', 'Jl. Jatisari Rt. 9 Rw. 13 Kel. Gisikdrono Kec. Semarang Barat 50149', 'Nuryanto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 7 Semarang', '', '', '', '', '', '', ''),
('1270011070', 2, '', 'Fauji Bagus Susilo', 'Pria', 'Pati', '06/12/1994', '', '', 'Islam', 'Jl. Veteran No. 14 Bangkle Blora ', 'Agus Sutiyono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('1270011071', 2, '', 'Feni Dwi Rahayu', 'Wanita', 'Wonogiri', '22/06/1994', '', '', 'Islam', 'Jl. Gatot Subroto III Rt. 7 Rw. 2 No. 47 Kel. Purwoyoso Kec. Ngaliyan Semarang 50184', 'Tarmin', '', '', '', 0, '', '', 0, '', '', 'SMA Kesatrian 1 Semarang', '', '', '', '', '', '', ''),
('1270011072', 2, '', 'Fida Fitriyana', 'Wanita', 'Demak', '02/01/1994', '', '', 'Islam', 'Ujung Krawang Rt. 14 Rw. 5 Kel. Pulo Gebang Kec. Cakung Jakarta Timur 13950', 'Mustafid', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 83 Jakarta', '', '', '', '', '', '', ''),
('1270011073', 2, '', 'Fiska Richayati', 'Wanita', 'Grobogan', '02/04/1994', '', '', 'Islam', 'Ds. Tegowanu Kulon Rt. 6 B Rw. 3 Kec. Tegowanu, Kab. Grobogan 58165', 'Hartoyo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Gubug', '', '', '', '', '', '', ''),
('1270011074', 2, '', 'Fitria Puji Astuti', 'Wanita', 'Kab. Semarang', '05/08/1994', '', '', 'Islam', 'Kauman Kebondowo Rt. 2 Rw. 2 Ambarawa 50664', 'Safrodin', '', '', '', 0, '', '', 0, '', '', 'MAN Salatiga', '', '', '', '', '', '', ''),
('1270011075', 2, '', 'Gil Firmino Do Rosario', 'Pria', 'Noapai', '10/12/1976', '', '', 'Katholik', 'Oecusse Timor Leste', '', '', '', '', 0, '', '', 0, '', '', 'SMAK Mataram NTB', '', '', '', '', '', '', ''),
('1270011076', 2, '', 'Hadriyanti', 'Wanita', 'Maros', '08/08/1994', '', '', 'Islam', 'Jl. Walakeam Rt. 7 Rw. 3 Kel. Lewoleba Kec. Nubatukan Lembata NTT', 'H. Syanong Dg. Sabbe', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana AK Semarang', '', '', '', '', '', '', ''),
('1270011077', 2, '', 'Hanifatur Rahmania', 'Wanita', 'Semarang', '31/10/1994', '', '', 'Islam', 'Jl. Jatisari II No. 19 Rt. 2 Rw. XIII Kel. Gisikdrono Semarang', 'Eko Agus Susanto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 14 Semarang', '', '', '', '', '', '', ''),
('1270011078', 2, '', 'Hartati Firdaus', 'Wanita', 'Semarang', '26/04/1993', '', '', 'Islam', 'Duduhan Rt. 2 Rw. 5 Kec. Mijen Kel. Mijen Kotamadya Semarang 50218', 'Jonet', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 16 Semarang', '', '', '', '', '', '', ''),
('1270011079', 2, '', 'Hilda Nisrina Azmi', 'Wanita', 'Semarang', '27/12/1992', '', '', 'Islam', 'Bukit Jatisari Permai Blok A9/12B Jl. Taman Jeruk 2 Semarang ', 'Budhi Puryanto', '', '', '', 0, '', '', 0, '', '', 'SMA Setiabudhi Semarang', '', '', '', '', '', '', ''),
('1270011080', 2, '', 'Himatul Husnawati Devi', 'Wanita', 'Boyolali', '01/03/1994', '', '', 'Islam', 'Gatak, Kopen, Teras, Boyolali Rt. 2 Rw. 7 Kd. Pos 57373', 'Haryana', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Bunyudono', '', '', '', '', '', '', ''),
('1270011081', 2, '', 'Ika Theresia Fiscarina Sukirno', 'Wanita', 'Jayapura', '11/10/1995', '', '', 'Kristen', 'Jl. Rambutan Ardipura III Jayapura Papua', 'Supriyadi Sukirno', '', '', '', 0, '', '', 0, '', '', 'SMK Kesehatan Jayapura', '', '', '', '', '', '', ''),
('1270011082', 2, '', 'Intan Wulandari', 'Wanita', 'Brebes', '07/09/1994', '', '', 'Islam', 'Ds. Siwuluh Rt. 4 Rw. 3, Kec. Bulakamba, Kab. Brebes', 'Wirsad', '', '', '', 0, '', '', 0, '', '', 'SMF Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('1270011083', 2, '', 'Iyon Praditya', 'Pria', 'Grobogan', '04/05/1994', '', '', 'Islam', 'Jl. KHA Dahlan IV/02 Blora 58213', 'Drs. EC Sigit Pribadi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('1270011084', 2, '', 'Kharis Usman', 'Wanita', 'Demak', '27/12/1992', '', '', 'Islam', 'Wonowoso Rt. 3 Rw. 1 Demak Karangtengah 59561', 'Bakir Wartono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Karangtengah', '', '', '', '', '', '', ''),
('1270011085', 2, '', 'Kristiyaningrum', 'Wanita', 'Grobogan', '01/01/1988', '', '', 'Kristen', 'Ds. Sedadi, RT. 9 RW. 7 Kec. Penawangan Kab. Grobogan', 'Suwito', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Purwodadi', '', '', '', '', '', '', ''),
('1270011086', 2, '', 'Lilis Luh Indahsari', 'Wanita', 'Banyumas', '13/06/1994', '', '', 'Islam', 'Pernasidi Rt. 1 Rw. 3 Kec. Cilongok Kab. Banyumas 53162', 'Aksan Gunawan', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Wangon', '', '', '', '', '', '', ''),
('1270011087', 2, '', 'Luthfiyati Intan Diningrum', 'Wanita', 'Brebes', '20/08/1993', '', '', 'Islam', 'Ds. Pakijangan Dk. Bandar No. 38 Rt. 2 Rw. 9 Kel. Pakijangan Kec. Bulakamba Brebes (Jl. Bakso Kumis Keselatan Rt. 03 Rw. 07 Ds. Pakijangan)', 'Agus Sulaiman', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('1270011088', 2, '', 'M. Khoerul Wahidin', 'Pria', 'Brebes', '26/04/1994', '', '', 'Islam', 'Wangandalem Rt. 2 Rw. 1 Kel. Wangandalem Kec. Brebes ', 'Suwanto', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('1270011089', 2, '', 'Mafrukha Arbi Zulpriliana', 'Wanita', 'Blora', '13/04/1994', '', '', 'Islam', 'Ds. Mojowetan Rt. 9 Rw. 4 Banjarrejo Blora 58253', 'Sulkan', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('1270011090', 2, '', 'Maria Yustina Ahoinnai', 'Wanita', 'Lemon', '14/01/1995', '', '', 'Katholik', 'Eban-Salu NTT-TTU 85661', 'Simon Ahoinnai', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Kefamenanu', '', '', '', '', '', '', ''),
('1270011091', 2, '', 'Marta Kristina', 'Wanita', 'Pati', '09/03/1994', '', '', 'Kristen', 'Jl. Mangkudipuro Growong Kidul Rt. 1 Rw. 1 Juwana Pati 59185', 'Yakub Wakijan', '', '', '', 0, '', '', 0, '', '', 'SMA Nasional Pati', '', '', '', '', '', '', ''),
('1270011092', 2, '', 'Maryam Ulfah', 'Wanita', 'Bima', '05/01/1994', '', '', 'Islam', 'Rt. 7 Rw. 7 Sape Bima NTB 8184182', 'Syamsudin', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Sape', '', '', '', '', '', '', ''),
('1270011093', 2, '', 'Mega Aries Tantia', 'Wanita', 'Kendal', '05/01/1994', '', '', 'Islam', 'Ds. Montongsari Rt. 4 Rw. III Weleri Kendal 51355', 'Sugiman', '', '', '', 0, '', '', 0, '', '', 'SMA NU 03 Mu Allimin', '', '', '', '', '', '', ''),
('1270011094', 2, '', 'Mochamad Dhani Setiawan', 'Pria', 'Kebumen', '03/07/1994', '', '', 'Islam', 'Ds. Wonocolo Rt. 3 Rw. 7 Kec. Prembun Kab. Kebumen ', 'Siswandi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Mirit', '', '', '', '', '', '', ''),
('1270011096', 2, '', 'Muanalia', 'Wanita', 'Blora', '25/12/1994', '', '', 'Islam', 'Dk. Dukoh Rt. 5 Rw. 3 Ds. Kedungtuban Kec. Kedungtuban Kab. Blora 58381', 'Samaudi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Cepu', '', '', '', '', '', '', ''),
('1270011097', 2, '', 'Nailla Risqi', 'Wanita', 'Jepara', '13/02/1994', '', '', 'Islam', 'Jl. Jayadirejo Rt. 2 Rw. 1 Randusari Tahunan Jepara 59427', 'Maslikhan Rosyid', '', '', '', 0, '', '', 0, '', '', 'MA Ma\'ahid Kudus', '', '', '', '', '', '', ''),
('1270011098', 2, '', 'Nanang Agung Rio Pradana', 'Pria', 'Blora', '13/04/1994', '', '', 'Islam', 'Dukuh Bumirejo Rt. 02 Rw. 02 Kel. Jegang Kec. Jati Kab. Blora 58384', 'Parman', '', '', '', 0, '', '', 0, '', '', 'SMK Muhammadiyah Jati', '', '', '', '', '', '', ''),
('1270011099', 2, '', 'Nawang Jerry Apriliyanti', 'Wanita', 'Blora', '23/04/1994', '', '', 'Islam', 'Ds. Tanjung Rt. 5 Rw. 2 Kec. Kedungtuban Kab. Blora 58381', 'M. Kamari', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Cepu', '', '', '', '', '', '', ''),
('1270011100', 2, '', 'Ndari Tri Lusiana Devi', 'Wanita', 'Surabaya', '11/03/1995', '', '', 'Islam', 'Kapas Madya 3-A/52 Rt. 10 Rw. 1 Kel. Kapasmadya Baru Kec. Tambak Sari Surabaya 60134', 'Kundori', '', '', '', 0, '', '', 0, '', '', 'SMA Gita Bahari Smg', '', '', '', '', '', '', ''),
('1270011101', 2, '', 'Neneng Astika Saleh', 'Wanita', 'Ketapang', '01/10/1994', '', '', 'Islam', 'Ketapang Kalimantan Barat', 'Salina', '', '', '', 0, '', '', 0, '', '', 'MAN Ketapang', '', '', '', '', '', '', ''),
('1270011102', 2, '', 'Nindya Pramudita', 'Wanita', 'Semarang', '31/07/1994', '', '', 'Islam', 'Bongsari Rt. 1 Rw. 2 Semarang 50148', 'Lilik Aryanto', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana AK Semarang', '', '', '', '', '', '', ''),
('1270011103', 2, '', 'Novan Ardiyanto', 'Pria', 'Semarang', '29/11/1994', '', '', 'Islam', 'Jl. Dewi Sartika Barat I No. 45 Rt. 7 Rw. 3 Semarang', 'Muntari', '', '', '', 0, '', '', 0, '', '', 'SMK Muhammadiyah 2 Semarang', '', '', '', '', '', '', ''),
('1270011104', 2, '', 'Ratna Widya Ichsanti', 'Wanita', 'Demak', '10/03/1990', '', '', 'Islam', 'Brambang Rt. 4 Rw. 1 Kec. Karangawen Demak 59566', 'Suhardi', '', '', '', 0, '', '', 0, '', '', 'SMK Bakti Nusantara', '', '', '', '', '', '', ''),
('1270011105', 2, '', 'Reny Nur Solikhah', 'Wanita', 'Blora', '09/08/1994', '', '', 'Islam', 'Ds. Nglandeyan Rt. 1 Rw. 1 Kec. Kedungtuban Kab. Blora 58381', 'Drs. Mudjiono', '', '', '', 0, '', '', 0, '', '', 'SMA 2 Cepu', '', '', '', '', '', '', ''),
('1270011106', 2, '', 'Rika Yunita Pamelia', 'Wanita', 'Blora', '09/06/1992', '', '', 'Islam', 'Ds. Talokwohmojo Rt. 6 Rw. 1 Ds. Talokwohmojo Kec. Ngawen Kab. Blora 58254', 'Mustakim', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Ngawen', '', '', '', '', '', '', ''),
('1270011107', 2, '', 'Ristiyani', 'Wanita', 'Boyolali', '13/10/1994', '', '', 'Islam', 'Bantengan, Karanggede, Boyolali Rt. 2 Rw. 3 57381', 'Jamzuri', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Karanggede', '', '', '', '', '', '', ''),
('1270011108', 2, '', 'Rizki Ayu Safitri', 'Wanita', 'Blora', '23/10/1994', '', '', 'Islam', 'Dk. Pecaren Rt. 1 Rw. 1 Kel. Semawur Kec. Ngawen Blora 58254', 'Tamyiz', '', '', '', 0, '', '', 0, '', '', 'SMK Annuroniyah Rembang', '', '', '', '', '', '', ''),
('1270011110', 2, '', 'Septi Ayu Wijayanti', 'Wanita', 'Purworejo', '19/09/1993', '', '', 'Islam', 'Desa Jombang Rt. 2 Rw. 1 Ds. Jombang Kec. Ngombol 54172', 'Suparman', '', '', '', 0, '', '', 0, '', '', 'SMK Penabur Purworejo', '', '', '', '', '', '', ''),
('1270011111', 2, '', 'Siti Fathia Wahyuningsih', 'Wanita', 'Blora', '12/03/1995', '', '', 'Islam', 'Ds. Kembang Rt. 2 Rw. 1 Kel. Kembang Kec. Banjarrejo Kab. Blora ', 'Sugiman', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Ngawen', '', '', '', '', '', '', ''),
('1270011112', 2, '', 'Siti Sholikhatun', 'Wanita', 'Kebumen', '10/08/1994', '', '', 'Islam', 'Taman Sari Rt. 2 Rw. 1 Kel. Bonjoklor Kec. Bonorowo Kebumen', 'Cipto Diharjo', '', '', '', 0, '', '', 0, '', '', 'MAN Kutowinagun', '', '', '', '', '', '', ''),
('1270011113', 2, '', 'Tomas Adelino', 'Pria', 'Viqueque', '13/04/1963', '', '', 'Katholik', 'Timor Leste', '', '', '', '', 0, '', '', 0, '', '', 'SMAK Mataram NTB', '', '', '', '', '', '', ''),
('1270011114', 2, '', 'Tutik Handayani', 'Wanita', 'Demak', '18/09/1993', '', '', 'Islam', 'Kp. Genggongan Rt. 1 Rw. 2 Mangunjiwan Demak 59511', 'Dulrochman', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 3 Demak', '', '', '', '', '', '', ''),
('1270011115', 2, '', 'Umma Farida', 'Wanita', 'Pati', '11/11/1992', '', '', 'Islam', 'Ds. Sirahan Rt. 14 Rw. 6 Cluwak Kab. Pati ', 'Zuhadi', '', '', '', 0, '', '', 0, '', '', 'SMK Negeri 03 Pati', '', '', '', '', '', '', ''),
('1270011116', 2, '', 'Vici Dearasya', 'Wanita', 'Kab. Semarang', '07/07/1994', '', '', 'Islam', 'Jl. Ulin III D 117, Rt. 4 Rw. 12, Beji Ungaran Timur 50551', 'Suprayitno', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Ungaran', '', '', '', '', '', '', ''),
('1270011117', 2, '', 'Wahyu Ardiansyah', 'Pria', 'Naru Barat', '23/06/1994', '', '', 'Islam', 'NTB - Bima - Sape', 'Ahyar', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Sape', '', '', '', '', '', '', ''),
('1270011118', 2, '', 'Wahyu Sulistiyono', 'Pria', 'Demak', '22/02/1993', '', '', 'Islam', 'Kalimantan Barat Sintan Masuka Darat Gang Sepakat Rt. 5 Rw. 2 Kodepos78613', 'Kasudi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Aranday', '', '', '', '', '', '', ''),
('1270011119', 2, '', 'Wahyudi', 'Pria', 'Wonogiri', '18/04/1989', '', '', 'Islam', 'Gumuk Rt. 02 Rw. 16 Gunungan Manyaran Wonogiri 57662', 'Parto Suwito', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Wonogiri', '', '', '', '', '', '', ''),
('1270011120', 2, '', 'Widya Dennis Laksmi Pittosari', 'Wanita', 'Semarang', '03/12/1994', '', '', 'Islam', 'Jl. Sendang Rt. 6 Rw. 1 Kec. Bringin Kab. Semarang 50772 ', 'Widodo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Bringin', '', '', '', '', '', '', ''),
('1270011121', 2, '', 'Wiwit Tresmia', 'Wanita', 'Kab. Semarang', '20/02/1995', '', '', 'Katholik', 'Dsn. Sodong Rt. 4 Rw. 6, Kel. Genting Kec. Jambu Kab. Semarang', 'Yustinus Paiman', '', '', '', 0, '', '', 0, '', '', 'SMK Analis Kesehatan', '', '', '', '', '', '', ''),
('1270011122', 2, '', 'Yodha Permadi', 'Pria', 'Brebes', '08/11/1993', '', '', 'Islam', 'Ds. Pulosari Rt. 1 Rw. 1 Kec. Brebes Kab. Brebes', 'Edy Sartono', '', '', '', 0, '', '', 0, '', '', 'SMF Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('1270011123', 2, '', 'Yuliana Yalatifa', 'Wanita', 'Semarang', '18/07/1994', '', '', 'Islam', 'Jl. Margoyoso 2 Rt. 4 Rw. 4 No. 20 Ngaliyan Semarang 50185', 'Moh. Koeroni', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana AK Semarang', '', '', '', '', '', '', ''),
('1270011124', 2, '', 'Yunindra Isnaini Wardani', 'Wanita', 'Salatiga', '15/06/1994', '', '', 'Islam', 'Jl. Argowiyoto 262 Rt. 5 Rw. 2 Kel. Ledok, Kec. Argomulyo Salatiga ', 'Rekso Wardoyo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tengaran Kab. Smg', '', '', '', '', '', '', ''),
('1270011125', 2, '', 'Zakiya Rahmatul Hikami', 'Wanita', 'Semarang', '03/04/1994', '', '', 'Islam', 'Jl. Wahyu Temurun IV No. 2 Tlogosari Rt. 9 Rw. 21 Semarang 50196', 'Suhadi (Alm)', '', '', '', 0, '', '', 0, '', '', 'MAN 2 Semarang', '', '', '', '', '', '', ''),
('1270011126', 2, '', 'Zenti Kumalasari', 'Wanita', 'Blora', '17/10/1994', '', '', 'Islam', 'Jl. Sadewo Gg. Relban Rt. 4 Rw. 3 Kel. Bangkle Blora ', 'Djasmani', '', '', '', 0, '', '', 0, '', '', 'SMA 1 Blora', '', '', '', '', '', '', ''),
('1270011128', 2, '', 'Suci Mita Astuti', 'Wanita', 'Blora', '01/04/1993', '', '', 'Islam', 'Flores - NTT', 'Muhammad Ali', '', '', '', 0, '', '', 0, '', '', 'SMA PGRI Swastika Lewoleba', '', '', '', '', '', '', ''),
('3K120419', 2, '', 'Agus Mugiarto', 'Pria', 'Blora', '30/10/1992', '', '', 'Islam', 'Rt. 4 Rw. 5 Bulungan Pakis Aji Jepara 59452', 'Soedarsono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tahunan Jepara', '', '', '', '', '', '', ''),
('3K120420', 2, '', 'Ahmadi', 'Pria', 'Demak', '06/08/1987', '', '', 'Kristen', 'Tanjung Lapang, Jl. Rotan Rt. 8 No. 3 Malinau Barat Kalimantan Timur 77554', 'Bian Ngilo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Malinau', '', '', '', '', '', '', ''),
('3K120421', 2, '', 'Aisyah Retno Puspito Asri', 'Wanita', 'Magelang', '07/09/1994', '', '', 'Islam', 'Padi Utara Raya No. 16 Genuk Indah Semarang 50114', 'Ngomahwono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 11 Semarang', '', '', '', '', '', '', ''),
('3K120422', 2, '', 'Aisyatun Noor', 'Wanita', 'Jepara', '27/10/1994', '', '', 'Islam', 'Rasabou, Sape NTB', 'H. Yasin', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Sape', '', '', '', '', '', '', ''),
('3K120423', 2, '', 'Anisa Natalia', 'Wanita', 'Long Bawan', '24/12/1994', '', '', 'Islam', 'Ds. Gondoharum Tlogo Rt. 2 Rw. 2 Kec. Jekulo Kab. Kudus 59382 (Drs. Budiyono Saputro, M.Pd)', 'Jamil', '', '', '', 0, '', '', 0, '', '', 'SMA PGRI Kaliwungu Kudus', '', '', '', '', '', '', ''),
('3K120424', 2, '', 'Annies Zoraya Wahyuningratri', 'Wanita', 'Semarang', '21/06/1994', '', '', 'Islam', 'Jl. A. Yani Ds. Ngraji Rt. 5 Rw. 1 Purwodadi 58151', 'Djoko Sunarto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Toroh', '', '', '', '', '', '', ''),
('3K120425', 2, '', 'Arif Rahman', 'Pria', 'Rasabou-Sape', '10/12/1994', '', '', 'Islam', 'Jl. Pakunegara No. 68 Rt. 13 Kalimantan Tengah 74114', 'Arbani', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Pangkalan Bun', '', '', '', '', '', '', ''),
('3K120426', 2, '', 'Arika Andriani', 'Wanita', 'Kudus', '31/10/1992', '', '', 'Islam', 'Ds. Bonangrejo Rt. 4 Rw. I Kec. Bonang Kab. Demak', 'Akhmad', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Demak', '', '', '', '', '', '', ''),
('3K120427', 2, '', 'Arini Gestri Anandhita', 'Wanita', 'Grobogan', '02/08/1993', '', '', 'Islam', 'Ds. Cabean, Jl. Sekolahan Rt. 9 Rw. 1 Demak 59511', 'Supardi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Demak', '', '', '', '', '', '', ''),
('3K120428', 2, '', 'Arini Rafika', 'Wanita', 'Pangkalan Bun', '21/01/1995', '', '', 'Katholik', 'Kefamenanu NTT/TTU', 'Hironimus Oe Naimnou', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Insana', '', '', '', '', '', '', ''),
('3K120429', 2, '', 'Atik Fatmawati', 'Wanita', 'Demak', '30/11/1993', '', '', 'Islam', 'Jl. Graha Sendang Mulyo Blok JJ I/12 Rt. 12 Rw. 3 Semarang', 'Sri Mulyono', '', '', '', 0, '', '', 0, '', '', 'SMK Negeri 1 Semarang', '', '', '', '', '', '', ''),
('3K120430', 2, '', 'Ayu Oktavia Ardiyanti', 'Wanita', 'Demak', '06/10/1994', '', '', 'Islam', 'Ds. Sendangsoko Rt. 7 Rw. 2 Jakenan Pati 59182', 'Saryadi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Jakenan', '', '', '', '', '', '', ''),
('3K120431', 2, '', 'Benedikta Oe Naimnou', 'Wanita', 'Oenenu', '16/03/1996', '', '', 'Islam', 'Rt. 12 Rw. 04 Ds. Senenan Kec. Tahunan Kab. Jepara 59426 Jawa Tengah', 'Kasan', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tahunan Jepara', '', '', '', '', '', '', ''),
('3K120432', 2, '', 'Candra Ariawan', 'Pria', 'Semarang', '26/01/1993', '', '', 'Islam', 'Jurang Rt. 2 Rw. 3 No. 26 Gebog Kudus', 'Edy Suyanto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Kudus', '', '', '', '', '', '', ''),
('3K120433', 2, '', 'Dian Melisa', 'Wanita', 'Pati', '22/05/1994', '', '', 'Islam', 'Ds. Ngraji Rt. 5 Rw. 1 Purwodadi Grobogan 58151', 'Sukardjo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Purwodadi', '', '', '', '', '', '', ''),
('3K120434', 2, '', 'Dianita Meiratri', 'Wanita', 'Jepara', '28/05/1994', '', '', 'Kristen', 'Jl. Hayamwuruk No. 46 Purwodadi 58111', 'Putut Kusdianto', '', '', '', 0, '', '', 0, '', '', 'SMA Kristen Purwodadi', '', '', '', '', '', '', ''),
('3K120435', 2, '', 'Dita Mardiani Agustina', 'Wanita', 'Kudus', '06/08/1994', '', '', 'Islam', 'Bandaran Barat Rt. 7 Rw. 5 Kel. Bandarjo Kec. Ungaran Barat', 'Sugi', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana Semarang', '', '', '', '', '', '', ''),
('3K120436', 2, '', 'Dwi Setiyaningsih', 'Wanita', 'Grobogan', '17/01/1994', '', '', 'Islam', 'Jl. Baksokumis Selatan Ds. Patijangan Rt. 3 Rw. 7 Brebes ', 'Sukarjo', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi VPIB Brebes', '', '', '', '', '', '', ''),
('3K120437', 2, '', 'Dwi Yulianto', 'Pria', 'Purwodadi', '26/07/1994', '', '', 'Islam', 'Jl. Agil Kusumodiya No. 41 Rt. 1 Rw. 3 Kel. Kunden Kec. Blora', 'Jayono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('3K120438', 2, '', 'Emilia Sri Ayu Bintari', 'Wanita', 'Semarang', '08/01/1995', '', '', 'Islam', 'Jl. Borobudur Timur XIV Rt. 11 Rw. 9 Semarang  50148', 'Edy Supaliyo', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana AK Semarang', '', '', '', '', '', '', ''),
('3K120439', 2, '', 'Endah Dwi Wijayanti', 'Wanita', 'Brebes', '21/06/1993', '', '', 'Islam', 'Ds. Sayung Rt. 4 Rw. IV Belakang pasar Sayung Kec. Sayung Demak 59563', 'Sugiarto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Karangtengah', '', '', '', '', '', '', ''),
('3K120440', 2, '', 'Erza Wahyuni Asri', 'Wanita', 'Blora', '15/06/1994', '', '', 'Islam', 'Jl. Jatisari Rt. 9 Rw. 13 Kel. Gisikdrono Kec. Semarang Barat 50149', 'Nuryanto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 7 Semarang', '', '', '', '', '', '', ''),
('3K120441', 2, '', 'Evy Kartika Sari', 'Wanita', 'Semarang', '18/05/1994', '', '', 'Islam', 'Jl. Veteran No. 14 Bangkle Blora ', 'Agus Sutiyono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('3K120442', 2, '', 'Fajar Arif Saputra', 'Pria', 'Demak', '19/04/1994', '', '', 'Islam', 'Jl. Gatot Subroto III Rt. 7 Rw. 2 No. 47 Kel. Purwoyoso Kec. Ngaliyan Semarang 50184', 'Tarmin', '', '', '', 0, '', '', 0, '', '', 'SMA Kesatrian 1 Semarang', '', '', '', '', '', '', ''),
('3K120443', 2, '', 'Fanny Dian Aulia', 'Wanita', 'Semarang', '07/01/1994', '', '', 'Islam', 'Ujung Krawang Rt. 14 Rw. 5 Kel. Pulo Gebang Kec. Cakung Jakarta Timur 13950', 'Mustafid', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 83 Jakarta', '', '', '', '', '', '', ''),
('3K120444', 2, '', 'Fauji Bagus Susilo', 'Pria', 'Pati', '06/12/1994', '', '', 'Islam', 'Ds. Tegowanu Kulon Rt. 6 B Rw. 3 Kec. Tegowanu, Kab. Grobogan 58165', 'Hartoyo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Gubug', '', '', '', '', '', '', ''),
('3K120445', 2, '', 'Feni Dwi Rahayu', 'Wanita', 'Wonogiri', '22/06/1994', '', '', 'Islam', 'Kauman Kebondowo Rt. 2 Rw. 2 Ambarawa 50664', 'Safrodin', '', '', '', 0, '', '', 0, '', '', 'MAN Salatiga', '', '', '', '', '', '', ''),
('3K120446', 2, '', 'Fida Fitriyana', 'Wanita', 'Demak', '02/01/1994', '', '', 'Katholik', '', 'Oecusse Timor Leste', '', '', '', 0, '', '', 0, '', '', 'SMAK Mataram NTB', '', '', '', '', '', '', ''),
('3K120447', 2, '', 'Fiska Richayati', 'Wanita', 'Grobogan', '02/04/1994', '', '', 'Islam', 'Jl. Walakeam Rt. 7 Rw. 3 Kel. Lewoleba Kec. Nubatukan Lembata NTT', 'H. Syanong Dg. Sabbe', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana AK Semarang', '', '', '', '', '', '', ''),
('3K120448', 2, '', 'Fitria Puji Astuti', 'Wanita', 'Kab. Semarang', '05/08/1994', '', '', 'Islam', 'Jl. Jatisari II No. 19 Rt. 2 Rw. XIII Kel. Gisikdrono Semarang', 'Eko Agus Susanto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 14 Semarang', '', '', '', '', '', '', ''),
('3K120449', 2, '', 'Gil Firmino Do Rosario', 'Pria', 'Noapai', '10/12/1976', '', '', 'Islam', 'Duduhan Rt. 2 Rw. 5 Kec. Mijen Kel. Mijen Kotamadya Semarang 50218', 'Jonet', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 16 Semarang', '', '', '', '', '', '', ''),
('3K120450', 2, '', 'Hadriyanti', 'Wanita', 'Maros', '08/08/1994', '', '', 'Islam', 'Bukit Jatisari Permai Blok A9/12B Jl. Taman Jeruk 2 Semarang ', 'Budhi Puryanto', '', '', '', 0, '', '', 0, '', '', 'SMA Setiabudhi Semarang', '', '', '', '', '', '', ''),
('3K120451', 2, '', 'Hanifatur Rahmania', 'Wanita', 'Semarang', '31/10/1994', '', '', 'Islam', 'Gatak, Kopen, Teras, Boyolali Rt. 2 Rw. 7 Kd. Pos 57373', 'Haryana', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Bunyudono', '', '', '', '', '', '', ''),
('3K120452', 2, '', 'Hartati Firdaus', 'Wanita', 'Semarang', '26/04/1993', '', '', 'Kristen', 'Jl. Rambutan Ardipura III Jayapura Papua', 'Supriyadi Sukirno', '', '', '', 0, '', '', 0, '', '', 'SMK Kesehatan Jayapura', '', '', '', '', '', '', ''),
('3K120453', 2, '', 'Hilda Nisrina Azmi', 'Wanita', 'Semarang', '27/12/1992', '', '', 'Islam', 'Ds. Siwuluh Rt. 4 Rw. 3, Kec. Bulakamba, Kab. Brebes', 'Wirsad', '', '', '', 0, '', '', 0, '', '', 'SMF Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K120454', 2, '', 'Himatul Husnawati Devi', 'Wanita', 'Boyolali', '01/03/1994', '', '', 'Islam', 'Jl. KHA Dahlan IV/02 Blora 58213', 'Drs. EC Sigit Pribadi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('3K120455', 2, '', 'Ika Theresia Fiscarina Sukirno', 'Wanita', 'Jayapura', '11/10/1995', '', '', 'Islam', 'Wonowoso Rt. 3 Rw. 1 Demak Karangtengah 59561', 'Bakir Wartono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Karangtengah', '', '', '', '', '', '', ''),
('3K120456', 2, '', 'Intan Wulandari', 'Wanita', 'Brebes', '07/09/1994', '', '', 'Kristen', 'Ds. Sedadi, RT. 9 RW. 7 Kec. Penawangan Kab. Grobogan', 'Suwito', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Purwodadi', '', '', '', '', '', '', ''),
('3K120457', 2, '', 'Iyon Praditya', 'Pria', 'Grobogan', '04/05/1994', '', '', 'Islam', 'Pernasidi Rt. 1 Rw. 3 Kec. Cilongok Kab. Banyumas 53162 No. Hp 081804802089', 'Aksan Gunawan', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Wangon', '', '', '', '', '', '', ''),
('3K120458', 2, '', 'Kharis Usman', 'Pria', 'Demak', '27/12/1992', '', '', 'Islam', 'Ds. Pakijangan Dk. Bandar No. 38 Rt. 2 Rw. 9 Kel. Pakijangan Kec. Bulakamba Brebes (Jl. Bakso Kumis Keselatan Rt. 03 Rw. 07 Ds. Pakijangan)', 'Agus Sulaiman', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K120459', 2, '', 'Kristiyaningrum', 'Wanita', 'Grobogan', '01/01/1988', '', '', 'Islam', 'Wangandalem Rt. 2 Rw. 1 Kel. Wangandalem Kec. Brebes ', 'Suwanto', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K120460', 2, '', 'Lilis Luh Indahsari', 'Wanita', 'Banyumas', '13/06/1994', '', '', 'Islam', 'Ds. Mojowetan Rt. 9 Rw. 4 Banjarrejo Blora 58253', 'Sulkan', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('3K120461', 2, '', 'Luthfiyati Intan Diningrum', 'Wanita', 'Brebes', '20/08/1993', '', '', 'Katholik', 'Eban-Salu NTT-TTU 85661', 'Simon Ahoinnai', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Kefamenanu', '', '', '', '', '', '', '');
INSERT INTO `mahasiswa` (`nim`, `id_tahun`, `password`, `nama_mhs`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `no_nik`, `no_kk`, `agama`, `alamat`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `angkatan`, `nama_kelas`, `foto`, `id_progdi`, `no_hp`, `email`, `sekolah_asal`, `alamat_sekolah_asal`, `no_ijasah`, `nilai_masuk`, `sumber_info`, `pembawa`, `ukuran_jas`, `nama_dosen`) VALUES
('3K120462', 2, '', 'M. Khoerul Wahidin', 'Pria', 'Brebes', '26/04/1994', '', '', 'Kristen', 'Jl. Mangkudipuro Growong Kidul Rt. 1 Rw. 1 Juwana Pati 59185', 'Yakub Wakijan', '', '', '', 0, '', '', 0, '', '', 'SMA Nasional Pati', '', '', '', '', '', '', ''),
('3K120463', 2, '', 'Mafrukha Arbi Zulpriliana', 'Wanita', 'Blora', '13/04/1994', '', '', 'Islam', 'Rt. 7 Rw. 7 Sape Bima NTB 8184182', 'Syamsudin', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Sape', '', '', '', '', '', '', ''),
('3K120464', 2, '', 'Maria Yustina Ahoinnai', 'Wanita', 'Lemon', '14/01/1995', '', '', 'Islam', 'Ds. Montongsari Rt. 4 Rw. III Weleri Kendal 51355', 'Sugiman', '', '', '', 0, '', '', 0, '', '', 'SMA NU 03 Mu Allimin', '', '', '', '', '', '', ''),
('3K120465', 2, '', 'Marta Kristina', 'Wanita', 'Pati', '09/03/1994', '', '', 'Islam', 'Ds. Wonocolo Rt. 3 Rw. 7 Kec. Prembun Kab. Kebumen ', 'Siswandi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Mirit', '', '', '', '', '', '', ''),
('3K120466', 2, '', 'Maryam Ulfah', 'Wanita', 'Bima', '05/01/1994', '', '', 'Islam', 'Jl. Halmahera II No. 34 Rt. 2 Rw. 2 Blora 58214', 'Edris', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Blora', '', '', '', '', '', '', ''),
('3K120467', 2, '', 'Mega Aries Tantia', 'Wanita', 'Kendal', '05/01/1994', '', '', 'Islam', 'Dk. Dukoh Rt. 5 Rw. 3 Ds. Kedungtuban Kec. Kedungtuban Kab. Blora 58381', 'Samaudi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Cepu', '', '', '', '', '', '', ''),
('3K120468', 2, '', 'Mochamad Dhani Setiawan', 'Pria', 'Kebumen', '03/07/1994', '', '', 'Islam', 'Jl. Jayadirejo Rt. 2 Rw. 1 Randusari Tahunan Jepara 59427', 'Maslikhan Rosyid', '', '', '', 0, '', '', 0, '', '', 'MA Ma\'ahid Kudus', '', '', '', '', '', '', ''),
('3K120469', 2, '', 'Mohammad Aries Ma\'shum', 'Pria', 'Blora', '30/06/1981', '', '', 'Islam', 'Dukuh Bumirejo Rt. 02 Rw. 02 Kel. Jegang Kec. Jati Kab. Blora 58384', 'Parman', '', '', '', 0, '', '', 0, '', '', 'SMK Muhammadiyah Jati', '', '', '', '', '', '', ''),
('3K120470', 2, '', 'Muanalia', 'Wanita', 'Blora', '25/12/1994', '', '', 'Islam', 'Ds. Tanjung Rt. 5 Rw. 2 Kec. Kedungtuban Kab. Blora 58381', 'M. Kamari', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Cepu', '', '', '', '', '', '', ''),
('3K120471', 2, '', 'Nailla Risqi', 'Wanita', 'Jepara', '13/02/1994', '', '', 'Islam', 'Kapas Madya 3-A/52 Rt. 10 Rw. 1 Kel. Kapasmadya Baru Kec. Tambak Sari Surabaya 60134', 'Kundori', '', '', '', 0, '', '', 0, '', '', 'SMA Gita Bahari Smg', '', '', '', '', '', '', ''),
('3K120472', 2, '', 'Nanang Agung Rio Pradana', 'Pria', 'Blora', '13/04/1994', '', '', 'Islam', 'Ketapang Kalimantan Barat', 'Salina', '', '', '', 0, '', '', 0, '', '', 'MAN Ketapang', '', '', '', '', '', '', ''),
('3K120473', 2, '', 'Nawang Jerry Apriliyanti', 'Wanita', 'Blora', '23/04/1994', '', '', 'Islam', 'Bongsari Rt. 1 Rw. 2 Semarang 50148', 'Lilik Aryanto', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana AK Semarang', '', '', '', '', '', '', ''),
('3K120474', 2, '', 'Ndari Tri Lusiana Devi', 'Wanita', 'Surabaya', '11/03/1995', '', '', 'Islam', 'Jl. Dewi Sartika Barat I No. 45 Rt. 7 Rw. 3 Semarang', 'Muntari', '', '', '', 0, '', '', 0, '', '', 'SMK Muhammadiyah 2 Semarang', '', '', '', '', '', '', ''),
('3K120475', 2, '', 'Neneng Astika Saleh', 'Wanita', 'Ketapang', '01/10/1994', '', '', 'Islam', 'Brambang Rt. 4 Rw. 1 Kec. Karangawen Demak 59566', 'Suhardi', '', '', '', 0, '', '', 0, '', '', 'SMK Bakti Nusantara', '', '', '', '', '', '', ''),
('3K120476', 2, '', 'Nindya Pramudita', 'Wanita', 'Semarang', '31/07/1994', '', '', 'Islam', 'Ds. Nglandeyan Rt. 1 Rw. 1 Kec. Kedungtuban Kab. Blora 58381', 'Drs. Mudjiono', '', '', '', 0, '', '', 0, '', '', 'SMA 2 Cepu', '', '', '', '', '', '', ''),
('3K120477', 2, '', 'Novan Ardiyanto', 'Pria', 'Semarang', '29/11/1994', '', '', 'Islam', 'Ds. Talokwohmojo Rt. 6 Rw. 1 Ds. Talokwohmojo Kec. Ngawen Kab. Blora 58254', 'Mustakim', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Ngawen', '', '', '', '', '', '', ''),
('3K120478', 2, '', 'Ratna Widya Ichsanti', 'Wanita', 'Demak', '10/03/1990', '', '', 'Islam', 'Bantengan, Karanggede, Boyolali Rt. 2 Rw. 3 57381', 'Jamzuri', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Karanggede', '', '', '', '', '', '', ''),
('3K120479', 2, '', 'Reny Nur Solikhah', 'Wanita', 'Blora', '09/08/1994', '', '', 'Islam', 'Dk. Pecaren Rt. 1 Rw. 1 Kel. Semawur Kec. Ngawen Blora 58254', 'Tamyiz', '', '', '', 0, '', '', 0, '', '', 'SMK Annuroniyah Rembang', '', '', '', '', '', '', ''),
('3K120480', 2, '', 'Rika Yunita Pamelia', 'Wanita', 'Blora', '09/06/1992', '', '', 'Katholik', 'Flores - NTT', 'Aloysius', '', '', '', 0, '', '', 0, '', '', 'SMA PGRI Lewoleba', '', '', '', '', '', '', ''),
('3K120481', 2, '', 'Ristiyani', 'Wanita', 'Boyolali', '13/10/1994', '', '', 'Islam', 'Desa Jombang Rt. 2 Rw. 1 Ds. Jombang Kec. Ngombol 54172', 'Suparman', '', '', '', 0, '', '', 0, '', '', 'SMK Penabur Purworejo', '', '', '', '', '', '', ''),
('3K120482', 2, '', 'Rizki Ayu Safitri', 'Wanita', 'Blora', '23/10/1994', '', '', 'Islam', 'Ds. Kembang Rt. 2 Rw. 1 Kel. Kembang Kec. Banjarrejo Kab. Blora ', 'Sugiman', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Ngawen', '', '', '', '', '', '', ''),
('3K120483', 2, '', 'Saverius Adrianus Tupeng', 'Pria', 'Tagawiti', '28/08/1993', '', '', 'Islam', 'Taman Sari Rt. 2 Rw. 1 Kel. Bonjoklor Kec. Bonorowo Kebumen', 'Cipto Diharjo', '', '', '', 0, '', '', 0, '', '', 'MAN Kutowinagun', '', '', '', '', '', '', ''),
('3K120484', 2, '', 'Septi Ayu Wijayanti', 'Wanita', 'Purworejo', '19/09/1993', '', '', 'Katholik', 'Timor Leste', '', '', '', '', 0, '', '', 0, '', '', 'SMAK Mataram NTB', '', '', '', '', '', '', ''),
('3K120485', 2, '', 'Siti Fathia Wahyuningsih', 'Wanita', 'Blora', '12/03/1995', '', '', 'Islam', 'Kp. Genggongan Rt. 1 Rw. 2 Mangunjiwan Demak 59511', 'Dulrochman', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 3 Demak', '', '', '', '', '', '', ''),
('3K120486', 2, '', 'Siti Sholikhatun', 'Wanita', 'Kebumen', '10/08/1994', '', '', 'Islam', 'Ds. Sirahan Rt. 14 Rw. 6 Cluwak Kab. Pati ', 'Zuhadi', '', '', '', 0, '', '', 0, '', '', 'SMK Negeri 03 Pati', '', '', '', '', '', '', ''),
('3K120487', 2, '', 'Tomas Adelino', 'Pria', 'Viqueque', '13/04/1963', '', '', 'Islam', 'Jl. Ulin III D 117, Rt. 4 Rw. 12, Beji Ungaran Timur 50551', 'Suprayitno', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Ungaran', '', '', '', '', '', '', ''),
('3K120488', 2, '', 'Tutik Handayani', 'Wanita', 'Demak', '18/09/1993', '', '', 'Islam', 'NTB - Bima - Sape', 'Ahyar', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Sape', '', '', '', '', '', '', ''),
('3K120489', 2, '', 'Umma Farida', 'Wanita', 'Pati', '11/11/1992', '', '', 'Islam', 'Kalimantan Barat Sintan Masuka Darat Gang Sepakat Rt. 5 Rw. 2 Kodepos78613', 'Kasudi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Aranday', '', '', '', '', '', '', ''),
('3K120490', 2, '', 'Vici Dearasya', 'Wanita', 'Kab. Semarang', '07/07/1994', '', '', 'Islam', 'Gumuk Rt. 02 Rw. 16 Gunungan Manyaran Wonogiri 57662', 'Parto Suwito', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Wonogiri', '', '', '', '', '', '', ''),
('3K120491', 2, '', 'Wahyu Ardiansyah', 'Pria', 'Naru Barat', '23/06/1994', '', '', 'Islam', 'Jl. Sendang Rt. 6 Rw. 1 Kec. Bringin Kab. Semarang 50772 ', 'Widodo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Bringin', '', '', '', '', '', '', ''),
('3K120492', 2, '', 'Wahyu Sulistiyono', 'Pria', 'Demak', '22/02/1993', '', '', 'Katholik', 'Dsn. Sodong Rt. 4 Rw. 6, Kel. Genting Kec. Jambu Kab. Semarang', 'Yustinus Paiman', '', '', '', 0, '', '', 0, '', '', 'SMK Analis Kesehatan', '', '', '', '', '', '', ''),
('3K120493', 2, '', 'Wahyudi', 'Pria', 'Wonogiri', '18/04/1989', '', '', 'Islam', 'Ds. Pulosari Rt. 1 Rw. 1 Kec. Brebes Kab. Brebes', 'Edy Sartono', '', '', '', 0, '', '', 0, '', '', 'SMF Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K120494', 2, '', 'Widya Dennis Laksmi Pittosari', 'Wanita', 'Semarang', '03/12/1994', '', '', 'Islam', 'Jl. Margoyoso 2 Rt. 4 Rw. 4 No. 20 Ngaliyan Semarang 50185', 'Moh. Koeroni', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana AK Semarang', '', '', '', '', '', '', ''),
('3K120495', 2, '', 'Wiwit Tresmia', 'Wanita', 'Kab. Semarang', '20/02/1995', '', '', 'Islam', 'Jl. Argowiyoto 262 Rt. 5 Rw. 2 Kel. Ledok, Kec. Argomulyo Salatiga ', 'Rekso Wardoyo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tengaran Kab. Smg', '', '', '', '', '', '', ''),
('3K120496', 2, '', 'Yodha Permadi', 'Pria', 'Brebes', '08/11/1993', '', '', 'Islam', 'Jl. Wahyu Temurun IV No. 2 Tlogosari Rt. 9 Rw. 21 Semarang 50196', 'Suhadi (Alm)', '', '', '', 0, '', '', 0, '', '', 'MAN 2 Semarang', '', '', '', '', '', '', ''),
('3K120497', 2, '', 'Yuliana Yalatifa', 'Wanita', 'Semarang', '18/07/1994', '', '', 'Islam', 'Jl. Sadewo Gg. Relban Rt. 4 Rw. 3 Kel. Bangkle Blora ', 'Djasmani', '', '', '', 0, '', '', 0, '', '', 'SMA 1 Blora', '', '', '', '', '', '', ''),
('3K120498', 2, '', 'Yunindra Isnaini Wardani', 'Wanita', 'Salatiga', '15/06/1994', '', '', 'Islam', 'Jl. Kisoreng II No. 8 Blora', 'Muhadi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('3K120499', 2, '', 'Zakiya Rahmatul Hikami', 'Wanita', 'Semarang', '03/04/1994', '', '', 'Katholik', 'NTT - Lembata - Lebatukan ', 'Lambertus Raja', '', '', '', 0, '', '', 0, '', '', 'SMK St. Thomas Maumere', '', '', '', '', '', '', ''),
('3K120500', 2, '', 'Zenti Kumalasari', 'Wanita', 'Blora', '17/10/1994', '', '', 'Islam', 'Ds. Bekutuk Rt. 03 Rw. 01 Kel. Bekutuk Kec. Randublatung Kab. Blora', 'Ramijan', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Randublatung', '', '', '', '', '', '', ''),
('3K130538', 3, '', 'Agata Vania Mahari', 'Wanita', 'Semarang', '13/03/1995', '', '', 'Katholik', 'Jl. Pustaka I 81/A, Sukorejo, Sekaran, Trangkil, Semarang 50222', 'Alb. Nowo Tedjo', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana Analis Kesehatan Semarang', '', '', '', '', '', '', ''),
('3K130539', 3, '', 'Agrita Intan Kusmayanti', 'Wanita', 'Kab. Semarang', '17/01/1995', '', '', 'Islam', 'Lodoyong Rt. 06 Rw. 05 Ambarawa 50611', 'Edy Sukiyanto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Ambarawa', '', '', '', '', '', '', ''),
('3K130540', 3, '', 'Agus Romdhoni', 'Pria', 'Demak', '08/02/1995', '', '', 'Islam', 'Tangkis Guntur Demak Rt. 04 Rw. 01', 'Montahar', '', '', '', 0, '', '', 0, '', '', 'SMA Terpadu Abul Faidl Wonodadi Kab. Blitar', '', '', '', '', '', '', ''),
('3K130541', 3, '', 'Agustina Uwuratu', 'Wanita', 'Saumlaki', '07/01/1995', '', '', 'Kristen', 'Gunung Nona Saumlaki Maluku Tenggara Barat ', 'Imanuel Uwuratu', '', '', '', 0, '', '', 0, '', '', 'SMA Kristen Saumlaki Maluku Tenggara Brt', '', '', '', '', '', '', ''),
('3K130542', 3, '', 'Ajrina Kemala Hapsari', 'Wanita', 'Semarang', '06/04/1995', '', '', 'Islam', 'Jl. Gergaji III/1117A Kel. Mugassari Semarang', 'Suryati', '', '', '', 0, '', '', 0, '', '', 'SMA Kesatrian 1 Semarang', '', '', '', '', '', '', ''),
('3K130543', 3, '', 'Anggita Citra Dewi Saraswati', 'Wanita', 'Semarang', '12/08/1995', '', '', 'Islam', 'Jl. Sriwidodo Utara VII Rt. 03 Rw. 02 Kel. Purwoyoso Kec. Ngaliyan Semarang ', 'Pramono Aji B', '', '', '', 0, '', '', 0, '', '', 'SMA Muhammadiyah 1 Semarang', '', '', '', '', '', '', ''),
('3K130544', 3, '', 'Anisa Rahma Jati', 'Wanita', 'Banyumas', '04/12/1994', '', '', 'Islam', 'Lesmana Rt. 01 Rw. 04 Kec. Ajibarang Kab. Banyumas 53163', 'Kasto Syahbani', '', '', '', 0, '', '', 0, '', '', 'SMK Ma\'arif NU 2 Ajibarang Banyumas', '', '', '', '', '', '', ''),
('3K130545', 3, '', 'Annisa Frisky Ayu', 'Wanita', 'Jakarta', '18/06/1995', '', '', 'Islam', 'Pondok Ungu Permai Sektor V Blok C11 No. 29 Rt. 007 Rw. 022 Kel. Bahagia Kec. Babelan Bekasi Jawa Barat 17612  ', 'Kristopa H', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Banjar, Kota Banjar', '', '', '', '', '', '', ''),
('3K130546', 3, '', 'Ari Hidayah Pradanawati', 'Wanita', 'Temanggung', '25/01/1995', '', '', 'Islam', 'Jl. Pahlawan I No. 78 Rt. 10 Rw. 2 Kebondalem Kendal ', 'Drs. Abdul Hamid Pujiyanto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Kendal', '', '', '', '', '', '', ''),
('3K130547', 3, '', 'Arief Mulyanda', 'Pria', 'Tegal', '12/06/1995', '', '', 'Islam', 'Jl. Merpati Gg. Kuntul No. 11 Rt. 02 Rw. 07 Tegal', 'Harto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 5 Tegal', '', '', '', '', '', '', ''),
('3K130548', 3, '', 'Arif Ade Irawan', 'Pria', 'Brebes', '13/05/1995', '', '', 'Islam', 'Desa Tegalglagah Rt. 05 Rw. 08 Kec. Bulakamba Kab. Brebes 52253', 'Haryoto', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K130549', 3, '', 'Asri Yulianingtyas', 'Wanita', 'Kendal', '06/07/1995', '', '', 'Islam', 'Desa Peron Rt. 4 Rw. 3 Kec. Limbangan Kab. Kendal', 'Istuhri', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Limbangan Kendal', '', '', '', '', '', '', ''),
('3K130550', 3, '', 'Ayu Arista', 'Wanita', 'Tangerang', '17/03/1995', '', '', 'Islam', 'Desa Payang Rt. 04 Rw. 04 Pati 59151', 'Aris Widiyono', '', '', '', 0, '', '', 0, '', '', 'SMK Negeri 3 Pati', '', '', '', '', '', '', ''),
('3K130551', 3, '', 'Baeti Nur Wardani', 'Wanita', 'Banjarnegara', '26/03/1995', '', '', 'Islam', 'Mandiraja Wetan Rt. 06 Rw. 02 Kec. Mandiraja Banjarnegara 53473', 'Hadi Suseno', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Purwareja Klampok Banjarnegara', '', '', '', '', '', '', ''),
('3K130552', 3, '', 'Bagus Putra Purnama', 'Pria', 'Wonogiri', '08/09/1995', '', '', 'Kristen', 'Eromoko Kulon Rt. 04 Rw. 02 Eromoko Wonogiri 57663', 'Heri Purnomo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Wonogiri', '', '', '', '', '', '', ''),
('3K130553', 3, '', 'Candra Pradipta Prasastianto', 'Pria', 'Demak', '12/06/1995', '', '', 'Islam', 'Gg. Pringgondani IV Rt. 07 Rw. 04 Cabean Kec. Demak Kab. Demak', 'Suyoto', '', '', '', 0, '', '', 0, '', '', 'SMK Negeri 1 Demak', '', '', '', '', '', '', ''),
('3K130554', 3, '', 'Cindy Aditya Anggraini', 'Wanita', 'Medan', '19/05/1996', '', '', 'Islam', 'Nglimut Rt. 05 Rw. 01 Gonoharjo Kec. Limbangan Kab. Kendal', 'Fadholin', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Boja', '', '', '', '', '', '', ''),
('3K130555', 3, '', 'Daniel Apriadi Siahaan', 'Pria', 'Jakarta', '18/04/1992', '', '', 'Kristen', 'Jl. Belimbing Raya Blok RA No. 05 Rt. 07 Rw. 020 Jakarta', 'F. Siahaan', '', '', '', 0, '', '', 0, '', '', 'SMA Diponegoro 2 Jakarta', '', '', '', '', '', '', ''),
('3K130556', 3, '', 'David Arzani', 'Pria', 'Jepara', '18/07/1994', '', '', 'Islam', 'Kelet Keling Jepara Rt. 19 Rw. 03 Jepara 59454', 'Sutarjo', '', '', '', 0, '', '', 0, '', '', 'MAN 2 Jepara', '', '', '', '', '', '', ''),
('3K130557', 3, '', 'Dia Mumarisa', 'Wanita', 'Tegal', '23/12/1994', '', '', 'Islam', 'Jl. Kajenegan No. 25 Yamansari Lebaksiu Kab. Tegal Rt. 05 Rw. 08 Kodepos : 52461', 'Makhdori', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Slawi', '', '', '', '', '', '', ''),
('3K130558', 3, '', 'Diah Laily Rizqi', 'Wanita', 'Kendal', '11/05/1995', '', '', 'Islam', 'Kp. Kauman Kidul II Rt. 03 Rw. V Ds. Sarirejo Kec. Kaliwungu Kendal 51372', 'Mat Rochim', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Kaliwungu Kendal', '', '', '', '', '', '', ''),
('3K130559', 3, '', 'Diyan Puspita Sari', 'Wanita', 'Jepara', '11/09/1994', '', '', 'Islam', 'Rt. 03 Rw. 07 Desa Jerukwangi Bangsri Jepara', 'Suyitno', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Mlonggo Jepara', '', '', '', '', '', '', ''),
('3K130560', 3, '', 'Dian Seminar', 'Pria', 'Blora', '16/12/1985', '', '', 'Islam', 'Jl. Ahmad Yani Gang V Rt. 5 Rw. 1 Karang Jati Blora 58219', 'Mardi Utomo', '', '', '', 0, '', '', 0, '', '', 'SMA Katholik Wijaya Kusuma Blora', '', '', '', '', '', '', ''),
('3K130561', 3, '', 'Difta Kartika Wulan Sari', 'Wanita', 'Madiun', '03/01/1995', '', '', 'Islam', 'Desa Tamanrejo Tunjungan Rt. 08 Rw. 04 Blora 58252', 'Suparno', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tunjungan Blora', '', '', '', '', '', '', ''),
('3K130562', 3, '', 'Dimas Adrianto Putro', 'Pria', 'Semarang', '06/10/1995', '', '', 'Kristen', 'Pondok Raden Patah Blok B1/22 Rt. 03 Rw. 03 Sayung Demak 59563', 'Sugiarto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 10 Semarang', '', '', '', '', '', '', ''),
('3K130563', 3, '', 'Dizi Pratama Arum Haryana', 'Wanita', 'Banyumas', '18/01/1996', '', '', 'Islam', 'Tipar Kidul Rt. 01 Rw. 10 Kec. Ajibarang Kab. Banyumas 53163', 'Haryono', '', '', '', 0, '', '', 0, '', '', 'SMK Ma\'arif NU 2 Ajibarang Banyumas', '', '', '', '', '', '', ''),
('3K130564', 3, '', 'Dwi Ariska Sari', 'Wanita', 'Kendal', '19/03/1995', '', '', 'Islam', 'Desa Purwokerto Kec. Brangsong Rt. 03 Rw. 03 Kendal 51371', 'Isnanto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Kendal ', '', '', '', '', '', '', ''),
('3K130565', 3, '', 'Dwi Aryanti', 'Wanita', 'Banyumas', '20/01/1995', '', '', 'Islam', 'Ajibarang Kulon Rt. 05 Rw. 08 Ajibarang Banyumas 53163', 'Bisri', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri Ajibarang Banyumas', '', '', '', '', '', '', ''),
('3K130566', 3, '', 'Dwi Lutfian Rudy Rustanto', 'Pria', 'Semarang', '23/12/1994', '', '', 'Islam', 'Jl. Gunung Jati Utara V No. 124 Rt. 03 Rw. II Kel. Wonosari Kec. Ngaliyan Semarang', 'Ruslan', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 6 Semarang', '', '', '', '', '', '', ''),
('3K130567', 3, '', 'Dwi Wahyudi', 'Pria', 'Demak', '12/04/1995', '', '', 'Islam', 'Sayung Demak Rt. 01 Rw. 01', 'Mujiono', '', '', '', 0, '', '', 0, '', '', 'MA Ibrohimiyyah Brumbung Mranggen Demak', '', '', '', '', '', '', ''),
('3K130568', 3, '', 'Dyah Ayu Kunti Hapsari', 'Wanita', 'Semarang', '28/02/1992', '', '', 'Islam', 'Jl. Ringin Telu Rt. 08 Rw. 01 Semarang 50183', 'Agus Mintono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 6 Semarang', '', '', '', '', '', '', ''),
('3K130569', 3, '', 'Dyah Pudmasari', 'Wanita', 'Semarang', '09/11/1992', '', '', 'Islam', 'Ngadirgo Rt. 03 Rw. 02 Mijen Semarang 50213', 'Sri Martini', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 16 Semarang', '', '', '', '', '', '', ''),
('3K130570', 3, '', 'Eko Haryanto', 'Pria', 'Brebes', '03/04/1996', '', '', 'Islam', 'Tegal glagah Rt. 01 Rw. 08 Kec. Bulakamba Kab. Brebes 52253', 'Joko Hantoro', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K130571', 3, '', 'Endesyana Noorjanah', 'Wanita', 'Semarang', '07/06/1995', '', '', 'Islam', 'Jl. Karonsih Timur Raya II No. 30 Semarang', 'Edy Munadi', '', '', '', 0, '', '', 0, '', '', 'SMA Kesatrian 1 Semarang', '', '', '', '', '', '', ''),
('3K130572', 3, '', 'Fahry Alfian Firmansyah', 'Pria', 'Blora', '19/10/1995', '', '', 'Islam', 'Jl. Kapuas 27A Kedungjenar Blora', 'Ary Prijono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tunjungan Blora', '', '', '', '', '', '', ''),
('3K130573', 3, '', 'Farah Audia Kundani', 'Wanita', 'Semarang', '20/01/1995', '', '', 'Islam', 'Jl. Pedurungan Tengah IV No. 17 Semarang', 'Maskun', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 11 Semarang', '', '', '', '', '', '', ''),
('3K130574', 3, '', 'Fernanda Dyah Ayuk Aspryantika', 'Wanita', 'Semarang', '01/09/1995', '', '', 'Kristen', 'Jl. Wologito Barat I Rt. 09 Rw. 05 Semarang', 'Supriyanto', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana Analis Kesehatan Semarang', '', '', '', '', '', '', ''),
('3K130575', 3, '', 'Fery Hertianto', 'Pria', 'Semarang', '12/02/1995', '', '', 'Islam', 'Jl. Rorojonggrang Timur XIII No. 49 Rt. 01 Rw. 09 Semarang', 'Heru Purwanto', '', '', '', 0, '', '', 0, '', '', 'SMA Setiabudhi Semarang', '', '', '', '', '', '', ''),
('3K130576', 3, '', 'Fitra Alfi Fidyati', 'Wanita', 'Brebes', '21/02/1995', '', '', 'Islam', 'Langkap Gembol Rt. 02 Rw. 04 Bumiayu Brebes 52273', 'Taksan', '', '', '', 0, '', '', 0, '', '', 'SMA Islam T. Huda Bumiayu Brebes ', '', '', '', '', '', '', ''),
('3K130578', 3, '', 'Fitri Suciana Subekti', 'Wanita', 'Semarang', '26/03/1995', '', '', 'Islam', 'Jl. Erowati IV/25 Semarang', 'Joko Budijanto', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana Analis Kesehatan Semarang', '', '', '', '', '', '', ''),
('3K130579', 3, '', 'Hermin Sri Rahayu', 'Wanita', 'Blora', '01/07/1995', '', '', 'Islam', 'Desa Kemiri Rt. 03 Rw. 02 Kec. Kunduran Kab. Blora 58255', 'Parjono', '', '', '', 0, '', '', 0, '', '', 'SMA Muhammadiyah 1 Blora', '', '', '', '', '', '', ''),
('3K130580', 3, '', 'Herssy Wahyuliningsih', 'Wanita', 'Rembang', '22/07/1995', '', '', 'Islam', 'Jl. Pemuda No. 34 A Rembang 59217', 'Ibu Sri Handriyati', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Sulang Rembang', '', '', '', '', '', '', ''),
('3K130581', 3, '', 'Ika Nur Latifah', 'Wanita', 'Semarang', '09/06/1995', '', '', 'Islam', 'Rt. 03 Rw. 3 Korowelanganyar Cepiring Kendal 51352', 'Kiswadi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Kendal', '', '', '', '', '', '', ''),
('3K130582', 3, '', 'Ina Agustina', 'Wanita', 'Jakarta', '01/08/1995', '', '', 'Islam', 'Cikande permai Blok A3 No. 25 Desa Situ Teratai Kab. Serang Banten 42186', 'Rusli', '', '', '', 0, '', '', 0, '', '', 'MAN Balaraja Kab. Tangerang', '', '', '', '', '', '', ''),
('3K130583', 3, '', 'Indah Purhandini', 'Wanita', 'Pati', '25/12/1995', '', '', 'Islam', 'Desa Tayuwetan Rt. 06 Rw. 01 Tayu Pati 59155', 'Suwito Slamet', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tayu Pati', '', '', '', '', '', '', ''),
('3K130584', 3, '', 'Indah Suswanti Khoerunnisah', 'Wanita', 'Brebes', '17/01/1995', '', '', 'Islam', 'Jl. Pakijangan Rt. 01 Rw. 01 No. 20 Kel. Pakijangan Kec. Bulakamba Kab. Brebes', 'Rusbad', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K130585', 3, '', 'Indari Hari Bastuti', 'Wanita', 'Blora', '08/06/1995', '', '', 'Islam', 'Dukuh Pekuwon Kidul Desa Gabusan Kec. Jati Kab. Blora 58384 ', 'Sadiman', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Randublatung Blora', '', '', '', '', '', '', ''),
('3K130586', 3, '', 'Ines Intan Swastika', 'Wanita', 'Kendal', '31/08/1995', '', '', 'Katholik', 'Nawangsari Rt. 5 Rw. 1 No. 17 Kec. Weleri Kab. Kendal 51355', 'Konteng Sujatmiko', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana Analis Kesehatan Semarang', '', '', '', '', '', '', ''),
('3K130587', 3, '', 'Inike Safitri Eva Ayu Kusuma W', 'Wanita', 'Blora', '21/12/1995', '', '', 'Islam', 'Jl. Cendana No. 50A Desa Beran Rt. 1 Rw. 2 Blora 58216', 'Bambang Sujatmiko', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Blora', '', '', '', '', '', '', ''),
('3K130588', 3, '', 'Inneke Kusuma Dewi', 'Wanita', 'Ngawi', '09/09/1995', '', '', 'Islam', 'Jl. Mawar No. 17 Mantingan Ngawi Jawa Timur', 'Kapandi Baskoro', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K130589', 3, '', 'Intan Permata Sari', 'Wanita', 'Brebes', '04/03/1995', '', '', 'Islam', 'Jl. KH. Ahmad Dahlan No. 24 Rt. 04 Rw. 03 Pasarbatang Brebes 52122', 'Azwar Chan', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K130590', 3, '', 'Isminar', 'Wanita', 'Grobogan', '14/03/1996', '', '', 'Islam', 'Dusun Centhong Rt. 07 Rw. 06 Desa Bendoharjo Kec. Gabus Kab. Grobogan', 'Jumadi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Purwodadi', '', '', '', '', '', '', ''),
('3K130591', 3, '', 'Kunta Porba Subrata', 'Pria', 'Kab. Semarang', '26/02/1995', '', '', 'Islam', 'Desa Bringin Rt. 03 Rw. 03 Kec. Bringin Kab. Semarang', 'Sudanar', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Bringin Semarang', '', '', '', '', '', '', ''),
('3K130592', 3, '', 'Kwik Vida Arianti Hadinata', 'Wanita', 'Semarang', '15/11/1995', '', '', 'Kristen', 'Jl. Gajah Barat VI/9 Rt. 06 Rw. 09 Semarang 50167', 'Kwi Liu Hok', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana Analis Kesehatan Semarang', '', '', '', '', '', '', ''),
('3K130593', 3, '', 'Laeli Ma\'rifah', 'Wanita', 'Banyumas', '04/09/1995', '', '', 'Islam', 'Langgong Sari Rt. 03 Rw. 03 Kec. Cilongok Kab. Banyumas 53162', 'Muhdir', '', '', '', 0, '', '', 0, '', '', 'SMK Ma\'arif NU 2 Ajibarang Banyumas', '', '', '', '', '', '', ''),
('3K130594', 3, '', 'Lailatul Mukarromah', 'Wanita', 'Banyumas', '30/04/1993', '', '', 'Islam', 'Desa Ajibarang Wetan Rt. 02 Rw. XI Kec. Ajibarang Kab. Banyumas 53163', 'Agus Salim', '', '', '', 0, '', '', 0, '', '', 'SMK Ma\'arif NU 2 Ajibarang Banyumas', '', '', '', '', '', '', ''),
('3K130595', 3, '', 'Mai Kristiana', 'Wanita', 'Blora', '26/05/1996', '', '', 'Islam', 'Jl. Jatirogo Rt. 03 Rw. 03 Desa Jepon Kab. Blora 58261', 'Suyatin', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tunjungan Blora', '', '', '', '', '', '', ''),
('3K130596', 3, '', 'Maria Ulfa Putri Ahsanty', 'Wanita', 'Semarang', '18/06/1996', '', '', 'Islam', 'Dukuh Secekel Rt. 02 Rw. II Kel. Jatibarang Mijen Semarang', 'H. Mardi A Fauzi', '', '', '', 0, '', '', 0, '', '', 'SMK Palapa Semarang', '', '', '', '', '', '', ''),
('3K130597', 3, '', 'Maulina Nur Cahyani', 'Wanita', 'Magelang', '06/09/1995', '', '', 'Islam', 'Karang Kulon Rt. 01 Rw. 06 Pucang Secang Magelang', 'Muh. Syahrir', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Grabag Magelang', '', '', '', '', '', '', ''),
('3K130598', 3, '', 'Mochamad Aryanto', 'Pria', 'Grobogan', '13/07/1995', '', '', 'Islam', 'Kab. Grobogan Kec. Kradenan Rejosari Rt. 04 Rw. 02 58182', 'Parno', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Kradenan Grobogan', '', '', '', '', '', '', ''),
('3K130599', 3, '', 'Munawar Slamet Hidayah', 'Pria', 'Madiun', '17/06/1995', '', '', 'Islam', 'Jl. Nanas No. 137 Rt. 26 Rw. 03 Kec. Balerejo Kab. Madiun 63152', 'Paidjo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Mejayan Kab. Madiun', '', '', '', '', '', '', ''),
('3K130600', 3, '', 'Mustikowati Ummul Latifah', 'Wanita', 'Demak', '05/01/1995', '', '', 'Islam', 'Sari, Gajah, Demak Rt. 07 Rw. 02', 'M. Busro Latief', '', '', '', 0, '', '', 0, '', '', 'MA Al Irsyad Gajah Demak', '', '', '', '', '', '', ''),
('3K130601', 3, '', 'Mutiara Eka El Pradita', 'Wanita', 'Brebes', '22/11/1994', '', '', 'Islam', 'Jl. Mawar No. 59 Rt. 03 Rw. 01 Pakijangan Brebes', 'Kusnadi', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K130602', 3, '', 'Nizar Ibnu Haqiqi', 'Pria', 'Banyumas', '11/11/1994', '', '', 'Islam', 'Ajibarang Kab. Banyumas Darmakradenan Rt. 02 Rw. 03 ', 'Kasmin', '', '', '', 0, '', '', 0, '', '', 'SMK Ma\'arif NU 2 Ajibarang Banyumas', '', '', '', '', '', '', ''),
('3K130603', 3, '', 'Nofa Nuralifda', 'Wanita', 'Blora', '05/09/1995', '', '', 'Islam', 'Desa Kapuan Kec. Cepu Kab. Blora', 'Mutakim', '', '', '', 0, '', '', 0, '', '', 'MAN 1 Bojonegoro ', '', '', '', '', '', '', ''),
('3K130604', 3, '', 'Nur Annisaa\'', 'Wanita', 'Kendal', '26/07/1994', '', '', 'Islam', 'Jl. Raya No. 102 B Kp. Sarimanan Tengah Rt. 03 Rw. 04 Kel. Kutoharjo Kec. Kaliwungu Kab. Kendal 51372', 'Suranto', '', '', '', 0, '', '', 0, '', '', 'SMK Texmaco Semarang', '', '', '', '', '', '', ''),
('3K130605', 3, '', 'Nur Arsyita Rakhma Dewi', 'Wanita', 'Brebes', '03/04/1995', '', '', 'Islam', 'Perum Griya Praja Jl. Bengkirai 3 No. 9 Rt. 04 Rw. XIII Pasar Batang Brebes 52212', 'Rodi', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K130606', 3, '', 'Nur Ela Marfika', 'Wanita', 'Brebes', '03/04/1996', '', '', 'Islam', 'Jl. Imam Bonjol Rt. 06 Rw. 04 No. 29 Komplek Nelayan Desa Pesantunan Kec. Wanasari Kab. Brebes Kode pos 52212 ', 'Darya', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K130607', 3, '', 'Nur Fazira Paris Fuad', 'Wanita', 'Fak Fak', '18/10/1994', '', '', 'Islam', 'Jl. Mangga Klademak IIB Sorong Papua Barat', 'Muchsin Paris', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 3 Kota Sorong', '', '', '', '', '', '', ''),
('3K130608', 3, '', 'Nur Indah Heri Christanti', 'Wanita', 'Ngawi', '18/05/1995', '', '', 'Islam', 'Desa Keras Kulon Rt. 001 Rw. 005 Kec. Gerih, Kab. Ngawi', 'Hari Wiyono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Barat', '', '', '', '', '', '', ''),
('3K130609', 3, '', 'Nur Lisa Meilani', 'Wanita', 'Semarang', '19/05/1994', '', '', 'Islam', 'Jl. Tambak Aji Rt. 03 Rw. XIII Tambak Aji Ngaliyan Semarang', 'Sukirno', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 6 Semarang', '', '', '', '', '', '', ''),
('3K130610', 3, '', 'Nurul Rochmah Anggraeni', 'Wanita', 'Semarang', '12/06/1995', '', '', 'Islam', 'Jl. Borobudur Timur III Rt. 3 Rw. 9 Semarang', 'Marwoto', '', '', '', 0, '', '', 0, '', '', 'SMA Setiabudhi Semarang', '', '', '', '', '', '', ''),
('3K130611', 3, '', 'Parita Suci', 'Wanita', 'Demak', '26/05/1995', '', '', 'Islam', 'Jalan Sekolahan No. 69 Rt. 02 Rw. 02 Cabean Demak 59551', 'Syeh Nuryatin', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Demak ', '', '', '', '', '', '', ''),
('3K130612', 3, '', 'Prisca Ardiana', 'Wanita', 'Pati', '16/07/1995', '', '', 'Islam', 'Desa Trimulyo Rt. 04 Rw. 02 Juwana Pati 59185', 'Suroso', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Rembang', '', '', '', '', '', '', ''),
('3K130613', 3, '', 'Putri Ridho Ramadhan', 'Wanita', 'Grobogan', '09/02/1995', '', '', 'Islam', 'Dusun Pangkalan Desa Pangkalan Rt. 08 Rw. 02 Kec. Karangrayung Kab. Grobogan 58163', 'Abdul Muis', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Karangrayung Grobogan ', '', '', '', '', '', '', ''),
('3K130614', 3, '', 'Retno Sanjaya', 'Pria', 'Jember', '07/11/1994', '', '', 'Islam', 'Dusun Barat Rt. 5 Rw. 16 Kalisat Jember 68193', 'Bambang Sugiyo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri Kalisat Kab. Jember', '', '', '', '', '', '', ''),
('3K130615', 3, '', 'Riska Kusumaringtyas', 'Wanita', 'Air Dikit', '16/09/1995', '', '', 'Islam', 'Rt. 01 Rw. 02 Desa Bukit Raya Kec. Menthobi Raya, Kab. Lamandau Kalteng 74668', 'Muslimin', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Menthobi Raya Lamandau', '', '', '', '', '', '', ''),
('3K130616', 3, '', 'Riska Rusdiana', 'Wanita', 'Kebumen', '20/09/1995', '', '', 'Islam', 'Kambalan Rt. 01 Rw. 04, Kembangsawit Ambal Kebumen', 'Rusmaryanto', '', '', '', 0, '', '', 0, '', '', 'MAN Kebumen 1', '', '', '', '', '', '', ''),
('3K130617', 3, '', 'Rizki Rahma Putri', 'Wanita', 'Kendal', '01/07/1995', '', '', 'Islam', 'Desa Kumpulrejo Rt. 01 Rw. III Kec. Kaliwungu Kab. Kendal 51372', 'Mulyono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Kendal', '', '', '', '', '', '', ''),
('3K130618', 3, '', 'Rizta Julian Mahandani', 'Wanita', 'Semarang', '07/07/1996', '', '', 'Islam', 'Jl. Tarupolo Tengah Rt. 08 Rw. 10 No. 46 Kel. Gisikdrono Kec. Semarang Barat 50149', 'Septianto Adi Nugroho', '', '', '', 0, '', '', 0, '', '', 'SMK Setiabudhi Semarang', '', '', '', '', '', '', ''),
('3K130619', 3, '', 'Rohimatun Mawaddah', 'Wanita', 'Bali', '11/05/1995', '', '', 'Islam', 'SDN 1 Candikuning Desa Candikuning II Baturiti Tabanan Bali 82191', 'Gatot Ahmadyani', '', '', '', 0, '', '', 0, '', '', 'MA Nurul Jadid Paiton Probolinggo Jatim', '', '', '', '', '', '', ''),
('3K130620', 3, '', 'Rokhmi Irmawati', 'Wanita', 'Brebes', '28/11/1994', '', '', 'Islam', 'Jl. Jatibarang Brebes Desa Pemaron Waru Rt. 01 Rw. 02 No. 9 Brebes', 'H. Riswad', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K130621', 3, '', 'Rosalinda Fatmala Gosman', 'Wanita', 'Kudus', '29/07/1995', '', '', 'Islam', 'Jati Kulon gg. 7 atau gg. Perbatasan Rt. 04 Rw. 04 No. 348 Kudus ', 'Rijinarto Turiman', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Bae Kudus', '', '', '', '', '', '', ''),
('3K130622', 3, '', 'Saiful Adi Wibowo', 'Pria', 'Jepara', '17/03/1995', '', '', 'Islam', 'Jepara 154 Mulyoharjo Gudang Sawo', '', '', '', '', 0, '', '', 0, '', '', 'SMA PGRI Jepara', '', '', '', '', '', '', ''),
('3K130623', 3, '', 'Sella Novita Ardiani', 'Wanita', 'Demak', '16/04/1996', '', '', 'Islam', 'Desa Harjowinangun Rt. 7 Rw. 1 Demak', 'Suprayitno', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Demak ', '', '', '', '', '', '', ''),
('3K130624', 3, '', 'Septiana Kevin Wulandari', 'Wanita', 'Blora', '01/09/1995', '', '', 'Islam', 'Desa Bedingin Rt. 09 Rw. 02 Kec. Todanan Kab. Blora 58256', 'Sugiono', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('3K130625', 3, '', 'Shinta Nindy Avista', 'Wanita', 'Jakarta', '18/11/1995', '', '', 'Islam', 'Jl. Abadi Desa Pepedan Rt. 01 Rw. 05 Kec. Dukuhturi Kab. Tegal 52192', 'Rasman', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Tegal', '', '', '', '', '', '', ''),
('3K130626', 3, '', 'Sinta Rizki Frisahara', 'Wanita', 'Brebes', '30/04/1995', '', '', 'Islam', 'Desa Pulosari No. 39 Rt. 01 Rw. 01 Brebes 52212 (Sertikat PKL) Kirim', 'Prawoto', '', '', '', 0, '', '', 0, '', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K130627', 3, '', 'Sirot Alfauzi', 'Pria', 'Kebumen', '29/08/1995', '', '', 'Islam', 'Desa Tlogorejo Rt. 02 Rw. 02 Kec. Bonorowo Kab. Kebumen ', 'H. Moch Mansur', '', '', '', 0, '', '', 0, '', '', 'MAN Kutowinangun Kebumen', '', '', '', '', '', '', ''),
('3K130628', 3, '', 'Siska Febri Riyani', 'Wanita', 'Grobogan', '29/08/1995', '', '', 'Islam', 'Dusun Pulorejo Rt. 01 Rw. 03 Desa Kalisari Kec. Kradenan ', 'Zubaidi', '', '', '', 0, '', '', 0, '', '', 'SMK PGRI Kuwu Grobogan', '', '', '', '', '', '', ''),
('3K130629', 3, '', 'Siska Pradana Usadani', 'Wanita', 'Kendal', '01/03/1995', '', '', 'Islam', 'Desa Peron Rt. 2 Rw. 3 Kec. Limbangan Kab. Kendal 51383', 'Fadloli', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Limbangan Kendal', '', '', '', '', '', '', ''),
('3K130630', 3, '', 'Siti Juwariyatiningsih', 'Wanita', 'Semarang', '16/12/1994', '', '', 'Islam', 'Mangunharjo Rt. 07 Rw. II Tugu Semarang 50154', 'Ngadi', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Kaliwungu Kendal', '', '', '', '', '', '', ''),
('3K130631', 3, '', 'Siti Nur Jannah', 'Wanita', 'Tuban', '12/03/1995', '', '', 'Islam', 'Desa Ngrojo Rt. III Rw. III Kec. Bangilan Kab. Tuban 62364', 'Tarwito', '', '', '', 0, '', '', 0, '', '', 'MA Assalam Bangilan Tuban', '', '', '', '', '', '', ''),
('3K130632', 3, '', 'Sulis Fitriani', 'Wanita', 'Blora', '11/07/1994', '', '', 'Islam', 'Dukuh Pekuwon Kidul Rt. 02 Rw. 07 Kel. Gabusan Kec. Jati Kab. Blora 58384', 'Sukardi', '', '', '', 0, '', '', 0, '', '', 'SMK PSM Randublatung Blora', '', '', '', '', '', '', ''),
('3K130633', 3, '', 'Supriyanto', 'Pria', 'Indramayu', '12/01/1995', '', '', 'Islam', 'Desa Kerticala gang Cibuaya Rt. 03 Rw. 01 Indramayu', 'Rastim', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Tukdana Kabupaten Indramayu', '', '', '', '', '', '', ''),
('3K130634', 3, '', 'Syifa Fauzia', 'Wanita', 'Jepara', '29/08/1995', '', '', 'Islam', 'Jebol Rt. 02 Rw. 1 Mayong Jepara', 'Mudhofar', '', '', '', 0, '', '', 0, '', '', 'MAN 2 Kudus', '', '', '', '', '', '', ''),
('3K130635', 3, '', 'Syinta Angraeni', 'Wanita', 'Grobogan', '29/11/1994', '', '', 'Islam', 'Dusun Sanggrak Desa Kalisari Kec. Kradenan Kab. Grobogan', 'Yahmo', '', '', '', 0, '', '', 0, '', '', 'SMK PGRI Kuwu Grobogan Kabupaten Tuban', '', '', '', '', '', '', ''),
('3K130636', 3, '', 'Tantika Mariza', 'Wanita', 'Semarang', '21/08/1995', '', '', 'Islam', 'Jl. Raya Kucen Rt. 1 Rw. III Bubakan Mijen Semarang 50216', 'Try Anto Raharjo', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana Analis Kesehatan Semarang', '', '', '', '', '', '', ''),
('3K130637', 3, '', 'Tri Vika Agustina', 'Wanita', 'Blora', '30/08/1995', '', '', 'Islam', 'Jl. Veteran No. 6 Rt. 05 Rw. 04 Bangkle Blora', 'Kunawi', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana Analis Kesehatan Semarang', '', '', '', '', '', '', ''),
('3K130638', 3, '', 'Tuti Rofingah', 'Wanita', 'Banyumas', '15/11/1995', '', '', 'Islam', 'Paningkaban Rt. 05 Rw. 02 Kec. Gumelar Kab. Banyumas 53165', 'Sismoyo Carum', '', '', '', 0, '', '', 0, '', '', 'SMK Ma\'arif NU 2 Ajibarang Banyumas', '', '', '', '', '', '', ''),
('3K130639', 3, '', 'Ummi Salamah Nasution', 'Wanita', 'Banjarnegara', '23/08/1995', '', '', 'Islam', 'Sigaluh Rt. 04 Rw. 02 Sigaluh Banjarnegara 53481', 'Nasri Nasution', '', '', '', 0, '', '', 0, '', '', 'MAN 1 Banjarnegara ', '', '', '', '', '', '', ''),
('3K130640', 3, '', 'Wahyu Ariani', 'Wanita', 'Kendal', '15/08/1995', '', '', 'Islam', 'Desa Tegorejo Rt. 01 Rw. 05 Pegandon Kendal 51357', 'Untung Waluyo', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri I Pegandon Kendal', '', '', '', '', '', '', ''),
('3K130641', 3, '', 'Wenny Yulia Setyawati', 'Wanita', 'Semarang', '12/07/1995', '', '', 'Islam', 'Jl. Genuk Sari Rt. 02 Rw. 08 Semarang ', 'Sutrisno', '', '', '', 0, '', '', 0, '', '', 'SMK Theresiana Analis Kesehatan Semarang', '', '', '', '', '', '', ''),
('3K130642', 3, '', 'Yayan Andriyani', 'Wanita', 'Pati', '09/10/1999', '', '', 'Islam', 'Desa Kropak Kec. Winong Kab. Pati Rt. 4 Rw. 3 ', 'Sulistyono', '', '', '', 0, '', '', 0, '', '', 'SMA PGRI 1 Pati', '', '', '', '', '', '', ''),
('3K130643', 3, '', 'Yunia Wahyu Setiyaningrum', 'Wanita', 'Jepara', '06/06/1995', '', '', 'Islam', 'Ketilengsingolelo Rt. 02 Rw. 03 Welahan Jepara', 'M. Badri', '', '', '', 0, '', '', 0, '', '', 'SMA Islam Sultan Agung 2 Kaliyamatan Jepara', '', '', '', '', '', '', ''),
('3K130644', 3, '', 'Yusrina Wian Rizkikawati', 'Wanita', 'Tuban', '23/04/1995', '', '', 'Islam', 'Dsn. Brabo Rt. 06 Rw. 02 Desa Tunggulrejo Kec. Singgahan Tuban 62361', 'Astofa Yunianto', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 1 Singgahan Kab. Tuban', '', '', '', '', '', '', ''),
('3K130645', 3, '', 'Zahra Maulina Ensa', 'Wanita', 'Banyumas', '25/08/1995', '', '', 'Islam', 'Glempang Rt. 05 Rw. 01 Kec. Pekuncen Kab. Banyumas 53164', 'Satiman', '', '', '', 0, '', '', 0, '', '', 'SMK Ma\'arif NU 2 Ajibarang Banyumas', '', '', '', '', '', '', ''),
('3K140682', 4, '', 'Adya Paramanisita', 'Wanita', 'Kendal', '29/08/1996', '', '', 'Islam', 'Dk. Krajan Rt. 11 Rw. 04 Kel. Ketapang Kec. Kendal Kab. Kendal 51319', 'Gatot Wrinsasongko, SH', '', '', '', 0, '', '', 0, '089 669 245 286', '', 'SMA Negeri 2 Kendal ', '', '', '', '', '', '', ''),
('3K140683', 4, '', 'Aeni Arum Rarasati', 'Wanita', 'Grobogan', '17/10/1996', '', '', 'Islam', 'Dusun Wonorejo Rt.01 Rw. 09 Desa Tambakselo Kec. Wirosari Kab. Grobogan 58192', 'Sumarmo', '', '', '', 0, '', '', 0, '087 733 085 937', '', 'SMA PGRI Wirosari Grobogan', '', '', '', '', '', '', ''),
('3K140684', 4, '', 'Afni Setiyaningrum', 'Wanita', 'Banyumas', '12/03/1996', '', '', 'Islam', 'Banjarsari Rt.03 Rw. 02 Kec. Ajibarang Kab. Banyumas 53163 ', 'Udjianto', '', '', '', 0, '', '', 0, '085 742 332 311', '', 'SMK Ma\'arif NU 2 Ajibarang Kab. Banyumas', '', '', '', '', '', '', ''),
('3K140685', 4, '', 'Al Dilladyas Kusuma Putri', 'Wanita', 'Semarang', '14/08/1995', '', '', 'Islam', 'Jl. Tawang Rajekwesi Rt. 01 Rw. 04 Semarang 50144', 'Edy Suroto', '', '', '', 0, '', '', 0, '085 865 456 872', '', 'SMA Negeri 16 Semarang ', '', '', '', '', '', '', ''),
('3K140686', 4, '', 'Ali Mudhofar', 'Pria', 'Demak', '01/10/1993', '', '', 'Islam', 'Bumirejo Lerep Rt. 03 Rw. 07 Karangawen Kab. Demak 59566', 'Rohmad', '', '', '', 0, '', '', 0, '085 876 264 943', '', 'SMK Garuda Nusantara Karangawen Demak', '', '', '', '', '', '', ''),
('3K140687', 4, '', 'Ani Setyani', 'Wanita', 'Blora', '10/10/1995', '', '', 'Islam', 'Desa Bukit Raya Kec. Methobi Raya Kalimantan Tengah 7668', 'Sarwianto', '', '', '', 0, '', '', 0, '081 545 623 971', '', 'SMA Negeri 1 Menthobi Raya Kalimantan', '', '', '', '', '', '', ''),
('3K140688', 4, '', 'Anis Ratna Juita', 'Wanita', 'Blora', '06/10/1995', '', '', 'Islam', 'Ds. Tempel Rt. 04 Rw. 05Kec. Jepon Kab. Blora 58261', 'Sofyan Hadi', '', '', '', 0, '', '', 0, '89605121520', '', 'SMA Negeri 1 Jepon Blora', '', '', '', '', '', '', ''),
('3K140689', 4, '', 'Anita Asmara', 'Wanita', 'Grobogan', '20/09/1997', '', '', 'Islam', 'Dsn. Jetak Rt. 02 Rw. 02 Ds. Plosorejo Kec. Tawangharjo Kab. Grobogan Purwodadi 58111', 'Anang Nugroho', '', '', '', 0, '', '', 0, '087 742115 364', '', 'SMA PGRI Purwodadi', '', '', '', '', '', '', ''),
('3K140690', 4, '', 'Bintang Satria Purbaya', 'Pria', 'Semarang', '25/02/1997', '', '', 'Islam', 'Sapta Marga III No. 25 Rt .04 Rt. 09 Kel. Ngesrep Banyumanik Semarang ', 'Achmad Jowahir', '', '', '', 0, '', '', 0, '089 669 174 845', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140691', 4, '', 'Brian Bagaskara', 'Pria', 'Kebumen', '21/02/1996', '', '', 'Kristen', 'Jl. Masayu Rt. I Rw. II Lajer Ambal Kebumen', 'Suparman', '', '', '', 0, '', '', 0, '082 133 080 270', '', 'SMA Negeri 1 Buluspesantren Kebumen', '', '', '', '', '', '', ''),
('3K140692', 4, '', 'Charisma Dwi Prasetya', 'Pria', 'Semarang', '25/04/1996', '', '', 'Kristen', 'Jl. Arya Mukti Tengah VII No. 335 Rt. 05 Rw. 03 Pedurungan Semarang 50192', 'Riyantana', '', '', '', 0, '', '', 0, '085 740 924 469', '', 'SMA Negeri 11 Semarang ', '', '', '', '', '', '', ''),
('3K140693', 4, '', 'Chusni Mubarok', 'Pria', 'Tegal', '30/06/1996', '', '', 'Islam', 'Jl. Sawo RT. 21 Rw. 05 Bedug Pangkah Tegal 52471', 'H. Slamet', '', '', '', 0, '', '', 0, '081 326 974 140', '', 'MA Al Hikmah 2 Benda Brebes', '', '', '', '', '', '', ''),
('3K140694', 4, '', 'Cicilia Lilik Waskinasih', 'Wanita', 'Kab. Semarang', '26/03/1996', '', '', 'Katholik', 'Dsn. Sodong Rt. 04 Rw. 06 Desa Genting Kec. Jambu Kab. Semarang ', 'Yustinus Paiman', '', '', '', 0, '', '', 0, '089 859 930 37/', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140695', 4, '', 'Deatri Anugrahini', 'Wanita', 'Semarang', '13/08/1994', '', '', 'Islam', 'Jl. Kelud Selatan III No. 21 Rt.07 Rw. 03 Semarang ', 'Nurmanto', '', '', '', 0, '', '', 0, '085 712 000 874', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140696', 4, '', 'Denni Purnamawati', 'Wanita', 'Pangkalan Bun', '27/07/1996', '', '', 'Islam', 'Ds. Makarti Jaya Rt. 10 Rw. 03 Gang Matahari Blok B Kec. P. Lada Kab. Kotawaringin Barat Kalteng 74111', 'Kartono', '', '', '', 0, '', '', 0, '085 787 528 502', '', 'SMK Negeri 1 Pangkalan Bun Kalteng', '', '', '', '', '', '', ''),
('3K140697', 4, '', 'Diana Fitriya', 'Wanita', 'Banyumas', '16/02/1996', '', '', 'Islam', 'Cikembulan Rt. 05 Rw. 04 Kec. Pekuncen Kab. Banyumas 53164 ', 'Warid Sumodiarjo', '', '', '', 0, '', '', 0, '085 712 025 181', '', 'SMK Ma\'arif NU 2 Ajibarang Kab. Banyumas', '', '', '', '', '', '', ''),
('3K140698', 4, '', 'Diana Kartika Dewi', 'Wanita', 'Ambon', '20/06/1996', '', '', 'Islam', 'Ds. Kebonrejo  Rt. 04 Rw. 03 Kec. Banjarjo Kab. Blora 28253', 'Jiyar', '', '', '', 0, '', '', 0, '85742885003', '', 'MA Negeri Blora', '', '', '', '', '', '', ''),
('3K140699', 4, '', 'Dissi Rikza Uyun', 'Wanita', 'Pekalongan', '13/06/1996', '', '', 'Islam', 'Dk. Banjarejo Kec. Karanganyar Kab. Pekalongan 51182', 'Eko Budi Subagyo', '', '', '', 0, '', '', 0, '085 642 725 501', '', 'SMA PGRI 2 Kajen Kab. Pekalongan', '', '', '', '', '', '', ''),
('3K140700', 4, '', 'Diyah Pangestu Fajariyanti', 'Wanita', 'Banyumas', '17/11/1996', '', '', 'Islam', 'Somakaton Rt. 08 Rw. 03 Somagede Kab. Banyumas 53193', 'Sugiono', '', '', '', 0, '', '', 0, '087 737 410 948', '', 'MA Negeri Purwokerto 2 Banyumas', '', '', '', '', '', '', ''),
('3K140701', 4, '', 'Diyah Yuniyandini', 'Wanita', 'Semarang', '02/06/1996', '', '', 'Islam', 'Sadeng Rt. 05 Rw. 02 Kel Sadeng Kec. Gunungpati Semarang 50222', 'Rochiyanto', '', '', '', 0, '', '', 0, '085 641 299 822', '', 'SMA Negeri 7 Semarang', '', '', '', '', '', '', ''),
('3K140702', 4, '', 'Dwi Setyo Utami', 'Wanita', 'Semarang', '08/04/1996', '', '', 'Islam', 'Jl. Patriot Raya H-23 Rt. 02 Rw. 06 Semarang Utara 50172 ', 'Sudiarto', '', '', '', 0, '', '', 0, '083 842 264 076', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140703', 4, '', 'Dwi Versiliana', 'Wanita', 'Purbalingga', '09/04/1994', '', '', 'Islam', 'Baleraksa Karang Moncol Karang Miri Rt. 01  Rw. 08 Purbalingga 53355', 'Mutohar', '', '', '', 0, '', '', 0, '081 325 700 977', '', 'SMK Negeri 1 Karanganyar Purbalingga', '', '', '', '', '', '', ''),
('3K140704', 4, '', 'Edy Wibowo', 'Pria', 'Kab. Semarang', '24/03/1997', '', '', 'Islam', 'Dsn. Glagah Ds. Rejosari Rt. 04 Rw. 02 Kec. Bancak Kab. Semarang 50772', 'Nanang', '', '', '', 0, '', '', 0, '89605121520', '', 'SMA Negeri 1 Tengaran Kab. Semarang', '', '', '', '', '', '', ''),
('3K140705', 4, '', 'Eka Setiyawati', 'Wanita', 'Grobogan', '10/01/1996', '', '', 'Islam', 'Desa Kaliwenang Rt. 03 Rw. II Kec. Tanggungharjo Kab. Grobogan 58166', 'Sajid', '', '', '', 0, '', '', 0, '085 799 860 121', '', 'SMA Negeri 1 Gubug Grobogan', '', '', '', '', '', '', ''),
('3K140706', 4, '', 'Eko Prasetyo Wibowo', 'Pria', 'Grobogan', '06/04/1994', '', '', 'Islam', 'Perum Griya Pinus Lestari Jl. Pondok Labu RT. 19 Rw. 08 Kel. Loktabat Utara Kota Banjar Baru ', 'Budi Pujianto', '', '', '', 0, '', '', 0, '081 348 322 871', '', 'SMA Negeri 3 Banjarbaru Kalimantan', '', '', '', '', '', '', ''),
('3K140707', 4, '', 'Eky Asri Pratiwi', 'Wanita', 'Sragen', '21/03/1996', '', '', 'Islam', 'Taraman Rt. 04 Rw. 01 Sidoharjo Sragen 57281', 'Suwarno', '', '', '', 0, '', '', 0, '085 600 466 890', '', 'SMA Islam Sultan Agung 3 Semarang', '', '', '', '', '', '', ''),
('3K140708', 4, '', 'Evi Idma Yunita', 'Wanita', 'Demak', '03/06/1996', '', '', 'Islam', 'Karanganyar Rt. 5 Rw. I Karanganyar Demak 59582', 'Subaidi', '', '', '', 0, '', '', 0, '085 640 805 802', '', 'SMA Negeri 2 Kudus', '', '', '', '', '', '', ''),
('3K140709', 4, '', 'Helenika Cahyamega Putri', 'Wanita', 'Kendal', '01/09/1996', '', '', 'Islam', 'Dsn. Bebengan Rt. 07 Rw. 05 Bebegan Kec. Boja Kab. Kendal 51381', 'Slamet Budiono', '', '', '', 0, '', '', 0, '81228366767', '', 'SMA Negeri 1 Boja Kendal', '', '', '', '', '', '', ''),
('3K140710', 4, '', 'Infarika Ella Delina Fahmi', 'Wanita', 'Blora', '15/12/1995', '', '', 'Islam', 'Bogorejo Rt. 04 Rw. 01 Ds. Bogorejo Kec. Bogorejo Kab. Blora', 'Ahib', '', '', '', 0, '', '', 0, '089 634 352 721', '', 'SMA Negeri 1 Tunjungan Blora', '', '', '', '', '', '', ''),
('3K140711', 4, '', 'Katharina Novika Timorensa', 'Wanita', 'Kulon Progo', '30/11/1996', '', '', 'Katholik', 'Perum Polri Durenan Indah Blok N No. 17 Rt. 03 Rw. 06 Semarang ', 'Yohanes Bosco Sarmina, SH', '', '', '', 0, '', '', 0, '089 859 030 07', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140712', 4, '', 'Laras Try Astuty', 'Wanita', 'Bantul', '13/06/1997', '', '', 'Islam', 'Sumber Sari Rt. 02 Rw. 10 Wonolopo Mijen Semarang 50215', 'Sri Kuncoro', '', '', '', 0, '', '', 0, '083 890 731 481', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140713', 4, '', 'Linda Fajar Rohmah', 'Wanita', 'Grobogan', '25/07/1996', '', '', 'Islam', 'Dsn. Wates, Ds. Kradenan Rt. 06 Rw. 05 Grobogan Purwodadi 58182', 'Komari', '', '', '', 0, '', '', 0, '085 712 915 994', '', 'MA Negeri Purwodadi', '', '', '', '', '', '', ''),
('3K140714', 4, '', 'Linda Widiastuti', 'Wanita', 'Kab. Semarang', '24/12/1992', '', '', 'Islam', 'Dsn. Giling RT. 04 Rw. 01 Ds. Giling Kec. Pabelan Kab. Semarang 50771', 'Sukamto', '', '', '', 0, '', '', 0, '085 641 341 147', '', 'SMA Negeri 3 Salatiga', '', '', '', '', '', '', ''),
('3K140715', 4, '', 'Lutfiana Dewi Jayawardani', 'Wanita', 'Blora', '29/05/1996', '', '', 'Islam', 'Jl. Turirejo Rt. 07 Rw. 02 Kaplingan Jepon Kec. Jepon Kab. Blora', 'Mujayadi', '', '', '', 0, '', '', 0, '085 712 492 224', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('3K140716', 4, '', 'M. Nur Afta', 'Pria', 'Semarang', '20/03/1996', '', '', 'Islam', 'Jl. Dewi Sartika Barat Rt. 03 Rw. 03 Desa Sukorejo Kec. Gunung Pati Semarang', 'Dwi Handoyo', '', '', '', 0, '', '', 0, '089 869 192 52', '', 'SMA Negeri 8 Pandeglang', '', '', '', '', '', '', ''),
('3K140717', 4, '', 'Matheus Noreng', 'Pria', 'Hatuheno', '09/09/1995', '', '', 'Katholik', 'Rt. 06 Rw. 03 Desa Pada, Kec. Nubatukan, Kab. Lembata NTT', 'Antonius Noreng ', '', '', '', 0, '', '', 0, '089 662 378 545', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140718', 4, '', 'Mega Tri Wulandari', 'Wanita', 'Semarang', '20/11/1994', '', '', 'Islam', 'Jl. Duduhan Rt .04 Rw. 05 Kel. Mijen Kec. Mijen Semarang 50218 ', 'Ahmad Syeh', '', '', '', 0, '', '', 0, '085 641 900 991', '', 'SMA Negeri 16 Semarang ', '', '', '', '', '', '', ''),
('3K140719', 4, '', 'Mei Vika Dyah Oktaviana', 'Wanita', 'Blora', '12/05/1996', '', '', 'Islam', 'Dkh. Bumirejo Rt. 02 Rw. 02 Ds. Jegong Kec. Jati Kab. Blora 58384', 'Lasiran', '', '', '', 0, '', '', 0, '081 915 154 799', '', 'SMK Analis Kesehatan Al Balad Jati Blora', '', '', '', '', '', '', ''),
('3K140720', 4, '', 'Meilani Endah Wulandari', 'Wanita', 'Banyumas', '03/05/1996', '', '', 'Islam', 'Cikembulan Rt.06 Rw. 03 Kec. Pekuncen Kab. Banyumas 53164 ', 'Warso alias Suparjo', '', '', '', 0, '', '', 0, '085 766 716 715', '', 'SMK Ma\'arif NU 2 Ajibarang Kab. Banyumas', '', '', '', '', '', '', ''),
('3K140721', 4, '', 'Meitia Siswardani', 'Wanita', 'Bone', '15/05/1996', '', '', 'Islam', 'Desa Salam Sari Rt. 01 Rw. 03 Kec. Boja Kab. Kendal 51381', 'Mei Siswoyo', '', '', '', 0, '', '', 0, '085 640 986 115', '', 'SMA Negeri 1 Limbangan Kendal', '', '', '', '', '', '', ''),
('3K140722', 4, '', 'Melinda Nur \'Aini', 'Wanita', 'Semarang', '09/12/1996', '', '', 'Islam', 'Jl. Medoho I Gang III Rt. 04 Rw. 01 Semarang', 'Bejo Wiyono', '', '', '', 0, '', '', 0, '89668012441', '', 'SMA Negeri 11 Semarang', '', '', '', '', '', '', ''),
('3K140723', 4, '', 'Miftakhul Solekah', 'Wanita', 'Kendal', '09/01/1995', '', '', 'Islam', 'Tambakrejo, Patebon, Kendal 51351 Rt. 1 Rw. 3', 'Abdul Bakir', '', '', '', 0, '', '', 0, '089 879 553 93', '', 'MA Al Muttaqien Pancasila Sakti Klaten', '', '', '', '', '', '', ''),
('3K140724', 4, '', 'Muhamad Syahrul Al Afik', 'Pria', 'Jepara', '05/06/1997', '', '', 'Islam', 'Wonorejo Rt. 02 Rw. 01 Kel.  Wonorejo Kec. Jepara', 'Abdul Jamil', '', '', '', 0, '', '', 0, '089 678 364 081', '', 'SMK Negeri 2 Jepara', '', '', '', '', '', '', '');
INSERT INTO `mahasiswa` (`nim`, `id_tahun`, `password`, `nama_mhs`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `no_nik`, `no_kk`, `agama`, `alamat`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `angkatan`, `nama_kelas`, `foto`, `id_progdi`, `no_hp`, `email`, `sekolah_asal`, `alamat_sekolah_asal`, `no_ijasah`, `nilai_masuk`, `sumber_info`, `pembawa`, `ukuran_jas`, `nama_dosen`) VALUES
('3K140725', 4, '', 'Muhammad Joni Anda', 'Pria', 'Palembang', '27/06/1994', '', '', 'Islam', 'Ds. Rantau Jaya RT.02 Rw. 02 Kec. Belitang Madang Raya Kab. Oku Timur 32382', 'Cik Mansyur', '', '', '', 0, '', '', 0, '081 377 762 678', '', 'SMA LPB Belitang Oku Timur', '', '', '', '', '', '', ''),
('3K140726', 4, '', 'Mulian Agmas Heriani', 'Wanita', 'Purbalingga', '01/08/1995', '', '', 'Islam', 'Brecek Rt.01 Rw. 01 Kec. Kaligondang, Kab. Purbalingga ', 'Heri Arwoto', '', '', '', 0, '', '', 0, '085 747 468 343', '', 'SMK Ma\'arif NU 2 Ajibarang Kab. Banyumas', '', '', '', '', '', '', ''),
('3K140727', 4, '', 'Nandya Dwy Putri Hapsari', 'Wanita', 'Sukoharjo', '26/11/1995', '', '', 'Islam', 'Tegalan Rt. 02 Rw. 04 Kateguhan, Tawangsari, Sukoharjo 57561', 'Suyamto', '', '', '', 0, '', '', 0, '-', '', 'SMA Negeri 1 Tawangsari Sukoharjo', '', '', '', '', '', '', ''),
('3K140728', 4, '', 'Nia Herawati Asih', 'Wanita', 'Semarang', '26/07/1996', '', '', 'Islam', 'Jl. Bancar Asri Raya No. 3 Rt. 04 Rw. 01 Lamper Tengah Semarang Selatan', 'Sariman', '', '', '', 0, '', '', 0, '087 832 583 418', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140729', 4, '', 'Nindya Devi Lutfianasari', 'Wanita', 'Semarang', '01/12/1994', '', '', 'Islam', 'Jl. Pamularsih Barat No. 12 B Rt. 02 Rw. 09 Kel. Bojong Salaman Semarang', 'Amir Priyalaksono (alm)', '', '', '', 0, '', '', 0, '024 76630774/08', '', 'SMA Sultan Agung 1 Semarang', '', '', '', '', '', '', ''),
('3K140730', 4, '', 'Novtafiah Dhini Sagiatri', 'Wanita', 'Anjungan', '30/11/1996', '', '', 'Islam', 'Jl. S. Parman Gang Kelapa Gading No. 10 A Rt. 05 Rw. 01 Kel. Sukaharja Kec. Delta Pawan Kab. Ketapang Kalbar ', 'Suparman Ibu Eny Kusriani', '', '', '', 0, '', '', 0, '089 805 467 33', '', 'SMA Negeri 1 Ketapang Kalbar', '', '', '', '', '', '', ''),
('3K140731', 4, '', 'Nuning Susanti', 'Wanita', 'Cilacap', '02/03/1994', '', '', 'Islam', 'Karang Tengah Citembong Rt. 03 Rw. 04 Kec. Bantarsari Kab. Cilacap', 'Jamadi', '', '', '', 0, '', '', 0, '085 726 142 136', '', 'SMK Ma\'arif NU 2 Ajibarang Kab. Banyumas', '', '', '', '', '', '', ''),
('3K140732', 4, '', 'Nur Afni Kamila', 'Wanita', 'Grobogan', '01/07/1997', '', '', 'Islam', 'Desa Mrisi Kec. Tanggungharjo Rt. 02 Rw. IV Kab. Grobogan ', 'Anis Dahlan', '', '', '', 0, '', '', 0, '085 729 169 727', '', 'MA Negeri Purwodadi', '', '', '', '', '', '', ''),
('3K140733', 4, '', 'Nuranisa', 'Wanita', 'Demak', '15/06/1995', '', '', 'Islam', 'Desa Bakalrejo Rt. 01 Rw. 05 Guntur Demak 59565 ', 'Sukiran', '', '', '', 0, '', '', 0, '087 831 842 347', '', 'MA Negeri Demak', '', '', '', '', '', '', ''),
('3K140734', 4, '', 'Nur Atika', 'Wanita', 'Kundur Barat Karimun', '11/02/1996', '', '', 'Islam', 'Kobel Darat Sawang Laut Rt. 01 Rw. 02 Dusun III Kec. Kundur Barat Kab. Karimun Kepulauan Riau 29662 ', 'Ruba\'i', '', '', '', 0, '', '', 0, '082 390 145 037', '', 'SMA Negeri 4 Karimun', '', '', '', '', '', '', ''),
('3K140735', 4, '', 'Nur Kholis', 'Pria', 'Kebumen', '11/02/1996', '', '', 'Islam', 'Wonodirjan Rt. 01 Rw. 02 Desa Bonjokidul Kec. Bonorowo, Kab. Kebumen ', 'Amad Kusnadi', '', '', '', 0, '', '', 0, '087 837 533 651', '', 'SMK Cipta Karya Kebumen', '', '', '', '', '', '', ''),
('3K140736', 4, '', 'Nurul Dwi Aprilliani', 'Wanita', 'Purbalingga', '19/04/1996', '', '', 'Islam', 'Desa Jompo Kulon Rt. 01 Rt. 02 Kec. Sokaraja Kab. Banyumas 53181 ', 'Sutomo', '', '', '', 0, '', '', 0, '082 134 117 901', '', 'SMA Negeri 1 Padamara Purbalingga', '', '', '', '', '', '', ''),
('3K140737', 4, '', 'Nurul Hidayah', 'Wanita', 'Sukoharjo', '18/10/1996', '', '', 'Islam', 'Kauman Rt. 01 Rw. 07 Karanganyar Anyar Weru Sukoharjo', 'Wijianto', '', '', '', 0, '', '', 0, '085 643 030 140', '', 'MA Negeri Sukoharjo', '', '', '', '', '', '', ''),
('3K140738', 4, '', 'Nyema Fera Kesuma', 'Wanita', 'Blora', '06/06/1997', '', '', 'Islam', 'Dkh. Bumirejo Rt. 01 Rw. 02 Desa Jegong Kec. Jati Kab. Blora 58384', 'Sujak', '', '', '', 0, '', '', 0, '087 833 018 032', '', 'SMA Negeri 1 Randublatung ', '', '', '', '', '', '', ''),
('3K140739', 4, '', 'Oktafiona Puspa Dewi', 'Wanita', 'Tangerang', '25/10/1996', '', '', 'Kristen', 'Jl. Puspowarno Tengah III No. 12 Semarang', 'Agus Prabowo', '', '', '', 0, '', '', 0, '085 740 743 878', '', 'SMK Kimia Industri Theresiana Semarang', '', '', '', '', '', '', ''),
('3K140740', 4, '', 'Oktafiyani Nuzhatun Nihlah', 'Wanita', 'Demak', '06/11/1995', '', '', 'Islam', 'Dk. Pongangan Rt. 03 Rw. 01 Desa Purworejo Kec. Bonan Kab. Demak 59552', 'Aries Hidayat', '', '', '', 0, '', '', 0, '081 914 050 250', '', 'SMK Negeri 1 Demak ', '', '', '', '', '', '', ''),
('3K140741', 4, '', 'Priliya Annisa Elsa\'adi', 'Wanita', 'Tegal', '10/04/1997', '', '', 'Islam', 'Jl. Projosumarto II Mindaka Rt. 06 Rw. 01 Tarub Kab. Tegal 52184', 'Zaenal Arifin', '', '', '', 0, '', '', 0, '085 742 103 431', '', 'SMA Negeri 1 Kramat Tegal', '', '', '', '', '', '', ''),
('3K140742', 4, '', 'Putri Dwi Utami', 'Wanita', 'Wonogriri', '31/01/1997', '', '', 'Islam', 'Jl. Dr. Sutomo , Wonosari III No. 68 C RT. 09 Rw. 04 Kel. Randusari Semarang Selatan ', 'Joko Ngatino', '', '', '', 0, '', '', 0, '089 613 542 216', '', 'SMA Negeri 8 Semarang ', '', '', '', '', '', '', ''),
('3K140743', 4, '', 'Ratriana Maharani', 'Wanita', 'Semarang', '24/10/1994', '', '', 'Islam', 'Jl. Lamper Tengah Raya No. 658 A Rt. 02 Rw. 07 Semarang ', 'Suradi', '', '', '', 0, '', '', 0, '082 242 088 057', '', 'SMA Mataram Semarang', '', '', '', '', '', '', ''),
('3K140744', 4, '', 'Reni Marliana', 'Wanita', 'Ungaran Kab. Semarang', '22/09/1994', '', '', 'Islam', 'Bender Desa Rt .01 Rw. 08 Kel. Kalisidi Kec. Ungaran Barat ', 'Sunoto', '', '', '', 0, '', '', 0, '087 700 239 718', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140745', 4, '', 'Retno Dwiyanti', 'Wanita', 'Banyumas', '11/11/1996', '', '', 'Islam', 'Cikembulan Rt.03 Rw. 03 Kec. Pekuncen Kab. Banyumas 53164 ', 'Rajiman', '', '', '', 0, '', '', 0, '085 747 219 038', '', 'SMK Ma\'arif NU 2 Ajibarang Kab. Banyumas', '', '', '', '', '', '', ''),
('3K140746', 4, '', 'Reziyawati Nur Halimah', 'Wanita', 'Semarang', '11/09/1995', '', '', 'Islam', 'Jl. Gunung Jati Timur Raya 418 RT. 11 Rw. 02 Wonosari Ngaliyan Semarang', 'Selamat Riadi', '', '', '', 0, '', '', 0, '083 838 352 701', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140747', 4, '', 'Rischa Febriana', 'Wanita', 'Kab. Semarang', '15/02/1996', '', '', 'Islam', 'Dsn. Kauman Rt. 02 Rw. 02 Desa Kebondowo Kec. Banyubiru 50664', 'Siswanto', '', '', '', 0, '', '', 0, '083 838 315 920', '', 'SMA Negeri 1 Ambarawa', '', '', '', '', '', '', ''),
('3K140748', 4, '', 'Rista Fajar Rahayu', 'Wanita', 'Palangkaraya', '15/03/1996', '', '', 'Islam', 'Desa Sumilir Rt. 03 Rw. 01 Kec. Kemangkon Kab. Purbalingga 53381', 'Kisman', '', '', '', 0, '', '', 0, '085 869 648 214', '', 'SMA Negeri 2 Purbalingga ', '', '', '', '', '', '', ''),
('3K140749', 4, '', 'Rizka Lailatul Fitriyah', 'Wanita', 'Jember', '31/01/1996', '', '', 'Islam', 'Kenduren Rt. 03 Rw. 05 Kec. Wedung Kab. Demak', 'Subhan Mawardi', '', '', '', 0, '', '', 0, '81326111668', '', 'MA Salafiyah Kajen, Margoyoso, Pati', '', '', '', '', '', '', ''),
('3K140750', 4, '', 'Rizqi Tri Agustina', 'Wanita', 'Tegal', '05/08/1996', '', '', 'Islam', 'Jl. Merak Rt. 02 Rw. 01 Balapulang Kulon Kab. Tegal', 'Ambali', '', '', '', 0, '', '', 0, '89648700515', '', 'SMK Muhammadiyah Lebaksiu Kab. Tegal', '', '', '', '', '', '', ''),
('3K140751', 4, '', 'Sakha Faza Pratiwi', 'Wanita', 'Batang', '03/12/1995', '', '', 'Islam', 'Jl. Gajah Mada Gg. Deruk No. 3 Batang 51211', 'Bambang Waluyo', '', '', '', 0, '', '', 0, '089 689 058 539', '', 'MA Negeri Batang', '', '', '', '', '', '', ''),
('3K140752', 4, '', 'Septa Austorina', 'Wanita', 'Grobogan', '11/09/1995', '', '', 'Islam', 'Dsn. Bedoyo Ds. Rejosari Rt. 05 Rw. 02 Kradenan Kec. Kradenan Kab. Grobogan 58182', 'Damin', '', '', '', 0, '', '', 0, '085 740 694 909', '', 'SMA Negeri 1 Kradenan Grobogan', '', '', '', '', '', '', ''),
('3K140753', 4, '', 'Silvi Prastisa Sari', 'Wanita', 'Semarang', '01/03/1997', '', '', 'Islam', 'Mangkang Wetan Gg. Bandeng No.3 Rt. 01 Rt. 06 Tugu Semarang 50156', 'Tolkhah', '', '', '', 0, '', '', 0, '085 726 606 420', '', 'SMA Negeri 8 Semarang ', '', '', '', '', '', '', ''),
('3K140754', 4, '', 'Sulma Al Aajilaini', 'Wanita', 'Rembang', '25/11/1995', '', '', 'Islam', 'Desa Ngemplak Rt. 03 Rw. 03 Kec. Lasem Kab. Rembang 59271', 'Arbain', '', '', '', 0, '', '', 0, '081 325 051 616', '', 'MA NU Banat Kudus', '', '', '', '', '', '', ''),
('3K140755', 4, '', 'Tika Solihati', 'Wanita', 'Semarang', '05/09/1996', '', '', 'Islam', 'Jl. Ngadirgo Rt. 02 Rw. 01 Mijen Semarang 50213 ', 'Sunarjo (alm)', '', '', '', 0, '', '', 0, '089 653 709 992', '', 'SMA Negeri 16 Semarang ', '', '', '', '', '', '', ''),
('3K140756', 4, '', 'Trenggalis Gading Prakoso', 'Pria', 'Purwokerto', '16/07/1996', '', '', 'Islam', 'Jl. Sutomo Asrama TNI-AD Blok C No. 7 Rt. 03 Rw. 06 Cirebon 45123', 'Yatimin', '', '', '', 0, '', '', 0, '089 633 936 409', '', 'SMA Negeri 4 Cirebon ', '', '', '', '', '', '', ''),
('3K140757', 4, '', 'Trisnanda Fawzi Wandani', 'Wanita', 'Silo Lama', '19/03/1997', '', '', 'Islam', 'Silo Lama Dsn. IV Kec. Silau Laut, Kisaran Sumatera Utara', 'Edi Sutrisno', '', '', '', 0, '', '', 0, '082 161 021 599', '', 'SMA Muhammadiyah 8 Kisaran Kab. Asahan Sumut', '', '', '', '', '', '', ''),
('3K140758', 4, '', 'Ulfi Nur Fadhillah', 'Wanita', 'Cirebon', '18/02/1997', '', '', 'Islam', 'Desa Betet Rt. 07 Rw. 03 Kec. Kasiman, Bojonegoro 62164', 'Achmadi', '', '', '', 0, '', '', 0, '089627989626/08', '', 'SMA 1 Negeri Cepu', '', '', '', '', '', '', ''),
('3K140759', 4, '', 'Wahyu Nur Fitriana', 'Wanita', 'Jakarta', '14/03/1994', '', '', 'Islam', 'Jati-Jajar II No. 9 Rt. 06 Rw. 09 Kec. Tapos-Depok Jawa Barat', 'Bambang Agus Wahyudi', '', '', '', 0, '', '', 0, '083 879 716 603', '', 'SMK Analis Kesehatan Cagar Budaya Jakarta', '', '', '', '', '', '', ''),
('3K140760', 4, '', 'Weny Ekawati', 'Wanita', 'Semarang', '06/04/1996', '', '', 'Islam', 'Bambankerep Rt.03 Rw. 02 Kel. Bambankerep Kec. Ngaliyan Semarang ', 'Sukadi', '', '', '', 0, '', '', 0, '081 904 838 503', '', 'SMK Palapa Semarang ', '', '', '', '', '', '', ''),
('3K140761', 4, '', 'Widi Arianto', 'Pria', 'Wonogiri', '30/03/1996', '', '', 'Islam', 'Ngembong Rt. 02 Rw. 02 Keloran, Selogiri, Wonogiri ', 'Pilis Riyanto', '', '', '', 0, '', '', 0, '085 647 313 282', '', 'SMA Negeri 2 Wonogiri ', '', '', '', '', '', '', ''),
('3K140762', 4, '', 'Widia Saraswati', 'Wanita', 'Semarang', '25/07/1996', '', '', 'Islam', 'Jl. Bongsari Rt. 01 Rw. 02  Semarang 50148', 'Suwanto', '', '', '', 0, '', '', 0, '081 712 224 794', '', 'SMK Kes. Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K140763', 4, '', 'Wiranti Puji Rahayu', 'Wanita', 'Semarang', '01/12/1995', '', '', 'Islam', 'Jl. Kalialang baru RT.02/IX Semarang ', 'Slamet Riyadi', '', '', '', 0, '', '', 0, '089 669 095 552', '', 'SMA Teuku Umar Semarang', '', '', '', '', '', '', ''),
('3K140764', 4, '', 'Yahya Ardiyanti', 'Wanita', 'Sukoharjo', '03/09/1996', '', '', 'Islam', 'Bangun Asri Rt. 03 Rw. 02 Kateguhan Tawang Sari Sukoharjo', 'Sri Winarno', '', '', '', 0, '', '', 0, '085 647 092 955', '', 'SMA Negeri 1 Bulu Sukoharjo', '', '', '', '', '', '', ''),
('3K140765', 4, '', 'Yesi Agustina', 'Wanita', 'Blora', '11/08/1996', '', '', 'Islam', 'Desa Singonegoro Rt. 02 Rw. 03 Kec. Jiken Kab. Blora ', 'Yatmo', '', '', '', 0, '', '', 0, '87750105537', '', 'SMA Negeri 1 Jepon', '', '', '', '', '', '', ''),
('3K140766', 4, '', 'Zidni Ahsan', 'Pria', 'Demak', '29/07/1996', '', '', 'Islam', 'Ds. Pilangrejo Rt. 04 Rw. 01 Kec. Wonosalam Demak', 'Suyoto', '', '', '', 0, '', '', 0, '089 634 449 421', '', 'MA Negeri Demak', '', '', '', '', '', '', ''),
('3K150789', 5, '', 'Afni Nurfitasari', 'Wanita', 'Demak', '20/10/1997', '', '', 'Islam', 'Dsn. Krajan Rt. 02 Rw. 02 Kel. Poncoharjo Kec. Bonang Kab. Demak', 'Sudiran', '', '', '', 0, '', '', 0, '085 879 110 449', '', 'SMA Negeri 3 Demak', '', '', '', '', '', '', ''),
('3K150790', 5, '', 'Amir Faruk Gunawan', 'Pria', 'Brebes', '08/10/1996', '', '', 'Islam', 'Jl. Pesantren Bustanul Ulum Rt. 02 Rw. 04 Ds. Karang Malang II Kec. Ketanggungan Kab. Brebes 52263', 'Khafid', '', '', '', 0, '', '', 0, '089 677 127 456', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150791', 5, '', 'Anindita Rachmayani', 'Wanita', 'Grobogan', '09/07/1997', '', '', 'Islam', 'Dsn. Jati Rt. 01 Rw. 03 Kel. Sengon Wetan Kec. Kradenan Kab. Grobogan', 'Sumarno (*alamat dibwh)', '', '', '', 0, '', '', 0, '085 940 677 652', '', 'SMA Negeri 1 Keradenan Grobogan', '', '', '', '', '', '', ''),
('3K150792', 5, '', 'Anton Dwi Nugroho', 'Pria', 'Demak', '24/12/1995', '', '', 'Islam', 'Dsn. Kenongo Rt. 01 Rw. 03 Kel. Brambang Kec. Karangawen Kab. Demak 59566', 'Sugiyanto', '', '', '', 0, '', '', 0, '085 712 111 009', '', 'SMA Negeri 1 Guntur Demak', '', '', '', '', '', '', ''),
('3K150793', 5, '', 'Ardhan Angkasa', 'Pria', 'Demak', '12/09/1996', '', '', 'Islam', 'Dsn. Cabean Rt. 05 Rw. 01 Kel. Cabean Kec. Demak Kab. Demak 59511', 'Sumarlan', '', '', '', 0, '', '', 0, '089 654 661 051', '', 'SMA Negeri 2 Demak', '', '', '', '', '', '', ''),
('3K150794', 5, '', 'Ari Setiadi', 'Pria', 'Brebes', '05/10/1997', '', '', 'Islam', 'Dsn. Rungkang Kulon Rt. 01 Rw. 02 Kel. Rungkang Kulon Kec. Losari Kab. Brebes 52255', 'Casrodin', '', '', '', 0, '', '', 0, '089 695 652 340', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150795', 5, '', 'Alvira Rilis Tupamahu', 'Wanita', 'Ambon', '07/11/1997', '', '', 'Kristen', 'Dsn. Leksula Kec. Leksula Kab. Buru Selatan Maluku 97573', 'Richard J. Tupamahu', '', '', '', 0, '', '', 0, '082 311 876 352', '', 'SMA Negeri 1 Leksula', '', '', '', '', '', '', ''),
('3K150796', 5, '', 'Ayang Ciai Anisa Firdaus', 'Wanita', 'Grobogan', '26/11/1996', '', '', 'Islam', 'Dsn. Sidorejo Rt. 08 Rw. 07 Ds. Sedadi Kec. Penawangan Kab. Grobogan 58161', 'Sugeng ', '', '', '', 0, '', '', 0, '085 201 786 856', '', 'MAN Purwodadi', '', '', '', '', '', '', ''),
('3K150797', 5, '', 'Ayu Lestari', 'Wanita', 'Brebes', '07/02/1997', '', '', 'Islam', 'Jl. H. Abdul Karim Dsn. Sidakaton Kec. Tanjung Kab. Brebes 52252', 'Manaf ', '', '', '', 0, '', '', 0, '082 324 745 522', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150798', 5, '', 'Ayuni Putri Nandangtila', 'Wanita', 'Sorong', '23/06/1997', '', '', 'Islam', 'Jl. Jend. Sudirman, Lorong Fery, Gang Cempedak Rt. 01 Rw. 02 Kel. Malawei Kec. Sorong Timur Kab. Sorong Papua Barat', 'Ramdhan', '', '', '', 0, '', '', 0, '', '', 'MAN Model Sorong ', '', '', '', '', '', '', ''),
('3K150799', 5, '', 'Bagas Aji Ciptaningtyas', 'Pria', 'Demak', '27/08/1997', '', '', 'Islam', 'Gang Pringgondani III Dsn. Cabean Rt. 06 Rw. 04 Kel. Cabean Kec. Demak 59517', 'Djamanuri', '', '', '', 0, '', '', 0, '089 780 309 12', '', 'SMA Negeri 3 Demak', '', '', '', '', '', '', ''),
('3K150800', 5, '', 'Devi Febritasari', 'Wanita', 'Brebes', '07/02/1997', '', '', 'Islam', 'Dsn. Sitanggal Rt. 03 Rw. 01 Kel. Sitanggal Kec. Larangan Kab. Brebes', 'Taripin', '', '', '', 0, '', '', 0, '085 740 164 463', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150801', 5, '', 'Dhina Frigginastuty', 'Wanita', 'Petobo', '10/01/1997', '', '', 'Islam', 'Jl. H.M. Suharto No. 93 Rt. 01 Rw. 05 Kel. Petobo Kec. Palu Selatan Kota Palu 94232', 'Moh. Takdir S.Pt', '', '', '', 0, '', '', 0, '085 240 655 532', '', 'SMA Lab School Untad Palu', '', '', '', '', '', '', ''),
('3K150802', 5, '', 'Diah Ayu Wulandari', 'Wanita', 'Kendal', '12/11/1997', '', '', 'Islam', 'Jl. Raya Boja-Limbangan Dsn. Sidawung Rt. 02 Rw. 03 Kel. Kaligadimg Kec. Boja Kab. Kendal 51381', 'Heru Sulistiyo', '', '', '', 0, '', '', 0, '089 632 734 279', '', 'SMA Negeri 1 Limbangan', '', '', '', '', '', '', ''),
('3K150803', 5, '', 'Dian Arisandi', 'Pria', 'Brebes', '03/11/1996', '', '', 'Islam', 'Dsn. Salagading Rt. 02 Rw. 04 Kel. Ciseureuh Kec. Ketanggungan Kab. Brebes', 'Salpin', '', '', '', 0, '', '', 0, '085 719 745 066', '', 'SMA Negeri 1 Ketanggungan', '', '', '', '', '', '', ''),
('3K150804', 5, '', 'Dian Rosanti', 'Wanita', 'Brebes', '20/04/1997', '', '', 'Islam', 'Jl. Pusponegoro I Rt. 02 Rw. 01 Kel. Losari Kidul Kec. Losari Kab. Brebes 52255', 'Agung Riyadi', '', '', '', 0, '', '', 0, '089 672 751 803', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150805', 5, '', 'Diana Kristiyaningsih', 'Wanita', 'Blora', '05/12/1996', '', '', 'Islam', 'Jl. Raya Ngawen Japah Dsn. Sumberejo Rt. 01 Rw. 01 Kel. Sumberejo Kec. Japah Kab. Blora 58257', 'Yasmen', '', '', '', 0, '', '', 0, '085 876 767 322', '', 'SMA Negeri 1 Ngawen ', '', '', '', '', '', '', ''),
('3K150806', 5, '', 'Dimas Ariza Yanuar', 'Pria', 'Banyumas', '14/01/1998', '', '', 'Islam', 'Jl. Glempang-Tumiang Dsn. Glempang Rt. 01 Rw. 01 Kel. Glempang Kec. Pekuncen Kab. Banyumas 53164', 'Muchtar Aman', '', '', '', 0, '', '', 0, '082 234 537 209', '', 'SMK  Analis Kesehatan Ma\'arif NU 2 Ajibarang ', '', '', '', '', '', '', ''),
('3K150807', 5, '', 'Diny Istiani', 'Wanita', 'Tanjung Balai Karimun', '01/12/1996', '', '', 'Islam', 'Jl. Tanjung Menawang Dsn. Parit 1 Karimun Rt. 02 Rw. 02 Kel. Parit 1 Karimun Kec. Karimun Kab. Karimun 29661 ', 'Mohd. Jais', '', '', '', 0, '', '', 0, '082 288 471 431', '', 'SMA Negeri 4 Karimun', '', '', '', '', '', '', ''),
('3K150808', 5, '', 'Diniah Kholishoh Fitri', 'Wanita', 'Batang', '09/02/1997', '', '', 'Islam', 'Dsn. Siklayu Rt. 01 Rw. 02 Kec. Gringsing Kab. Batang 51281', 'Darsono', '', '', '', 0, '', '', 0, '087 832 060 345', '', 'SMA Negeri 1 Gringsing', '', '', '', '', '', '', ''),
('3K150809', 5, '', 'Erny Widyasari', 'Wanita', 'Kendal', '27/02/1995', '', '', 'Islam', 'Jl. Kyai Sukhodono Dsn. Geblok Rt. 02 Rw. 06 Kel. Purwogondo Kec. Boja Kab. Kendal 51381', 'Tumadi Sriyanto', '', '', '', 0, '', '', 0, '089 507 131 354', '', 'SMA Negeri 1 Limbangan', '', '', '', '', '', '', ''),
('3K150810', 5, '', 'Evan Syihab', 'Pria', 'Brebes', '13/10/1997', '', '', 'Islam', 'Jl. Balai Desa Pengabean Rt. 04 Rw. 02 Kel. Pengabean Kec. Losari Kab. Brebes 52255', 'Ansori', '', '', '', 0, '', '', 0, '087 829 034 084', '', 'SMK Mitra Karya Mandiri Ketanggungan', '', '', '', '', '', '', ''),
('3K150811', 5, '', 'Fidia Lintang Alam', 'Wanita', 'Semarang', '06/02/1997', '', '', 'Islam', 'Jl. Ngaglik Lama No. 48 Semarang 50231', '', '', '', '', 0, '', '', 0, '(024) 8441905/0', '', 'SMA Islam Sultan Agung 1', '', '', '', '', '', '', ''),
('3K150812', 5, '', 'Galuh Retno Palupi', 'Wanita', 'Banyumas', '11/07/1997', '', '', 'Islam', 'Jl. Raya Somagede Dsn. Somakaton Rt. 08 Rw. 03 Kel. Somakaton Kec. Somagede Kab. Banyumas 53193', 'Karseno', '', '', '', 0, '', '', 0, '085 743 242 307', '', 'SMA Negeri 1 Purwareja Klampok', '', '', '', '', '', '', ''),
('3K150813', 5, '', 'Hana Kristi Karuniasih', 'Wanita', 'Semarang', '26/11/1997', '', '', 'Kristen', 'Jl. Taman Borobudur Utara IV No. 25 Rt. 03 Rw. 10 Kel. Kembangarum Kec. Semarang Barat Kab. Semarang 50148', 'Andang Kristanto', '', '', '', 0, '', '', 0, '(024) 7612171/0', '', 'SMA Negeri 6 Semarang', '', '', '', '', '', '', ''),
('3K150814', 5, '', 'Hana Riris Triningtyas', 'Wanita', 'Semarang', '17/08/1996', '', '', 'Kristen', 'Jl. Elang Sari Timur Rt. 10 Rw. 05 Kel. Sambiroto Kec. Mangunharjo Kab. Semarang 50272', 'Dwi Santoso', '', '', '', 0, '', '', 0, '082 220 372 017', '', 'SMA Masehi 2 PSAK Semarang', '', '', '', '', '', '', ''),
('3K150815', 5, '', 'Indah Dewi Agustina Widyanings', 'Wanita', 'Pati', '27/08/1996', '', '', 'Islam', 'Ds. Ngurensiti Rt. 05 Rw. 01 Ds. Ngurensiti Kec. Wedari Jaksa Kab. Pati 59152', 'Sunarto', '', '', '', 0, '', '', 0, '089 667 687 039', '', 'SMA Negeri 3 Pati', '', '', '', '', '', '', ''),
('3K150816', 5, '', 'Indah Manarita Hakim', 'Wanita', 'Jakarta', '20/07/1997', '', '', 'Islam', 'Jl. Teuku Cikditiro Dsn. Pesantunan Rt. 01 Rw. 06 Kel. Pesantunan Kec. Wanasari Kab. Brebes 52252', 'Muhammad Lukman Hakim', '', '', '', 0, '', '', 0, '087 730 703 229', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150817', 5, '', 'Innayatul Ainiyah', 'Wanita', 'Kendal', '20/07/1997', '', '', 'Islam', 'Dsn. Sedayu Rt. 01 Rw. 02 Kel. Sedayu Kec. Gemuh Kab. Kendal 51356', 'M. Sutrisno', '', '', '', 0, '', '', 0, '089 513 878 053', '', 'MA Darul Amanah Kendal', '', '', '', '', '', '', ''),
('3K150818', 5, '', 'Khoirul Ika Setiyani', 'Wanita', 'Batang', '28/12/1996', '', '', 'Islam', 'Dsn. Sidosari Rt. 04 Rw. 01 Kel. Ketanggan Kec. Gringsing Kab. Batang 51281', 'Besari', '', '', '', 0, '', '', 0, '083 862 137 036', '', 'SMA Negeri 1 Gringsing', '', '', '', '', '', '', ''),
('3K150819', 5, '', 'Khoirun Nisa', 'Wanita', 'Blora', '07/02/1997', '', '', 'Islam', 'Dsn. Ngampel Rt. 07 Rw. 03 Kel. Tanggel Kec. Randublatung Kab. Blora 58382', 'Ngadi', '', '', '', 0, '', '', 0, '085 200 630 694', '', 'SMA Negeri 1 Randublatung ', '', '', '', '', '', '', ''),
('3K150820', 5, '', 'Kholiq Setiawan', 'Pria', 'Demak', '12/05/1997', '', '', 'Islam', 'Dsn. Krapyak Tengah Rt. 07 Rw. 12 Kel. Bintoro Kec. Demak Kab. Demak 59511', 'Solekul Hadi', '', '', '', 0, '', '', 0, '089 624 360 831', '', 'SMA Negeri 3 Demak', '', '', '', '', '', '', ''),
('3K150821', 5, '', 'Kukuh Desca Putra', 'Pria', 'Grobogan', '04/12/1996', '', '', 'Islam', 'Jl. Purwodadi-Pati, Dsn. Sanggrahan Rt. 03 Rw. 01 Kel. Getasrejo Kec. Grobogan Kab. Grobogan 58111', 'Agus Catur Hardiman', '', '', '', 0, '', '', 0, '089 856 010 33', '', 'MAN Purwodadi', '', '', '', '', '', '', ''),
('3K150822', 5, '', 'Laeli Istiqomah', 'Wanita', 'Brebes', '13/01/1998', '', '', 'Islam', 'Jl. Ahmad Yani Rt. 10 Rw. 01 Kel. Slatri Kec. Larangan Kab. Brebes 52262', 'Nur Khafidz (Alm)', '', '', '', 0, '', '', 0, '087 730 524 998', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150823', 5, '', 'Lailatul Febriyani', 'Wanita', 'Demak', '05/02/1997', '', '', 'Islam', 'Jl. Bayangkara Baru No. 33 Dsn. Genggongan Rt. 03 Rw. 02 Kel. Mangunjiwan Kec. Demak Kab. Demak 59515', 'Sudarjo', '', '', '', 0, '', '', 0, '089 907 960 42', '', 'SMA Negeri 2 Demak', '', '', '', '', '', '', ''),
('3K150824', 5, '', 'Laurentius Bisa Yosi Lazaren', 'Pria', 'Kebumen', '20/04/1997', '', '', 'Katholik', 'TB. Kondang Jl. Prambanan Piungan KM. 5,5 Sonayan Madurejo Prambanan Yogyakarta', 'Karolus Boromeus Benediktus La', '', '', '', 0, '', '', 0, '081 225 482 195', '', 'SMK Analis Kesehatan Theresiana Semarang ', '', '', '', '', '', '', ''),
('3K150825', 5, '', 'Lia Warsinih', 'Wanita', 'Brebes', '20/06/1997', '', '', 'Islam', 'Rt. 04 Rw. 02 Jl. Tugu Bandar Pakijangan Kec. Bulakamba Kab. Brebes', 'Riyadi Sudarmanto', '', '', '', 0, '', '', 0, '089 620 ', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150826', 5, '', 'M. Musfiq Amrulloh', 'Pria', 'Brebes', '03/05/1997', '', '', 'Islam', 'Jl. Pesantren No. 37 Dsn. Karang Malang 2 Rt. 03 Rw. 05 Kec. Ketanggungan Kab. Brebes 52263', 'Bahrowi', '', '', '', 0, '', '', 0, '085 773 486 952', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150827', 5, '', 'Milka Pudja Leady Lilian Mehue', 'Wanita', 'Waypau', '20/10/1996', '', '', 'Kristen', 'Jl. Sentani Depapre Dsn. Kampung Bambar Rt. 01 Rw. 01 Kec. Waibu Kab. Jayapura 99352', 'Mustakim', '', '', '', 0, '', '', 0, '085 197 181 896', '', 'SMA YPPK ASISI Sentani Kab. Jayapura', '', '', '', '', '', '', ''),
('3K150828', 5, '', 'Mita Ari Setyawati', 'Wanita', 'Batang', '06/01/1997', '', '', 'Islam', 'Dsn. Krajan Rt. 05 Rw. 02 Kel. Wonodadi Kec. Bandar Kab. Batang 51254', 'Wahono', '', '', '', 0, '', '', 0, '085 728 303 943', '', 'MA Darul Amanah Kendal Sukorejo', '', '', '', '', '', '', ''),
('3K150829', 5, '', 'Mita Tri Rahmawati', 'Wanita', 'Semarang', '24/04/1997', '', '', 'Islam', 'Jl. Kalialang Lama Rt. 04 Rw. 01 Kel. Sukorejo Kec. Gunung Pati Kab. Semarang 50221', 'Sumain', '', '', '', 0, '', '', 0, '089 669 012 175', '', 'SMK IT Roudlotus Saidiyyah Semarang', '', '', '', '', '', '', ''),
('3K150830', 5, '', 'Muhamad Islah', 'Pria', 'Demak', '26/09/1995', '', '', 'Islam', 'Rt. 11 Rw. 02 Ds. Kramat Kec. Dempet Kab. Demak 59573', 'Mahmudi', '', '', '', 0, '', '', 0, '085 640 330 338', '', 'SMA Negeri 1 Dempet Demak', '', '', '', '', '', '', ''),
('3K150831', 5, '', 'Munifatus Sholichah', 'Wanita', 'Brebes', '07/01/1996', '', '', 'Islam', 'Jl. Kepatian Dsn. Klampok Rt. 08 Rw. 02 Kel. Klampok Kec. Wanasari Kab. Brebes', 'H. Rasbun', '', '', '', 0, '', '', 0, '082 328 689 317', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150832', 5, '', 'Nely Shilahunnajah', 'Wanita', 'Brebes', '08/02/1997', '', '', 'Islam', 'Jl. Muara Indah Dsn. Pacinan Rt. 02 Rw. 03 Kel. Kalilangkap Kec. Bumiayu Brebes 52273', 'Muhammad Ali Baharsyah', '', '', '', 0, '', '', 0, '081 804 720 717', '', 'SMK Semesta Bumiayu Pk. An. Kes. Brebes', '', '', '', '', '', '', ''),
('3K150833', 5, '', 'Novia Lailatul Rohmah', 'Wanita', 'Pati', '12/11/1995', '', '', 'Islam', 'Dsn. Kedalingan Rt. 04 Rw. 03 Kel. Kedalingan Kec. Tambakromo Kab. Pati 59174', 'Bambang Wiroso', '', '', '', 0, '', '', 0, '085 740 038 647', '', 'SMA Negeri 2 Pati', '', '', '', '', '', '', ''),
('3K150834', 5, '', 'Novia Pitaloka', 'Wanita', 'Semarang', '31/10/1997', '', '', 'Islam', 'Jl. Puspogiwang Dalam I Rt. 02 Rw. 03 Kel. Gisikdrono Kec. Semarang Barat Kab. Semarang 50149', 'Sumali', '', '', '', 0, '', '', 0, '085 713 352 051', '', 'MA Futuhiyyah 2 Mranggen Demak', '', '', '', '', '', '', ''),
('3K150835', 5, '', 'Novita Daneswari', 'Wanita', 'Bandar Lampung', '02/11/1997', '', '', 'Islam', 'Tawang, Padas Karanganom Klaten', '', '', '', '', 0, '', '', 0, '085 875 553 284', '', 'SMK Kesdam IV Diponegoro Magelang', '', '', '', '', '', '', ''),
('3K150836', 5, '', 'Nur Afiyah Ulfah', 'Wanita', 'Brebes', '03/11/1996', '', '', 'Islam', 'Jl. Pedukuhan Crukcuk Dsn. Karang Dempel Rt. 10 RW. 01 Kel. Karang Dempel Kec. Losari Kab. Brebes 52255', 'Mohammad Sofari', '', '', '', 0, '', '', 0, '083 861 316 249', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150837', 5, '', 'Olief Syamsudin', 'Pria', 'Semarang', '16/01/1997', '', '', 'Islam', 'Jl. Banowati Tengah Rt. 08 Rw. 05 Kel. Bulu Lor Kec. Semarang Utara Kab. Semarang', 'Kusmuhilal', '', '', '', 0, '', '', 0, '089 667 784 484', '', 'SMA Negeri 16 Semarang', '', '', '', '', '', '', ''),
('3K150838', 5, '', 'Olviana Siswahyuningsih', 'Wanita', 'Bone', '18/10/1997', '', '', 'Islam', 'Jl. Raya Boja-Limbangan Dsn. Krajan 1 Rt. 01 Rw. 03 Kel. Salamsari Kec. Boja Kab. Kendal 51381', 'Mei Siswoyo', '', '', '', 0, '', '', 0, '085 869 148 592', '', 'SMA Negeri 1 Limbangan', '', '', '', '', '', '', ''),
('3K150839', 5, '', 'Pikki Putri Pradini', 'Wanita', 'Tanjung Jabung Timur', '28/01/1997', '', '', 'Islam', 'Jl. Rajawali Rt. 08 Rw. 02 Kec. Tanjung Kab. Brebes ', 'Gangka', '', '', '', 0, '', '', 0, '082 326 335 843', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150840', 5, '', 'Pinky Isna Devi', 'Wanita', 'Grobogan', '06/02/1997', '', '', 'Islam', 'Jl. Hayamwuruk Dsn. Banaran II Rt. 04 Rw. 22 Kel. Purwodadi Kec. Purwodadi Kab. Grobogan 58111', 'Rochi Koemar Purnomo', '', '', '', 0, '', '', 0, '089 649 355 673', '', 'SMA Muhammadiyah Purwadadi', '', '', '', '', '', '', ''),
('3K150841', 5, '', 'Puji Lestari', 'Wanita', 'Boyolali', '04/02/1997', '', '', 'Islam', 'Jl. Ariloka No. 37 Rt. 03 Rw. 12 Krobokan Semarang 50141', 'Sahudi', '', '', '', 0, '', '', 0, '085 727 830 130', '', 'SMK Theresiana Analis Farmasi Industri Semarang ', '', '', '', '', '', '', ''),
('3K150842', 5, '', 'Putri Ayuning Tyas', 'Wanita', 'Brebes', '17/04/1997', '', '', 'Islam', 'Jl. S. Parman Rt. 03 Rw. 17 Pesanggrahan Brebes 52212', 'Syarifuddin', '', '', '', 0, '', '', 0, '089 611 210 340', '', 'SMK Analis Kesehatan Mitra Karya Mandiri Brebes', '', '', '', '', '', '', ''),
('3K150843', 5, '', 'Reni Octaviani', 'Wanita', 'Semarang', '13/10/1996', '', '', 'Islam', 'Jl. Kemantren Rt. 02 Rw. 05 Wonosari Ngaliyan Semarang 50244', 'Kaswadi', '', '', '', 0, '', '', 0, '089 686 093 934', '', 'SMK Theresiana Analis Kesehatan Semarang ', '', '', '', '', '', '', ''),
('3K150844', 5, '', 'Rina Eka Yuli Safitri', 'Wanita', 'Grobogan', '07/06/1997', '', '', 'Islam', 'Dsn. Bedoyo Rejosari Rt. 04 Rw. 02 Kel. Rejosari Kec. Kradenan Kab. Grobogan 58182', 'Sunarto', '', '', '', 0, '', '', 0, '082 285 495 727', '', 'SMA Negeri 1 Keradenan Grobogan', '', '', '', '', '', '', ''),
('3K150845', 5, '', 'Selania Dita Wibowo', 'Wanita', 'Purwokerto Banyumas', '15/03/1995', '', '', 'Kristen', 'Jl. Pamujan Indah 1 No. 475 Rt. 02 Rw. 10 Purwokerto ', 'Aris Wibowo', '', '', '', 0, '', '', 0, '', '', 'SMK Analis Kesehaan Citra Bangsa Mandiri Purwokert', '', '', '', '', '', '', ''),
('3K150846', 5, '', 'Siti Nurasiyah', 'Wanita', 'Brebes', '16/06/1996', '', '', 'Islam', 'Jl. Tengki Dsn. Dukuh Rt. 05 Rw. 03 Kel. Kertiabesuki Kec. Wanasari Kab. Brebes 52252', 'Dakum', '', '', '', 0, '', '', 0, '089 610 319 554', '', 'SMK Farmasi YPIB Brebes', '', '', '', '', '', '', ''),
('3K150847', 5, '', 'Sri Utami', 'Wanita', 'Brebes', '27/03/1994', '', '', 'Islam', 'Dsn. Glonggong Rt. 01 Rw. 04 Kel. Glonggong Kec. Wanasari Kab. Brebes 5225 ', 'Warjo (alm)', '', '', '', 0, '', '', 0, '082 324 514 899', '', 'SMK Farmasi YPIB Brebes (Keperawatan)', '', '', '', '', '', '', ''),
('3K150848', 5, '', 'Sukma Setyaningsih', 'Wanita', 'Semarang', '22/11/1997', '', '', 'Islam', 'Jl. Rorojonggrang Timur 025 Rt. 11 Rw. 06 Kel. Manyaran Kec. Semarang Barat Kab. Semarang 50147', 'Juwono', '', '', '', 0, '', '', 0, '087 832 784 914', '', 'SMK Theresiana Analis Kesehatan Semarang ', '', '', '', '', '', '', ''),
('3K150849', 5, '', 'Syeli Irianggani', 'Wanita', 'Semarang', '06/01/1997', '', '', 'Islam', 'Karangmalang Rt. 02 Rw. 02  Kec. Mijen Kota Semarang 50216', 'Sumargono', '', '', '', 0, '', '', 0, '081 326 246 348', '', 'SMA Negeri 13 Semarang', '', '', '', '', '', '', ''),
('3K150850', 5, '', 'Tika Maya Novita', 'Wanita', 'Brebes', '26/02/1997', '', '', 'Islam', 'Jl. Raya Siwuluh Rt. 04 Rw. 02 Kel. Siwuluh Kec. Bulakamba Kab. Brebes 52252', 'Sunarto', '', '', '', 0, '', '', 0, '085 786 537 558', '', 'SMK Mitra Karya Mandiri Ketanggungan (Analis Kes.)', '', '', '', '', '', '', ''),
('3K150851', 5, '', 'Triman Hadi', 'Pria', 'Pemalang', '27/02/1995', '', '', 'Islam', 'Jl. Jendral Sudriman Dsn. Genting Rt. 08 Rw. 02 Ds. Walang sanga Kec. Moga Kab. Pemalang', 'Shobur Hasan ( Alm)', '', '', '', 0, '', '', 0, '082 323 570 217', '', 'SMK Mitra Karya Mandiri Ketanggungan (Analis Kes.)', '', '', '', '', '', '', ''),
('3K150852', 5, '', 'Taufiq Dani Syaputra', 'Pria', 'Semarang', '16/04/1997', '', '', 'Islam', 'Jl. Veteran No. 14 E Dsn. Bangkle Rt. 05 Rw. 04 Kel. Bangkle Kec. Blora Kab. Blora 58218', 'Sugeng ', '', '', '', 0, '', '', 0, '082 242 213 889', '', 'SMA Negeri 2 Blora', '', '', '', '', '', '', ''),
('3K150853', 5, '', 'Tuniroh', 'Wanita', 'Brebes', '11/12/1996', '', '', 'Islam', 'Jl. Randu Gede Kemukten Rt 01 Rw.04 Kec. Kersana Kab. Brebes 52264', 'Sunarto', '', '', '', 0, '', '', 0, '082 315 129 823', '', 'SMK Mitra Karya Mandiri Ketanggungan (Analis Kes.)', '', '', '', '', '', '', ''),
('3K150854', 5, '', 'Ulfah Fitria', 'Wanita', 'Jakarta', '03/02/1998', '', '', 'Islam', 'Jl. Cemara Cakrawala 2 Blok Y No. 10 Rt 04 Rw 17 Kel. Lagoa Kec. Koja Jakarta Utara 14270', 'Muchamad Novel', '', '', '', 0, '', '', 0, '085 692 081 430', '', 'SMK Farmasi Bhakti Kencana Kab. Bogor (Analis Kes.', '', '', '', '', '', '', ''),
('3K150855', 5, '', 'Valensia Fajar Setya Dewi', 'Wanita', 'Jakarta', '14/02/1997', '', '', 'Islam', 'Jl. Raya 82 Patebon Dsn. Kebonharjo Rt. 01 Rw. 04 Kel. Kebonharjo Kec. Patebon Kab. Kendal 51351', 'Rosario Hendi Prasetyo', '', '', '', 0, '', '', 0, '(0294) 382780/0', '', 'SMA Negeri 1 Cepiring Kendal', '', '', '', '', '', '', ''),
('3K150856', 5, '', 'Vina Trisnawati', 'Wanita', 'Semarang', '24/09/1997', '', '', 'Islam', 'Jl. Dr. Sutomo No. 20 Kauman Rt. 02 Rw. 02 Kel. Kauman Kec. Jepara Kota Kab. Jepara 59417', 'Wahyu Leksana', '', '', '', 0, '', '', 0, '089 957 922 98', '', 'SMA Negeri 1 Jepara', '', '', '', '', '', '', ''),
('3K150857', 5, '', 'Vionita Septiani', 'Wanita', 'Sukoharjo', '09/09/1996', '', '', 'Islam', 'Dsn. Tegalan Rt. 01 Rw. 04 Kel. Kateguhan Kec. Tawangsari Kab. Sukoharjo 57561', 'Kasmudi', '', '', '', 0, '', '', 0, '087 770 665 109', '', 'SMK PGRI 1 Kota Bogor ', '', '', '', '', '', '', ''),
('3K150858', 5, '', 'Widayati', 'Wanita', 'Demak', '18/04/1997', '', '', 'Islam', 'Jl. Buyaran (Halte) Dsn. Donorejo Rt. 07 Rw. 01 Ds. Donorejo Kec. Karangtengah Kab. Demak 59517', 'Darwan', '', '', '', 0, '', '', 0, '085 741 488 710', '', 'SMA Negeri 1 Guntur Demak', '', '', '', '', '', '', ''),
('3K150859', 5, '', 'Zulfata Destarista Ramadhani', 'Pria', 'Pemalang', '23/12/1997', '', '', 'Islam', 'Ds. Pesantren Dsn. Blandong Rt. 04 RW. 02 Kel. Pesantren Kec. Ulujami Kab. Pemalang 52371', 'Ristam', '', '', '', 0, '', '', 0, '087 764 340 212', '', 'SMA Negeri 1 Petarukan Pemalang', '', '', '', '', '', '', ''),
('3K160883', 6, '', 'Abdul Aziz Al Ma\'sum', 'Pria', 'Semarang', '19/12/1998', '', '', 'Islam', 'Jl. Delik Sukorejo Rt. 07 Rw. 03 Kel. Sukorejo Kec. Gunungpati Kab. Semarang 50221', 'Suyadi', '', '', '', 0, '', '', 0, '08 972 587 765', '', 'MA Al Khoiriyyah Semarang', '', '', '', '-', '', '', ''),
('3K160884', 6, '', 'Abdulah Achmas', 'Pria', 'Purbalingga', '25/11/1995', '3,30312E+14', '', 'Islam', 'Dsn. Karang Sawah Rt. 03 Rw. 08 Kel. Baleraksa Kec. Karang Moncol  Kab. Purbalingga ', 'Mugiono ', '', '', '', 0, '', '', 0, '085 717 435 267', '', 'SMA Negeri 1 Rembang', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160885', 6, '', 'Akhmad Nur Ismail', 'Pria', 'Brebes', '01/11/1999', '3,32915E+15', '', 'Islam', 'Jl. Slatri Utara Dsn. Slatri Utara Rt. 03 Rw. 03 Kel. Slatri Kec. Larangan Kab. Brebes 52262', 'Suraji', '', '', '', 0, '', '', 0, '085 225 211 989', 'Anurismail@gmail.com', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160886', 6, '', 'Amanah Rahmadani Frestianingru', 'Wanita', 'Banyumas', '19/02/1998', '3,30216E+15', '', 'Islam', 'Jl. Karang Kemojing Dsn. Pekuncen Rt. 03 Rw. 01 Kel. Karang Kemojing Kec. Gumelar Kab. Banyumas 53165  ', 'Sakhman alias Maman Aji Saputr', '', '', '', 0, '', '', 0, '081 542 179 908', 'rahmadani_amanah@gmail.com', 'SMK Ma\'arif NU 2 Ajibarang (Ankes)', '', '', '', 'Brosur dari Luar Sekolah', '', '', ''),
('3K160887', 6, '', 'Anak Agung Bagus Pramana Yoga', 'Pria', 'Denpasar', '24/08/1998', '', '', 'Hindu', 'JL. Gunung Kawi No. 46 Denpasar Bali 80119', 'I Gusti Ngurah Wardana', '', '', '', 0, '', '', 0, '0361-431178/081', 'agungyoga1998@yahoo.com', 'SMA Negeri 8 Denpasar', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160888', 6, '', 'Ananti Iman Oktaviani', 'Wanita', 'Semarang', '03/10/1998', '3,37401E+15', '', 'Islam', 'Jl. Pekunden Tengah 1094 Dsn. Pekunden Rt. 05 Rw. 02 Kel. Pekunden Kec. Semarang Tengah Semarang 50134', 'Imantoro', '', '', '', 0, '', '', 0, '024-8312022/08 ', 'anantioktaviani@yahoo.com', 'SMK Theresiana Semarang (Ankes) ', '', '', '', '-', '', '', ''),
('3K160889', 6, '', 'Andini Nidia Putri', 'Wanita', 'Semarang', '19/08/1998', '3,37403E+15', '', 'Islam', 'Jl. Sentiaki Tengah I No. 14 Rt. 05 Rw. 07 Kel. Bulu Lor Kec. Semarang Utara Semarang 50179', 'Suherman', '', '', '', 0, '', '', 0, '081 329 392 084', 'andinin30@gmail.com', 'SMA Negeri 14 Semarang', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160890', 6, '', 'Anisa Rizqi Utami', 'Wanita', 'Semarang', '25/06/1998', '3,37413E+15', '', 'Islam', 'Dsn. Randusari Rt. 02 Rw. 02 Kel. Nongkosawit Kec. Gunungpati Semarang 50224', 'Khudlori', '', '', '', 0, '', '', 0, '085 866 676 788', 'anisarizqiutami566@gmai.com', 'MA Darul Amanah Sukorejo Kendal', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160891', 6, '', 'Anisah ST', 'Wanita', 'Kendal', '10/08/1997', '3,32614E+15', '', 'Islam', 'Jl. Raya Pekajangan Dsn. Karanglo Rt. 02 Rw. 01 Kel. Tangkil Tengah Kec. Kedungwuni Pekalongan 51173', 'Sobirin', '', '', '', 0, '', '', 0, '085 820 150 234', '', 'SMK Ankes Muhammadiyah Karanganyar Pekalongan', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160892', 6, '', 'Aqila Shearin Ramadhantya', 'Wanita', 'Semarang', '21/12/1998', '3,37402E+15', '', 'Islam', 'Jl. Abimanyu II No. 11 Dsn. Pendrikan Lor Rt. 03 Rw. 03 Kel. Pendrikan Lor Kec. Semarang Tengah Semarang 50131', 'Sena Purwata', '', '', '', 0, '', '', 0, '024-74030988/08', 'shearin@gmail.com', 'SMK Theresiana Semarang (Ankes) ', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160893', 6, '', 'Arden Putra Diyan', 'Pria', 'Kendal', '12/11/1997', '3,32412E+14', '', 'Islam', 'Jl. Sirsak Dsn. Tambak Rt. 02 Rw. 03 Kel. Montongsari Kec. Weleri Kab. Kendal 51355', 'Ngadiyan', '', '', '', 0, '', '', 0, '085 950 470 956', 'arden_diyan@yahoo.com', 'MAN Kendal', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160894', 6, '', 'Ari Indriyani', 'Wanita', 'Kab. Semarang', '22/03/1999', '3,32217E+15', '', 'Islam', 'Dsn. Glagah Rt. 03 Rw. 02 Kel. Rejosari Kec. Bancak Semarang 50772', 'Sutarno', '', '', '', 0, '', '', 0, '085 641 239 078', 'ariindriyani81@gmail.com', 'SMA Negeri 1 Tengaran', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160895', 6, '', 'Astrid Silvy Indriani', 'Wanita', 'Demak', '02/12/1996', '3,32111E+15', '', 'Islam', 'Jl. Sekolahan Dsn. Cabean Rt. 02 Rw. II Kel. Demak Kec. Demak  Kab. Demak 59511', 'Sutakat', '', '', '', 0, '', '', 0, '082 241 611 016', '', 'SMA Negeri 2 Demak', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160896', 6, '', 'Ayu Wijiningsih', 'Wanita', 'Sragen', '12/07/1998', '3,31417E+15', '', 'Islam', 'Dsn. Kenteng Rt. 15 Kel. Gemantar Kec. Mondokan Kab. Sragen 57271', 'Giyono', '', '', '', 0, '', '', 0, '085 647 579 565', 'ayuwiji123@gmail.com', 'SMA Negeri 1 Sukodono Sragen', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160897', 6, '', 'Clopedya Elza Citra Pratiwi', 'Wanita', 'Semarang', '06/07/1997', '3,37413E+14', '', 'Islam', 'Jl. Condro Kusumo 3 Rt. 08 Rw. 05 Kel. Gisikdrono Kec. Semarang Barat ', 'Sudarmawan', '', '', '', 0, '', '', 0, '085 866 362 501', '', 'SMK Kimia Industri Theresiana Semarang', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160898', 6, '', 'Debora L. Lesnussa', 'Wanita', 'Ambon', '29/12/1998', '', '', 'Kristen', 'Jl. Dr. Siwabessy Dsn. Batu Gajah Dalam Rt. 02 Rw. 03 Kel. Mangga Dua Nusaniwe Ambon', 'Bernadus Lesnussa (Alm)', '', '', '', 0, '', '', 0, '082 248 371 989', 'lidyagerrits@yahoo.co.id', 'SMA Kristen Ambon', '', '', '', '-', '', '', ''),
('3K160899', 6, '', 'Desy Nurini', 'Wanita', 'Brebes', '28/08/1998', '3,32909E+15', '', 'Islam', 'Jl. Kaliluwih Wanasari Brebes Rt. 06 Rw. 03 Kab. Brebes 52252', 'Mujahidin', '', '', '', 0, '', '', 0, '089 606 048 334', 'desynurini13@yahoo.com', 'SMK Negeri 01 Bulakamba Brebes', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160900', 6, '', 'Dewi Gita Cahyani Krismanto', 'Wanita', 'Palu', '26/05/1998', '', '', 'Kristen', 'Jl. Yos Sudarso Blok A No. 5 Palu 94118 (Yth. Mekar Puspita Arum)', 'Krismanto, SE', '', '', '', 0, '', '', 0, '082 292 503 863', 'dewigita.cahyanikrismanto@yahoo.co.id', 'SMA Negeri 1 Palu', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160901', 6, '', 'Dewi Sulastini', 'Wanita', 'Barati', '26/03/1998', '7,20226E+15', '', 'Hindu', 'Jl. Trans Poso Morowali Rt. 08 Dsn. 05 Kel. Barati Kec. Pamona Tenggara Kab. Poso 94664', 'G. Yasa', '', '', '', 0, '', '', 0, '082 292 503 863', 'dewisulastini7@gmail.com', 'SMA Negeri 1 Palu', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160902', 6, '', 'Diah Ayu Widiarti', 'Wanita', 'Pekalongan', '03/03/1998', '3,32608E+15', '', 'Islam', 'Jl. Raya Kemranggon Dsn. Kemranggon Rt. 04 Rw. 02 Kel. Tanjung Kulon Kec. Kajen Kab. Pekalongan 51161', 'Riyanto', '', '', '', 0, '', '', 0, '085 200 195 449', 'diahayuwidiarti03@gmail.com', 'SMK Ankes Muhammadiyah Karanganyar Pekalongan', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160903', 6, '', 'Diana Yuli Nisasari', 'Wanita', 'Kupang', '20/07/1998', '6,20102E+15', '', 'Islam', 'Jl. Abdul Aziz Dsn. Kumai Hulu Rt. 03 Rw. 01 Kel. Kumai Hulu Kec. Kumai Kota Waringinbarat', 'Purwadi', '', '', '', 0, '', '', 0, '085 822 726 559', '', 'SMA Ky Ageng Giri Mranggen Demak', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160904', 6, '', 'Dwi Tantia Aeni', 'Wanita', 'Cirebon', '31/07/1997', '3,20904E+13', '', 'Islam', 'Jl. Gatot Subroto Dsn. Pahing Rt. 08 Rw. 03 Kel. Barisan Kec. Losari Kab. Cirebon 45192', 'Abdul Ghoni', '', '', '', 0, '', '', 0, '089 689 387 935', ' ', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', 'Lainnya (Guru Produktif)', '', '', ''),
('3K160905', 6, '', 'Eva Maulida Miftakhul Asri', 'Wanita', 'Temanggung', '13/08/1998', '3,32317E+14', '', 'Islam', 'Dsn. Tanjung Sari Rt. 03 Rw. 04 Kel. Mojosari Kec. Bansari Kab. Temanggung 56265', 'Muri', '', '', '', 0, '', '', 0, '085 643 876 545', 'evamaulida1998@gmail.com', 'MAN Parakan Temanggung', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160906', 6, '', 'Eva sari', 'Wanita', 'Grobogan', '24/04/1998', '3,31514E+15', '', 'Islam', 'Jl. DR. Sutomo No. 30 Dsn. Kalongan Rt. 06 Rw. 08 Kel. Kalongan Kec. Purwodadi Kab. Grobogan 58111', 'Kasdu', '', '', '', 0, '', '', 0, '089 520 913 252', 'evasari244@gmail.com', 'SMA Negeri 1 Grobogan', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160907', 6, '', 'Eviana Dewi', 'Wanita', 'Brebes', '11/07/1998', '3,32912E+15', '', 'Islam', 'Dsn. Jagapura Rt. 05 Rw. 03 Kel. Jagapura Kec. Kersana Kab. Brebes 52264', 'Rasim', '', '', '', 0, '', '', 0, '089 527 011 988', '', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160908', 6, '', 'Fadhila Refi Astuti', 'Wanita', 'Semarang', '08/06/1998', '3,37412E+15', '', 'Islam', 'Jl. Kalialang Lama Rt. 03 Rw. 01 Kel. Sukorejo Kec. Gunung Pati Kab. Semarang 50221', 'Saroni', '', '', '', 0, '', '', 0, '081 225 402 860', 'refifadhila@gmail.com', 'SMA Negeri 12 Semarang', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160909', 6, '', 'Ferdila Dias Kristanti', 'Wanita', 'Semarang', '01/07/1998', '3,37413E+15', '', 'Islam', 'Jl. WR. Supratman Rt. 08 RW. 11 Kel. Gisikdrono Kec. Semarang Barat Semarang 50149', 'Tugino', '', '', '', 0, '', '', 0, '085 799 656 658', 'Ferdiladias98@gmail.com', 'SMK Theresiana Semarang (Ankes) ', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160910', 6, '', 'Fidya Ade Riyani', 'Wanita', 'Semarang', '02/06/1998', '3,37412E+15', '', 'Islam', 'Jl. Nongkosawit Rt. 02 Rw. 01 Kel. Nongkosawit Kec. Gunung Pati Semarang 50224', 'Tuwadi', '', '', '', 0, '', '', 0, '085 747 482 650', '', 'SMA Negeri 12 Semarang', '', '', '', 'Informasi dari Saudara/Teman, Brosur/Pamflet dari ', '', '', ''),
('3K160911', 6, '', 'Hakiki', 'Wanita', 'Semarang', '18/12/1997', '3,37414E+15', '', 'Islam', 'Jl. Kampung Gunung Payung No. 44 Rt. 06 Rw. 03 Kel. Bambankerep Kec. Ngaliyan Semarang 50182', 'Sarno', '', '', '', 0, '', '', 0, '089 620 608 192', 'hakiki9a@gmail.com', 'SMK Theresiana Semarang (Ankes) ', '', '', '', '-', '', '', ''),
('3K160912', 6, '', 'Indun Surya Nur Aisyah', 'Wanita', 'Semarang', '02/09/1998', '', '', 'Islam', 'Jl. Puspogiwang V No. 26 Rt. 07 Rw. 02 Kel. Gisikdrono Kec. Semarang Barat Semarang', 'Suryani', '', '', '', 0, '', '', 0, '089 650 455 488', '', 'SMK Setiabudhi Semarang', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160913', 6, '', 'Iswatun Nur Khasanah', 'Wanita', 'Brebes', '03/08/1998', '3,32903E+15', '', 'Islam', 'Jl. Raya Adisana No. 14 Rt. 05 Rw. 01 Kel. Adisana Kec. Bumiayu Kab. Brebes 52273', 'Kasmono', '', '', '', 0, '', '', 0, '082 324 776 458', 'iswatunnur98@gmail.com', 'SMK Semesta Bumiayu Brebes', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160914', 6, '', 'Khairunnisa Haryadi', 'Wanita', 'Sigli', '12/05/1998', '3,32908E+15', '', 'Islam', 'Habib Alwi No. 48 Jatibarang Kidul Rt. 02 Rw. 07 Kel. Jatibarang Kidul Kec. Jatibarang Kab. Brebes 52261', 'Djadi', '', '', '', 0, '', '', 0, '082 324 444 732', 'nisaharyadi81@gmail.com', 'SMK Saka Medika Dukuhwaru Tegal (Ankes)', '', '', '', 'Brosur / Pamflet dari sekolah / Media cetak elektr', '', '', ''),
('3K160915', 6, '', 'Khoerunisa', 'Wanita', 'Brebes', '23/03/1997', '3,3291E+15', '', 'Islam', 'Jl. Kapten Piere Tendean No. 05 RT. 02 Rw. 02 Kel. Pasar Batang Kec. Brebes Kab. Brebes 52211', 'Munawar', '', '', '', 0, '', '', 0, '08 993 121 738', 'nisa344232@gmail.com', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160916', 6, '', 'Khothibul Umam', 'Pria', 'Grobogan', '25/11/1998', '3,3151E+15', '', 'Islam', 'Jl. Raya Wirosari Tegalrejo KM Dsn. Krajan Rt. 01 Rw. 01 Kel. Karangasam Kec. Wirosari Kab. Gobogan', 'Suwarno', '', '', '', 0, '', '', 0, '085 727 346 864', '', 'MAN Purwodadi', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160917', 6, '', 'Leni Agustin', 'Wanita', 'Brebes', '12/08/1997', '3,32918E+15', '', 'Islam', 'Jl. Raya Pende Cikakak Dsn. Pende RT. 03 Rw. 01 Kel. Pende Kec. Banjarharjo Brebes 52265', 'Akhmad Yani', '', '', '', 0, '', '', 0, '081 902 701 493', 'leniagustin72@gmail.com', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', 'tidak ada berkas', '', '', ''),
('3K160918', 6, '', 'Lia Sundari', 'Wanita', 'Brebes', '24/05/1997', '3,31906E+15', '', 'Islam', 'Jl. Sirampog Dk. Pereng Rt. 02 Rw. 04 Kel. Kaligiri Kec. Sirampog Kab. Brebes 52272', 'Luruh', '', '', '', 0, '', '', 0, '085 786 656 422', 'liasundari08@gmail.com', 'SMK Semesta Bumiayu Brebes', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160919', 6, '', 'Listiani', 'Wanita', 'Argokoyo', '31/05/1998', '1,60818E+15', '', 'Islam', 'Jl. Argomulyo Dsn. Argomulyo Rt. 01 Rw. 02 Kel. Argomulyo Kec. Belitang Jaya Kab. OKU Timur 32382', 'Sularno', '', '', '', 0, '', '', 0, '085 764 642 763', '', 'SMA YPPI Belitang', '', '', '', '-', '', '', ''),
('3K160920', 6, '', 'Maria Dwi Agustina', 'Wanita', 'Argokoyo', '27/08/1997', '1,60818E+15', '', 'Katholik', 'Jl. Argomulyo Dsn. Argomulyo Rt. 02 Rw. 02 Kel. Argomulyo Kec. Belitang Jaya Kab. OKU Timur 32382', 'Suyantono', '', '', '', 0, '', '', 0, '085 838 529 870', 'mariaagustina109@gmail.com', 'SMA Xaverius 5 Belitang', '', '', '', '-', '', '', ''),
('3K160921', 6, '', 'Martina Puspita Setyaningrum', 'Wanita', 'Kab. Semarang', '16/03/1997', '3,32212E+15', '', 'Islam', 'Dsn. Pakopen Rt. 02 Rw. 01 Kel. Pakopen Kec. Bandungan Kab. Semarang 50661', 'Achmat Basuki', '', '', '', 0, '', '', 0, '085 712 800 977', '', 'SMK Kesehatan Darusalam Magelang', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160922', 6, '', 'Maya Agustin Masita', 'Wanita', 'Kendal', '05/01/1998', '3,32415E+14', '', 'Islam', 'Dsn. Bandengan Rt. 01 Rw. 02 Kel. Bandengan Kec. Kendal Kab. Kendal 51312', 'Sunardi', '', '', '', 0, '', '', 0, '089 504 602 282', 'mayaagustin88@gmail.com', 'SMK Ngesti Widhi Husada Kendal (Ankes) ', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160923', 6, '', 'Meylina Adhi Nugrahanti', 'Wanita', 'Sukoharjo', '09/05/1998', '3,31103E+15', '', 'Islam', 'Dsn. Tegalan Rt. 02 Rw. 04 Kel. Kateguhan Kec. Tawangsari Kab. Sukoharjo 57561', 'Suwarno', '', '', '', 0, '', '', 0, '089 673 434 435', 'meylina_adhina9@yahoo.com', 'SMA Negeri 01 Sukoharjo', '', '', '', '-', '', '', ''),
('3K160924', 6, '', 'Mohamad Lutfi Agung Setiawan', 'Pria', 'Kendal', '25/06/1998', '3,32414E+15', '', 'Islam', 'Jl. Raya Gopi Dsn. Longok Rt. 05 Rw. 01 Kel. Donosari Kec. Patebon Kendal 51351', 'Sulton', '', '', '', 0, '', '', 0, '08 122 515 647', '', 'SMK Ngesti Widhi Husada Kendal (Ankes) ', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160925', 6, '', 'Muhammad Ali Khoirul Mahfudh', 'Pria', 'Blora', '16/03/1999', '3,31609E+15', '', 'Islam', 'Jl. Blora - Rembang KM. 6 Kel. Ngadipurwo Rt. 01 Rw. 01 Kec. Blora Kab. Blora 58219', 'Suwarji', '', '', '', 0, '', '', 0, '085 740 913 105', 'machfuz_M@yahoo.com', 'MA Khozinatul Ulum Blora', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160926', 6, '', 'Munirul Majid', 'Pria', 'Kendal', '19/01/1998', '3,3241E+15', '', 'Islam', 'Jl. Sunan Abinowo Pegandon Dsn. Cegunan Rt. 02 Rw. 04 Kel. Tegorejo Kec. Pengandon Kab. Kendal 51357', 'Zaenuri', '', '', '', 0, '', '', 0, '087 832 873 530', 'munirul.Majid@gmail.com', 'SMK Ngesti Widhi Husada Kendal (Ankes) ', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160927', 6, '', 'Nabillah Alfi Felayati', 'Wanita', 'Brebes', '24/04/1998', '3,32912E+15', '', 'Islam', 'Jl. Kokosan Dsn. Cigeong Rt. 01 Rw. 04 Kel. Cigeong Kec. Kersana Kab. Brebes 52264', 'Fatkhurofik', '', '', '', 0, '', '', 0, '089 618 319 878', 'nabillahalfi24@gmail.com', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160928', 6, '', 'Nadhya Aprilia', 'Wanita', 'Serang', '21/04/1998', '', '', 'Islam', 'Perumahan Cikande Permai Blok L7 No. 8 Rt. 03 Rt. 07 Kel. Cikande Kec. Cikande Serang Banten 42186', 'Syamsul Hadi', '', '', '', 0, '', '', 0, '081 293 189 104', 'nadhyaaprilia70@gmail.com', 'SMA Negeri 1 Ciruas', '', '', '', 'Media cetak elektronik', '', '', '');
INSERT INTO `mahasiswa` (`nim`, `id_tahun`, `password`, `nama_mhs`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `no_nik`, `no_kk`, `agama`, `alamat`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `angkatan`, `nama_kelas`, `foto`, `id_progdi`, `no_hp`, `email`, `sekolah_asal`, `alamat_sekolah_asal`, `no_ijasah`, `nilai_masuk`, `sumber_info`, `pembawa`, `ukuran_jas`, `nama_dosen`) VALUES
('3K160929', 6, '', 'Natalia Desi Randika', 'Wanita', 'Pati', '26/12/1996', '3,31805E+15', '', 'Kristen', 'Ds. Sarimulyo Rt. 03 Rw. 03 Kec. Winong Kab. Pati', 'Kastawin', '', '', '', 0, '', '', 0, '081 901 643 438', 'nathaliarandhika@gmail.com', 'SMA Kanisius Yos Soedarso Pati', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160930', 6, '', 'Nisa Apriani', 'Wanita', 'Pekalongan', '12/04/1998', '3,32614E+15', '', 'Islam', 'Jl. Raya Simpang 3 Podo No. 22 Dsn. Gembong Barat Rt. 04 Rw. 12 Kel. Kedungwuni Barat Kec. Kedungwuni Kab. Pekalongan 51173', 'Ahmad Tosan', '', '', '', 0, '', '', 0, '085 747 551 236', 'nissa_apriiani@yahoo.co.id', 'SMK Muhammadiyah Karanganyar Pekalongan (Ankes)', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160931', 6, '', 'Novina Cahyaning Arum', 'Wanita', 'Semarang', '03/11/1997', '3,37413E+15', '', 'Islam', 'Karang Jangkang Rt. 04 Rw. 04 Kel. Ngemplak Simongan Kec. Semarang Barat Semarang 50148', 'Suparmin', '', '', '', 0, '', '', 0, '089 650 710 914', 'novina.arum@gmail.com', 'SMK Theresiana Semarang (Ankes) ', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160932', 6, '', 'Nur Alfiyah', 'Wanita', 'Tegal', '22/05/1998', '3,32809E+15', '', 'Islam', 'Dsn. Kedungbanteng Rt. 05 Rw. 03 Kel. Kedungbanteng Kec. Kedungbanteng Kab. Tegal 52472', 'Heru Susanto', '', '', '', 0, '', '', 0, '089 679 595 424', 'nuralfiyah98@gmail.com', 'SMK Sakamedika Dukuhwaru Tegal', '', '', '', 'Media cetak elektronik', '', '', ''),
('3K160933', 6, '', 'Nur Hidayanti', 'Wanita', 'Brebes', '18/08/1997', '3,3291E+15', '', 'Islam', 'Dsn. Klapasawit Rt. 02 Rw. 04 Kel. Padasugih Kec. Brebes Kab. Brebes Kode Pos 52214', 'Sukirno', '', '', '', 0, '', '', 0, '087 717 694 026', 'nhidayanti56@gmail.com', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160934', 6, '', 'Nurfatahiah', 'Wanita', 'Sangia', '17/12/1999', '', '', 'Islam', 'Lapangan Putih Sangia Sape Dsn. Talima Rt. 09 Rw. 05 Kel. Sangia Kec. Sape Kab. Bima 84182', 'H. Syafrudin', '', '', '', 0, '', '', 0, '08 123 878 377', 'nurfatahiah97@gmail.com', 'SMA Negeri 1 Sape', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160935', 6, '', 'Nurina Febry Wedhaningrum', 'Wanita', 'Semarang', '12/02/1996', '3,37416E+15', '', 'Islam', 'Jl. Gg. Abu Bakar Dsn. Tambak Aji Rt. 14 Rw. 12 Kel. Tambak Aji Kec. Ngaliyan Semarang 50185', 'Sudiharto', '', '', '', 0, '', '', 0, '083 842 118 124', 'minttp.rattanajiraporn@yahoo.com', 'SMK Negeri 8 Semarang (Perawat Sosial)', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160936', 6, '', 'Putri Handayani', 'Wanita', 'Brebes', '12/09/1998', '3,32913E+15', '', 'Islam', 'Rt. 04 Rw. 02 Dsn. Pengabean Kec. Losari Kab. Brebes 52255', 'H. Rohiyat (Alm)', '', '', '', 0, '', '', 0, '087 829 108 467', '', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', 'Melalui Guru SMK', '', '', ''),
('3K160937', 6, '', 'Putri Leontien Augustiani', 'Wanita', 'Brebes', '18/08/1998', '3,32915E+15', '', 'Islam', 'Jl. Jend. Ahmad Yani Dsn. Tegalglagah Rt. 05 Rw. 10 Kel. Tegalglagah Kec. Bulakamba Kab. Brebes 52253', 'Janudin', '', '', '', 0, '', '', 0, '082 300 073 992', '', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', '-', '', '', ''),
('3K160938', 6, '', 'Reizica Ghian Amalia', 'Wanita', 'Purbalingga', '06/06/1998', '3,30306E+14', '', 'Islam', 'Jl. Mangga I Perum Selabaya Indah Dsn. Kalimanah Rt. 04 Rw. 07 Kel. Selabaya Kec. Kalimanah Kab. Purbalingga 53371', 'Mugiyono', '', '', '', 0, '', '', 0, '089 693 929 610', '', 'SMK Soedirman Purbalingga Farmasi', '', '', '', 'Media cetak elektronik', '', '', ''),
('3K160939', 6, '', 'Retno Ayu Saputri', 'Wanita', 'Brebes', '13/09/1996', '3,3291E+15', '', 'Islam', 'Jl. S. Parman Dsn. Pesanggrahan Rt. 09 Rw. 17 Kel. Brebes Kec. Brebes Kab. Brebes 52214', 'Sumaedi', '', '', '', 0, '', '', 0, '', 'putribae036@gmail.com', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', '-', '', '', ''),
('3K160940', 6, '', 'Rima Agy Maulawati', 'Wanita', 'Semarang', '17/07/1997', '3,37414E+15', '', 'Islam', 'Jl. Lebdosari V No. 13 Rt. 05 Rw. 05 Kel. Kalibanteng Kulon Kec. Semarang Barat Semarang 50145', 'Joko Yudianto', '', '', '', 0, '', '', 0, '08 973 185 435', '', 'SMA Setiabudhi Semarang', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160941', 6, '', 'Risna Sejatiningrum', 'Wanita', 'Blora', '21/08/1998', '3,31611E+15', '', 'Islam', 'Dsn. Pohgesik Rt. 01 Rw. 04 Kel. Tawangrejo Kec. Tunjungan Kab. Blora', 'Aris Budiyanto', '', '', '', 0, '', '', 0, '081 527 800 924', 'risnasejati@gmail.com', 'SMK Bhakti Husada PGRI Blora (Keperawatan)', '', '', '', 'Pameran Di GOR', '', '', ''),
('3K160942', 6, '', 'Rista Lestari', 'Wanita', 'Argokoyo', '15/08/1998', '1,60818E+15', '', 'Islam', 'Jl. Argomulyo Dsn. Argomulyo Rt. 03 Rw. 03 Kel. Argomulyo Kec. Belitang Jaya Kab. OKU Timur 32382', 'Wasino', '', '', '', 0, '', '', 0, '085 764 632 300', 'lestariista@gmail.com', 'SMA YPPI Belitang', '', '', '', '-', '', '', ''),
('3K160943', 6, '', 'Rizki Amelia Putri', 'Wanita', 'Kab. Semarang', '23/10/1998', '3,32205E+15', '', 'Islam', 'Jl. Kepundung Dsn. Kepundung Rt. 01 Rw. 04 Kel. Reksosari Kec. Suruh Kab. Semarang 50776', 'Badarudin', '', '', '', 0, '', '', 0, '083 838 418 828', 'rizkiputrirp333@gmail.com', 'SMA Negeri 1 Suruh', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160944', 6, '', 'Rosa Rina', 'Wanita', 'Brebes', '02/05/1997', '3,32905E+15', '', 'Islam', 'Jl. Raya Sridadi Sirampog Dsn. Pekaleran Rt. 01 Rw. 02 Kel. Sridadi Kec. Sirampog Kab. Brebes 52273', 'Wasro', '', '', '', 0, '', '', 0, '085 290 449 186', 'rosarina659@g,mail.com', 'SMK Semesta Bumiayu Brebes', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160945', 6, '', 'Shella Peberiani BR Ginting', 'Wanita', 'Jakarta', '19/02/1998', '3,27512E+15', '', 'Kristen', 'Jl. Benda Dsn. Babakan Bondol Rt. 02 Rw. 05 Kel. Mustika Sari Kec. Mustika Jaya Bekasi 17167 ', 'Anthoni Ginting', '', '', '', 0, '', '', 0, '08 991 453 169', 'shellaginting1902@gmail.com', 'SMA Yadika 8 Bekasi', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160946', 6, '', 'Siti Maghpiroh', 'Wanita', 'Brebes', '30/06/1995', '3,32906E+15', '', 'Islam', 'Jl. Raya Sridadi Sirampog Dsn. Sigombyang Rt. 01 Rw. 04 Kel. Sridadi Kec. Sirampog Kab. Brebes 52272', 'Kasum Khaeri', '', '', '', 0, '', '', 0, '082 298 484 224', '', 'SMK Semesta Bumiayu Brebes', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160947', 6, '', 'Siti Solikha', 'Wanita', 'Tegal', '21/11/1993', '3,32806E+15', '', 'Islam', 'Kertaharja Rt. 04 Rw. 03 Pagerbarang Tegal Kec. Pagerbarang Kab. Tegal 52462 ', 'Maskuri', '', '', '', 0, '', '', 0, '085 724 793 380', 'sitisolikha1922@yahoo.com', 'MA Negeri Pagerbarang Tegal', '', '', '', 'Internet', '', '', ''),
('3K160948', 6, '', 'Sri Widianingsih', 'Wanita', 'Blora', '11/12/1998', '3,3161E+15', '', 'Islam', 'Jl. Jend. Sudirman Gg. Sadewa No. 36 Rt. 02 Rw. 03 Dsn. Bangkle Kec. Blora Kab. Blora 58218', 'Sunardi', '', '', '', 0, '', '', 0, '08 985 995 481', 'sriwidianingsih629@yahoo.co.id', 'SMA Negeri 2 Blora', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160949', 6, '', 'Suciati', 'Wanita', 'Kendal', '06/10/1994', '3,3241E+15', '', 'Islam', 'Dsn. Tegalsari Rt. 04 Rw. 04 Kel. Wonosari Kec. Pegandon Kab. Kendal 51357', 'Paijo', '', '', '', 0, '', '', 0, '085 950 290 292', 'ssuciati8@gmail.com', 'SMA Negeri 1 Pegandon Kendal', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160950', 6, '', 'Trissa Amalia', 'Wanita', 'Luwuk', '01/08/1998', '', '', 'Islam', 'Jl. TadulokoRt. 02 Rw. 03 Kel. Luwuk Utara Kec. Luwuk Utara Kab. Luwuk', 'H. Kasmad Sawiyo, S.Pd, M.Pd', '', '', '', 0, '', '', 0, '08 213 662 480', '', 'SMA Negeri 1 Luwuk', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160951', 6, '', 'Umi Ma\'rufah', 'Wanita', 'Pati', '29/01/1999', '1,60508E+15', '', 'Islam', 'Jl. Lintas Sumatra KM. 78 Dsn. III Desa Bingin Rupit Kel. Rupit Kec. Rupit Kab. Musi Rawas Utara 31654', 'Asturi', '', '', '', 0, '', '', 0, '082 280 344 072', 'umi.marufah290153@gmail.com', 'SMA Negeri Rupit Kab. Musi Rawas Utara', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160952', 6, '', 'Via Oftamia', 'Wanita', 'Tegal', '20/05/1998', '3,32807E+15', '', 'Islam', 'Jl. Krajan III Dsn. Lebaksiu Lor Rt. 01 Rw. 05 Kel. Lebaksiu Lor Kec. Lebaksiu Kab. Tegal 52461', 'Abdul Rosyid (Alm)', '', '', '', 0, '', '', 0, '085 385 809 044', 'viaoftamia@gmail.com', 'SMA Negeri 3 Slawi', '', '', '', 'Media cetak elektronik', '', '', ''),
('3K160953', 6, '', 'Widji Syafitri Febriani', 'Wanita', 'Blora', '30/01/1998', '3,31612E+15', '', 'Islam', 'Dsn. Kebonrejo Rt. 03 Rw. 01 Kel. Kebonrejo Kec. Banjarejo Kab. Blora ', 'Sukisman', '', '', '', 0, '', '', 0, '082 187 390 499', '', 'SMK PGRI Bhakti Husada Blora (Ankes)', '', '', '', 'Informasi dari Saudara/Teman', '', '', ''),
('3K160954', 6, '', 'Wike Linda Hardiyati', 'Wanita', 'Brebes', '26/03/1998', '3,32906E+15', '', 'Islam', 'Jl. Raya Kali-Giri Sirampog Dsn. Lagaran Rt. 01 Rw. 02 Kel. Kali-Giri Kec. Sirampog Kab. Brebes 52273', 'Darto', '', '', '', 0, '', '', 0, '085 842 950 937', 'wikelinda26@gmail.com', 'SMK Semesta Bumiayu Brebes', '', '', '', 'Brosur / Pamflet dari sekolah', '', '', ''),
('3K160955', 6, '', 'Yorisa Rahma Mulya', 'Wanita', 'Jakarta', '16/10/1997', '3,51519E+15', '', 'Islam', 'Perum Pasadena Jl. Candi Prambanan Baru X No. 1667 Kel. Kalipancur Kec. Nagliyan Semarang', 'Mulyono', '', '', '', 0, '', '', 0, '085 707 601 432', 'yorisa1697@gmail.com', 'SMK 10 Nopember Sidoarjo (Ankes) ', '', '', '', '', '', '', ''),
('3K160956', 6, '', 'Husna Nurul Yasyfy', 'Wanita', 'Kab. Tegal', '17/09/1997', '', '', 'Islam', '', 'Drs. Mokh. Romli', '', '', '', 0, '', '', 0, '', '', 'SMK Mitra Karya Mandiri Ketanggungan Brebes (Ankes', '', '', '', 'tidak ada berkas', '', '', ''),
('3K170980', 7, '', 'Agustina Anik Sukowati', 'Wanita', 'Semarang', '02/08/1997', '', '', 'Katholik', 'Jl. Sidodadi Rt. 01 Rw. 03 Kel. Mijen Kec. Mijen Semarang 50218', 'Sukono', '', '', '', 0, '', '', 0, '085 713 544 942', '', 'SMK Theresiana Analis Kesehatan Semarang', '', '', '', 'Informasi dari Saudara/Teman', '', 'XL', ''),
('3K170981', 7, '', 'Alma Nurul Fauziah', 'Wanita', 'Tegal', '28/07/1999', '3,37605E+15', '', 'Islam', 'Jl. Sentot Alibasah No. 16A Rt. 09 Rw. 02 Kel. Sumurpanggang Kec. Margadana Kab. Tegal 52141', 'Lukman Hakim', '', '', '', 0, '', '', 0, '089 633 069 831', 'almanurulf28@gmail.com', 'SMA Negeri 5 Tegal', 'Jl. Kali Kemiri III Kec. Margadana Tegal', '', '', 'Informasi dari Saudara/Teman', '', 'M', ''),
('3K170982', 7, '', 'Amalya Ulul Azmy', 'Wanita', 'Temanggung', '07/02/1999', '3,32301E+15', '', 'Islam', 'Ds. Jurang Rt. 01 Rw. 05 Kel. Danopayan Kec. Bulu Kab. Temanggung 56253', 'Baedowi', '', '', '', 0, '', '', 0, '082 324 104 704', 'amalyaamel28@gmal.com', 'MAN 1 Kota Magelang', 'Jl. Raya Payaman No. 1 Payaman Magelang 56195', '', '', 'Informasi dari Saudara/Teman', 'Bu Septi', 'M', ''),
('3K170983', 7, '', 'Anggun Prayoga', 'Pria', 'Demak', '26/05/1999', '3,32111E+15', '', 'Islam', 'Dsn. Cabean Gg. Merak Rt. 05 Rw. 01 Kel. Cabean Kec. Demak Kab. Demak 59551', 'Sumarlan', '', '', '', 0, '', '', 0, '089 662 469 603', '', 'SMA Negeri 2 Demak', 'Jl. Kudus No. 182 Demak', '', '', 'Informasi dari Saudara/Teman Arden Angkasa', 'Nanies Candrawati', 'M', ''),
('3K170984', 7, '', 'Ar Liza Sri Utami', 'Wanita', 'Brebes', '10/09/1997', '3,32906E+15', '', 'Islam', 'Dsn. Karang Pucung Rt. 06 Rw. 01 Kel. Mendala Kec. Sirampong Brebes 52272', 'Nur Muhammad', '', '', '', 0, '', '', 0, '082 328 692 983', 'arlizasriutami1009@gmal.com', 'SMK Semesta Bumiayu Brebes', 'Jl. P. Diponegoro KM. 01 Bumiayu Kab. Brebes 52273', '', '', 'Bu Erin / Pak Chris', '', 'M', ''),
('3K170985', 7, '', 'Arya Seta Ganda Saputra', 'Pria', 'Kendal', '12/09/1998', '3,32406E+15', '', 'Islam', 'Jl. Rambutan No. 04 Rt. 02 Rw. 04 Kel. Tamanrejo Kec. Limbangan Kab. Kendal 51383', 'Sugondo', '', '', '', 0, '', '', 0, '083 842 809 482', 'aryasaputra064@gmail.com', 'SMK Tamansiswa Boja', 'Jl. Raya Bebengan No. 263 Boja ', '', '', 'Informasi dari Saudara/Teman', '', 'XL', ''),
('3K170986', 7, '', 'Asriah', 'Wanita', 'Brebes', '10/05/1998', '3,32917E+15', '', 'Islam', 'Jl. H. Mansyur, Pamedaran, Ketanggungan Dk. Kuta Rt. 04 Rw. 01 Kel. Pamedaran Kec. Ketanggungan Kab. Brebes 52263', 'Sahidin', '', '', '', 0, '', '', 0, '083 837 288 708', 'asriahdaulay@gmail.com', 'SMA Negeri 1 Ketanggungan Brebes', 'Jl. Kali Kemiri III Kec. Margadana Tegal', '', '', 'Brosur dari luar sekolah', '', 'L', ''),
('3K170987', 7, '', 'Ayu Aryati', 'Wanita', 'Pematang Siantar', '04/09/1999', '3,20903E+15', '', 'Islam', 'Jl. Gatot Subroto Dsn. Manis Rt. 05 Rw. 02 Kel. Barisan Kec. Losari Kab. Cirebon 45192', 'Irwansyah ( Supriyatno )', '', '', '', 0, '', '', 0, '08 953 546 7719', '', 'SMK Mitra Karya Mandiri Ketanggungan', 'Jl. Jendral Sudirman No. 441 Ketanggungan', '', '', 'Bu Erin / Pak Chris', '', 'M', ''),
('3K170988', 7, '', 'Citra Nirmala', 'Wanita', 'Brebes', '18/05/1999', '3,32917E+15', '', 'Islam', 'Jl. H. Mansyur Dk. Parenca Rt. 003 rw. 004 Kel. Pamedaran Kec. Ketanggungan Kab. Brebes Jawa Tengah 52263', 'Kursim', '', '', '', 0, '', '', 0, '083 837 116 859', '', 'SMK Mitra Karya Mandiri Ketanggungan', 'Jl. Jendral Sudriman No. 441 Ketanggungan ', '', '', 'Guru Analis', '', 'M', ''),
('3K170989', 7, '', 'Danang Permadi', 'Pria', 'Demak', '15/01/2000', '3,32111E+15', '', 'Islam', 'Gang Merak Rt. 05 Rw. 01 Kel. Cabean Kec. Demak Kab. Demak 59517', 'Edi Mulyo', '', '', '', 0, '', '', 0, '085 878 366 839', '', 'SMA Negeri 2 Demak', 'Jl. Kudus No.  182 Kab. Demak', '', '', 'Informasi dari Saudara/Teman', 'Nanies Candrawati', 'M', ''),
('3K170990', 7, '', 'Devi Noviasari', 'Wanita', 'Jepara', '12/11/1999', '3,32013E+15', '', 'Islam', 'Jl. Nalumsari Ngetuk Jepara Dsn. Penagon Rt. 02 Rw. 06 Ke. Nalumsari Kec. Nalumsari Kab. Jepara 59466', 'Kastubi', '', '', '', 0, '', '', 0, '082 328 270 967', 'devinoviasari12@gmail.com', 'SMK Islam Al Hikmah Mayong Jepara', 'Jl. Branang Singorojo Mayong Jepara', '', '', 'Informasi dari Saudara/Teman', 'Tomi Adi Susilo Alumi AAK', 'M', ''),
('3K170991', 7, '', 'Dewi Herinda Hapsari', 'Wanita', 'Semarang', '14/05/1999', '3,37404E+15', '', 'Islam', 'Jl. Selomulyo Mukti Barat VI No. 100 Rt. 05 Rw. 09 Kel. Tlogomulyo Kec. Pedurungan Semarang 50195', 'Heriawan Novianto', '', '', '', 0, '', '', 0, '08 995 925 944', 'herinda7@gmail.com', 'SMA Negeri 10 Semarang', 'Jl. Padi Raya No. 16 Semarang', '', '', 'Informasi dari Saudara/Teman', 'Dra. Hayuningsih SMA 15', 'M', ''),
('3K170992', 7, '', 'Dias Ayu Wulan Suci', 'Wanita', 'Semarang', '08/01/1999', '3,3741E+15', '', 'Islam', 'Jl. Wiroto VII/12 Dsn. Krobokan Rt. 03 Rw. 07 Kel. Krobokan Kec. Semarang Barat Semarang 50141', 'Danang Agus Priyono', '', '', '', 0, '', '', 0, '085 601 409 081', 'diasayuws@gmail.com', 'SMK Theresiana Semarang', 'Jl. Mayjend Sutoyo No. 69 Semarang', '', '', 'tidak ada berkas', '', '', ''),
('3K170993', 7, '', 'Dita Elinawati', 'Wanita', 'Semarang', '01/08/1995', '', '', 'Islam', 'Jl. Poncowolo Barat III No. 669 Semarang', 'Suparno', '', '', '', 0, '', '', 0, '081 805 975 208', '', 'SMK Theresiana Semarang', 'Jl. Mayjend Sutoyo No. 69 Semarang', '', '', 'Informasi dari Saudara/Teman', 'Widya AAK smt VI', 'L', ''),
('3K170994', 7, '', 'Elena Kristin Tri Suryani', 'Wanita', 'Jepara', '05/03/1999', '3,32009E+15', '', 'Kristen', 'Dsn. Banyumas Rt. 01 Rw. 06 Kec. Donorojo Kab. Jepara 59457', 'Supriyadi', '', '', '', 0, '', '', 0, '089 515 450 512', 'molenmogo@gmal.com', 'SMA Negeri 1 Donorojo Jepara', 'Tulakan Donorojo Jepara', '', '', 'Informasi dari Saudara/Teman', '', 'M', ''),
('3K170995', 7, '', 'Hermansyah', 'Pria', 'Purbalingga', '03/04/1998', '3,30318E+15', '', 'Islam', 'Jl. Raya Darma Dsn. Darma Rt. 04 Rw. 02 Kel. Darma Kec. Kertanegara Kab. Purbalingga 53358', 'Hadi Rusul', '', '', '', 0, '', '', 0, '085 701 830 373', 'syahhermansyah405@gmail.com', 'SMK YPT 1 Purbalingga', 'Jl. May. Jend. Sungkono KM. 3', '', '', 'Informasi dari Saudara/Teman', '', 'L', ''),
('3K170996', 7, '', 'I Gede Semaratika', 'Pria', 'Salindu', '22/03/1999', '7,20206E+15', '', 'Hindu', 'Jl. Trans Sulawesi Rt. 01 Rw. 03 Kel. Salindu Kec. Pamona Tenggara Kab. Poso 94612', 'I Putu Suastika', '', '', '', 0, '', '', 0, '081 325 039 532', 'gedesemaratika@gmail.com', 'SMA Negeri 3 Palu ', 'Jl. Dewi Sartika No. 104 Kec. Palu Selatan', '', '', '', '', '', ''),
('3K170997', 7, '', 'Ina Sentia', 'Wanita', 'Grobogan', '14/06/1998', '', '', 'Islam', 'Jl. Dr. Sutomo GG. 2 Dsn. Palembahan Rt. 06 Rw. 08 Kel. Kalongan Kec. Purwodadi Kab. Grobogan', 'Sulimin', '', '', '', 0, '', '', 0, '088 803 903 884', '', 'SMK Asta Mitra Purwodadi', '', '', '', 'tidak ada berkas', '', '', ''),
('3K170998', 7, '', 'Khofifah Indah Nur Khoiriyah', 'Wanita', 'Sukoharjo', '17/06/1999', '3,37411E+15', '', 'Islam', 'Jl. Kalialang Lama Rt. 02 Rw. 01 Kel. Sukorejo Kec. Gunung Pati Semarang 50221', 'Bambang Hartono', '', '', '', 0, '', '', 0, '085 869 402 071', 'khofifah-khoiriyah@yahoo.co.id', 'SMA Negeri 6 Semarang', 'Jl. Ronggolawe No. 4 Semarang', '', '', 'Ayah', 'Bambang Hartono', 'M', ''),
('3K170999', 7, '', 'Lulu Khuyatul Jannah', 'Wanita', 'Brebes', '24/07/1998', '3,32906E+15', '', 'Islam', 'Dkh. Siroyom Rt. 01 Rw. 01 Ds. Mlayang Kec. Sirampong Kab. Brebes 52272', 'Muklas', '', '', '', 0, '', '', 0, '082 328 632 644', '', 'SMK Semesta Bumiayu Brebes', 'Jl. P. Diponegoro Km. 01 Dukuhturi Bumiayu Kab. Brebes', '', '', 'Bu Erin / Pak Chris', '', 'M', ''),
('3K171000', 7, '', 'Mahrifatul Maulidyah', 'Wanita', 'Demak', '06/07/1998', '6,20101E+15', '', 'Islam', 'Jl. Jatirejo Rt. 06 Rw. 01 Kel. Karanganyar Kec. Mijen Kab. Demak 59583', 'Sa\'arih', '', '', '', 0, '', '', 0, '081 548 724 107', 'maulidyadmk@gmail.com', 'SMA Negeri 1 Mijen Demak', 'Jl. Raya Bakung No. 3 Mijen', '', '', 'Media cetak/elektronik', '', 'M', ''),
('3K171001', 7, '', 'Muhammad Hakam Ufi Ikfina', 'Pria', 'Semarang', '09/09/1999', '3,37406E+15', '', 'Islam', 'Jl. Plamongan Sari Rt. 03 Rw. 09 Kel. Plamongan Sari Kec. Pedurungan Semarang 50193', 'Sumono', '', '', '', 0, '', '', 0, '083 842 881 008', 'hakamufii09@gmail.com', 'MA Negeri 1 Semarang', 'Jl. Brigjen S. Sudiarto Pedurungan Kidul', '', '', 'Informasi dari Saudara/Teman', '', 'L', ''),
('3K171002', 7, '', 'Nidia Ayunda Kristalia', 'Wanita', 'Semarang', '26/02/1999', '3,37415E+15', '', 'Kristen', 'Bukit Jatisari Endah Jl. Rambutan I B2/3A Dsn. Jatisari RT. 04 Rw. 07 Kel. Jatisari Kec. Mijen Semarang 50218', 'Sri Widigdo', '', '', '', 0, '', '', 0, '088 981 007 018', 'nidiarista@yahoo.co.id', 'SMK Theresiana Semarang', 'Jl. Mayjend Sutoyo No. 69 Semarang', '', '', 'Informasi dari Saudara/Teman', '', 'S', ''),
('3K171003', 7, '', 'Papin Sutantio Win', 'Pria', 'Purbalingga', '28/06/1998', '3,30301E+15', '', 'Islam', 'Karangtengah Rt. 21 Rw. 10 Kel. Karangtengah Kec. Kemangkon Purbalingga 53381', 'Suripto', '', '', '', 0, '', '', 0, '085 604 378 209', '', 'SMA Negeri 1 Sokaraja Banyumas ', 'Jl. Raya Sokaraja Timur No. 1 Kec. Sokaraja Banyumas', '', '', 'Informasi dari Saudara/Teman', 'Reizika AAK 2016', 'M', ''),
('3K171004', 7, '', 'Riska Ayuk Yuli Safitri', 'Wanita', 'Blora', '20/10/1999', '3,31613E+15', '', 'Islam', 'Dk. Ploso Rt. 07 Rw. 02 Kel. Sarimulyo Kec. Ngawen Kab. Blora 58254', 'Sumarjan', '', '', '', 0, '', '', 0, '089 530 852 639', 'riskaayu414@gmail.com', 'SMA Negeri 1 Ngawen Blora', 'Jl. Raya Purwodadi Km. 17 Ngawen Blora ', '', '', 'Informasi dari Saudara/Teman', 'Winarno', 'L', ''),
('3K171005', 7, '', 'Rogayati', 'Wanita', 'Brebes', '02/01/1998', '3,32913E+15', '', 'Islam', 'Dsn. Kemurang Kulon Rt. 03 Rw. 02 Kel. Kemurang Kulon Kec. Tanjung Kab. Brebes 52254', 'Karnadi', '', '', '', 0, '', '', 0, '083 837 398 290', '', 'SMK Mitra Karya Mandiri Ketanggungan', 'Jl. Jendral Sudriman No. 441 Ketanggungan ', '', '', 'Bu Erin / Pak Chris', '', 'M', ''),
('3K171006', 7, '', 'Rosy Novitasari', 'Wanita', 'Semarang', '07/11/1998', '3,37413E+15', '', 'Islam', 'Jl. Jembawan Raya Mess Pa II Rt. 01 Rw. 01 Kel. Kalibanteng Kulon Kec. Semarang Barat Semarang 50145 ', 'Jamroni', '', '', '', 0, '', '', 0, '087 821 484 791', 'oci-oci77@yahoo.com', 'SMA Setiabudhi Semarang', 'Jl. Wr. Supratman No. 37 Kalibanteng Kidul Semarang Barat', '', '', 'Brosur / Pamflet dari sekolah', '', 'XXX', ''),
('3K171007', 7, '', 'Sella Kartika Jelita Putri', 'Wanita', 'Brebes', '13/02/1999', '3,32915E+15', '', 'Islam', 'Jl. Jend. Ahmad Yani Dsn. Tegalglagah Rt. 02 Rw. 01 Kel. Tegalglagah Kec. Bulakamba Kab. Brebes 52253', 'Sugeng Juharso', '', '', '', 0, '', '', 0, '0895 380 690 81', 'sellakartika2016@gmail.com', 'SMK Mitra Karya Mandiri Ketanggungan', 'Jl. Jendral Sudirman No. 441 Ketanggungan', '', '', 'Bu Erin / Pak Chris', '', 'M', ''),
('3K171008', 7, '', 'Silviana', 'Wanita', 'Tegal', '11/05/1999', '3,32803E+15', '', 'Islam', 'Cempaka Rt. 05 Rw. 01 Kel. Cempaka Kec. Bumijawa Kab. Tegal 52466', 'Suripto', '', '', '', 0, '', '', 0, '085 325 799 986', 'cilpio59@gmail.com', 'SMK Semesta Bumiayu Brebes', 'Jl. P. Diponegoro Km. 01 Dukuhturi Bumiayu Kab. Brebes', '', '', 'Brosur / Pamflet dari sekolah', '', 'M', ''),
('3K171009', 7, '', 'Silvy Dwi Hapsari', 'Wanita', 'Purbalingga', '21/10/1999', '3,30303E+15', '', 'Islam', 'Kedungjati Rt. 02 Rw. 02 Ds. Kedungjati Kec. Bukateja Kab. Purbalingga 53382', 'Misro', '', '', '', 0, '', '', 0, '081 615 153 184', 'silvidwi21@gmail.com', 'SMA Negeri 1 Bukateja Purbalingga', 'Jl. Purwandaru, Bukateja Purbalingga', '', '', 'Informasi dari Saudara/Teman', 'Dyah K', 'L', ''),
('3K171010', 7, '', 'Siti Fatimah', 'Wanita', 'Brebes', '24/02/1999', '3,32904E+15', '', 'Islam', 'Jl. Soedirman KM.01 Laren Rt. 01 Rw. 03 Kel. Laren Kec. Bumiayu Kab. Brebes 52273', 'Tohirin', '', '', '', 0, '', '', 0, '082 323 927 578', 'fatimah24feb@gmail.com', 'SMK Semesta Bumiayu Brebes', 'Jl. P. Diponegoro Km. 01 Dukuhturi Bumiayu Kab. Brebes', '', '', 'Informasi dari Saudara/Teman', '', 'L', ''),
('3K171011', 7, '', 'Siti Kriswahyuningsih', 'Wanita', 'Blora', '08/09/1998', '3,31602E+15', '', 'Islam', 'Dsn. Ngampel Rt. 07 Rw. 03 Kel. Tanggel Kec. Randublatung Kab. Blora 58382', 'Saman', '', '', '', 0, '', '', 0, '085 870 425 061', 'sitikris49@gmail.com', 'SMK PSM Randublatung Blora', 'Randublatung', '', '', 'Informasi dari Saudara/Teman', 'Khoirun Nisa smt IV AAK', 'S', ''),
('3K171012', 7, '', 'Siti Novita Handayani', 'Wanita', 'Blora', '25/12/1999', '3,31613E+15', '', 'Islam', 'Dk. Pecaren Rt. 02 Rw. 01 Kel. Semawur Kec. Ngawen Kab. Blora 58254', 'Masngut', '', '', '', 0, '', '', 0, '082 325 336 023', '', 'SMA Negeri 1 Ngawen Blora', 'Jl. Raya Purwodadi Km. 17 Ngawen Blora ', '', '', 'tidak ada berkas', '', '', ''),
('3K171013', 7, '', 'Siti Nuraeni', 'Wanita', 'Semarang', '16/04/1999', '3,37413E+15', '', 'Islam', 'Sadeng RT. 04 RW. 01 Kel. Sadeng Kec. Gunungpati Kab. Semarang 50222', 'Suradi', '', '', '', 0, '', '', 0, '0895 329 783 49', 'snuraei965@gmail.com', 'SMA Setiabudhi Semarang', 'Jl. Wr. Supratman No. 37 Kalibanteng Kidul Semarang Barat', '', '', 'tidak ada berkas', '', '', ''),
('3K171014', 7, '', 'Syarif Khabibi', 'Pria', 'Brebes', '02/07/1998', '3,32914E+15', '', 'Islam', 'Jl. Raya Dsn. Saliman Bangsri Rt. 03 Rw. 09 Kel. Bangsri Kec. Bulakamba Kab. Brebes 52253', 'M. Daryo', '', '', '', 0, '', '', 0, '082 325 105 225', 'syarifkhabibi@gmail.com', 'MA Negeri Babakan Ciwaringin Cirebon', 'J. Pesantren Selatan Babakan Ciwaringin Cirebon', '', '', 'Informasi dari Saudara/Teman', 'Triman Hadi', 'M', ''),
('3K171015', 7, '', 'Teodora Pasang', 'Wanita', 'Rantetiku', '06/10/1992', '', '', 'Katholik', 'Jl. A.A. Maramis No. 10 Paniki Dua Kec. Mapanget Manado 95257', 'Yakop Lete', '', '', '', 0, '', '', 0, '085 242 788 192', '', 'SMA Negeri 1 Wotu Sulsel', '', '', '', 'Informasi dari Saudara/Teman', '', 'XL', ''),
('3K171016', 7, '', 'Wiwik Rahayu', 'Wanita', 'Cirebon', '17/10/1999', '', '', 'Islam', 'Losari Kab. Cirebon', '', '', '', '', 0, '', '', 0, '083 823 577 110', '', 'SMK Mitra Karya Mandiri Ketanggungan', 'Jl. Jendral Sudirman', '', '', 'Bu Erin / Pak Chris', '', 'M', ''),
('3K171017', 7, '', 'Xena Widiastuti', 'Wanita', 'Semarang', '23/11/1998', '3,37404E+15', '', 'Islam', 'Jl. Kanalsari Barat IA/34 Rt. 04 Rt. 08 Kel. Rejosari Kec. Semarang Timur Semarang 50125', 'Waryanto', '', '', '', 0, '', '', 0, '088 215 409 901', '', 'SMA Institut Indonesia Semarang', 'Jl. Maluku No. 25 Semarang', '', '', 'Brosur/Pamflet dari sekolah', '', 'S', ''),
('3K171018', 7, '', 'Yona Cantika Ramadhany', 'Wanita', 'Semarang', '22/12/1999', '3,37408E+15', '', 'Islam', 'Jl. Bulu Stalan III B No. 358 Rt. 07 Rw. 01 Semarang', 'Triyo Hartanto', '', '', '', 0, '', '', 0, '0895 385 075 93', 'yonaramadhany38@gmail.com', 'SMK Theresiana Semarang', 'Jl. Mayjend Sutoyo No. 69 Semarang', '', '', 'Brosur/Pamflet dari sekolah', '', 'L', ''),
('3K171019', 7, '', 'Yuni Yanti', 'Wanita', 'Batang', '12/06/1999', '3,32508E+15', '', 'Islam', 'Dsn. Yosorejo Rt. 03 Rw. 02 Kel. Yosorejo Kec. Gringsing Kab. Batang 51281', 'Sunardi', '', '', '', 0, '', '', 0, '082 223 745 404', 'yuniyanti43@gmail.com', 'MA Futuhiyyah 2 Mranggen Demak', 'Jl. Suburan Tengah Mranggen Demak 59567', '', '', 'Informasi dari Saudara/Teman', '', 'L', ''),
('3K171020', 7, '', 'Yutika Alfifah', 'Wanita', 'Sukoharjo', '07/09/1999', '3,31103E+15', '', 'Islam', 'Yos Sudarso Dsn. Tegalan Rt. 01 Rw. 04 Ds. Kateguhan Kec. Tawagsari Kab. Sukoharjo 57561', 'Srihono', '', '', '', 0, '', '', 0, '089 687 103 162', 'yutikajaiko@gmail.com', 'SMA Negeri 1 Tawangsari Sukoharjo', 'Jl. Patimura No. 105 Tawangsari, Sukoharjo 57561', '', '', '-', 'Winarno', '', ''),
('3K171021', 7, '', 'Zhania Heldayana Devi', 'Wanita', 'Dili', '15/02/1999', '3,32408E+15', '', 'Kristen', 'Jl. Taruna Bakti Dsn. Simbang Rt. 07 Rw. 05 Kel. Bebengan Kec. Boja Kab. Kendal 51381', 'Slamet Budiono', '', '', '', 0, '', '', 0, '082 326 079 952', 'zhaniadevi99@gmail.com', 'SMK Perawat Taman Siswa Boja', 'Jl. Raya Bebengan No. 263 Boja ', '', '', 'Informasi dari Saudara/Teman', 'Helenika smt VI AAK', 'S', ''),
('3K181047', 8, '', 'Abbas Herlan', 'Pria', 'Semarang', '24/11/1996', '3,37414E+15', '', 'Islam', 'Jl. Duduhan Rt. 02 Rw. 05 Kel. Mijen Kec. Mijen Semarang 50218 Jawa Tengah', 'Jonet', '', '', '', 0, '', '', 0, '087-832-213-978', '', 'SMK PALAPA', 'Jl.Untung Suropati Kedungpane Semarang', '', '', '', '', '', ''),
('3K181048', 8, '', 'Afifah', 'Wanita', 'Semarang', '26/03/2000', '3,32114E+15', '', 'Islam', 'Jl. Jetak Rt. 04 Rw. 04 Kel. Jetak Kec. Wedung Kab. Demak 59554 Jawa Tengah', 'Su\'udi', '', '', '', 0, '', '', 0, '089-533-234-912', '', 'SMK Islam Al-Hikmah Mayong', 'Jl. Branang Singorojo', '', '', 'Brosur/Pamflet dari sekolah', '', '', ''),
('3K181049', 8, '', 'Ainun Unipah', 'Wanita', 'Indramayu', '25/06/2000', '3,21213E+16', '', 'Islam', 'Blok Bantaragung Rt.19 Rw.05 Kel. Kebulen Kec. Jatibarang Kab. Indramayu 45273 Jawa Barat ', 'Samsudin', '', '', '', 0, '', '', 0, '089-537-416-087', '', 'SMA N 1 Jatibarang', 'Jl.Ampera Bulak, Jatibarang, Indramayu', '', '', '', '', '', ''),
('3K181050', 8, '', 'Amata Yulinar Aviasita Savio', 'Wanita', 'Semarng', '28/07/1997', '3,37414E+15', '', 'Katholik', 'Jl. Watugunung I Gang I/I/106 RT.005 Rw.008 Kel. Krapyak Kec. Semarang Barat 50146 Jawa Tengah', 'Guntur Muliawan', '', '', '', 0, '', '', 0, '081-380-421-400', '', 'SMK Analis Kesehatan Theresiana', 'Jl. Seroja', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K181051', 8, '', 'Anis Pratiwi', 'Wanita', 'Semarang', '14/05/2000', '3,37414E+15', '', 'Islam', 'Jl. Borobudur Timur III Rt.03/Rw.09 Kel. Kembangarum Kec. Semarang Barat Kab. Semarang 50148 Jawa Tengah', 'Marwoto', '', '', '', 0, '', '', 0, '089-683-355-028', '', 'SMA Setiabudhi Semarang', 'Jl.Wr Supratman 37', '', '', 'Brosur/Pamflet dari sekolah', '', '', ''),
('3K181052', 8, '', 'Anjar Wati', 'Wanita', 'Demak', '19/12/1999', '3,32104E+15', '', 'Islam', 'Jl. Krandon Rt. 013 Rw. 003 Kel. Krandon Kec. Guntur Kab. Demak 59565 Jawa Tengah ', 'Slamet', '', '', '', 0, '', '', 0, '087-884-636-516', '', 'MA Asy-Syarifah', 'Jl. Brumbung Mranggen, Demak', '', '', 'Informasi dari saudara/teman', 'Bp.Suwondo', '', ''),
('3K181053', 8, '', 'Arif Syah Putra', 'Pria', 'Jember', '11/10/1998', '3,50927E+15', '', 'Islam', 'Jl. Patimura BLK RPH Rt. 005 Rw. 016 Kel. Kalisat Kec. Kalisat Kab. Jember Jawa Timur', 'Siswanto', '', '', '', 0, '', '', 0, '089-626-057-074', '', 'SMA 10 Nopember Kalisat', 'Jl. Ki Hajar Dewantara', '', '', 'Informasi dari saudara/teman', 'Bu Nanies', '', ''),
('3K181054', 8, '', 'Catrin Braja Ambarwati', 'Wanita', 'Semarang', '27/10/1999', '3,37414E+15', '', 'Islam', 'Jl. Kumudasmoro Dalam VI RT.05 RW.08 Kel. Bongsari Kec. Semarang Barat Kab. Semaraqng 50148 Jawa Tengah', 'Soeyadi', '', '', '', 0, '', '', 0, '085-879-167-757', 'cat.braja@gmail.com', 'SMA Setiabudhi Semarang', 'Jl. Wr Supratman 37', '', '', 'Brosur/Pamflet dari sekolah', '', '', ''),
('3K181055', 8, '', 'Cindy Wahyu Pawestri', 'Wanita', 'Demak', '02/06/2000', '3,32104E+15', '', 'Kristen', 'Jl.Pondok Raden Patah Blok Y.I/17 Rt.01 Rw.05 Kel. Sriwulan Kec. Sayung Kab. Demak 59563 Jawa Tengah', 'Drs. Arief Saharjo', '', '', '', 0, '', '', 0, '082-141-405-075', '', 'SMA N 10 Semarang', 'Jl.Padi Raya No.16', '', '', 'Media Cetak/Elektronik', '', '', ''),
('3K181056', 8, '', 'Daris Lailatul Khusnia', 'Wanita', 'Jepara', '16/10/1999', '3,32005E+15', '', 'Islam', 'Jl. Gleget Rt. 04 Rw. 08 Kel. Mayong Lor Kec. Mayong Kab. Jepara 59465 Jawa Tengah', 'Supriyo', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', ''),
('3K181057', 8, '', 'Devi Puji Lestari', 'Wanita', 'Blora', '03/04/2000', '3,31601E+15', '', 'Islam', 'Dukuh KD Glagah Rt. 06 Rw. 04 Kel. Pelem Kec. Jati Kab. Blora 58384 Jawa Tengah', 'Suhadi', '', '', '', 0, '', '', 0, '082-125-725-693', 'devipujilestari34@gmail.com', 'SMAN I Randublatung', 'Jl. Blora 37 Randublatung-Blora 58382', '', '', 'Informasi dari saudara/teman', 'Nyema Fera ', '', ''),
('3K181058', 8, '', 'Devy Kristiana', 'Wanita', 'Semarang', '29/12/2000', '3,37414E+15', '', 'Kristen', 'Jl. Gedung Batu Timur Rt.03 Rw.08 Kel. Ngemplak Simongan Kec. Semarang Barat Kab. Semarang 50148 Jawa Tengah', 'Suharno', '', '', '', 0, '', '', 0, '085-866-292-393', '', 'SMAK Theresiana Semarang', 'Jl. Seroja Dalam I No.10', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K181059', 8, '', 'Dwi Cahyaningtyas', 'Wanita', 'Pati', '19/06/1999', '3,31805E+15', '', 'Kristen', 'Dsn. Gebyaran Rt. 03 Rw. 03 Kel. Sarimulyo Kec. Winong Kab. Pati 59181 Jawa Tengah', 'Timotius Supadi', '', '', '', 0, '', '', 0, '082-313-103-948', 'tyascahya4@gmail.com', 'SMA Negeri 1 Jakenan', 'Jl. Jakenan,Kab.Pati', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K181060', 8, '', 'Elfrida Victoria Angela Tefa', 'Wanita', 'Semarang', '28/06/2000', '3,37414E+15', '', 'Kristen', 'Jl. Wologito Barat 8 Rt. 02 Rw. 05 Kel. Kembangarum Kec. Semarang Barat Kab. Semarang 50148 Jawa Tengah', 'Samuel Tefa', '', '', '', 0, '', '', 0, '082-135-442-523', '', 'SMK Theresiana Analis Kesehatan Semarang', 'Jl. Seroja Dalam I No.10', '', '', 'Informasi dari saudara/teman', 'Bp. Yohannes        ( dosen agama kristen)', '', ''),
('3K181061', 8, '', 'Faniessa Triandhany', 'Wanita', 'Semarang', '05/09/2000', '3,37413E+15', '', 'Islam', 'Jl. Abdulrahman Saleh No. 3 Rt. 003 Rw. 005 Kel. Kalibanteng Kidul Kec. Semarang Barat Semarang 50149 Jawa Tengah', 'Hartono', '', '', '', 0, '', '', 0, '081-325-059-767', '', 'SMA Negeri 13 Semarang', 'Jl. Rowosemanding Mijen ', '', '', 'Rumah sakit/Klinik/Puskesma', 'Bu Uus', '', ''),
('3K181062', 8, '', 'Fanny Cyntia Dewi', 'Wanita', 'Semarang', '03/07/1999', '3,37402E+15', '', 'Islam', 'Jl. Lodan 3 Rt. 003 Rw. 003 Kel. Bandarharjo Kec. Semarang Utara Semarang 50175 Jawa Tengah', 'Sutriyono', '', '', '', 0, '', '', 0, '081-326-134-000', 'fannycyntia075@gmail.cfom', 'SMA Negeri 14 Semarang', 'Jl. Kokrosono Semarang 50177', '', '', 'Elektronik', '', '', ''),
('3K181063', 8, '', 'Fredy Pratama', 'Pria', 'Magelang', '11/09/1998', '3,37415E+15', '', 'Islam', 'Jl. Bukit Bringin Elok IX/9557 Rt. 003 Rw. 014 Kel. Wonosari Kec. Ngaliyan Semarang 50186 Jawa Tengah', 'Ganjar Purwadi', '', '', '', 0, '', '', 0, '085-726-964-494', 'ANONGEP@Protonmail.com', 'SMK Islamic Centre Baiturrahman', 'Jl. Abdurahman Saleh 208', '', '', 'Ari Yoga', 'Ari Yoga (Alumni)', '', ''),
('3K181064', 8, '', 'Frieda Octavellina', 'Wanita', 'Kendal', '23/10/1998', '3,37415E+15', '', 'Islam', 'Jatisari Indah Blok B.6/6 Rt. 001 Rw. 007 Kel. Jatisari Kec. Mijen Semarang 50218 Jawa Tengah', 'Sulistiyono', '', '', '', 0, '', '', 0, '081-390-999-064', 'FRIEDAOCTAVELLINA@gmail.com', 'SMAK Theresiana Semarang', 'Jl. Seroja Dalam I No.10', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K181065', 8, '', 'Gita Puspita Sari', 'Wanita', 'Balikpapan', '02/07/2000', '6,47103E+15', '', 'Islam', 'Jl. Perjuangan No. 64  Rt.06 Kel. GN. Samarinda Baru Kec. Balikpapan Utara Kab. Kota Balikpapan Kalimantan Timur', 'Sukandar', '', '', '', 0, '', '', 0, '082-157-674-224', 'gitas8914@gmail.com', 'SMK Nusantara Balikpapan', 'Jl. Gurinda IV Balikpapan', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K181066', 8, '', 'Khoerunnisa Abdilla', 'Wanita', 'Brebes', '29/05/2000', '3,32014E+15', '', 'Islam', 'Jl. Pejagan Rt. 001 Rw. 004 Kel. Pejagan Kec. Tanjung Kab. Brebes 52254 Jawa Tengah ', 'Abdul Kholid', '', '', '', 0, '', '', 0, '085-226-107-798', '', 'SMK Mitra Karya Mandiri Ketanggungan', 'Jl.Jendral Sudirman No.441-Ketanggunan', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K181067', 8, '', 'Khoirul Fitriyani', 'Wanita', 'Jepara', '09/09/1999', '3,32003E+15', '', 'Islam', 'Jl. Bugo Rt.03 Rw.02 Welahan Jepara 59464 Jawa Tengah', 'Sudrino ', '', '', '', 0, '', '', 0, '089-695-559-087', '', 'SMK Islam Al-Hikmah Mayong', 'Jl. Branang Singorojo', '', '', 'Brosur/Pamflet dari sekolah', '', '', ''),
('3K181068', 8, '', 'Khoyali Ilmi', 'Pria', 'Jepara', '02/04/2000', '3,32013E+15', '', 'Islam', 'Jl.Raya Gotri-Welahan Km 5 Ds.Robayan Rt.21 Rw.03 Kec.Kalinyamatan Kab Jepara 59467 Jawa Tengah', 'Sholehan', '', '', '', 0, '', '', 0, '089-536-365', 'Khoyali69@gmail.com', 'SMK Islam Al-Hikmah Mayong', 'Jl. Branang Singorojo', '', '', '', '', '', ''),
('3K181069', 8, '', 'Kristiyaningsih', 'Wanita', 'Brebes', '02/12/2000', '3,32913E+15', '', 'Islam', 'Jl.KH Bukhori No.29 Km. 3 Pejagan Ds. Krakanan Rt. 01 Rw. 01 Kel. Krakahan Kec. Tanjung Kab. Brebes 52252 Jawa Tengah', 'Kasanudin', '', '', '', 0, '', '', 0, '083-861-041-284', '', 'SMK Mitra Karya MandiriKetanggunan', 'Jl.Jendral Sudirman No.441-Ketanggunan', '', '', 'Guru ( Pak Kris )', '', '', ''),
('3K181070', 8, '', 'Martha Kewa Noreg', 'Wanita', 'Hatoheno', '27/01/1997', '5,31305E+15', '', 'Katholik', 'Jl. Pada Rt. 09 Rw. 03 Kel. Pada Kec. Nubatukan Kab. Lembata 86682 Nusa Tenggara Timur', 'Antonius Naser Noreng', '', '', '', 0, '', '', 0, '081-337-949-624', 'Martha.noreng@gmail.com', 'SMA Negeri 1 Nubatukan', '', '', '', 'Informasi dari saudara/teman', 'Dewi Gita Cahyani', '', ''),
('3K181071', 8, '', 'Melli Prasetyowati', 'Wanita', 'Batang', '23/03/2000', '3,32508E+15', '', 'Islam', 'Jl. Ketanggan Rt.07 Rw.02 Ds. Ketanggan Kec.Gringsing Kab.Batang 51281 Jawa Tengah', 'Soliatun/Sugondo', '', '', '', 0, '', '', 0, '082-221-108-300', '', 'SMA Negeri 1 Gringsing', 'Ds.Karanganyar Lebo Kec.Gringsing Kab.Batang', '', '', 'Brosur/Pamflet dari sekolah', '', '', ''),
('3K181072', 8, '', 'Muh. Ramdhani Erza Prasetyo', 'Pria', 'Batang', '07/01/2000', '3,32508E+15', '', 'Islam', 'Dk.Brajan Rt.01/Rw.01 Ds.Kepuh Kec.Limpung Kab.Batang 51271 Jawa Tengah', 'Budi Prasetyo, Amd.AK', '', '', '', 0, '', '', 0, '082-324-396-931', 'ramdhanierza503@gmail.com', 'SMA Negeri 1 Bawang', 'Jl.Jrampang-Bawang Ds. Jlamprang Kec.Bawang Kab.Batang', '', '', 'Brosur/Pamflet dari sekolah', 'IbuWoro', '', ''),
('3K181073', 8, '', 'Muhamad Habizar Pamungkas', 'Pria', 'Semarang', '10/11/1999', '3,37414E+16', '', 'Islam', 'Dk. Jatibarang Rt. 01 Rw. 01 Desa Kedungpani Kec. Mijen Kab. Kota Semarang 50211 Jawa Tengah', 'Kirman', '', '', '', 0, '', '', 0, '', 'habizarpamungkas@gmail.com', 'SMA Negeri 13 Semarang', 'Mijen Semarang', '', '', '', '', '', ''),
('3K181074', 8, '', 'Muhamad Taufik Aminudin', 'Pria', 'Demak', '08/10/2000', ' ', '', 'Islam', 'Jl. Bumiharjo Rt.03 Rw.01 Kel. Bumiharjo Kec. Guntur Kab. Demak', 'Daenuri', '', '', '', 0, '', '', 0, '', '', 'SMA Negeri 2 Demak', 'Jl. Demak Jawa Tengah', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K181075', 8, '', 'Muhammad Aziz Abdullah', 'Pria', 'Semarang', '04/02/2000', '3,37413E+15', '', 'Islam', 'Jl.Wr Supratman Rt.01 Rw.04 Kel. Gisikdrono Kec. Semarang Barat Semarang 50149 Jawa Tengah', 'Sutarno', '', '', '', 0, '', '', 0, '083-838-248-592', 'azizituazizull9@gmail.com', 'SMA N 6 Semarang', 'Jl.Ronggolawe, Gisikdrono, Semarang Barat', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K181076', 8, '', 'Nadia Amalia Putri', 'Wanita', 'Brebes', '29/03/2000', '3,32904E+15', '', 'Islam', 'Dk.Pojok Penggarutan Rt.04 Rw.02 Kel. Penggarutan Kec. Bumiayu Kab.Brebes 52273 Jawa Tengah', 'Latifah', '', '', '', 0, '', '', 0, '089-965-550-13', 'Nadiapiki8@gmail.com', 'SMK Semesta Bumiayu', 'Jl. Pangeran Diponegoro KM.01 Dukuhturi, Bumiayu, Kab.Brebes, Jawa Tengah', '', '', 'Sosialisasi', '', '', ''),
('3K181077', 8, '', 'Neli Hemalia Putri', 'Wanita', 'Brebes', '09/09/2000', '3,32914E+15', '', 'Islam', 'Ds. Grinting Rt.05 Rw.04 Ds. Grinting Kec. Bulakamba Kab. Brebes 52253 Jawa Tengah', 'Supardi', '', '', '', 0, '', '', 0, '081-902-087-368', 'nhputri018@gmail.com', 'SMK Mitra Karya Mandiri Ketanggungan', 'Jl.Jendral Sudirman No.441-Ketanggunan', '', '', '', '', '', ''),
('3K181078', 8, '', 'Ninik Setyowati', 'Wanita', 'Demak', '28/10/1999', '3,32112E+15', '', 'Islam', 'Ds. Cabean Rt. 05 Rw. 01 Kel.Cabean Kec. Demak Kab. Demak 59551 Jawa Tengah', 'Kaswito', '', '', '', 0, '', '', 0, '083-862-626-476', '', 'SMA N 2 Demak', 'Jl.Kudus No.182 Demak', '', '', 'Informasi dari saudara/teman', 'Ardan Angkasa', '', ''),
('3K181079', 8, '', 'Nur Nadzifah', 'Wanita', 'Demak', '01/02/1999', '3,37412E+15', '', 'Islam', 'Jl.Siwarak Rt.05 Rw.02 Kel.Kandri Kec.Gunungpati Semarang 50222 Jawa Tengah', 'Muntaha', '', '', '', 0, '', '', 0, '089-560-503-287', 'nadzifahnur16@gmail.com', 'SMA Setiabudhi Semarang', 'Jl.Wr.Supratman No.37 Semarang', '', '', 'Brosur/Pamflet dari sekolah', '', '', ''),
('3K181080', 8, '', 'Nurul Faekun', 'Pria', 'Demak', '28/03/2000', '3,32111E+15', '', 'Islam', 'Gg. Merak Rt. 06 Rw. 01 Kel. Cabean Kec. Demak Kab. Demak 59551 Jawa Tengah', 'Gito Suwarno', '', '', '', 0, '', '', 0, '087-787-896-076', 'nurulfaekun2@gmail.com', 'SMA Negeri 1 Mijen ', 'Jl. Raya Bakung No.3 Kab.Demak', '', '', 'Brosur dari luar sekolah', 'Ardan Angkasa', '', ''),
('3K181081', 8, '', 'Priesa Nurma Yunita', 'Wanita', 'Semarang', '03/05/2000', '3,37413E+15', '', 'Islam', 'Jl.Jembawan Rt.07 Rw.01 Kel. Kalibanteng Kulon Kec. Semarang Barat Semarang 50145 Jawa Tengah', 'Darusmono', '', '', '', 0, '', '', 0, '083-872-318-311', 'nurmayunita35@gmail.com', 'SMA Setiabudhi Semarang', 'Jl.Wr.Supratman No.37 Semarang', '', '', 'Brosur/Pamflet dari sekolah', 'Guru BK SMA Setiabudhi', '', ''),
('3K181082', 8, '', 'Ridha Salsabiella Ma\'aris', 'Wanita', 'Sragen', '19/05/2000', '3,3141E+15', '', 'Islam', 'Jl. Margo Asri Rt.33 Rw.09 Kel. Puro Kec. Karangmalang, Kab. Sragen 57291 Jawa Tengah', 'Tuah Ardian Norva Ma\'aris', '', '', '', 0, '', '', 0, '085-702-681-333', ' Salsabiellar@gmail.com', 'MA N 1 Sragen', 'Jl. Irian Nglorog, Sragen', '', '', 'Informasi dari saudara/teman', 'Bu Dyah', '', ''),
('3K181083', 8, '', 'Rinda Nur Asiyah', 'Wanita', 'Sragen', '15/05/2000', '3,3141E+15', '', 'Islam', 'Jl. Sidodadi Rt.17 Rw.04 Kel. Kedungwaduk Kec. Karangmalang, Kab.Sragen 57291 Jawa Tengah', 'Sumadi, S.Pd. SD.', '', '', '', 0, '', '', 0, '085-200-333-859', 'Rindanura125@gmail.com', 'SMA Muhammadiyah 1 Sragen', 'Jl. Raya Sukowati Kotak Pos 108 Sragen ', '', '', 'Informasi dari saudara/teman', 'Bu Dyah', '', ''),
('3K181084', 8, '', 'Rissa Rahmanda', 'Wanita', 'Semarang', '25/03/2000', '3,37414E+15', '', 'Islam', 'Jl.Wonolopo Rt.03 Rw.05 Kel. Wonolopo Kec. Mijen Semarang 50215 Jawa Tengah', 'Waluyo Jati', '', '', '', 0, '', '', 0, '089-539-529-845', 'RissaRahmanda@gmail.com', 'SMA Unggulan Nurul Islam', 'Jl. Rejosari Mijen', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K181085', 8, '', 'Septiana Indah Prihatin', 'Wanita', 'Brebes', '23/09/2000', '3,32915E+15', '', 'Islam', 'Ds. Cipelem Rt. 02 Rw. 03 Ds. Cipelem Kec.Bulakamba Kab.Brebes 52253 Jawa Tengah', 'Supriatin', '', '', '', 0, '', '', 0, '085-826-345-041', '', 'SMK Mitra Karya Mandiri Ketanggungan', 'Jl.Jendral Sudirman No.441-Ketanggunan', '', '', 'Guru ( Pak Kris )', '', '', ''),
('3K181086', 8, '', 'Shofi Salsabila Nuha', 'Wanita', 'Purwokerto', '28/06/2001', '', '', 'Islam', 'Jl. Achmad Zain, Pasir Kidul Rt.04 Rw.02 Kec. Purwokerto Barat Kab. Banyumas', 'Dwi Lestari Murdiyati', '', '', '', 0, '', '', 0, '089-940-912-39', 'Shofisalsabila@gmail.com', '', '', '', '', '', '', '', ''),
('3K181087', 8, '', 'Titi Widyaningsih', 'Wanita', 'Purwokerto', '28/06/2001', '3,30226E+15', '', 'Islam', 'Pejarakan Ds. Mlayang Rt 02 Rw 03 Kec. Sirampog Kab. Brebes 52272', 'Sugino Karyadi', '', '', '', 0, '', '', 0, '0823-2922-5842', 'TitiWidyaningsih@gmail.com', 'SMK Citra Bangsa Mandiri Purwokerto', 'Kampoeng Pendidikan CBM, Tanjung, Purwokerto', '', '', 'Brosur dari luar sekolah', '', '', ''),
('3K181088', 8, '', 'Tiur Millenia Amanda Putri', 'Wanita', 'Brebes', '23/06/2000', '3,39057E+14', '', 'Islam', 'Ds.Cabean Jl. Sekolahan, Kec. Demak, Kab. Demak, Jawa Tengah', 'Sri Mularsih', '', '', '', 0, '', '', 0, '0814-7719-6159', '', 'SMK Semesta Bumiayu', 'Jl.P. Dipnegoro KM 01 Talok Dukuhturi Bumiayu', '', '', '', '', '', ''),
('3K181089', 8, '', 'Widya Ningsih', 'Wanita', 'Demak', '12/12/1999', '', '', 'Islam', 'Ds. Gidangelo Rt 06 Rw 02 Kec. Welahan Kab. Jepara 59464', 'Suparmi', '', '', '', 0, '', '', 0, '0898-5733-954', '', 'SMK Sultan Fattah Demak', 'Jl.Jogoloyo Demak', '', '', 'Brosur dari luar sekolah', 'Ardan Angkasa', '', ''),
('3K181090', 8, '', 'Yuni Prihatini', 'Wanita', 'Sukoharjo', '06/06/2000', '3,31103E+15', '', 'Islam', 'Jl.Tegalan Rt.02 Rw.04 Keteguhan, Tawangsari', 'Slamet', '', '', '', 0, '', '', 0, '085-799-260-359', 'prihatiny3@gmail.com', 'SMA N 1 Tawangsari', 'Jl.Patimura Tawangsari-Sukoharjo', '', '', 'Informasi dari saudara', '', '', ''),
('3K191121', 9, '', 'Alip Sofiyatun Nisa', 'Wanita', 'Brebes', '18/09/2001', '3,32906E+15', '', 'Islam', 'Dukuh Siroyom Rt. 001 Rw. 001 Kel. Mlayang Kec. Sirampog Kab. Brebes 52272 Prov. Jawa Tengah ', 'Masnunah', '', '', '', 0, '', '', 0, '082-314-221-720', 'AlipSofiyatun018@gmail.com', 'SMK Semesta Bumiayu', 'Jl. P. Diponegoro Km. 01 Dukuhturi Kec. Bumiayu Kab. Brebes 52273', '', '', 'Brosur/Pamflet dari Sekolah ', '', '', ''),
('3K191122', 9, '', 'Amelia Fahilani', 'Wanita', 'Purbalingga', '02/12/2000', '3,30306E+15', '', 'Islam', 'Rabak Rt. 002 Rw. 006 Kel. Rabak Kec. Kalimanah Kab. Purbalingga Prov. Jawa Tengah ', 'Siti Faijah Hanum', '', '', '', 0, '', '', 0, '082-117-749-300', 'ameliafahilani@gmail.com', 'SMA N 1 Padamara', 'Jl. Raya Padamara Purbalingga ', '', '', 'Dari Alumni ', 'Bu Eni Perpus', '', ''),
('3K191123', 9, '', 'Amos Pigai', 'Pria', 'Ekepai', '20/02/1996', '9,10901E+15', '', 'Kristen', 'Jln. Cendrawasih Depan Petrosea Rt. 012 Kel. Timika Indah Kec. Mimika Baru Kab. Mimika 99910 Prov. Papua ', 'Pelipus Pigai', '', '', '', 0, '', '', 0, '082-135-519-487', '', 'SMK N 3 Mimika', 'Kwamki, Distrik Mimka Baru, Kab. Mimika, Papua 99971', '', '', 'Media Cetak/elektronik', '', '', ''),
('3K191124', 9, '', 'Amrizal Azizi', 'Pria', 'Purbalingga', '22/06/2000', '3,30312E+15', '', 'Islam', 'Karang Sawah Rt. 003 Rw. 008 Kel. Baleraksa Kec. Karangmoncol Kab. Purbalingga 53355 Prov. Jawa Tengah ', 'Taryoto', '', '', '', 0, '', '', 0, '082-243-437-356', '', 'MAN 1 Banyumas', 'Jl. Senopati No. 1, Kejawar, Arcawinangun, Kec. Purwokerto Tim., Kab. Banyumas, Jawa Tengah 53182', '', '', 'Informasi dari saudara/teman', 'Abdullah Achmas Smt. VI', '', ''),
('3K191125', 9, '', 'Anisyah Melani', 'Wanita', 'Purbalingga', '28/05/2001', '3,03017E+14', '', 'Islam', 'Sumilir Rt. 003 Rw. 001 Kel. Sumilir Kec. Kemangkon Kab. Purbalingga 53381 Prov. Jawa Tengah ', 'Kisman', '', '', '', 0, '', '', 0, '085-882-257-592', 'melanianisa449@gmail.com', 'SMA N 2 Purbalingga', 'Jl. Pucung Rumbak No. 47 Bancar Kec. Purbalingga Kab. Purbalingga Prov Jawa Tengah', '', '', 'Informasi dari saudara/teman', 'Bu Eni Perpus', '', ''),
('3K191126', 9, '', 'Asmaul Afifah', 'Wanita', 'Tegal', '31/03/2001', '', '', 'Hindu', 'Desa Cempaka Rt. 06 Rw. 04 Kec. Bumijawa Kel. Cempaka Kab. Tegal ', 'A. Rojikin', '', '', '', 0, '', '', 0, '085-747-508-633', '', 'SMK Semesta Bumiayu', 'Jl. P. Diponegoro Km. 01 Dukuhturi Kec. Bumiayu Kab. Brebes 52273', '', '', 'Presentasi ', '', '', ''),
('3K191127', 9, '', 'Aufan Naszdah', 'Wanita', 'Brebes', '23/08/2001', '3,32907E+15', '', 'Islam', 'Negarayu Rt.004 Rw. 001 Kel. Negarayu Kec. Tonjong Kab. Brebes 52271 Prov. Jawa Tengah ', 'Sarwan', '', '', '', 0, '', '', 0, '085-229-244-425', 'aufannaszdah23@gmail.com', 'SMK Semesta Bumiayu', 'Jl. P. Diponegoro Km. 01 Dukuhturi Kec. Bumiayu Kab. Brebes 52273', '', '', 'Brosur/Pamflet dari Sekolah ', '', '', ''),
('3K191128', 9, '', 'Ayu Kusuma Wicitra', 'Wanita', 'Semarang', '17/02/2001', '3,37411E+15', '', 'Islam', 'Karanggawang Lama Rt. 017 Rw. 001 Kel. Sendangguwo Kec. Tembalang Kab. Kota Semarang 50273 Prov. Jawa Tengah ', 'Djoko Suminto', '', '', '', 0, '', '', 0, '082-223-095-606', 'ayu17kw@gmail.com', 'SMA N 15 Semarang', 'Jl. Kedungmundu Raya No. 34 ', '', '', 'Brosur/Pamflet dari Sekolah ', '', '', ''),
('3K191129', 9, '', 'Berliana Devita', 'Wanita', 'Kudus', '04/12/1999', '3,31902E+15', '', 'Islam', 'Pelemkerep Rt. 003 Rw. 004 Kel. Pelemkerep Kec. Mayong Kab. Jepara 59465 Prov. Jawa Tengah ', 'Ahmad Sayuti Lubis', '', '', '', 0, '', '', 0, '085-326-505-139', '', 'SMK Islam Al Hikmah Mayong ', 'Jl. Branang Rw. 02, Singorojo, Kec. Mayong, Kab. Jepara, Jawa Tengah 59465', '', '', 'Pak Tomi Guru Ankes', 'Khoirul Fitriani Smt. III', '', ''),
('3K191130', 9, '', 'Choirunisa Devi Laraseta', 'Wanita', 'Semarang', '31/01/2002', '3,37412E+15', '', 'Islam', 'Karangrejo Selatan Rt. 003 Rw. 003 Kel. Tinjomoyo Kec. Banyumanik Kab. Seamarang 50262 Prov. Jawa Tengah ', 'Sudarmanto', '', '', '', 0, '', '', 0, '089-763-862-56', 'Choirunisadl@gmail.com', 'SMA N 12 Semarang', 'Jalan Raya  Gunung Pati, Plalangan, Gunung Pati, Plalangan, Kc. Gn Pati, Kota Semarang, Jawa Tengah 50225', '', '', 'Brosur/Pamflet dari Sekolah ', '', '', ''),
('3K191131', 9, '', 'Ella Nuraeni', 'Wanita', 'Boyolali', '24/01/2002', '3,30913E+15', '', 'Islam', 'Ngumbulrejo Rt. 006 Rw. 003 Kel. Keyongan Kec. Nogosari Kab. Boyolali 57378 Prov. Jawa Tengah ', 'Suyanto', '', '', '', 0, '', '', 0, '085-875-552-245', '', 'SMK N 1 Bankudono', 'Kuwiran, Bankudono, Boyolali', '', '', 'Media Cetak/elektronik', '', '', ''),
('3K191132', 9, '', 'Endang Ayu Andriyani', 'Wanita', 'Jakarta', '28/10/2000', '3,32907E+15', '', 'Islam', 'DK. Pekandangan Rt. 004 Rw. 008 Kec. Tonjong Kab. Brebes 52271 Prov. Jawa Tengah ', 'Darso', '', '', '', 0, '', '', 0, '082-313-914-003', 'endangayu829@gmail.com', 'SMK Semesta Bumiayu', 'Jl. P. Diponegoro Km. 01 Dukuhturi Kec. Bumiayu Kab. Brebes 52273', '', '', 'Brosur/Pamflet dari Sekolah ', '', '', ''),
('3K191133', 9, '', 'Fanny Aditya Eka Wahyudi', 'Wanita', 'Semarang', '16/03/2001', '3,37404E+15', '', 'Islam', 'Jl. KI. Beiwongso Rt. 004 Rw. 009 Kel. Genuksari Kec. Genuk Kab. Kota Semarang 50117 Prov. Jawa Tengah ', 'Wahyudi', '', '', '', 0, '', '', 0, '081-901-642-256', '', 'SMA 11 Semarang', 'Gg. XIV Rt. 01 Rw. 01 Lamper Tengah, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50248', '', '', 'Brosur dari sekolah', '', '', ''),
('3K191134', 9, '', 'Firdausah Afwa Prama Cindy', 'Wanita', 'Demak', '27/04/2001', '3,32113E+15', '', 'Islam', 'Pongangan Rt. 003 Rw. 001 Kel. Purworejo Kec. Bonang Kab. Demak 59552 Prov. Jawa Tengah ', 'Aris Hidayat ', '', '', '', 0, '', '', 0, '089-537-557-966', '', 'MAN Demak', 'Jl. Diponegoro Nomor 27 Demak 59571', '', '', '', '', '', ''),
('3K191135', 9, '', 'Hanif Agusti Diguna Bangsa', 'Pria', 'Tegal', '17/08/2000', '3,32811E+15', '', 'Islam', 'Desa Gumalar Rt. 009 Rw. 001 Kel. Gumalar Kec. Adiwerna Kab. Tegal 52194 Prov. Jawa Tengah ', 'Rahmad', '', '', '', 0, '', '', 0, '085-647-734-198', 'Hanifadb17@gmail.com', 'SMK Farmasi YPIB Brebes', 'Jl. Raya Jatibarang - Brebes No. Km. 02, Pulosari, Kec. Brebes, Kab. Brebes, Jawa Tengah 52212', '', '', 'Presentasi di sekolah ', '', '', ''),
('3K191136', 9, '', 'Himatul Maftukhah', 'Wanita', 'Batang', '16/06/2000', '3,32508E+15', '', 'Islam', 'Ketanggan Rt. 007 Rw. 002 Kel. Ketanggan Kec. Gringsing Kab. Batang 51281 Prov. Jawa Tengah ', 'Amad Fauzan', '', '', '', 0, '', '', 0, '082-322-761-408', 'HimatulMaf16@gmail.com ', 'SMA N 1 Gringsing', 'Desa Lebo Kec. Gringsing', '', '', 'Informasi dari saudara/teman', 'Melly Prasetyowati Smt. III', '', ''),
('3K191137', 9, '', 'Ibnu Zain Abdilah', 'Pria', 'Banyumas', '13/07/2000', '3,30213E+15', '', 'Islam', 'Kalitapen Rt. 008 Rw. 005 Kel. Kalitapen Kec. Purwojati Kab. Banyumas 53175 Prov. Jawa Tengah ', 'Amin Ihwanudin Z', '', '', '', 0, '', '', 0, '085-242-621-334', 'zainibnu237@gmail.com', 'SMK Ma\'arif  NU 2 Ajibarang ', 'Jl. Raya Ajibarang Km. 1', '', '', 'Brosur/Pamflet dari Sekolah ', '', '', '');
INSERT INTO `mahasiswa` (`nim`, `id_tahun`, `password`, `nama_mhs`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `no_nik`, `no_kk`, `agama`, `alamat`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `angkatan`, `nama_kelas`, `foto`, `id_progdi`, `no_hp`, `email`, `sekolah_asal`, `alamat_sekolah_asal`, `no_ijasah`, `nilai_masuk`, `sumber_info`, `pembawa`, `ukuran_jas`, `nama_dosen`) VALUES
('3K191138', 9, '', 'Isma Rahmawati', 'Wanita', 'Demak', '16/01/2001', '', '', 'Islam', 'Ds. Pilangrejo Rt. 06 Rw. 05 Demak', 'Mualim', '', '', '', 0, '', '', 0, '085-741-428-377', 'ismarahmawati2222@gmail.com', 'SMA N 2 Demak', 'Jl. Kudus No. 182 Demak', '', '', 'Sosialisasi dari Bu Nanies ', '', '', ''),
('3K191139', 9, '', 'Kristianingsih', 'Wanita', 'Banyumas', '07/12/2000', '3,30215E+15', '', 'Islam', 'Ratim Rt. 002 Rw. 004 Kel. Gumelar Kec. Gumelar Kab. Banyumas Prov. Jawa Tengah 53165', 'Tarwono', '', '', '', 0, '', '', 0, '089-542-192-576', '', 'SMK Ma\'arif  NU 2 Ajibarang ', 'Jl. Raya Ajibarang Km. 1', '', '', 'Sekolah', '', '', ''),
('3K191140', 9, '', 'Laelatul Munawaroh', 'Wanita', 'Banyumas', '05/12/2000', '3,30217E+15', '', 'Islam', 'Panusupan Rt. 007 Rw. 003 Kel. Panusupan Kec. Cilongok Kab. Banyumas Prov. Jawa Tengah 53162', 'Warsim', '', '', '', 0, '', '', 0, '083-863-865-069', 'Laelmnwrh@gmail.com', 'SMK Karya Teknologi 2 jatilawang', 'Jalan Raya Jatiwalang No. 01 ', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K191141', 9, '', 'Laurentia Filda Safira', 'Wanita', 'Kab. Semarang', '07/08/2000', '3,3221E+15', '', 'Katholik', 'Temanggung No. 17 Rt. 004 Rw. 003 Kel. Panjang Kec. Ambarawa Kab. Semarang Prov. Jawa Tengah 50614', 'Agustinus Suyadi', '', '', '', 0, '', '', 0, '085-877-124-138', 'tialauren078@gmail.com', 'SMK Theresiana Semarang', 'Jl. Mayjend Sutoyo No. 69 Kel. Pekunden Kec. Semarang Tengah Prov. Jawa Tengah 50134', '', '', 'Dari Mbak Nia ', '', '', ''),
('3K191142', 9, '', 'Lika Prihatiningsih', 'Wanita', 'Banyumas', '01/05/2001', '3,30217E+15', '', 'Islam', 'Cibangkok Rt. 002 Rw. 008 Kel. Cibangkok Kec. Pekuncen Kab. Banyumas Prov. Jawa Tengah 53164', 'Suharjo Sudar', '', '', '', 0, '', '', 0, '085-709253-607', 'Likaprihaa@gmail.com', 'SMK Ma\'arif  NU 2 Ajibarang ', 'Jl. Raya Ajibarang Km. 1', '', '', 'Brosur/Pamflet dari Sekolah ', '', '', ''),
('3K191143', 9, '', 'Livia Santika', 'Wanita', 'Banyumas', '28/07/2001', '3,30218E+16', '', 'Islam', 'Panusupan Rt. 007 Rw. 006 Kel. Panusupan Kec. Cilongok Kab. Banyumas Prov. Jawa Tengah 53162', 'Muh Muzedi', '', '', '', 0, '', '', 0, '085-785-491-446', '', 'SMK Ma\'arif  NU 2 Ajibarang ', 'Jl. Raya Ajibarang Km. 1', '', '', '', '', '', ''),
('3K191144', 9, '', 'Malihatul Ulya', 'Wanita', 'Banyumas', '13/12/2000', '3,30218E+15', '', 'Islam', 'Panembangan Rt. 003 Rw. 001 Kel. Panembangan Kec. Cilongok Kab. Banyumas Prov. Jawa Tengah 53162', 'Kartim', '', '', '', 0, '', '', 0, '081-325-270873', '', 'SMK Ma\'arif  NU 2 Ajibarang ', 'Jl. Raya Ajibarang Km. 1', '', '', 'Sekolah', '', '', ''),
('3K191145', 9, '', 'Maulia Isri Priyanti', 'Wanita', 'Demak', '28/06/2001', '3,32112E+15', '', 'Islam', 'Krapyak Barat Rt. 002 Rw. 012 Kel. Bintoro Kec. Demak Kab. Demak Prov. Jawa Tengah 59511', 'Joko Supriyono', '', '', '', 0, '', '', 0, '082-324-154-426', '', 'MAN Demak', 'Jalan Diponegoro Nomor 27 Demak ', '', '', '', 'Bu Dyah K', '', ''),
('3K191146', 9, '', 'Mella Wati', 'Wanita', 'Kendal', '07/05/2001', '3,32416E+15', '', 'Islam', 'Dusun Sigentong Rt. 001 Rw. 012 Kel. Gempolsewu Kec. Rowosari Kab. Kendal Prov. Jawa Tengah 51354', 'Riyadi', '', '', '', 0, '', '', 0, '083-869-262-602', 'watimella44@gmail.com', 'SMK Ma\'arif NU 02 Rowosari', 'Jl. Taruna Wonotenggang, Rowosari - Kendal ', '', '', 'Informasi dari saudara/teman', 'Ananti Iman O Smt VI', '', ''),
('3K191147', 9, '', 'Nabilah Mardliyatus Salwa', 'Wanita', 'Jepara', '27/06/2001', '3,32007E+15', '', 'Islam', 'Mulyoharjo Rt. 001 Rw. 005 Kel. Mulyoharjo Kec. Jepara Kab. Jepara 59431 Prov. Jawa Tengah ', 'Muslikhan', '', '', '', 0, '', '', 0, '089-422-524-271', 'nabilahsalwa27@gmail.com', 'SMK Islam Al Hikmah Mayong ', 'Jl. Branang Rw. 02, Singorojo, Kec. Mayong, Kab. Jepara, Jawa Tengah 59465', '', '', 'Brosur/Pamflet dari Sekolah ', '', '', ''),
('3K191148', 9, '', 'Nabilla Rahma Ayu Nur Hakiki', 'Wanita', 'Semarang', '01/06/2001', '3,37401E+15', '', 'Islam', 'Kp. Brumbungan Dukuh No. 246 Rt. 006 Rw. 004 Kel. Gabahan Kec. Semarang Tengah Kab. Kota Semarang Prov. Jawa Tengah ', 'Nur Rofiq', '', '', '', 0, '', '', 0, '085-727-461-794', 'NabillaRahma0106@gmail.com', 'SMA N 14 Semarang', 'Jl. Kokrosono Semarang 50177', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K191149', 9, '', 'Novialita Vivi Pancawati', 'Wanita', 'Semarang', '10/11/1999', '3,37415E+15', '', 'Islam', 'Duduhan Rt. 001 Rw. 005 Kel. Mijen Kec. Mijen Kab. Kota Semarang Prov Jawa Tengah 50218', 'Akminto', '', '', '', 0, '', '', 0, '083-838-567-591', 'novialitapanca@gmail.com', 'SMK Palapa', 'Jl. Untung Suropati', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K191150', 9, '', 'Nur Hidayah', 'Wanita', 'Batang', '28/08/1999', '3,32508E+15', '', 'Islam', 'Ketanggan Rt. 009 Rw. 003 Kel. Ketanggan Kec. Gringsing Kab. Batang 51281 Prov. Jawa Tengah ', 'Dulhadi', '', '', '', 0, '', '', 0, '089-535-939-783', '', 'SMA N 1 Gringsing', 'Desa Lebo Kec. Gringsing', '', '', 'Informasi dari saudara/teman', 'Melly Prasetyowati Smt. III', '', ''),
('3K191151', 9, '', 'Putri Mela Zulika', 'Wanita', 'Blora', '04/07/2000', '3,31614E+15', '', 'Islam', 'Ngapus Rt. 001 Rw. 001 Kel. Ngapus Kec. Japah Kab. Blora 58257 Prov. Jawa Tengah ', 'Poso', '', '', '', 0, '', '', 0, '081-326-083-739', '', 'MAN Blora', 'Jl. Gatot Subroto Km. 4 Blora', '', '', '', '', '', ''),
('3K191152', 9, '', 'Putri Puspita Sari', 'Wanita', 'Sragen', '15/10/1999', '3,37416E+15', '', 'Islam', 'Bukit Beringin Elok No. 308 Rt. 005 Rw. 014 Kel. Wonosari Kec. Ngaliyan Kab. Kota Semarang 50186 Prov. Jawa Tengah ', 'Agus Sutrisno', '', '', '', 0, '', '', 0, '081-225-565-71', 'putripuspita804@gmail.com', 'SMK Texmaco Semarang', 'Jl. Raya Mangkang Km. 16', '', '', 'Brosur dari sekolah', '', '', ''),
('3K191153', 9, '', 'Randi Maulana', 'Pria', 'Purbalingga', '24/03/2000', '3,30312E+15', '', 'Islam', 'Karang Sawah Dusun 3 Rt. 003 Rw. 008 Kel. Baleraksa Kec. Karangmoncol Kab. Purbalingga 53355 Prov. Jawa Tengah ', 'Tato', '', '', '', 0, '', '', 0, '081-393-188-536', '', 'SMA N 1 BobotSari', 'Bobotsari Purbalingga', '', '', 'Informasi dari saudara/teman', 'Abdullah Achmas Smt. VI', '', ''),
('3K191154', 9, '', 'Rifka Intan Apriliya', 'Wanita', 'Pati', '26/04/1999', '3,31805E+15', '', 'Islam', 'Dsn Gebyaran Rt. 003 Rw. 003 Kel. Sarimulyo Kec. Winong Kab. Pati Prov. Jawa Tengah 59181', 'Wunari', '', '', '', 0, '', '', 0, '085-329-932-399', 'rifkaintanaprilya@gmail.com', 'SMA N 1 Jakenan', 'Jl. Jakenan - Winong Km. 1', '', '', 'Teman', 'Dwi Cahyaningtyas Smt. III', '', ''),
('3K191155', 9, '', 'Riris Putri Ariani', 'Wanita', 'Semarang', '07/08/2001', '3,37413E+15', '', 'Islam', 'Gedungbatu Selatan I Rt. 001 Rw. 005 Kel. Ngemplaksimongan Kec. Semarang Barat Kab. Kota Semarang Prov. Jawa Tengah 50148', 'Suyatno', '', '', '', 0, '', '', 0, '089-681-345-742', 'rsriris@gmail.com', 'SMK N 8 Semarang', 'Jl. Pandanaran II No. 12 Kota Semarang ', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K191156', 9, '', 'Riska Diah Egitasari', 'Wanita', 'Pati', '08/08/2000', '3,3181E+15', '', 'Islam', 'Desa Blaru Rt. 18 Rw. 5 Kel. Blaru Kec. Pati Kab. Pati Prov. Jawa Tengah 59114', 'Tri Teguh Santoso', '', '', '', 0, '', '', 0, '081-326-963-051', '', 'SMA PGRI 1 Pati', 'Jl. A. Yani, Gang Manggis No. 99, Pati', '', '', 'Brosur/Pamflet dari Sekolah ', '', '', ''),
('3K191157', 9, '', 'Sabila Anindya Putri', 'Wanita', 'Semarang', '29/01/2001', '3,37413E+15', '', 'Islam', 'Randusari Rt. 004 Rw. 002 Kel. Nongkosawit Kec. Gunung Pati Kab. Kota Semarang Prov. Jawa Tengah 50224', 'Sanin', '', '', '', 0, '', '', 0, '085-842-672-307', '', 'SMK N 4 Semarang', 'Jl. Pandanaran II No. 7 Kota Semarang ', '', '', 'Informasi dari saudara/teman', 'Anisa', '', ''),
('3K191158', 9, '', 'Salma Shabrina Khairunnisa', 'Wanita', 'Sragen', '21/01/2001', '3,3141E+15', '', 'Islam', 'Margosari Rt. 033 Rw. 009 Kel. Puro Kec. Karangmalang Kab. Sragen Prov. Jawa Tengah 57291', 'Agus Budi Saptoto', '', '', '', 0, '', '', 0, '081-217-447-778', '', 'SMA MTA Surakarta', 'Jl. Kyai Mojo Semanggi Pasar Kliwon Surakarta', '', '', 'Teman', 'Ridha Salsabila', '', ''),
('3K191159', 9, '', 'Saras Fitria', 'Wanita', 'Jakarta', '20/12/2000', '3,30919E+15', '', 'Islam', 'Gagaran Rt. 02 Rw. 03 Kel. Keyoran Kec. Wonosegoro Kab. Boyolali Prov. Jawa Tengah', 'Muh Judari', '', '', '', 0, '', '', 0, '', 'sarasftr757@gmail.com', 'SMA N 1 Karanggede', 'Jl. Sawungrono Km. 2, Karangge, Boyolali', '', '', '', 'Anis Pratiwi Smt. III', '', ''),
('3K191160', 9, '', 'Setia Kristiyana', 'Wanita', 'Semarang', '21/05/2000', '', '', 'Islam', 'Jl. Wologito Tengah II No. 16 Rt. 06 Rw. 06 Kab. Semarang Prov. Jawa Tengah ', 'Sukrisno', '', '', '', 0, '', '', 0, '089-693-883-032', 'Setia.kristy@gmail.com', 'SMA N 7 Semarang', 'Jl. Untung Suropati Semarang', '', '', 'Informasi dari saudara/teman', '       ', '', ''),
('3K191161', 9, '', 'Shelly Ayu Maulida', 'Wanita', 'Kendal', '29/05/2002', '3,32416E+14', '', 'Islam', 'Candiroto Rt. 010 Rw. 004 Kel. Candiroto Kec. Kendal Kab. Kendal Prov. Jawa Tengah 51317', 'Mujo Agung ', '', '', '', 0, '', '', 0, '089-692-485-225', 'shellyayumaulida8@gmail.com', 'SMA N 1 Kendal', 'Jl. Soekarno Hatta Barat Km. 03, Purwokerto, Patebon, Kendal', '', '', 'Orang Tua', 'Bu Dyah K', '', ''),
('3K191162', 9, '', 'Sinta Mulyana', 'Wanita', 'Brebes', '03/02/2000', '3,32914E+15', '', 'Islam', 'Desa Kluwut Jl. Sami Jaya Rt. 01 Rw. 12 Kab. Brebes Prov. Jawa Tengah ', 'Suharto', '', '', '', 0, '', '', 0, '089-535-911-967', '', 'SMK Mitra Karya Mandiri Ketanggungan', 'Jl. Jend. Sudirman No. 441, Ketanggungan Kec. Ketanggungan Kab. Brebes Prov. Jawa Tengah 52263', '', '', '', 'Nely Hemalia Putri Smt III', '', ''),
('3K191163', 9, '', 'Sinta Rizki Utami', 'Wanita', 'Semarang', '09/12/2000', '3,37406E+15', '', 'Islam', 'Penggaron Kidul Rt. 006 Rw. 002 Kel. Penggaron Kidul Kec. Pedurungan Kab. Kota Semarang Prov. Jawa Tengah 50194', 'Yuli', '', '', '', 0, '', '', 0, '089-532-905-997', 'Sintasagita91@gmail.com', 'SMA N 15 Semarang', 'Jl. Kedungmundu Raya No. 34 ', '', '', 'Sosialisasi di sekolah', '', '', ''),
('3K191164', 9, '', 'Siti Yuliana', 'Wanita', 'Demak', '10/05/2000', '3,32112E+15', '', 'Islam', 'Gang Merak Rt. 005 Rw. 001 Kel. Cabean Kec. Demak Kab. Demak Prov. Jwa Tengah 59551', 'Suyadi', '', '', '', 0, '', '', 0, '081-392-629-897', '', 'SMK Sultan Fattah Demak', 'Jl. Diponegoro No. 47 - 49 Rw. 7 Jogoloyo Kec. Wonosalam Kab. Demak Prov. Jawa Tengah 59571', '', '', '', 'Anggun Prayoga Smt V', '', ''),
('3K191165', 9, '', 'Sri Wulandini', 'Wanita', 'Blora', '04/09/2001', '3,31616E+15', '', 'Islam', 'Geneng Rt. 001 Rw. 001 Kel. Ngapus Kec. Japah Kab. Blora Prov. Jawa Tengah 58257', 'Suman', '', '', '', 0, '', '', 0, '082-324-445-160', '', 'MAN Blora', 'Jl. Gatot Subroto Km. 4 Blora', '', '', 'Informasi dari saudara/teman', '', '', ''),
('3K191166', 9, '', 'Ummuasna Zakiyatul Azizah', 'Wanita', 'Demak', '06/10/2000', '3,32111E+15', '', 'Islam', 'Bango Rt. 008 Rw. 001 Kel. Bango Kec. Demak Kab. Demak Prov. Jawa Tengah', 'Sutrisno', '', '', '', 0, '', '', 0, '089-614-991-730', '', 'SMA N 2 Demak', 'Jl. Raya Demak - Kudus', '', '', 'Informasi dari saudara/teman', 'Ninik Setyowati Smt. III', '', ''),
('3K191167', 9, '', 'Wahyu Safiti', 'Wanita', 'Demak', '12/12/1999', '3,32112E+15', '', 'Islam', 'Cabean Rt. 006 Rw. 001 Kel. Cabean Kec. Demak Kab. Demak Prov. Jawa Tengah 59551', 'Nurhadi', '', '', '', 0, '', '', 0, '089-666-895-298', '', 'SMA N 2 Demak', 'Jl. Raya Demak - Kudus', '', '', 'Informasi dari saudara/teman', 'Ninik Setyowati Smt. III', '', ''),
('3K191168', 9, '', 'Xenia Aprianty Sailent', 'Wanita', 'Grobogan', '11/04/2001', '3,31507E+15', '', 'Islam', 'Dusun Krajan Lor Rt. 001 Rw. 001 Kel. Tuko Kec. Pulokulon Kab. Grobogan Prov. Jawa Tengah 58181', 'Alm. Hadi Hariyanto', '', '', '', 0, '', '', 0, '085-328-790-273', 'xeniaapsa475@gmail.com', 'SMK N 1 Wirosari', 'Jln. Gajah Mada No. 144 Wirosari', '', '', 'Informasi dari saudara/teman', 'Bp. Septa Winarta', '', ''),
('3K191169', 9, '', 'Yayang Azzahra', 'Wanita', 'Purbalingga', '18/09/2001', '3,30316E+15', '', 'Islam', 'Purbayasa Rt. 003 Rt. 002 Kel. Purbayasa Kec. Padamara Kab. Purbalingga Prov. Jawa Tengah 53372', 'Rokhmat', '', '', '', 0, '', '', 0, '089-666-315-067', '', 'SMA N 1 Padamara', 'Jl. Raya Padamara Purbalingga ', '', '', 'Informasi dari saudara/teman', 'Bu Eni Perpus', '', ''),
('3K191170', 9, '', 'Yulianti Rahayu', 'Wanita', 'GunungKidul', '26/07/2000', '3,40313E+15', '', 'Islam', 'Pabregan Dusun. Pabregan Rt. 004 Rw. 010 Kel. Sumberejo Kec. Semin Kab. GunungKidul Prov. Daerah Istimewa Yogyakarta 55854', 'Mardi Wiyono', '', '', '', 0, '', '', 0, '085-878-867-581', 'rahayuyulianti854@gmail.com', 'SMA N 1 Semin', 'Bulurejo Semin Gunungkidul', '', '', 'Informasi dari saudara/teman', 'Bu Dyah K', '', ''),
('3K201186', 10, '', 'Aezha Azrira Khoirunnisa', 'Wanita', 'Prayun Kundur', '13/05/2002', '1,90602E+15', '1,90601E+15', 'Islam', 'Ds. Kartini Rt. 02 Rw. 01 Kel. Lalang Kec. Manggar Kab. Belitung Timur 33511 Kepulauan Bangka Belitung', 'Much Aedi Machwari', '', '', '', 0, '', '', 0, '081 949 014 638', 'Aziraastelow@gmail.com', 'SMA Negeri 1 Manggar', 'Jl. Jend. Sudirman, Mekar Jaya, Manggar, Kab. Belitung Timur', 'DN-28/M-SMA/13/0711572', '', 'Orang tua/ Kerabat', '', 'L', ''),
('3K201187', 10, '', 'Ainur Rahma Rini', 'Wanita', 'Demak', '11/04/2000', '3,32105E+15', '', 'Islam', 'Ds. Sidogemah Rt. 02 Rw. 01 Kel. Sidogemah Sayung Demak', 'Ahmad Wachid', '', '', '', 0, '', '', 0, '089 644 161 904', '', 'SMA Abadi Negara Karang Tengah Demak', '', 'DN-Ma/06 030025537', '', 'Orang tua/Kerabat', 'Siti BKSP', 'XL', ''),
('3K201188', 10, '', 'Aizatul Muafifah', 'Wanita', 'Jepara', '30/11/2001', '3,32014E+15', '3,32013E+15', 'Islam', 'Jl. Kauman II Margoyoso Rt. 04 Rw. 03 Kel. Margoyoso Kec. Kaliyamatan Kab. Jepara 59467', 'Maftukhin', '', '', '', 0, '', '', 0, '089 542 252 789', '', 'SMK Islam Al-Hikmah Mayong Jepara', '', 'M-SMK/13-3/0653671', '', '', 'Tomi SMA Mayong', 'M', ''),
('3K201189', 10, '', 'Alvian Rofi\' Firmansyah', 'Pria', 'Sukoharjo', '06/01/2002', '3,31103E+15', '3,31103E+15', 'Islam', 'Dk. Tegalan Rt. 02 Rw.04 Kel. Kateguhan Kec. Tawangsari Kab. Sukoharjo 57561 Jawa Tengah', 'Anis Mudhakir', '', '', '', 0, '', '', 0, '081 567 385 34', 'alvianrofi@gmail.com', 'SMK Bina Patria 1 Sukoharjo', 'Gamping, Joho, Kec. Sukoharjo, Kab. Sukoharjo', 'M-SMK/13-3/0759546', '', 'Orang tua/ Kerabat', 'Dyah K/ P.Win', 'L', ''),
('3K201190', 10, '', 'Amalinda Zahrotul Manzhila', 'Wanita', 'Batang', '05/05/2002', '3,32507E+15', '3,32507E+15', 'Islam', 'Ketanggan Rt. 10 Rw. 03 Kel. Ketanggan Kec. Gringsing Kab. Batang 51281 Jawa Tengah', 'Yasin', '', '', '', 0, '', '', 0, '089 619 912 494', 'amalinda.zahrotul@gmail.com', 'SMA Negeri 1 Gringsing', 'Jl. Karanganyar, Lebo Kec. Gringsing, Kab. Batang', 'DN-03/M-SMA/13/0204244', '', 'Teman/saudara', 'Wahyu Utami alumni 2014', 'M', ''),
('3K201191', 10, '', 'Ameliani Raharjo', 'Wanita', 'Cirebon', '05/09/2002', '3,20933E+15', '3,20933E+15', 'Islam', 'Blok 02 Rt. 02 Rw. 04 Desa Sukadana Kec. Pabuaran Kab. Cirebon kode pos 45196 Jawa Barat', 'Harjo', '', '', '', 0, '', '', 0, '0899 5433 758', 'amel22630@gmail.com', 'SMA Negeri 1 Waled Kab. Cirebon', 'Jl. Dewi Sartika No. 03, Desa Waled Kota Kecamatan Waled Kab. Cirebon', 'DN-02/M-SMA/13/0100525', '', 'Orang tua/Kerabat', 'Kusnadi Alumni', 'M', ''),
('3K201192', 10, '', 'Angelia Fransisca', 'Wanita', 'Semarang', '13/03/2002', '3,37414E+15', '3,37413E+15', 'Islam', 'Jl. Argorejo Rt. 04 Rw. 04 Kel. Kalibanteng Kulon Kec. Semarang Barat Semarang 50145 Jawa Tengah', 'Budi Waluyo', '', '', '', 0, '', '', 0, '0895 3259 31311', 'Angeliafransisca824@gmail.com', 'SMA Setiabudhi Semarang', 'Jl. WR. Supratman No. 37 Semarang', 'DN-03/M-SMA/13/0147854', '', 'Brosur dr Sekolah', 'SMA Setia Budi', 'L', ''),
('3K201193', 10, '', 'Aulia Fadel Muttaqin', 'Pria', 'Brebes', '04/12/1993', '3,37415E+15', '3,37415E+15', 'Islam', 'Jl. Taman Karonsih Dalam 987 Rt. 02 Rw. 04 Kel. Ngaliyan Kec. Ngaliyan Semarang 50181 Jawa Tengah', 'Drs. Sutarno', '', '', '', 0, '', '', 0, '082 266 623 841', 'auliafadelip12@gmail.com', 'SMA Negeri 6 Semarang', 'Jl. Ronggolawe Barat No. 4 Semarang', 'DN-03 Ma 0000459', '', 'saudara/tante', '(Woro) Progsus', 'M', ''),
('3K201194', 10, '', 'Cantika Safa Oktaviani', 'Wanita', 'Tegal', '19/10/2000', '3,32816E+15', '3,32815E+15', 'Islam', 'Jl. Akasia Raya No. 46 Mejasem Barat Kec. Kramat Kab. Tegal 52181 Jawa Tengah', 'Sugi Prileksono', '', '', '', 0, '', '', 0, '087 721 271 401', 'cantikasafaokta@gmail.com', 'SMK Farmasi Al-Amin Dukuhturi Tegal', 'Jl. Pesantren No.8 Rt.06 Rw.01 Bandasari Tegal', 'M-SMK/06-3/0221743', '', 'internet', 'SMK Al-Amin', 'L', ''),
('3K201195', 10, '', 'Caroline Gratia Kezia Ngsurukh', 'Wanita', 'Kerantik', '10/07/2001', '6,10619E+15', '6,10201E+15', 'Katholik', 'Jl. Dr. Rubini Komplek Khasanah Rt. 19 Rw. 07 Kel. Tengah Kec. Mempawah Hilir Kab. Mempawah 78911 Kalimantan Barat', 'Periadi Ambrosius', '', '', '', 0, '', '', 0, ' 085 750 074 02', 'tia.ngsurukh@gmail.com', 'SMA Negeri 01 Mempawah Hilir', 'Jl. Raden Kusno', 'DN-13/M-SMA/13/0002637', '', 'Orang tua/ Kerabat', 'Nining', 'M', ''),
('3K201196', 10, '', 'Defia Sri Wulandari', 'Wanita', 'Grobogan', '10/09/2002', '3,31503E+15', '3,31502E+15', 'Islam', 'Dusun Cekel Rt.01 Rw.02 Kel. Cekel Kec. Karangrayung Grobogan 58163', 'Subari', '', '', '', 0, '', '', 0, '', '', 'SMA Islam Karangrayung', 'Dusun Karangjati Ds. Mojo Agung', 'DN-03/M-SMA/13/0199211', '', 'Orang tua/ Kerabat', '', 'S', ''),
('3K201197', 10, '', 'Dela Delvia Imelda Lande\'eo', 'Wanita', 'Manado', '21/12/2001', '7,2022E+15', '7,20219E+15', 'Kristen', 'Ds. Patiwunga Rt.01 Rw.02 Kel. Patiwunga, Kec.Poso Pesisir Selatan, Poso, Sulawesi Tengah, 94652', 'Abiyatar Lande\'Eo', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', 'Fanesa', 'M', ''),
('3K201198', 10, '', 'Desrita Andiani', 'Wanita', 'Brebes', '07/01/2002', '3,32901E+15', '3,32901E+15', 'Islam', 'Kp. Tegal Gede Rt. 05 Rw. 02 Desa Tembongraja Kec.Salem Kab. Brebes 52275 Jawa Tengah', 'Wahyudin', '', '', '', 0, '', '', 0, '0856 4322 6918', 'desritaandini77@gmail.com', 'SMK Semesta Bumiayu', 'Jl. Pangeran Diponegoro Km. 1 Bumiayu', 'M-SMK/13-3/0627006', '', 'Sekolah', 'Bu Erlina Semesta Bumi Ayu', 'S', ''),
('3K201199', 10, '', 'Devi Maulina N.A Nur Alifah', 'Wanita', 'Semarang', '13/03/2002', '3,37417E+15', '3,37416E+15', 'Islam', 'Jl. Tugurejo Rt. 02 Rw. 01 Kel. Tugurejo Kec. Tugu Semarang 50151 Jawa Tengah', 'Purwoko', '', '', '', 0, '', '', 0, '081 578 638 303', 'dewidevalina@gmail.com', 'SMA Negeri 8 Semarang', 'Jl. Raya Tugu Semarang', 'DN-03/M-SMA/13/0144438', '', 'Brosur dr Sekolah', 'Sekolah', 'S', ''),
('3K201200', 10, '', 'Diyah Cahya Ningrum', 'Wanita', 'Semarang', '21/05/2000', '3,37414E+15', '3,37413E+15', 'Islam', 'Jl. Borobudur Rt. 02 Rw. 12 Kel. Kembangarum Kec. Semarang Barat Semarang 50148 Jawa Tengah', 'Suroto', '', '', '', 0, '', '', 0, '089 538 984 072', 'diyahcahyaningrum124@gmail.com', 'SMK Theresiana Analis Kesehatan Semarang', 'Jl. Mayjen Sutoyo 69 Semarang 50134', 'M-SMK/13-3/0258782', '', 'Teman/saudara', 'Laurentina Filda', 'XXL', ''),
('3K201201', 10, '', 'Elisabeth Kristanti Ayu Damaya', 'Wanita', 'Grobogan', '07/11/2000', '3,31513E+15', '3,31513E+15', 'Katholik', 'Banaran II Rt. 02 Rw. 22 Kel. Purwodadi Kec. Purwodadi Kab. Grobogan Jawa Tengah', 'Totok Kristanto', '', '', '', 0, '', '', 0, '0889 332 3671', 'elisabethkristanti811@gmail.com', 'SMK Negeri 1 Purwodadi', 'Jl. Diponegoro No. 24 Purwodadi Grobogan', 'M-SMK/13-3/0367501', '', 'Orang tua', 'Stefani (Progsus)', 'M', ''),
('3K201202', 10, '', 'Elsa Wulan Maulindia', 'Wanita', 'Brebes', '14/05/2002', '3,32904E+15', '', 'Islam', 'Dk. Kalibodas, Bumiayu Rt. 08 Rw. 08 Kel. Bumiayu Kab. Brebes Jawa Tengah', 'Wasori', '', '', '', 0, '', '', 0, '0823 1313 4291', 'elsawulanmaulindia@gmail com', 'SMK Semesta Bumiayu Brebes', 'Jl. Pangeran Diponegoro', 'M-SMK/13-3/0627049', '', 'Brosur dr Sekolah', 'Bu Erlina Semesta Bumi Ayu', 'L', ''),
('3K201203', 10, '', 'Endang Ratih Susilowati', 'Wanita', 'Lampung Barat', '14/05/1999', '3,40113E+15', '', 'Islam', 'Kenaran Rt. 086 Rw. 039 Kab. Banjarharjo Kalibawang Kulon Progo DIY', 'Tumidi', '', '', '', 0, '', '', 0, '0821 3454 2869', '', 'SMK Negeri 1 Temon ', '', 'DN-04 MK06 007316', '', 'teman/saudara', 'Agus Ardyanto', 'M', ''),
('3K201204', 10, '', 'Fajar Saktia Luthfi', 'Pria', 'Sukoharjo', '22/11/2000', '3,31103E+15', '3,31103E+15', 'Islam', 'Dk. Tegalan Rt.02 Rw.04 Kel. Kateguhan Kec. Tawangsari Kab. Sukoharjo 57561 Jawa Tengah', 'Poniman', '', '', '', 0, '', '', 0, '0857 0264 6427', 'fajar.mutu11@gmail.com', 'SMK Muhammadiyah 1 Sukoharjo', 'Jl. Anggrek No. 2 Sukoharjo', 'M-SMK/13-3/0761376', '', 'Orang tua/ Kerabat', 'Dyah K/ P.Win', 'L', ''),
('3K201205', 10, '', 'Fanesa Pu\'adjole', 'Wanita', 'Petirodongi', '27/01/2002', '7,20205E+15', '', 'Kristen', 'Kel. Petirodongi Rt.07 Rw.03 Kel. Petirodongi, Kec. Pamona Utara Sulawesi Tengah', 'Hans Pu\'adjole', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 'M', ''),
('3K201206', 10, '', 'Firda Lutfiyah', 'Wanita', 'Jepara', '14/07/2001', '3,32014E+15', '3,32013E+15', 'Islam', 'Jl. Margoyoso Kauman II Rt.03 Rw.03 Kel. Margoyoso, Kec. Kalinyamatan, Kab. Jepara 59467', 'Ahmad Zabidi', '', '', '', 0, '', '', 0, '', '', 'SMK Islam Al-Hikmah Mayong Jepara', '', 'M-SMK/13-3/0653680', '', '', 'Tomi SMA Mayong', 'M', ''),
('3K201207', 10, '', 'Fitri Andini', 'Wanita', 'Sragen', '18/12/2001', '3,31418E+15', '3,31417E+15', 'Islam', 'Genengsari Rt. 26 Rw. 00 Kel. Baleharjo Kec. Sukodono Kab.Sragen Jawa Tengah 57263', 'Ngatiyo', '', '', '', 0, '', '', 0, '089 636 028 244', 'nchimpark69@gmail.com', 'SMA Setiabudhi Semarang', 'Jl. WR. Supratman No. 37 Semarang', 'DN-03/M-SMA/06/0001109', '', 'Brosur dr Sekolah', 'SMA Setia Budi', 'M', ''),
('3K201208', 10, '', 'Fitria Dian Sari', 'Wanita', 'Brebes', '02/12/2002', '3,32905E+15', '', 'Islam', 'Buniwah Rt. 01 Rw. 03 Sirampong Brebes', '', '', '', '', 0, '', '', 0, '0823 2992 5844', '', 'SMK Semesta Bumiayu Brebes', '', '', '', '', 'Bu Erlina Semesta Bumi Ayu', 'S', ''),
('3K201209', 10, '', 'Hudzaifah Ivan Maulana', 'Pria', 'Sukoharjo', '25/05/2001', '3,31103E+15', '3,31103E+15', 'Islam', 'Dk. Tegalan Rt.01 Rw.04 Kel. Kateguhan Kec. Tawangsari Kab. Sukoharjo 57561 Jawa Tengah', 'Muladi', '', '', '', 0, '', '', 0, '085 640 876 828', 'hudzaifahivan25@gmail.com', 'SMK Muhammadiyah 1 Sukoharjo', 'Jl. Anggrek No. 2 Sukoharjo', 'M-SMK/13-3/0339900', '', 'Orang tua/ Kerabat', 'Dyah K/ P.Win', 'L', ''),
('3K201210', 10, '', 'Ika Rahmawati', 'Wanita', 'Semarang', '12/07/2002', '3,37406E+15', '3,37405E+15', 'Islam', 'Kudu Baru Rt. 03 Rw. 06 Kel. Kudu Kec. Genuk Semarang 50116', 'S. Mariadi', '', '', '', 0, '', '', 0, '085 225 121 309', '', 'SMA Negeri 3 Demak', 'Jl. Sultan Trenggono Demak', 'DM-03/M-SMA/13/0195088', '', 'Orang tua/Kerabat', 'Fanny smt IV', 'XL', ''),
('3K201211', 10, '', 'Imania Dwi Rahmawati', 'Wanita', 'Batang', '09/05/2002', '3,32507E+15', '3,32507E+15', 'Islam', 'Ds. Mentosari Rt. 03 Rw. 01 Kel. Mentosari Kec. Gringsing Kab. Batang Jawa Tengah', 'Achmad Samiudin', '', '', '', 0, '', '', 0, '085 726 907 906', 'imaniarahmawati90@gmail.com', 'SMA NU 03 Mualimin Weleri', 'Jl. Penaruban', '', '', 'Internet', '', 'M', ''),
('3K201212', 10, '', 'Kurniasari Ayu Kumala', 'Wanita', 'Demak', '25/11/2002', '3,32106E+15', '', 'Hindu', 'Jl. Raya Buyaran Demak Rt.01 Rw.02 Kel.Dukun, Kec. Karangtengah, Kab. Demak, 59561', '', '', '', '', 0, '', '', 0, '085 962 870 422', '', '', '', '', '', '', 'Landri Ana Setiowati alumni 2013', 'M', ''),
('3K201213', 10, '', 'Levista Ayu Scanna', 'Wanita', 'Semarang', '07/09/2000', '3,37415E+15', '3,37415E+16', 'Kristen', 'Jl. Candi Pawon Tengah 2 Rt. 09 Rw.01 Kel. Kalipancur Kec. Ngaliyan Semarang 50183 Jawa Tengah', 'Rony Chres Yunanto', '', '', '', 0, '', '', 0, '081 393 850 307', 'levistaayuscanna@gmail.com', 'SMA Masehi 1 PSAK Semarang', 'Jl. Pasir Mas Raya No. 1 Semarang', 'DN-03/M-SMA/13/0147506', '', 'Brosur dr Sekolah', 'SMA Masehi I', 'M', ''),
('3K201214', 10, '', 'Lutfiyah Amanda Eka Putri', 'Wanita', 'Brebes', '31/08/2002', '3,3291E+15', '3,32909E+15', 'Islam', 'Kaligangsa Kulon Rt. 04 Rw. 01 Kel. Kaligangsa Kulon Kec. Brebes Kab. Brebes 52212 Jawa Tengah', 'Rustono', '', '', '', 0, '', '', 0, '0895 3773 89961', 'lutfiyahamanda43@gmail.com', 'SMK Farmasi YPIB Brebes', 'Jl. Veteran, Kauman Baru, Brebes Kec. Brebes, Kab. Brebes Jawa Tengah', '', '', 'Media cetak/elektronik', 'SMK Farmasi Brebes', 'S', ''),
('3K201215', 10, '', 'Nelly Irmasari Silviana Davian', 'Wanita', 'Demak', '24/11/2002', '', '', 'Hindu', 'Jl. Dukun Rt.01 Rw. 04, Kel. Dukun, Kec. Karangtengah, Kab. Demak, 59561', '', '', '', '', 0, '', '', 0, '0882 2675 3807', '', 'SMA Negeri 1 Karangtengah', '', '', '', '', 'Landri Ana Setiowati alumni 2013', 'L', ''),
('3K201216', 10, '', 'Nikho Putra Purnawan', 'Pria', 'Semarang', '08/05/2002', '3,37414E+15', '3,37414E+15', 'Islam', 'Mijen Rt. 02 Rw. 02 Kel. Mijen Kec. Mijen Semarang 50218 Jateng', 'Purnadi', '', '', '', 0, '', '', 0, '088 233 769 140', 'nikhoputra20022gmail.com', 'SMA Negeri 16 Semarang', 'Jl. Ngadirgo Tengah Mijen Semarang', 'DN-03/M-SMA/13/0146119', '', 'Orang tua/Kerabat', '(Woro) Progsus', 'L', ''),
('3K201217', 10, '', 'Noviana Nur Indriastuti', 'Wanita', 'Blora', '19/11/2002', '3,31613E+15', '3,31612E+15', 'Islam', 'Dk Kedungpoh Rt. 05 Rw. 02 Desa Kedungsatriyan Kec. Ngawen Kab. Blora 58259 Jawa Tengah', 'Suwignyo', '', '', '', 0, '', '', 0, '081 229 031 472', 'Nopeexxx495@gmail.com', 'SMA Negeri 1 Ngawen Blora', 'Jl. Raya Blora - Purwodadi KM. 17 Ngawen', 'DN-03/M-SMA/13/0185753', '', 'Teman', 'SMA Karang Ngawen', 'M', ''),
('3K201218', 10, '', 'Puput Pujiani Ningsih', 'Wanita', 'Jepara', '07/08/2002', '3,32002E+15', '3,32005E+15', 'Islam', 'Ngasem Krajan Rt. 14 Rw. 02 Kel. Ngasem Kec. Batealit Jepara', 'Achmad Supaat', '', '', '', 0, '', '', 0, '082 135 159 853', 'puputpujiani777@gmail.com', 'SMK Islam Al-Hikmah Mayong Jepara', 'Mayong Jepara', 'M-SMK/13-3/0653683', '', 'Sekolah', 'Tomi SMA Mayong', 'M', ''),
('3K201219', 10, '', 'Rena Tisabila', 'Wanita', 'Brebes', '14/11/2001', '3,32903E+15', '3,32906E+15', 'Islam', 'Perumahan Griya Linggapura Rt. 01 Rw. 01 Kel. Linggapura Kec. Tonjong Kab. Brebes 5227', 'Bedy Kurito', '', '', '', 0, '', '', 0, '085 229 930 071', 'tisabilarena@gmail.com', 'SMK Semesta Bumiayu', 'Jl. Pangeran Diponegoro Km. 1 Dukuhturi Bumiayu', 'M-SMK/13-3/0627024', '', 'Sekolah', 'Bu Erlina Semesta Bumi Ayu', 'M', ''),
('3K201220', 10, '', 'Rinazahrotil Umami', 'Wanita', 'Jepara', '24/04/2002', '3,32004E+15', '3,32003E+15', 'Islam', 'Bugo Rt.03 Rw.02 Kel. Bugo Kec. Welahan Kab. Jepara 59464', 'Bambang Winarko', '', '', '', 0, '', '', 0, '081 329 461 599', 'rintut123@gmail.com', 'SMK Islam Al-Hikmah Mayong Jepara', 'Mayong Jepara', 'M-SMK/13-3/0653687', '', 'Sekolah', 'Tomi SMA Mayong', 'S', ''),
('3K201221', 10, '', 'Riza Ulfanalia', 'Wanita', 'Kudus', '27/12/2002', '3,31909E+16', '3,31908E+15', 'Islam', 'Loram Wetan Rt. 05 Rw. 03 Kel. Loram Wetan Kec. Jati Kab.Kudus 59344 Jawa Tengah ', 'Kasdan', '', '', '', 0, '', '', 0, '085 712 532 272', '', 'SMK Duta Karya Kudus', 'Jl. Sosrokartono Km 3 Panjang Bae Kudus 59326 ', '', '', 'Teman/saudara', 'SMA Duta Karya Kudus', 'S', ''),
('3K201222', 10, '', 'Rizal Maulana Muhamad Iqbal', 'Pria', 'Magelang', '09/11/2000', '3,3082E+15', '', 'Islam', 'Sobokarang Rt. 02 Rw. 09 Girirejo Tegalrejo Magelang', 'Suharsono', '', '', '', 0, '', '', 0, '085 546 404 092', '', 'SMA Negeri 1 Candimulyo', '', '', '', '', 'Bu Lilip D3K', 'XL', ''),
('3K201223', 10, '', 'Satrio Budi Utomo', 'Pria', '', '19/11/2002', '', '', 'Kristen', 'Jl. Kebon Agung Timur Raya Rt. 03 Rw. 15 Kel. Kebon Batur Kab. Mranggen Jawa Tengah', '', '', '', '', 0, '', '', 0, '0821 345 7976', '', 'SMA Masehi 2 PSAK Semarang', 'Jl. Gemah Raya', '', '', 'Teman/saudara', 'SMA Masehi 2', 'S', ''),
('3K201224', 10, '', 'Wisnu Faiz Noor Ramadhan', 'Pria', 'Semarang', '15/12/2000', '3,37413E+15', '3,37413E+15', 'Islam', 'Jl. Taman Kumudasmoro II No.15 Rt. 07 Rw. 08 Kel. Bongsari, Kec. Semarang Barat Kota Semarang 50148', 'Noor Priyanto', '', '', '', 0, '', '', 0, '082 241 027 123', 'sman14smg_padblass@yahoo.com', 'SMA Negeri 14 Semarang', 'Jl. Kokrosono Semarang', 'DN-03/M-SMA/13/0003371', '', 'Orang tua/ Kerabat', 'M. Aziz Smt V', 'M', ''),
('3K201225', 10, '', 'Ziphora Nanda Pratantra', 'Wanita', 'Semarang', '20/07/2002', '3,37407E+15', '', 'Kristen', 'Lanan 1463, Plamongan Indah Rt.07 Rw. 14 Plamongan Sari Pedurungan', 'Hendij Chistian', '', '', '', 0, '', '', 0, '089 542 539 545', 'ziphora2002@gmail.com', 'SMA Terang Bangsa', 'Komplek Grand Marina, Jl. Ariloka No.A2 Tawangsari ', '', '', 'Orang tua/ Kerabat', '', '', ''),
('3K201226', 10, '', 'Aura Nandya Karen', 'Wanita', 'Indramayu', '30/07/2002', '3,21207E+15', '3,2123E+15', 'Islam', 'Blok Bri Rt 03 Rw 01 Kel. Rancajawat Kec. Tukdana Kab. Indramayu 45272 Jawa Barat', 'Jul Sudirja', '', '', '', 0, '', '', 0, '087 700 348 134', 'Auranndy30@gmail.com', 'SMK Widya Utama Indramayu', 'Jl. Pahlawan, Lemah Mekas, Indramayu', 'M-SMK/13-3/0387666', '', 'Orang tua/ Kerabat', 'Kristin', '', ''),
('3K211236', 11, '', 'Agil Ajeng Pangestu', 'Wanita', 'Semarang', '29/07/2003', '3,37415E+15', '3,37414E+15', 'Islam', 'Jl. Wonolopo Rt.002 Rw.003 Kel. Wonolopo Kec. Mijen Semarang 50215', 'Riyanto', '', '', '', 0, '', '', 0, '089 963 939 67', '', 'SMA N 13 Semarang', 'Alumni AKFAR', 'DN-03/M-SMA/K13/0132162', '', 'Alumni', 'Alumni AKFAR (Anang Mahendra)', 'L', ''),
('3K211237', 11, '', 'Bruno Fazly Maulana', 'Pria', 'Banyumas', '16/05/2003', '', '', 'Islam', 'Rt.004 Rw.007 Ds. Tlaga, Kec. Gumelar, Kab. Banyumas', '', '', '', '', 0, '', '', 0, '089 535 814 751', '', 'SMK Ma\'arif NU 2 Ajibarang', '', '', '', '', 'SMK Ma\'arif NU 2 Ajibarang', 'XXL', ''),
('3K211238', 11, '', 'Fitria Hanisa Regita Putri', 'Wanita', 'Grobogan', '23/08/2001', '3,31511E+15', '3,3151E+15', 'Islam', 'Lingkungan Kedusan Rt.005 Rw.002 Kel. Wirosari Kec. Wirosari Kab. Grobogan 58192', 'Suwito', '', '', '', 0, '', '', 0, '085 793 534 864', 'fitriargt23@gmail.com', 'SMA Unggulan Pondok Modern Selamat Kendal', 'Jl. Raya Soekarno-Hatta Km.3 Kec. Patebon, Kendal', 'DN-03/M-SMA/13/0045246', '', 'Teman', '', 'M', ''),
('3K211239', 11, '', 'Ima Mutiara Lesmana', 'Wanita', 'Semarang', '17/09/2001', '3,37403E+15', '3,37402E+15', 'Kristen', 'Jl. Mustokoweni Tengah V/481 Rt.003 Rw.003 Kel. Plombokan Kec. Semarang Utara', 'Imam Pramono', '', '', '', 0, '', '', 0, '081 393 577 440', 'Imamutiarag7@gmail.com', 'SMK Theresiana', 'Jl. Seroja Dalam Timur', 'M-SMK/13-3/0258763', '', 'Teman', '', 'M', ''),
('3K211240', 11, '', 'Laiq Izzul Haq', 'Pria', 'Kalirejo', '28/02/2002', '1,80201E+15', '1,80201E+15', 'Islam', 'Dsn V Rt.023 Rw.005 Kel. Kalirejo Kec. Kalirejo, Kab. Lampung Tengah Prov. Lampung 34174', 'Hashidul Ulum', '', '', '', 0, '', '', 0, '085 878 877 101', '', 'MA Al-Hikmah 2 Terpadu Brebes', 'Benda Dua, Kel. Benda, Kec. Sirampog, Kab.Brebes', '', '', 'Teman', 'Alumni 2011 (Bu Dyah)', 'M', ''),
('3K211241', 11, '', 'Lintang Alga Nurgibran', 'Pria', 'Cilacap', '26/06/2004', '3,30122E+15', '3,30122E+15', 'Islam', 'Jl. Citandui Rt.005 Rw.008 Kel.Donan, Kec. Cilacap Tengah, Kab. Cilacap 53222', 'Supriyatno', '', '', '', 0, '', '', 0, '085 866 447 143', 'gibranlintang123@gmail.com', 'SMA N 2 Cilacap', '', 'DN-03/M-SMA/K13/0082391', '', 'Teman', 'Widya Medis 3', 'XL', ''),
('3K211242', 11, '', 'Maulida Rahmasari', 'Wanita', 'Semarang', '04/06/2001', '3,37416E+15', '3,37416E+15', 'Islam', 'Mangkang Wetan Gang Bandeng Rt.001 Rw.006, Kel. Mangkang Wetan Kec.Tugu, Semarang Barat 50156', 'Tolkhah', '', '', '', 0, '', '', 0, '083 162 166 239', '', 'SMK Bina Nusantara Semarang', '', 'M-SMK/13-3/0917846', '', '', '', 'S', ''),
('3K211243', 11, '', 'Meliana Dwi Nahdaranto', 'Wanita', 'Tangerang', '02/03/2000', '3,60415E+15', '3,60415E+15', 'Islam', 'Perum Cikande Permai Blok H- 07/30 Rt.008 Rw.001 Kel. Cikade Permai Kec. Cikande Kab. Serang, Prov. Banten', 'Suranto', '', '', '', 0, '', '', 0, '085 693 976 350', '', 'Pondok Pesantren Daarul Falah Carenang Udik Serang', '', '281005634', '', '', 'Nadya alumni 2019', 'M', ''),
('3K211244', 11, '', 'Muhammad Rafif Dzaky Zhalifunn', 'Pria', 'Kuningan', '05/06/2001', '3,20811E+15', '', 'Islam', 'Jatimulya Rt.002 Rw.001, Dsn. Manis, Kec. Cidahu, Kab.Kuningan, Jawa Barat,45595', 'Ahmad Latif', '', '', '', 0, '', '', 0, '089 533 346 757', 'muhammadrafifdzaky92@gmail.com', 'SMA N 1 Ciawigebang', 'Jl. Siliwangi No.106 Ciawigebang, Kuningan, 45591', '96318', '', 'Brosur', '', '', ''),
('3K211245', 11, '', 'Muhamad Rifqi Maulana', 'Pria', 'Brebes', '22/01/2001', '3,32905E+15', '3,32905E+15', 'Islam', 'Dk. Siroyom Rt.001 Rw.001 Kel. Mlayang, Kec. Sirampog, Kab.Brebes, 52272', 'Muklas', '', '', '', 0, '', '', 0, '085 868 490 093', 'rifqimuhamadrxking@gmail.com', 'SMK Semesta Bumiayu', 'Jl. Diponegoro, Dk. Turi, Bumiayu, Brebes 52272', 'M-SMK/13-3/0390055', '', '', 'SMK Semesta Bumiayu', 'L', ''),
('3K211246', 11, '', 'Rafika Aulia Rahmah', 'Wanita', 'Jakarta', '01/10/2003', '3,17101E+15', '3,30215E+15', 'Islam', 'Ds. Kedungurang Rt.002 Rw.002 Kel.Kedungurang, Kec. Gumelar, Banyumas, Jawa Tengah 53165', 'Zainur Rokhman', '', '', '', 0, '', '', 0, '082 135 397 806', '', 'SMK Ma\'arif NU 2 Ajibarang', '', '', '', '', '', 'S', ''),
('3K211247', 11, '', 'Ratnawati', 'Wanita', 'Brebes', '09/09/2002', '3,32916E+15', '3,32916E+15', 'Islam', 'Ds. Ciduwet Rt.003 Rw.003 Kel. Ciduwet Kec. Ketanggungan, Kab.Brebes 52263', 'Wahidin', '', '', '', 0, '', '', 0, '085 229 335 814', '', 'SMA Al-Hikmah Sirampog', 'Benda Sirampog Brebes', 'DN-03/M-SMA/K13/0060810', '', 'Media cetak/elektronik', 'SMA Al-Hikmah 2 Brebes', 'S', ''),
('3K211248', 11, '', 'Rina Apita Fatma', 'Wanita', 'Semarang', '01/02/2001', '3,37409E+15', '3,37409E+15', 'Islam', 'Jl. Lamongan Barat XIV/5-A Rt.004 Rw.005 Kel. Sampangan, Kec. Gajah Mungkur Semarang 50236', 'Sumadi', '', '', '', 0, '', '', 0, '089 698 050 906', 'rinaapita012@gmail.com', 'SMA Setia Budhi', 'Wr. Supratman', 'DN-03/M-SMA/13/0147859', '', 'Teman', 'Angelia Fransisca Smt III', 'M', ''),
('3K211249', 11, '', 'Thereciana Indrasari', 'Wanita', 'Semarang', '24/12/2002', '3,37411E+15', '3,37405E+15', 'Kristen', 'Perum Griya Buana Rt.004 Rw.009 Kel. Bangetayu Wetan Kec.Genuk Semarang 50115', 'Indrawanto', '', '', '', 0, '', '', 0, '088 238 688 890', '', 'SMA N 15 Semarang', '', 'DN-03/M-SMA/K13/0070886', '', '', 'Alumni DIII Progsus (Nunuk)', 'S', ''),
('3K211250', 11, '', 'Welas Arum Sekarwati', 'Wanita', 'Pekalongan', '06/03/2002', '3,32611E+15', '3,32611E+15', 'Islam', 'Rejosari Rt.006 Rw.002 Kel.Rejosari Kec. Bojong Kab. Pekalongan 51156', 'Abdul Mutholib', '', '', '', 0, '', '', 0, '085 866 417 155', 'welasarumsekarwati4545@gmail.com', 'SMK Muhammadiyah Karanganyar', 'Jl. P. Mandurorejo No.347, Cokrah, Kulu, Kec.Karanganyar Pekalongan', 'M-SMK/K13-3/0613657', '', 'Internet', 'Ibnu Zain (Senat)', 'M', ''),
('3K211251', 11, '', 'Yohana Veronika Ziliwu', 'Wanita', 'Luaha Bouso', '19/07/1994', '1,27804E+15', '1,20419E+15', 'Katholik', 'Gawu-Gawu Bo\'uso, Kel. Gawu-Gawu Bo\'uso, Kec. Gunungsitoli Utara, Kota Gunungsitoli, Sumatera Utara', 'Yustinus Ziliwu', '', '', '', 0, '', '', 0, '', '', 'SMA N 2 Gunungsitoli, Kota Gunungsitoli', '', 'No. DN-07 Ma 0022880', '', '', 'Alumni DIII Progsus (Nunuk)', 'S', ''),
('3K211252', 11, '8b29384a3e709b0118d4d94d4811ecb1', 'Zaky Achmad Firdaus', 'Pria', 'Serang', '01/01/2002', '3,60415E+15', '3,60415E+15', 'Islam', 'Cikande Permai L-7/8 Rt.003 Rw.007 Kel.Cikande Permai Kec.Cikande, Serang, Banten ', 'Syamsul Hadi', '', '', '', 0, '', 'uzumaki naruto.jpg', 0, '081 212 757 071', '', 'SMA Islam Terpadu La Tahzan', '', 'DN-30/M-SMA/06/0115393', '1L', '', 'Nadya alumni 2019', 'L', ''),
('3K211253', 11, 'df9957fd8238279c9f8dec8c82879af8', 'Ziphora Nanda Pratantra', 'Pria', 'Semarang', '20/07/2002', '3,37407E+15', '', 'Kristen', 'Lanan 1463, Plamongan Indah Rt.07 Rw. 14 Plamongan Sari Pedurungan', 'Hendij Chistian', '', '', '', 0, '', 'tes.jpg', 0, '089 542 539 545', 'ziphora2002@gmail.com', 'SMA Terang Bangsa', 'Komplek Grand Marina, Jl. Ariloka No.A2 Tawangsari ', '', '1L', 'Orang tua/ Kerabat', '', 'M', ''),
('3K211254', 11, 'e904f15758dc5841a97d8650d4a0a438', 'Wenny Setya Ningdi Krismanto', 'Pria', 'Palu', '19/06/2002', '7,20602E+15', '7,27101E+15', 'Kristen', 'Jl. MT. Haryono No 46A Rt.009 Rw.003 Kel. Besusu Tengah Kec. Palu Timur Prov.Sulawesi Tengah 94112', 'Krismanto', '', '', '', 0, '', 'hinata.jpg', 0, '081 356 649 219', 'ningdikrismanto@gmail.com', 'SMA N 1 Palu', 'Jl. Gatot Subroto No.70', 'DN-18/M-SMA/13/0446710', '1L', 'Orangtua/kerabat', 'Bu Ika', 'M', ''),
('3K211255', 11, '869ca238ed12628c1e5391e4d18cc3bc', 'purwo', 'Pria', 'semarang', '01/01/1979', 'nik', 'kk', 'Budha', 'alamat', 'ayah', 'gawe ayah', 'ibu', 'gawe ibu', 100, '123', 'hatake kakashi.jpg', 1, '123123', 'email', 'sekolah asal', 'alamat sekolah asal', 'no_ijasah', '4L', 'sumber info', 'pembawa', 'XXL', 'dr. H. Fuad Alhamidy, M.Kes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makul`
--

CREATE TABLE `makul` (
  `id_makul` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `kode_makul` varchar(15) NOT NULL,
  `nama_makul` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `progdi`
--

CREATE TABLE `progdi` (
  `id_progdi` int(11) NOT NULL,
  `nama_progdi` varchar(50) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `progdi`
--

INSERT INTO `progdi` (`id_progdi`, `nama_progdi`, `id_jurusan`) VALUES
(1, 'Analis Kesehatan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL,
  `kapasitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `thn_ajaran`
--

CREATE TABLE `thn_ajaran` (
  `id_tahun` int(11) NOT NULL,
  `nama_tahun` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `thn_ajaran`
--

INSERT INTO `thn_ajaran` (`id_tahun`, `nama_tahun`, `status`) VALUES
(1, '2011-2012', ''),
(2, '2012-2013', ''),
(3, '2013-2014', ''),
(4, '2014-2015', ''),
(5, '2015-2016', ''),
(6, '2016-2017', ''),
(7, '2017-2018', ''),
(8, '2018-2019', ''),
(9, '2019-2020', ''),
(10, '2020-2021', ''),
(11, '2021-2022', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`id_khs`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`);

--
-- Indeks untuk tabel `krs_detail`
--
ALTER TABLE `krs_detail`
  ADD PRIMARY KEY (`id_detailkrs`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`id_makul`);

--
-- Indeks untuk tabel `progdi`
--
ALTER TABLE `progdi`
  ADD PRIMARY KEY (`id_progdi`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indeks untuk tabel `thn_ajaran`
--
ALTER TABLE `thn_ajaran`
  ADD PRIMARY KEY (`id_tahun`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `khs`
--
ALTER TABLE `khs`
  MODIFY `id_khs` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `krs_detail`
--
ALTER TABLE `krs_detail`
  MODIFY `id_detailkrs` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `makul`
--
ALTER TABLE `makul`
  MODIFY `id_makul` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `progdi`
--
ALTER TABLE `progdi`
  MODIFY `id_progdi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `thn_ajaran`
--
ALTER TABLE `thn_ajaran`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
