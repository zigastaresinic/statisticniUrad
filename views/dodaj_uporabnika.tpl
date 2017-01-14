% rebase('osnova.tpl')
<style>
	.btn span.glyphicon {    			
		opacity: 0;				
	}
	.btn.active span.glyphicon {				
		opacity: 1;				
	}
	
	.nav-tabs-dropdown {
		display: none;
		border-bottom-left-radius: 0;
		border-bottom-right-radius: 0;
	}

	.nav-tabs-dropdown:before {
		content: "\e114";
		font-family: 'Glyphicons Halflings';
		position: absolute;
		right: 30px;
	}

	@media screen and (min-width: 769px) {
		#nav-tabs-wrapper {
		display: block!important;}
	}
	@media screen and (max-width: 768px) {
		.nav-tabs-dropdown {
			display: block;
	}
	#nav-tabs-wrapper {
		display: none;
		border-top-left-radius: 0;
		border-top-right-radius: 0;
		text-align: center;
	}
	
</style>

<form action = "/dodaj_uporabnika/" method = "post">

	<div class="col-xs-12" style="height:50px;"></div>
	<div class="row">
		<div class="col-md-1"><p class="text-right">Uporabnik:</p> </div>
		<div class="col-md-6"><input type="text" class="form-control" style="width: 50%" name="uporabnik" /> </div>
		<div class="col-xs-12" style="height:3px;"></div>
	</div>
	<div class="row">
		<div class="col-md-1"><p class="text-right">Geslo:</p> </div>
		<div class="col-md-6"><input type="password" class="form-control" style="width: 50%" name="geslo" /> </div>	
		<div class="col-xs-12" style="height:3px;"></div>
	</div>
	
	<div class="row">
		<div class="col-md-1"><p class="text-right">Sektor:</p> </div>
		<div class="col-md-6"><select class = "form-control" style = "width: 50%" name="sektor">
		<option selected disabled hidden>Izberi sektor</option>
		<option value = "1">Prebivalstvo</option>
		<option value = "2">Izobraževanje</option>
		<option value = "3">Delo</option>
		<option value = "4">Admin</option>
		</select></div>
	</div>
	
	<div class="col-xs-12" style="height:30px;"></div>
	
	<div class="row">
		<div class="container">
			<button class="btn icon-btn btn-default">
				Dodaj uporabnika
			</button>
		</div>
	</div>
	
	
	
</form>