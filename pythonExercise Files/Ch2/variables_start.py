# 
# Example file for variables
# (For Python 3.x, be sure to use the ExampleSnippets3.txt file)

unitPrice1 = 3.99
unitPrice2 = 5.00
saleTax = 0.0625
totalTax=0
totalPrice=0

print "item 1 = " + str(unitPrice1)
print "item 2 = " + str(unitPrice2)

subtotal = unitPrice1 + unitPrice2

print "subtotal = " + str(subtotal)

totalTax = saleTax * subtotal
print "totalTax = " + str(totalTax)

totalPrice = totalTax + subtotal

print "totalPrice = " + str(totalPrice)


