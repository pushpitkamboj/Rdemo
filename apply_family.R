#APPLY FAMILY 
#lapply it will take list and a function which is to be applied on the list

#suppose i want the average of a list
ls <- list( a <- c(1,2,3,43,31), b <- c(3,45,1,42) )
lapply(ls, mean)

#The sapply function is similar to lapply, but it tries to simplify the result to a vector or matrix if possible.
sapply(ls, mean)

# Define two vectors of the same length
a <- c(5,6,7,8)
b <- c(3,4,5,6)

# Apply product of elements a and b
result <- mapply(prod, a, b)
#mapply is basically for the function which uses more than one argument to operate

# Print the result
print(result)


#tapply is to calulate the respective functions on the segregation of different factors
#like students marks then factor is male and female so to get avg marks of male and female...
# Define sales amounts
sales <- c(100, 200, 150, 300, 250, 400)

# Define regions
regions <- c("North", "North", "South", "South", "East", "East")

# Calculate the average sales for each region
average_sales <- tapply(sales, regions, mean)

# Print the average sales
print(average_sales)


#split is used to split and give the data based on the factor
# Define a numeric vector
values <- c(10, 20, 30, 40, 50, 60)

# Define a factor indicating groups
groups <- factor(c("A", "A", "B", "B", "C", "C"))

# Split the vector into groups based on the factor
split_values <- split(values, groups)

# Print the result
print(split_values)

#mean by group
mean_group <- lapply(split_values, mean)
mean_group

#apply is used to calculate any operation using fn on multidimensional vector
# Create a matrix
my_matrix <- matrix(1:9, nrow = 3, byrow = TRUE)

# Use apply to sum the rows
row_sums <- apply(my_matrix, 1, sum)

# Print the result
print(row_sums)


#PRACTICE QUESTIONS MIX
a <- c(2,3, 5)
b <- c(31,21,43)
d <- c(4,6,8)
c <- rbind(a, b, d)
c

r1 <- c[ ,3]
r2 <- c[ ,1]
r2
result <- rbind(r1, r2)
result

as.integer('3')
k <- as.integer(c("7", "7*", "7.5", "7.9"))
k

k2 <- as.character(c('3L', '4r'))
k2

x <- c(4, 7, 6, 5, 2, 8)
I <- x[x < 6]
I
j <- x[x > 7]
j
 k <- x[I | j]
 k
gender <- c("M", "male ", "Female", "fere", "Mme")
grepl("m", gender)

xc <- c('a' = 5, 'b' = 6, 'c' = 7, 'd' = 8)
xc
gender <- c(2, 1, 1, 2, 0, 1, 1)
recode <- c(male = 1, female = 2)

gender <- factor(gender, levels = recode, labels = names(recode))
gender


Dept <- c('Sale', 'Purchase', 'Store')
Val <- c(34, 12, 35, 100, 56, 40, 100, 200, 300) 
Val <- matrix(Val, nrow = 3, ncol = 3)
FIRM <- list()
FIRM <- list(department = Dept, values = Val)
Months <- c('January', 'February', 'March')
FIRM <- c(FIRM, list(Months))
FIRM
class(Val)

#str gives the summary of whatever we pases to it as argument
str(Dept)
str(mean)
str(factor)
