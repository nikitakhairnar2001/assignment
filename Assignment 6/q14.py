dict={1:'Vijay',2:'Amar',3:'Santosh',2:'Umesh'}

dict1={}

print(all(not d for d in dict))
print(all(not d for d in dict1))

'''
Output:
False
True
'''
