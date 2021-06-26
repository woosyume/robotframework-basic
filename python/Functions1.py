# How we can create Functions

def testing() :
    print("This is woosyume's test")

# testing() # 인터프리터 언어라 함수 정의가 먼저 이루어져야 한다.

def multiply(a, b) :
    c = a * b
    return c

def addition(a, b) :
    c = a + b
    return c

print(addition(multiply(2, 3), 10))

# Required Argument
def takeInput(a, b) :
    c = a + b
    print("Sum of Values " + str(c))

takeInput(10, 30) # Required

# Keyword Argument ... a b를 키워드로서 사용
def takeKeywordInput(a, b) :
    c = a + b
    print("Sum of Values " + str(c))

takeKeywordInput(b=100, a=500)

# Default Argument
def takeDefaultInput(a, b = 10) :
    "This is for commenting"
    c = a + b
    print("Sum of Values " + str(c))
takeDefaultInput(11) # 두 번째 값이 설정되지 않으면 기본값으로 10이 적용되는구나.
takeDefaultInput(a = 100)