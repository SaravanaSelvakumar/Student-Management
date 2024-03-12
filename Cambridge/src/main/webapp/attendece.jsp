<%@page import="camprocon.Dbcon" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>University of Cambridge</title>
<link rel="icon" href="./img/titlelogo.png">
<style>
/* Style for table */
.head {
    margin-top: 30px;
    width: 100%;
}

.tbl-header table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    border: 1px solid #ddd;
}

.tbl-header th {
    background-color: #d0cdcd;
    font-weight: bold;
    text-align: center;
    padding: 8px;
    border: 1px solid #292828;
}

/* Style for table data */
.tbl-data table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    border: 1px solid #ddd;
}

.tbl-data td {
    text-align: center;
    padding: 8px;
    border: 1px solid #ddd;
}

.tbl-data tr:nth-child(even) {
    background-color: #f2f2f2;
}

.tbl-data tr:nth-child(odd) {
    background-color: #fff;
}

.center {
    text-align: center;
    margin-top: 20px;
}

.center a {
    text-decoration: none;
    padding: 20px;
    background-color: #4CAF50;
    color: white;
    border-radius: 5px;
}

.center a:hover {
    background-color: #45a049;
}
.back{
    text-align: center;
    margin-top: 20%;
}

.back a{
    color: #f8f9fa;
    background-color: black;
    text-decoration: none;
    border: none;
    border-radius: 5px;
    padding: 15px;
   
} 
.back a:hover{
    background-color: #979a9e;
    color: #000000;
  }


</style>
</head>
<body>

<%
try {
    String studentName = request.getParameter("name");
    Connection con = Dbcon.getConnection();
    PreparedStatement ps = con.prepareStatement("SELECT * FROM Attendance WHERE registration_number = ?");
    ps.setString(1, studentName);
    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
%>

	<!-- header -->
	<div class="head">
		<div class="tbl-header">
			<table>
				<thead>
					<tr>
						<th>Reg No</th>
						<th>Course</th>
						<th>Branch</th>
						<th>Student Name</th>
						<th>Staff Name</th>
						<th>Semester</th>
						<th>Percentage</th>
						<th>Status</th>
					</tr>
				</thead>
			</table>
		</div>

		<div class="center">
			<div class="tbl-data">
				<table>
					<tbody>
						<tr>
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
<div class="back">
 <a href="Studentservice.jsp">Back</a>
 </div>

<%
    } else {
        response.sendRedirect("Attendencelogin.jsp");
    }
    
    // Close resources
    rs.close();
    ps.close();
    con.close();
} catch(Exception e) {
    e.printStackTrace();
}
%>

</body>
</html>
