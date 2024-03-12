package servletcam;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Aminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub


		try {

			String username1 = request.getParameter("Email");
			String password1 = request.getParameter("password");

			if (username1.equalsIgnoreCase("admin") && password1.equalsIgnoreCase("admin")) {
				response.sendRedirect("adminhome.jsp");
			} else
				response.sendRedirect("erroradm.html");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
