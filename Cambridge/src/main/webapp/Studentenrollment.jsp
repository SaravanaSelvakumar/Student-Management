<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>university of Cambridge</title>
<link rel="icon" href="./img/titlelogo.png">
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .wrapper {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .input-box {
            margin-bottom: 20px;
        }

        .input-box label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }

        .input-box input {
            width: calc(100% - 170px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .button {
            text-align: center;
        }

        .button button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
	<div class="wrapper">
		<form action="Enrollmentser" method=post>
			<h1>Student Enrollment List</h1>


			<div class="input-box">
				<label>Registration Number : </label> <input type="text"
					name="Registration" placeholder="Course Name" required>
			</div>

			<div class="input-box">
				<label>Course Name : </label> <input type="text" name="course"
					placeholder="Course Name" required>
			</div>

			<div class="input-box">
				<label>Branch Name : </label> <input type="text" name="branch"
					placeholder="Branch Name" required>
			</div>

			<div class="input-box">
				<label>Student Name : </label> <input type="text" name="sname"
					placeholder="Full Name" required>
			</div>

			<div class="input-box">
				<label>Father Name : </label> <input type="text" name="fname"
					placeholder="Fathers Name" required>
			</div>

			
			<div class="input-box">
				<label>Gender : </label> <input type="text" name="Gender"
					placeholder="Gender" required>
			</div>

			<div class="input-box">
				<label>Date of birth : </label> <input type="text" placeholder="DOB"
					name="Email" required>
			</div>

			<div class="input-box">
				<label>Status : </label> <input type="text" name="Status" required>
			</div>

			<div class="button">
				<button type="submit" class="button">Submit</button>
			</div>

		</form>
	</div>

</body>
</html>