# Basically, single and double quotation is totally same.
data = "Woosyume Testing"
data = 'Woosyume "Tes"ting'
data = "Woosyume 'Tes'ting"
print(data)

multiple_line = """
    Hello woosyume.
    This is just for testing.
    """
print(multiple_line)


mail = "  woosyume@gmail.com  "
# Fetch value by index
print(mail[0]) # w

# Fetch substring by starting and end index
print(mail[0:6]) # woosyu

# Fetch substring by giving starting index only
print(mail[8:]) # @gmail.com

# Fetch substring by giving end index only
print(mail[:8]) # woosyume

# Pre functions
print(len(mail))
print(mail.upper())
print(mail.lower())
print(mail.capitalize()) # Woosyume@gmail.com

# seems like 'trim'
print(mail.lstrip())
print(mail.rstrip())
print(mail.strip())

# How many any character exist
z = 0
testText = "woohyeok.kim@gmail.com"
for i in testText :
    if (i == 'm') :
        z += 1

print(z)

search = "gmail"
print(testText.find(search)) # If not found, returns -1

# Compare two strings
compareA = "Testing"
compareB = "testing"

if (compareA == compareB) : # case sensitive
    print("Compared")
else :
    print("NOT Compared")

# if (compareA.upper() == compareB.upper()) :