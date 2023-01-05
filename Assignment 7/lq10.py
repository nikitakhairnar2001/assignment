li =  [19, 'red', 12, 'green', 'blue', 10, 'white', 'green', 1] 
print("Original list:",li)
a = list(filter(lambda li : type(li)==int,li))
a.sort()
b = list(filter(lambda li : type(li)==str,li))
b.sort()
a.extend(b)
print("Sorted list:",a)

'''
Output:

Original list: [19, 'red', 12, 'green', 'blue', 10, 'white', 'green', 1]
Sorted list: [1, 10, 12, 19, 'blue', 'green', 'green', 'red', 'white']
'''
