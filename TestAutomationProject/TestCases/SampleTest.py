# import TestAutomationProject.Library.CommonModule

# from TestAutomationProject.Library.CommonModule import CommonModuleA
# # objA = TestAutomationProject.Library.CommonModule.CommonModuleA()
# objA = CommonModuleA()
# objA.startBrowser()

# objB = TestAutomationProject.Library.CommonModule.CommonModuleB()
# objB.startBrowser()

from TestAutomationProject.Pages.Top.Test import Test

obj = Test()
obj.start_static_test()

