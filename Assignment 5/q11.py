e=int(input("Enter the marks of English    :"))
m=int(input("Enter the marks of Marathi    :"))
p=int(input("Enter the marks of Physics    :"))
c=int(input("Enter the marks of Chemistry  :"))
m=int(input("Enter the marks of Mathematics:"))
b=int(input("Enter the marks of Biology    :"))
total=e+m+p+c+m+b
p=total/6
print("Total marks:",total)
print("Percentage:",p)
if p>=80:
    print("Grade : A")
elif p>=60 and p<80:
    print("Grade : B")
elif p>=50 and p<60:
    print("Grade : C")
elif p>=45 and p<50:
    print("Grade : D")
elif p>=25 and p<45:
    print("Grade : E")
else:
    print("Fail")


'''
output:

Enter the marks of English    :70
Enter the marks of Marathi    :80
Enter the marks of Physics    :83
Enter the marks of Chemistry  :67
Enter the marks of Mathematics:88
Enter the marks of Biology    :90
Total marks: 486
Percentage: 81.0
Grade : A
'''
