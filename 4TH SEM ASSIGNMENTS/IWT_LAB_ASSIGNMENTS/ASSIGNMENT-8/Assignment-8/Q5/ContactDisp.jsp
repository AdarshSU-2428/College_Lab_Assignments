<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Contact Display</title>
	</head>
	<body>
		<%@ include file="Header.jsp" %>

		<h2>Submitted Details</h2>
		
		<div class="form-container">
			<%
			    String name = request.getParameter("name");
			    String email = request.getParameter("email");
			    String phone = request.getParameter("phone");
			    String subject = request.getParameter("subject");
			    String message = request.getParameter("message");
			%>
			
			<p><b>Name:</b> <%= name %></p>
			<p><b>Email:</b> <%= email %></p>
			<p><b>Phone:</b> <%= phone %></p>
			<p><b>Subject:</b> <%= subject %></p>
			<p><b>Message:</b> <%= message %></p>
		</div>
		
		<%@ include file="Footer.jsp" %>
	</body>
</html>