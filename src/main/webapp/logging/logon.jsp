<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign in...</title>
</head>
<body>
	<html:errors />
	<html:form action="logonSubmit" focus="username">
		username: <html:text property="username" /><br />
		password: <html:password property="password" redisplay="false"/><br />
		<html:submit property="step">Submit</html:submit>&nbsp;&nbsp;&nbsp;&nbsp;
		<html:submit  property="step" >Reset</html:submit>
	</html:form>
</body>
</html>