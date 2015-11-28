<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div class="content">
	We a team of five graduate students came up with an idea to make an
	online system to provide for the needy. <br> <br> With our
	system you will be able to:
	<ul>
		<li>Provide needy students with free food and book</li>
		<li>Help poor families with clothes and furniture</li>
		<li>Arrange Blood bags for patients</li>
		<li>Sponsor activities for good cause</li>
	</ul>
	<br> Communication is made easier between non-profit
	organizations, donors and people in need. Right resources will reach
	target population at the right time. Trusted information available as
	the users are authenticated before adding them to the system. Do
	contribute and support community change. <br> <br> <br>
	Questions pertaining donations? Please visit our <a
		href="https://www.facebook.com/WeDonateToCommunity">Facebook</a> page
</div>
<img src="images/pig.jpg" width="385" height="250"
	style="padding-left: 120px; padding-bottom: 10px">
<div class="contentBox">
	<script>alert("Invalid Username or Password")</script>
	<script type="text/javascript">
		function validateForm()
		{
			var user=document.login.uname.value;
			var user=user.trim();
			var pass=document.login.password.value;
			if(user == '')
				{
					document.getElementById('error').innerHTML="Please Enter Username";
					return false;
				}
			if(pass == '')
				{
					document.getElementById('error').innerHTML="Please Enter Password";
					return false;
				}
		}
</script>
	<div id="error" align="center"></div>
	<form action="donate" name="login" method="post"
		onSubmit="return validateForm()">

		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Username</div>
		<div style="width: 150px; float: left">
			<input type="text" name="uname" id="uname">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 200px; float: left;">Password</div>
		<div style="width: 150px; float: left">
			<input type="password" name="password" id="password">
		</div>
		<br> <br> <br>
		<center>
			<input id="enterValue" type="submit" value="Submit" />
		</center>

	</form>
	<br> <br>
	<form action="signup" name="login" method="post">
		<center>
			<input id="SignUp" type="submit"
				value="Click Here to Sign Up for Free" />
		</center>
	</form>
</div>
</html>
