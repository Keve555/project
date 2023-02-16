<?php
require_once "db.php";
extract($_GET);
$sql="select * from modelltipusok where modellid={$id}";
$stmt=$db->query($sql);
echo json_encode($stmt->fetchAll());
?>