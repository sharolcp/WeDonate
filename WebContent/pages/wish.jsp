<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<h3>Here is your wishlist:</h3>
<script>
      function changetext(elem1) {
       	var elem = document.getElementById(elem1).value;
        if (elem == "Edit This")
                    { 
        				document.getElementById(elem1).value = "Oopsie";
                  }
                else
                {
                	    document.getElementById(elem1).value = "Apply";
                 }
            } 
</script>

<div class="tableWidgetNew">
	<div class="tableHeader">Category</div>
	<div class="tableHeader">Item Name</div>
	<div class="tableHeader">Author(Book)</div>
	<div class="tableHeader">Quantity</div>
	<div class="tableHeader"></div>
	<%
		int c = 0;
	%>
	<div class="row" id="rowstart">
		<s:iterator value="list">

			<div class="tablerow">
				<div class="tablerowone">
					<s:property value="category" />

				</div>
				<div class="tablerowone">
					<s:property value="iname" />
				</div>
				<div class="tablerowone">
					<s:property value="aname" />
				</div>
				<div class="tablerowone">
					<s:property value="quantity" />
				</div>
				<div class="tablerowone">
					<%
						out.print("<input onclick='changetext(this.id)' type='button' value='Edit This' id='"
									+ c++ + "'/>");
					%>
				</div>
			</div>

		</s:iterator>
	</div>
</div>

<div class="contentBox">

	<script type="text/javascript">
		function validateForm1()
		{
			var item=document.wishlist.iname.value;
			var item=item.trim();
			var category=document.wishlist.category.value;
			var category=category.trim();

			
			if(item == '')
				{
					document.getElementById('error').innerHTML="Please Enter Item Name";
					return false;
				}
			if(category == '')
			{
				document.getElementById('error').innerHTML="Please Enter Category";
				return false;
			}
		}
</script>
	<div id="error" align="center">My Wishlist</div>
	<form action="UploadWishlistInfo" name="wishlist" method="post"
		onSubmit="return validateForm1()">
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Item Type</div>
		<div style="width: 150px; float: left">
			<select id="category" name="category">
				<option value="Book">Book</option>
				<option value="Food">Food</option>
				<option value="Garage">Garage</option>
			</select>
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Item Name</div>
		<div style="width: 150px; float: left">
			<input type="text" name="iname" id="iname">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Author Name(If its a
			book)</div>
		<div style="width: 150px; float: left">
			<input type="text" name="aname" id="aname">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Quantity</div>
		<div style="width: 150px; float: left">
			<input type="text" name="quantity" id="quantity">
		</div>
		<br> <br> <br>
		<center>
			<input id="enterValue" type="submit" value="Submit" />
		</center>
	</form>
</div>