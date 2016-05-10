<?php
session_start();
$id = $_GET['gameId'];
$idPlayer = $_SESSION['idPlayer'];

$db = new PDO('mysql:host=localhost:3307;dbname=games', "root", "");

$sqlGame = "SELECT * FROM dlc WHERE idDLC = '$id'";

$sqlCard = "SELECT * FROM creditcard WHERE idPlayer = '$idPlayer'";
$cards = array();
foreach ($db->query($sqlCard) as $res)
{
	$cards[$res['idCreditCard']] = $res['cardNumber'];
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>CECS 323</title>
	<link rel="stylesheet" type="text/css" href="style/index.css" />
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
	<div class="login-card">
	    <h1>Payment Confirmation</h1><br>
	    <?php 
			foreach ($db->query($sqlGame) as $res)
			{
				echo "<center>You are going to buy " . $res['DLCName'] . " for " . $res['DLCPrice'] . "$</center>";
			}
	    ?>
	    <h2></h2>
	  <form action="buyGame.php" method="post">
	  	<select name="idCard">
	  		<?php 
				foreach ($cards as $cardId => $cardNumber) 
				{
					echo '<option value="' . $cardId . '">' . $cardNumber . '</option>';
				}
	  		?>
		</select><br />
		<?php
			echo '<input type="hidden" name="idGame" value="' . $id . '" /><input type="hidden" name="idPlayer" value="' . $idPlayer . '" />';
		?>
		<input type="submit" name="login" class="login login-submit" value="Confirm">
	  <form action="games.php">	
		<input type="submit" name="login" class="login login-submit" value="Cancel">
	  </form>
	</div>
</body>
</html>