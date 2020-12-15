<html>
    <head>
        <title>MySQL-PHP Kitap Ekle</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <h1>Kitap Ekle</h1>
        <form action="kitap_eklendi.php" method="post">
            Kitap Adı: <input type="text" name="kitapAdi"><br>
            BasımYeri: <input type="text" name="kitapBasimYer"><br>
            Basım Yılı <input type="text" name="kitapBasimYili"><br>
            ISBN: <input type="text" name="kitapISBN"><br><br>
            <input type="submit" value="Yeni Kayıt Ekle">
        </form>
         <button type="button" class="btn btn-link" onclick="window.location.href='index.php'" value="Anasayfa dön"/>
    </body>
</html>
