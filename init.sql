DROP TABLE dogFriends;
DROP TABLE familyMembers; 
DROP TABLE relationships;
DROP TABLE uploadsPhoto;
DROP TABLE tagsPhoto;  
DROP TABLE makesStatus; 
DROP TABLE membersOfClubs; 
DROP TABLE clubAdmins; 
DROP TABLE goingToEvent; 
DROP TABLE ownsDogs; 
DROP TABLE eventAdmins; 
DROP TABLE servicesSponsorEvents; 
DROP TABLE ownerReservesServices; 
DROP TABLE retailAdmins; 
DROP TABLE serviceAdmins;
DROP TABLE dogStatuses;
DROP TABLE dogPictures;
DROP TABLE dogClubs;
DROP TABLE dogEvents;
DROP TABLE ownerProfiles;
DROP TABLE retailers;
DROP TABLE services;
DROP TABLE dogProfiles;

CREATE TABLE dogProfiles (
	did INTEGER NOT NULL,
	name VARCHAR (100),
	gender INTEGER,
	relationship_Status INTEGER DEFAULT 0,
	birthdate DATE,

	PRIMARY KEY(did)
	
);

CREATE TABLE dogStatuses (
	did INTEGER NOT NULL,
	upload_Time DATE NOT NULL,	
	content VARCHAR (1000) NOT NULL,

	PRIMARY KEY (did, upload_Time),
	FOREIGN KEY (did) REFERENCES dogProfiles(did)
	
);


CREATE TABLE dogPictures (
	pid INTEGER NOT NULL,
	upload_Time DATE,

	PRIMARY KEY(pid)
);


CREATE TABLE dogClubs (
	cid INTEGER NOT NULL,
	name VARCHAR (100) NOT NULL,
	description VARCHAR (1000),
	
	PRIMARY KEY(cid)
);


CREATE TABLE dogEvents (
	eid INTEGER NOT NULL,
	name VARCHAR (100) NOT NULL,
	location VARCHAR (200),
	description VARCHAR (1000),
	event_date DATE NOT NULL,

	PRIMARY KEY(eid)
);


CREATE TABLE ownerProfiles (
	opid INTEGER NOT NULL,
	name VARCHAR (100) NOT NULL,
	facebook_Link VARCHAR (200) NOT NULL,

	PRIMARY KEY(opid)
);


CREATE TABLE services (
	sid INTEGER NOT NULL,
	rate INTEGER,
	name VARCHAR (100) NOT NULL,
	description VARCHAR (1000),
	location VARCHAR (200),

	PRIMARY KEY(sid)
);


CREATE TABLE retailers (
	rid INTEGER NOT NULL,
	name VARCHAR (100) NOT NULL,
	location VARCHAR (200),
	description VARCHAR(1000),
	website_Link VARCHAR (200),

	PRIMARY KEY(rid)
);




-- THIS WHOLE SECTION NEEDS CHECKING
-- Relational Entity Tables

CREATE TABLE dogFriends (
	dog1 INTEGER NOT NULL,
	dog2 INTEGER NOT NULL,
	
	FOREIGN KEY (dog1) REFERENCES dogProfiles(did),
	FOREIGN KEY (dog2) REFERENCES dogProfiles(did)
);


CREATE TABLE familyMembers (
	dog1 INTEGER NOT NULL,
	dog2 INTEGER NOT NULL,

	FOREIGN KEY (dog1) REFERENCES dogProfiles(did),
	FOREIGN KEY (dog2) REFERENCES dogProfiles(did)
	
);


CREATE TABLE relationships (
	start_Time DATE NOT NULL,
	dog1 INTEGER NOT NULL,
	dog2 INTEGER NOT NULL,
	
	FOREIGN KEY (dog1) REFERENCES dogProfiles(did),
	FOREIGN KEY (dog2) REFERENCES dogProfiles(did)
);


CREATE TABLE uploadsPhoto (
	uploader INTEGER NOT NULL,
	photoId INTEGER NOT NULL,
	
	FOREIGN KEY(uploader) REFERENCES dogProfiles(did),
	FOREIGN KEY(photoId) REFERENCES dogPictures(pid)
);


CREATE TABLE tagsPhoto (
	tagger INTEGER NOT NULL,
	taggee INTEGER NOT NULL,
	photoId INTEGER NOT NULL,
	
	FOREIGN KEY(tagger) REFERENCES dogProfiles(did),
	FOREIGN KEY(taggee) REFERENCES dogProfiles(did),
	FOREIGN KEY(photoId) REFERENCES dogPictures(pid)

);



CREATE TABLE membersOfClubs (
	dogId INTEGER,
	clubId INTEGER NOT NULL,

	FOREIGN KEY(dogId) REFERENCES dogProfiles(did),
	FOREIGN KEY(clubId) REFERENCES dogClubs(cid)

);


CREATE TABLE clubAdmins (
	adminId INTEGER,
	clubId INTEGER,

	FOREIGN KEY(adminId) REFERENCES ownerProfiles(opid),
	FOREIGN KEY(clubId) REFERENCES dogClubs(cid)

);


CREATE TABLE goingToEvent (
	eventId INTEGER,	
	dogId INTEGER,
	
	FOREIGN KEY(eventId) REFERENCES dogEvents(eid),
	FOREIGN KEY(dogId) REFERENCES dogProfiles(did)
);


CREATE TABLE ownsDogs (
	ownerId INTEGER,
	dogId INTEGER,

	FOREIGN KEY(ownerId) REFERENCES ownerProfiles(opid),
	FOREIGN KEY(dogId) REFERENCES dogProfiles(did)
);


CREATE TABLE eventAdmins (
	adminId INTEGER,
	eventId INTEGER,

	FOREIGN KEY(adminId) REFERENCES ownerProfiles(opid),
	FOREIGN KEY(eventId) REFERENCES dogEvents(eid)

);


CREATE TABLE servicesSponsorEvents (
	serviceId INTEGER,
	eventId INTEGER,

	FOREIGN KEY(serviceId) REFERENCES services(sid),
	FOREIGN KEY(eventId) REFERENCES dogEvents(eid)

);


CREATE TABLE ownerReservesServices (
	ownerId INTEGER,
	serviceId INTEGER,

	FOREIGN KEY(ownerId) REFERENCES ownerProfiles(opid),
	FOREIGN KEY(serviceId) REFERENCES services(sid)

);


CREATE TABLE retailAdmins (
	ownerId INTEGER,
	retailerId INTEGER,

	FOREIGN KEY(ownerId) REFERENCES ownerProfiles(opid),
	FOREIGN KEY(retailerId) REFERENCES retailers(rid)
);


CREATE TABLE serviceAdmins (
	ownerId INTEGER,
	serviceId INTEGER,

	FOREIGN KEY(ownerId) REFERENCES ownerProfiles(opid),
	FOREIGN KEY(serviceId) REFERENCES services(sid)
);


--How can we do this??????
CREATE TABLE makesStatus (
	did INTEGER,
	upload_Time DATE NOT NULL,
	
	PRIMARY KEY (did, upload_Time),

	FOREIGN KEY (did, upload_Time) REFERENCES dogStatuses(did, upload_Time),

	FOREIGN KEY(did) REFERENCES dogProfiles(did)
);






