l = [[10, 20], [40], [30, 56, 25], [10, 20], [33], [40]]
li = []
for i in l:
    if i not in li:
        li.append(i)
print(sorted(li))

'''
Output:
[[10, 20], [30, 56, 25], [33], [40]]
'''
