% rebase(uporabljenBase, dobrodoslica = '')
<style>
#prikazBaze {
    position:absolute;
    top: 40%;
    left: 35%;
    margin-top: -16em; /*set to a negative number 1/2 of your height*/
    margin-left: -15em; /*set to a negative number 1/2 of your width*/
	margin-bottom: 9em;
    border: 2px solid #000000;	
    background-color: #ffffff;
}
</style>
<div id = "prikazBaze">
<section class="container">
  <table class="bordered">
  <thead>
	 <tr>
	 %for el in stolpci:
	 <th width = "80">
	 {{el.replace('_', ' ')}}
	 </th>
	 %end
	 </tr>
  </thead>
  <tbody>
	 %for oseba in izpis:
	 <tr>
	 %for element in stolpci:
	 <td>
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