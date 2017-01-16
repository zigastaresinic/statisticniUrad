<!DOCTYPE html>
<html>
<head>
<style>
body   {
	background-image: url("/static/stat_ana.png");
	}

.naslov {
	margin-left:30%;
	text-align:center;
	font-family:"Times New Roman";
	font-weight: bold;
	width: 1000px
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
    width:140px;
	height:12px;
    text-decoration: none;
}

li a:hover {
    background-color: blue;
    color: white;
}
	
tr:nth-child(even){background-color: #c4c2c2;} <!--Vsak drugi je malo drugačne barve (za v tabelo)-->
tr:nth-child(odd){background-color: ##d8d4d4;}
	
</style>
</head>

<body>
<div class = "naslov">
<h1 style = "float:left; width:auto;">{{dobrodoslica}}</h1>
</div>
<div style="float:right;">
	<a href="/odjava/"><button type="button" class="btn btn-default btn-block">Odjava</button></a>
</div>


<div style = "clear:both">
<hr size = "5" color = '#000000' />
<br>
<br>
<ul>
  <li><a href="/{{stSektorja}}/vpisi_SQL/">Vpiši SQL</a></li>
  <div style='height:2px; width:140px;'></div>
  <li><a href="/{{stSektorja}}/baza_osebe/">Baza oseb</a></li>
  <div style='height:2px; width:140px;'></div>
  <li><a href="/{{stSektorja}}/dodaj_SQL/">Dodaj SQL</a></li>  
  <div style='height:2px; width:140px;'></div>
  <li><a href="/{{stSektorja}}/dodaj_osebo/">Dodaj osebo</a></li>
  <div style='height:2px; width:140px;'></div>
  <li><a href="/{{stSektorja}}/baza_uporabniki/">Baza uporabnikov</a></li>
  <div style='height:2px; width:140px;'></div>
  <li><a href="/{{stSektorja}}/dodaj_uporabnika/">Dodaj uporabnika</a></li>
</ul>
</div>
{{!base}}
</body>
</html>