<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html"
	uri="http://jakarta.apache.org/struts/tags-html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dyna Action form</title>
</head>
<body>
	<h1>
		<a href="http://localhost:8080/test.struts1.2/">Home page</a>
	</h1>
	<html:form action="/actions/dyna-form">
	<html:errors/>
Username: <html:text property="username" />
Email: <html:text property="email" />
		<html:submit value="Submit" />
	</html:form>
</body>
</html>