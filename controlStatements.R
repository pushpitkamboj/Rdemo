#subsetting 
vec <- c(10, 20, 30, 40, 50)
subset_vec <- vec[1:3]  # Selects the first three elements
subset_vec

#subsetting matrices
mat <- matrix(1:9, nrow = 3)
subset_mat <- mat[1, 2]  # Selects the element in the first row and second column
subset_mat

subset_mat <- mat[mat > 2]  # Selects all elements greater than 5
subset_mat

#vectorized operation: few operations with less lines of code

a <- c(2,3,50)
b <- c(10, 20,3)

d = a + b
d
a > 2
