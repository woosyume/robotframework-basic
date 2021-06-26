tuple1 = (45, "Testing", "woosyume", 13.9)
print(tuple1[2])

# tuple1[2] = "ABCD" # -> Error. We cannot overwrite the value in tuple
# We cannot increase and decrease size and add / delete values

print(len(tuple1)) # 사이즈
print(tuple1.count("Testing")) # 개수
print(tuple1.index("woosyume")) # index of value

# Merge tuple
tuple2 = ("a", "bb", 1, 99.9)
# tuple3 = tuple1 + tuple2
tuple3 = tuple2 + tuple1
print(tuple3)

for i in tuple3 :
    print(i)

i = len(tuple1)
for i in range(0, i) : # 지정된 인덱스까지 루프
    print(tuple1[i])