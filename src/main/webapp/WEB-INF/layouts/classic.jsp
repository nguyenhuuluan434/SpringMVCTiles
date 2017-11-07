<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title"></tiles:getAsString></title>
<script src="<c:url value='/resources/js/bootstrap-switch.js' />" type="text/javascript"></script>
</head>
<body>
	<table swidth="100%">
		<tr>
			<td colspan="2" id="header"><tiles:insertAttribute name="header" /></td>
		</tr>
		<tr>
			<td width="20%" nowrap="nowrap"><tiles:insertAttribute
					name="menu"></tiles:insertAttribute></td>
			<td width="80%"><tiles:insertAttribute name="body"></tiles:insertAttribute></td>
		</tr>
		<tr>
			<td colspan="2"><tiles:insertAttribute name="footer"></tiles:insertAttribute></td>
		</tr>
	</table>

</body>
</html>
