% rebase('osnova.tpl')
<h1 style="font-size:320%;" class="text-center" > <kbd> Pozdravljeni na spletni strani mini statističnega urada! </h1></kbd><br>

<div class="modal-dialog">
	<div class="form-group">
		<h2 class="text-uppercase">Prijava v strežnik</h2><br>
		
		<form action = "/" method="post">
		
			<i class="glyphicon glyphicon-user"></i> <label for="upime">Uporabniško ime</label>
			<input type="text" class="form-control" placeholder = "Uporabniško ime" name="upIme">
			<div class="col-xs-12" style="height:20px;"></div>
		
			<i class="glyphicon glyphicon-lock"></i> <label for="geslo">Geslo</label> 
			<input type="password" class="form-control" name="geslo" placeholder = "Geslo">
			<div class="col-xs-12" style="height:40px;"></div>
		
			<button class="btn btn-primary btn-block"> POTRDI </button>
			<div class="col-xs-12" style="height:10px;"></div>
		</form>
		<div class="novUporabnik">
			<a href="/dodaj_uporabnika/"><button type="button" class="btn btn-default btn-block"> NOV UPORABNIK </button></a>
		</div>
	</div>
</div>
