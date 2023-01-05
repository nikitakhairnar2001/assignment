items='red,white,black,red,green,black'
print('list:',items)
word=[word for word in items.split(",")]
print('Sorted list by alphabetically:')
print(",".join(sorted(list(set(word)))))


'''
output:
list: red,white,black,red,green,black
Sorted list by alphabetically:
black,green,red,white
'''
