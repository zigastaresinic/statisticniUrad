% rebase('base.tpl', dobrodoslica = '')
<style>
#prikazBaze {
    position: absolute;
    top: 13%;
    left: 15%;
	right: 12%;
    
    background-color: #ffffff;
}
</style>
<div id = "prikazBaze"  style="margin-bottom: 5%; margin-top: 5%; text-align:center;">
<section class="container">
  <table style="border-collapse: collapse">
  <thead>
	 <tr>
	 %for el in stolpci:
	 <th width = "100px" style="border-right:2px solid;border-bottom: 2px solid;border-left:2px solid;border-top:2px solid;text-align:center">
	 {{el.replace('_', ' ')}}
	 </th>
	 %end
	 </tr>
  </thead>
  <tbody>
	 %for oseba in izpis:
	 <tr>
	 %for element in stolpci:
	 <td style="border-right:1px solid; border-bottom:1px solid;border-left:1px solid">
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
