dic={'a': 10, 'b': 20, 'c': 30, 'd': 40, 'e': 50, 'f': 60}
key=input("Enter the key:")
x = list(dic.keys())
r="Not Presnt"
if(x.count(key) == 1):
        r="Present"
print(r)

'''
Output:
Enter the key:a
Present

Enter the key:g
Not Presnt
'''
