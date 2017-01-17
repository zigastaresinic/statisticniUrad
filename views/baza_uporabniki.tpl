% rebase('base.tpl', dobrodoslica = '')
<style>
#prikazBaze {
    position:absolute;
    top: 13%;
    left: 15%;
    border: 2px solid #000000;	
    background-color: #ffffff;
}
</style>


<body>
<div id = "prikazBaze"  style="margin-bottom: 5%; margin-top: 1%;text-align: center;">
<section class="container">
  <table style="border-collapse: collapse" id="tabela">
  <thead>
	 <tr>
	 %for el in stolpci:
	 <th width = "300px" style="border-right:1px solid;border-bottom: 1px solid">
	 {{el.replace('_', ' ')}}
	 </th>
	 %end
	 <th style="border-right:1px solid;border-bottom: 1px solid">Odstrani</th>
	 </tr>
  </thead>
  <tbody>
	 %for oseba in izpis:
	 <tr id="vrstica">
	 %for element in stolpci:
	 <td style="border-right:1px solid; border-bottom:1px solid;">
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
	 <td>
	 <form action = "/4/baza_uporabniki/" method = "post">
	 <input type="hidden" name="upime" value="{{oseba['Uporabniško_ime']}}">
	 <input type="submit" value="Odstrani"></form></td>
	 </tr>
	 %end
  </tbody>
  </table>
</body>
</section>
</div>