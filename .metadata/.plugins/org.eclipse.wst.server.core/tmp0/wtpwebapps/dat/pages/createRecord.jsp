<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>	
<script type='text/javascript'>
function validate(){
	var caseid = document.getElementById('caseID');
	var Account = document.getElementById('Account');
    if(caseid.value.trim()== ""){
        alert("Enter Case Id");
        caseid.focus();
        return false;
    }  
    if(Account.value.trim()== ""){
        alert("Enter Account");
        Account.focus();
        return false;
    } 
    return true;
}
</script>


 <h1>Create Record</h1>
 <!-- 
<form action="create" method="post" onsubmit="return validate()">
<div>Case ID : <s:textfield id="caseID" name="caseID" size="20" /> *<br></div>
<div>Account : <s:textfield id="Account" name="account" size="20" />*<br></div>
<div>Choose Product    : <s:select headerKey="ALL" headerValue="Select product" name="productList" list="product"/><br></div>
<div>Choose Competition: <s:select headerKey="None" headerValue="None" name="competitionList" list="competitor"/><br></div>
<div>Performance : <s:textfield name="performance" size="20" /><br></div>
<div>Service Perf involved: <select name="servicePerf" id="servicePerf">
<option value="No">No</option> 
<option value="yes">yes</option> 
</select> <br></div>
<div><div>Optimizations : </div><div><s:textarea name="optimizations" cols="40" rows="10" /><br></div></div>
<div>Versions : <s:textfield name="versions" size="20" /><br></div>
<div>Choose Country : <select name="country" id="country">
<option value="Global" selected>Global</option>
 <s:iterator value="country">
	<option id="<s:property/>"><s:property/></option>
</s:iterator> 
</select><br></div>
<div>Origin Location : <select name="origin" id="origin">
<option value="Global" selected>Global</option>
 <s:iterator value="country">
	<option id="<s:property/>"><s:property/></option>
</s:iterator> 
</select></div>
<div style="width:30%">
<s:submit value="Create" id="Create" /></div>
</form> -->
<form action="UploadAction" method="post" enctype="multipart/form-data">
Select File to Upload:<input type="file" name="fileUpload">
<br>
<input type="submit" value="Upload">
</form>

* Mandatory Fields
