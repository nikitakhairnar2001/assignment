str=input('Enter the string:')
word=str.split()
large=small=word[0]
for i in range(0,len(word)):
    if len(large)<len(word[i]):
        large=word[i]
    if len(small)>len(word[i]):
        small=word[i]
print('Largest word:',large)
print('Smallest word:',small)


'''
output : 
Enter the string:hello i am nikita
Largest word: nikita
Smallest word: i
'''
