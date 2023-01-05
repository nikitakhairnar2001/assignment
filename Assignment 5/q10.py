salary = int(input("Enter your salary = "))

year = int(input("Enter your year of service = "))

if year>5:
    print("Your Net bonus is",0.05*salary)
    print("Yours salary(+Bonus) = ",salary + (0.05*salary))
else:
    print("You are not eligible for bonus as you have less service years.") 
    print("Yours salary = ",salary)

'''
Output:

Enter your salary = 20000
Enter your year of service = 7
Your Net bonus is 1000.0
Yours salary(+Bonus) =  21000.0

Enter your salary = 15000
Enter your year of service = 4
You are not eligible for bonus as you have less service years.
Yours salary =  15000
'''
