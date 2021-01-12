-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3307
-- Üretim Zamanı: 31 Ara 2020, 17:58:31
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yaseminozturk_01`
--
CREATE DATABASE IF NOT EXISTS `yaseminozturk_01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `yaseminozturk_01`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategoriNo` smallint(6) NOT NULL COMMENT 'Kategori tablosunun anahtar alanı',
  `kategoriKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kategorinin kayıt tarihi',
  `kategoriAdi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın kategorisinin bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategoriNo`, `kategoriKayitTarih`, `kategoriAdi`) VALUES
(1, '2020-12-31 14:19:45', 'Edebiyat-Roman'),
(2, '2020-12-31 14:19:45', 'Edebiyat-Şiir'),
(3, '2020-12-31 14:19:45', 'Edebiyat-Deneme'),
(4, '2020-12-31 14:19:45', 'Polisiye-Roman'),
(5, '2020-12-31 14:19:45', 'Kişisel Gelişim'),
(6, '2020-12-31 14:19:45', 'Bilim'),
(7, '2020-12-31 14:19:45', 'Araştırma-Tarih');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `kitapNo` smallint(6) NOT NULL COMMENT 'Kitap tablosunun anahtar alanı',
  `kitapKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın veri tabanına kaydedildiği tarih',
  `kitapAdi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın tam adı',
  `yazarNo` smallint(6) NOT NULL COMMENT 'Kitap yazarının VT''deki no',
  `yayineviNo` smallint(6) NOT NULL COMMENT 'Kitabın yayınevinin VT''deki no',
  `kategoriNo` smallint(6) NOT NULL COMMENT 'Kitap türünün VT''deki no',
  `kitapBasimYili` year(4) DEFAULT NULL COMMENT 'Kitabın basıldığı yıl',
  `kitapBasimYer` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın basıldığı yer',
  `kitapISBN` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın standart no',
  `kitapSayfaSayisi` int(11) NOT NULL COMMENT 'Kitabın kaç sayfa olduğu bilgisi',
  `kitapAdet` tinyint(4) NOT NULL COMMENT 'Kitaptan kaç adet bulunduğu bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapNo`, `kitapKayitTarih`, `kitapAdi`, `yazarNo`, `yayineviNo`, `kategoriNo`, `kitapBasimYili`, `kitapBasimYer`, `kitapISBN`, `kitapSayfaSayisi`, `kitapAdet`) VALUES
