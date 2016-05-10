<?php

$idGame = $_POST['idGame'];
$idPlayer = $_POST['idPlayer'];
$idCard = $_POST['idCard'];
$date = date("d/m/Y");


$db = new PDO('mysql:host=localhost:3307;dbname=games', "root", "");
$sql = "SELECT * FROM dlc WHERE idDLC = $idGame";
foreach ($db->query($sql) as $res)
{
	$price = $res['DLCPrice'];
}
$sql = $db->prepare("INSERT INTO payment (idPlayer, paymentAmount, paymentDate, idCreditCard) VALUES (:idPlayer, :price, :date, :idCard)");
$sql->bindParam(':idPlayer', $idPlayer);
$sql->bindParam(':price', $price);
$sql->bindParam(':date', $date);
$sql->bindParam(':idCard', $idCard);
$sql->execute();	

$idPayment = $db->lastInsertId();

$sql = $db->prepare("INSERT INTO command (idPlayer, idDLC, idPayment) VALUES (:idPlayer, :idGame, :idPayment)");
$sql->bindParam(':idPlayer', $idPlayer);
$sql->bindParam(':idGame', $idGame);
$sql->bindParam(':idPayment', $idPayment);
$sql->execute();
$db = null;

header('Location: player.php');
?>