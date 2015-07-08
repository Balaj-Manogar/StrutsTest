<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
<html:base />
</head>
<body>
	<logic:present name="user">
		<h3>Welcome <bean:write name="user" property="username"/> </h3>
	</logic:present>
	<logic:notPresent scope="session" name="user">
		<H3>Welcome Friend</H3>
	</logic:notPresent>
	<html:errors/>
	<UL>
		<li><html:link forward="logon">Sign in</html:link></li>
		<logic:present name="user"><li><html:link forward="logoff">Sign out</html:link></li></logic:present>
	</UL>
	<IMG
		src='http://struts.apache.org/release/1.3.x/struts-tiles/images/struts-power.gif'
		alt='Powered by Struts'>
</body>
</html>