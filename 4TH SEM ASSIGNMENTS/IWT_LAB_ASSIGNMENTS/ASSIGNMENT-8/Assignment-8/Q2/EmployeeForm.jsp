<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Employee details Form</title>
	</head>
	<body>
		<h1>Employee Form</h1>
		<form action="EmpDisplay.jsp">
			Employee-ID:
			<input type="text" name="id"><br><br>
			Name:
			<input type="text" name="name"><br><br>
			Mobile No:
			<input type="text" name="mobno"><br><br>
			Email:
			<input type="email" name="email"><br><br>
			Gender:
			<input type="radio" name="gender" value="Male">Male
			<input type="radio" name="gender" value="Female">Female<br><br>
			DOB:
			<input type="date" name="dob"><br><br>
			Address:<br>
			<textarea name="address"></textarea><br><br>
			Country:
			<select name="country">
				<option value="India">India</option>
				<option value="Other">Other</option>
			</select><br><br>
			Languages Known:
			<input type="checkbox" name="lang" value="Odia">Odia
			<input type="checkbox" name="lang" value="Hindi">Hindi
			<input type="checkbox" name="lang" value="English">English
			<input type="checkbox" name="lang" value="Bengali">Bengali
			<br><br>
			
			<input type="submit" value="Submit">
		</form>
	</body>
</html>