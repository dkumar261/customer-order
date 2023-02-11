<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>


<html:html>
<head>
<html:base />
<title></title>
</head>

<body>
	<html:errors />
	<html:form action="/helloWorld">
		<bean:message key="prompt.customer.firstname" />:
		<html:text property="firstName" size="16" maxlength="16" />
		<BR>
		<bean:message key="prompt.customer.lastname" />:
		<html:text property="lastName" size="16" maxlength="16" />
		<BR>
		<html:submit>
			<bean:message key="button.save" />
		</html:submit>

		<html:cancel>
			<bean:message key="button.cancel" />
		</html:cancel>

		<html:messages id="msg" message="true">
			${msg}
			<br>
		</html:messages>

	</html:form>
</body>
</html:html>