#
# examples of For loops using enumerate to pull out specific indecies from the list
# Python utilizes  for loops.. 
# For loops in python are more like iterators that loops
# Python can iterate over a list of items instead of looping through a list of items

def main():
#################################################################################

#for loops
# Another type of For loop works within a list of items instead of looping through
# using a counter like For(i=0 i<10 i++)
#instead we use a range
    drums = ["Ludwig", "Gretsch", "Tama", "Pearl", "Slingerland", "DW", "Sonar", "Mapex", "Premier", "Pork Pie"] # define and assign a list
    for VariableNameHere in (drums):# define another variable used to hold the individual item from the list 
        print "This is a common drum manufacturer " + VariableNameHere # prints the item name until the list ends
    print "This is how many items are in the list " + str(len(drums)) # this is a handy tool  plus it concatenates a string from an integer
    # it also prints after the iteration through the list ends
    
    #Use enumerate function to print out both the item and the index value within the list
    drums2 = ["Ludwig", "Gretsch", "Tama", "Pearl", "Slingerland", "DW", "Sonar", "Mapex", "Premier", "Pork Pie"]
    for i, d in enumerate(drums):
        print str(i) + " Is the index for " + str(d)







 
 
#################################################################################       
if __name__ == "__main__":
  main()

