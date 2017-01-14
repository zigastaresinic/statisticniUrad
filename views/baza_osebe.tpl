% rebase('base.tpl', dobrodoslica = '')
<section class="container">
  <table class="striped bordered">
  <thead>
	 <tr>
	 %for el in stolpci:
	 <th>
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