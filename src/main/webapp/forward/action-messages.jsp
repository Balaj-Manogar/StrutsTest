<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html"  uri="http://jakarta.apache.org/struts/tags-html"%>
<%@ taglib prefix="logic" uri="http://jakarta.apache.org/struts/tags-logic" %>
<%@ taglib prefix="bean" uri="http://jakarta.apache.org/struts/tags-bean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Action Message Demo</title>
</head>
<body>
<h1><a href="http://localhost:8080/test.struts1.2/">Home page</a></h1>

<logic:messagesPresent message="true">
	<h3>Prints all actions that added in the specified action class</h3>
	<html:messages id="msg" message="true">
		<li style="color:green"><bean:write name="msg"/></li>
	</html:messages>
</logic:messagesPresent>
<logic:messagesNotPresent message="true">
	<h3 style="color:Red">No messages present in action!!!</h3>
</logic:messagesNotPresent>
<h3>Check the specified mesage that presents in action class</h3>
<hr />

<logic:messagesPresent message="true" property="greeting">
	<h2 style="color:green">Specified message found...</h2>
</logic:messagesPresent>
<logic:messagesNotPresent message="true" property="greeting">
	<h3 style="color:Red">Specified message not present in action!!!</h3>
</logic:messagesNotPresent>
</body>
</html>










