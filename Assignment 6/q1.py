d={6: 10, 2: 20, 5: 30, 4: 40, 3: 50, 1: 60}

x = list((d.values()))
x.sort(reverse = True)

y = sorted(x)

print("Sorted list(Ascending): ",y)
print("Sorted list(Descending): ",x)

'''
Output:
Sorted list(Ascending):  [10, 20, 30, 40, 50, 60]
Sorted list(Descending):  [60, 50, 40, 30, 20, 10]
'''
