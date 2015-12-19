#
# examples of loops
# Python utilizes while loops and for loops.. 
# loops in python are more like iterators that loops
# Python can iterate over a list of items instead of looping through a list of items

def main():
 
 # a wile loop repeats a process only while a condition is met..
 # example we want to add 1 to a variable 10 times
 
    x = 0
    StopAtThisNumber = 11  # this number is one higher than we want because it will stop after we hit out number
    while(x < StopAtThisNumber):
        print x
        x = x + 1
        
        
if __name__ == "__main__":
  main()

