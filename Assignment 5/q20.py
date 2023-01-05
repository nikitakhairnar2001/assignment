list=[1,2,3,4]
print("List is:",list)
def square(li):
    s=[]
    for i in list:
        s.append(i*i)
    return s
        
print("Square of elements in list:",square(list))

'''
Output:

List is: [1, 2, 3, 4]
Square of elements in list: [1, 4, 9, 16]
'''
