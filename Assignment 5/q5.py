n = int(input("Enter how many number you want to enter:"))
li=[]
for i in range(n):
    x=int(input("Enter the number:"))
    li.append(x)
print("Entered number is:",li)
sum = 0
for num in li:
        sum+=num
print("Sum of numbers is: ", sum)
average = sum / n
print("Average of numbers is: ", average)



'''
Output:
Enter how many number you want to enter:5
Enter the number:1
Enter the number:2
Enter the number:3
Enter the number:4
Enter the number:5
Entered number is: [1, 2, 3, 4, 5]
Sum of numbers is:  15
Average of numbers is:  3.0

'''
