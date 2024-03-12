package servletcam;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import camprocon.Dbcon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Studentform extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

//	@WebServlet("/")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("loaded");

		String course = request.getParameter("Course");
		String branch = request.getParameter("Branch");
		String name = request.getParameter("Name");
		String fatherName = request.getParameter("FathersName");
		String motherName = request.getParameter("MothersName");
		String regNO = request.getParameter("Register");
		int rollNo = Integer.parseInt(regNO);
		String dobStr = request.getParameter("dob");
		String gender = request.getParameter("Gender");
		String email = request.getParameter("Email");
		String address = request.getParameter("Address");
		String number = request.getParameter("Phone");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");

		// Parse the date string to java.sql.Date
		java.sql.Date dob = null;
		Connection con;

		String query = "INSERT INTO students (course, branch, name, father_name, mother_name, registration_number, date_of_birth, gender, email, address, phone_number, password,repassword) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date parsedDate = dateFormat.parse(dobStr);
			dob = new java.sql.Date(parsedDate.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		try {
			con = Dbcon.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, course);
			preparedStatement.setString(2, branch);
			preparedStatement.setString(3, name);
			preparedStatement.setString(4, fatherName);
			preparedStatement.setString(5, motherName);
			preparedStatement.setInt(6, rollNo);
			preparedStatement.setDate(7, dob);
			preparedStatement.setString(8, gender);
			preparedStatement.setString(9, email);
			preparedStatement.setString(10, address);
			preparedStatement.setString(11, number);
			preparedStatement.setString(12, password);
			preparedStatement.setString(13, repassword);

			int rowsInserted = preparedStatement.executeUpdate();
			if (rowsInserted > 0) {
				response.sendRedirect("adhome.jsp");
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
