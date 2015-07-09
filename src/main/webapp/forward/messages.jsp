<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="html"
	uri="http://jakarta.apache.org/struts/tags-html"%>
<%@ taglib prefix="logic"
	uri="http://jakarta.apache.org/struts/tags-logic"%>
<%@ taglib prefix="bean"
	uri="http://jakarta.apache.org/struts/tags-bean"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error messages jsp file</title>
</head>
<body>
	<h1>Action Message Demo...</h1>
	<logic:messagesPresent message="true">
		<h2>Printing all messages using standard c:out</h2>
		<html:messages id="messages" message="true">
			<c:out value="${messages }::LLL"></c:out>
		</html:messages>
	</logic:messagesPresent>
	<logic:messagesPresent name="global.message.name">
		My name isggg present!!!
	</logic:messagesPresent>

	<logic:messagesNotPresent message="true">
		<p>messages not found</p>
	</logic:messagesNotPresent>

	<logic:messagesPresent message="true">
		<html:messages id="aMsg" message="true">
			<logic:present name="aMsg">
				<!-- Messages -->
				<div class="messages">
					<bean:write name="aMsg" filter="false" />
				</div>
			</logic:present>
		</html:messages>
	</logic:messagesPresent>

	<!-- Printing selected error message with checking -->
	<logic:messagesPresent property="message2" message="true">
		<html:messages id="pass" property="message2" message="true">
			<h2>
				<c:out value="${pass }"></c:out>
			</h2>
		</html:messages>
	</logic:messagesPresent>

	<!-- Printing selected error message without checking -->
	<html:messages id="pass" property="message2" message="true">
		<h2>
			<c:out value="${pass }:BBBBB"></c:out>
		</h2>
	</html:messages>


</body>
</html>