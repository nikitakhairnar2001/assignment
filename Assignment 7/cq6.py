class Power:
    def __init__(self,x,y):
        self.x = x
        self.y = y
    
    def first(self):
        a = pow(self.x,self.y)
        print(a)
p1 = Power(3,4)
print("Power of (x,n):")
p1.first()

'''
Output:

Power of (x,n):
81
'''
