class sub:  
    def f1(self, s1):  
        return self.f2([], sorted(s1))  

    def f2(self, curr, s1):  
        if s1:  
            return self.f2(curr, s1[1:]) + self.f2(curr + [s1[0]], s1[1:])  
        return [curr]  
a=[]
n=int(input("Enter number of elements of list: "))
for i in range(0,n):
    b=int(input("Enter element: "))
    a.append(b)
print("Subsets: ")
print(sub().f1(a))


'''
Output:

Enter number of elements of list: 3
Enter element: 4
Enter element: 5
Enter element: 6
Subsets: 
[[], [6], [5], [5, 6], [4], [4, 6], [4, 5], [4, 5, 6]]
'''
