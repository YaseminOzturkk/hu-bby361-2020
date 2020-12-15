<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    $kitapAdi = mysqli_real_escape_string($baglanti, $_GET['kitapAdi']);
    echo $kitapAdi;
  
    
    /* Veritabanı sorgulama */
    $sonuc = mysqli_query($baglanti, "SELECT *, DATE_FORMAT(kitapKayitTarih, '%H:%i:%s - %d.%m.%Y') AS tarih FROM kitap WHERE kitapAdi LIKE '%$kitapAdi%'  ORDER BY kitapNo DESC");
?>

<html>
    <head>
        <title>MySQL-PHP Listeleme</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Arama Sonuçları</h1>
        <h3>Veritabanında yaptığınız arama ile ilgili toplam <?php echo mysqli_num_rows($sonuc); ?> adet kitap yer almaktadır.</h3>
        <p>Kitapların listesi aşağıda yer almaktadır:</p>
        <?php
            echo("<ol>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sonuc)){
                 echo("<br>"."<li>".$satir["kitapAdi"]."</strong> || ".$satir["tarih"]."</li>"."<br>");
            }
            echo("</ol>");
        ?>
        <input class="btn btn-primary" type="button" onclick="window.location.href='index.php'" value="Anasayfa dön"/>
    </body>
</html>