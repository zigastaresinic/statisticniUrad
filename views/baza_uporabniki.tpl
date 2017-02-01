% rebase('base.tpl', dobrodoslica = '')
<style>
#prikazBaze {
    position:absolute;
    top: 13%;
    left: 15%;
	right: 12%;
    
    background-color: #ffffff;
}
</style>


<body>
<div id = "prikazBaze"  style="margin-bottom: 5%; margin-top: 5%;text-align: center;">
<section class="container">
  <table style="border-collapse: collapse">
  <thead>
	 <tr>
	 %for el in stolpci:
	 <th width = "300px" style="border-right:2px solid;border-bottom: 2px solid;border-left:2px solid;border-top:2px solid;text-align:center">
	 {{el.replace('_', ' ')}}
	 </th>
	 %end
	 <th style="border-right:2px solid; border-bottom:2px solid;border-left:2px solid;border-top:2px solid;text-align:center">Odstrani</th>
	 </tr>
  </thead>
  <tbody>
	 %for oseba in izpis:
	 <tr id="vrstica">
	 %for element in stolpci:
	 <td style="border-right:1px solid; border-bottom:1px solid;border-left:1px solid">
	 %if oseba[element] == 1:
	 prebivalstvo
	 %elif oseba[element] == 2:
	 izobrazevanje
	 %elif oseba[element] == 3:
	 delo
	 %elif oseba[element] == 4:
	 admin	 
	 %else:
	 {{oseba[element]}}
	 %end
	 </td>
	 %end
	 <td style="border-right:1px solid; border-bottom:1px solid;border-left:1px solid">
		<form action = "/4/baza_uporabniki/" method = "post">
			<input type="hidden" name="upime" value="{{oseba['Uporabniško_ime']}}">
			<input type="submit" value="Odstrani">
		</form>
	</td>
	 </tr>
	 %end
  </tbody>
  </table>
</body>
</section>
</div>