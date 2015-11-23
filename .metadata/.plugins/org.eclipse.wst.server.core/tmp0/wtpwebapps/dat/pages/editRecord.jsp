<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<s:if test="caseID==null">
 <div class="searchBox">
 	<form action="EditRecord" method="post">
		<div style="width:100px;float:left;" >Select : </div>
		<div style="width:150px;float:left">	
			<s:select size="8" multiple="false" list="resources" name="SAName" />
		</div>
		<div style="clear:both;padding-top:5px"></div>
		<input id="search" type="submit" value="Search"/>
		
	</form>
</div>
<div style="clear:both;padding-top:5px"></div>
<div>
<s:if test="list!=null">
	<s:iterator value="list">
		<div style="width:100px;float:left;" >
			<a href="/dat/EditRecord?caseID=<s:property value="caseID"/>" target="_blank"><s:property value="caseID"/></a>
		</div>
		<div style="width:150px;float:left"><s:property value="account"/></div>	
		<div style="clear:both;padding-top:5px"></div>
	</s:iterator>
</s:if>
</div>
</s:if>
<s:else>
<div class="header"><s:property value="caseID"/></div>
	
	<form action="EditRecord" method="post" enctype="multipart/form-data">
		<div style="width:850px;float:left">
			Select File to Upload:<input type="file" name="fileUpload">
			<input type="hidden" name="caseID" value="<s:property value="caseID"/>"/>
				<input type="submit" value="Upload">
		</div>		
		
	</form>		
</s:else>
