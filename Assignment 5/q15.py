def sum_product(li):
    sum=0
    product=1
    for i in li:
        product *= i
        sum += i
    print("Product:",product)
    print("Average:",sum/len(li))
n=100
li=[]
for i in range(n):
    x=int(input("Enter Number:"))
    li.append(x)
    quit=input("Press Q to quit:")
    if quit=='q':
        print("You Exit") 
        break
    else:
        sum_product(li)

'''
Output:
Enter Number:5
Press Q to quit:
Product: 5
Average: 5.0
Enter Number:6
Press Q to quit:
Product: 30
Average: 5.5
Enter Number:4
Press Q to quit:q
You Exit
'''
