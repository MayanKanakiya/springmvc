<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<title>Home page</title>
</head>
<body>
	<h2>Home page</h2>
	<p>
		<%
		String name = (String) request.getAttribute("name");
		List<String> friends = (List<String>) request.getAttribute("f");
		for (String s : friends) {
		%>
	
	<h2><%=s%></h2>
	<%
	}
	%>
	<h1>
		My name is
		<%=name%></h1>
	<%

	%>
	</p>
</body>
</html>
