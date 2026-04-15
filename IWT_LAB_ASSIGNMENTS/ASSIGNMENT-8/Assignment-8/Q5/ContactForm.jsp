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

		<h2>Contact Us</h2>
		<div class="form-container">
			<form action="ContactDisp.jsp" method="post">
			    Name: <input type="text" name="name"><br><br>
			    Email: <input type="email" name="email"><br><br>
			    Phone: <input type="text" name="phone"><br><br>
			    Subject: <input type="text" name="subject"><br><br>
			    Message:<br>
			    <textarea name="message"></textarea><br><br>
			    
			    <input type="submit" value="Submit">
			</form>
		</div>
		<%@ include file="Footer.jsp" %>
	</body>
</html>