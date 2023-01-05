def product(dict):
    p=1
    for i in dict.values():
        p=p*i
    return p
d={1:10,2:50}
print("Dictionary:",d)
print("Product of values in dictionary:",product(d))

'''
Output:
Dictionary: {1: 10, 2: 50}
Product of values in dictionary: 500
'''
