-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Waktu pembuatan: 16 Bulan Mei 2020 pada 02.24
-- Versi server: 10.4.12-MariaDB-1:10.4.12+maria~bionic
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmaps_flask`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_friend_location`
--

CREATE TABLE `my_friend_location` (
  `id` int(255) NOT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lon` varchar(255) DEFAULT NULL,
  `my_friend` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `my_friend_location`
--

INSERT INTO `my_friend_location` (`id`, `lat`, `lon`, `my_friend`) VALUES
(1, '-6.228651', '107.170501', 'Dege Vaga'),
(2, '-6.218441', '107.160427', 'Bagus Amir'),
(3, '-6.212915', '107.159674', 'Novan'),
(4, '-6.194912', '107.114273', 'Dimas'),
(5, '-6.187847', '107.125268', 'Hariy'),
(6, '-6.184575', '107.125176', 'Ibnu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `my_friend_location`
--
ALTER TABLE `my_friend_location`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `my_friend_location`
--
ALTER TABLE `my_friend_location`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
