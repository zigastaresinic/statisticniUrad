<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Pozdravljeni na spletni strani mini statističnega urada!</h1><br>

<div class="modal-dialog">
	<div class="loginmodal-container">
		<h2>Prijava v strežnik</h2><br>
		<form action = "/" method="post">
			<input type="text" name="upIme" placeholder="Uporabniško ime">
			<input type="password" name="geslo" placeholder="Geslo">
			<button>Potrdi</button>
		</form>
		<div class="novUporabnik">
			<a href="/dodaj_uporabnika/">Nov uporabnik</a>
		</div>
	</div>
</div>

</body>
</html>



