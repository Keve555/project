<?php
require_once "db.php";
extract($_GET);
$sql="select nev, orszag, szekhely, alapitasiev from markak order by orszag asc, nev asc";
$stmt=$db->query($sql);
echo json_encode($stmt->fetchAll());
?>