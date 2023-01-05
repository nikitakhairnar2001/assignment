#No duplicate key is allowed in dict
#Remove duplicate key
dict={1:'Vijay',2:'Amar',3:'Santosh',2:'Umesh'}
print(dict)

'''
Output:
{1: 'Vijay', 2: 'Umesh', 3: 'Santosh'}
'''


#Remove duplicate value
dict={1:'Vijay',2:'Amar',3:'Santosh',4:'Amar'}
print("Dictionary:",dict)
result={}
for key,value in dict.items():
    if value not in result.values():
        result[key] = value
print("After removing duplicate from dictionary:")
print(result)

'''
Output:
Dictionary: {1: 'Vijay', 2: 'Amar', 3: 'Santosh', 4: 'Amar'}
After removing duplicate from dictionary:
{1: 'Vijay', 2: 'Amar', 3: 'Santosh'}
'''

