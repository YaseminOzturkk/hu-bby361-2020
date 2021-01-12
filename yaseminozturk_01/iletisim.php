<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yayinevi");
    
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
        
      h1 {
            text-align: center;
            }
        h3 {
            text-align: center;
        }

       p {
            margin-left: 850px;
            font-size: 20px;
        } 
      
        form {
            width: 500px;
            height: 360px;
            margin-left:auto; 
            margin-right:auto;
            border-color: #f2ae72;
            border: 15px;
        }
                    
        btnx {
            background: #f2ae72;
            border-color:#d96459
            border-radius: 12px solid #d96459;
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
  <formx action="kitap_ara_sonuc.php" method="get">
            <input type="text" name="kitapAdi" placeholder="Kitap adı giriniz..."><input type="submit"  value="Ara">
</formx>
</nav><br><br>
      
<div class="form">
<br><br><h3>İletişim Formu</h3><br>
<form action="/action_page.php" class="was-validated">
  <div class="form-group">
    <label for="uname">Adınız:</label>
    <input type="text" class="form-control" id="uname"  name="uname" required>
    <div class="valid-feedback">Valid.</div>
   
  </div>
  
  <div class="form-group">
    <label for="pwd">Soyadınız:</label>
    <input type="password" class="form-control" id="pwd"  name="pswd" required>
    <div class="valid-feedback">Valid.</div>
  </div>
  <div class="form-group">
    <label for="pwd">e-Posta Adresiniz:</label>
    <input type="password" class="form-control" id="pwd"  name="pswd" required>
    <div class="valid-feedback">Valid.</div>
  </div>
  <div class="form-group">
    <label for="pwd">Mesajınız:</label>
    <input type="password" class="form-control" id="pwd"  name="pswd" required>
    <div class="valid-feedback">Valid.</div>
  </div>
  <button type="submit" class="btnx">Gönder</button>
</form>
</div><br><br><br><br><br><br><br><br><br><br><br>
      
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="satir ilk">
<br><p1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="iletisim" src="email.png" style="width:60px;"><b><br></b><br></span></span></span><span style="font-size: 12px;"><span style="color: rgb(0, 51, 102);"><span style="color: rgb(0, 0, 0);"><span style="font-family: Verdana;"><span style="color: rgb(0, 0, 0);"><a href="mailto:yaseminozturk16@hacettepe.edu.tr">yaseminozturk16@hacettepe.edu.tr</a><br></span></span></span></span><span style="font-family: Verdana;"><span style="color: rgb(0, 0, 0);">&nbsp;</span></span></span><span style="font-size: 12px;"><span style="font-family: Verdana;"><span style="color: rgb(0, 0, 0);"><a href="mailto:yasminoztrk7@gmail.com">yasminoztrk7@gmail.com</a></span></span></p1>
</div>
    </div>
    <div class="col-sm-4">
      <div class="sutun son">
<br><p1>&nbsp;&nbsp;&nbsp;<img class="iletisim" src="telephone-call.png" style="width:60px;"><br><br>+90 555 5555</b></p1>
</div>
    </div>
    <div class="col-sm-4">
      <div class="satir son">
<p1></div></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="iletisim" src="location.png" style="width:60px;"><br><b></b>Hacettepe Üniversitesi, Beytepe Kampüsü, 06800 Beytepe/ Ankara</p1>
<div class="mapouter"><div class="gmap_canvas"><iframe width="300" height="150" id="gmap_canvas" src="https://maps.google.com/maps?q=hacettepe%20%C3%BCniversitesi%20beytepe%20kamp%C3%BCs%C3%BC&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.bitgeeks.net/embed-google-map/"></a></div><style>.mapouter{position:relative;text-align:left;}.gmap_canvas {overflow:hidden;background:none!important;}</style></div>
      
</div>
    </div>
  </div>
</div><br><br>

<footer class="altbilgi">
  <h5 class="ad">Bu proje 2020-2021 Bahar Dönemi BBY361-Veri Tabanı Yönetim Sistemleri dersi kapsamında Yasemin Öztürk tarafından yapılmıştır.</h5>
</footer>
</body></html>