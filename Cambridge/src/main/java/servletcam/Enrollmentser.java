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

public class Enrollmentser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Enrollmentser() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("loaded");

		
		String regNo = request.getParameter("Registration");
		int rollNo = Integer.parseInt(regNo);
		String course = request.getParameter("course");
		String branch = request.getParameter("branch");
		String name = request.getParameter("sname");
		String fatherName = request.getParameter("fname");
		String gender = request.getParameter("Gender");
		String email = request.getParameter("Email");
		String status = request.getParameter("Status");

		// Parse the date string to java.sql.Date
		Connection con;
		String query = "INSERT INTO enrollment (roll_number, course, branch, student_name, father_name, gender, email, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			con = Dbcon.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, rollNo);
			preparedStatement.setString(2, course);
			preparedStatement.setString(3, branch);
			preparedStatement.setString(4, name);
			preparedStatement.setString(5, fatherName);
			preparedStatement.setString(6, gender);
			preparedStatement.setString(7, email);
			preparedStatement.setString(8, status);

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