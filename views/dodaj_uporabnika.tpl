% rebase('osnova.tpl')
<body>
<form action = "/dodaj_uporabnika/", method = "POST">

	<div class="col-xs-12" style="height:50px;"></div>
	<div class="row">
		<div class="col-md-5"><p class="text-right">Uporabnik:</p> </div>
		<div class="col-md-6"><input type="text" class="form-control" style="width: 50%" name="uporabnik" /> </div>
	</div>
	<div class="row">
		<div class="col-md-5"><p class="text-right">Geslo:</p> </div>
		<div class="col-md-6"><input type="password" class="form-control" style="width: 50%" name="geslo" /> </div>	
	</div>
	
	<div class="row">
		<div class="col-md-5"><p class="text-right">Sektor: </p> </div>
		<div class="col-md-6">
			<div class="btn-group">
				<button type="button" class="btn btn-Default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				Sektor
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Prebivalstvo</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Izobraževanje</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Delo</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Admin</a>
				</div>
			</div>
		
	</div>
	
	
	<div>
		<div class="row">
			<div class="col-md-8"><p class="text-right"><button type = "submit" class="btn btn-default" href="#" role="button"> Dodaj uporabnika </button> </p> </div>
		</div>
	</div>
	
</form>