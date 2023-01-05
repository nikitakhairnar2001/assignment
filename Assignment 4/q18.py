def replace(s):
    s=s.replace(',','temp')
    s=s.replace('.',',')
    s=s.replace('temp','.')
    return s
str=input("Enter the String:")
print("By swapping comma and dot string is:",replace(str))

'''
Output:

Enter the String:32.054,23
By swapping comma and dot string is: 32,054.23
'''
