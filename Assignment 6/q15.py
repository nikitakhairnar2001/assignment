from collections import Counter

d1={'a':100,'b':200,'c':300}
d2={'a':300,'b':200,'d':400}

Cdict = Counter(d1) + Counter(d2)
print(Cdict)
'''
Output:
Counter({'a': 400, 'b': 400, 'd': 400, 'c': 300})
'''
