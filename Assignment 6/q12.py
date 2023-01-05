d={1: 10, 2: 20, 3: 30, 4: 40, 5: 50, 6: 60}
print("Dictionary is:",d)
li=[]
for i in d.values():
    li.append(i)
print("Maximum value in dictionary:",max(li))
print("Minimum value in dictionary:",min(li))

'''
Output:
Dictionary is: {1: 10, 2: 20, 3: 30, 4: 40, 5: 50, 6: 60}
Maximum value in dictionary: 60
Minimum value in dictionary: 10
'''
