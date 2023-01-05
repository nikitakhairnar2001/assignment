str=input('Enter the String:')
li=[]
for i in str:
    if i not in li:
        li.append(i)
print("Frequency of each character in string")

for i in li:
    print(f"{i} : {str.count(i)}")

'''
Output:

Enter the String:google.com
Frequency of each character in string
g : 2
o : 3
l : 1
e : 1
. : 1
c : 1
m : 1
'''
