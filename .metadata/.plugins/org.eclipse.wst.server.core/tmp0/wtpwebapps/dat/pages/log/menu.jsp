<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div>

	<form action="Log" method="post">
		<div class="header" style="font-size:15px">
		<p>
		This is a tool that lets you pull logs from an Akamai Ghost region.
		Logan will pull logs from one child region and 2 parent servers.
		</p><p> It
		analyzes these logs and sends an e-mail to your Akamai E-mail Id.
		</p>
		</div>
		
		<div class="searchBox" style="width:550px">
			<div style="width:100px;float:left;" >Unique Name: </div>
			<div style="width:150px;float:left"><input type="text" name="dir"
					placeholder="This will be the subject of your e-mail" size=60%
					required>
			</div>
   			<div style="clear:both;padding-top:5px"></div>
			
			<div style="width:100px;float:left;" >Network: </div>
			<div style="width:150px;float:left">
				<input type="radio" name="network" value="ff" selected="true" checked>Free Flow
				<input type="radio" name="network" value="essl">ESSL
			</div>
			<div style="clear:both;padding-top:5px"></div>
			
			<div style="width:100px;float:left;" >Server: </div>
			<div style="width:250px;float:left">
				<input type="radio" name="server" value="west" selected="true" checked>LSG West
				<input type="radio" name="server" value="east">LSG East
			</div>
			<div style="clear:both;padding-top:5px"></div>
			
			<div style="width:100px;float:left;" >Start Date: </div>
			<div style="width:250px;float:left">
				<input type="text" name="smm" pattern="0?[1-9]|1[012]" size=2 placeholder="MM" >
				<input type="text" name="sdd" pattern="0?[1-9]|[12][0-9]|3[01]" size=2 placeholder="DD" >
				<input type="text" name="syyyy" pattern="20[0-9][0-9]" size=4 placeholder="YYYY" >
				<input type="text" name="sh"  size=2 placeholder="hh" >
				<input type="text" name="sm" pattern="[0-5][0-9]" size=2 placeholder="mm" >
			</div>
			<div style="clear:both;padding-top:5px"></div>
			
			<div style="width:100px;float:left;" >End Date: </div>
			<div style="width:250px;float:left">	
				<input type="text" name="emm" pattern="0?[1-9]|1[012]" size=2 placeholder="MM" >
				<input type="text" name="edd" pattern="0?[1-9]|[12][0-9]|3[01]" size=2 placeholder="DD" >
				<input type="text" name="eyyyy" pattern="20[0-9][0-9]" size=4 placeholder="YYYY" >
				<input type="text" name="eh"  size=2 placeholder="hh" >
				<input type="text" name="em" pattern="[0-5][0-9]" size=2 placeholder="mm" >
			</div>
			<div style="clear:both;padding-top:5px"></div>
			
			<div style="width:100px;float:left;" >Last few hours:</div>
			<div style="width:150px;float:left">	
				<select name="lastFewHours">
				<option value="None"></option>
				<option value="1">1hour</option>
				<option value="2">2 hours</option>
				<option value="3">3 hours</option>
				<option value="4">4 hours</option>
				<option value="8">8 hour</option>
				<option value="12">12 hours</option>
				<option value="16">16 hours</option>
				<option value="24">24 hours</option>
				<option value="36">36 hours</option>
				<option value="48">48 hours</option>
				</select>
			</div>
			<div style="clear:both;padding-top:5px"></div>
			
			<div style="width:100px;float:left;" >Cache Key:</div>
			<div style="width:150px;float:left">
				<input type="text" name="cacheKey" placeholder="Full cache key as mentioned in the config" size=60% required>
			</div>
			<div style="clear:both;padding-top:5px"></div>		
			
			<div style="width:100px;float:left;" >Region Id:</div>
			<div style="width:150px;float:left">		
				<input type="text" name="regId" placeholder="Akamai Ghost region ID" size=60% required>
			</div>
			<div style="clear:both;padding-top:5px"></div>
			
			<div style="width:100px;float:left;" >LDap ID:</div>
			<div style="width:150px;float:left">
				<input type="text" name="ldap" placeholder="Separate multipal IDs by a space" size=60% required>
			</div>
			<div style="clear:both;padding-top:5px"></div>
			
			<div style="width:100px;float:left;" >Path Tracer:</div>
			<div style="width:150px;float:left">
				<input type="text" name="tracer" value="/" size=60% required>
			</div>
			<div style="clear:both;padding-top:5px"></div>	
				
			<input id="analyze" type="submit" name="Summon Logan" value="Summon Logan">
		</div>
	</form>
</div>
<div style="clear:both;padding-top:5px"></div>
<div style="clear:both;left:30%;position:relative;font-size:15px" class="header">This tool is maintained by PET team. Please write to <a href="mailto:perf-eval-inside@akamai.com">
perf-eval-inside</a> for any queries</div>