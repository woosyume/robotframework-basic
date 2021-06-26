oDics={"Key1" : "Val1", 11 : "Val2", "Key3" : 32, "Key1" : "NewVal"} # Key should be unique
print(oDics)
print(oDics["Key1"])

oDics["Key3"] = "NewNewVal" # 이렇게 하면 바뀌는구나
print(oDics)
print(oDics.get("Key1"))

print(oDics.keys())
print(oDics.values())
print(oDics.items()) # Call all keys and values

print(len(oDics))