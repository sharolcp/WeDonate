<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">

<div class="header">View Trials Competitive Data -</div>

<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/highcharts-3d.js"></script>
<script src="js/exporting.js"></script>

<div class="searchBox">

	<form method="GET" id="compSubmit" action="searchAction">
		<div style="width: 100px; float: left;">Month:</div>
		<div style="width: 150px; float: left">
			<select name="month" id="month">
				<option id="all" value="all">All</option>
				<option id="Jan" value="January">January</option>
				<option id="Feb" value="February">February</option>
				<option id="March" value="March">March</option>
				<option id="April" value="April">April</option>
				<option id="May" value="May">May</option>
				<option id="June" value="June">June</option>
				<option id="July" value="July">July</option>
				<option id="August" value="August">August</option>
				<option id="September" value="September">September</option>
				<option id="September" value="October">October</option>
				<option id="November" value="November">November</option>
				<option id="December" value="December">December</option>
			</select>
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Region:</div>
		<div style="width: 150px; float: left">
			<select multiple="true" name="region" id="region">
				<option id="allregion" value="all" selected>All</option>
				<option id="Jan" value="EMEA">EMEA</option>
				<option id="Feb" value="AMERICA">AMERICA</option>
				<option id="March" value="APJ">APJ</option>
			</select>
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Product:</div>
		<div style="width: 150px; float: left">
			<select multiple="true" name="product" id="product">
				<option id="all" value="all" selected>All</option>
				<option id="DSA" value="DSA">DSA</option>
				<option id="AquaIon" value="AquaIon">Aqua Ion</option>
				<option id="Alta" value="alta">Alta</option>
				<option id="DSD" value="DSD">DSD</option>
				<option id="RMA" value="RMA">RMA</option>
				<option id="AquaMobile" value="AquaMobile">Aqua Mobile</option>
				<option id="AquaFEO" value="AquaFEO">Aqua FEO</option>
			</select>
		</div>
		<br>

		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Competitor:</div>
		<div style="width: 150px; float: left">

			<select multiple="true" name="competitor" id="competitor">
				<option id="all" value="all" selected>All</option>
				<option id="Cloudfront" value="Cloudfront">Cloudfront</option>
				<option id="Cloudflare" value="Cloudflare">Cloudflare</option>
				<option id="Limelight" value="Limelight">Limelight</option>
				<option id="Edgecast" value="Edgecast">Edgecast</option>
				<option id="CDNetwork" value="CDNetwork">CDNetwork</option>
				<option id="Level3" value="Level3">Level3</option>
				<option id="Instart" value="Instart">Instart</option>
				<option id="maxCDN" value="maxCDN">Max CDN</option>
				<option id="china" value="china">China Cache</option>
				<option id="ipercast" value="ipercast">Ipercast</option>
				<option id="telecom" value="telecom">Telecom Italia</option>
				<option id="apica" value="apica">Apica</option>
				<option id="Incapsula" value="Incapsula">Incapsula</option>
				<option id="fastly" value="fastly">Fastly</option>
				<option id="chinanet" value="chinanet">ChinaNetCom</option>
				<option id="Accelia" value="Accelia">Accelia</option>
				<option id="Fasterize" value="Fasterize">Fasterize</option>
				<option id="unknown" value="unknown">Unknown</option>
			</select>

		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Head to Head:</div>
		<div style="width: 150px; float: left">
			<select name="head" id="head">
				<option id="all" value="all">ALL</option>
				<option id="yes" value="yes">YES</option>
				<option id="no" value="no">NO</option>
			</select>
		</div>
		<br> <br> <br> <br> <input id="search"
			type="submit" value="Submit" />
	</form>
</div>
<script>

	$('#compSubmit').on('submit', function() {
		alert('You submitted the form!');
	});
	
</script>

<div style="clear: both; bottom: 0; left: 30%; position: fixed">
	This dashboard is maintained by PET team. Please write to <a
		href="mailto:perf-eval-inside@akamai.com"> perf-eval-inside</a> for
	any queries
</div>
