list1 = [34, 43.22, "Testing", 55, 89, "World"]
# Fetch by index
print(list1[2])

# Range of index
print(list1[1:3]) # [43.22, 'Testing']
print(list1[1:4]) # [43.22, 'Testing', 55] 마지막 인덱스는 미포함

# Start index only
print(list1[2:])
print(list1[:4])

list1[3] = 100
print(list1[1:4])
list1.insert(3, "ABCD")
print(list1)

list1.append("TEST"); 
print(list1)

print(len(list1)) # .len() 이런게 아니구나..

# Compare two lists
list2 = [34, 43.22, "Testing", 55, 89, "World"]
list3 = list1 + list2
print(list3)

