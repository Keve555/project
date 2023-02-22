<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="stiluss.css">
    <title>Autómárkák</title>
</head>
<body>
    <div class="topnav">
        <a class="active" href="index.php?prog=fooldal.php">Főoldal</a>
        <a href="index.php?prog=modellek.php">Modellek</a>
        <a href="index.php?prog=rekordok.php">Rekordok</a>
        <a href="index.php?prog=tortenelem.php">Történelem</a>
        <a href="index.php?prog=lista.php">Lista</a>
      </div>
      
    <?php
        extract($_GET);
        if(isset($prog))
            include $prog;
        else
          include "fooldal.php";
      ?>
  <script src="getData.js"></script>
</body>
</html>
