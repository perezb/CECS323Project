<!DOCTYPE html>
<html>
<head>
	<title>Cards</title>
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
	    <h1>Add New Payment Card</h1><br>
	  <form action="addCard.php" method="post">
	  	<select name="type">
			<option value="Mastercard">Mastercard</option>
			<option value="Visa">Visa</option>
			<option value="American Express">American Express</option>
		</select>
	    <input type="text" name="cardNumber" placeholder="Card Number">
	    <input type="text" name="month" placeholder="Month">
	    <input type="text" name="year" placeholder="year">
	    <input type="text" name="cvv2" placeholder="Cvv2">
	    <input type="text" name="name" placeholder="Owner Name">
	    <input type="submit" name="login" class="login login-submit" value="Add">
	  </form>
	</div>

</body>
</html>