class reverse:
    def revwords(self, s):
        return ' '.join(reversed(s.split()))
print(reverse().revwords('hello .py'))

'''
Output:

.py hello
'''
