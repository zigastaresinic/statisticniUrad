% rebase('osnova.tpl')

<div class="col-xs-12" style="height:40px;"></div>
<div><h1 class="col-xs-12" style="font-family:segoe script">
	Pozdravljeni na <br> spletni strani <br> mini statističnega urada! </h1>
	<div class="col-xs-12" style="height:40px;"></div>
</div>


<div class="container">
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Prijava</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-body">
        <div class="modal-dialog">
			<div class="form-group">
				<div class="col-xs-12" style="height:20px;"></div>
				
					
				<form action = "/" method="post">
					
					<h2 class="text-uppercase col-xm-12">Prijava v strežnik</h2><br>
					
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
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">&times;</button>
        </div>
      </div>
    </div>
  </div>
</div>
