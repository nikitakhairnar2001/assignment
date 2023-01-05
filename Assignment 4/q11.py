string=input("Enter the string:")
def reverse(str):
    return str[::-1]
if len(string)%4==0:
        print("Reversed string:",reverse(string))
else:
        print(string)


'''
Output:
    
Enter the string:hello
hello

Enter the string:word
Reversed string: drow
'''
