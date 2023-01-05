d1 = {'key1': 1, 'key2': 3, 'key3': 2}
d2 = {'key1': 1, 'key2': 2}

for x in d1.items():
    for y in d2.items():
        if x == y :
            print("Present in both dict1 and dict2:",x)

'''
Output:
Present in both dict1 and dict2 :('key1', 1)
'''
