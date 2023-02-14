package booking;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BookingFormServlet
 */
@WebServlet("/BookingFormServlet")
public class BookingFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		HttpSession session = request.getSession();
		
//		Resource: https://www.freecodecamp.org/news/java-string-to-int-how-to-convert-a-string-to-an-integer/
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		String user_first = (String)session.getAttribute("first_name");
		String user_last = (String)session.getAttribute("last_name");
		String user_email = (String)session.getAttribute("email");
		String hotel_name = request.getParameter("hotel_name");
		int hotel_id = Integer.parseInt(request.getParameter("hotel_id"));
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");
		String room_type = request.getParameter("room_type");
		int adults = Integer.parseInt(request.getParameter("adults"));
		int children = Integer.parseInt(request.getParameter("children"));
		String instructions = request.getParameter("instructions");
		String hotel_amenities = request.getParameter("hotel_amenities");
		String hotel_descrip = request.getParameter("hotel_descrip");
		
//		Create an random generated number for confirmation
		String candidateStrings = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		int lengthOfCand = 8;
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
	
		for (int i = 0; i < lengthOfCand; i++) {
	        sb.append(candidateStrings.charAt(random.nextInt(candidateStrings.length())));
	    }
		
		String confirmationCode = sb.toString();
		
		
		
//		out.println("<br><br><h2>User Information</h2><br><br>");
//		out.println("User ID: " + user_id + "<br>");
//		out.println("User FIRST Name: " + user_first + "<br>");
//		out.println("User LAST Name: " + user_last + "<br>");
//		out.println("User EMAIL: " + user_email + "<br><br>");
//		
//		out.println("<h2>Hotel Information</h2><br><br>");
//		out.println("Hotel NAME: " + hotel_name + "<br>");
//		out.println("Hotel ID: " + hotel_id + "<br>");
//		out.println("Hotel AMENITIES: " + hotel_amenities + "<br>");
//		out.println("Hotel DESCRIPTION: " + hotel_descrip + "<br><br>");
//		
//		out.println("<h2>Reservation Information</h2><br><br>");
//		out.println("Check IN: " + check_in + "<br>");
//		out.println("Check OUT: " + check_out + "<br>");
//		out.println("Room TYPE: " + room_type + "<br>");
//		out.println("Adults: " + adults + "<br>");
//		out.println("Children: " + children + "<br>");
//		out.println("Instructions: " + instructions + "<br>");
//		out.println("Confirmation Code: " +  confirmationCode);
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "provisio_user", "password");
			Statement stmt = con.createStatement();
			String sql = "INSERT INTO reservation(user_id, hotel_id, confirmation_code, adults, children, check_in, check_out, room_type, instructions) VALUES (" + user_id + ", " + hotel_id + ", '" + confirmationCode + "', " + adults + ", " + children + ", '" + check_in + "', '" + check_out + "', '" + room_type + "', '" + instructions + "');";	
			stmt.executeUpdate(sql);
			request.setAttribute("submit", request.getParameter("submit"));
			request.getRequestDispatcher("reservations").forward(request, response);
			con.close();
		} catch(Exception e) {
			request.setAttribute("error", "Can't submit it to the database, check all fields have been filled out");
			request.getRequestDispatcher("error.jsp").forward(request, response);

		} 
		
		
		
//		request.setAttribute("hotel_descrip", hotel_descrip);
//		request.getRequestDispatcher("booking.jsp").forward(request,response);

		
	}

}
