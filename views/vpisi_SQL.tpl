%rebase('base.tpl', dobrodoslica ='')
<form action = "/{{stSektorja}}/vpisi_SQL/" method="post" style="margin-bottom: 40px;">					
	<h3 class="text-uppercase col-xm-12">Vpiši SQL stavek:</h3><br>
	<textarea name="SQL" style="width:60%;height:200px;"></textarea>
	<div class="col-xs-12" style="height:20px;"></div>				
	<button class="btn btn-primary btn-block" style="width:80px;"> POTRDI </button>
</form>
%if aliIzpisem == True:
<style>
#prikazBaze {
    position:absolute;
    top: 13%;
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
	 %for el in stolpci:
	 <th width = "100px" style="border-right:1px solid;border-bottom: 1px solid">
	 {{el.replace('_', ' ')}}
	 </th>
	 %end
	 </tr>
  </thead>
  <tbody>
	 %for oseba in izpis:
	 <tr>
	 %for element in stolpci:
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


