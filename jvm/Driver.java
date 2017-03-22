import java.util.Scanner;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class Driver {
	

	//SQL Variables
	static String tablename;
	static int sqlCode = 0;
	static String sqlState = "00000";
	static String query;
	
	//User Selected Variables
	static Dog selectedDoge;
	static Dog otherDoge;
	static int xdid;
	static String xname;
	static int xgender;
	static int xrStatus;
	static String xbDay;
	
	
/////////////////////////////////////////////////////////////////////////////////////////////////////
	
	//Main
	public static void main (String[] args) throws SQLException{
		
		/* SECTION 1:
		 Establish PSQL Connection */
		
		//Database Access Variables
		String hostname = "comp421.cs.mcgill.ca -l cs421g11";
		String username = "cs421g11";
		String password = "DigDog$123";
		String database = "cs421";
		String url = "jdbc:postgresql://comp421.cs.mcgill.ca:5432/cs421";
		
		//Try to register the Driver
		try {
			DriverManager.registerDriver( new org.postgresql.Driver() );
		} catch (Exception cnfe){
			System.out.println("Class not found");
		}
		
		//Establish Connection
		Connection con = DriverManager.getConnection (url,username, password) ;
		Statement statement = con.createStatement ( ) ;

		
		
		

/////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/* SECTION 2:
		 * Actual Application Driver,
		 * so pretty much one big while loop */
		
		@SuppressWarnings("resource")
		Scanner userReader = new Scanner(System.in);
		while (true) {
			
			//Header Display
			System.out.println("\n\n\n_________________________________________________________\n");
			System.out.println("Welcome to Dogs Dig Dogs\nPrepare to dig up some feels yo");
			System.out.println("\n__________________________________________________________________\n\n\n");
			
			
			//Profile info
			System.out.println("Currently Accessing as " + selectedDoge + "\n\n");
			
			
			/* Response Cases:
			 * Here we perform different functions based on what 
			 * the user inputs (ie. what they want to do)
			 */
			System.out.println("Here are your 7 options:");
			System.out.println("Press 1 to see what's out there");
			System.out.println("Press 2 to choose a Dog you'd like to query with");
			System.out.println("Press 3 to view another Dog's profile");
			System.out.println("Press 4 to friend another Dog");
			System.out.println("Press 5 to view pending friend requests");
			System.out.println("Press 6 to view membership in clubs, as well as event attendance");
			System.out.println("Type 'I hate animals' to quit");
			
			//Declare Scanner
			String userInput = userReader.next();
			
			
			
			
/////////////////////////////////////////////////////////////////////////////////////////////////////
			/* 1. Browsing Database 
			 Pretty much just viewing * from different table*/
			if (userInput.equals("1")) {
				System.out.println("Press 1 to view dogs,\n2 to view Clubs,\n"
						+ "3 to view Events,\n4 to view Services,\nAnd 5 to view Retailers");
				int listChoice = userReader.nextInt();
				
				//1. View all dogs
				if (listChoice == 1) {
						System.out.println("\n-----------------------------------------------");
					 query = "select * from dogprofiles";
					 java.sql.ResultSet rs = statement.executeQuery ( query ) ;
					 while ( rs.next ( ) ) {
						int did = rs.getInt (1) ;
						String name = rs.getString (2);
						int gender = rs.getInt(3);
						String gend = "Male";
						if (gender == 1) {
							gend = "Female";
						}
						String birthdate = rs.getString(5);
						System.out.println("(did: " + did + ") " + name + ", " + gend + " gender, born " + birthdate);
					 }
					 System.out.println("-----------------------------------------------");
				}
				
				//2. View all Clubs
				else if (listChoice == 2) {
					System.out.println("\n-----------------------------------------------");
					 query = "select * from dogclubs";
					 java.sql.ResultSet rs = statement.executeQuery ( query ) ;
					 while ( rs.next ( ) ) {
						int cid = rs.getInt (1) ;
						String name = rs.getString (2);
						String description = rs.getString (3);
						System.out.println("(cid: " + cid + ") " + name + ", \n" + description);
					 }
					 System.out.println("-----------------------------------------------");
				}
				
				//3. List of Events
				else if (listChoice == 3) {
					System.out.println("\n-----------------------------------------------");
					 query = "select * from dogevents";
					 java.sql.ResultSet rs = statement.executeQuery ( query ) ;
					 while ( rs.next ( ) ) {
						int eid = rs.getInt (1) ;
						String name = rs.getString (2);
						String location = rs.getString (3);
						String description = rs.getString (4);
						System.out.println("(eid: " + eid + ") " + name + ", at " + location +"\n" + description);
					 }
					 System.out.println("-----------------------------------------------");
				}
				
				//4. List of Services
				else if (listChoice == 4) {
					System.out.println("\n-----------------------------------------------");
					 query = "select * from services";
					 java.sql.ResultSet rs = statement.executeQuery ( query ) ;
					 while ( rs.next ( ) ) {
						int sid = rs.getInt (1) ;
						int rating = rs.getInt (2) ;
						String name = rs.getString (3);
						String description = rs.getString (4);
						String location = rs.getString (5);
						
						System.out.println("(sid: " + sid + ") " + name + ", with a "+rating+"/10 rating, at " + location +"\n" + description);
					 }
					 System.out.println("-----------------------------------------------");
				}
				
				//5. List of Retailers
				else if (listChoice == 5) {
					System.out.println("\n-----------------------------------------------");
					 query = "select * from retailers";
					 java.sql.ResultSet rs = statement.executeQuery ( query ) ;
					 while ( rs.next ( ) ) {
						int rid = rs.getInt (1) ;
						String name = rs.getString (2);
						String location = rs.getString (3);
						String description = rs.getString (4);
						String website = rs.getString (5);
						
						System.out.println("(rid: " + rid + ") " + name +", at " + location +"\n" 
						+ description +"\nCheck out the website: " + website);
					 }
					 System.out.println("-----------------------------------------------");
				}
				else {
					System.out.println("Invalid option");
				}
			}
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			/* 2.Choosing a dog
			 Equivalent to 'signing' in in our case.
			 As well, constructs a dog object for us to work with more easily */
			else if (userInput.equals("2")) {
				
				//Displays list of dogs
				System.out.println("\nJust a quick reminder of the Dogs out there:");
				System.out.println("\n-----------------------------------------------");
				query = "select * from dogprofiles";
				java.sql.ResultSet rs = statement.executeQuery ( query ) ;
				 while ( rs.next ( ) ) {
					int did = rs.getInt (1) ;
					String name = rs.getString (2);
					System.out.println("(did: " + did + ") " + name);
				 }
				 System.out.println("-----------------------------------------------");
			
			
				//Selecting a dog
				System.out.println("Choose an id:");
				int selectionId = userReader.nextInt();
				try {
				    query= ("select * from dogprofiles where did = "+ selectionId);
				    java.sql.ResultSet lookup = statement.executeQuery ( query ) ;
				    while ( lookup.next ( ) ) {
				    	xdid = lookup.getInt(1);
				    	xname = lookup.getString(2);
				    	xgender = lookup.getInt(3);
				    	xrStatus = lookup.getInt(4);
				    	xbDay = lookup.getString(5);
				    }
				//Unsuccessful 
				if (xdid != selectionId) {
					System.out.println("\n\nINVALID ID, no such dog");
				}
				//Successful
				else {
					selectedDoge = new Dog(xdid,xname,xgender,xrStatus,xbDay);
					System.out.println("\n\nYOU ARE NOW:");
					selectedDoge.print();
				}
				}
				
				catch (SQLException e)
				    {
					System.out.println("ASDASDASDASDASDASDASDASDASD");
					sqlCode = e.getErrorCode(); // Get SQLCODE
					sqlState = e.getSQLState(); // Get SQLSTATE
			                
					// Your code to handle errors comes here;
					// something more meaningful than a print would be good
					System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
				    }
			}
			
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			/* 3. Viewing another Dog */
			else if (userInput.equals("3")) {
				System.out.println("\nSelect a profile, by id");
				int selectionId = userReader.nextInt();
				System.out.println("\nPrinting Info from" + otherDoge +" of id " + selectionId);
			}
			
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			/* 4. Friend another Dog */
			else if (userInput.equals("4")) {
				System.out.println("\nSelect a dog, by id");
				int selectionId = userReader.nextInt();
				System.out.println("Sending friend request to " + otherDoge +"of id "+ selectionId);
			}
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			/* 5. Viewing Friend Requests */
			else if (userInput.equals("5")) {
				System.out.println("\nYou have 0 pending requests, because everyone hates you.");
			}
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			/* 6. Viewing Club/Event Participation */
			else if (userInput.equals("6")) {
				System.out.println("\nYou are part of 0 clubs, you outcast");
			}
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			/* Quit, and wrong input handles */
			
			//Quit
			else if (userInput.equals("animals")) {
				System.out.println("\nAnd they hate you.\nGoodbye");
				statement.close ( ) ;
				con.close ( ) ;
				System.exit(0);
			}
			//Invalid Option
			else {
				System.out.println("\nEither you're illiterate and can't read our options,"
						+ "\nor you're illiterate and can't accurately spell."
						+ "\nEither way, you disgust me.");
			}
		}
	}
}
