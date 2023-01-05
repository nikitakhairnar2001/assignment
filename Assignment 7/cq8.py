class reverse():
    def __init__(self):
        self.str1 = ''
    def get_string(self):
        self.str1 = input('Enter the String:')
    def print_string(self):
        return ''.join(reversed(self.str1))
str1 = reverse()
str1.get_string()
print(str1.print_string())

'''
Output:
Enter the String:python.py
yp.nohtyp

'''
