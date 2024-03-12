<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>university of Cambridge</title>
<link rel="icon" href="./img/titlelogo.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
/* Style for table */.tbl-header table {
    margin-top: 30px;
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    border: 1px solid #ddd;
}

.tbl-header th {
    background-color: #d0cdcd;
    font-weight: bold;
    text-align: center; /* Center align header text */
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
    text-align: center; /* Center align table data */
    padding: 8px;
    border: 1px solid #ddd;
}

.tbl-data tr:nth-child(even) {
    background-color: #f2f2f2;
}

.tbl-data tr:nth-child(odd) {
    background-color: #fff;
}
</style>

</head>
<body>

	<!-- header -->
	<div class="head">
		<div class="tbl-header">
			<table>
				<thead>
					<tr>
						<th>Course Name</th>
						<th>Branch Name</th>
						<th>Student Name</th>
						<th>Father Name</th>
						<th>Mother Name</th>
						<th>Register Number</th>
						<th>Date of Birth</th>
						<th>Gender</th>
						<th>Email</th>
						<th>Address</th>
						<th>Phone Number</th>
					</tr>
				</thead>
			</table>
		</div>


		<div class="center">
			<div class="tbl-data">
				<table>
					<tbody>

						<%@page import="java.sql.*"%>
						<%@page import="camprocon.Dbcon"%>
						<%@page import="java.io.*"%>
						<%
						try {
							Connection con = Dbcon.getConnection();
							Statement st = con.createStatement();
							ResultSet rs = st.executeQuery("select * from students");
							while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
							<td><%=rs.getString(9)%></td>
							<td><%=rs.getString(10)%></td>
							<td><%=rs.getString(11)%></td>
						</tr>
					</tbody>
					<%
					}
					} catch (Exception e) {
					}
					%>
				</table>
			</div>
		</div>
	</div>
	<!-- header -->
</body>
</html>
