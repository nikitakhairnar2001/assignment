list=[4,5,'hello',5.2,8.0,6]
x=[]
y=[]
z=[]

for i in list:
    if type(i)==int:
        x.append(i)
    elif type(i)==float:
        y.append(i)
    elif type(i)==str:
        z.append(i)
        
print("List of int:",x)
print("List of float:",y)
print("List of string:",z)

'''
Output:

List of int: [4, 5, 6]
List of float: [5.2, 8.0]
List of string: ['hello']
'''
