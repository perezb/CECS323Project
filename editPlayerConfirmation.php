<?php

session_start();

$idPlayer = $_SESSION['idPlayer'];
$namePlayer = $_POST['name'];
$emailPlayer = $_POST['email'];

$db = new PDO('mysql:host=localhost:3307;dbname=games', "root", "");
$sql = $db->prepare("UPDATE player SET name=:namePlayer, email=:emailPlayer WHERE idPlayer=:idPlayer");

$sql->bindParam(':namePlayer', $namePlayer);
$sql->bindParam(':emailPlayer', $emailPlayer);
$sql->bindParam(':idPlayer', $idPlayer);
$sql->execute();

$db = null;
header('Location: player.php');

