<?php
require_once "db.php";
extract($_GET);
$sql="select id, nev, kategoria from modellek order by nev asc";
$stmt=$db->query($sql);
echo json_encode($stmt->fetchAll());
?>