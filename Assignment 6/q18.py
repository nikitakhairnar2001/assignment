d1=[{},{},{}]
d2=[{1,2},{},{}]

print("First Dictionary:",d1)
print(all(not d for d in d1))

print("Second Dictionary:",d2)
print(all(not d for d in d2))

'''
Output:
First Dictionary: [{}, {}, {}]
True
Second Dictionary: [{1, 2}, {}, {}]
False
'''
