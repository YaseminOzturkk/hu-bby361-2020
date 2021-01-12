<?php
    /* Veritabanı bağlantı bilgileri */
    $sunucu = "localhost:3309";
    $kullanici = "root";
    $sifre = "14532020";
    $veritabani = "yaseminozturk_01";
    $port = 3309;

    /* Veritabanına bağlantı */
    $baglanti = mysqli_connect($sunucu, $kullanici, $sifre, $veritabani, 3309)
        or die("Veritabanına bağlantı gerçekleştirilemedi..!");

    /* Türkçe karakterler için düzenleme */
    mysqli_set_charset($baglanti,"utf8");
?>