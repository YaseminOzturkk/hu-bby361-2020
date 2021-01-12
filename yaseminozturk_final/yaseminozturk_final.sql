-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3309
-- Üretim Zamanı: 12 Oca 2021, 19:47:18
-- Sunucu sürümü: 8.0.22
-- PHP Sürümü: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yaseminozturk_final`
--
CREATE DATABASE IF NOT EXISTS `yaseminozturk_final` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `yaseminozturk_final`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategoriNo` smallint NOT NULL COMMENT 'Kategori tablosunun anahtar alanı',
  `kategoriKayitTarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Kategorinin kayıt tarihi',
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
(7, '2020-12-31 14:19:45', 'Araştırma-Tarih'),
(15, '2021-01-03 06:13:04', 'Felsefe'),
(22, '2021-01-04 21:22:40', 'Sosyoloji'),
(31, '2021-01-05 17:00:32', 'Çizgi Roman'),
(38, '2021-01-06 12:59:05', 'Edebiyat-Türk Mektup'),
(39, '2021-01-07 12:04:10', 'Psikoloji');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `kitapNo` smallint NOT NULL COMMENT 'Kitap tablosunun anahtar alanı',
  `kitapKayitTarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Kitabın veri tabanına kaydedildiği tarih',
  `kitapAdi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın tam adı',
  `yazarNo` smallint NOT NULL COMMENT 'Kitap yazarının VT''deki no',
  `yayineviNo` smallint NOT NULL COMMENT 'Kitabın yayınevinin VT''deki no',
  `kategoriNo` smallint NOT NULL COMMENT 'Kitap türünün VT''deki no',
  `kitapBasimYili` year DEFAULT NULL COMMENT 'Kitabın basıldığı yıl',
  `kitapBasimYer` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın basıldığı yer',
  `kitapISBN` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın standart no',
  `kitapAciklama` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'Kitabın kısa bir özeti',
  `kitapSayfaSayisi` int NOT NULL COMMENT 'Kitabın kaç sayfa olduğu bilgisi',
  `kitapAdet` tinyint NOT NULL COMMENT 'Kitaptan kaç adet bulunduğu bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapNo`, `kitapKayitTarih`, `kitapAdi`, `yazarNo`, `yayineviNo`, `kategoriNo`, `kitapBasimYili`, `kitapBasimYer`, `kitapISBN`, `kitapAciklama`, `kitapSayfaSayisi`, `kitapAdet`) VALUES
