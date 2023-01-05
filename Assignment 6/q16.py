d={6: 10, 2: 20, 5: 30, 4: 40, 3: 50, 1: 60}
print("Dictionary is:",d)
li=[]
for i in d.values():
    li.append(i)
    
s=sorted(li,reverse=True)
for i in range(3):
    print("The",i+1, "highest value is",s[i])

'''
Output:
Dictionary is: {6: 10, 2: 20, 5: 30, 4: 40, 3: 50, 1: 60}
The 1 highest value is 60
The 2 highest value is 50
The 3 highest value is 40

'''
