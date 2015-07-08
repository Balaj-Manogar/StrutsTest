<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html"
	uri="http://jakarta.apache.org/struts/tags-html"%>
<%@ taglib prefix="logic"
	uri="http://jakarta.apache.org/struts/tags-logic"%>
<%@ taglib prefix="bean"
	uri="http://jakarta.apache.org/struts/tags-bean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error messages jsp file</title>
</head>
<body>
	<h1>Action Message Demo...</h1>
	<logic:messagesPresent message="messages">
		Messages:::%%@@
		<html:messages id="messages" message="true">
			<bean:write name="messages" />
		</html:messages>
	</logic:messagesPresent>
	<logic:messagesPresent name="global.message.name" >
		My name isggg present!!!
	</logic:messagesPresent>

	<logic:messagesNotPresent>
		<p>messages not found</p>
	</logic:messagesNotPresent>
</body>
</html>