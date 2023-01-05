d={6: 10, 2: 20, 5: 30, 4: 40, 3: 50, 1: 60}

print("Sorted dictionary by key:")
for key in sorted(d):
    print("%s: %s" % (key, d[key]))

'''
Output:
Sorted dictionary by key:
1: 60
2: 20
3: 50
4: 40
5: 30
6: 10

'''
