<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>university of Cambridge</title>
<link rel="icon" href="./img/titlelogo.png">
<link rel="stylesheet" href="./css/">
<style>
  /* Style for buttons */
  .navbar {
    overflow: hidden;
    background-color: #000;
	border: 2px solid #000;
  }
  
  .navbar button {
    float: left;
    display: block;
    color: #fff;
	background-color: #000;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
    font-size: 17px;
    border: none;
    cursor: pointer;
  }

  .navbar button:hover {
    background-color: #f6f6f6;
    color: rgb(0, 0, 0);
  }

  /* Clear floats after the buttons */
  .navbar:after {
    content: "";
    display: table;
    clear: both;
  }
  
  .logout a {
  position: absolute;
    color: #f8f9fa;
    background-color: transparent;
    text-decoration: none;
    border: none;
    border-radius: 4px;
    padding: 12px;
    font-family:"Roboto", serif;
    font-size:medium;
    font-weight: 400;
    border: 1px solid #f8f9fa;
    left: 40%;
  }
  
  .logout a:hover{
    background-color: #f8f9fa;
    color: #000000;
  }
</style>
<script>
  function loadJSP(filename) {
    // Create a new XMLHttpRequest object
    var xhttp = new XMLHttpRequest();

    // Define the function to handle the response
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        // Replace the content of a div with id "content" with the loaded HTML
        document.getElementById("content").innerHTML = this.responseText;
      }
    };

    // Open the request with the method and filename
    xhttp.open("GET", filename, true);
    
    // Send the request
    xhttp.send();
  }
</script>
</head>
<body>

<!-- Buttons to load different HTML files -->
<div class="navbar">
  <button onclick="loadJSP('Studentform.jsp')">Admission</button>
  <button onclick="loadJSP('Studentenrollment.jsp')">Admission Enrollment</button>
  <button onclick="loadJSP('adminresult.jsp')">Results</button>
  <button onclick="loadJSP('adminattendence.jsp')">Attendance</button>
   <div class="logout">
    <a href="index.jsp">Log-out</a>
    </div>
</div>
 

<!-- Container to display the loaded HTML -->
<div id="content"></div>

</body>
</html>
