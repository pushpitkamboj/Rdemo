#FUNCTIONS
add <- function(x, y) {
  k <- x + y
  return (k) 
}
ans <- add(2,4)
ans
print <- function() {
  print("this function will print")
}
print()

above <- function(a, n) {
  use <- a > n #This line creates a logical vector called use where each element is TRUE
  #if the corresponding element in a is greater than n and FALSE otherwise.
  x[use] #This line returns the elements of 'a' where use is TRUE. Essentially,
  #it filters the vector a to only include the elements that are greater than n.
}

#example 2
remove_na <- function(vec) {
  not_na <- !is.na(vec)           # Create a logical vector: TRUE for non-NA values
  vec[not_na]                     # Return only the non-NA values
}

# Usage
remove_na(c(1, 2, NA, 4, NA, 5))  # Returns: 1 2 4 5

#example 3 
greater_threshold <- function(vec, threshold) {
  greater <- vec >= threshold
  vec[greater]
}
greater_threshold(c(3,4,12,1,8), 4)

#mean of vector AND TO IGNORE IF na VALUES EXIST
calculate_mean <- function(vec, removeNA = TRUE) {
  if (removeNA) {
    vec <- vec[!is.na(vec)]  # Remove NA values if removeNA is TRUE
  }
  
  sum_of_elements <- sum(vec)      # Sum all the elements in the vector
  number_of_elements <- length(vec) # Count the number of elements in the vector
  mean_value <- sum_of_elements / number_of_elements  # Divide the sum by the number of elements to get the mean
  return(mean_value)               # Return the calculated mean
}

# Usage
calculate_mean(c(1, 2, 3, NA, 5))

#function -- lazy argument
f <- function(a, b) {
  k <- a^2
  k
}
f(3) #returns 9 

# ... is used when we don't want to use specify all the arguments

#STRING OPERATIONS
text <- "hello world"
paste0("hello", "world")
paste("hello", "world")

nchar(text)
sprintf("The value is: %d", 42)  # Returns: "The value is: 42"

#detecting andremoving special characters
k <- gsub("[^a-zA-Z0-9]", "", "Hello@# <>/World!")  # Returns: "HelloWorld"

trimws("   Hello World   ")    # Returns: "Hello World"
exp(0)
log(3)

#global scoping and lexical scoping 
f <- function() {
  print(x)  # Looks for x in the environment where f was defined
}

g <- function() {
  x <- 20
  f()      # Call f, which looks for x in the environment where f was defined
}

x <- 10  # Global variable

g()  # Output: 10 (because f() uses the global x, not g's x)

#ANOTHER EXAMPLE 
x <- 100  # Global variable

my_function <- function() {
  x <- 50  # Local variable
  print(x)  # Refers to the local variable
}

my_function()  # Output: 50

print(x)  # Output: 100 (global variable)

#time and date
datestring <- ("august 13 2024")  
x <- strptime(datestring,"%B %d %Y")
x
class(x)  #this is posixt format

#this is time format
date <- as.Date("2024-08-13")
date2 <- as.Date("2024-08-20")
difference <- date2 - date
difference
class(date) 

data <- read.csv("specdata/001.csv")
head(data)

# Calculate the average Marks
summary_df <- data %>% summarize(AverageMarks = mean(Marks))

vec <- c(1,123,42)
vec
a <- max(vec)
a
min <- min(vec)
min
product <- prod(vec)
product
sum <- sum(vec)
sum
range <- range(vec)
range
mean <- mean(vec)
mean

mat <- matrix(1:12 , nrow = 3, ncol = 4)
mat
B <- sort(vec)
B
C <- rev(B)
C
D <- c(1, 123, 42)
mymatrix <- rbind(vec,B,C)
mymatrix
vectors <- mymatrix[1:2, ]
vectors
print(mymatrix[1,1])
