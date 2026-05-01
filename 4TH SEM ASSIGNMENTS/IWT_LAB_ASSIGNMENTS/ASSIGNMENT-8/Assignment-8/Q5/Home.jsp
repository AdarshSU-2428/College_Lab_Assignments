<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>My Website</title>
	</head>
	<body>
		<%@ include file="Header.jsp" %>
		<h2>Welcome to Our Website</h2>

		<div class="about-container">
		    <p>This is the homepage of our website...</p>
		
		    <img src="Image.jpg" width="300">
		    <p><i>Figure: Nature</i></p>
		</div>
		
		<%@ include file="Footer.jsp" %>
	</body>
</html>