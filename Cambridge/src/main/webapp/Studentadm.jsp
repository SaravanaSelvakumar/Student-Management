<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>university of Cambridge</title>
<link rel="icon" href="./img/titlelogo.png">
<link rel="stylesheet" href="./css/Studentadmision.css">
</head>


<body>
	<!-- header -->
	<div class="wrapper">
		<form action="Studentform" method="post">
			<h1>Student Admission Form</h1>

			<div class="input-box">
				<label>Course : </label> <input type="text" name="Course"
					placeholder="Course Name" required>
			</div>

			<div class="input-box">
				<label>Branch : </label> <input type="text" name="Branch"
					placeholder="Branch Name" required>
			</div>

			<div class="input-box">
				<label>Name : </label> <input type="text" name="Name"
					placeholder="Full Name" required>
			</div>

			<div class="input-box">
				<label>Fathers Name : </label> <input type="text" name="FathersName"
					placeholder="Fathers Name" required>
			</div>

			<div class="input-box">
				<label>Mothers Name: </label> <input type="text" name="MothersName"
					placeholder="Mothers Name" required>
			</div>

			<div class="input-box">
				<label>Register Number : </label> <input type="text" name="Register"
					placeholder="Highschool Register-Number" required>
			</div>

			<div class="input-box">
				<label>Date Of Birth : </label> <input type="date" name="dob"
					placeholder="Date of Birth" required>
			</div>

			<div class="input-box">
				<label>Gender : </label> <input type="text" name="Gender"
					placeholder="Gender" required>
			</div>

			<div class="input-box">
				<label>Email : </label> <input type="email" name="Email"
					placeholder="Email" required>
			</div>

			<div class="input-box">
				<label>Address : </label> <input class="address" type="text"
					name="Address" placeholder="Address" required>
			</div>

			<div class="input-box">
				<label>Phone Number : </label> <input type="text" name="Phone"
					placeholder="Phone Number" required>
			</div>

			<div class="input-box">
				<label>Password : </label> <input type="password" name="password"
					placeholder="password" required>

			</div>
			<div class="input-box">
				<label>Confirm password : </label> <input type="password"
					name="repassword" placeholder="Confirm password" required>
			</div>

			<div class="remember-forgot">
				<label><input type="checkbox"> I hereby declare that
					the above information provided is true and accurate.</label>
					</div>

				<button type="submit" class="button">Submit</button>
				
				 <div class="logout">
    <a href="adhome.jsp">Log-out</a>
    </div>
		</form>
	</div>

</body>
</html>