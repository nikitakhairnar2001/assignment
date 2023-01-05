def capitalize(str):
    num_upper=0
    for letter in str[:4]:
        if letter.upper()==letter:
            num_upper+=1
    if num_upper>=2:
       return str.upper()
    return str
str=input('Enter the string:')
print('Uppercase Character:',capitalize(str))


'''
output:
Enter the string:PYthon
Uppercase Character: PYTHON

Enter the string:pythON
Uppercase Character: pythON
'''
