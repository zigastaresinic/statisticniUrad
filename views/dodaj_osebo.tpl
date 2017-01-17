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
<form action = "/4/dodaj_osebo/" method = "post">

	<div class="col-xs-12" style="height:50px;"></div>
	<div class="row">
		<div class="col-md-1"><p class="text-right">Ime:</p> </div>
		<div class="col-md-6"><input type="text" class="form-control" style="width: 50%" name="ime" /> </div>
		<div class="col-xs-12" style="height:3px;"></div>
	</div>
	<div class="row">
		<div class="col-md-1"><p class="text-right">Priimek:</p> </div>
		<div class="col-md-6"><input type="text" class="form-control" style="width: 50%" name="priimek" /> </div>	
		<div class="col-xs-12" style="height:3px;"></div>
	</div>
	
	<div class="row">
		<div class="col-md-1"><p class="text-right">Spol:</p> </div>
		<div class="col-md-6"><select class = "form-control" style = "width: 50%" name="spol">
		<option selected disabled hidden>Izberi spol</option>
		<option value = "M">Moški</option>
		<option value = "Ž">Ženska</option>
		</select></div>
	</div>
	
	<div class="row">
		<div class="col-md-1"><p class="text-right">Datum rojstva (llll-mm-dd):</p> </div>
		<div class="col-md-6"><input type="text" class="form-control" style="width: 50%" name="datumR" /> </div>	
		<div class="col-xs-12" style="height:3px;"></div>
	</div>
	
	<div class="row">
		<div class="col-md-1"><p class="text-right">Datum smrti (llll-mm-dd):</p> </div>
		<div class="col-md-6"><input type="text" class="form-control" style="width: 50%" name="datumS" /> </div>	
		<div class="col-xs-12" style="height:3px;"></div>
	</div>
	
	<div class="row">
		<div class="col-md-1"><p class="text-right">Regija:</p> </div>
		<div class="col-md-6"><select class = "form-control" style = "width: 50%" name="regija">
		<option selected disabled hidden>Izberi pokrajino</option>
		<option value = "gorenjska">gorenjska</option>
		<option value = "goriška">goriška</option>
		<option value = "jugovzhodna Slovenija">jugovzhodna Slovenija</option>
		<option value = "koroška">koroška</option>
		<option value = "obalno-kraška">obalno-kraška</option>
		<option value = "osrednjeslovenska">osrednjeslovenska</option>
		<option value = "podravska">podravska</option>
		<option value = "pomurska">pomurska</option>
		<option value = "posavska">posavska</option>
		<option value = "primorsko-notranjska">primorsko-notranjska</option>
		<option value = "savinjska">savinjska</option>
		<option value = "zasavska">zasavska</option>
		</select></div>
	</div>
	
	<div class="row">
		<div class="col-md-1"><p class="text-right">Status:</p> </div>
		<div class="col-md-6"><select class = "form-control" style = "width: 50%" name="status">
		<option selected disabled hidden>Izberi status</option>
		<option value = "OT">otrok</option>
		<option value = "OS">osnovnošolec</option>
		<option value = "SS">srednješolec</option>
		<option value = "ST">študent</option>
		<option value = "ZA">zaposlen</option>
		<option value = "BR">brezposeln</option>
		<option value = "UP">upokojen</option>
		<option value = "POK">pokojni</option>
		</select></div>
	</div>
	
	<div class="row">
		<div class="col-md-1"><p class="text-right">Zakonski stan:</p> </div>
		<div class="col-md-6"><select class = "form-control" style = "width: 50%" name="stan">
		<option selected disabled hidden>Izberi zakonski stan</option>
		<option value = "OT">otrok</option>
		<option value = "SA">samski</option>
		<option value = "SK">skupnost</option>
		<option value = "PO">poročen</option>
		<option value = "LO">ločen</option>
		<option value = "VD">vdovel</option>
		<option value = "POK">pokojni</option>
		</select></div>
	</div>
	
	<div class="row">
		<div class="col-md-1"><p class="text-right">Zakonski stan:</p> </div>
		<div class="col-md-6"><select class = "form-control" style = "width: 50%" name="izobrazba">
		<option selected disabled hidden>Izberi izobrazbo</option>
		<option value = "1">1 - nedokončana OŠ</option>
		<option value = "2">2 - OŠ</option>
		<option value = "3">3 - nižje poklicno izobraževanje</option>
		<option value = "4">4 - srednje poklicno izobraževanje</option>
		<option value = "5">5 - gimnazijsko, srednje-tehniško, tehniško oz. drugo strok. izobraževanje</option>
		<option value = "6.1">6.1 - višješolski strok. prog.</option>
		<option value = "6.2">6.2 - spec. po višješolskem prog. // visokošolski strok. prog. // visokošolski strok. in uni. prog. (1. bol. st)</option>
		<option value = "7">7 - speci. po visokošolskem strok. prog. // uni. prog. // mag. stroke (2. bol. st.)</option>
		<option value = "8.1">8.1 - spec. po uni. prog. // mag. znanosti</option>
		<option value = "8.2">8.2 - doktorat znanosti</option>
		</select></div>
	</div>
	
	
	
	<div class="col-xs-12" style="height:30px;"></div>
	
	<div class="row">
		<div class="container">
			<button class="btn icon-btn btn-default">
				Dodaj osebo
			</button>
		</div>
	</div>
</form>
</div>