even=[2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78, 80, 82, 84, 86, 88, 90, 92, 94, 96, 98, 100]
odd=[1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99]

even.extend(odd)

list_4 = []
list_6 = []
list_8 = []
list_10 = []
list_3 = []
list_5 = []
list_7 = []
list_9 = []
for i in even:
    if i%4==0 :
        list_4.append(i)
      
    if i%6==0:
        list_6.append(i)

    if i%8==4:
        list_8.append(i)

    if i%10==0:
        list_10.append(i)

    if i%3==0:
        list_3.append(i)

    if i%5==0:
        list_5.append(i)

    if i%7==0:
        list_7.append(i)

    if i%9==0:
        list_9.append(i)
    else:
        pass


print("Numbers divisible by 4: ",list_4)
print("Numbers divisible by 6: ",list_6)
print("Numbers divisible by 8: ",list_8)
print("Numbers divisible by 10: ",list_10)
print("Numbers divisible by 3: ",list_3)
print("Numbers divisible by 5: ",list_5)
print("Numbers divisible by 7: ",list_7)
print("Numbers divisible by 9: ",list_9)


'''
Output:

Numbers divisible by 4:  [4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76, 80, 84, 88, 92, 96, 100]
Numbers divisible by 6:  [6, 12, 18, 24, 30, 36, 42, 48, 54, 60, 66, 72, 78, 84, 90, 96]
Numbers divisible by 8:  [4, 12, 20, 28, 36, 44, 52, 60, 68, 76, 84, 92, 100]
Numbers divisible by 10:  [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
Numbers divisible by 3:  [6, 12, 18, 24, 30, 36, 42, 48, 54, 60, 66, 72, 78, 84, 90, 96, 3, 9, 15, 21, 27, 33, 39, 45, 51, 57, 63, 69, 75, 81, 87, 93, 99]
Numbers divisible by 5:  [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 5, 15, 25, 35, 45, 55, 65, 75, 85, 95]
Numbers divisible by 7:  [14, 28, 42, 56, 70, 84, 98, 7, 21, 35, 49, 63, 77, 91]
Numbers divisible by 9:  [18, 36, 54, 72, 90, 9, 27, 45, 63, 81, 99]

'''




















