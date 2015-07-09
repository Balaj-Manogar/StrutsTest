<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Form</title>
</head>
<body>

	<form:form action="register.do">
		UserName:<form:text property="userName" />
		<br />
		enter password:<form:password property="password1" />
		<br />
		re-enter password:<form:password property="password2" />
		<br>
		<form:submit value="Register" />
	</form:form>
</body>
</html>