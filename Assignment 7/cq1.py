class Solution:
   def roman_numbers(num):
        symbol = ["M" , "CM" , "D" , "CD" , "C" , "XC" , "L" , "XL" ,"X" , "IX" , "V" , "IV" , "I"]
        value  = [1000 , 900 , 500 , 400 ,  100 ,  90 ,  50 ,   40  ,  10  ,  9 ,  5  ,  4  ,   1 ]
        roman = ""
        i=0
        while num>0:
            div = num//value[i]
            num = num%value[i]
            while div:
                 roman = roman+symbol[i]
                 div = div-1
            i=i+1
        return roman

o=Solution
num = int(input("Enter the number:"))
print(o.roman_numbers(num))

'''
Output:
Enter the number:12
XII

Enter the number:566
DLXVI

'''
