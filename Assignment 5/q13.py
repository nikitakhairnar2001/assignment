n = 10
print("Enter 10 number")  
li=[]
for i in range(n):
    x=int(input("Enter Number:"))
    li.append(x)
print("Entered number is:",li)
sum = 0
for num in li:
        sum+=num
average = sum / n
print("Average of numbers is: ", average)

'''
Output:
Enter 10 number
Enter Number:14
Enter Number:15
Enter Number:16
Enter Number:17
Enter Number:18
Enter Number:25
Enter Number:28
Enter Number:36
Enter Number:25
Enter Number:45
Entered number is: [14, 15, 16, 17, 18, 25, 28, 36, 25, 45]
Average of numbers is:  23.9
'''
