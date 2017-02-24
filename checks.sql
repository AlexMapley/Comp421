DROP TABLE dogProfiles

CREATE TABLE dogProfiles (
	did INTEGER NOT NULL,
	name VARCHAR (100),
	gender INTEGER,
	relationship_Status INTEGER DEFAULT 0,
	birthdate DATE CHECK (birthdate > to_date('1980-01-01’, 'yyyy-mm-dd'))

	PRIMARY KEY(did)
	
);

DROP TABLE ownderProfiles

CREATE TABLE ownerProfiles (
	opid INTEGER NOT NULL,
	name VARCHAR (100) NOT NULL,
	facebook_Link VARCHAR (200) NOT NULL CHECK (CHARINDEX('http://', facebook_link) > 0)

	PRIMARY KEY(opid)
);

