% rebase('base.tpl', dobrodoslica = '', stSektorja = 4)
<style>
#prikaz {
    position:center;
    top: 40%;
    left: 35%;
    border: 2px solid #000000;	
    background-color: #ffffff;
}
</style>
<div class="prikaz">
<form action = "/4/dodaj_uporabnika/" method = "post">

	<div class="col-xs-12" style="height:50px;"></div>
	<div class="row">
		<div class="col-md-1"><p class="text-right">Uporabnik:</p> </div>
		<div class="col-md-10"><input type="text" class="form-control" style="width: 50%" name="uporabnik" /> </div>
		<div class="col-xs-12" style="height:7px;"></div>
	
		<div class="col-md-1"><p class="text-right">Geslo:</p> </div>
		<div class="col-md-10"><input type="password" class="form-control" style="width: 50%" name="geslo" /> </div>	
		<div class="col-xs-12" style="height:7px;"></div>
	
		<div class="col-md-1"><p class="text-right">Sektor:</p> </div>
		<div class="col-md-10">
			<select class = "form-control" style = "width: 50%" name="sektor">
				<option selected disabled hidden>Izberi sektor</option>
				<option value = "1">Prebivalstvo</option>
				<option value = "2">Izobraževanje</option>
				<option value = "3">Delo</option>
				<option value = "4">Admin</option>
			</select>
		</div>
	</div>
	
	<div class="row">
		<div class="container">
			<button class="btn icon-btn btn-default">
				Dodaj uporabnika
			</button>
		</div>
	</div>
	

</form>
</div>