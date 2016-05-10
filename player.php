<?php
session_start();

if (isset($_SESSION['namePlayer']) == false) {
	$_SESSION['namePlayer'] = $_POST['namePlayer'];
	$name = $_POST['namePlayer'];
}
else 
{
	$name = $_SESSION['namePlayer'];
}


$db = new PDO('mysql:host=localhost:3307;dbname=games', "root", "");

$sqlPlayer = "SELECT * FROM player WHERE name = '$name'";
foreach ($db->query($sqlPlayer) as $res)
{
	$_SESSION['idPlayer'] = $res['idPlayer'];
}
$idPlayer = $_SESSION['idPlayer'];
$sqlCreditCard = "SELECT * FROM creditcard WHERE idPlayer = '$idPlayer'";
$sqlGames = "SELECT command.idPayment, payment.paymentAmount, payment.paymentDate, dlc.DLCName, creditcard.cardNumber FROM command 
	JOIN payment ON command.idPayment = payment.idPayment 
	JOIN dlc ON command.idDLC = dlc.IdDLC
	JOIN creditcard on creditcard.idCreditCard = payment.idCreditCard
	WHERE command.idPlayer = '$idPlayer'";

?>

<!DOCTYPE html>
<html>
<head>
	<title>CECS 323</title>
	<link rel="stylesheet" type="text/css" href="style/player.css" />
</head>
<body>
	<header>
			<nav>
					<div>
							<a href="player.php"><span>Home</span></a>
					</div>
					<div>
							<a href="cards.php"><span>Add Credit Cards</span></a>
					</div>
					<div>
							<a href="games.php"><span>Buy Games</span></a>
					</div>
					<div>
							<a href="index.php"><span>Log Out</span></a>
					</div>
			</nav>
	</header>

	<br />
	<table>
	  <caption>Welcome</caption>
	  <thead>
	    <tr>
	      <th scope="col">Id</th>
	      <th scope="col">UserName</th>
	      <th scope="col">Email Adress</th>
	      <th scope="col"></th>
	    </tr>
	  </thead>
	  <tbody>
	  	<?php 
			foreach ($db->query($sqlPlayer) as $res)
			{
				echo '<tr> 
						<td scope="row" data-label="Id">' . $res['idPlayer'] . '</td>
	      				<td data-label="UserName">' . $res['name'] . '</td>
	      				<td data-label="Email Adress">' . $res['email'] . '</td>
	      				<td><form method="post" action="editPlayer.php" /><input type="hidden" name="playerId" value="'.$idPlayer.'"/><input type="submit" value="Edit"/></form></td>
	    			</tr>';
			}
	  	?>
	  </tbody>
	</table>

	<br />
	<table>
	  <caption>Your Credit Cards</caption>
	  <thead>
	    <tr>
	      <th scope="col">Type</th>
	      <th scope="col">Credit Card Numbers</th>
	      <th scope="col">Cvv2</th>
	      <th scope="col">Name Owner</th>
	      <th scope="col">Expire Date</th>
	      <th scope="col"></th>
	    </tr>
	  </thead>
	  <tbody>
	  	<?php 
			foreach ($db->query($sqlCreditCard) as $res)
			{
				echo '<tr> 
						<td scope="row" data-label="Type">' . $res['type'] . '</td>
	      				<td data-label="Credit Card Numbers">' . $res['cardNumber'] . '</td>
	      				<td data-label="Cvv2">' . $res['cvv2'] . '</td>
	      				<td data-label="Name">' . $res['name'] . '</td>
	      				<td data-label="Expire Date">' . $res['expireMonth'] . "/" . $res['expireYear']  . '</td>
						<td><form method="post" action="deleteCard.php" /><input type="hidden" name="cardId" value="'.$res['idCreditCard'].'"/><input type="submit" value="Delete"/></form></td>
	    			</tr>';
			}
	  	?>
	  </tbody>
	</table>

	<br />
	<table>
	  <caption>Your games</caption>
	  <thead>
	    <tr>
	      <th scope="col">Id Payment</th>
	      <th scope="col">Game</th>
	      <th scope="col">Payment Amount</th>
	      <th scope="col">Credit Card Used</th>
	      <th scope="col">Payment Date</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<?php 
			foreach ($db->query($sqlGames) as $res)
			{
				echo '<tr> 
						<td scope="row" data-label="Id Payment">' . $res['idPayment'] . '</td>
	      				<td data-label="Game">' . $res['DLCName'] . '</td>
	      				<td data-label="Payment Amount">' . $res['paymentAmount'] . '</td>
	      				<td data-label="Payment Amount">' . $res['cardNumber'] . '</td>
	      				<td data-label="Payment Date">' . $res['paymentDate'] . '</td>
	    			</tr>';
			}
	  	?>
	  </tbody>
	</table>
</body>
</html>
