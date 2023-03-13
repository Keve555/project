<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Autómárkák</title>
</head>
<body class="">
  <div class="d-flex flex-column min-vh-100">
    <div class="topnav w-100">
        <a class="active" href="index.php?prog=fooldal.php">Főoldal</a>
        <a href="index.php?prog=modellek.php">Modellek</a>
        <a href="index.php?prog=rekordok.php">Rekordok</a>
        <a href="index.php?prog=tortenelem.php">Történelem</a>
        <a href="index.php?prog=lista.php">Lista</a>
      </div>
    <div class="container">
    <?php
        extract($_GET);
        if(isset($prog))
            include $prog;
        else
          include "fooldal.php";
      ?>
    </div>
    <footer class="mt-auto">
      
      <table class="w-100" class="egyedtab">
        <tr class="egyedtab">
          <td class="egyedtab">
            <p id="bal"><a href="index.php?prog=hirlevel.php">Feliratkozás a hírlevélre</a></p>
          </td>
          <td class="egyedtab">,
            <p><a href="index.php?prog=forras.php">Forrás</a></p>
            <p><a href="index.php?prog=adatvedelem.php">Adatvédelmi irányelvek</a></p>
          </td>
        </tr>
      </table>

    </footer>
    </div>
  <script src="getData.js"></script>
</body>
</html>
