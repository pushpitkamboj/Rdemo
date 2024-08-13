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

if (3 > 1) {
  y <- 3
  y
} else {
  y <- 1
  y
}


x <- c(1, 2, 4)
k <- list(
  vec <- c(1,2,3) ,
  rec <- c(7,8,9)
)
#for loop syntax 1
for (i in 1: 2) {
  print(k[i])
}
#syntax 2
for (i in seq_along(x)) {
  print(x[i])
}

#while loops
count <- 1
while (count < 5) {
  count <- count + 1
  print(count)
  
} #SAME LOGIC WITH FOR LOOP
for (i in 1 : 5) {
  count <- count + 1
  print(count)
}

#REPEAT IS SIMILAR TO WHILE (1)
x <- -1
while (1) {
  if (x == 1){
    print("the loop will break")
    break
    }
  else print("it is still going")
  
  x <- x + 1
}

#NEXT IS SAME AS CONTINUE IN C++
