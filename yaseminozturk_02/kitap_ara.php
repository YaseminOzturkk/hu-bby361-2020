<html>
    <head>
        <title>MySQL-PHP Listeleme</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Kitap Ara</h1>
        <h2>Aranacak kitabın tam adını giriniz:</h2>
        <form action="kitap_ara_sonuc.php" method="get">
            Arama: <input type="text" name="kitapAdi"><br><br>
        <input type="submit" value="Ara">
</form>
       <input class="btn btn-primary" type="button" onclick="window.location.href='index.php'" value="Anasayfa dön"/>

    </body>
</html>