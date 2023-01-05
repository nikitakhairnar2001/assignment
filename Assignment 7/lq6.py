li =  [19, 65, 57, 39, 152, 639, 121, 44, 90, 190]
print("Orginal list:",li)
newlist = list(filter(lambda li : (li % 13 == 0 or li % 19 == 0),li))
print("list divisible by 13 and 19:",newlist)


'''
Output:
Orginal list: [19, 65, 57, 39, 152, 639, 121, 44, 90, 190]
list divisible by 13 and 19: [19, 65, 57, 39, 152, 190]
'''
