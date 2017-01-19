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
<form action = "/{{stSektorja}}/spremeni_geslo/" method = "post">

	<div class="col-xs-12" style="height:50px;"></div>
	<div class="row">
		<div class="col-md-1"><p class="text-right">Staro geslo:</p> </div>
		<div class="col-md-6"><input type="password" class="form-control" style="width: 50%" name="staro" /> </div>
		<div class="col-xs-12" style="height:3px;"></div>
	</div>
	<div class="row">
		<div class="col-md-1"><p class="text-right">Novo geslo:</p> </div>
		<div class="col-md-6"><input type="password" class="form-control" style="width: 50%" name="novo" /> </div>	
		<div class="col-xs-12" style="height:3px;"></div>
	</div>
	
	<div class="row">
		<div class="col-md-1"><p class="text-right">Ponovi geslo:</p> </div>
		<div class="col-md-6"><input type="password" class="form-control" style="width: 50%" name="ponovi" /> </div>	
		<div class="col-xs-12" style="height:3px;"></div>
	</div>
	
	
	<div class="col-xs-12" style="height:30px;"></div>
	
	<div class="row">
		<div class="container">
			<button class="btn icon-btn btn-default">
				Spremeni geslo
			</button>
		</div>
	</div>
</form>
</div>