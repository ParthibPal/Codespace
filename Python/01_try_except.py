# # try except block example
# try:
#     print("Papa")
# except:
#     print("An exception occurs")


# # Basic try catch block (ZeroDivisionError)
# try:
#     num = int(input("Enter a number: "))
#     print(100/num)
# except ZeroDivisionError:
#     print("Can not divide by zero")


# # Multiple try catch block (ValueError/ZeroDivisionError)
# try:
#     num = int(input("Entre a number: "))
#     print(100/num)
# except ValueError:
#     print("Enter a valid number")
# except ZeroDivisionError:
#     print("Can not divide by zero")


# Capturing the exception object
# try:
#     num = int(input("Enter number: "))
#     print(10 / num)
# except Exception as e:
#     print("Error occured: ",e)


# Multiple Exceptions in One Block with else block
# try:
#     num = int(input("Enter number: "))
#     result = 100 / num
# except(ZeroDivisionError, ValueError) as e:
#     print("Error occured: ",e)
# else:
#     print("Result: ",result)
# finally:
#     print("Program executed sucessfully.")


# Raising exception manually
age = int(input("Enter age: "))
if age < 18:
    raise ValueError("Age must be 18 or above")

print("Eligible")

