<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Login Check</title>
	</head>
	<body>
		<%
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			if(email.equals("admin@gmail.com") && password.equals("admin")){
			    request.getRequestDispatcher("Welcome.jsp").forward(request, response);
			}
			else{
			    out.println("<h3>Invalid Credentials</h3>");
			}
		%>			
	</body>
</html>