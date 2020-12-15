<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sonuc = mysqli_query($baglanti, "SELECT * FROM yayinevi");
?>

<html>
    <head>
        <title>MySQL-PHP Listeleme</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Mesaj Listesi</h1>
        <h3>Veritabanına kayıtlı toplam <?php echo mysqli_num_rows($sonuc); ?> adet mesaj yer almaktadır.</h3>
        <p> Mesajların listesi aşağıda yer almaktadır:</p>
        <?php
            echo("<ul>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sonuc)){
                echo("<br>"."<li>".$satir["yayineviAdi"]."<br>");
            }
            echo("</ul>");
        ?>
         <input class="btn btn-primary" type="button" onclick="window.location.href='index.php'" value="Anasayfa dön"/>
    </body>
</html>