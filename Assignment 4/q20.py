str=input('Enter the string:')
str1=""
for i in str:
    if i not in str1:
        str1=str1+i
print('After remove duplicate from string:',str1)

'''
output:
Enter the string:hello
After remove duplicate from string: helo
'''   
