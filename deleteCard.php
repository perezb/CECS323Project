<?php

$cardId = $_POST['cardId'];

$db = new PDO('mysql:host=localhost:3307;dbname=games', "root", "");
$sql = $db->prepare("DELETE FROM creditcard WHERE idCreditCard=:cardId");

$sql->bindParam(':cardId', $cardId);
$sql->execute();

$db = null;

header('Location: player.php');

?>