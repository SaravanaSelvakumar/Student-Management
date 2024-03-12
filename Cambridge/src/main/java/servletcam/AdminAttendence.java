package servletcam;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import camprocon.Dbcon;

public class AdminAttendence extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		System.out.println("loaded");

		String regNo = request.getParameter("Registration");
		int rollNo = Integer.parseInt(regNo);
		String cour = request.getParameter("course");
		String lan = request.getParameter("branch");
		String eng = request.getParameter("Student");
		String math = request.getParameter("Staff");
		String com = request.getParameter("Semster");
		String grap = request.getParameter("Percentage");
		String lab = request.getParameter("Status");

		// Parse the date string to java.sql.Date
		Connection con;
		String query = "INSERT INTO Attendance (registration_number, Course_name, branch_name, Student_name, Staff_name, Semester, Percentage, Status) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			con = Dbcon.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, rollNo);
			preparedStatement.setString(2, cour);
			preparedStatement.setString(3, lan);
			preparedStatement.setString(4, eng);
			preparedStatement.setString(5, math);
			preparedStatement.setString(6, com);
			preparedStatement.setString(7, grap);
			preparedStatement.setString(8, lab);

			// Execute the statement
			int rowsInserted = preparedStatement.executeUpdate();
			if (rowsInserted > 0) {
				response.sendRedirect("adminhome.jsp");
				System.out.println("A new student record was inserted successfully!");
			} else {
				String errorMessage = "Failed to insert data into the database. Please try again later.";
				request.setAttribute("errorMessage", errorMessage);
				System.out.println("Failed to insert a new student record!");
			}
			// Close resources
			preparedStatement.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
	}
}