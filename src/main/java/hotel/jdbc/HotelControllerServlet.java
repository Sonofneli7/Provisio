
package hotel.jdbc;

import java.sql.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import java.sql.Connection;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/HotelControllerServlet")
public class HotelControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// Define datasource/connection for Resource Injection
	@Resource(name="jdbc/provisio")
	private DataSource dataSource;




	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		

		// Step 1: Set up the printwriter
		// code that sends out info to the browser
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		

		// Step2: Get a connection to the database
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try{
			myConn = dataSource.getConnection();

			//  Step 3: Create SQL stmts
			String sql ="select * from hotel;";
			myStmt = myConn.createStatement();

			// Step 4: Execute SQLe query
			// returns a result set that gets assigned to myRs
			myRs = myStmt.executeQuery(sql);

			//  Step 5: Process the result set
			while(myRs.next()) {
				String hotelName = myRs.getString("hotel_name");
				out.println(hotelName);
			}
	}
	catch(Exception exc){
		exc.printStackTrace();
		}
	}
}





