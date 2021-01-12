<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT kitap.*, CONCAT(yazar.yazarAdi,' ',yazar.yazarSoyadi) AS adSoyad, yayinevi.yayineviAdi, kategori.kategoriAdi FROM kitap, yazar, yayinevi, kategori WHERE kitap.yazarNo=yazar.yazarNo AND kitap.yayineviNo=yayinevi.yayineviNo AND kitap.kategoriNo=kategori.kategoriNo");
    
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

        h1 {
                text-align: center;
            }
            
        p {
                margin-left: 1200px;
                font-size: 20px;
            } 

			
			td 
			{
				border: 2px solid black;
                padding:4px;
			}
			
			tr:first-child
			{
				font-weight:bolder;
			}
			tr:nth-child(2n+3){background-color:#fbefcc;}
       
        
        
    header{
       background-color:#f2ae72;
       color:white;
       text-align: center;
       padding: 5px;
       padding-left:0;
    }
        
    select {
            border: none;
            border-radius: 6px;
            background-color: bisque;
            text-decoration-color: aqua;
        }
      
      input[type=submit], input[type=reset] {
            background-color: #f2ae72;
            color: white;
            cursor: pointer;
        }
          
       footer{
           background-color:#d96459;
           color:white;
           text-align: center;
           padding: 10px;
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
        <p1 class="ad"><b>Yasemin Öztürk</b></p1> 
  
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
            <input type="text" name="kitapAdi" placeholder="Kitap adı giriniz...">><input type="submit" value="Ara">
</form>
</nav>

    <head>
        <title>Kitap Listesi</title>
        <meta charset="utf-8"/>
      
    </head>
    

        <br><br><h1>Kitap Listesi</h1><br><br>
        <p><a href="kitap_ekle.php">Yeni bir kitap ekle!</a></p><br>
        <?php
            echo("<table border=1 align=center width=80%>");
                echo("<tr>");
                    echo("<td><b>Kitap No</b></td>");
                    echo("<td><b>Kayıt Tarihi</b></td>");
                    echo("<td><b>Kitap Adı</b></td>");
                    echo("<td><b>Yazar</b></td>");
                    echo("<td><b>Yayınevi</b></td>");
                    echo("<td><b>Basım Yılı</b></td>");
                    echo("<td><b>Basım Yeri</b></td>");
                    echo("<td><b>ISBN</b></td>"); 
                    echo("<td><b>Kategori</b></td>");
                    echo("<td><b>Kitap Açıklama</b></td>");
                    echo("<td><b>Sayfa Sayısı</b></td>");
                    echo("<td><b>Adet Bilgisi</b></td>");
                    echo("<td><b>Güncelle</b></td>");
                    echo("<td><b>Sil</b></td>");
                echo("</tr>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sorgu)){
                echo("<tr>");
                echo("<td>".$satir["kitapNo"]."</td>");
                echo("<td>".$satir["kitapKayitTarih"]."</td>");
                echo("<td>".$satir["kitapAdi"]."</td>");  
                echo("<td>".$satir["adSoyad"]."</td>");
                echo("<td>".$satir["yayineviAdi"]."</td>");
                echo("<td>".$satir["kitapBasimYili"]."</td>");
                echo("<td>".$satir["kitapBasimYer"]."</td>");
                echo("<td>".$satir["kitapISBN"]."</td>");
                echo("<td>".$satir["kategoriAdi"]."</td>");
                echo("<td>".$satir["kitapAciklama"]."</td>");
                echo("<td>".$satir["kitapSayfaSayisi"]."</td>");
                echo("<td>".$satir["kitapAdet"]."</td>");
                echo("<td><a href='guncelle_kitap.php?kitapNo=".$satir["kitapNo"]."'>Güncelle</a></td>");
                echo("<td><a href='sil_kitap.php?kitapNo=".$satir["kitapNo"]."'>Sil</a></td>");
                echo("</tr>");
            }
            echo("</table>");
        ?>
        
    <br><br><br><br><footer class="altbilgi">
        <h5 class="ad">Bu proje 2020-2021 Bahar Dönemi BBY361-Veri Tabanı Yönetim Sistemleri dersi kapsamında Yasemin Öztürk tarafından yapılmıştır.</h5>
    </footer></body></html>
      
