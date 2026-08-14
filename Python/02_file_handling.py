# # creates a file with text
# with open("sample.txt", "w") as f:
#     f.write("Papa for a reason")

# creates new file but if file already exsists throw an error
try:
    with open("sample.txt", "x") as f:
        f.write("Papa for a reason")
except FileExistsError: 
    print("File already exists")
finally:
    print("Program ended here")

              
        