(1, '2020-12-31 15:02:01', 'Süt Lekesi', 1, 11, 1, 2018, 'İstanbul', '9786053114772', 264, 3),
(2, '2020-12-31 15:02:01', 'Hayvan Çiftliği', 2, 8, 1, NULL, 'İstanbul', '9789750719387', 152, 2),
(3, '2020-12-31 15:02:01', 'Kirpinin Zarafeti', 3, 1, 1, 2014, 'İstanbul', '9786054927821', 303, 3),
(4, '2020-12-31 15:02:01', 'Serenad', 4, 2, 1, 2016, 'İstanbul', '9786050900286', 481, 2),
(5, '2020-12-31 15:02:01', 'Tutku Otobüsü', 5, 3, 1, 2013, 'İstanbul', '9789751414502', 271, 1),
(6, '2020-12-31 15:02:01', 'Piraye de Nazım Olmak', 6, 4, 1, 2019, 'İstanbul', '9786052050453', 208, 3),
(7, '2020-12-31 15:02:01', 'İstanbul Hatırası', 7, 5, 4, 2010, 'İstanbul', '9789752897458', 565, 3),
(8, '2020-12-31 15:02:01', 'Gurur ve Önyargı', 8, 6, 1, 2006, 'İstanbul', '9789754587029', 423, 3),
(9, '2020-12-31 15:02:01', 'Dava', 9, 7, 1, 2016, 'İstanbul', '9786059127110', 271, 2),
(10, '2020-12-31 15:02:01', 'Yaşıyoruz Sessizce', 10, 1, 2, 2017, 'İstanbul', '9786059658904', 84, 2),
(11, '2020-12-31 15:02:01', 'Sisifos Söyleni', 11, 8, 3, 1997, 'İstanbul', '9789750726231', 160, 2),
(12, '2020-12-31 15:02:01', 'Atatürk ve Demokratik Türkiye', 12, 9, 7, 2020, 'İstanbul', '9786057635747', 240, 1),
(13, '2020-12-31 15:02:01', 'Bir Ömür Nasıl Yaşanır?', 13, 9, 5, 2019, 'İstanbul', '9789752430990', 288, 3),
(14, '2020-12-31 15:02:01', 'Türlerin Kökeni', 14, 10, 6, 2019, 'İstanbul', '9786053115878', 502, 1),
(31, '2020-12-31 16:42:19', 'Kendisinin Efendisi Olmayan Hiç Kimse Özgür Değildir', 18, 11, 6, 2019, 'İstanbul', '9786053115878', 88, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayınevi`
--

CREATE TABLE `yayınevi` (
  `yayineviNo` smallint(6) NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `yayineviKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevinin VT kayıt tarihi',
  `yayineviAdi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin tam adı',
  `yayineviURL` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin web sitesinin adresi',
  `yayineviEposta` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevi e-postası'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yayınevi`
--

INSERT INTO `yayınevi` (`yayineviNo`, `yayineviKayitTarih`, `yayineviAdi`, `yayineviURL`, `yayineviEposta`) VALUES
(1, '2020-12-31 15:23:05', 'Kırmızı Kedi', 'https://www.kirmizikedi.com', 'info@kirmizikedi.com'),
(2, '2020-12-31 15:23:05', 'Doğan Kitap', 'https://www.dogankitap.com.tr/anasayfa', 'satis@dogankitap.com.tr'),
(3, '2020-12-31 15:23:05', 'Remzi Kitabevi', 'http://www.remzi.com.tr/anasayfa', 'post@remzi.com.tr'),
(4, '2020-12-31 15:23:05', 'Dokuz Yayınları', 'https://dokuzyayinlari.com', 'bilgi@dokuzyayinlari.com'),
(5, '2020-12-31 15:23:05', 'Everest Yayınları', 'https://www.everestyayinlari.com', 'info@everestyayinlari.com'),
(6, '2020-12-31 15:23:05', 'Türkiye İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr', ''),
(7, '2020-12-31 15:23:05', 'Panama Yayıncılık', 'https://www.panamayayincilik.com', 'info@panamayayincilik.com'),
(8, '2020-12-31 15:23:05', 'Can Yayınları', 'https://canyayinlari.com', 'yayinevi@canyayinlari.com'),
(9, '2020-12-31 15:23:05', 'Kronik Kitap', 'https://kronikkitap.com', 'kronik@kronikkitap.com'),
(10, '2020-12-31 15:23:05', 'Alfa Yayıncılık', 'https://www.alfakitap.com', 'kitap@alfakitap.com'),
(11, '2020-12-31 15:23:05', 'Destek Yayınları', 'https://destekdukkan.com/anasayfa', 'info@destekyayinlari.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarNo` smallint(6) NOT NULL COMMENT 'Yazar tablosunun anahtar alanı',
  `yazarKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yazarın VT kayıt tarihi',
  `yazarAdi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın adı',
  `yazarSoyadi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın soyadı',
  `yazarAdres` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Yazarın adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarNo`, `yazarKayitTarih`, `yazarAdi`, `yazarSoyadi`, `yazarAdres`) VALUES
(1, '2020-12-31 15:26:25', 'Esra', 'Ezmeci', 'https://www.dr.com.tr/yazar/Esra-Ezmeci/s=10071064'),
(2, '2020-12-31 15:26:25', 'George', 'Orwell', 'https://www.dr.com.tr/yazar/George-Orwell/s=253774'),
(3, '2020-12-31 15:26:25', 'Muriel', 'Barbery', 'https://www.dr.com.tr/Yazar/muriel-barbery/s=270450'),
(4, '2020-12-31 15:26:25', 'Zülfü', 'Livaneli', 'https://www.dr.com.tr/yazar/Zulfu-Livaneli/s=4218'),
(5, '2020-12-31 15:28:09', 'John', 'Steinbeck', 'https://www.dr.com.tr/yazar/John-Steinbeck/s=171913'),
(6, '2020-12-31 15:28:09', 'Nazan', 'Arısoy', NULL),
(7, '2020-12-31 15:28:09', 'Ahmet', 'Ümit ', 'https://www.dr.com.tr/yazar/Ahmet-umit/s=218019'),
(11, '2020-12-31 15:35:52', 'Jane', 'Austen', 'https://www.dr.com.tr/yazar/Jane-Austen/s=171885'),
(12, '2020-12-31 15:35:52', 'Franz', 'Kafka', NULL),
(13, '2020-12-31 15:35:52', 'Şükrü', 'Erbaş', 'https://www.dr.com.tr/yazar/sukru-Erbas/s=217983'),
(14, '2020-12-31 15:35:52', 'Albert', 'Camus', 'https://www.dr.com.tr/Yazar/albert-camus/s=260259'),
(15, '2020-12-31 15:35:52', 'Halil', 'İnalcık', 'https://www.dr.com.tr/yazar/Halil-%C4%B0nalcik/s=171952'),
(16, '2020-12-31 15:35:52', 'İlber', 'Ortaylı', 'https://www.dr.com.tr/yazar/%C4%B0lber-Ortayli/s=94404'),
(17, '2020-12-31 15:35:52', 'Charles', 'Darwin', 'https://www.dr.com.tr/yazar/Charles-Darwin/s=262570'),
(18, '2020-12-31 15:35:52', 'Aslı', 'Perker', '');

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
  MODIFY `kategoriNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kategori tablosunun anahtar alanı', AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `kitapNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun anahtar alanı', AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `yayınevi`
--
ALTER TABLE `yayınevi`
  MODIFY `yayineviNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi tablosunun anahtar alanı', AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazar tablosunun anahtar alanı', AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
