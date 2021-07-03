class A :
    def __init__(self) -> None:
        pass

    # This is class method. 첫번째 파라미터는 반드시 self가 자동적으로 세팅된다고 한다.
    def welcome(self) :
        print(self)
        print("This is Class function.")

    def sum(self, a, b) :
        c = a + b
        print("Sum is " + str(c))

    def mul(self, a, b) :
        c = a * b
        return c

# To call any member of class, create object of that class
obj = A()

# Cll functions of class by using object
obj.welcome()

obj.sum(1, 2)
print(obj.mul(2, 3))