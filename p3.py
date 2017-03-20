# -*- coding: utf-8 -*-
#!/usr/bin/python
import sys
import datetime


#Database Access Variables
hostname = 'comp421@cs.mcgill.ca'
username = 'cs421 g11'
password = 'DigDog123$'
database = 'DBNAME'

#User Selected Variables
selectedDoge = 'Spike'

while (1):
	
	#Header Display
	print '\n\n\n________________________________________________________\n'
	print 'Welcome to Dogs Digs Dogs'
	print '________________________________________________________\n'
	

	#Current Info
	print 'Currently Accessing as %s' % selectedDoge
	print '\n\n\n'






	#Menu Panel
	print "Here are your five options:"
	print """1. To choose a dog you’d like to query with, 
  select option 1 and enter a name or id
  (Currently you are our first dog, Spike (#1)\n"""

	print """2. To see all shared connections with another dog,
  select option 2 and enter a name or id\n"""

	print """3. To see a list of all dog press 3\n"""

	print """4. To see a list of all clubs and events, press 4\n"""

	print """5. To see a list of all retailers and services, press 5\n"""

	print """6. To schedule an appointment with a service, press 6\n"""

	print """7. To Quit, press 7\n"""

	userInput =  raw_input("SELECT AN OPTION:\n")
	
	if (userInput == "1"):
		print "You have selected #1"
	elif (userInput == "2"):
		print "You have selected #2"
	elif (userInput == "3"):
		print "You have selected #3"
	elif (userInput == "4"):
		print "You have selected #4"
	elif (userInput == "5"):
		print "You have selected #5"
	elif (userInput == "6"):
		print "You have selected #6"
	elif (userInput == "7"):
		sys.exit()
	else:
		print "Invalid option, punk"
