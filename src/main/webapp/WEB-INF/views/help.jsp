<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.time.LocalDateTime"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help page</title>
</head>
<body>
	<!-- This below is frist step to retrive data from the controller to view(Using request) -->
	<!-- 
	<%
	String name = (String) request.getAttribute("name");
	LocalDateTime time = (LocalDateTime) request.getAttribute("time");
	%>
	<h1>
		My name is
		<%=name%></h1>
	<h1>
		Current time is :
		<%=time%></h1>
		-->
		<!-- This below is second step to retrive data from the controller to view(Using JSTL & Expression language) -->
		<h1>${name}</h1>
		<h1>${time}</h1>
		<c:forEach var="item" items="${f}">
			<h1>${item }</h1>
		</c:forEach>
</body>
</html>