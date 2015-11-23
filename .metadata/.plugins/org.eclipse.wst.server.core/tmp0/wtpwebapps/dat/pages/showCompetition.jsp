<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">

<div id=searchCompBox>
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
		<div style="width: 100px; float: left">Region:</div>
		<div style="width: 150px; float: left">
			<select multiple="true" name="region" id="region">
				<option id="allregion" value="all" selected>All</option>
				<option id="Jan" value="EMEA">EMEA</option>
				<option id="Feb" value="AMERICA">AMERICA</option>
				<option id="March" value="APJ">APJ</option>
			</select>
		</div>
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
		<div style="width: 100px; float: left">Head to Head:</div>
		<div style="width: 150px; float: left">
			<select name="head" id="head">
				<option id="all" value="all">ALL</option>
				<option id="yes" value="yes">YES</option>
				<option id="no" value="no">NO</option>
			</select>
		</div>
		<input id="search" type="submit" value="Submit" />
	</form>
</div>

<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/exporting.js"></script>
<script src="js/highcharts-3d.js"></script>
<div id="containerNew"></div>
<div id="containerRegion"></div>
<div id="containerCountry"></div>
<div id="containerProd"></div>

<div id="buttonContainer">
	<input id="regionButtonEMEA" class="regionButton" type="button"
		value="EMEA" onclick="setbuttonParameters('EMEA')" /> <input
		id="regionButtonAPAC" class="regionButton" type="button" value="APJ"
		onclick="setbuttonParameters('APAC')" /> <input id="regionButtonAM"
		class="regionButton" type="button" value="Americas"
		onclick="setbuttonParameters('Americas')" /> <input
		id="regionButtonALL" class="regionButtonSelected" type="button"
		value="All" onclick="setbuttonParameters('All')" />

</div>


<s:hidden name="totalCloudfront" id="totalCloudfront"
	value="%{totalCloudfront}" />
<s:hidden name="totalEdgecast" id="totalEdgecast"
	value="%{totalEdgecast}" />
<s:hidden name="totalLimelight" id="totalLimelight"
	value="%{totalLimelight}" />
<s:hidden name="totalCDNetwork" id="totalCDNetwork"
	value="%{totalCDNetwork}" />
<s:hidden name="totalLevel3" id="totalLevel3" value="%{totalLevel3}" />
<s:hidden name="totalInstart" id="totalInstart" value="%{totalInstart}" />
<s:hidden name="totalCloudflare" id="totalCloudflare"
	value="%{totalCloudflare}" />
<s:hidden name="totalRegion" id="totalRegion" value="%{totalRegion}" />

<s:hidden name="cloudfront" id="cloudfront" value="%{cloudfront}" />
<s:hidden name="edgecast" id="edgecast" value="%{edgecast}" />
<s:hidden name="limelight" id="limelight" value="%{limelight}" />
<s:hidden name="cdnetwork" id="cdnetwork" value="%{cdnetwork}" />
<s:hidden name="level3" id="level3" value="%{level3}" />
<s:hidden name="instart" id="instart" value="%{instart}" />
<s:hidden name="cloudflare" id="cloudflare" value="%{cloudflare}" />

<s:hidden name="allIon" id="allIon" value="%{allIon}" />
<s:hidden name="allDSA" id="allDSA" value="%{allDSA}" />
<s:hidden name="allAlta" id="allAlta" value="%{allAlta}" />
<s:hidden name="allDSD" id="allDSD" value="%{allDSD}" />
<s:hidden name="allFEO" id="allFEO" value="%{allFEO}" />
<s:hidden name="allMob" id="allMob" value="%{allMob}" />
<s:hidden name="allRma" id="allRma" value="%{allRma}" />

<s:hidden name="emeaIon" id="emeaIon" value="%{emeaIon}" />
<s:hidden name="emeaDSA" id="emeaDSA" value="%{emeaDSA}" />
<s:hidden name="emeaAlta" id="emeaAlta" value="%{emeaAlta}" />
<s:hidden name="emeaDSD" id="emeaDSD" value="%{emeaDSD}" />
<s:hidden name="emeaFEO" id="emeaFEO" value="%{emeaFEO}" />
<s:hidden name="emeaMob" id="emeaMob" value="%{emeaMob}" />
<s:hidden name="emeaRma" id="emeaRma" value="%{emeaRma}" />

