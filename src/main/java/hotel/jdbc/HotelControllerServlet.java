package hotel.jdbc;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import javax.sql.rowset.serial.SerialException;

import com.apple.laf.AquaGroupBorder;

import hotel.jdbc.HotelDbUtil;

/**
 * Servlet implementation class HotelControllerServlet
 */
@WebServlet("/HotelControllerServlet")
public class HotelControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    private HotelDbUtil hotelDbUtil;
//Conn pool / Datasource
    @Resource(name="jdbc/provisio")
    private DataSource dataSource;
    
	@Override
	public void init() throws ServletException {
		super.init();
		//create our hotel db util ... and pass in con pool/ datasource object
	try {
        hotelDbUtil = new HotelDbUtil(dataSource);

	  }
      catch(Exception exc){
        throw new ServletException(exc);

      }
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       try{
        // list the hotels... in MVC fashion
        listHotels(request, response);
       }
       catch(Exception exc){
        throw new ServletException(exc);
       }
    }


	private void listHotels(HttpServletRequest request, HttpServletResponse response) 
        throws Exception {
       // throw exceptions to 1 central calling location to handle at once
       // Modifying the signature for listHotels
       

        // get hotels from db util 
        List<Hotel> hotels = HotelDbUtil.getHotels();

        // add hotels to the request
        request.setAttribute("HOTEL_LIST", hotels);  // set attribute Name and actual object/value
       
        // send to JSP page (view); send data over to jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/list-hotels.jsp");
        dispatcher.forward(request, response);

	}

}

