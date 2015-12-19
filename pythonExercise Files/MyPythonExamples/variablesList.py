itemList = [5.00, 10.00] # a list of prices or what ever
taxRate = .0625
tax = 0
grandTotal = 0.0

print "This is item index #1: " + str(itemList[1]) # allows you to checkk a specific index location
print "This is the length of the list " + str(len(itemList)) # allows you to get the amount of items or the length of the list and assign that vsalue to a variable

listlength= len(itemList)
print "The list is " + str(listlength) + " items long"

# use the length and a loop to add up all the items together to get a sub total
print "This is the sum of the items in the list " + str(sum(itemList))
subtotal = sum(itemList)
tax = taxRate * subtotal
print "This is the total tax $" + str(tax)
grandTotal = tax + subtotal
print "The grand total for this purchase is $" + str(grandTotal)