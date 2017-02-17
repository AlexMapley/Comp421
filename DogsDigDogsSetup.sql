-- Independent Entity Tables
DROP TABLE dogProfiles
DROP TABLE dogStatuses
DROP TABLE dogPictures
DROP TABLE dogClubs
DROP TABLE dogEvents
DROP TABLE ownerProfiles
DROP TABLE retailers
DROP TABLE services


CREATE TABLE dogProfiles (
	did INTEGER NOT NULL,
	name VARCHAR (100),
	gender INTEGER,
	relationshipStatus VARCHAR(20),
	birthdate DATE,

	PRIMARY KEY(did)
	
);


CREATE TABLE dogStatuses (
	content VARCHAR (1000) NOT NULL,
	uploadTime DATE,
	
	--Is this right? Should be uploadTime plus did,
	--idk how to show that. Maybe we could rework
	--our ER diagram
	PRIMARY KEY (uploadTime),
	FOREIGN KEY (did) REFERENCES dogProfiles(did)
	
);


CREATE TABLE dogPictures (
	pid INTEGER NOT NULL,
	uploadTime DATE,

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
	eventTime DATE NOT NULL,

	PRIMARY KEY(eid)
);


CREATE TABLE ownerProfiles (
	opid INTEGER NOT NULL,
	facebookLink VARCHAR (200) NOT NULL,
	name VARCHAR (100) NOT NULL,

	PRIMARY KEY(opid)
);


CREATE TABLE services (
	sid INTEGER NOT NULL,
	rate INTEGER,
	name VARCHAR (100) NOT NULL,
	description VARCHAR (1000),
	category VARCHAR (100),
	location VARCHAR (200),

	PRIMARY KEY(sid)
);


CREATE TABLE retailers (
	rid INTEGER NOT NULL,
	location VARCHAR (200),
	name VARCHAR (100) NOT NULL,
	description VARCHAR(1000),
	websiteLink VARCHAR (200),

	PRIMARY KEY(rid)
);











-- THIS WHOLE SECTION NEEDS CHECKING
-- Relational Entity Tables	15
DROP TABLE dogFriends 
DROP TABLE familyMembers 
DROP TABLE relationships  
DROP TABLE uploadsPhoto 
DROP TABLE tagsPhoto  
DROP TABLE makesStatus 
DROP TABLE membersOfClubs 
DROP TABLE clubAdmins 
DROP TABLE goingToEvent 
DROP TABLE ownsDogs 
DROP TABLE eventAdmins 
DROP TABLE servicesSponsorEvents 
DROP TABLE ownerReservesServices 
DROP TABLE retailAdmins 
DROP TABLE serviceAdmins







CREATE TABLE dogFriends (
	dog1 INTEGER NOT NULL,
	dog2 INTEGER NOT NULL,
	
	FOREIGN KEY (dog1, dog2) REFERENCES dogProfiles(did)
);


CREATE TABLE familyMembers (
	dog1 INTEGER NOT NULL,
	dog2 INTEGER NOT NULL,
	
);


CREATE TABLE relationships (
	startTime DATE NOT NULL,
	dog1 INTEGER NOT NULL,
	dog2 INTEGER NOT NULL,
	
	FOREIGN KEY (dog1, dog2) REFERENCES dogProfiles(did)
);


CREATE TABLE uploadsPhoto (
	uploader INTEGER NOT NULL,
	photoID INTEGER NOT NULL,
	
	FOREIGN KEY(uploader) REFERENCES dogProfiles(did)
	FOREIGN KEY(photoID) REFERNECES dogPictures(pid)
);


CREATE TABLE tagsPhoto (
	tagger INTEGER NOT NULL,
	taggee INTEGER NOT NULL,
	photoID INTEGER NOT NULL,
	
	FOREIGN KEY(tagger, taggee) REFERENCES dogProfiles(did)
	FOREIGN KEY(photoID) REFERNECES dogPictures(pid)

);

--Unsure about this one, look above to see why ^^^
--CREATE TABLE makesStatus (

--);


CREATE TABLE membersOfClubs (
	dogId INTEGER,
	clubId INTEGER NOT NULL,

	FOREIGN KEY(dogId) REFERNECES dogProfiles(did)
	FOREIGN KEY(clubId) REFERNECES dogClubs(cid)

);


--CREATE TABLE clubAdmins (

--);


--CREATE TABLE goingToEvent (

--);


--CREATE TABLE ownsDogs (

--);


--CREATE TABLE eventAdmins (

--);


--CREATE TABLE servicesSponsorEvents (

--);


--CREATE TABLE ownerReservesServices (

--);


--CREATE TABLE retailAdmins (

--);


--CREATE TABLE serviceAdmins (

--);






