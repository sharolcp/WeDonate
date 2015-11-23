<div class="searchBox" style="width:450px">
<form action="UploadReport" method="post" enctype="multipart/form-data">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="22%">&nbsp;</td>
    <td width="78%">&nbsp;</td>
    </tr>
     <!-- <tr>
    <td>Akamai Product</td>
    <td><input type="text" name=productName></td>
  </tr>
   <tr>
    <td>Acronym</td>
    <td><input type="text" name=acronym></td>
  </tr> -->
    <tr>
    <td>RR Number *</td>
    <td><input type="text" name=caseId required></td>
  </tr>
  <tr>
  <td>Choose Product</td>
  <td>
  <select name=productName>
  <option value="DSA">DSA</option>
  <option value="DSA-P">DSA-P</option>
  <option value="Aqua Ion">Aqua Ion</option>
  <option value="WAA">WAA</option>
  <option value="Terra Alta">Terra Alta</option>
</select>
  
  </td>
  </tr>
     <tr>
    <td>Customer Name</td>
    <td><input type="text" name=customerName required></td>
  </tr>
  <tr>
    <td>MAE</td>
    <td><input type="text" name=maeName></td>
  </tr>
   <tr>
    <td>SE</td>
    <td><input type="text" name=seName></td>
  </tr>
    <tr>
    <td>Location(Global/Regional)</td>
    <td><input type="text" name=location></td>
  </tr>
   <tr>
    <td>Single/Multi-page</td>
    <td><input type="text" name=test_type></td>
  </tr>
     <tr>
    <td>Transaction steps</td>
    <td><textarea name="steps"cols="30" rows="4"></textarea></td>
  </tr>
   <tr>
    <td>Origin URL</td>
    <td><input type="text" name=originurl></td>
  </tr>
    <tr>
    <td>Trial property</td>
    <td><input type="text" name=trialproperty></td>
  </tr><tr><td>
  </td></tr>
  
   <tr>
    <td>Akamai Stepwise numbers</td>
    <td><input type="text" name=akamaiStepwise></td>
  </tr>
   <tr>
    <td>(Seperate numbers with semicolon';')</td>
   
  </tr>
   <tr>
    <td>Origin Stepwise numbers</td>
    <td><input type="text" name=originStepwise></td>
  </tr>
   <tr>
    <td>(Seperate numbers with semicolon';')</td>
   
  </tr>
 	<tr>
 	 <tr>
    <td>LDAP *</td>
    <td><input type="text" name=ldap required></td>
  </tr>
<td>Select File to Upload:
<br></td>
<td><input type="file" name="fileUpload">
<br>
<input id="analyze" type="submit" value="Upload">
</td>
</tr>
</table>
</form>
</div>