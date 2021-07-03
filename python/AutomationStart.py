import PyModule
# import하는 순간부터 이미 Call 되는구나.

PyModule.testingPythonModuleFunctions()
val = PyModule.sum(1, 2)
print(val)

obj = PyModule.TestClass()
obj.testing()