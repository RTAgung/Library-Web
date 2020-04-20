-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2019 at 05:06 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `AdminId` varchar(4) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `ContactNumber` varchar(13) DEFAULT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `HireDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`AdminId`, `Name`, `Address`, `ContactNumber`, `Email`, `Password`, `HireDate`) VALUES
('A001', 'Rama Tri Agung', 'Jl. Tambak Bayan VI', '081377879966', 'ramatriagung91@gmail.com', 'a811719797bf1798fd634da415a76768', '2019-10-01'),
('A002', 'Liek Allyandaru', 'Jl. Seturan', '082136564484', 'all4yandaru@gmail.com', 'cc36c8bb67881fe4ff433601b9f36c78', '2019-10-01'),
('A003', 'Satya Ghifari Adipratama', 'Srondol Bumi Indah Blok Y-7,Semarang', '081282357959', 'satyaghifari12@gmail.com', 'bcdaa8973a9542fea8771cc57838300f', '2019-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookId` int(11) NOT NULL,
  `CategoryId` varchar(4) NOT NULL,
  `PublisherId` varchar(4) NOT NULL,
  `Isbn` varchar(13) NOT NULL,
  `BookTitle` varchar(100) NOT NULL,
  `Author` varchar(40) DEFAULT NULL,
  `Stock` int(11) DEFAULT '0',
  `Image` varchar(300) NOT NULL DEFAULT 'photo/book/default_book.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookId`, `CategoryId`, `PublisherId`, `Isbn`, `BookTitle`, `Author`, `Stock`, `Image`) VALUES
