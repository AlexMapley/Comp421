import java.util.Scanner;
import java.util.Stack;
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
	static String insertSQL;
	
	//User Selected Variables
	static Dog selectedDoge = new Dog(0, "noName", 0, 0, "null");
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
			System.out.println("Currently Accessing as " + selectedDoge.getName() + "\n\n");
			
			
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
				System.out.println("\nPlease Note:\nFor the sake of thsi demo, we are allowing\n" +
						"alot more transparency in information. Normally you couldn't just find\n" +
						"info on dogs you're not friends with, clubs you're not a part of, ect.");
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
						System.out.println("(did: " + did + ") " + name + ", " + gend + " gender");
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
				
				//Header
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
				System.out.println("\nSelect a profile, by id");
				
				//1. Are they a real profile?
				int selectionId = userReader.nextInt();
				int real = 0;
				query = ("select * from dogprofiles where did = " + selectionId);
				java.sql.ResultSet realFinder = statement.executeQuery ( query ) ;
			    while ( realFinder.next ( ) ) {
			    	real = realFinder.getInt(1);
			    }
			    if (real == 0) {
			    	System.out.println("\n\nINVALID PROFILE, choose a real Id");
			    }
			    
			    else {
			    	//2. Are we friends?
			    	int areFriends = 0;
			    	query = ("select * from dogfriends where dog1 = " + selectedDoge.getDid()
			    	+ "and dog2 = " + selectionId);
			    	java.sql.ResultSet friendFinder = statement.executeQuery ( query ) ;
			    	while ( friendFinder.next ( ) ) {
			    		areFriends = friendFinder.getInt(1);
			    	}
			    	
			    	if (areFriends != 0) {
			    		//3.1 Friends!
			    		query= ("select * from dogprofiles where did = "+ selectionId);
						java.sql.ResultSet lookup = statement.executeQuery ( query ) ;
						while ( lookup.next ( ) ) {
						    xdid = lookup.getInt(1);
						    xname = lookup.getString(2);
						    xgender = lookup.getInt(3);
						    xrStatus = lookup.getInt(4);
						    xbDay = lookup.getString(5);
						}
						otherDoge = new Dog(xdid,xname,xgender,xrStatus,xbDay);
						System.out.println("\n\nYou are friends!\n");
						otherDoge.print();
						 
			    	}
			    	else { 
			    		//3.2 Not friends
			    		query= ("select did, name from dogprofiles where did = "+ selectionId);
			    		java.sql.ResultSet lookup = statement.executeQuery ( query ) ;
						while ( lookup.next ( ) ) {
						    xdid = lookup.getInt(1);
						    xname = lookup.getString(2);
						}
						System.out.println("\n\nYou aren't friends, limited info available\n");
						System.out.println("Did: " + xdid +", Name: " + xname);
			    	}
			    }
			}
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			/* 4. Friend another Dog */
			else if (userInput.equals("4")) {
				System.out.println("\nSelect a dog, by id");
				int selectionId = userReader.nextInt();
				
				//1. Are they a real profile?
				int real = 0;
				query = ("select * from dogprofiles where did = " + selectionId);
				java.sql.ResultSet realFinder = statement.executeQuery ( query ) ;
			    while ( realFinder.next ( ) ) {
			    	real = realFinder.getInt(1);
			    }
			    if (real == 0 || (selectionId == selectedDoge.getDid()) ) {
			    	System.out.println("\n\nINVALID PROFILE, choose a real Id");
			    }
			    
			    else {
			    	//2. Are we already friends?
			    	int areFriends = 0;
			    	query = ("select * from dogfriends where dog1 = " + selectedDoge.getDid()
			    	+ "and dog2 = " + selectionId);
			    	java.sql.ResultSet friendFinder = statement.executeQuery ( query ) ;
			    	while ( friendFinder.next ( ) ) {
			    		areFriends = friendFinder.getInt(1);
			    	}
			    	
			    	if (areFriends != 0) {
			    		//3 Friends!
			    		System.out.println("\n\nYou guys are already friends, don't harass them!");
						 
			    	}
			    	else { 
			    		//4 Not friends, yet
			    		int requestSent = 0;
			    		query = ("select * from friendRequests where dog1 = " + selectedDoge.getDid()
				    	+ "and dog2 = " + selectionId);
				    	java.sql.ResultSet requestVerifier = statement.executeQuery ( query ) ;
				    	while ( requestVerifier.next ( ) ) {
				    		requestSent = requestVerifier.getInt(1);
				    	}
				    	
			    		//4.1 Is the request already sent?
			    		if (requestSent != 0) {
			    			System.out.println("\n\nYou've aleady sent them a friend request!\n");
			    		}
			    		else {
			    			insertSQL = ("insert into friendRequests Values (" + selectedDoge.getDid() +"," + selectionId + ")");
			    			System.out.println(insertSQL);
			    			statement.executeUpdate(insertSQL);
			    			System.out.println("\n\nFriend Request Sent!");
			    		}
			    	}
			    }
			}
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			/* 5. Viewing Friend Requests */
			else if (userInput.equals("5")) {
				
				//Declare Arraylist of Requests
				Stack<Integer> requests = new Stack<Integer>();
				
				System.out.println("\n\nPending Requests:");
				int friender = 0;
				boolean pending = false;
				
				//Query
				query = ("select dog1 from friendRequests"
						+ " where dog2 = " + selectedDoge.getDid());
				java.sql.ResultSet viewer = statement.executeQuery ( query );
				
				//1. Prints Requests
			    while ( viewer.next ( ) ) {
			    	friender = viewer.getInt(1);
			    	if (friender != 0) {
			    			requests.push(friender);
			    			pending = true;
			    			System.out.println("Friend request from did " + friender);
			    	}
			    }
			    
			    //2. No Requests
			    if (pending == false) {
			    	System.out.println("You have no new friend requests");
			    }
			    
			    //3. Pending Requests
			    else {
			    	System.out.println("\nPress 1 to accept a request, or anything else to ignore them\n");
			    	
			    	/* Pops Friend Requests from stack, and 
			    	 modifies actual data along the way */
			    	while (!(requests.empty())) {
			    		
			    		int sender = requests.pop();
			    		
			    		System.out.println("Accept request from (did) " + sender + "?");
			    		int option = userReader.nextInt();
			    		
			    		if (option == 1) {
			    			System.out.println("Friend Added!");
			    			
			    			//Two way friendship
			    			insertSQL = ("Insert into dogfriends Values (" + selectedDoge.getDid() + "," + sender + ")");
			    			statement.executeUpdate(insertSQL);
			    			insertSQL = ("Insert into dogfriends Values (" + sender + "," + selectedDoge.getDid() + ")");
			    			statement.executeUpdate(insertSQL);
			    		}
			    		else {
			    			System.out.println("Ew, no thanks");
			    		}
			    	}
			    	
			    	//Deletes friend Requests
		    		insertSQL = ("delete from friendRequests where dog2 = " + selectedDoge.getDid());
		    		statement.executeUpdate(insertSQL);
			    }
			    
			    
			}
			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			/* 6. Viewing Club/Event Participation */
			else if (userInput.equals("6")) {
				System.out.println("\n-----------------------------------------------\nClubs:");
				query = ("select clubid from membersofclubs where dogid = " + selectedDoge.getDid() );
				java.sql.ResultSet rs = statement.executeQuery ( query ) ;
				while ( rs.next ( ) ) {
					int cid = rs.getInt (1) ;
					System.out.println("(cid: " + cid + ")");
					}
				System.out.println("-----------------------------------------------\nEvents:");
				query = ("select eventid from goingtoevent where dogid = " + selectedDoge.getDid() );
				java.sql.ResultSet rs2 = statement.executeQuery ( query ) ;
				while ( rs2.next ( ) ) {
					int eid = rs2.getInt (1) ;
					System.out.println("(eid: " + eid + ")");
					}
				System.out.println("-----------------------------------------------");
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
