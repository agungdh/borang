-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2018 at 03:22 AM
-- Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `borang`
--

-- --------------------------------------------------------

--
-- Table structure for table `borang`
--

CREATE TABLE `borang` (
  `id_borang` int(11) NOT NULL,
  `nama_file` varchar(191) NOT NULL,
  `id_borang_akreditasi` int(11) NOT NULL,
  `id_standar` int(11) DEFAULT NULL,
  `id_substandar` int(11) DEFAULT NULL,
  `id_butir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `borang_akreditasi`
--

CREATE TABLE `borang_akreditasi` (
  `id_borang_akreditasi` int(11) NOT NULL,
  `tanggal_borang_akreditasi` date NOT NULL,
  `tahun_usulan` year(4) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_standar_akreditasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `butir`
--

CREATE TABLE `butir` (
  `id_butir` int(11) NOT NULL,
  `nomor_butir` varchar(12) NOT NULL,
  `nama_butir` text NOT NULL,
  `id_substandar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `butir`
--

INSERT INTO `butir` (`id_butir`, `nomor_butir`, `nama_butir`, `id_substandar`) VALUES
(7, '1.1.1', 'Jelaskan mekanisme penyusunan visi, misi, tujuan dan sasaran program studi, serta pihak-pihak yang dilibatkan.', 12),
(8, '1.1.2', 'Sasaran dan strategi pencapaian', 12),
(9, '1.2.1', 'Uraikan upaya penyebaran/sosialisasi visi, misi dan tujuan program studi serta pemahaman sivitas akademika (dosen dan mahasiswa) dan tenaga kependidikan.', 13),
(10, '2.1.1', 'Uraikan secara ringkas sistem dan pelaksanaan tata pamong di program studi untuk  membangun sistem tata pamong yang kredibel, transparan, akuntabel, bertanggung jawab dan adil.', 14),
(11, '2.2.1', 'Jelaskan pola kepemimpinan dalam program studi, mencakup informasi tentang kepemimpinan operasional, kepemimpinan organisasi, dan kepemimpinan publik. ', 15),
(12, '2.3.1', 'Jelaskan sistem pengelolaan program studi serta dokumen pendukungnya', 16),
(13, '2.4.1', 'Jelaskan penjaminan mutu pada program studi yang mencakup informasi tentang kebijakan, sistem dokumentasi, dan tindak lanjut atas laporan pelaksanaannya. ', 17),
(14, '2.5.1', 'jelaskan isi umpan balik dan tindak lanjutnya dari dosen, mahasiswa, alumni dan pengguna lulusan', 18),
(15, '2.6.1', 'Jelaskan upaya untuk menjamin keberlanjutan (sustainability) program studi ini berikut hasilnya', 19),
(16, '3.1.1', 'Tuliskan data seluruh mahasiswa reguler(1) dan lulusannya dalam lima tahun terakhir ', 20),
(17, '3.1.2', 'Sebutkan pencapaian prestasi/reputasi mahasiswa dalam lima tahun terakhir di bidang akademik dan non-akademik (misalnya prestasi dalam penelitian dan lomba karya ilmiah, olahraga, dan seni). ', 20),
(18, '3.1.3', 'Tuliskan data jumlah mahasiswa reguler tujuh tahun terakhir ', 20),
(19, '3.1.4', 'Tuliskan data jumlah mahasiswa reguler lima tahun terakhir ', 20),
(20, '3.1.5', 'Tuliskan data jumlah mahasiswa regular tiga tahun ', 20),
(21, '3.1.6', 'Tuliskan data jumlah mahasiswa regular dua tahun ', 20),
(22, '3.4.1', 'Evaluasi kinerja lulusan oleh pihak pengguna lulusan', 23),
(23, '3.4.2', 'Jelaskan keahlian/kemampuan yang merupakan keunggulan lulusan program  studi ini.', 23),
(24, '3.4.3', 'Rata-rata waktu tunggu lulusan lima tahun terakhir untuk memperoleh pekerjaan yang pertama = … bulan.  Jelaskan bagaimana data ini diperoleh. ', 23),
(25, '3.4.4', 'Persentase lulusan lima tahun terakhir yang bekerja pada bidang yang sesuai dengan keahliannya = …%.  Jelaskan bagaimana data ini diperoleh. ', 23),
(26, '3.4.5', 'Sebutkan lembaga (instansi/industri) yang memesan lulusan untuk bekerja di lembaga  tersebut dalam lima tahun terakhir.', 23),
(27, '3.5.1', 'Jelaskan program kegiatan alumni selama lima tahun terakhir dan hasilnya untuk mendukung kemajuan program studi', 24),
(28, '4.1.1', 'Jelaskan sistem seleksi/perekrutan, penempatan, pengembangan, retensi, dan pemberhentian dosen dan tenaga kependidikan untuk menjamin mutu penyelenggaraan program akademik (termasuk informasi tentang ketersediaan pedoman tertulis).', 25),
(29, '4.2.1', 'Jelaskan sistem monitoring dan evaluasi, serta rekam jejak kinerja akademik dosen dan kinerja tenaga kependidikan (termasuk informasi tentang ketersediaan pedoman tertulis).', 26),
(30, '4.3.1', 'Data dosen tetap yang bidang keahliannya sesuai dengan bidang PS', 27),
(31, '4.3.2', 'Data dosen tetap yang bidang keahliannya di luar bidang PS', 27),
(32, '4.3.3', 'Aktivitas dosen tetap yang bidang bidang keahliannya sesuai dengan PS dinyatakan dalam SKS rata-rata per semester pada satu tahun akademik terakhir, diisi dengan perhitungan sesuai SK Dirjen DIKTI no. 48 tahun 1983 (12 SKS setara dengan 36 jam kerja per minggu)', 27),
(33, '4.3.4', 'Tuliskan data aktivitas mengajar dosen tetap yang bidang keahliannya sesuai dengan PS,  dalam satu tahun akademik terakhir di PS ini ', 27),
(34, '4.3.5', 'Tuliskan data aktivitas mengajar dosen tetap yang bidang keahliannya di luar PS,  dalam satu tahun akademik terakhir di PS ini ', 27),
(35, '4.4.1', 'Tuliskan data dosen tidak tetap pada ', 28),
(36, '4.4.2', 'Tuliskan data aktivitas mengajar dosen tidak tetap pada satu tahun terakhir di PS ini', 28),
(37, '4.5.1', 'Kegiatan tenaga ahli/pakar sebagai pembicara dalam seminar/pelatihan, pembicara tamu, dsb, dari luar PT sendiri (tidak termasuk dosen tidak tetap)', 29),
(38, '4.5.2', 'Peningkatan kemampuan dosen tetap melalui program tugas belajar dalam bidang yang sesuai dengan bidang PS', 29),
(39, '4.5.3', 'Kegiatan dosen tetap yang bidang keahliannya sesuai dengan PS dalam seminar ilmiah/lokakarya/penataran/workshop/ pagelaran/ pameran/peragaan yang tidak hanya melibatkan dosen PT sendiri', 29),
(40, '4.5.4', 'Sebutkan pencapaian prestasi/reputasi dosen (misalnya prestasi dalam pendidikan, penelitian dan pelayanan/pengabdian kepada masyarakat).', 29),
(41, '4.5.5', 'Sebutkan keikutsertaan dosen tetap dalam organisasi keilmuan atau organisasi profesi.', 29),
(42, '4.6.1', 'Tuliskan data tenaga kependidikan  yang ada di PS, Jurusan, Fakultas atau PT yang melayani mahasiswa PS ', 30),
(43, '4.6.2', 'Jelaskan upaya yang telah dilakukan PS dalam meningkatkan kualifikasi dan kompetensi tenaga kependidikan. ', 30),
(44, '5.1.1', 'Kompetensi', 31),
(45, '5.1.2', 'Struktur Kurikulum', 31),
(46, '5.2.1', 'Mekanisme Monitoring Perkuliahan', 32),
(47, '5.2.2', 'Berapa waktu yang disediakan untuk pelaksanaan real proses belajar mengajar yang diselenggarakan oleh program studi ', 32),
(48, '5.2.3', 'Lampirkan contoh soal ujian dalam 1 tahun terakhir untuk 5 mata kuliah keahlian berikut silabusnya.', 32),
(49, '5.3.1', 'Jelaskan mekanisme peninjauan kurikulum dan pihak-pihak yang dilibatkan dalam proses peninjauan tersebut.  ', 33),
(50, '5.3.2', 'Tuliskan hasil peninjauan, khusus untuk silabus/SAP mata kuliah mengikuti format tabel berikut.', 33),
(51, '5.4.1', 'Tuliskan nama dosen pembimbing akademik /wali dan jumlah mahasiswa yang dibimbingnya ', 34),
(52, '5.4.2', 'Jelaskan proses pembimbingan akademik  yang diterapkan pada Program Studi ini ', 34),
(53, '5.5.1', 'Pelaksanaan pembimbingan karya/tugas akhir.', 35),
(54, '5.6.1', 'Uraikan upaya perbaikan pembelajaran serta hasil yang telah dilakukan dan dicapai dalam tiga tahun terakhir dan hasilnya.', 36),
(55, '5.7.1', 'Jelaskan kebijakan tentang suasana akademik (otonomi keilmuan, kebebasan akademik, kebebasan mimbar akademik) serta ketersediaan dokumen pendukungnya.', 37),
(56, '5.7.2', 'Jelaskan ketersediaan dan jenis prasarana, sarana dan dana yang memungkinkan terciptanya interaksi akademik antara sivitas akademika, serta status kepemilikan prasarana dan sarana.', 37),
(57, '5.7.3', 'Jelaskan program dan kegiatan di dalam dan di luar proses pembelajaran, yang dilaksanakan baik di dalam maupun di luar kelas,  untuk menciptakan suasana akademik yang kondusif (misalnya seminar, simposium, lokakarya, bedah buku, penelitian bersama, ', 37),
(58, '5.7.4', 'Jelaskan interaksi akademik antara dosen-mahasiswa, antar mahasiswa, serta antar dosen serta hasilnya.', 37),
(59, '6.1.1', 'Jelaskan keterlibatan PS dalam perencanaan anggaran dan pengelolaan dana.', 40),
(60, '6.2.1', 'Tuliskan realisasi perolehan dan alokasi dana (termasuk hibah) dalam juta rupiah termasuk gaji,  selama tiga tahun terakhir', 41),
(61, '6.2.2', 'Tuliskan dana untuk kegiatan penelitian pada tiga tahun terakhir yang melibatkan dosen yang bidang keahliannya sesuai dengan program studi', 41),
(62, '6.2.3', 'Tuliskan dana yang diperoleh dari/untuk kegiatan pelayanan/pengabdian kepada masyarakat pada tiga tahun terakhir ', 41),
(63, '6.3.1', 'Tuliskan data ruang kerja dosen tetap yang bidang keahliannya sesuai dengan PS ', 42),
(64, '6.3.2', 'Tuliskan data prasarana (kantor, ruang kelas, ruang laboratorium, studio, ruang perpustakaan, kebun percobaan, dsb. kecuali  ruang dosen) yang dipergunakan PS dalam proses belajar mengajar ', 42),
(65, '6.3.3', 'Tuliskan data prasarana lain yang menunjang (misalnya tempat olah raga, ruang bersama, ruang himpunan mahasiswa, poliklinik) ', 42),
(66, '6.4.1', 'Pustaka (buku teks, karya ilmiah, dan jurnal; termasuk juga dalam bentuk CD-ROM dan media lainnya) Tuliskan rekapitulasi jumlah ketersediaan pustaka yang relevan dengan bidang PS ', 43),
(67, '6.4.2', 'Sebutkan sumber-sumber pustaka di lembaga lain (lembaga perpustakaan lainnya) yang biasa diakses/dimanfaatkan oleh dosen dan mahasiswa program studi ini.  Jika ada kerjasama, bukti agar disiapkan saat asesmen lapangan.', 43),
(68, '6.4.3', 'Tuliskan peralatan utama yang digunakan di laboratorium (tempat praktikum, bengkel, studio, ruang simulasi, rumah sakit, puskesmas/balai kesehatan, green house, lahan untuk pertanian, dan sejenisnya) yang dipergunakan dalam proses pembelajaran di jurusan/fakultas/PT', 43),
(69, '6.5.1', 'Jelaskan sistem informasi dan fasilitas yang digunakan oleh program studi untuk proses pembelajaran (hardware, software, e-learning, akses on-line ke perpustakaan, dll.).', 44),
(70, '6.5.2', 'Beri tanda √ pada kolom yang sesuai dengan aksesibilitas tiap jenis data', 44),
(71, '7.1.1', 'Tuliskan jumlah judul penelitian* yang sesuai dengan bidang keilmuan PS, yang dilakukan oleh dosen tetap yang bidang keahliannya sesuai dengan PS selama tiga tahun terakhir ', 45),
(72, '7.1.2', 'Tuliskan judul artikel ilmiah/karya ilmiah/karya seni/buku yang dihasilkan selama tiga tahun terakhir oleh dosen tetap yang bidang keahliannya sesuai dengan ', 45),
(73, '7.1.3', 'Sebutkan karya dosen dan atau mahasiswa program studi yang telah memperoleh Hak atas Kekayaan Intelektual (Paten/HaKI) atau karya yang mendapat pengakuan/penghargaan dari lembaga nasional/ internasional selama tiga tahun terakhir.', 45),
(74, '7.2.1', 'Tuliskan jumlah kegiatan pelayanan/pengabdian kepada masyarakat (*) yang sesuai dengan bidang keilmuan PS selama tiga tahun terakhir yang dilakukan oleh dosen tetap yang bidang keahliannya sesuai dengan PS ', 46),
(76, '7.2.2', 'Adakah mahasiswa yang dilibatkan dalam kegiatan pelayanan/pengabdian kepada masyarakat dalam tiga tahun terakhir', 46),
(77, '7.3.1', 'Tuliskan instansi dalam negeri yang menjalin kerjasama* yang terkait dengan program studi/jurusan dalam tiga tahun terakhir.', 47),
(78, '7.3.2', 'Tuliskan instansi luar negeri yang menjalin kerjasama* yang terkait dengan program studi/jurusan dalam tiga tahun terakhir.', 47);

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(3, 'fak 1'),
(6, 'fak 4'),
(7, 'Fakultas Teknologi Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `id_fakultas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `id_fakultas`) VALUES
(1, 'Teknik Informatika', 7);

-- --------------------------------------------------------

--
-- Table structure for table `standar`
--

CREATE TABLE `standar` (
  `id_standar` int(11) NOT NULL,
  `nomor_standar` varchar(3) NOT NULL,
  `nama_standar` text NOT NULL,
  `id_standar_akreditasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standar`
--

INSERT INTO `standar` (`id_standar`, `nomor_standar`, `nama_standar`, `id_standar_akreditasi`) VALUES
(12, '1', 'Visi, misi, tujuan dan sasaran, serta strategi pencapaian ', 1),
(13, '2', 'Tata pamong,  kepemimpinan, sistem pengelolaan, dan penjaminan mutuTata pamong,  kepemimpinan, sistem pengelolaan, dan penjaminan mutu', 1),
(14, '3', 'Mahasiswa dan lulusan ', 1),
(15, '4', 'Sumber daya manusia ', 1),
(16, '5', 'Kurikulum, pembelajaran, dan suasana akademik', 1),
(17, '6', 'Pembiayaan, sarana dan prasarana, serta sistem informasi', 1),
(18, '7', 'Penelitian dan pelayanan/pengabdian kepada masyarakat, dan kerjasama', 1);

-- --------------------------------------------------------

--
-- Table structure for table `standar_akreditasi`
--

CREATE TABLE `standar_akreditasi` (
  `id_standar_akreditasi` int(11) NOT NULL,
  `standar_akreditasi` varchar(50) NOT NULL,
  `tahun_standar_akreditasi` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standar_akreditasi`
--

INSERT INTO `standar_akreditasi` (`id_standar_akreditasi`, `standar_akreditasi`, `tahun_standar_akreditasi`) VALUES
(1, '7 Standar Diploma', 2009);

-- --------------------------------------------------------

--
-- Table structure for table `substandar`
--

CREATE TABLE `substandar` (
  `id_substandar` int(11) NOT NULL,
  `nomor_substandar` varchar(6) NOT NULL,
  `nama_substandar` text NOT NULL,
  `id_standar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `substandar`
--

INSERT INTO `substandar` (`id_substandar`, `nomor_substandar`, `nama_substandar`, `id_standar`) VALUES
(12, '1.1', '	Visi, Misi, Tujuan, dan Sasaran serta Strategi Pencapaian', 12),
(13, '1.2', '	Sosialisasi ', 12),
(14, '2.1', 'Sistem Tata Pamong', 13),
(15, '2.2', 'Kepemimpinan', 13),
(16, '2.3', 'Sistem Pengelolaan', 13),
(17, '2.4', 'Penjaminan Mutu', 13),
(18, '2.5', 'Umpan Balik', 13),
(19, '2.6', 'Keberlanjutan', 13),
(20, '3.1', 'Profil Mahasiswa dan Lulusan', 14),
(21, '3.2', 'Layanan kepada Mahasiswa  ', 14),
(22, '3.3', 'Jelaskan usaha-usaha program studi/jurusan mencarikan tempat kerja bagi lulusannya ', 14),
(23, '3.4', 'Evaluasi Lulusan', 14),
(24, '3.5', 'Partisipasi Alumni', 14),
(25, '4.1', 'Sistem Seleksi dan Pengembangan', 15),
(26, '4.2', 'Monitoring dan Evaluasi', 15),
(27, '4.3', 'Dosen Tetap ', 15),
(28, '4.4', 'Dosen Tidak Tetap', 15),
(29, '4.5', 'Upaya Peningkatan Sumber Daya Manusia (SDM) dalam Tiga Tahun Terakhir', 15),
(30, '4.6', 'Tenaga kependidikan', 15),
(31, '5.1', 'Kurikulum', 16),
(32, '5.2', 'Pelaksanaan Proses Pembelajaran', 16),
(33, '5.3', 'Peninjauan kurikulum dalam 5 tahun terakhir ', 16),
(34, '5.4', 'Sistem Pembimbingan Akademik', 16),
(35, '5.5', 'Karya/tugas Akhir ', 16),
(36, '5.6', 'Upaya Perbaikan Pembelajaran', 16),
(37, '5.7', 'Peningkatan Suasana Akademik', 16),
(38, '5.8', 'Pembekalan Etika Profesi', 16),
(39, '5.9', 'Keselamatan Kerja', 16),
(40, '6.1', 'Pengelolaan Dana', 17),
(41, '6.2', 'Perolehan dan Alokasi Dana', 17),
(42, '6.3', 'Prasarana', 17),
(43, '6.4', 'Sarana Pelaksanaan Kegiatan Akademik', 17),
(44, '6.5', 'Sistem Informasi', 17),
(45, '7.1', 'Penelitian Dosen Tetap yang Bidang Keahliannya Sesuai dengan PS', 18),
(46, '7.2', 'Kegiatan Pelayanan/Pengabdian kepada Masyarakat (PkM)', 18),
(47, '7.3', 'Kegiatan Kerjasama dengan Instansi Lain ', 18);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(191) NOT NULL,
  `level` enum('op','os','ks') NOT NULL,
  `id_prodi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `level`, `id_prodi`) VALUES
(1, 'Kasubdit SPME', 'kspme', '$2y$10$WswVPYk1j6rbE2G5tYQ3Ou.hXR2sJK6nkRBAuyP9bSgqUjG0cOQMG', 'ks', NULL),
(2, 'Operator SPME', 'ospme', '$2y$10$9ptZEWxD7m1lpMFLVwMFc.F7hbEBvvW4zRJnHfV/acihDKi5tM3H6', 'os', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_butir`
-- (See below for the actual view)
--
CREATE TABLE `v_butir` (
`id_butir` int(11)
,`nomor_butir` varchar(12)
,`nama_butir` text
,`id_substandar` int(11)
,`nomor_substandar` varchar(6)
,`nama_substandar` text
,`id_standar` int(11)
,`nomor_standar` varchar(3)
,`nama_standar` text
,`id_standar_akreditasi` int(11)
,`standar_akreditasi` varchar(50)
,`tahun_standar_akreditasi` year(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_standar`
-- (See below for the actual view)
--
CREATE TABLE `v_standar` (
`id_standar` int(11)
,`nomor_standar` varchar(3)
,`nama_standar` text
,`id_standar_akreditasi` int(11)
,`standar_akreditasi` varchar(50)
,`tahun_standar_akreditasi` year(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_substandar`
-- (See below for the actual view)
--
CREATE TABLE `v_substandar` (
`id_substandar` int(11)
,`nomor_substandar` varchar(6)
,`nama_substandar` text
,`id_standar` int(11)
,`nomor_standar` varchar(3)
,`nama_standar` text
,`id_standar_akreditasi` int(11)
,`standar_akreditasi` varchar(50)
,`tahun_standar_akreditasi` year(4)
);

-- --------------------------------------------------------

--
-- Structure for view `v_butir`
--
DROP TABLE IF EXISTS `v_butir`;

CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`localhost` SQL SECURITY DEFINER VIEW `v_butir`  AS  select `b`.`id_butir` AS `id_butir`,`b`.`nomor_butir` AS `nomor_butir`,`b`.`nama_butir` AS `nama_butir`,`b`.`id_substandar` AS `id_substandar`,`ss`.`nomor_substandar` AS `nomor_substandar`,`ss`.`nama_substandar` AS `nama_substandar`,`ss`.`id_standar` AS `id_standar`,`s`.`nomor_standar` AS `nomor_standar`,`s`.`nama_standar` AS `nama_standar`,`s`.`id_standar_akreditasi` AS `id_standar_akreditasi`,`sa`.`standar_akreditasi` AS `standar_akreditasi`,`sa`.`tahun_standar_akreditasi` AS `tahun_standar_akreditasi` from (((`standar_akreditasi` `sa` join `standar` `s`) join `substandar` `ss`) join `butir` `b`) where ((`b`.`id_substandar` = `ss`.`id_substandar`) and (`ss`.`id_standar` = `s`.`id_standar`) and (`s`.`id_standar_akreditasi` = `sa`.`id_standar_akreditasi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_standar`
--
DROP TABLE IF EXISTS `v_standar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`localhost` SQL SECURITY DEFINER VIEW `v_standar`  AS  select `s`.`id_standar` AS `id_standar`,`s`.`nomor_standar` AS `nomor_standar`,`s`.`nama_standar` AS `nama_standar`,`s`.`id_standar_akreditasi` AS `id_standar_akreditasi`,`sa`.`standar_akreditasi` AS `standar_akreditasi`,`sa`.`tahun_standar_akreditasi` AS `tahun_standar_akreditasi` from (`standar` `s` join `standar_akreditasi` `sa`) where ((not(`s`.`id_standar` in (select `v_butir`.`id_standar` from `v_butir`))) and (`s`.`id_standar_akreditasi` = `sa`.`id_standar_akreditasi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_substandar`
--
DROP TABLE IF EXISTS `v_substandar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`localhost` SQL SECURITY DEFINER VIEW `v_substandar`  AS  select `ss`.`id_substandar` AS `id_substandar`,`ss`.`nomor_substandar` AS `nomor_substandar`,`ss`.`nama_substandar` AS `nama_substandar`,`ss`.`id_standar` AS `id_standar`,`s`.`nomor_standar` AS `nomor_standar`,`s`.`nama_standar` AS `nama_standar`,`s`.`id_standar_akreditasi` AS `id_standar_akreditasi`,`sa`.`standar_akreditasi` AS `standar_akreditasi`,`sa`.`tahun_standar_akreditasi` AS `tahun_standar_akreditasi` from ((`substandar` `ss` join `standar` `s`) join `standar_akreditasi` `sa`) where ((not(`ss`.`id_substandar` in (select `v_butir`.`id_substandar` from `v_butir`))) and (`ss`.`id_standar` = `s`.`id_standar`) and (`s`.`id_standar_akreditasi` = `sa`.`id_standar_akreditasi`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borang`
--
ALTER TABLE `borang`
  ADD KEY `id_borang_akreditasi` (`id_borang_akreditasi`),
  ADD KEY `id_butir` (`id_butir`),
  ADD KEY `id_standar` (`id_standar`),
  ADD KEY `id_substandar` (`id_substandar`);

--
-- Indexes for table `borang_akreditasi`
--
ALTER TABLE `borang_akreditasi`
  ADD PRIMARY KEY (`id_borang_akreditasi`),
  ADD KEY `id_standar_akreditasi` (`id_standar_akreditasi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `butir`
--
ALTER TABLE `butir`
  ADD PRIMARY KEY (`id_butir`),
  ADD KEY `id_substandar` (`id_substandar`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `standar`
--
ALTER TABLE `standar`
  ADD PRIMARY KEY (`id_standar`),
  ADD KEY `id_standar_akreditasi` (`id_standar_akreditasi`);

--
-- Indexes for table `standar_akreditasi`
--
ALTER TABLE `standar_akreditasi`
  ADD PRIMARY KEY (`id_standar_akreditasi`);

--
-- Indexes for table `substandar`
--
ALTER TABLE `substandar`
  ADD PRIMARY KEY (`id_substandar`),
  ADD KEY `id_standar` (`id_standar`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borang_akreditasi`
--
ALTER TABLE `borang_akreditasi`
  MODIFY `id_borang_akreditasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `butir`
--
ALTER TABLE `butir`
  MODIFY `id_butir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `standar`
--
ALTER TABLE `standar`
  MODIFY `id_standar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `standar_akreditasi`
--
ALTER TABLE `standar_akreditasi`
  MODIFY `id_standar_akreditasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `substandar`
--
ALTER TABLE `substandar`
  MODIFY `id_substandar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borang`
--
ALTER TABLE `borang`
  ADD CONSTRAINT `borang_ibfk_1` FOREIGN KEY (`id_borang_akreditasi`) REFERENCES `borang_akreditasi` (`id_borang_akreditasi`),
  ADD CONSTRAINT `borang_ibfk_2` FOREIGN KEY (`id_butir`) REFERENCES `butir` (`id_butir`),
  ADD CONSTRAINT `borang_ibfk_3` FOREIGN KEY (`id_standar`) REFERENCES `standar` (`id_standar`),
  ADD CONSTRAINT `borang_ibfk_4` FOREIGN KEY (`id_substandar`) REFERENCES `substandar` (`id_substandar`);

--
-- Constraints for table `borang_akreditasi`
--
ALTER TABLE `borang_akreditasi`
  ADD CONSTRAINT `borang_akreditasi_ibfk_1` FOREIGN KEY (`id_standar_akreditasi`) REFERENCES `standar_akreditasi` (`id_standar_akreditasi`),
  ADD CONSTRAINT `borang_akreditasi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `butir`
--
ALTER TABLE `butir`
  ADD CONSTRAINT `butir_ibfk_1` FOREIGN KEY (`id_substandar`) REFERENCES `substandar` (`id_substandar`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`);

--
-- Constraints for table `standar`
--
ALTER TABLE `standar`
  ADD CONSTRAINT `standar_ibfk_1` FOREIGN KEY (`id_standar_akreditasi`) REFERENCES `standar_akreditasi` (`id_standar_akreditasi`);

--
-- Constraints for table `substandar`
--
ALTER TABLE `substandar`
  ADD CONSTRAINT `substandar_ibfk_1` FOREIGN KEY (`id_standar`) REFERENCES `standar` (`id_standar`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
