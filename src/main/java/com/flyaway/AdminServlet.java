package com.flyaway;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import com.flyaway.database.DBFlights;
import com.flyaway.utils.HibernateUtils;


@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
   			throws ServletException, IOException {
	
   		String flight_numb= request.getParameter("flight_numb");
   		String airlines = request.getParameter("airlines");
		String from=request.getParameter("from");
		String to = request.getParameter("to");
		String Flight_Date = request.getParameter("Flight_Date");
		String Flight_Time = request.getParameter("Flight_Time");
		String duration = request.getParameter("duration");
		String price = request.getParameter("price");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();  
		
		try
		{	
			Session session = HibernateUtils.getSessionFactory().openSession();
			DBFlights flights = new DBFlights(flight_numb, airlines, from, to, Flight_Date, Flight_Time, duration, price);
			session.beginTransaction();
			session.save(flights);
			session.getTransaction().commit();
			session.close();
			HibernateUtils.getSessionFactory().close();
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
					+ "<h1>A new flight is added to the system!</h1>"	
					+ "<a href=\"admin_page.html\"><button class=\"button\">Admin page</button></a>"
					+ "<a href=\"Index.jsp\" style=\"text-align: center\"><button class=button><strong>Log out</strong></button></a>"
					+ "</div><hr>\n</body>\n</html>");
		}
		  catch(Exception ex) { 
			  out.println("<h3>There seems to be a problem with connection. </h3><br>"); }
		finally
		{
			 HibernateUtils.getSessionFactory().close();
		}
   	}
}
