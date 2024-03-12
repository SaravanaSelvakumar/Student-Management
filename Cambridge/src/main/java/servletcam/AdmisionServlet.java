package servletcam;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import camprocon.Dbcon;

public class AdmisionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher;
		Connection con;
		String query = "SELECT email, password FROM users WHERE email = ? AND password = ?";

		try {
		    con = Dbcon.getConnection();

		    String email = request.getParameter("Email");
		    String password = request.getParameter("password");

		    PreparedStatement preparedStatement = con.prepareStatement(query);
		    preparedStatement.setString(1, email);
		    preparedStatement.setString(2, password);

		    ResultSet rs = preparedStatement.executeQuery();

		    if (rs.next()) {
		        dispatcher = request.getRequestDispatcher("Studentadm.jsp");
		        dispatcher.forward(request, response);
		    } else {
		        dispatcher = request.getRequestDispatcher("Admision.jsp");
		        dispatcher.forward(request, response);
		    }
		    con.close();
		} catch (Exception e) {
		    e.printStackTrace();
		}
	}
}
