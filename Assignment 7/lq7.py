def sort_matrix(M):
    result = sorted(M, key=lambda matrix_row: sum(matrix_row)) 
    return result

m = [[1, 2, 3], [2, 4, 5], [1, 1, 1]]


print("Original Matrix:",m)
print("Sorted Matrix:",sort_matrix(m)) 

'''
Output:
Original Matrix: [[1, 2, 3], [2, 4, 5], [1, 1, 1]]
Sorted Matrix: [[1, 1, 1], [1, 2, 3], [2, 4, 5]]
'''