<s:hidden name="amIon" id="amIon" value="%{amIon}" />
<s:hidden name="amDSA" id="amDSA" value="%{amDSA}" />
<s:hidden name="amAlta" id="amAlta" value="%{amAlta}" />
<s:hidden name="amDSD" id="amDSD" value="%{amDSD}" />
<s:hidden name="amFEO" id="amFEO" value="%{amFEO}" />
<s:hidden name="amMob" id="amMob" value="%{amMob}" />
<s:hidden name="amRma" id="amRma" value="%{amRma}" />

<s:hidden name="apjIon" id="apjIon" value="%{apjIon}" />
<s:hidden name="apjDSA" id="apjDSA" value="%{apjDSA}" />
<s:hidden name="apjAlta" id="apjAlta" value="%{apjAlta}" />
<s:hidden name="apjDSD" id="apjDSD" value="%{apjDSD}" />
<s:hidden name="apjFEO" id="apjFEO" value="%{apjFEO}" />
<s:hidden name="apjMob" id="apjMob" value="%{apjMob}" />
<s:hidden name="apjRma" id="apjRma" value="%{apjRma}" />

<script>
	var cloudfront = document.getElementById("totalCloudfront").value
			.split(',').map(Number);
	var edgecast = document.getElementById("totalEdgecast").value.split(',')
			.map(Number);
	var limelight = document.getElementById("totalLimelight").value.split(',')
			.map(Number);
	var CDNetwork = document.getElementById("totalCDNetwork").value.split(',')
			.map(Number);
	var level3 = document.getElementById("totalLevel3").value.split(',').map(
			Number);
	var instart = document.getElementById("totalInstart").value.split(',').map(
			Number);
	var cloudflare = document.getElementById("totalCloudflare").value
			.split(',').map(Number);

	$(function() {
		$('#containerNew')
				.highcharts(
						{
							title : {
								text : 'Competitive Trials Trend(Y2D)',
								style : {
									color : '#001933',
									fontWeight : 'bold'
								},
								x : -20
							//center
							},
							subtitle : {
								text : 'Data for 2014 (January- August)',
								style : {
									color : '#000066',
									fontWeight : 'bold'
								},
								x : -20
							},
							xAxis : {
								categories : [ 'Jan', 'Feb', 'Mar', 'Apr',
										'May', 'Jun', 'Jul', 'Aug', 'Sep',
										'Oct', 'Nov', 'Dec' ]
							},
							yAxis : {
								min : 0,
								title : {
									text : 'Number of Cases'
								},
								plotLines : [ {
									value : 0,
									width : 1,
									color : '#808080'
								} ]
							},
							tooltip : {
								pointFormat : '<span style="color:{series.color}">{series.name}: {point.y}</span><br/>'
							},
							legend : {
								layout : 'vertical',
								align : 'right',
								verticalAlign : 'middle',
								borderWidth : 0
							},
							series : [ {
								name : 'Cloudfront',
								data : cloudfront
							}, {
								name : 'Edgecast',
								data : edgecast
							}, {
								name : 'Limelight',
								data : limelight
							}, {
								name : 'CD Networks',
								data : CDNetwork
							}, {
								name : 'Level3',
								data : level3
							}, {
								name : 'Instart',
								data : instart
							}, {
								name : 'Cloudflare',
								data : cloudflare
							} ]
						});
	});

	var region = document.getElementById("totalRegion").value.split(',').map(
			Number);
	$(function() {
		$('#containerRegion')
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
								text : 'In-Region Data',
								style : {
									color : '#001933',
									fontWeight : 'bold'
								}
							},
							subtitle : {
								text : 'Below graph shows total number of competitive trials from each region',
								style : {
									color : '#000066',
									fontWeight : 'bold'
								}
							},
							plotOptions : {
								column : {
									depth : 25
								}
							},
							xAxis : {
								categories : [ 'America', 'EMEA', 'APJ' ]
							},
							yAxis : {
								opposite : true,
								title : {
									text : 'Number of cases'
								},
							},
							series : [ {
								name : 'Trials',
								data : region
							} ],
							tooltip : {

								pointFormat : '<span style="color:{series.color}">{series.name}: {point.y}</span><br/>'
							}
						});
	});

	var cloudfront1 = document.getElementById("cloudfront").value.split(',')
			.map(Number);
	var edgecast1 = document.getElementById("edgecast").value.split(',').map(
			Number);
	var limelight1 = document.getElementById("limelight").value.split(',').map(
			Number);
	var CDNetwork1 = document.getElementById("cdnetwork").value.split(',').map(
			Number);
	var level31 = document.getElementById("level3").value.split(',')
			.map(Number);
	var instart1 = document.getElementById("instart").value.split(',').map(
			Number);
	var cloudflare1 = document.getElementById("cloudflare").value.split(',')
			.map(Number);

	$(function() {
		$('#containerCountry')
				.highcharts(
						{
							chart : {
								type : 'column'
							},
							title : {
								text : 'Per-Region Competition',
								style : {
									color : '#001933',
									fontWeight : 'bold'
								},
							},
							subtitle : {
								text : 'Below graph shows the per-region distribution of competition',
								style : {
									color : '#000066',
									fontWeight : 'bold'
								},
							},
							xAxis : {
								categories : [ 'America', 'EMEA', 'APJ' ]
							},
							yAxis : {
								min : 0,
								title : {
									text : 'Number of cases'
								}
							},
							tooltip : {
								headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
								pointFormat : '<tr><td style="color:{series.color};padding:0">{series.name}: </td>'
										+ '<td style="padding:0"><b>{point.y}</b></td></tr>',
								footerFormat : '</table>',
								shared : true,
								useHTML : true
							},
							plotOptions : {
								column : {
									pointPadding : 0.2,
									borderWidth : 0
								}
							},
							series : [ {
								name : 'Cloudfront',
								data : cloudfront1
							}, {
								name : 'Edgecast',
								data : edgecast1
							}, {
								name : 'Limelight',
								data : limelight1
							}, {
								name : 'CD Networks',
								data : CDNetwork1
							}, {
								name : 'Level3',
								data : level31
							}, {
								name : 'Instart',
								data : instart1
							}, {
								name : 'Cloudflare',
								data : cloudflare1
							} ]
						});
	});

	function setbuttonParameters(region) {
		if (region == "All") {
			document.getElementById("regionButtonAPAC").className = "regionButton";
			document.getElementById("regionButtonEMEA").className = "regionButton";
			document.getElementById("regionButtonAM").className = "regionButton";
			document.getElementById("regionButtonALL").className = "regionButtonSelected";
			var all1 = document.getElementById("allIon").value.split(',').map(
					Number);
			var all2 = document.getElementById("allDSA").value.split(',').map(
					Number);
			var all3 = document.getElementById("allAlta").value.split(',').map(
					Number);
			var all4 = document.getElementById("allDSD").value.split(',').map(
					Number);
			var all5 = document.getElementById("allFEO").value.split(',').map(
					Number);
			var all6 = document.getElementById("allMob").value.split(',').map(
					Number);
			var all7 = document.getElementById("allRma").value.split(',').map(
					Number);

			var chart = $('#containerProd').highcharts();
			chart.series[0].setData(all1);
			chart.series[1].setData(all2);
			chart.series[2].setData(all3);
			chart.series[3].setData(all4);
			chart.series[4].setData(all5);
			chart.series[5].setData(all6);
			chart.series[6].setData(all7);
		}
		if (region == "Americas") {
			document.getElementById("regionButtonAPAC").className = "regionButton";
			document.getElementById("regionButtonEMEA").className = "regionButton";
			document.getElementById("regionButtonAM").className = "regionButtonSelected";
			document.getElementById("regionButtonALL").className = "regionButton";
			var all1 = document.getElementById("amIon").value.split(',').map(
					Number);
			var all2 = document.getElementById("amDSA").value.split(',').map(
					Number);
			var all3 = document.getElementById("amAlta").value.split(',').map(
					Number);
			var all4 = document.getElementById("amDSD").value.split(',').map(
					Number);
			var all5 = document.getElementById("amFEO").value.split(',').map(
					Number);
			var all6 = document.getElementById("amMob").value.split(',').map(
					Number);
			var all7 = document.getElementById("amRma").value.split(',').map(
					Number);

			var chart = $('#containerProd').highcharts();
			chart.series[0].setData(all1);
			chart.series[1].setData(all2);
			chart.series[2].setData(all3);
			chart.series[3].setData(all4);
			chart.series[4].setData(all5);
			chart.series[5].setData(all6);
			chart.series[6].setData(all7);
		}
		if (region == "APAC") {

			document.getElementById("regionButtonAPAC").className = "regionButtonSelected";
			document.getElementById("regionButtonEMEA").className = "regionButton";
			document.getElementById("regionButtonAM").className = "regionButton";
			document.getElementById("regionButtonALL").className = "regionButton";
			var all1 = document.getElementById("apjIon").value.split(',').map(
					Number);
			var all2 = document.getElementById("apjDSA").value.split(',').map(
					Number);
			var all3 = document.getElementById("apjAlta").value.split(',').map(
					Number);
			var all4 = document.getElementById("apjDSD").value.split(',').map(
					Number);
			var all5 = document.getElementById("apjFEO").value.split(',').map(
					Number);
			var all6 = document.getElementById("apjMob").value.split(',').map(
					Number);
			var all7 = document.getElementById("apjRma").value.split(',').map(
					Number);

			var chart = $('#containerProd').highcharts();
			chart.series[0].setData(all1);
			chart.series[1].setData(all2);
			chart.series[2].setData(all3);
			chart.series[3].setData(all4);
			chart.series[4].setData(all5);
			chart.series[5].setData(all6);
			chart.series[6].setData(all7);
		}
		if (region == "EMEA") {
			document.getElementById("regionButtonAPAC").className = "regionButton";
			document.getElementById("regionButtonEMEA").className = "regionButtonSelected";
			document.getElementById("regionButtonAM").className = "regionButton";
			document.getElementById("regionButtonALL").className = "regionButton";
			var all1 = document.getElementById("emeaIon").value.split(',').map(
					Number);
			var all2 = document.getElementById("emeaDSA").value.split(',').map(
					Number);
			var all3 = document.getElementById("emeaAlta").value.split(',')
					.map(Number);
			var all4 = document.getElementById("emeaDSD").value.split(',').map(
					Number);
			var all5 = document.getElementById("emeaFEO").value.split(',').map(
					Number);
			var all6 = document.getElementById("emeaMob").value.split(',').map(
					Number);
			var all7 = document.getElementById("emeaRma").value.split(',').map(
					Number);

			var chart = $('#containerProd').highcharts();
			chart.series[0].setData(all1);
			chart.series[1].setData(all2);
			chart.series[2].setData(all3);
			chart.series[3].setData(all4);
			chart.series[4].setData(all5);
			chart.series[5].setData(all6);
			chart.series[6].setData(all7);
		}

	}

	var all1 = document.getElementById("allIon").value.split(',').map(Number);
	var all2 = document.getElementById("allDSA").value.split(',').map(Number);
	var all3 = document.getElementById("allAlta").value.split(',').map(Number);
	var all4 = document.getElementById("allDSD").value.split(',').map(Number);
	var all5 = document.getElementById("allFEO").value.split(',').map(Number);
	var all6 = document.getElementById("allMob").value.split(',').map(Number);
	var all7 = document.getElementById("allRma").value.split(',').map(Number);

	$(function() {
		$('#containerProd')
				.highcharts(
						{
							chart : {
								type : 'column'
							},
							title : {
								text : 'Product VS Competition',
								style : {
									color : '#001933',
									fontWeight : 'bold'
								},
							},
							subtitle : {
								text : 'Below graph shows the product distribution per competition',
								style : {
									color : '#000066',
									fontWeight : 'bold'
								},
							},
							xAxis : {
								categories : [ 'Cloudfront', 'Edgecast',
										'Limelight', 'CD Networks', 'Level3',
										'Instart', 'Cloudflare' ]
							},
							yAxis : {
								min : 0,
								title : {
									text : 'Number of cases'
								}
							},
							tooltip : {
								headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
								pointFormat : '<tr><td style="color:{series.color};padding:0">{series.name}: </td>'
										+ '<td style="padding:0"><b>{point.y}</b></td></tr>',
								footerFormat : '</table>',
								shared : true,
								useHTML : true
							},
							plotOptions : {
								column : {
									pointPadding : 0.2,
									borderWidth : 0
								}
							},
							series : [ {
								name : 'Aqua Ion',
								data : all1
							}, {
								name : 'DSA',
								data : all2
							}, {
								name : 'Alta',
								data : all3
							}, {
								name : 'DSD',
								data : all4
							}, {
								name : 'Aqua Ion with FEO',
								data : all5
							}, {
								name : 'Aqua Ion Mobile',
								data : all6
							}, {
								name : 'RMA',
								data : all7
							} ]
						});
	});
</script>

<div style="clear: both; bottom: 0; left: 30%; position: fixed">
	This dashboard is maintained by PET team. Please write to <a
		href="mailto:perf-eval-inside@akamai.com"> perf-eval-inside</a> for
	any queries
</div>

