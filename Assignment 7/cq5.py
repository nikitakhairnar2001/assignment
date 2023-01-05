class triplets:
    def find(arr, n):
        found = False
        for i in range(0, n-2):    #0,1,2
            for j in range(i+1, n-1):#1,2,3,2,3,3
                for k in range(j+1, n):#2,3,4,3,4,4,3,4,4,4
                   if (arr[i] + arr[j] + arr[k] == 0):
                         print(arr[i], arr[j], arr[k])
                         found = True

        if (found == False):
            print("Not Found")

o=triplets 
arr =   [-25, -10, -7, -3, 2, 4, 8, 10] 
n = len(arr)
print("Triplets of given array whose sum is 0:")
o.find(arr,n)

'''
Output:
Triplets of given array whose sum is 0:
-10 2 8
-7 -3 10
'''