(1, '2020-12-31 15:02:01', 'Süt Lekesi', 1, 11, 1, 2018, 'İstanbul', '9786053114772', 'İnsanın içsesi olmaya aday bir roman. Kimseye söylemediklerimize, yalnızken kendimize bile fısıldayamadıklarımıza, aklımızdan bile geçiremediklerimize ışık tutuyor.', 264, 2),
(2, '2020-12-31 15:02:01', 'Hayvan Çiftliği', 2, 8, 1, 2019, 'İstanbul', '9789750719387', 'George Orwell’in, “Ters giden bir devrimin tarihidir,” dediği Hayvan Çiftliği, tazeliğini ve güncelliğini, yayınlandığı ilk günden bu yana yitirmeyen, uyarıcı bir peri masalı ve ölümsüz bir başyapıt.', 152, 2),
(3, '2020-12-31 15:02:01', 'Kirpinin Zarafeti', 3, 1, 1, 2014, 'İstanbul', '9786054927821', '\"Her şeyin, özellikle de hayata dair mutlak olguların ne kadar pamuk ipliğine bağlı olduğunu gösteren nefis bir kitap.\"', 303, 3),
(4, '2020-12-31 15:02:01', 'Serenad', 4, 2, 1, 2016, 'İstanbul', '9786050900286', 'Okurunu sımsıkı kavrayan Serenad\'da Zülfü Livaneli\'nin romancılığının en temel niteliklerinden biri yine başrolde: İç içe geçmiş, kaynaşmış kişisel ve toplumsal tarihlerin kusursuz Dengesi.', 481, 2),
(5, '2020-12-31 15:02:01', 'Tutku Otobüsü', 5, 3, 1, 2013, 'İstanbul', '9789751414502', NULL, 271, 1),
(6, '2020-12-31 15:02:01', 'Piraye de Nazım Olmak', 6, 4, 1, 2019, 'İstanbul', '9786052050453', 'Hep anlattınız, hep yazdınız, iftira ettiniz, kendinizce yargıladınız ama bana hiç sormadınız. Nazım’dan, eşinden, dostundan beni dinlediniz. Bende Nazım olmak ne demek hiç anlamadınız. Şimdi sıra bende. Sessiz çığlıklarımın yankıları yüreklerinizi titretecek...\r\nSusmak yok artık. Haykırıyorum.\r\nSeni hudutsuzca seviyorum Nazım...”', 208, 3),
(7, '2020-12-31 15:02:01', 'İstanbul Hatırası', 7, 5, 4, 2010, 'İstanbul', '9789752897458', 'Ahmet Ümit İstanbul Hatırası’nda artık tehdit altında olan bu güzelliği merkeze alıyor ve yüksek gerilimli polisiyesiyle okuru hipnotize ederken aktardığı tarihi bilgilerle İstanbulluluk bilincini de canlandırmaya çalışıyor.', 565, 3),
(8, '2020-12-31 15:02:01', 'Gurur ve Önyargı', 8, 6, 1, 2006, 'İstanbul', '9789754587029', NULL, 423, 3),
(9, '2020-12-31 15:02:01', 'Dava', 9, 7, 1, 2016, 'İstanbul', '9786059127110', NULL, 271, 2),
(10, '2020-12-31 15:02:01', 'Yaşıyoruz Sessizce', 10, 1, 2, 2017, 'İstanbul', '9786059658904', 'Bu kitap, bizim sagu, mersiye, ağıt geleneğimize, göç edeni de burada tutan, yaşatan yepyeni bir özellik getiriyor. Üç kadim kavram, yaşamın üç büyük izleği, aşk, yalnızlık ve ölüm, şiirden şiire iç içe geçerek birbirinin kapısını çalıyor. Sonra üçü birlikte gelip hepimizin hayatına doluyor. Yaşıyoruz Sessizce, aşkın, emeğin ve dünyanın ölümle bir daha yüceltildiği bir varoluş simyası.', 84, 2),
(11, '2020-12-31 15:02:01', 'Sisifos Söyleni', 11, 8, 3, 1997, 'İstanbul', '9789750726231', 'Sisifos Söyleni, hayata karşı bakış açınızı değiştirirken yaşam boyu süren çabanızdan da çok daha fazla haz almanızı sağlayacak. Tüm güçlüklere meydan okuma gücünü içinizde hissetmenizi sağlayacak bir kitap.', 160, 2),
(12, '2020-12-31 15:02:01', 'Atatürk ve Demokratik Türkiye', 12, 9, 7, 2020, 'İstanbul', '9786057635747', 'Cumhuriyet Türkiyesinin hangi evrelerden geçerek, ne tür bir düşünsel birikimin üzerine kurgulandığı sorunu, bu kitabın ana eksenini oluşturuyor.', 240, 1),
(13, '2020-12-31 15:02:01', 'Bir Ömür Nasıl Yaşanır?', 13, 9, 5, 2019, 'İstanbul', '9789752430990', 'İlk gençlik yıllarından beri bilgiyi ve çalışmayı hayat felsefesi haline getiren Prof. Dr. İlber Ortaylı, Bir Ömür Nasıl Yaşanır? adlı kitabında kendi yaşam tecrübesinden yola çıkarak okurlarına eşsiz bir yaşam rehberi sunuyor. ', 288, 3),
(14, '2020-12-31 15:02:01', 'Türlerin Kökeni', 14, 10, 6, 2019, 'İstanbul', '9786053115878', 'İlk basımı 1859’da Londra’da yayımlanan Türlerin Kökeni, dünyamızın bilim ve kültür tarihini değiştiren kitapların başında gelir. Darwin’in 20 yıllık araştırması sonucu ortaya çıkan ve evrimin mekanizmalarını açıklayan Türlerin Kökeni sadece biyoloji bilimlerinin değil, aynı zamanda tüm doğa bilimlerine ve edebiyattan felsefeye tüm insanlık kültürüne yeni bir bakış kazandırarak, insanın dünyayı anlama macerasında bir dönüm noktası oldu.', 502, 1),
(31, '2020-12-31 16:42:19', 'Kendisinin Efendisi Olmayan Hiç Kimse Özgür Değildir', 18, 11, 6, 2019, 'İstanbul', '9786053115878', 'Frigyalı bir köle olarak doğduğu hayatı, stoacı bir filozof olarak tamamlayan Epiktetos\'un sadelik, akıl, güven, seçme özgürlüğü, an\'ı yaşama ve huzur üzerine inşa ettiği basit ama köklü felsefesi, günümüz insanının anlam arayışına iki bin yıl öncesinden ışık tutmaya devam ediyor hâlâ....', 88, 4),
(35, '2021-01-05 10:22:43', 'Rezonans Kanunu', 68, 60, 5, 2016, 'Ankara', '9786054232291', 'Eğer istediğimiz sonuçları elde etmeye çalışıyorsak; düşüncelerimizi, duygularımızı ve inançlarımızı gözlemleyerek yönlendirmeye başlamalıyız. Çünkü hissettiğimiz ya da düşündüğümüz her şey, bir rezonans alanı oluşturur ve biz isteklerimizi yönetebiliriz. ', 303, 1),
(38, '2021-01-06 09:36:15', 'Suç ve Ceza', 72, 62, 7, 2005, 'Ankara', '9789753387121', 'İletişim ve bilgi edinme imkanlarınının son hızla arttığı bir çağda, gençlerimizi ve çocuklarımızı kitapların dünyasıyla buluşturmak eskisi kadar kolay olmasa gerek. Bu anlamda, Milli Eğitim Bakanlığı\'nın ilköğretim ve ortaöğretime yönelik 100 Temel Eser seçimi; kısacası kültür dünyamıza katkıda bulunacak herkese yararlı olacak niteliktedir.\r\n', 351, 1),
(40, '2021-01-06 13:01:08', 'Leylim Leylim', 76, 6, 38, 2016, 'İstanbul', '9786053609308', 'Ahmed Arif\'in Leylâ Erbil\'e gönderdiği mektuplardan oluşan bu kitap, edebiyat tarihçilerimize kuşkusuz önemli bilgiler sunmayı vadediyor. Yazıldıkları dönemin entelektüel ve yayın ortamını, Ahmed Arif\'in sürgün günlerini, yaşadığı siyasi baskıyı, içsel dünyasını ve en çok da aşkını tüm çıplaklığıyla ortaya koyuyor.', 240, 4),
(43, '2021-01-06 13:15:43', 'Korku', 77, 63, 1, 2018, 'İstanbul', '9786052073513', NULL, 69, 5),
(45, '2021-01-06 15:12:58', 'Bir Kadının Hayatından Yirmi Dört Saat', 77, 63, 1, 2017, 'İstanbul', '9786059489683', '\r\n', 65, 2),
(48, '2021-01-06 18:31:03', 'Ölüm Çığlığı', 78, 10, 4, 2016, 'İstanbul', '9789754053036', NULL, 235, 2),
(50, '2021-01-07 13:01:35', 'Yaban', 79, 64, 1, 2004, 'İstanbul', '9789754700060', 'Yaban, söz konusu dönemde köylerin ve köylülerin durumunu ele alarak kurtuluş mücadelesine farklı bir perspektiften bakmaya olanak sağlıyor. Yazar bununla birlikte, yarattığı farklı statüdeki karakterlerle aydın-köylü çatışmasını da başarılı bir şekilde kurguya ekliyor.', 214, 4),
(51, '2021-01-07 14:28:07', 'Aklından Bir Sayı Tut', 80, 65, 1, 2011, 'İstanbul', '9786054188710', 'Sizi sizden bile iyi tanıyan bir katilin peşinizde olduğunu bilseniz, kaçmak için ne yapabilirsiniz? Polisiye türündeki eserleriyle okuyucuyu her defasında soluksuz bırakmayı başaran John Verdon’dan etkileyici bir yapıt daha! Aklında Bir Sayı Tut, bir seri katil ile onun peşine düşen bir dedektifin heyecan dolu kovalamacasını konu ediniyor.', 475, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yayineviNo` smallint NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `yayineviKayitTarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Yayınevinin VT kayıt tarihi',
  `yayineviAdi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin tam adı',
  `yayineviURL` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin web sitesinin adresi',
  `yayineviEposta` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevi e-postası'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`yayineviNo`, `yayineviKayitTarih`, `yayineviAdi`, `yayineviURL`, `yayineviEposta`) VALUES
(1, '2020-12-31 15:23:05', 'Kırmızı Kedi', 'https://www.kirmizikedi.com/', 'info@kirmizikedi.com'),
(2, '2020-12-31 15:23:05', 'Doğan Kitap', 'https://www.dogankitap.com.tr/', 'satis@dogankitap.com.tr'),
(3, '2020-12-31 15:23:05', 'Remzi Kitabevi', 'http://www.remzi.com.tr/anasayfa', 'post@remzi.com.tr'),
(4, '2020-12-31 15:23:05', 'Dokuz Yayınları', 'https://dokuzyayinlari.com', 'bilgi@dokuzyayinlari.com'),
(5, '2020-12-31 15:23:05', 'Everest Yayınları', 'https://www.everestyayinlari.com', 'info@everestyayinlari.com'),
(6, '2020-12-31 15:23:05', 'Türkiye İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr', ' bilgi@iskultur.com.tr'),
(7, '2020-12-31 15:23:05', 'Panama Yayıncılık', 'https://www.panamayayincilik.com', 'info@panamayayincilik.com'),
(8, '2020-12-31 15:23:05', 'Can Yayınları', 'https://canyayinlari.com', 'yayinevi@canyayinlari.com'),
(9, '2020-12-31 15:23:05', 'Kronik Kitap', 'https://kronikkitap.com', 'kronik@kronikkitap.com'),
(10, '2020-12-31 15:23:05', 'Alfa Yayıncılık', 'https://www.alfakitap.com', 'kitap@alfakitap.com'),
(11, '2020-12-31 15:23:05', 'Destek Yayınları', 'https://destekdukkan.com/anasayfa', 'info@destekyayinlari.com'),
(60, '2021-01-05 10:21:00', 'Elips ', 'https://elipskitap.com.tr/', 'elipskitap@elipskitap.com.tr'),
(62, '2021-01-06 09:34:57', 'Akçağ Basım', 'http://www.akcag.com.tr/', 'akcag@akcag.com.tr'),
(63, '2021-01-06 13:12:52', 'Karbon Kitap', 'https://karbonkitaplar.com/', 'iletisim@karbonkitaplar.com'),
(64, '2021-01-07 12:57:55', 'İletişim Yayınları', 'https://iletisim.com.tr/', 'iletisim@iletisim.com.tr'),
(65, '2021-01-07 13:59:11', 'Koridor Yayıncılık', 'https://www.koridoryayincilik.com.tr/', 'info@koridoryayincilik.com.tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarNo` smallint NOT NULL COMMENT 'Yazar tablosunun anahtar alanı',
  `yazarKayitTarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Yazarın VT kayıt tarihi',
  `yazarAdi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın adı',
  `yazarSoyadi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın soyadı',
  `yazarAdres` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Yazarın adresi'
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
(6, '2020-12-31 15:28:09', 'Nazan', 'Arısoy', 'https://www.dr.com.tr/yazar/Nazan-Arisoy/s=314254'),
(7, '2020-12-31 15:28:09', 'Ahmet', 'Ümit ', 'https://www.dr.com.tr/yazar/Ahmet-umit/s=218019'),
(11, '2020-12-31 15:35:52', 'Jane', 'Austen', 'https://www.dr.com.tr/yazar/Jane-Austen/s=171885'),
(12, '2020-12-31 15:35:52', 'Franz', 'Kafka', 'https://www.dr.com.tr/yazar/Franz-Kafka/s=173416'),
(13, '2020-12-31 15:35:52', 'Şükrü', 'Erbaş', 'https://www.dr.com.tr/yazar/sukru-Erbas/s=217983'),
(14, '2020-12-31 15:35:52', 'Albert', 'Camus', 'https://www.dr.com.tr/Yazar/albert-camus/s=260259'),
(15, '2020-12-31 15:35:52', 'Halil', 'İnalcık', 'https://www.dr.com.tr/yazar/Halil-%C4%B0nalcik/s=171952'),
(16, '2020-12-31 15:35:52', 'İlber', 'Ortaylı', 'https://www.dr.com.tr/yazar/%C4%B0lber-Ortayli/s=94404'),
(17, '2020-12-31 15:35:52', 'Charles', 'Darwin', 'https://www.dr.com.tr/yazar/Charles-Darwin/s=262570'),
(18, '2020-12-31 15:35:52', 'Aslı', 'Perker', 'https://www.dr.com.tr/yazar/Asli-Perker/s=37862'),
(68, '2021-01-05 10:19:38', 'Pierre', 'Franckh', 'https://www.dr.com.tr/yazar/Pierre-Franckh/s=4905'),
(72, '2021-01-05 16:24:32', 'Fyodor Mihayloviç', 'Dostoyevski', 'https://www.dr.com.tr/yazar/Fyodor-Mihaylovic-Dostoyevski/s=7112'),
(76, '2021-01-06 12:57:44', 'Ahmed ', 'Arif', 'https://www.dr.com.tr/Yazar/ahmed-arif/s=3833'),
(77, '2021-01-06 13:05:01', 'Stefan', 'Zweig', 'https://www.dr.com.tr/yazar/Stefan-Zweig/s=125486'),
(78, '2021-01-06 18:14:03', 'Agatha', 'Christie', 'https://www.dr.com.tr/Yazar/agatha-christie/s=173415'),
(79, '2021-01-07 12:55:13', 'Yakup Kadri', 'Karaosmanoğlu', 'https://www.dr.com.tr/Yazar/yakup-kadri-karaosmanoglu/s=149326'),
(80, '2021-01-07 13:38:32', 'John ', 'Verdon', 'https://www.dr.com.tr/Yazar/john-verdon/s=36229');

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
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
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
  MODIFY `kategoriNo` smallint NOT NULL AUTO_INCREMENT COMMENT 'Kategori tablosunun anahtar alanı', AUTO_INCREMENT=43;

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `kitapNo` smallint NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun anahtar alanı', AUTO_INCREMENT=54;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yayineviNo` smallint NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi tablosunun anahtar alanı', AUTO_INCREMENT=67;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarNo` smallint NOT NULL AUTO_INCREMENT COMMENT 'Yazar tablosunun anahtar alanı', AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
