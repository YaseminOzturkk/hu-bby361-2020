-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Ara 2020, 19:43:50
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yaseminozturk_02`
--

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `hangiyayinevikackitap`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `hangiyayinevikackitap` (
`Yayinevi` varchar(100)
,`KitapSayisi` bigint(21)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategoriNo` smallint(6) NOT NULL COMMENT 'Kategori tablosunun anahtar alanı',
  `kategoriAdi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kategorinin adı',
  `kategoriKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kategorinin veritabanına kayıt tarihi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategoriNo`, `kategoriAdi`, `kategoriKayitTarih`) VALUES
(1, 'Edebiyat-Roman', '2020-12-01 16:45:56'),
(2, 'Edebiyat-Şiir', '2020-12-01 16:45:56'),
(3, 'Edebiyat-Deneme', '2020-12-01 16:45:56'),
(4, 'Polisiye-Roman', '2020-12-01 16:45:56'),
(5, 'Kişisel Gelişim', '2020-12-01 16:45:56'),
(6, 'Bilim', '2020-12-01 16:45:56'),
(7, 'Araştırma-Tarih', '2020-12-01 16:45:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `kitapNo` smallint(6) NOT NULL COMMENT 'Kitap tablosunun anahtar alanı',
  `kitapAdi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın tam adı',
  `yazarNo` smallint(6) NOT NULL COMMENT 'Kitap yazarının VT''deki no',
  `yayineviNo` smallint(6) NOT NULL COMMENT 'Kitap yayınevinin VT''deki no',
  `kategoriNo` smallint(6) NOT NULL COMMENT 'Kitabın kategorisinin VT''deki no',
  `kitapBasimYili` year(4) DEFAULT NULL COMMENT 'Kitabın basıldığı yıl',
  `kitapBasimYer` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın basıldığı yer',
  `kitapISBN` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın standart numarası/barkod no',
  `kitapSayfaSayisi` int(11) NOT NULL COMMENT 'Kitabın toplam sayfa sayısı',
  `kitapAdet` int(11) NOT NULL COMMENT 'Bu kitaptan kaç kopya olduğu bilgisi',
  `kitapKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın veritabanına kaydedildiği tarih'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapNo`, `kitapAdi`, `yazarNo`, `yayineviNo`, `kategoriNo`, `kitapBasimYili`, `kitapBasimYer`, `kitapISBN`, `kitapSayfaSayisi`, `kitapAdet`, `kitapKayitTarih`) VALUES
