<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html"
	uri="http://jakarta.apache.org/struts/tags-html"%>
<%@ taglib prefix="bean"
	uri="http://jakarta.apache.org/struts/tags-bean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validator Form</title>
</head>
<body>
	<h1>
		<a href="http://localhost:8080/test.struts1.2/">Home page</a>
	</h1>
	<html:errors />
	<html:form action="/action/validator-form"
		onsubmit="return validateValidatorForm(this);">
	<html:javascript formName="validatorForm" />
		
	Username: <html:text property="username" />
		<br />
	Age: <html:text property="age" />
		<br />
	Telephone: <html:text property="telephone" />
		<br />
	Email: <html:text property="email" />
		<br />
		<html:submit value="submit" />
	</html:form>
</body>
</html>