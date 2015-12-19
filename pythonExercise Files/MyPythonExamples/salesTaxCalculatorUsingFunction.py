#Example file for sales tax calculator using functions
## (For Python 3.x, be sure to use the ExampleSnippets3.txt file)


 # define variables
unitPrice1 = 10.00
unitPrice2 = 20.00


print "item 1 = " + str(unitPrice1)  # concatonated string with float
print "item 2 = " + str(unitPrice2)

# subtotal variable defines and assigned value in one step




def totalCost(unitPrice1, unitPrice2): # arguments if named do not have to be in the same order: lynda lesson #python functions
    item1= unitPrice1
    item2= unitPrice2
    subtotal =  item1 + item2
    saleTax = 0.0625
    totalTax = 0
    totalPrice = 0
    
    #do something with the variables
    print "subtotal = " + str(subtotal)

    totalTax = saleTax * subtotal
    print "totalTax = " + str(totalTax)

    totalPrice = totalTax + subtotal

    print "totalPrice = " + str(totalPrice)
    return totalPrice

    print totalCost(unitPrice1, unitPrice2)  #this calls the function and assigns the variables used in the function*/


    


