<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<h2>Contact page</h2>
	<div class="container my-5 ">
		<h1>${Heading }</h1>
		<h1>Contact Us :</h1>
		<form action="processForm" method="POST">
			<div class="mb-3">
				<label for="name" class="form-label">Name</label> <input type="text"
					class="form-control" placeholder="Enter name" id="name" name="name">
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email</label> <input
					type="email" placeholder="Enter email" class="form-control"
					id="email" name="email">
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password</label> <input
					type="password" placeholder="Enter password" class="form-control"
					id="pass" name="pass">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>