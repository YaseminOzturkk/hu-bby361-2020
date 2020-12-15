<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sonuc = mysqli_query($baglanti, "SELECT * FROM kitap");
?>

<html>
    <head>
        <title>MySQL-PHP Listeleme</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Kitap Listesi</h1>
        <h3>Veritabanına kayıtlı toplam <?php echo mysqli_num_rows($sonuc); ?> adet kitap yer almaktadır.</h3>
        <p> Kitapların listesi aşağıda yer almaktadır:</p>
        <?php
            echo("<ul>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sonuc)){
                echo("<br>"."<li>".$satir["kitapAdi"]."<br>");
            }
            echo("</ul>");
        ?>
         <input class="btn btn-primary" type="button" onclick="window.location.href='index.php'" value="Anasayfa dön"/>
    </body>
</html>