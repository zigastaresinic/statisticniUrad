<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<html>
<form action = "/dodaj_uporabnika/", method = "POST">
	uporabnik: <input type="text" name="uporabnik" />
	geslo: <input type="password" name="geslo" />
	<class="dropdown">
		Sektor: <select class="primary dropdown-toggle" type="button" data-toggle="dropdown" name="sektor">
		<option value="1">Prebivalstvo</option>
		<option value="2">Izobraževanje</option>
		<option value="3">Delo</option>
		<option value="4">Admin</option>
		</select>
	</>	
	<div>
		<button type = "submit"> Dodaj uporabnika </button>
	</div>
</form>
</body>
</html>