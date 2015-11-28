<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
	function change() {
		document.getElementById("myButton1").value = "Submitted!";
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<div style="height:450px">

		<table>
			<tr>

				<td><label>Your name:</label>
				</td>
				<td><input id="name" class="input" name="name" type="text"
					value="" size="40" />
				</td>

			</tr>
			<tr>
				<td><label>Your email:</label>
				</td>
				<td><input id="email" class="input" name="email" type="text"
					value="" size="40" />
				</td>
			</tr>
			<tr>
				<td><label for="message">Your message:</label>
				</td>
				<td><textarea id="message" class="input" name="message"
						rows="7" cols="30"></textarea>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input onclick="change()" type="button" value="Submit"
					id="myButton1" />
				</td>
			</tr>
		</table>


	</div>
	<div id="main_navigation" style="bottom: 0;">
		<table>
			<tr>
				<td align="left" width="33%"><a href="facebook"><img
						src="images/twitter-image.jpg" alt="WeDonate" width="33%"
						height="50px" style="border-radius: 100px 100px 100px 100px;" />
				</a>
				</td>
				<td align="center" width="33%"><a href="facebook"><img
						src="images/youtube-icon.png" alt="WeDonate" width="33%"
						height="50px" style="border-radius: 100px 100px 100px 100px;" />
				</a>
				</td>
				<td align="right" width="33%"><a href="https://www.facebook.com/WeDonateToCommunity"><img
						src="images/Facebook.png" alt="WeDonate" width="33%" height="50px"
						style="border-radius: 100px 100px 100px 100px;" />
				</a>
				</td>
		</table>
	</div>
</body>
</html>