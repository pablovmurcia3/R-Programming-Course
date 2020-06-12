###########################################################################
                         #Functions
##########################################################################


# Functions in R are “first class objects”, which means that they can be 
# treated much like any other R object

# • Functions can be passed as arguments to other functions. 
#This is very handy for the various apply functions, like lapply() and 
# sapply().
#• Functions can be nested, so that you can define a function inside of 
#another function


f <- function() { 
  cat("Hello, world!") 
  } 

f() 
class(f)  #IMPORTANT:CLASS FUNCTION

f <- function(num) {
  for(i in seq_len(num)) { 
    print("Pablo!") 
  } 
} 

f(4)
formals #IMPORTANT: formals to the list of all arguments

# This next function returns the total number of characters printed 
# to the console
?cat
f <- function(num) {
  hello <- "Hello, world!\n"
  for(i in seq_len(num)) {
    cat(hello)
  }
  chars <- nchar(hello)*num
  chars
} 

f(3) 

# In R, the return value of a function isalways the verylast expression 
# that is evaluated

x <- 1:20
above <- function(x, n){
  use <- x > n
  x[use]
}

above(x,6)

above <- function(x, n){
  use <- x > n
  x[use]
}


above <- function(x, n = 10 ){  # the DEFAULT is 10
  use <- x > n
  x[use]
}


above(x)
above(x,3)

columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- double(nc) ## creates a numeric vector of o
  for(i in 1:nc ) {
    means[i] <- mean(y[,i],na.rm = removeNA)
  }
  means
}
numeric(nc)

hw1_data <- read_csv("quiz/hw1_data.csv")
columnmean(hw1_data)
a <- matrix( 1:20, 4)
columnmean(a)
?col_number

