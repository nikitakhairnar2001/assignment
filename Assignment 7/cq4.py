class TwoSum:  
    def __init__(self, list1, target):  
        self.list1 = list1  
        self.target = target  
          
    def solution(self):  
        length = len(list1)  
          
        for i in range(length-1):  
            for j in range(i+1, length):  
                if list1[i]+list1[j] == self.target:  
                    new_list = i, j  
                    return list(new_list)  
         
  
list1 = [90,20,10,40,50,60,70]  
target = 50  
obj = TwoSum(list1, target)  
print(obj.solution())  

'''
Output:
[2, 3]
'''
