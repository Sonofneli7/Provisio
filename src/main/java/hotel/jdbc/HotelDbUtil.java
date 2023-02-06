package hotel.jdbc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class HotelDbUtil {
// set up reference to a datasource
	private DataSource dataSource;
	
	public HotelDbUtil(DataSource theDataSource) {
		//creating constructor
		//assigning dataSource, 
		//theDataSource = parameter passed into constructor
		
		dataSource = theDataSource;
		
	}	
	// method that will list the hotels
	// method getHotels
	// get list of hotels from db and then return it
	
		public List<Hotel> getHotels() throws Exception {
			
			List<Hotel> hotels = new ArrayList<>();
			
			Connection myConn = null;
			Statement myStmt = null;
			ResultSet myRs = null;
			
			try {
			// get  a connection
			myConn = dataSource.getConnection();

			// create a sql stmt
			String sql =  "select * from hotel order by hotel_name";

            myStmt = myConn.createStatement();

		    //  execute query
            myRs = myStmt.executeQuery(sql);

			// process the Result Set: while loop keep adding to the process of elements in result set
			while (myRs.next()){

            // retrieve data from result set row
                    int hotel_id = myRs.getInt("hotel_id");
                    String hotel_name = myRs.getString("hotel_name");
                    Float price = myRs.getFloat("price");
                    String descrip = myRs.getString("descrip");
					String amenities = myRs.getString("amenities");
					int place_id = myRs.getInt("place_id");

            // create new hotel object
				Hotel tempHotel = new Hotel(hotel_id, hotel_name, price, descrip, amenities, place_id);
            
			// add it to list of hotels
				hotels.add(tempHotel);
            }
			
            return hotels;
        }
            finally{
			// Close JDBC objects; calling a method
				close(myConn, myStmt, myRs);
            }
			
			
			
	// source -> Org. imports, java.sql.stmt, next, java.sql.connection, next ... finish
			
		}
	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
		try{
			if(myRs != null){
				myRs.close();
			}
			if(myStmt != null){
				myStmt.close();
			}
			if(myConn != null){
			myConn.close();      // doesn't really close it...just puts back in connection pool
			}
		}
		catch(Exception exc){
			exc.printStackTrace(); 
		}
	}
	
}

