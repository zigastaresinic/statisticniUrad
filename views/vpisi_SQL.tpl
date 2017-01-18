%rebase('base.tpl', dobrodoslica ='')
<form action = "/{{stSektorja}}/vpisi_SQL/" method="post" style="margin-bottom: 40px;">
<br>
<br>
<br>
<b style="margin-right:1em;">SELECT</b>
<select name ="selectStolpci" multiple required style="height:210px;width:130px;overflow:hidden;">
	<option disabled>Izberi stolpce</option>
	<option value='*'>*</option>
	<option value='count(*)'>count(*)</option>
	%for el in stolpci:
	<option value='{{el}}'>{{el}}</option>
	%end
</select>
<b style="margin-left:1em; margin-right:1em;">FROM Osebe WHERE</b>
<textarea name="PogojWhere" style="width:30%;height:100px; resize:none; overflow:hidden;" placeholder="Pogoji"></textarea><br>
<b style="margin-left:-1em; margin-right:1em;">GROUP BY</b>
<select name="selectGroupBy" multiple style="margin-top: 2em; height:210px;width:130px;overflow:hidden;">
	<option disabled>Izberi stolpce</option>
	%for el in stolpci:
	<option value='{{el}}'>{{el}}</option>
	%end
</select>
<b style="margin-left:1em; margin-right:1em;">HAVING</b>
<textarea name="PogojHaving" style="width:30%;height:100px; resize:none; overflow:hidden;" placeholder="Pogoji"></textarea><br>
<b style="margin-left:1em; margin-right:1em;">ORDER BY</b>
<select name="selectOrderBy" multiple style="margin-top: 2em; height:210px;width:130px;overflow:hidden;">
	<option disabled>Izberi stolpce</option>
	%for el in stolpci:
	<option value='{{el}}'>{{el}}</option>
	%end
</select>
<select name="selectOrderByPomozen" style="height:25px;width:130px;overflow:hidden;">
	<option value='ASC'>ASC</option>
	<option value='DESC'>DESC</option>
</select>
<button class="btn btn-primary btn-block" style="width:80px;"> Iskanje </button>
</form>
%if aliIzpisem == True:
<style>
#prikazBaze {
    position:absolute;
    top: 75%;
    left: 15%;
    border: 2px solid #000000;	
    background-color: #ffffff;
}
</style>
<div id = "prikazBaze"  style="margin-bottom: 5%; margin-top: 25%; text-align:center;">
<section class="container">
  <table style="border-collapse: collapse">
  <thead>
	 <tr>
	 %for el in stol:
	 <th width = "100px" style="border-right:1px solid;border-bottom: 1px solid">
	 {{el.replace('_', ' ')}}
	 </th>
	 %end
	 </tr>
  </thead>
  <tbody>
	 %for oseba in baza:
	 <tr>
	 %for element in stol:
	 <td style="border-right:1px solid; border-bottom:1px solid;">
	 %if oseba[element] is not None:
	 {{oseba[element]}}
	 %else:
	 -
	 %end
	 </td>
	 %end
	 </tr>
	 %end
  </tbody>
  </table>
</section>
</div>
%else:
-
%end