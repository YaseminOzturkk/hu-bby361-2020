<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    /* Ekleme işlemi sorgusu */
    $kitapAdi = mysqli_real_escape_string($baglanti, $_POST['kitapAdi']);
    $kitapBasimYer = mysqli_real_escape_string($baglanti, $_POST['kitapBasimYer']);
    $kitapBasimYili = mysqli_real_escape_string($baglanti, $_POST['kitapBasimYili']);
    $kitapISBN = mysqli_real_escape_string($baglanti, $_POST['kitapISBN']);
    $sorgu = "INSERT INTO kitap (kitapAdi, kitapBasimYer, kitapBasimYili, kitapISBN)
            VALUES ('$kitapAdi', '$kitapBasimYer', '$kitapBasimYili', '$kitapISBN')";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Yeni kayıt Başarıyla Oluşturuldu.";
    } else {
        $islemSonuc = "Hata: " . $sorgu . "<br>" . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

?>
<html>
    <head>
        <title>MySQL-PHP Kitap Ekle</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Kitap Ekle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="kitap_ekle.php">Yeni bir kitap ekle!</a></p>
        <input class="btn btn-primary" type="button" onclick="window.location.href='index.php'" value="Anasayfa dön"/>

    </body>
</html>