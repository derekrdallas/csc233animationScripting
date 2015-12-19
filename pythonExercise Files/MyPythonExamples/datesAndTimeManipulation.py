#in order to work with dates and times
#we must use import statements to load in libraries that allow us to
#deal with dates and times

from datetime import date
from datetime import time
from datetime import datetime


def main():
#################################################################################
 ## DATE OBJECTS
  # Get today's date from the simple today() method from the date class
  today = date.today()
  print "Today's date is ", today


  # print out the date's individual components
  print "Date Components: ", today.day, today.month, today.year
  
  # retrieve today's weekday (0=Monday, 6=Sunday)
  print "Today's Weekday #: ", today.weekday()
  
  if (today.weekday()==5):
    print"Today is Friday"
  else:
    print "it's not friday yet. Get back to work."




 
 
#################################################################################       
if __name__ == "__main__":
  main()

