<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<script type="text/javascript">
function downloadXLS() {
	
	var tempUrl = location.href;
	var url = tempUrl.replace("ViewRecord","Download");
	
	document.getElementById("downloadLink").href=url; 
	

}



</script>
<div style="color:#666666;">
	<div style="float:left" class="widget">
		<div class="widgetHeader">Summary</div>
			<div id="summary">
				<div style="width:70%;float:left">Total Cases : </div><div style="width:20%;float:left"><s:property value="totalCases"/></div><br>
				<!--  <div style="width:70%;float:left">Avg Performance : </div><div style="width:20%;float:left"><s:property value="avgPerf"/></div><br> -->
				<div style="width:70%;float:left">Avg Turn Around time : </div><div style="width:20%;float:left"><s:property value="avgTurnAroundTime"/> days </div><br>
				<div style="width:70%;float:left">Avg Time to Good Data: </div><div style="width:20%;float:left"><s:property value="avgTimeToGoodData"/> days </div><br>
				<div style="width:70%;float:left">Avg Effort : </div><div style="width:20%;float:left"><s:property value="avgEffort"/> hours</div><br>
				<div style="width:70%;float:left">No of Open Trials : </div><div style="width:20%;float:left"><s:property value="noOpenTrials"/></div><br>
				<div style="width:70%;float:left">No of Service Perf Escalations : </div><div style="width:20%;float:left"><s:property value="noServicePerfEscalations"/></div><br>
				
				
					<div style="padding-top:10px;font-weight:bold">The average performance is calculated based on</div>
					<div style="font-weight:bold">the performance numbers collected for all cases</div>
				
			</div>
			
	</div>
<s:if test="competetiveDataAvailable==true">
<div style="float:left" class="widget">
<div class="widgetHeader">Competitive Data</div>
<div id="summary">
<!--<s:if test="amzPerf != 0"><div style="width:40%;float:left">Amazon AW : </div><div style="width:20%;float:left"><s:property value="amzPerf"/></div><br></s:if> -->
<s:if test="cdnPerf != 0"><div style="width:40%;float:left">CDNetworks : </div><div style="width:20%;float:left"><s:property value="cdnPerf"/></div><br></s:if>
<s:if test="cloudPerf != 0"><div style="width:40%;float:left">Cloudfront : </div><div style="width:20%;float:left"><s:property value="cloudPerf"/></div><br></s:if>
<s:if test="edgePerf != 0"><div style="width:40%;float:left">EdgeCast : </div><div style="width:20%;float:left"><s:property value="edgePerf"/></div><br></s:if>
<s:if test="limePerf != 0"><div style="width:40%;float:left">Limelight : </div><div style="width:20%;float:left"><s:property value="limePerf"/></div><br></s:if>
<s:if test="instartPerf != 0"><div style="width:40%;float:left">Instart : </div><div style="width:20%;float:left"><s:property value="instartPerf"/></div><br></s:if>
<div style="padding-top:10px;font-weight:bold">The above numbers are calculated based on</div>
<div style="font-weight:bold">the head to head data against competition</div>
</div>
</div>
</s:if>

