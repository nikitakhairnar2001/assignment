str=input('Enter the string:')
char=str[0]
str=str.replace(char,'$')
str=char+str[1:]
print('Replaced String:',str)


'''
output :
Enter the string:restart
Replaced String: resta$t
'''
