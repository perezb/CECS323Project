<?php
session_start();
$playerId = $_SESSION['idPlayer'];
$db = new PDO('mysql:host=localhost:3307;dbname=games', "root", "");
$sql = "SELECT * FROM player WHERE idPlayer = $playerId";

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
	  <h1>Edit Informations</h1><br>
	  <form action="editPlayerConfirmation.php" method="post">
	  	<?php
			foreach ($db->query($sql) as $res)
			{
	    		echo '<input type="text" name="name" placeholder="Name" value="'. $res["name"] .'">';
	    		echo '<input type="text" name="email" placeholder="Email" value="'. $res["email"] .'">';
			}
		?>
	    <input type="submit" name="login" class="login login-submit" value="Edit">
	  </form>
	</div>
</body>
</html>