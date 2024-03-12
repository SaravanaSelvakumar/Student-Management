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

public class Reslutser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	System.out.println("loaded");

		
		String regNo = request.getParameter("RollNo");
		int rollNo = Integer.parseInt(regNo);
		String lan = request.getParameter("language");
		String eng = request.getParameter("english");
		String math = request.getParameter("maths");
		String com = request.getParameter("computer");
		String grap = request.getParameter("grapics");
		String lab = request.getParameter("lab");
		

		// Parse the date string to java.sql.Date
		Connection con;
		 String query = "INSERT INTO Results (registration_number, LANGUAGE, ENGLISH, CORE_MAIN_I, CORE_MAIN_II, CORE_ALLIED, PART1_Lab_I) VALUES (?, ?, ?, ?, ?, ?, ?)";

		try {
			con = Dbcon.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, rollNo);
			preparedStatement.setString(2, lan);
			preparedStatement.setString(3, eng);
			preparedStatement.setString(4, math);
			preparedStatement.setString(5, com);
			preparedStatement.setString(6, grap);
			preparedStatement.setString(7, lab);

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

