<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
<link rel="icon" href="./img/titlelogo.png">
<link rel="stylesheet" href="./css/regsiter.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
</head>
<body>


<div class="wrapper"> 
    <form action="Regservlet" method="post">  <h1>Student Registration Form</h1>
        <div class="input-box">
             <input type="text" name="name" placeholder="Full Name" required>
             <i class='bx bx-info-circle'></i>
         </div>
          <div class="input-box">
             <input type="date" name="dob" placeholder="Date of Birth" required>
         </div>
         
 
         <div class="input-box">
             <input type="email" name="mail" placeholder="Email" required>
             <i class='bx bxs-envelope'></i>
         </div>
         
           <div class="input-box">
           <input type="text"  name="PhoneNumber" placeholder="Phone Number" required>
           <i class='bx bxs-phone'></i>
         </div>
         
         <div class="input-box">
             <input type="password" name="pass" placeholder="password" required>
             
         </div>
         <div class="input-box">
             <input type="password" name="conpass" placeholder="Confirm password" required>
             
         </div>
         <div class="remember-forgot">
             <label><input type="checkbox"> I hereby declare that the above information provided is true and accurate.</label>
         </div >
         <button type="submit" class="button">Submit</button>
         <div class="register-link">
             <p>Click to Log-in  <a href="Admision.jsp">Login-here</a></p>
         </div>
         </form>
</div>
</body></html>