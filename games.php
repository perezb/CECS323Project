<?php
$db = new PDO('mysql:host=localhost:3307;dbname=games', "root", "");
$sql = "SELECT * FROM dlc";
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
	  <caption>Games</caption>
	  <thead>
	    <tr>
	      <th scope="col">Id Game</th>
	      <th scope="col">Game</th>
	      <th scope="col">Price</th>
	      <th scope="col"></th>
	    </tr>
	  </thead>
	  <tbody>
	  	<?php 
			foreach ($db->query($sql) as $res)
			{
				echo '<tr> 
						<td scope="row" data-label="Id Payment">' . $res['idDLC'] . '</td>
	      				<td data-label="Game">' . $res['DLCName'] . '</td>
	      				<td data-label="Payment Amount">' . $res['DLCPrice'] . '</td>
	      				<td><form method="get" action="confirmationBuyGame.php" /><input type="hidden" name="gameId" value="'.$res['idDLC'].'"/><input type="submit" value="Buy"/></form></td>
	    			</tr>';
			}
	  	?>
	  </tbody>
	</table>
</body>
</html>
