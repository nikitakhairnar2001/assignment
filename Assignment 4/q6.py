str=input('Enter the string:')
if len(str)>2:
    if str.endswith('ing'):
        str+='ly'
    else:
        str+='ing'
print(str)


'''
output:
Enter the string:abc
abcing

Enter the string:string
stringly
'''
