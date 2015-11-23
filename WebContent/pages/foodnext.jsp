<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
h1 {
	text-shadow: 2px 2px #FF0000;
}
</style>

<h1>Thank you for your donation.</h1>
<h3>Here is a list of items which are available for donation. If
	you find any item that interests you please contact the person in
	charge for more information.</h3>


<div class="tableWidgetNew">
	<div class="tableHeader">Item Name</div>
	<div class="tableHeader">Quantity</div>
	<div class="tableHeader">Donor Name</div>
	<div class="tableHeader">Donor Number</div>

	<div class="row" id="rowstart">
		<s:iterator value="list">

			<div class="tablerow">
				<div class="tablerowone">
					<s:property value="name" />

				</div>
				<div class="tablerowone">
					<s:property value="quantity" />
				</div>
				<div class="tablerowone">
					<s:property value="dname" />
				</div>
				<div class="tablerowone">
					<s:property value="contact" />
				</div>
			</div>

		</s:iterator>
	</div>
</div>

<div class="contentBox">

	<script type="text/javascript">
		function validateForm1()
		{
			var book=document.book.bname.value;
			var book=v=book.trim();
			var quantity=document.book.quantity.value;
			var quantity=quantity.trim();
			var contact=document.book.contact.value;
			var contact=contact.trim();
			var uname=document.book.dname.value;
			var uname=uname.trim();
			
			if(book == '')
				{
					document.getElementById('error').innerHTML="Please Enter Item Name";
					return false;
				}
			if(quantity == ''|| isNaN(quantity))
			{
				document.getElementById('error').innerHTML="Please Enter correct Quantity";
				return false;
			}
			if(contact == '')
			{
				document.getElementById('error').innerHTML="Please Enter Contact Number";
				return false;
			}
			if(uname == '')
			{
				document.getElementById('error').innerHTML="Please Enter Contact Name";
				return false;
			}
		}
</script>
	<div id="error" align="center">Donation Box</div>
	<form action="UploadFood" name="misc" method="post"
		onSubmit="return validateForm1()">

		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Item Name</div>
		<div style="width: 150px; float: left">
			<input type="text" name="name" id="name">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Quantity</div>
		<div style="width: 150px; float: left">
			<input type="text" name="quantity" id="quantity">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Donator Name</div>
		<div style="width: 150px; float: left">
			<input type="text" name="dname" id="dname">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Contact Number</div>
		<div style="width: 150px; float: left">
			<input type="text" name="contact" id="contact">
		</div>
		<br> <br> <br>
		<center>
			<input id="enterValue" type="submit" value="Submit" />
		</center>

	</form>
</div>