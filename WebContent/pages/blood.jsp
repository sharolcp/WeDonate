<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<div class="contentBox" style="float: left">

	<form action="SearchBlood" name="blood" method="post">

		<div style="clear: both; padding-top: 5px"></div>

		<table>
			<tr>
				<td>
					<div style="width: 280px; float: left;">Enter the blood group
						you are searching for :</div></td>

				<td><select id="bloodGroup" name="bloodGroup">
						<option value="A+">A+</option>
						<option value="A-">A-</option>
						<option value="B+">B+</option>
						<option value="B-">B-</option>
						<option value="AB+">AB+</option>
						<option value="AB-">AB-</option>
						<option value="O+">O+</option>
						<option value="O-">O-</option>
				</select>
				</td>
		</table>
		<br> <br>
		<center>
			<input id="enterValue" type="submit" value="Submit" />
		</center>
	</form>
</div>