(1, 'Süt Lekesi', 1, 13, 1, 2018, 'İstanbul', '9786053114772', 264, 3, '2020-12-01 13:54:24'),
(2, 'Hayvan Çiftliği', 2, 9, 1, 0000, 'İstanbul', '9789750719387', 152, 2, '2020-12-01 13:54:24'),
(3, 'Kirpinin Zarafeti', 3, 1, 1, 2014, 'İstanbul', '9786054927821', 303, 3, '2020-12-01 14:06:00'),
(4, 'Serenad', 4, 2, 1, 2016, 'İstanbul', '9786050900286', 481, 2, '2020-12-01 14:06:00'),
(5, 'Tutku Otobüsü', 5, 3, 1, 2013, 'İstanbul', '9789751414502', 271, 1, '2020-12-01 14:06:00'),
(6, 'Piraye\'de Nazım Olmak', 6, 4, 1, 2019, 'İstanbul', '9786052050453', 208, 3, '2020-12-01 14:06:00'),
(7, 'İstanbul Hatırası', 7, 5, 4, 2010, 'İstanbul', '9789752897458', 565, 3, '2020-12-01 14:08:51'),
(8, 'Gurur ve Önyargı', 8, 6, 1, 2006, 'İstanbul', '9789754587029', 423, 3, '2020-12-01 14:08:51'),
(9, 'Dava', 9, 7, 1, 2016, 'İstanbul', '9786059127110', 271, 2, '2020-12-01 14:10:26'),
(10, 'Yaşıyoruz Sessizce', 10, 1, 2, 2017, 'İstanbul', '9786059658904', 84, 2, '2020-12-01 14:10:26'),
(11, 'Sisifos Söyleni', 11, 9, 3, 1997, 'İstanbul', '9789750726231', 160, 2, '2020-12-01 14:12:00'),
(12, 'Atatürk ve Demokratik Türkiye', 12, 11, 7, 2020, 'İstanbul', '9786057635747', 240, 1, '2020-12-01 14:12:00'),
(13, 'Bir Ömür Nasıl Yaşanır?', 13, 11, 5, 2019, 'İstanbul', '9789752430990', 288, 3, '2020-12-01 14:13:23'),
(14, 'Türlerin Kökeni', 14, 12, 6, 2019, 'İstanbul', '9786053115878', 502, 1, '2020-12-01 14:13:23'),
(15, 'Kendisinin Efendisi Olmayan Hiç Kimse Özgür Değildir', 15, 13, 1, 2019, 'İstanbul', '9786053115878', 88, 4, '2020-12-01 14:14:27');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kitapyayınevi`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kitapyayınevi` (
`KitapAdı` varchar(200)
,`yayineviAdi` varchar(100)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kütüphanekatologu`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kütüphanekatologu` (
`kitapAdi` varchar(200)
,`yayineviAdi` varchar(100)
,`AdSoyad` varchar(101)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayınevi`
--

CREATE TABLE `yayınevi` (
  `yayineviNo` int(11) NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `yayineviAdi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin tam adı',
  `yayineviAdres` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi web sitesi adresi',
  `yayineviKayıtTarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `yayineviEposta` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin e-posta adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yayınevi`
--

INSERT INTO `yayınevi` (`yayineviNo`, `yayineviAdi`, `yayineviAdres`, `yayineviKayıtTarih`, `yayineviEposta`) VALUES
(1, 'Kırmızı Kedi', 'https://www.kirmizikedi.com/', '2020-12-01 14:44:05', 'info@kirmizikedi.com'),
(2, 'Doğan Kitap', 'https://www.dogankitap.com.tr/anasayfa', '2020-12-01 14:44:05', 'satis@dogankitap.com.tr'),
(3, 'Remzi Kitabevi', 'http://www.remzi.com.tr/anasayfa', '2020-12-01 14:44:05', 'post@remzi.com.tr'),
(4, 'Dokuz Yayınları', 'https://dokuzyayinlari.com/', '2020-12-01 14:44:05', 'bilgi@dokuzyayinlari.com'),
(5, 'Everest Yayınları', 'https://www.everestyayinlari.com/', '2020-12-01 14:44:05', 'info@everestyayinlari.com'),
(6, 'Türkiye İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr/', '2020-12-01 14:44:05', ''),
(7, 'Panama Yayıncılık', 'https://www.panamayayincilik.com/', '2020-12-01 14:44:05', 'info@panamayayincilik.com'),
(9, 'Can Yayınları ', 'https://canyayinlari.com/', '2020-12-01 14:44:05', 'yayinevi@canyayinlari.com'),
(11, 'Kronik Kitap', 'https://kronikkitap.com/', '2020-12-01 14:44:05', 'kronik@kronikkitap.com'),
(12, 'Alfa Yayıncılık', 'https://www.alfakitap.com/', '2020-12-01 14:44:05', 'kitap@alfakitap.com'),
(13, 'Destek Yayınları', 'https://destekdukkan.com/anasayfa', '2020-12-01 14:44:05', 'info@destekyayinlari.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarNo` smallint(6) NOT NULL COMMENT 'Yazar tablosunun anahtar alanı',
  `yazarAdi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın adı',
  `yazarSoyadi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın soyadı',
  `yazarKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yazarın veritabanına kayıt tarihi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarNo`, `yazarAdi`, `yazarSoyadi`, `yazarKayitTarih`) VALUES
(1, 'Esra ', 'Ezmeci', '2020-12-01 10:31:23'),
(2, 'George ', 'Orwell', '2020-12-01 10:31:23'),
(3, 'Muriel', 'Barbery', '2020-12-01 10:31:23'),
(4, 'Zülfü ', 'Livaneli', '2020-12-01 10:31:23'),
(5, 'John', 'Steinbeck', '2020-12-01 10:31:23'),
(6, 'Nazan ', 'Arısoy', '2020-12-01 10:31:23'),
(7, 'Ahmet', 'Ümit', '2020-12-01 10:31:23'),
(8, 'Jane ', 'Austen', '2020-12-01 10:31:23'),
(9, 'Franz ', 'Kafka', '2020-12-01 10:31:23'),
(10, 'Şükrü ', 'Erbaş', '2020-12-01 11:58:05'),
(11, 'Albert ', 'Camus', '2020-12-01 11:58:05'),
(12, 'Halil ', 'İnalcık', '2020-12-01 12:06:20'),
(13, 'İlber ', 'Ortaylı', '2020-12-01 12:06:20'),
(14, 'Charles ', 'Darwin', '2020-12-01 12:18:57'),
(15, 'Aslı ', 'Perker', '2020-12-01 12:18:57');

-- --------------------------------------------------------

--
-- Görünüm yapısı `hangiyayinevikackitap`
--
DROP TABLE IF EXISTS `hangiyayinevikackitap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hangiyayinevikackitap`  AS SELECT `kitapyayınevi`.`yayineviAdi` AS `Yayinevi`, count(0) AS `KitapSayisi` FROM `kitapyayınevi` WHERE 1 GROUP BY `kitapyayınevi`.`yayineviAdi` ORDER BY count(0) ASC ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `kitapyayınevi`
--
DROP TABLE IF EXISTS `kitapyayınevi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kitapyayınevi`  AS SELECT `ka`.`kitapAdi` AS `KitapAdı`, `ye`.`yayineviAdi` AS `yayineviAdi` FROM (`kitap` `ka` join `yayınevi` `ye`) WHERE `ka`.`yayineviNo` = `ye`.`yayineviNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `kütüphanekatologu`
--
DROP TABLE IF EXISTS `kütüphanekatologu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kütüphanekatologu`  AS SELECT `ka`.`kitapAdi` AS `kitapAdi`, `ye`.`yayineviAdi` AS `yayineviAdi`, concat(`ya`.`yazarAdi`,' ',`ya`.`yazarSoyadi`) AS `AdSoyad` FROM ((`kitap` `ka` join `yayınevi` `ye`) join `yazar` `ya`) WHERE `ka`.`yayineviNo` = `ye`.`yayineviNo` AND `ka`.`yazarNo` = `ya`.`yazarNo` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategoriNo`);

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`kitapNo`);

--
-- Tablo için indeksler `yayınevi`
--
ALTER TABLE `yayınevi`
  ADD PRIMARY KEY (`yayineviNo`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategoriNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kategori tablosunun anahtar alanı', AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `kitapNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun anahtar alanı', AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `yayınevi`
--
ALTER TABLE `yayınevi`
  MODIFY `yayineviNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi tablosunun anahtar alanı', AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazar tablosunun anahtar alanı', AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
