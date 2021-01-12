<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["kitapNo"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM kitap WHERE kitapNo = $guncellenecek");
    $sorgu2 = mysqli_query($baglanti, "SELECT *, CONCAT(yazarAdi, ' ', yazarSoyadi) AS adSoyad FROM yazar ORDER BY adSoyad");
    $sorgu3 = mysqli_query($baglanti, "SELECT * FROM yayinevi ORDER BY yayineviAdi");
    $sorgu4 = mysqli_query($baglanti, "SELECT * FROM kategori ORDER BY kategoriAdi");
    $satir = mysqli_fetch_assoc($sorgu)
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

        
    header{
       background-color:#f2ae72;
       color:white;
       text-align: center;
       padding: 5px;
       padding-left:0;
    }
        h1 {
                text-align: center;
            }
      
      form {
            text-align: center;

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
            <input type="text" name="kitapAdi" placeholder="Kitap adı giriniz..."><input type="submit" value="Ara">
</form>
</nav>

<main role="main" class="container">
<!-- KODLAR -->
<br><br><h1>Kitap Güncelle</h1><br>
<form action="guncellendi_kitap.php" method="post">
        Kitap Adı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="kitapAdi" value="<?php echo $satir["kitapAdi"] ;?>"><br><br>
        Yazar Adı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="yazarNo"   id="yazarNo">
                <option value="Seçim Yapılmadı"> Seçiniz</option>
                <?php while($satir2 = mysqli_fetch_assoc($sorgu2)){?>
                <option value="<?php echo $satir2['yazarNo']; ?>"><?php echo $satir2["adSoyad"]; ?></option>
                <?php } ?>
            </select><br><br>
        Yayınevi Adı:&nbsp;&nbsp;<select name="yayineviNo"   id="yayineviNo">
                <option value="Seçim Yapılmadı"> Seçiniz</option>
                <?php while($satir3 = mysqli_fetch_assoc($sorgu3)){?>
                <option value="<?php echo $satir3['yayineviNo']; ?>"><?php echo $satir3["yayineviAdi"]; ?></option>
                <?php } ?>
            </select><br><br>
        Kategori Adı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="kategoriNo"   id="kategoriNo">
                <option value="Seçim Yapılmadı"> Seçiniz</option>
                <?php while($satir4 = mysqli_fetch_assoc($sorgu4)){?>
                <option value="<?php echo $satir4['kategoriNo']; ?>"><?php echo $satir4["kategoriAdi"]; ?></option>
                <?php } ?>
            </select><br><br>
        Kitap Basım Yılı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="kitapBasimYili" value="<?php echo $satir["kitapBasimYili"] ;?>"><br><br>
        Kitap Basım Yeri:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="kitapBasimYer" value="<?php echo $satir["kitapBasimYer"] ;?>"><br><br>
        Kitap ISBN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="kitapISBN" value="<?php echo $satir["kitapISBN"] ;?>"><br><br>
        Kitap Açıklama:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="kitapAciklama" value="<?php echo $satir["kitapAciklama"] ;?>"><br><br>
        Kitap Sayfa Sayısı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="kitapSayfaSayisi" value="<?php echo $satir["kitapSayfaSayisi"] ;?>"><br><br>
        Kitap Adet:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="kitapAdet" value="<?php echo $satir["kitapAdet"] ;?>"><br><br>
        <input type="hidden" value="<?php echo $satir["kitapNo"] ;?>" name="kitapNo">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Kaydı Güncelle">
</form><br><br>
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p><a href="kitap.php"><<<---Listeye geri dön</a></p>
<!-- KODLAR -->   
</main>
<script src="jquery-3.4.1.slim.min.js"></script>
      <script src="bootstrap.bundle.min.js"></script>

</body></html>