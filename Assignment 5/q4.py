x=int(input('Enter the side X:'))
y=int(input('Enter the side Y:'))
z=int(input('Enter the side Z:'))
if x==y==z: 
    print('Triangle is equilateral')
elif x!=y!=z:
    print('Triangle is scalene')
else:
    print('Triangle is isosceles')


'''
output:
    
Enter the side X:30
Enter the side Y:30
Enter the side Z:30
Triangle is equilateral

Enter the side X:20
Enter the side Y:30
Enter the side Z:40
Triangle is scalene

Enter the side X:30
Enter the side Y:30
Enter the side Z:20
Triangle is isosceles
'''
