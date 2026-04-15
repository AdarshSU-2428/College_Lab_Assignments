<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BMR FORM</title>
	</head>
	<body>
		<h1>BMR CALCULATOR</h1>
		<form action="BMR_Disp.jsp">
			Name: 
			<input type="text" name="name"><br>
			Age:
			<input type="text" name="age"><br>
			Gender:
			<input type="radio" name="gender" value="Male">Male
			<input type="radio" name="gender" value="Female">Female<br><br>
			Height(cm):
			<input type="text" name="height"><br>
			Weight(kg):
			<input type="text" name="weight"><br>
			
			<input type="submit" value="Calculate">
		</form>
	</body>
</html>