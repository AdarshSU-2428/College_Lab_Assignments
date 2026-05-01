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
		
		<h2>About Us</h2>
		
		<div class="about-container">
			<p>
			This website is designed to demonstrate JSP concepts including include directive,
			form handling, and styling using CSS.
			</p>
			
			<p>
			We aim to provide a simple and user-friendly interface for learning web development.
			Our platform helps beginners understand core technologies easily.
			</p>
		</div>
		
		<%@ include file="Footer.jsp" %>
	</body>
</html>