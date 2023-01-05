mylist = ['red', 'black', 'white', 'green', 'orange']
print("List is:",mylist)
s = input("Enter the string: ")
a = list(filter(lambda mylist : s in mylist,mylist))
print("Elements of list that contain specific substring:",a)


'''
Output:

List is: ['red', 'black', 'white', 'green', 'orange']
Enter the string: ack
Elements of list that contain specific substring: ['black']

List is: ['red', 'black', 'white', 'green', 'orange']
Enter the string: abc
Elements of list that contain specific substring: []
'''
