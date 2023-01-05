n=int(input("Enter the number of co-ordinates you want to enter:"))
li=[]
for i in range(n):
    x,y=map(int,(input("Enter the co-ordinates:").split(',')))
    li.append((x,y))
print("\nThe set of co-ordinates is:")
print(li)
li2=[]
for i in li:
        new=[]
        for j in i:
                j=j+8
                new.append(j)
        li2.append(tuple(new))
print("\nThe set of positive co-ordinates:")
print(li2)


'''
Output:
    
Enter the number of co-ordinates you want to enter:6
Enter the co-ordinates:1,-2
Enter the co-ordinates:-2,4
Enter the co-ordinates:-1,-1
Enter the co-ordinates:-8,-3
Enter the co-ordinates:0,4
Enter the co-ordinates:10,-3

The set of co-ordinates is:
[(1, -2), (-2, 4), (-1, -1), (-8, -3), (0, 4), (10, -3)]

The set of positive co-ordinates:
[(9, 6), (6, 12), (7, 7), (0, 5), (8, 12), (18, 5)]
'''
