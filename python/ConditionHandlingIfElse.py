i = 101

# Indent is important
if (i > 100) : 
    print("Number is greater")
else : 
    print("Number is smaller")

# Multiple IF
input1 = input("Please input1231 a number -- ");
input1 = int(input1)

if (input1 < 0) :
    print("This is negative number. ")
elif (input1 == 0) :
    print("This is zero. ")
elif (input1 % 2 == 0) :
    print("This is even number. ")
else :
    print("This is odd number. ")

# Nested IF
input2 = input("Please input a number -- ");
input2 = int(input2)

if (input2 >= 0) :
    if (input2 % 2 == 0) :
        print("This is even number. ")
    else :
        print("This is odd number. ")
else : 
    print("This is negative number. ")
    
# OR
input3 = input("Please input a number -- ");
input3 = int(input3)

if (input3 > 100 or input3 < 0) :
    print("This is invalid number.")
else :
    print("This is valid number.")

# AND
input4 = input("Please input a number -- ");
input4 = int(input4)

if (input4 > 0 and input4 % 2 == 0) :
    print("This is valid number.")
else :
    print("This is invalid number.")
