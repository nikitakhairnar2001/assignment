is_num = lambda q: q.replace('.','',1).isdigit()
print(is_num('3654'))
print(is_num('hello'))
print(is_num('-26'))

'''
Output:

True
False
False
'''
