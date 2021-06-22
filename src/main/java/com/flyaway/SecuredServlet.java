package com.flyaway;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyaway.utils.DataBaseUtils;

@WebServlet("/SecuredServlet")
public class SecuredServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String admin = request.getParameter("adminname");
		String pwd = request.getParameter("password");
		String strsql = "SELECT * FROM admin WHERE user_name = '" + admin + "'";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection connection = DataBaseUtils.getConnection();
			Statement statement = connection.createStatement();

			ResultSet result = statement.executeQuery(strsql);

			while (result.next()) {
				String User_Name = result.getString("user_name");

				String Password = result.getString("password");

				if (User_Name.equals(admin) && Password.equals(pwd) && admin != null) {
					response.sendRedirect("admin_page.jsp");
					
				} else {
					response.setContentType("text/html"); 
					PrintWriter out = response.getWriter(); 
					out.println("<html>\n"
							+ "<head>\n"
							+ "<meta charset=\"UTF-8\">\n"
							+ "<style>\n"
							+".button "
							+ "{"
							 +"background-color: #4CAF50;"
							 + "border: none;"
							 + " color: white;"
							 + "padding: 16px 32px;"
							 + "text-align: center;"
							 + "text-decoration: none;"
							 + "display: inline-block;"
							 + "font-size: 16px;"
							 + "margin: 4px 2px;"
							 + "transition-duration: 1s;"
							 + "cursor: pointer;"
							 + "background-color: white; \n"
							 + "  color: black; \n"
							 + "  border: 2px solid #4CAF50;"
							 + " align: center;"
							 + "}"
							 + ".button:hover {\n"
							 + "  background-color: #4CAF50;\n"
							 + "  color: white;\n"
							 + "}"
								+ "h1 {\n"
							+ "  text-align: center;\n"
							+ " color: #4CAF50;\n"
							+ " }\n"
							+ "img {\n"
							+ "  display: block;\n"
							+ "  margin-left: auto;\n"
							+ "  margin-right: auto;\n"
							+ "}\n"
							+ "</style>\n"
							+ "<title>Header</title>\n"
							+ "</head>\n"
							+ "<body>\n"
							+ "<img alt=\"banner\" src=\"img/planes-banner.jpg\" style=\"width:75%\">\n"
							+ "<h1 >Welcome to FlyAway</h1>"
							+ "<div align=center>"
							+ "<a href=\"Index.jsp\"><button class=\"button\">Home page</button></a>"
							+ "<h1>Password Incorrect, Try Again</h1>"	
							+ "<a href=\"admin.jsp\"><button class=\"button\">Admin Login</button></a>"
							+ "</div>\n</body>\n</html>");
				}
			}
			connection.close();
			statement.close();
		} catch (SQLException | ClassNotFoundException e) {

			System.out.println("System Error, Please try again." + e.getMessage());
		}

	}

}
