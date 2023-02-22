package rewards;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class RewardsServlet
 */
@WebServlet("/rewards")
public class RewardsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RewardsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		List<RewardsRes> rewardsRes = new ArrayList<>();
		int totalPoints = 0;
		
		
		int user_id = Integer.parseInt(request.getParameter("user_id"));
//		out.println("<h1>" + user_id + "</h1>");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "provisio_user", "password");
			Statement stmt = con.createStatement();
//			Resource: https://www.freecodecamp.org/news/sql-inner-join-how-to-join-3-tables-in-sql-and-mysql/
			ResultSet rs = stmt.executeQuery("SELECT * FROM reservation INNER JOIN user ON reservation.user_id = user.user_id INNER JOIN hotel ON reservation.hotel_id = hotel.hotel_id INNER JOIN place ON hotel.place_id = place.place_id WHERE reservation.user_id = " + user_id);
			
			while (rs.next()) {
//				User Table
				String first_name = rs.getString("first_name");
				String last_name = rs.getString("last_name");
				String email = rs.getString("email");
				
//				Reservation Table
				int id = rs.getInt("reservation_id");
				int adults = rs.getInt("adults");
				int children = rs.getInt("children");
				String instructions = rs.getString("instructions");
				String confirmation_code = rs.getString("confirmation_code");
				String check_in = rs.getString("check_in");
				String check_out = rs.getString("check_out");
				String room_type = rs.getString("room_type");
				int points = rs.getInt("points");
				
//				Place Table
				String city = rs.getString("city");
				String ind_state = rs.getString("ind_state");
				
//				Hotel Table
				String hotel_name = rs.getString("hotel_name");
				String descrip = rs.getString("descrip");
				String amenities = rs.getString("amenities");
				int zip = rs.getInt("zip");
				
//				out.println("<h3>User Table</h3>");
//				out.println("<strong>First Name: </strong>" + first_name);
//				out.println("<br>");
//				out.println("<strong>Last Name: </strong>" + last_name);
//				out.println("<br>");
//				out.println("<strong>Email: </strong>" + email);
//				out.println("<br>");
//				
//				out.println("<h3>Reservation Table</h3>");
//				out.println("<strong>Confirmation Code: </strong>" + confirmation_code);
//				out.println("<br>");
//				out.println("<strong>Check In: </strong>" + check_in);
//				out.println("<br>");
//				out.println("<strong>Check Out: </strong>" + check_out);
//				out.println("<br>");
//				out.println("<strong>Room Type: </strong>" + room_type);
//				out.println("<br>");
//				out.println("<strong>Points: </strong>" + points);
//				out.println("<br>");
//				out.println("<strong>Adults: </strong>" + adults);
//				out.println("<br>");
//				out.println("<strong>Children: </strong>" + children);
//				out.println("<br>");
//				out.println("<strong>Instructions: </strong>" + instructions);
//				out.println("<br>");
//				
//				out.println("<h3>Place Table</h3>");
//				out.println("<strong>City: </strong>" + city);
//				out.println("<br>");
//				out.println("<strong>State: </strong>" + ind_state);
//				out.println("<br>");
//								
//				out.println("<h3>Place Table</h3>");
//				out.println("<strong>Hotel Name: </strong>" + hotel_name);
//				out.println("<br>");
//				out.println("<strong>Amenities: </strong>" + amenities);
//				out.println("<br>");
//				out.println("<strong>Description: </strong>" + descrip);
//				out.println("<br>");
//				out.println("<strong>Zip Code: </strong>" + zip);
//				out.println("<br>");
				
				
				
				RewardsRes tempRes = new RewardsRes(id, first_name, last_name, email, adults, children, instructions, confirmation_code, check_in, check_out, room_type, points, city, ind_state, hotel_name, descrip, amenities, zip);;
				totalPoints += points;
				rewardsRes.add(tempRes);
				
			}
			
			request.setAttribute("totalPoints", totalPoints);
			request.setAttribute("rewardsResList", rewardsRes);
			request.getRequestDispatcher("rewards.jsp").forward(request, response);
			
		} catch (Exception exc) {
			out.println(exc);
		}
		
		
	}

}
