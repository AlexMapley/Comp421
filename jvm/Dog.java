
public class Dog {
	
	//Attributes
	private int did;
	private String name;
	private int gender;
	private int relationshipStatus;
	private String birthDate;
	
	//Constructor
	public Dog (int xdid, String xname, int xgender, int xrStatus, String xbDay) {
		did = xdid;
		name = xname;
		gender = xgender;
		relationshipStatus = xrStatus;
		birthDate = xbDay;
	}
	
	//Getters
	int getDid() {
		return did;
	}
	String getName() {
		return name;
	}
	int getGender() {
		return gender;
	}
	int getRelationshipStatus () {
		return relationshipStatus;
	}
	String getBirthDate() {
		return birthDate;
	}
	
	
	//Printing Attributes
	void print() {
		
		String gend = "Male";
		if (gender == 1) 
			gend = "Female";
		
		String rStatus = "Single";
		if (relationshipStatus == 1)
				rStatus = "Involved";
		System.out.println("-------------------\n"
						+ did + "\n" + name + "\n" + gend + "\n" 
						+ "Relationship Status: " + rStatus + "\n" + birthDate
						+ "\n-------------------\n" );
	}
}
