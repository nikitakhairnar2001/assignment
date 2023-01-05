str=input('Enter the string:')
if len(str)<2:
    print('Empty string')
else:
   count=0
   for i in str:
        count=count+1
        new=str[0:2]+str[count-2:count]
   print('New string:',new)

'''
output :

Enter the string:thisisniceone
New string: thne

Enter the string:ab
New string: abab

Enter the string:f
Empty string
'''
