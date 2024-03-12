<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cambridge Admission</title>
<link rel="icon" href="./img/titlelogo.png">
<link rel="stylesheet" href="./css/Admisiion.css">
 <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

	<div class="wrapper">
		<form action="AdmisionServlet" method=post>
			<h1>Students Log in</h1>
			<div class="input-box">			
				<input type="email" name="Email" placeholder="Student@mail.com" required />
				<i class='bx bxs-user-account'></i>
			</div>
			<div class="input-box">
				<input type="password" name="password" placeholder="password"
					required /> 

			</div>
			<div class="remember-forgot">
				<label><input type="checkbox"> Remember-me</label> <a
					href="#">Forgot Password</a>
			</div>
			<button type="submit" class="button">Login</button>
			<div class="register-link">
				<p>
					Don't have an account? <a href="regsiter.jsp">Register-here</a>
				</p>
				</div>
				<div class="back">
				<a href="adhome.jsp">Go-back</a>	
		</div>	
	</form>
	</div>

</body>
</html>