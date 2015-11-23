<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">

<div class="header">View Trials Data -</div>

<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/highcharts-3d.js"></script>
<script src="js/exporting.js"></script>


<script>
	$(function() {
		$("#startDate").datepicker();
		$("#endDate").datepicker();
	});

	function selectComp(index) {

		if (index == 0 || index == 2) {

			document.getElementById("headDiv").style.display = "none";
		} else {

			document.getElementById("headDiv").style.display = "block";
		}
	}
</script>

<div class="searchBox">

	<form action="ViewRecord">
		<div style="width: 100px; float: left;">Start Date:</div>
		<div style="width: 150px; float: left">
			<input type="text" name="startDate" id="startDate">
		</div>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">End Date:</div>
		<div style="width: 150px; float: left">
			<input type="text" name="endDate" id="endDate">
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Product:</div>
		<div style="width: 150px; float: left">
			<s:select size="8" multiple="true" list="product" name="productList" />
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Competition:</div>
		<div style="width: 150px; float: left">
			<s:select multiple="true" list="competitor" name="competitionList"
				onchange="selectComp(this.selectedIndex)" />
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Head to Head :</div>
		<div id="headDiv" style="width: 150px; float: left; display: none">
			<select name="head" id="head">
				<option value="ALL" selected>ALL</option>

				<option id="yes" value="yes">Yes</option>
				<option id="no" value="no">No</option>

			</select>
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Testing Region:</div>
		<div style="width: 150px; float: left">
			<s:select multiple="true" list="region" name="regionList" />
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Department:</div>
		<div style="width: 150px; float: left">
			<s:select size="10" multiple="true" list="seRegion"
				name="seRegionList" />
		</div>
		<br>
		<div style="clear: both; padding-top: 5px"></div>
		<div style="width: 100px; float: left">Status :</div>
		<div style="width: 150px; float: left">
			<select name="status" id="status">
				<option value="ALL" selected>ALL</option>

				<option id="progress" value="In Process">In Process</option>
				<option id="closed" value="Closed">Closed</option>

			</select>
		</div>
		<br> <input id="search" type="submit" value="Search" />

	</form>
</div>
<div class="chartStyleBox">
	<div id="container" style="height: 400px"></div>

	<input id="regionButtonEMEA" class="regionButton" type="button"
		value="EMEA" onclick="setbuttonParameters('EMEA')" /> <input
		id="regionButtonAPAC" class="regionButton" type="button" value="APJ"
		onclick="setbuttonParameters('APAC')" /> <input id="regionButtonAM"
		class="regionButton" type="button" value="Americas"
		onclick="setbuttonParameters('Americas')" /> <input
		id="regionButtonALL" class="regionButtonSelected" type="button"
		value="All" onclick="setbuttonParameters('All')" />

	<s:hidden name="totalValAPAC" id="totalValAPAC" value="%{totalValAPAC}" />
	<s:hidden name="totalValAll" id="totalValAll" value="%{totalValAll}" />
	<s:hidden name="totalValEMEA" id="totalValEMEA" value="%{totalValEMEA}" />
	<s:hidden name="totalValAm" id="totalValAm" value="%{totalValAm}" />

	<script>
		function setbuttonParameters(region) {
			if (region == "All") {
				document.getElementById("regionButtonAPAC").className = "regionButton";
				document.getElementById("regionButtonEMEA").className = "regionButton";
				document.getElementById("regionButtonAM").className = "regionButton";
				document.getElementById("regionButtonALL").className = "regionButtonSelected";
				var all = document.getElementById("totalValAll").value.split(
						',').map(Number);

				var chart = $('#container').highcharts();
				chart.series[0].setData(all);
			}
			if (region == "Americas") {
				document.getElementById("regionButtonAPAC").className = "regionButton";
				document.getElementById("regionButtonEMEA").className = "regionButton";
				document.getElementById("regionButtonAM").className = "regionButtonSelected";
				document.getElementById("regionButtonALL").className = "regionButton";
				var all = document.getElementById("totalValAm").value
						.split(',').map(Number);

				var chart = $('#container').highcharts();
				chart.series[0].setData(all);
			}
			if (region == "APAC") {
				
				document.getElementById("regionButtonAPAC").className = "regionButtonSelected";
				document.getElementById("regionButtonEMEA").className = "regionButton";
				document.getElementById("regionButtonAM").className = "regionButton";
				document.getElementById("regionButtonALL").className = "regionButton";
				var all = document.getElementById("totalValAPAC").value.split(
						',').map(Number);

				var chart = $('#container').highcharts();
				chart.series[0].setData(all);
			}
			if (region == "EMEA") {
				document.getElementById("regionButtonAPAC").className = "regionButton";
				document.getElementById("regionButtonEMEA").className = "regionButtonSelected";
				document.getElementById("regionButtonAM").className = "regionButton";
				document.getElementById("regionButtonALL").className = "regionButton";
				var all = document.getElementById("totalValEMEA").value.split(
						',').map(Number);

				var chart = $('#container').highcharts();
				chart.series[0].setData(all);
			}

		}

		var all = document.getElementById("totalValAll").value.split(',').map(
				Number);
		$(function() {
			$('#container')
					.highcharts(
							{
								chart : {
									type : 'column',
									margin : 75,
									options3d : {
										enabled : true,
										alpha : 10,
										beta : 25,
										depth : 70
									}
								},
								title : {
									text : 'Product vs Cases',
									style: {
						                color: '#001933',
						                fontWeight: 'bold'
						            }
								},
								subtitle : {
									text : 'Below graph shows % trials for each product',
									style: {
						                color: '#000066',
						                fontWeight: 'bold'
						            }
								},
								plotOptions : {
									column : {
										depth : 25
									}
								},
								xAxis : {
									categories : [ 'DSA', 'WAA', 'Aqua Ion FEO',
											'Aqua Ion', 'Alta' ]
								},
								yAxis : {
									opposite : true
								},
								series : [ {
									name : 'Trials',
									data : all
								} ],
								tooltip: {

						            pointFormat: '<span style="color:{series.color}">{series.name}: {point.y}%</span><br/>'
						        }
							});
		});
	</script>


</div>
<div style="clear: both; bottom: 0; left: 30%; position: fixed">
	This dashboard is maintained by PET team. Please write to <a
		href="mailto:perf-eval-inside@akamai.com"> perf-eval-inside</a> for
	any queries
</div>
