<!DOCTYPE html>
<html>
<head>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style>
body   {
	background-image: url("/static/stat_ana.png");
	background-size: 2000px 1000px;
	}

ul {
    list-style-type: none;
	margin:0;
	padding:4px;
	width:140px;
    background-color: #ffffff;
}

li a {
    display: inline-block;
    border: 2px solid #000080;
	font-family:"Times New Roman";
    color: #000;
	text-align:center;
	margin:auto;
	padding: 12px;
    width:180px;
}

li a:hover {
    background-color: #20B2AA;
    color: white;
	text-decoration: none;
	text-align:center;
}

li a:visited {
    background-color: #20B2AA;
}
	
tr:nth-child(even){background-color: #c4c2c2;} <!--Vsak drugi je malo drugačne barve (za v tabelo)-->
tr:nth-child(odd){background-color: ##d8d4d4;}
	
</style>
</head>

<div class="col-md-12" style="background-color:#20B2AA; height:130px">
	
	<h1 style = "float:center; font-family:'segoe script">
		<img src="/static/{{stSektorja}}.png" width="110" height="90"></img>
		{{dobrodoslica}}
		<div style="float:right;">
			<a href="/odjava/"><button style="float:right;" type="button" class="btn btn-default btn-block">Odjava</button></a>
			<br>
			<a href="/{{stSektorja}}/spremeni_geslo/"><button style="float:right;" type="button" class="btn btn-default btn-block">Spremeni geslo</button></a>
		</div>
	</h1>
</div>




<br>
<br>
<br>

<div>
<div style="margin-top:1%; width: 180px; float: left;">
<ul>
  <li><a href="/{{stSektorja}}/vpisi_SQL/">Vpiši SQL</a></li>
  <div style='height:2px; width:140px;'></div>
  <li><a href="/{{stSektorja}}/dodaj_SQL/">Dodaj SQL</a></li>
  <div style='height:2px; width:140px;'></div>
  <li><a href="/{{stSektorja}}/baza_osebe/">Baza oseb</a></li>
  
%if stSektorja == 4:
  <div style='height:2px; width:140px;'></div>
  <li><a href="/{{stSektorja}}/dodaj_osebo/">Dodaj osebo</a></li>
  <div style='height:2px; width:140px;'></div>
  <li><a href="/{{stSektorja}}/baza_uporabniki/">Baza uporabnikov</a></li>
  <div style='height:2px; width:140px;'></div>
  <li><a href="/{{stSektorja}}/dodaj_uporabnika/">Dodaj uporabnika</a></li>
%end
</ul>
</div>
<div style="width: 60%; margin-left: 220px;">
{{!base}}
</div>
</div>
</body>
</html>