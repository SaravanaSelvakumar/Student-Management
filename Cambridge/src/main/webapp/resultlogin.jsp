<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cambridge Admission</title>
<link rel="icon" href="./img/titlelogo.png">
<link rel="stylesheet" href="./css/Admisiion.css">
</head>
<body>
	<div class="wrapper">
		<form action="result.jsp" method=post>
			<h1>Result Look-Up</h1>
			
			<div class="input-box">
				<input type="text" name="name" placeholder="Enter Register Number"
					required="required">
			</div>
			<div class="remember-forgot">
				<label></label> 
			</div>
			<button type="submit" class="button">Check</button>
			<div class="register-link">
				</div>

			<div class="back">
				<a href="Studentservice.jsp">Go-back</a>
			</div>

		</form>
	</div>
</body>
</html>