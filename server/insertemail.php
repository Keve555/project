<?php
require_once "db.php";
extract($_POST);
$sql="INSERT INTO felhasznalok VALUES (NULL,'{$email}')";
$stmt=$db->exec($sql);
echo json_encode(["msg"=>"Köszönjük, hogy feliratkozott a hírlevélre!"]);
?>