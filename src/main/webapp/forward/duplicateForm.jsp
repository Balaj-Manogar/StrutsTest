<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ page import="org.apache.struts.action.Action"%>
<%@ page import="org.apache.struts.taglib.html.Constants"%>
<%@ page import="org.apache.struts.Globals"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Duplicate form submission demo</title>
</head>
<body>
	<h1>
		<a href="http://localhost:8080/test.struts1.2/">Home page</a>
	</h1>
	<html:errors />
	<html:form action="/action/detect-duplicate-logon"	focus="username">
		username: <html:text property="username" />
		<br />
		password: <html:password property="password" redisplay="false" />
		<br />
		<input type="hidden" name="<%=Constants.TOKEN_KEY%>"
			value="<%=session.getAttribute(Globals.TRANSACTION_TOKEN_KEY)%>" />
		<html:submit property="step">Submit</html:submit>&nbsp;&nbsp;&nbsp;&nbsp;
		
	</html:form>
</body>
</html>