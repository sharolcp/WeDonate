<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<div class="dataTable">
	<div class="tableWidgetNew">
		<div class="tableHeader">Name</div>
		<div class="tableHeader" style="width: 150px">Email</div>
		<div class="tableHeader">Phone</div>

		<div class="row" id="rowstart">
			<s:iterator value="user">

				<div class="tablerow">
					<div class="tablerowone">
						<s:property value="name" />

					</div>
					<div class="tablerowone" style="width: 150px">
						<s:property value="mail" />
					</div>
					<div class="tablerowone">
						<s:property value="phone" />
					</div>
				</div>

			</s:iterator>
		</div>
	</div>
</div>


