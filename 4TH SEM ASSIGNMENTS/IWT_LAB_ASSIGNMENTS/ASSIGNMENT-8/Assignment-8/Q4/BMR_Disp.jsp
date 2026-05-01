<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BMR RESULT</title>
	</head>
	<body>
		<%
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			double height = Double.parseDouble(request.getParameter("height"));
			double weight = Double.parseDouble(request.getParameter("weight"));
			String gender = request.getParameter("gender");
			
			double bmr;
			
			if(gender.equals("male")) {
				bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
			}
			else {
				bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
			}
		%>
		
		<h2>
			Hello <%= name %>.<br> Hope you are doing fantastic.<br>
			Your BMR is <%= bmr %> Calories/Day
		</h2>
	</body>
</html>