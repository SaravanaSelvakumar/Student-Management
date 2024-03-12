<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>university of Cambridge</title>
<link rel="stylesheet" href="./css/admin.css">
</head>
<body>

	<div class="wrapper">
		<form action="Aminservlet" method=post>
			<h1>Admin Log in</h1>

			<div class="input-box">			
				<input type="text" name="Email" placeholder="**************" required />
			</div>  

			<div class="input-box">
				<input type="password" name="password" placeholder="**************"
					required /> 
			</div>

            <div>
			<button type="submit" class="button">Login</button>
            </div><br>

			<div class="back">
				<a href="index.jsp">Go-back</a>
            </div>		
	</form>
	</div>
	
	
</body>
</html>