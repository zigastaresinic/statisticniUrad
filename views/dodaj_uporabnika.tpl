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

<form action = "/dodaj_uporabnika/", method = "POST">

	<div class="col-xs-12" style="height:50px;"></div>
	<div class="row">
		<div class="col-md-1"><p class="text-right">Uporabnik:</p> </div>
		<div class="col-md-6"><input type="text" class="form-control" style="width: 50%" name="uporabnik" /> </div>
		<div class="col-xs-12" style="height:3px;"></div>
	</div>
	<div class="row">
		<div class="col-md-1"><p class="text-right">Geslo:</p> </div>
		<div class="col-md-6"><input type="password" class="form-control" style="width: 50%" name="geslo" /> </div>	
		<div class="col-xs-12" style="height:10px;"></div>
	</div>
	
	<div class="row">
		<div class="col-md-1"><p class="text-right">Sektor:</p> </div>
		<div class="col-md-6">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<a href="#" class="nav-tabs-dropdown btn btn-block btn-primary">Tabs</a>
						<ul id="nav-tabs-wrapper" class="nav nav-tabs nav-pills nav-stacked well">
						  <li><a href="#vtab1" data-toggle="tab">Prebivalstvo</a></li>
						  <li><a href="#vtab2" data-toggle="tab">Izobraževanje</a></li>
						  <li><a href="#vtab3" data-toggle="tab">Delo</a></li>
						</ul>
					</div>
					<div class="col-sm-9">
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade" id="vtab1">
								<h3>Prebivalstvo</h3>
								<p>Prebivalstvo je prvi sektor.</p>
								<pre>
									<h3>Prebivalstvo</h3>
									<p>Prebivalstvo je prvi sektor.</p> 
								</pre>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="vtab2">
								<h3>Izobraževanje</h3>
								<p> Izobraževanje je drugi sektor.</p>
							</div>
							<div role="tabpanel" class="tab-pane fade in" id="vtab3">
								<h3>Delo</h3>
								<p>Delo je tretji sektor.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-xs-12" style="height:30px;"></div>
	
	<div class="row">
		<div class="container">
			<a class="btn icon-btn btn-default" href="#">
				Dodaj uporabnika
			</a>
		</div>
	</div>
	
	
	
</form>