(22, 'CFic', 'P004', '9781787461116', 'The Firm', 'John Grisham', 0, 'http://prodimage.images-bn.com/pimages/0032429281241_p0_v2_s1200x630.jpg'),
(23, 'CTec', 'P001', '9786021514917', 'Algoritma dan Pemrograman dalam bahasa Pascal,C, dan C++ Edisi Keenam', 'Rinaldi Munir & Leony Lidya', 3, 'https://cdn.gramedia.com/uploads/items/9786021514917_algoritma-dan-pemrograman-dalam-bahasa-pascal_-c_-dan-c_-edisi-keenam.jpg'),
(24, 'CTec', 'P001', '9786026232137', 'Matematika Diskrit', 'Rinaldi Munir', 6, 'https://cf.shopee.co.id/file/f9845733add4897ebbb254c122d0fa0d_tn'),
(25, 'CSci', 'P002', '9789790339378', 'Kalkulus Edisi Kesembilan Jilid 1', 'Varberg,Purcell,Rigdon', 9, 'https://3.bp.blogspot.com/--vAL6uUXDeo/WFZj8sT_tpI/AAAAAAAAA8Q/mXrxRYG7FJEqgxDzYHfyTFAh6k1HvitWwCLcB/s1600/Purcell_bogdestudio.png'),
(26, 'CSci', 'P002', '9789790991545', 'Kalkulus Edisi Kesembilan Jilid 2', 'Varberg,Purcell,Rigdon', 10, 'https://cf.shopee.co.id/file/9176cbf035cf57ebd57403ecaaa0e763'),
(27, 'CArD', 'P001', '9786021514566', 'The Magic of Coreldraw', 'Hendi Hendratman', 3, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//94/MTA-3705663/informatika_informatika-the-magic-of-corel-draw-edisi-revisi-kedua-by-hendi-hendratman-buku-software_full06.jpg?output-format=webp'),
(28, 'CHis', 'P005', '9780743224543', 'Band of Brothers', 'Stephen E. Ambrose', 2, 'https://images-na.ssl-images-amazon.com/images/I/51y7WMAw3IL._SX310_BO1,204,203,200_.jpg'),
(29, 'CSci', 'P005', '9781471165085', 'The 7 Habits of Highly Effective People', 'Stephen R. Covey', 23, 'https://prodimage.images-bn.com/pimages/9781476740058_p0_v3_s550x406.jpg'),
(30, 'CSci', 'P005', '9781476708690', 'The Innovators', 'Walter Isaacson', 0, 'https://images-na.ssl-images-amazon.com/images/I/519KsxAU05L._SX332_BO1,204,203,200_.jpg'),
(31, 'CEcn', 'P006', '978007179850', 'Achieve Financial Freedom', 'Sandy & Matthew Botkin', 2, 'https://images-na.ssl-images-amazon.com/images/I/71gkd8Em%2BhL.jpg'),
(32, 'CFic', 'P001', '1928465708121', 'Kimi No Nawa', 'Liek Allyandaru', 17, 'https://i.pinimg.com/474x/b7/ba/18/b7ba182ba2c00c7be96e909708f981d6.jpg'),
(33, 'CTec', 'P003', '1928465761124', 'Database Management System', 'Rama Tri Agung', 10, 'photo/book/default_book.png'),
(35, 'CSci', 'P003', '192846510000', 'Nganu', 'Liek Allyandaru', 1, 'photo/book/c652f6f5c67fcb5be0fce4eef227e392.png'),
(36, 'CFic', 'P001', '124235464634', 'A Silent Voice', 'Satya Ghifari', 1, 'photo/book/811163caa7bea5a5052a147acf626cf3.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryId` varchar(4) NOT NULL,
  `CategoryName` varchar(30) NOT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryId`, `CategoryName`, `Description`) VALUES
('CArD', 'Art & Design', 'All about art & Designing'),
('CEcn', 'Economic', 'This Category is all about economy and finance.'),
('CFic', 'Fiction Novel', 'This Category is full of fiction novel from the greatest writer'),
('CHis', 'History', 'History arround the world'),
('CSci', 'Science', 'This Category full of science book'),
('CTec', 'Technology', 'All about technology in this category');

-- --------------------------------------------------------

--
-- Table structure for table `inputs`
--

CREATE TABLE `inputs` (
  `AdminId` varchar(4) DEFAULT NULL,
  `BookId` int(11) DEFAULT NULL,
  `InputDate` date DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inputs`
--

INSERT INTO `inputs` (`AdminId`, `BookId`, `InputDate`, `Quantity`) VALUES
('A001', 22, '2019-10-31', 5),
('A001', 23, '2019-10-31', 3),
('A001', 24, '2019-10-31', 8),
('A001', 25, '2019-10-31', 10),
('A001', 26, '2019-10-31', 10),
('A001', 27, '2019-10-31', 4),
('A001', 28, '2019-10-31', 2),
('A001', 29, '2019-10-31', 3),
('A001', 30, '2019-10-31', 1),
('A001', 31, '2019-10-31', 3),
('A001', 32, '2019-10-31', 10),
('A002', 32, '2019-11-10', 10),
('A003', 29, '2019-11-10', 20),
('A001', 33, '2019-11-11', 10),
('A001', 35, '0000-00-00', 1),
('A001', 36, '0000-00-00', 2),
('A001', 36, '2019-11-28', -1);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `Nim` varchar(9) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `ContactNumber` varchar(13) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Password` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL DEFAULT 'photo/user/default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`Nim`, `Name`, `Address`, `ContactNumber`, `Email`, `Password`, `Image`) VALUES
('123180004', 'Willian Kelvin Nata', 'jl jantil', '082166645571', 'williankvn2008@gmail.com', '46f94c8de14fb36680850768ff1b7f2a', 'photo/user/default.svg'),
('123180008', 'Ayola Ika Arihta', 'Gendeng GK IV/832', '085760537732', 'ayola.ika@gmail.com', '55895829ba7abc094969df06b47092e4', 'photo/user/default.svg'),
('123180013', 'Indahyani', 'jalan mawar OwO', '082346428429', 'indahyaniomel@gmail.com', '77e7035a6d79f67d90abed7d38a951e2', 'photo/user/123180013.png'),
('123180022', 'Fiqri Upakarti Adiningsih', 'Gg Pucung 2', '08979040400', 'fiqriu@gmail.com', '9c18a459e04f93ded0565542533f86fd', 'photo/user/default.svg'),
('123180030', 'Tri Meri Anzelin Panjaitan', 'Jl. Tambak Bayan V No.4CC', '082294102862', 'trimeri06@gmail.com', '2a8f47a40f69d3673b59f77f1339b6de', 'photo/user/default.svg'),
('123180039', 'Iffatuz Zahra', 'jl TB iv', '085364655010', 'iffazahra09@gmail.com', 'd8e423a9d5eb97da9e2d58cd57b92808', 'photo/user/default.svg'),
('123180049', 'Nicholas Nanda Sapahayo', 'Jl Kesana Kemari dan tertawa', '081380801234', 'nicholasnanda12@gmail.com', 'e00b29d5b34c3f78df09d45921c9ec47', 'photo/user/default.svg'),
('123180055', 'Haris Nasrulloh', 'Jl Tambakbayan IV no 8', '081330784476', 'harisnasrullah211@gmail.com', '6eea9b7ef19179a06954edd0f6c05ceb', 'photo/user/default.svg'),
('123180056', 'Anjar Harimurti', 'Jalan Seturan Baru Blok E3 No.34', '081958000659', 'acool90@yahoo.co.id', '4f0b36a34946153c358f8b243428a1eb', 'photo/user/default.svg'),
('123180067', 'iskhak muhamad', 'turus, boyolali', '085625432115', 'iskhakhaha@gmail.com', 'a4617f82d03e18520ce9c87e253355a1', 'photo/user/default.svg'),
('123180100', 'Daru', 'babarsari', '09812344566', 'daru@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'photo/user/default.svg'),
('123180101', 'Siti Mardhiyah', 'Karang Talun Wukirsari Imogiri Bantul DI Yogyakart', '08966861901', 'sitimardhiyah777@gmail.com', '1054c93d6f2d84792ad8275e12f0fb07', 'photo/user/default.svg'),
('123180103', 'Yuyum', 'Jl amula rahayu no 4', '0813123123123', 'anu1@gmail.com', '4297f44b13955235245b2497399d7a93', 'photo/user/default.svg'),
('123190004', 'Isnaini Khairiah', 'tb 2 no 20', '085355004495', 'isnainikhaira@gmail.com', '4637d214b17372f18ce56b3729ff2acb', 'photo/user/default.svg');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `PublisherId` varchar(4) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(80) DEFAULT NULL,
  `ContactNumber` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`PublisherId`, `Name`, `Address`, `ContactNumber`) VALUES
('P001', 'Penerbit Informatika', 'Pasar Buku Palasari 82 Bandung', '022-7217813'),
('P002', 'Penerbit Erlangga', 'Jl H.Baping Raya no 100,Jakarta', '021-112543'),
('P003', 'Elex Media Komputindo', 'Jl Palmerah Barat 29-37,Jakarta', '021-535510222'),
('P004', 'Arrow Books', '20 Vauxhall Bridge Road, London', '+44 57910864'),
('P005', 'Simon & Schuster', 'Rockefeller Center 1230 Avenue of the Americas,New York,USA', '+18004566798'),
('P006', 'McGrawHill', 'USA', '-');

-- --------------------------------------------------------

--
-- Table structure for table `returnings`
--

CREATE TABLE `returnings` (
  `ReturningId` int(11) NOT NULL,
  `TransactionId` int(11) NOT NULL,
  `MemberReturningDate` date DEFAULT NULL,
  `DeterminedReturningDate` date DEFAULT NULL,
  `Fine` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnings`
--

INSERT INTO `returnings` (`ReturningId`, `TransactionId`, `MemberReturningDate`, `DeterminedReturningDate`, `Fine`) VALUES
(1, 1, '2019-11-01', '2019-11-07', 0),
(2, 2, '2019-11-01', '2019-11-08', 0),
(3, 3, '2019-11-01', '2019-11-08', 0),
(4, 4, '2019-11-01', '2019-11-08', 0),
(5, 5, '2019-11-01', '2019-11-08', 0),
(7, 9, '2019-11-02', '2019-11-08', 0),
(8, 11, '2019-11-05', '2019-11-09', 0),
(9, 12, '2019-11-03', '2019-11-10', 0),
(10, 15, '2019-11-05', '2019-11-12', 0),
(11, 14, '2019-11-05', '2019-11-12', 0),
(12, 17, '2019-11-07', '2019-11-14', 0),
(13, 19, '2019-11-07', '2019-11-14', 0),
(14, 16, '2019-11-07', '2019-11-14', 35000),
(15, 22, '2019-11-11', '2019-11-16', 0),
(16, 23, NULL, '2019-11-16', 0),
(17, 24, '2019-11-11', '2019-11-18', 0),
(18, 25, '0000-00-00', '2019-12-02', 0),
(19, 28, NULL, '2019-12-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `Nim` varchar(9) NOT NULL,
  `BorrowingDate` date NOT NULL,
  `Status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TransactionId`, `BookId`, `Nim`, `BorrowingDate`, `Status`) VALUES
(1, 32, '123180013', '2019-11-01', 'returned'),
(2, 27, '123180013', '2019-11-01', 'returned'),
(3, 28, '123180049', '2019-11-01', 'returned'),
(4, 32, '123180049', '2019-11-01', 'returned'),
(5, 31, '123180013', '2019-11-01', 'returned'),
(7, 27, '123180013', '2019-10-30', 'canceled'),
(8, 32, '123180039', '2019-11-01', 'canceled'),
(9, 22, '123180039', '2019-11-01', 'returned'),
(10, 22, '123180013', '2019-11-01', 'canceled'),
(11, 30, '123180013', '2019-11-02', 'returned'),
(12, 32, '123180004', '2019-11-03', 'returned'),
(14, 23, '123180056', '2019-11-05', 'returned'),
(15, 27, '123180056', '2019-11-05', 'returned'),
(16, 27, '123190004', '2019-11-07', 'returned'),
(17, 24, '123190004', '2019-11-07', 'returned'),
(18, 27, '123180013', '2019-11-07', 'canceled'),
(19, 32, '123180013', '2019-11-07', 'returned'),
(20, 24, '123180013', '2019-11-07', 'canceled'),
(21, 31, '123180013', '2019-11-09', 'canceled'),
(22, 32, '123180013', '2019-11-09', 'returned'),
(23, 24, '123180013', '2019-11-09', 'borrowed'),
(24, 27, '123180013', '2019-11-11', 'returned'),
(25, 23, '123180103', '2019-11-25', 'returned'),
(26, 31, '123180013', '2019-11-25', 'canceled'),
(27, 22, '123180013', '2019-11-28', 'booked'),
(28, 32, '123180100', '2019-11-28', 'borrowed');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `BookId` int(11) DEFAULT NULL,
  `Nim` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`BookId`, `Nim`) VALUES
(22, '123180013'),
(22, '123180100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AdminId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookId`),
  ADD KEY `fk_c_id` (`CategoryId`),
  ADD KEY `fk_p_id` (`PublisherId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `inputs`
--
ALTER TABLE `inputs`
  ADD KEY `fk_admin_id` (`AdminId`),
  ADD KEY `fk_books_id` (`BookId`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`Nim`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`PublisherId`);

--
-- Indexes for table `returnings`
--
ALTER TABLE `returnings`
  ADD PRIMARY KEY (`ReturningId`),
  ADD KEY `fk_t_id` (`TransactionId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionId`),
  ADD KEY `fk_m_id` (`Nim`),
  ADD KEY `fk_b_id` (`BookId`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD KEY `fk_book_id` (`BookId`),
  ADD KEY `fk_member_id` (`Nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `returnings`
--
ALTER TABLE `returnings`
  MODIFY `ReturningId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TransactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_c_id` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`CategoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_p_id` FOREIGN KEY (`PublisherId`) REFERENCES `publishers` (`PublisherId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inputs`
--
ALTER TABLE `inputs`
  ADD CONSTRAINT `fk_admin_id` FOREIGN KEY (`AdminId`) REFERENCES `admins` (`AdminId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_books_id` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `returnings`
--
ALTER TABLE `returnings`
  ADD CONSTRAINT `fk_t_id` FOREIGN KEY (`TransactionId`) REFERENCES `transactions` (`TransactionId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_b_id` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_m_id` FOREIGN KEY (`Nim`) REFERENCES `members` (`Nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `fk_book_id` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_member_id` FOREIGN KEY (`Nim`) REFERENCES `members` (`Nim`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
