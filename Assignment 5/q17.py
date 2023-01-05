li=list(range(1,101))

def even(l):
    even=[]
    for i in l:
       if i%2==0:
          even.append(i)
    print("Even Numbers in given list:")
    print(even)
def odd(l):
    odd=[]
    for i in l:
       if i%2!=0:
          odd.append(i)
    print("Odd Numbers in given list:")
    print(odd)
even(li)
odd(li)

a=[]
for num in range(2,101):
    if all(num%i!=0 for i in range(2,num)):
       a.append(num)
print("Prime Numbers in given list:")
print(a)

'''
Output:

Even Numbers in given list:
[2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78, 80, 82, 84, 86, 88, 90, 92, 94, 96, 98, 100]
Odd Numbers in given list:
[1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99]
Prime Numbers in given list:
[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
'''
