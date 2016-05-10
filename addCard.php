<?php
session_start();

$idPlayer = $_SESSION['idPlayer'];
$type = $_POST['type'];
$cardNumber = $_POST['cardNumber'];
$month = $_POST['month'];
$year = $_POST['year'];
$cvv2 = $_POST['cvv2'];
$name = $_POST['name'];

$db = new PDO('mysql:host=localhost:3307;dbname=games', "root", "");
$sql = $db->prepare("INSERT INTO creditcard (type, cardNumber, expireMonth, expireYear, cvv2, name, idPlayer) VALUES (:type, :cardNumber, :month, :year, :cvv2, :name, :idPlayer)");
$sql->bindParam(':type', $type);
$sql->bindParam(':cardNumber', $cardNumber);
$sql->bindParam(':month', $month);
$sql->bindParam(':year', $year);
$sql->bindParam(':cvv2', $cvv2);
$sql->bindParam(':name', $name);
$sql->bindParam(':idPlayer', $idPlayer);
$sql->execute();
$db = null;

header('Location: player.php');