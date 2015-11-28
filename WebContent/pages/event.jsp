<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<h3>Here is a list of events. Click on each event to volunteer for
	it.</h3>
<script>
      function volunteerForEvent(elem1) {
       	var elem = document.getElementById(elem1).value;
        if (elem == "Apply")
                    { 
        				document.getElementById(elem1).value = "Volunteered";
                  }
                else
                {
                	    document.getElementById(elem1).value = "Apply";
                 }
            } 
</script>

<div class="tableWidgetNew">
	<div class="tableHeader">Event Name</div>
	<div class="tableHeader">Time of Event</div>
	<div class="tableHeader">Place</div>
	<div class="tableHeader">Contact Number</div>
	<div class="tableHeader"></div>
	<%int c=0; %>
	<div class="row" id="rowstart">
		<s:iterator value="list">

			<div class="tablerow">
				<div class="tablerowone">
					<s:property value="name" />

				</div>
				<div class="tablerowone">
					<s:property value="time" />
				</div>
				<div class="tablerowone">
					<s:property value="place" />
				</div>
				<div class="tablerowone">
					<s:property value="contact" />
				</div>
				<div class="tablerowone">
					<!--<input type="button" class="btn btn-default"
						value="Apply" id="myButton1" onClick="changetext(this)"> -->
					<%out.print("<input onclick='volunteerForEvent(this.id)' type='button' value='Apply' id='"+ c++ +"'/>");%>
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
			var book=book.trim();
			var quantity=document.book.quantity.value;
			var quantity=quantity.trim();
			var contact=document.book.contact.value;
			var contact=contact.trim();
			var uname=document.book.dname.value;
			var uname=uname.trim();
			
			if(book == '')
				{
					document.getElementById('error').innerHTML="Please Enter Event Name";
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
	<div id="error" align="center">Event Details Box</div>
	<form action="UploadEventInfo" name="event" method="post"
		onSubmit="return validateForm1()">

		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Event Name</div>
		<div style="width: 150px; float: left">
			<input type="text" name="name" id="name">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Number of Volunteers
			Needed</div>
		<div style="width: 150px; float: left">
			<input type="text" name="volunteer" id="volunteer">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Organization Name</div>
		<div style="width: 150px; float: left">
			<input type="text" name="oname" id="oname">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Time of Event</div>
		<div style="width: 150px; float: left">
			<input type="text" name="time" id="time">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Place of Event</div>
		<div style="width: 150px; float: left">
			<input type="text" name="place" id="place">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Contact Number</div>
		<div style="width: 150px; float: left">
			<input type="text" name="contact" id="contact">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Event Link</div>
		<div style="width: 150px; float: left">
			<input type="text" name="eventLink" id="eventLink">
		</div>

		<br> <br> <br>
		<center>
			<input id="enterValue" type="submit" value="Submit" />
		</center>

	</form>
</div>