n = int(input("Enter number of elements you want to enter : "))
li=[]
for i in range(n):
    e=int(input("Enter Number:"))
    li.append(e)
print(li)
s= int(input("Enter number you want to search in list:"))
for x in li:
   if(x==s):
        print("Found in list")
        li.remove(x)
print("New List is:",li)

'''
Output:
Enter number of elements you want to enter : 3
Enter Number:7
Enter Number:8
Enter Number:9
[7, 8, 9]
Enter number you want to search in list:8
Found in list
New List is: [7, 9]

Enter number of elements you want to enter : 3
Enter Number:7
Enter Number:8
Enter Number:8
[7, 8, 8]
Enter number you want to search in list:5
New List is: [7, 8, 8]
'''
