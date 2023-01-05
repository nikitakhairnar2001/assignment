str1=input('Enter first string:')
str2=input('Enter first string:')
new_a=str2[:2]+str1[2:]
new_b=str1[:2]+str2[2:]
print('New string:',new_a,new_b)

'''
output :
Enter first string:abc
Enter first string:xyz
New string: xyc abz
'''
