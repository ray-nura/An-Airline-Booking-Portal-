package com.flyaway;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import com.flyaway.database.DBBooking;
import com.flyaway.utils.HibernateUtils;

@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String FlightID = request.getParameter("flight_ID");
		String Flight_Numb = request.getParameter("Flight_Numb");
		String Airlines = request.getParameter("Airlines");
		String Departure = request.getParameter("Departure");
		String Arrival = request.getParameter("Arrival");
		String Flight_Date = request.getParameter("Flight_Date");
		String Flight_Time = request.getParameter("Flight_Time");
		String Duration = request.getParameter("Duration");
		String Price = request.getParameter("Price");
		String Passenger = request.getParameter("Passenger");
		String Total_Price = request.getParameter("total_price");
		String First_Name = request.getParameter("firstname");
		String Last_Name = request.getParameter("lastname");
		String Phone_number = request.getParameter("phone");
		String Email = request.getParameter("email");
		String Card_No = request.getParameter("card_no");
		String CVC_No = request.getParameter("cvc_no");
		String Exp_Date = request.getParameter("exp_date");

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		try {
			Session session = HibernateUtils.getSessionFactory().openSession();
			DBBooking book = new DBBooking(First_Name, Last_Name, Phone_number, Email, Flight_Date, Flight_Numb, Total_Price, Card_No);
			session.beginTransaction();
			session.save(book);
			session.getTransaction().commit();
			session.close();
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
					+ "<h1 >Thank you for choosing us! </h1>"
					+ "<div align=center>"
					+ "<a href=\"Index.jsp\"><button class=\"button\">Go back to main page</button></a>"
					+ "<h1>Flight Details</h1>");
			
			out.println("<b>Flight Numb :  "+"</b>"+Flight_Numb+"</br>");
			out.println("<b>Airlines :  "+"</b>"+Airlines+"</br>");
			out.println("<b>Departure :  "+"</b>"+Departure+"</br>");
			out.println("<b>Flight_Date :  "+"</b>"+Flight_Date+"</br>");
			out.println("<b>Flight_Time :  "+"</b>"+Flight_Time+"</br>");
			out.println("<b>Duration :  "+"</b>"+Duration+"</br>");
			out.println("<b>Price :  "+"</b>"+Price+"</br>");
			out.println("<b>Passenger :  "+"</b>"+Passenger+"</br>");
			out.println("<b>Total_Price :  "+"</b>"+Total_Price+"</br>");
			out.println("<b>First_Name :  "+"</b>"+First_Name+"</br>");
			out.println("<b>Last_Name :  "+"</b>"+Last_Name+"</br>");
			out.println("<b>Phone_number :  "+"</b>"+Phone_number+"</br>");
			out.println("<b>Card_No :  "+"</b>"+Card_No+"</br>");
			out.println("<b>Email :  "+"</b>"+Email+"</br>");
			out.println("</div><hr>\n</body>\n</html>");
		}
		  catch(Exception ex) { out.
		  println("<h3>We are unable to process your transaction. Please recheck your payment details</h3><br>" ); 
		  }
		 finally {
			 HibernateUtils.getSessionFactory().close();
		}
	}
}
