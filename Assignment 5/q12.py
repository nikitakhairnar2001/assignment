n=int(input("Enter the total number of classes:"))
na=int(input("Enter number of classes attend:"))
p=na/n*100
print("Total percentage is:",p)
if(p>=75):
    print("Student is allowed to sit in exam")
else:
    print("Student is not allowed to sit in exam")


'''
output:
    
Enter the total number of classes:20
Enter number of classes attend:15
Total percentage is: 75.0
Student is allowed to sit in exam

Enter the total number of classes:20
Enter number of classes attend:7
Total percentage is: 35.0
Student is not allowed to sit in exam
'''
