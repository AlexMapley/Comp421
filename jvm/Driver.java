import java.util.Scanner;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class Driver {
	
	//Database Access Variables
	String hostname = "comp421.cs.mcgill.ca -l cs421g11";
	String username = "cs421g11";
	String password = "DigDog$123";
	String database = "cs421";
	
	//User Selected Variables
	static String selectedDoge = "Spike";
	static String otherDoge = "Faye";
	
	public static void main (String[] args) {
		
		Scanner userReader = new Scanner(System.in);
		
		while (true) {
			
			//Header Display
			System.out.println("\n\n\n_________________________________________________________\n");
			System.out.println("Welcome to Dogs Dig Dogs\nPrepare to dig up some feels yo");
			System.out.println("\n__________________________________________________________________\n\n\n");
			
			
			//Profile info
			System.out.println("Currently Accessing as " + selectedDoge + "\n\n");
			
			
			//Menu Panel
			System.out.println("Here are your 7 options:");
			System.out.println("Press 1 to see what's out there");
			System.out.println("Press 2 to choose a Dog you'd like to query with");
			System.out.println("Press 3 to view another Dog's profile");
			System.out.println("Press 4 to friend another Dog");
			System.out.println("Press 5 to view pending friend requests");
			System.out.println("Press 6 to view membership in clubs, as well as event attendance");
			System.out.println("Type 'I hate animals' to quit");
			
			
			String userInput = userReader.next();
			
			
			/* Response Cases:
			 * Here we perform different functions based on what 
			 * the user inputs (ie. what they want to do)
			 */
			
			
			//Viewing different lists
			if (userInput.equals("1")) {
				System.out.println("Press 1 to view dogs,\n2 to view Clubs,\n"
						+ "3 to view Events,\n4 to view Services,\nAnd 5 to view Retailers");
				int listChoice = userReader.nextInt();
				if (listChoice == 1) {
					System.out.println("Here's a (hypothetical); list of dogs");
				}
				else if (listChoice == 2) {
					System.out.println("Here's a (hypothetical); list of clubs");
				}
				else if (listChoice == 3) {
					System.out.println("Here's a (hypothetical); list of events");
				}
				else if (listChoice == 4) {
					System.out.println("Here's a (hypothetical); list of services");
				}
				else if (listChoice == 5) {
					System.out.println("Here's a (hypothetical); list of retailers");
				}
				else {
					System.out.println("Invalid option");
				}
			}
			
			//Choosing a dog
			else if (userInput.equals("2")) {
				System.out.println("Choose an id");
				int selectionId = userReader.nextInt();
				System.out.println("\nYou are " + selectedDoge +" of id " + selectionId);
			}
			
			//Viewing another Dog
			else if (userInput.equals("3")) {
				System.out.println("\nSelect a profile, by id");
				int selectionId = userReader.nextInt();
				System.out.println("\nPrinting Info from" + otherDoge +" of id " + selectionId);
			}
			
			//Friend another Dog
			else if (userInput.equals("4")) {
				System.out.println("\nSelect a dog, by id");
				int selectionId = userReader.nextInt();
				System.out.println("Sending friend request to " + otherDoge +"of id "+ selectionId);
			}
			else if (userInput.equals("5")) {
				System.out.println("\nYou have 0 pending requests, because everyone hates you.");
			}
			else if (userInput.equals("6")) {
				System.out.println("\nYou are part of 0 clubs, you outcast");
			}
			else if (userInput.equals("animals")) {
				userReader.close();
				System.out.println("\nAnd they hate you.\nGoodbye");
				System.exit(0);
			}
			else {
				System.out.println("\nEither you're illiterate and can't read our options,"
						+ "\nor you're illiterate and can't accurately spell."
						+ "\nEither way, you disgust me.");
			}
		}
	}
}
