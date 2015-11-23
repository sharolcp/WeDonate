<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="searchBox">

	<form action="UploadCompetition" method="post">
		<div style="width: 100px; float: left;">Month:</div>
		<div style="width: 150px; float: left">
			<select name="month" id="month">
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
			<select name="region" id="region">
				<option id="Jan" value="EMEA">EMEA</option>
				<option id="Feb" value="AMERICA">AMERICA</option>
				<option id="March" value="APJ">APJ</option>
			</select>
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left;">Account:</div>
		<div style="width: 150px; float: left">
			<input type="text" name="account" id="account">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Division:</div>
		<div style="width: 150px; float: left">
			<input type="text" name="divison" id="divison">
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Product:</div>
		<div style="width: 150px; float: left">
			<select name="product" id="product">
				<option id="DSA" value="DSA">DSA</option>
				<option id="AquaIon" value="AquaIon">Aqua Ion</option>
				<option id="Alta" value="alta">Alta</option>
				<option id="DSD" value="DSD">DSD</option>
				<option id="RMA" value="RMA">RMA</option>
				<option id="WAA" value="WAA">WAA</option>
				<option id="AquaMobile" value="AquaMobile">Aqua Mobile</option>
				<option id="AquaFEO" value="AquaFEO">Aqua FEO</option>
			</select>
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Competitor:</div>
		<div style="width: 150px; float: left">

			<select multiple="true" name="competitor" id="competitor">

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
		<div style="width: 100px; float: left">Testing Tool:</div>
		<div style="width: 150px; float: left">
			<select name="testingTool" id="testingTool">
				<option id="Keynote" value="Keynote">Keynote</option>
				<option id="Gomez" value="Gomez">Gomez</option>
				<option id="SiteAnalyzer" value="SiteAnalyzer">Site
					Analyzer</option>
				<option id="other" value="other">Other/Customer Testing</option>
			</select>
		</div>
		<br>

		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Head to Head:</div>
		<div style="width: 150px; float: left">
			<select name="head" id="head">
				<option id="yes" value="yes">YES</option>
				<option id="no" value="no">NO</option>
			</select>
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">State of Trial:</div>
		<div style="width: 150px; float: left">
			<select name="state" id="state">
				<option id="green" value="green">Green</option>
				<option id="yellow" value="yellow">Yellow</option>
				<option id="red" value="red">Red</option>
			</select>
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Origin:</div>
		<div style="width: 150px; float: left">
			<input type="text" name="origin" id="origin">
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">In-Region Numbers:</div>
		<div style="width: 150px; float: left">
			<input type="number" name="inregion" id="inregion">
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Global Numbers:</div>
		<div style="width: 150px; float: left">
			<input type="number" name="global" id="global">
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Cost Issue:</div>
		<div style="width: 150px; float: left">
			<select name="cost" id="cost">
				<option id="yesCost" value="yes">YES</option>
				<option id="noCost" value="no">NO</option>
			</select>
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Details:</div>
		<div style="width: 150px; float: left">
			<input type="text" name="details" id="details">
		</div>
		<br>

		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Go Forward Plan:</div>
		<div style="width: 150px; float: left">
			<input type="text" name="goForward" id="goForward">
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Number of Version:</div>
		<div style="width: 150px; float: left">
			<input type="number" name="version" id="version">
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Customer/ SE Feedback:</div>
		<div style="width: 150px; float: left">
			<input type="text" name="feedback" id="feedback">
		</div>
		<br> <br> <br> <input id="search" type="submit"
			value="Submit" />

	</form>
</div>

<div style="clear: both; bottom: 0; left: 30%; position: fixed">
	This dashboard is maintained by PET team. Please write to <a
		href="mailto:perf-eval-inside@akamai.com"> perf-eval-inside</a> for
	any queries
</div>


