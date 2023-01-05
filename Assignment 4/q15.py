str=input("Enter the string:")
li=[]
for i in str:
    if i not in li:
        li.append(i)
print("Repeated character in a string:")
for i in li:
    d=str.count(i)
    if d>1:
       r=f"{i} : {d}"
       print(r)

'''
Output:
    
Enter the string:thequickbrownfoxjumpsoverthelazydog
Repeated character in a string:
t : 2
h : 2
e : 3
u : 2
r : 2
o : 4
'''
