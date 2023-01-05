def count_word_length(my_list):
    count=0
    for item in my_list:
        if len(item)>=count:
            count=len(item)
    return count
temp_list=['hello','python','function']
print('Longest word count is %d'%count_word_length(temp_list))


'''
output:
Longest word count is 8
'''
