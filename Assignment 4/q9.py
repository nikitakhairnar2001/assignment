str=input('Enter the string:')
index=int(input('Enter the index you want to remove:'))
n=len(str)
new=''
i=0
while(i<n):
    if(i!=index):
        new+=str[i]
    i=i+1
print(new)


'''
output:
Enter the string:hello
Enter the index you want to remove:1
hllo
'''
