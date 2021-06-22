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
import javax.servlet.http.HttpSession;

import com.flyaway.utils.DataBaseUtils;

@WebServlet("/FlightsServlet")
public class FlightsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String departure = request.getParameter("from");
		String arrival = request.getParameter("to");
		String flight_date = request.getParameter("Flight_Date");
		Integer passengers = Integer.parseInt(request.getParameter("Passenger"));

		HttpSession session = request.getSession();

		session.setAttribute("Passenger", passengers);
		session.setAttribute("Flight_Date", flight_date);

		String strsql = "SELECT * FROM flights WHERE departure = '" + departure.trim() + "' AND arrival = '" + arrival.trim() + "'";

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		out.println("<html>"
				+ "<head>"
				+ "<style>"+".button "
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
			 + " float: right;"
			 + "}"
			 + ".button:hover {\n"
			 + "  background-color: #4CAF50;\n"
			 + "  color: white;\n"
			 + "}"
			 + "#customers {\n"
			 + "  font-family: Arial, Helvetica, sans-serif;\n"
			 + "  border-collapse: collapse;\n"
			 + "  width: 100%;\n"
			 + "}\n"
			 + "\n"
			 + "#customers td, #customers th {\n"
			 + "  border: 1px solid #ddd;\n"
			 + "  padding: 8px;\n"
			 + "}\n"
			 + "\n"
			 + "#customers tr:nth-child(even){background-color: #f2f2f2;}\n"
			 + "\n"
			 + "#customers tr:hover {background-color: #ddd;}\n"
			 + "\n"
			 + "#customers th {\n"
			 + "  padding-top: 12px;\n"
			 + "  padding-bottom: 12px;\n"
			 + "  text-align: left;\n"
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
			 + "}"
			 + "</style>"
			 + "</head>"
			 + "<body>"
				+ "<img alt=\"banner\" src=\"img/planes-banner.jpg\" style=\"width:75%\">");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DataBaseUtils.getConnection();
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery(strsql);
			
			out.println("<br><h1>Flights available : </h1><a href=\"Index.jsp\"><button class=\"button \">Modify Search</button>"
					+ "</a><br><table id=\"customers\"> <table id=\"customers\"");
			out.println(" \"<tr><th>FlightID</th><th>Flight_Numb</th><th>Airlines</th><th>From :</th><th>To :</th><th>Date :</th>"
					+ "<th>Time :</th><th>Duration</th><th>Price</th><th> </th><tr>\"");

			while (result.next()) {
				String FlightID = result.getString("flight_ID");
				String Flight_Numb = result.getString("flight_numb");
				String Airlines = result.getString("airlines");
				String Departure = result.getString("departure");
				String Arrival = result.getString("arrival");
				String Flight_Date = result.getString("flight_date");
				String Flight_Time = result.getString("flight_time");
				String Duration = result.getString("duration");
				String Price = result.getString("price");

				out.println("<tr><td>" + FlightID + "</td><td>" + Flight_Numb + "</td><td>" + Airlines + "</td><td>"
						+ Departure + "</td><td>" + Arrival + "</td><td>" + Flight_Date + "</td><td>" + Flight_Time
						+ "</td><td>" + Duration + "</td><td>" + Price
						+ "</td><td><a href='register.jsp?flight_ID=" + FlightID + "&flight_numb=" + Flight_Numb
						+ "&airlines=" + Airlines + "&departure=" + Departure + "&arrival=" + Arrival + "&flight_date="
						+ Flight_Date + "&flight_time=" + Flight_Time + "&duration=" + Duration + "&price=" + Price
						+ "&flight_date=" + flight_date + "&passenger=" + passengers + "'>Select</a></td></tr>");
			}
			out.println("</table>");
			out.println("</html></body>");
			connection.close();
			statement.close();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("Connection lost, please try again." + e.getMessage());
		}
	}
}
