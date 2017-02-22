--Make dog Profiles
INSERT INTO dogProfiles Values ( 1, 'Spike', 1, 0, to_date('2011-03-11', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 2, 'Faye', 0, 0, to_date('2007-09-09', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 3, 'Jet', 1, 0, to_date('2009-01-28', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 4, 'Samantha', 0, 1, to_date('2007-06-17', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 5, 'Taco', 1, 1, to_date('2014-04-15', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 6, 'Vanessa', 0, 0, to_date('2011-03-11', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 7, 'Oscar', 1, 1, to_date('2012-05-11', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 8, 'Coco', 0, 0, to_date('2016-08-24', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 9, 'Hammy', 1, 1, to_date('2017-01-29', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 10, 'JellyBeans', 0, 0, to_date('2007-06-16', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 11, 'Alex', 1, 0, to_date('2017-01-29', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 12, 'Vasu', 0, 1, to_date('1996-06-19', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 13, 'Michael Sera', 1, 0, to_date('2011-01-25', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 14, 'Lianna', 0, 0, to_date('2010-03-14', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 15, 'Mr. Pickles', 1, 1, to_date('2012-11-11', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 16, 'Jojo', 0, 1, to_date('2015-12-16', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 17, 'Tuggy', 1, 0, to_date('2007-09-07', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 18, 'Clementine', 0, 0, '2012-07-16', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 19, 'Buddy', 1, 1, to_date('2014-02-29', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 20, 'Rosa', 0, 1, to_date('2017-02-16', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 21, 'Alex', 0, 1, to_date('2011-03-21', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 22, 'MichaelAngelo', 1, 0, to_date('1999-07-17', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 23, 'Dianne', 0, 1, to_date('2001-05-28', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 24, 'Charles Decker', 1, 1, to_date('2012-11-09', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 25, 'Alpaca', 0, 0, to_date('2016-08-13', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 26, 'Elmo', 1, 0, to_date('2017-10-26', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 27, 'Layla', 0, 1, to_date('2008-12-12', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 28, 'Aardvark', 1, 1, to_date('2006-12-29', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 29, 'Monkey', 0, 0, to_date('2013-04-16', 'YYYY-MM-DD'));
INSERT INTO dogProfiles Values ( 30, 'Alan', 1, 0, to_date('2013-07-04', 'YYYY-MM-DD'));

--dogStatuses
INSERT INTO dogStatuses Values (4, to_date('2008-03-11', 'YYYY-MM-DD'), 'Lol I hate cats');
INSERT INTO dogStatuses Values (4, to_date('2016-04-12', 'YYYY-MM-DD'), 'Mailman looks juicy today');
INSERT INTO dogStatuses Values (2, to_date('2011-06-29', 'YYYY-MM-DD'), 'This is my house, stay away');
INSERT INTO dogStatuses Values (16, to_date('2017-04-22', 'YYYY-MM-DD'), 'Single and ready to mingle!');
INSERT INTO dogStatuses Values (17, to_date('2009-09-17', 'YYYY-MM-DD'), 'Where is Waldo anyways?');
INSERT INTO dogStatuses Values (5, to_date('2012-12-03', 'YYYY-MM-DD'), 'Are our lives determined, or do we just live in an empty vacuum of chaos?');
INSERT INTO dogStatuses Values (6, to_date('2011-11-25', 'YYYY-MM-DD'), 'Lol cats are the worst');
INSERT INTO dogStatuses Values (3, to_date('2010-06-16', 'YYYY-MM-DD'), 'New parakeet is hidden in cage, will find key soon');
INSERT INTO dogStatuses Values (1, to_date('2006-05-19', 'YYYY-MM-DD'), 'I love bananas! So much! So much pottassium too! Lmao!');
INSERT INTO dogStatuses Values (9, to_date('2005-02-21', 'YYYY-MM-DD'), 'Life is pain, and I am Bane, from Batman');
INSERT INTO dogStatuses Values (11, to_date('2014-01-28', 'YYYY-MM-DD'), 'Sos, need can opener.');
INSERT INTO dogStatuses Values (4, to_date('2013-02-27', 'YYYY-MM-DD'), 'Dog food? Who says it has to be for dogs?');
INSERT INTO dogStatuses Values (12, to_date('2015-07-01', 'YYYY-MM-DD'), 'Roflcopter I played with the hose today, lololololol');
INSERT INTO dogStatuses Values (13, to_date('20012-11-31', 'YYYY-MM-DD'), 'I am the Lizard King!');
INSERT INTO dogStatuses Values (16, to_date('2011-10-30', 'YYYY-MM-DD'), 'Helicopters are both dangerous and cool');

--dogPictures
INSERT INTO dogPictures VALUES (1, to_date('2008-04-22', 'YYYY-MM-DD'));
INSERT INTO dogPictures VALUES (2, to_date('2007-02-28', 'YYYY-MM-DD'));
INSERT INTO dogPictures VALUES (3, to_date('2006-01-31', 'YYYY-MM-DD'));
INSERT INTO dogPictures VALUES (4, to_date('2011-11-20', 'YYYY-MM-DD'));
INSERT INTO dogPictures VALUES (5, to_date('2012-10-06', 'YYYY-MM-DD'));
INSERT INTO dogPictures VALUES (6, to_date('2014-09-04', 'YYYY-MM-DD'));
INSERT INTO dogPictures VALUES (7, to_date('2016-08-17', 'YYYY-MM-DD'));
INSERT INTO dogPictures VALUES (8, to_date('2004-12-19', 'YYYY-MM-DD'));
INSERT INTO dogPictures VALUES (9, to_date('2001-06-29', 'YYYY-MM-DD'));
INSERT INTO dogPictures VALUES (10, to_date('2017-05-04', 'YYYY-MM-DD'));

--dogClubs
INSERT INTO dogClubs VALUES (1, 'First Place Competitors', 'For elite dogs and their elite owners only');
INSERT INTO dogClubs VALUES (2, 'Dox Populus', 'For the dog proletariate and those political inclined against authority');
INSERT INTO dogClubs VALUES (3, 'GuerillaDogs', 'Fight the Corporate Fat *CATS*');
INSERT INTO dogClubs VALUES (4, 'Top Dogs', 'You mess with us, and you will be buried with the bones');
INSERT INTO dogClubs VALUES (5, 'Followers of Lassie', 'All hail the Magic Collie!');
INSERT INTO dogClubs VALUES (6, 'Airbud4Life', 'AIRBUDAIRBUDAIERBUD 4 LIIIIIIIIIIIIIFFFFFFFFFEEEEEEEEE');
INSERT INTO dogClubs VALUES (7, 'Maybe Cat People', 'For the other users who just are not sure if they really are dog people.');

--dogEvents
INSERT INTO dogClubs VALUES (1, 'Dog Dance Disco Party', '48 London Street, Tokyo', to_date('2012-11-11', 'YYYY-MM-DD'));
INSERT INTO dogClubs VALUES (2, 'Dogs against Capitalism', '199 st. Boulevard, NY', to_date('2013-02-14', 'YYYY-MM-DD'));
INSERT INTO dogClubs VALUES (3, 'Led Zeppelin & Their Dogs', '55 Talkum blvd, Amsterdam', to_date('2009-01-29', 'YYYY-MM-DD'));
INSERT INTO dogClubs VALUES (4, 'Yoga, for Dogs!', '1024 Simon Street, Toronto', to_date('2007-11-31', 'YYYY-MM-DD'));
INSERT INTO dogClubs VALUES (5, 'Hot Dogs and Dogs', '96 Pacer Road, Santiago', to_date('2006-12-25', 'YYYY-MM-DD'));
INSERT INTO dogClubs VALUES (6, 'Anti-Cat Rally', '99 rue du Conejo, Paris', to_date('2005-05-25', 'YYYY-MM-DD'));
INSERT INTO dogClubs VALUES (7, 'DogaPalooza! It is wild up in here!', '2056 Hendrix drive, Seattle', to_date('2004-03-03', 'YYYY-MM-DD'));

--ownerProfiles
INSERT INTO ownerProfiles VALUES (1, 'Hank', 'http://facebook/Hank');
INSERT INTO ownerProfiles VALUES (2, 'Jess', 'http://facebook/Jess');
INSERT INTO ownerProfiles VALUES (3, 'Tim', 'http://facebook/Tim');
INSERT INTO ownerProfiles VALUES (4, 'Monica', 'http://facebook/Monica');
INSERT INTO ownerProfiles VALUES (5, 'Clayton', 'http://facebook/Clayton');
INSERT INTO ownerProfiles VALUES (6, 'Thomas', 'http://facebook/Thomas');
INSERT INTO ownerProfiles VALUES (7, 'Vanessa', 'http://facebook/Vanessa');
INSERT INTO ownerProfiles VALUES (8, 'Andrea', 'http://facebook/Andrea');
INSERT INTO ownerProfiles VALUES (9, 'Alice', 'http://facebook/Alice');
INSERT INTO ownerProfiles VALUES (10, 'Carl', 'http://facebook/Carl');
INSERT INTO ownerProfiles VALUES (11, 'Carlston', 'http://facebook/Carlston');
INSERT INTO ownerProfiles VALUES (12, 'Henry', 'http://facebook/Henry');
INSERT INTO ownerProfiles VALUES (13, 'Julia', 'http://facebook/Julia');
INSERT INTO ownerProfiles VALUES (14, 'Ann', 'http://facebook/Ann');
INSERT INTO ownerProfiles VALUES (15, 'Urooj', 'http://facebook/Urooj');
INSERT INTO ownerProfiles VALUES (16, 'Martin', 'http://facebook/Martin');
INSERT INTO ownerProfiles VALUES (17, 'Jonah', 'http://facebook/Jonah');
INSERT INTO ownerProfiles VALUES (18, 'Hannah', 'http://facebook/Hannah');
INSERT INTO ownerProfiles VALUES (19, 'Anika', 'http://facebook/Anika');
INSERT INTO ownerProfiles VALUES (20, 'Bea', 'http://facebook/Bea');

--services
INSERT INTO services VALUES (1, 2, 'Toms Groomers', 'We cut your dogs hair and stuff', '48 London Street, Tokyo');
INSERT INTO services VALUES (2, 6, 'Abbys Walers', 'We walk your dogs and stuff', '1024 Simon Street, Toronto');
INSERT INTO services VALUES (3, 8, 'Jerrys Daycare', 'Hey dude! Well look after your dog and stuff', '55 Talkum blvd, Amsterdam');
INSERT INTO services VALUES (4, 10, 'Michael Seras Posh Dog Academy', 'Well make your dog all proper and stuff', '99 rue du Conejo, Paris');
INSERT INTO services VALUES (5, 1, 'DogFood Hut', 'We only serve Dog Food and stuff', '199 st. Boulevard, NY');

INSERT INTO retailers VAlUES (1, 'Dog Planet', '2056 Hendrix drive, Seattle', 'We have everything for dogs, everything you could ever want...', 'http://dogplanet.com');
INSERT INTO retailers VAlUES (2, 'Doggy Swagz', NULL, 'We got all the swag for Dogs and their owners', 'http://dogswaGGGG.com');
INSERT INTO retailers VAlUES (3, 'Dog Capes Inc.', '1028 Melvin avenue, Wisconsin', 'We have capes in all sizes, except larger and small', 'http://dogcapes.gov');
INSERT INTO retailers VAlUES (4, 'Lulz and Dog Memes',  NULL,  'We make memes of your dog, and then sell them to you', 'http://doglulzdemes.org');
INSERT INTO retailers VAlUES (5, 'Dog Vacation Packages',  NULL, 'Want to get away, but not from your dog? Book one our trips now!', 'http://dogGetAways.com');

--DogFriends
INSERT INTO DogFriends VALUES(2, 27)
INSERT INTO DogFriends VALUES(20, 6)
INSERT INTO DogFriends VALUES(6, 22)
INSERT INTO DogFriends VALUES(25, 1)
INSERT INTO DogFriends VALUES(27, 30)
INSERT INTO DogFriends VALUES(22, 28)
INSERT INTO DogFriends VALUES(22, 4)
INSERT INTO DogFriends VALUES(27, 15)
INSERT INTO DogFriends VALUES(21, 1)
INSERT INTO DogFriends VALUES(6, 22)
INSERT INTO DogFriends VALUES(6, 4)
INSERT INTO DogFriends VALUES(18, 12)
INSERT INTO DogFriends VALUES(23, 29)
INSERT INTO DogFriends VALUES(10, 29)
INSERT INTO DogFriends VALUES(2, 17)
INSERT INTO DogFriends VALUES(3, 13)
INSERT INTO DogFriends VALUES(28, 6)
INSERT INTO DogFriends VALUES(5, 3)
INSERT INTO DogFriends VALUES(6, 13)
INSERT INTO DogFriends VALUES(30, 14)
INSERT INTO DogFriends VALUES(27, 17)
INSERT INTO DogFriends VALUES(17, 7)
INSERT INTO DogFriends VALUES(26, 6)
INSERT INTO DogFriends VALUES(14, 26)
INSERT INTO DogFriends VALUES(23, 15)
INSERT INTO DogFriends VALUES(15, 12)
INSERT INTO DogFriends VALUES(28, 6)
INSERT INTO DogFriends VALUES(3, 27)
INSERT INTO DogFriends VALUES(21, 5)
INSERT INTO DogFriends VALUES(5, 28)
INSERT INTO DogFriends VALUES(7, 22)
INSERT INTO DogFriends VALUES(18, 4)
INSERT INTO DogFriends VALUES(6, 24)
INSERT INTO DogFriends VALUES(10, 17)
INSERT INTO DogFriends VALUES(12, 1)
INSERT INTO DogFriends VALUES(30, 1)
INSERT INTO DogFriends VALUES(16, 19)
INSERT INTO DogFriends VALUES(5, 19)
INSERT INTO DogFriends VALUES(21, 23)
INSERT INTO DogFriends VALUES(8, 11)
INSERT INTO DogFriends VALUES(9, 5)
INSERT INTO DogFriends VALUES(6, 26)
INSERT INTO DogFriends VALUES(21, 15)
INSERT INTO DogFriends VALUES(9, 26)
INSERT INTO DogFriends VALUES(15, 16)
INSERT INTO DogFriends VALUES(12, 30)
INSERT INTO DogFriends VALUES(4, 10)
INSERT INTO DogFriends VALUES(3, 24)
INSERT INTO DogFriends VALUES(19, 9)
INSERT INTO DogFriends VALUES(25, 14)
INSERT INTO DogFriends VALUES(22, 4)
INSERT INTO DogFriends VALUES(8, 28)
INSERT INTO DogFriends VALUES(5, 23)
INSERT INTO DogFriends VALUES(23, 28)
INSERT INTO DogFriends VALUES(6, 27)
INSERT INTO DogFriends VALUES(29, 27)
INSERT INTO DogFriends VALUES(26, 19)
INSERT INTO DogFriends VALUES(14, 29)
INSERT INTO DogFriends VALUES(12, 19)
INSERT INTO DogFriends VALUES(3, 11)
INSERT INTO DogFriends VALUES(8, 25)
INSERT INTO DogFriends VALUES(30, 15)
INSERT INTO DogFriends VALUES(4, 17)
INSERT INTO DogFriends VALUES(4, 12)
INSERT INTO DogFriends VALUES(23, 28)
INSERT INTO DogFriends VALUES(15, 7)
INSERT INTO DogFriends VALUES(30, 4)
INSERT INTO DogFriends VALUES(13, 8)
INSERT INTO DogFriends VALUES(28, 22)
INSERT INTO DogFriends VALUES(11, 7)
INSERT INTO DogFriends VALUES(17, 20)
INSERT INTO DogFriends VALUES(29, 24)
INSERT INTO DogFriends VALUES(11, 30)
INSERT INTO DogFriends VALUES(26, 10)
INSERT INTO DogFriends VALUES(30, 23)
INSERT INTO DogFriends VALUES(26, 14)
INSERT INTO DogFriends VALUES(7, 28)
INSERT INTO DogFriends VALUES(24, 29)
INSERT INTO DogFriends VALUES(25, 15)
INSERT INTO DogFriends VALUES(16, 7)
INSERT INTO DogFriends VALUES(14, 10)
INSERT INTO DogFriends VALUES(7, 8)
INSERT INTO DogFriends VALUES(9, 27)
INSERT INTO DogFriends VALUES(13, 20)
INSERT INTO DogFriends VALUES(9, 7)
INSERT INTO DogFriends VALUES(16, 29)
INSERT INTO DogFriends VALUES(24, 29)
INSERT INTO DogFriends VALUES(7, 26)
INSERT INTO DogFriends VALUES(24, 5)
INSERT INTO DogFriends VALUES(20, 2)
INSERT INTO DogFriends VALUES(1, 10)
INSERT INTO DogFriends VALUES(18, 9)
INSERT INTO DogFriends VALUES(4, 6)
INSERT INTO DogFriends VALUES(17, 23)
INSERT INTO DogFriends VALUES(24, 8)
INSERT INTO DogFriends VALUES(17, 19)
INSERT INTO DogFriends VALUES(15, 18)
INSERT INTO DogFriends VALUES(10, 4)
INSERT INTO DogFriends VALUES(20, 7)
INSERT INTO DogFriends VALUES(21, 15)
INSERT INTO DogFriends VALUES(11, 20)
INSERT INTO DogFriends VALUES(8, 5)
INSERT INTO DogFriends VALUES(23, 1)
INSERT INTO DogFriends VALUES(29, 27)
INSERT INTO DogFriends VALUES(11, 22)
INSERT INTO DogFriends VALUES(2, 15)
INSERT INTO DogFriends VALUES(14, 25)
INSERT INTO DogFriends VALUES(21, 19)
INSERT INTO DogFriends VALUES(26, 16)
INSERT INTO DogFriends VALUES(19, 22)
INSERT INTO DogFriends VALUES(9, 17)
INSERT INTO DogFriends VALUES(11, 2)
INSERT INTO DogFriends VALUES(14, 30)
INSERT INTO DogFriends VALUES(9, 2)
INSERT INTO DogFriends VALUES(16, 3)
INSERT INTO DogFriends VALUES(7, 8)
INSERT INTO DogFriends VALUES(27, 10)
INSERT INTO DogFriends VALUES(24, 2)
INSERT INTO DogFriends VALUES(28, 26)
INSERT INTO DogFriends VALUES(22, 21)
INSERT INTO DogFriends VALUES(12, 26)
INSERT INTO DogFriends VALUES(29, 19)
INSERT INTO DogFriends VALUES(28, 20)
INSERT INTO DogFriends VALUES(20, 17)
INSERT INTO DogFriends VALUES(20, 18)
INSERT INTO DogFriends VALUES(24, 11)
INSERT INTO DogFriends VALUES(16, 29)
INSERT INTO DogFriends VALUES(11, 21)
INSERT INTO DogFriends VALUES(23, 15)
INSERT INTO DogFriends VALUES(11, 21)
INSERT INTO DogFriends VALUES(15, 23)
INSERT INTO DogFriends VALUES(30, 15)
INSERT INTO DogFriends VALUES(23, 24)
INSERT INTO DogFriends VALUES(27, 3)
INSERT INTO DogFriends VALUES(19, 22)
INSERT INTO DogFriends VALUES(18, 2)
INSERT INTO DogFriends VALUES(15, 22)
INSERT INTO DogFriends VALUES(21, 3)
INSERT INTO DogFriends VALUES(22, 24)
INSERT INTO DogFriends VALUES(17, 10)
INSERT INTO DogFriends VALUES(2, 20)
INSERT INTO DogFriends VALUES(1, 2)
INSERT INTO DogFriends VALUES(29, 17)
INSERT INTO DogFriends VALUES(19, 21)
INSERT INTO DogFriends VALUES(10, 1)
INSERT INTO DogFriends VALUES(23, 7)
INSERT INTO DogFriends VALUES(4, 17)
INSERT INTO DogFriends VALUES(25, 23)
INSERT INTO DogFriends VALUES(4, 7)
INSERT INTO DogFriends VALUES(13, 2)
INSERT INTO DogFriends VALUES(3, 29)
INSERT INTO DogFriends VALUES(11, 6)
INSERT INTO DogFriends VALUES(18, 9)
INSERT INTO DogFriends VALUES(25, 12)
INSERT INTO DogFriends VALUES(3, 16)
INSERT INTO DogFriends VALUES(9, 14)
INSERT INTO DogFriends VALUES(22, 9)
INSERT INTO DogFriends VALUES(19, 28)
INSERT INTO DogFriends VALUES(6, 5)
INSERT INTO DogFriends VALUES(19, 5)
INSERT INTO DogFriends VALUES(15, 20)
INSERT INTO DogFriends VALUES(17, 1)
INSERT INTO DogFriends VALUES(14, 27)
INSERT INTO DogFriends VALUES(22, 9)
INSERT INTO DogFriends VALUES(11, 3)
INSERT INTO DogFriends VALUES(25, 2)
INSERT INTO DogFriends VALUES(16, 15)
INSERT INTO DogFriends VALUES(28, 7)
INSERT INTO DogFriends VALUES(17, 26)
INSERT INTO DogFriends VALUES(10, 17)
INSERT INTO DogFriends VALUES(27, 26)
INSERT INTO DogFriends VALUES(29, 21)
INSERT INTO DogFriends VALUES(28, 3)
INSERT INTO DogFriends VALUES(6, 9)
INSERT INTO DogFriends VALUES(2, 5)
INSERT INTO DogFriends VALUES(7, 6)
INSERT INTO DogFriends VALUES(7, 20)
INSERT INTO DogFriends VALUES(26, 10)
INSERT INTO DogFriends VALUES(2, 28)
INSERT INTO DogFriends VALUES(1, 19)
INSERT INTO DogFriends VALUES(14, 23)
INSERT INTO DogFriends VALUES(13, 7)
INSERT INTO DogFriends VALUES(7, 26)
INSERT INTO DogFriends VALUES(26, 1)
INSERT INTO DogFriends VALUES(1, 11)
INSERT INTO DogFriends VALUES(12, 8)
INSERT INTO DogFriends VALUES(25, 19)
INSERT INTO DogFriends VALUES(29, 9)
INSERT INTO DogFriends VALUES(15, 11)
INSERT INTO DogFriends VALUES(30, 28)
INSERT INTO DogFriends VALUES(30, 19)
INSERT INTO DogFriends VALUES(29, 21)
INSERT INTO DogFriends VALUES(26, 9)
INSERT INTO DogFriends VALUES(25, 2)
INSERT INTO DogFriends VALUES(12, 4)
INSERT INTO DogFriends VALUES(1, 30)
