<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Prime Display</title>
	</head>
	<body>
		<%
			int n = Integer.parseInt(request.getParameter("num"));
			boolean isPrime = true;
			
			if(n <= 1) {
				isPrime = false;
			}
			
			else {
				for(int i=2; i<=n/2; i++) {
					if(n % i == 0) {
						isPrime = false;
						break;
					}
				}	
			}
		%>
		<h2>
			<%= n %> is
			<%= (isPrime? "Prime" : "Not Prime") %>
		</h2>
	</body>
</html>