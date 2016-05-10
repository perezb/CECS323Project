<?php
session_start();
$_SESSION['namePlayer'] = null;
?>
<!DOCTYPE html>
<html>
<head>
	<title>CECS 323</title>
	<link rel="stylesheet" type="text/css" href="style/index.css" />
</head>
<body>

	<div class="login-card">
		<h2>Games Store Database</h2>
	    <h1>Log-in</h1><br>
	  <form action="player.php" method="post">
	    <input type="text" name="namePlayer" placeholder="Username">
	    <input type="submit" name="login" class="login login-submit" value="Login">
	  </form>
	</div>

</body>
</html>