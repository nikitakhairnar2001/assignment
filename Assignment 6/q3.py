d1={1:10,2:20}
d2={3:30,4:40}
d3={5:50,6:60}
d4={}
d4.update(d1)
d4.update(d2)
d4.update(d3)
print("Concatenated dictionary:")
print(d4)

'''
Output:
Concatenated dictionary:
{1: 10, 2: 20, 3: 30, 4: 40, 5: 50, 6: 60}
'''