<div style="width:30%;float:right;padding-top:10px">
<a href="#" id="downloadLink" onclick="downloadXLS()" target="_blank"><img alt="Download" src="images/download.jpg" ></a>
</div>
</div>
<br>
<div style="clear:both"></div>
<div class="dataTable">	
<div class="tableWidget">
	<div class="tableHeader">Account</div>
	<div class="tableHeader">Product</div>
	<div class="tableHeader">Region</div>
	<div class="tableHeader">Competition Name</div>
	<div class="tableHeader">Head to Head</div>
	<div class="tableHeader">Service Perf involved?</div>
	<div class="tableHeader">Optimizations</div>
	<!--  <div class="tableHeader">Performance</div>-->
	<div class="tableHeader">Performance Global</div>
	<div class="tableHeader">Performance NA</div>
	<div class="tableHeader">Performance EMEA</div>
	<div class="tableHeader">Performance APJ</div>	
	<div class="tableHeader">Description</div>
	<!--  <div class="tableHeader">Target Region</div>-->
	<div class="tableHeader">Origin Location</div>
	<div class="tableHeader">In Country Performance</div>
	<div class="tableHeader">Country of interest</div>
	<div class="tableHeader">Turn Around Time</div>
	<div class="tableHeader">Time to good data</div>
	<div class="tableHeader">Effort</div>
	<!--  <td>End Date</td>-->
	<div class="tableHeader">State</div>
	
	<!--  <td>Geo</td>-->
	<!--  <td>Case Type</td> -->
	<div class="tableHeader">Upsell</div>
	<div class="tableHeader">Origin Type</div>
	<div class="tableHeader">Steps</div>


	<div class="tableHeader">Case ID</div>
	<div class="tableHeader">Versions</div>
	<div class="tableHeader">Current Status</div>
	<div class="tableHeader">Start Date</div>
	<div class="tableHeader">Assigned to</div>
	<div class="tableHeader">Requested By</div>
	<div class="tableHeader">Report</div>

<div class="row" id="rowstart">
<s:iterator value="list">

<div class="tablerow">	 
	<div class="tablerowone"><s:property value="account"/></div>
	<div class="tablerowone"><s:property value="productList"/></div> 
	<div class="tablerowone"><s:property value="region"/></div>
	<div class="tablerowone"><s:property value="competitionList"/></div>
	<div class="tablerowone"><s:property value="head"/></div>
	<div class="tablerowone"><s:property value="servicePerf"/> </div> 
	<div class="tablerowone"><s:property value="optimizations"/></div>
	<!--  <div class="tablerowone"><s:property value="performance"/></div>-->
	<div class="tablerowone"><s:property value="perfGlobal"/></div>
	<div class="tablerowone"><s:property value="perfNA"/></div>
	<div class="tablerowone"><s:property value="perfEmea"/></div>
	<div class="tablerowone"><s:property value="perfApac"/></div>
	<div class="tablerowone"><s:property value="description"/></div>
	<!-- <div class="tablerowone"><s:property value="targetRegion"/></div>  -->
	<div class="tablerowone"><s:property value="origin"/></div> 
	<div class="tablerowone"><s:property value="inCountryPerf"/></div>
	<div class="tablerowone"><s:property value="country"/></div>
	<div class="tablerowone"><s:property value="turnAroundTime"/></div>
	<div class="tablerowone"><s:property value="timeToGoodData"/></div>
	<div class="tablerowone"><s:property value="effort"/></div>
	<!--  <td><s:property value="endDate"/></td> -->
	<div class="tablerowone"><s:property value="state"/></div>
	
	<!--  <td><s:property value="region"/></td> -->
	<!-- <td><s:property value="caseType"/></td>  -->
	<div class="tablerowone"><s:property value="upSell"/></div>
	<div class="tablerowone"><s:property value="originType"/></div>
	<div class="tablerowone"><s:property value="steps"/> </div>
	<div class="tablerowone"><s:property value="caseID"/></div>
	<div class="tablerowone"><s:property value="versions"/></div>
	<div class="tablerowone"><s:property value="statuts"/></div>
	<div class="tablerowone"><s:property value="startDate"/></div>
	<div class="tablerowone"><s:property value="sa"/></div>  
	<div class="tablerowone"><s:property value="requestor"/></div> 
	<s:if test="Report==true">
		<div class="tablerowone">
			<a href="/dat/DownloadReport?caseID=<s:property value="caseID"/>" target="_blank">Yes</a>
		</div>
	</s:if> 
	<s:else>
		<div class="tablerowone">-</div>
	</s:else>
</div>	

</s:iterator>
</div>
 </div>
</div>
<div style="clear:both;bottom:0px;left:30%;position:relative">This dashboard is maintained by PET. Please write to <a href="mailto:perf-eval-inside@akamai.com">
perf-eval-inside</a> for any queries</div>