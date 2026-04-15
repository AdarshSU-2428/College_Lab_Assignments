<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Display</title>
</head>
<body>
	<h2>Employee Details</h2>
	ID: <%=request.getParameter("id")%><br>
	Name: <%=request.getParameter("name")%><br>
	Mobile: <%=request.getParameter("mobno") %><br>
	Email: <%=request.getParameter("email") %><br>
	Gender: <%=request.getParameter("gender") %><br>
	DOB: <%=request.getParameter("dob") %><br>
	Address: <%=request.getParameter("address") %><br>
	Country: <%=request.getParameter("country") %><br>
	Languages: 
	<% 
		String langs[] = request.getParameterValues("lang");
		if(langs != null) {
			for(String l : langs) {
				out.println(l + " ");
			}
		}
	%>
</body>
</html>