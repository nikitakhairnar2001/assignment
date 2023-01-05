quantity=int(input("Enter the quantity you want to purchased:"))
unit=100
total=unit * quantity
if(quantity>=1000):
    discount=total * 10/100
    print('Total amount with discount:',discount)
else:
    print('Total amount is:',total)
    

'''
output:
    
Enter the quantity you want to purchased:1100
Total amount with discount: 11000.0

Enter the quantity you want to purchased:998
Total amount is: 99800
'''
