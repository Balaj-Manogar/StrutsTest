<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html"  %>
<html>
<body>
<c:set var="hello" value="Hello Struts" />
<h1><a href="http://localhost:8080/test.struts1.2/">Home page</a></h1>
<h2>${hello}..</h2>
<html:link action="action-forward">Progamatically forwarding to the jsp file</html:link><br />
<html:link action="/action/message">Action messages demo</html:link><br />
<html:link action="/action/forward-action">Struts forward action demo</html:link><br />
<html:link action="/action/include">Struts include action demo</html:link><br />
<html:link action="/action/dispatch?method=create">Struts dispatch action create demo</html:link><br />
<html:link action="/action/dispatch?method=delete">Struts dispatch action delete demo</html:link><br />
<html:link action="/action/dispatch?method=update">Struts dispatch action updated demo</html:link><br />
<html:link action="/action/lookup?p=create">Struts lookup dispatch action create demo</html:link><br />
<html:link action="/action/lookup?p=delete">Struts lookup dispatch action delete demo</html:link><br />
<html:link action="/action/lookup?p=poda">Struts lookup dispatch action updated demo</html:link><br />
<html:link action="/forwardSubmitServlet">ForwardAction to another Servlet</html:link><br />
<html:link action="/forwardSubmitAction">ForwardAction to another Action</html:link><br />
<html:link action="/action/switch-action">SwitchAction module to module action</html:link><br />
<html:link action="/action/duplicate-logon">Duplicate log on demo</html:link><br />
<html:link action="/action/validator">Validator plug in demo</html:link><br />
<html:link action="dyna-demo">DynaActionForm demo</html:link>


<html:errors/>
</body>
</html>
