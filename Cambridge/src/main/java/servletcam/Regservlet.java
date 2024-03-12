package servletcam;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import camprocon.Dbcon;

public class Regservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("servlet loaded");
		String sname = request.getParameter("name");
		String dobStr = request.getParameter("dob");
		String email = request.getParameter("mail");
		String number = request.getParameter("PhoneNumber");
		String password = request.getParameter("pass");
		String repassword = request.getParameter("conpass");

		// Parse the date string to java.sql.Date
		java.sql.Date dob = null;
		Connection con;
		// Obtain the RequestDispatcher object
		RequestDispatcher dispatcher;

		// Forward the request to another servlet
		

		String query = "INSERT INTO users (name, date_of_birth, email, phone_number, password, confirm_password) VALUES (?, ?, ?, ?, ?, ?)";
		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date parsedDate = dateFormat.parse(dobStr);
			dob = new java.sql.Date(parsedDate.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		try {
			con =Dbcon.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, sname);
			preparedStatement.setDate(2, dob); // Set the date
			preparedStatement.setString(3, email);
			preparedStatement.setString(4, number);
			preparedStatement.setString(5, password);
			preparedStatement.setString(6, repassword);
			

			// Execute the query
			preparedStatement.executeUpdate();

			// Close resources
			preparedStatement.close();
			con.close();
			
			dispatcher =request.getRequestDispatcher("regsiter.jsp");
					dispatcher.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
