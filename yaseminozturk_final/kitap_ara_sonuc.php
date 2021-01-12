<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    $kitapAdi = mysqli_real_escape_string($baglanti, $_GET['kitapAdi']);
    
  
    
    /* Veritabanı sorgulama */
    $sonuc = mysqli_query($baglanti, "SELECT *, DATE_FORMAT(kitapKayitTarih, '%H:%i:%s - %d.%m.%Y') AS tarih FROM kitap WHERE kitapAdi LIKE '%$kitapAdi%'  ORDER BY kitapNo DESC");
   
?>
<!DOCTYPE html>
<html lang="tr"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>KATALOG</title>

    <!-- Bootstrap core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
        
        input[type=submit], input[type=reset] {
                background-color: #f2ae72;
                color: white;
                cursor: pointer;

            }
        
        
        li {
            text-align: center;
        }
        
        p1 {
            margin-left: 740px;
        }
        
        h1 {
            text-align: center;
            }
            
        h3 {
            margin-left: 150px;
            }
        p2 {
            margin-left: 150px;
            }
            
        p {
            margin-left: 1200px;
            font-size: 20px;
            } 
        footer{
           background-color:#d96459;
           color:white;
           text-align: center;
           padding: 10px;
           padding-left:0;
        }

        
        header{
           background-color:#f2ae72;
           color:white;
           text-align: center;
           padding: 5px;
           padding-left:0;
        }
            
    </style>
    <!-- Custom styles for this template -->
    <link href="navbar-top.css" rel="stylesheet">
  </head>
  <body>

      
    <header class="üstbilgi">
        <img src="library.png" alt="logo" style="width:100px;">
        <h1 class="ustbaslik">HOŞGELDİNİZ!</h1>
        <p3 class="ad"><b>Yasemin Öztürk</b></p3> 
  
    </header>
      
    <!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <img src="library.png" alt="Logo" style="width:40px;">
  <a class="navbar-brand" href="index.php">&numsp;Anasayfa&numsp;&numsp;&numsp;</a>
   <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="kitap.php">&numsp;&numsp;&numsp;Kitap İşlemleri&numsp;&numsp;&numsp;</a>
    </li>
	<li class="nav-item">
      <a class="nav-link" href="yazar.php">Yazar İşlemleri&numsp;&numsp;&numsp;</a>
    </li>
	<li class="nav-item">
      <a class="nav-link" href="yayinevi.php">Yayınevi İşlemleri&numsp;&numsp;&numsp;</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="kategori.php">Kategori İşlemleri&numsp;&numsp;&numsp;</a>
    </li>
	<li class="nav-item">
      <a class="nav-link" href="iletisim.php">İletişim</a>
    </li>
  </ul>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <form action="kitap_ara_sonuc.php" method="get">
            <input type="text" name="kitapAdi" placeholder="Kitap adı giriniz..."><input type="submit"  value="Ara">
</form>
</nav>
<html>
    <head>
        <title>MySQL-PHP Listeleme</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <br><br><h1>Arama Sonuçları</h1><br>
        <p1><img src="image.png" style="width:60px;"></p1><br><br>
        <i><h3>Veritabanında yaptığınız arama ile ilgili toplam <?php echo mysqli_num_rows($sonuc); ?> adet kitap yer almaktadır.</h3></i><br>
        <p2>Kitapların listesi aşağıda yer almaktadır:</p2><br><br>
        <?php
        echo("<table border=1 align=center width=80%>");
            echo("<tr>");
                    echo("<td><b>Kitap Adı</b></td>");
                    echo("<td><b>Kayıt Tarihi || Güncelleme Tarihi</b></td>");
            echo("</tr>");
        /* Sorgu sonuçlarının yazdırılması */
        while($satir = mysqli_fetch_assoc($sonuc)){
            echo("<tr>");
                    echo("<td>".$satir["kitapAdi"]."</td>");
                    echo("<td>".$satir["kitapKayitTarih"]."</td>");
            echo("</tr>");

            }
            echo("</table>");
        ?>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><footer class="altbilgi">
        <h5 class="ad">Bu proje 2020-2021 Bahar Dönemi BBY361-Veri Tabanı Yönetim Sistemleri dersi kapsamında Yasemin Öztürk tarafından yapılmıştır.</h5>
    </footer></body></html>