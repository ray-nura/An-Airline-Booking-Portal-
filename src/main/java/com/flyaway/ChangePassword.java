package com.flyaway;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.flyaway.utils.DataBaseUtils;

@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
		String admin = request.getParameter("name").trim();
		String pwd = request.getParameter("new_password").trim();
		
		response.setContentType("text/html"); 
		PrintWriter out = response.getWriter(); 
		
		
		String strsql = "Update admin SET password = '" + pwd + "' where user_name = '" + admin + "'";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DataBaseUtils.getConnection();
			Statement statement = connection.createStatement();
			
			if(statement.executeUpdate(strsql) > 0)
			{
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
						+ "<h1 >Welcome to FLY-AWAY Company </h1>"
						+ "<div align=center>"
						+ "<a href=\"Index.jsp\"><button class=\"button\">Home page</button></a>"
						+ "<h1>Password Changed Succesfully!</h1>"	
						+ "<a href=\"admin_page.jsp\"><button class=\"button\">Admin page</button></a>"
						+ "<a href=\"logout\" style=\"text-align: center\"><button class=button><strong>Log out</strong></button></a>"
						+ "</div>\n</body>\n</html>");
				connection.close();
				statement.close();
			}else {
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
						+ "<h1 >Welcome to FlyAway Company </h1>"
						+ "<div align=center>"
						+ "<a href=\"Index.jsp\"><button class=\"button\">Home page</button></a>"
						+ "<h1>Password Has not Changed </h1>"	
						+ "<a href=\"admin_page.html\"><button class=\"button\">Admin page</button></a>"
						+ "</div>\n</body>\n</html>");
			}
			connection.close();
			statement.close();
		}
		catch (SQLException | ClassNotFoundException e) {
			out.println("Error Has Occured, Try Again " + e.getMessage());
		}
	}
}
