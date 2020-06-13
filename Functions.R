###########################################################################
                         #Functions
##########################################################################


# Functions in R are first class objects, which means that they can be 
# treated much like any other R object

#  Functions can be passed as arguments to other functions. 
#This is very handy for the various apply functions, like lapply() and 
# sapply().
#Functions can be nested, so that you can define a function inside of 
#another function
# the return value of a function is the last expression in the code
# have named arguments that can have default values

# formal arguments, included in the function definition ( use formals())


# ARGUMENT MATCHING
# the arguments can be matched positionally or bay name 
#  Positional matching just means that R assigns the first value to the 
# first argument, the second value to second argument

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
library(readr)
hw1_data <- read_csv("quiz/hw1_data.csv")
columnmean(hw1_data)
a <- matrix( 1:20, 4)
columnmean(a)


# ARGUMENT MATCHING
# the arguments can be matched positionally or bay name 
#  Positional matching just means that R assigns the first value to the 
# first argument, the second value to second argument

mydata <- rnorm(100) 
sd(mydata) 
sd(x = mydata) 
sd(x = mydata, na.rm = FALSE) 
sd(na.rm = FALSE, x = mydata) 
# When specifying the function arguments by name,it doesn’t matter in 
# what order you specify them
# we can mix both methods

args(lm) # IMPORTANT: args function
args(plot)
?plot
# Function arguments can also be partially matched, which is useful for
# interactive work. The order of operations when given an argument is
# 1. Check for exact match for a named argument 
# 2. Check for a partial match 
# 3. Check for a positional match

# LAZY evaluation

# Arguments to functions are evaluated lazily, so they are evaluated only 
# as needed in the body of the function. 

f <- function(a, b) {
  a^2
  } 
f(2) 

f <- function(a, b) { 
  print(a) 
  print(b) 
  } 
f(45) 

# THE ... ARGUMENT
# indicate a variable number of arguments that are usually passed on to other
# functions. 
# The ... argument is often used when extending another function and you don’t 
# want to copy the entire argument list of the original function

myplot <- function(x, y, type = "l", ...) {
  plot(x, y, type = type, ...) ## Pass '...' to 'plot' function 
  }
  
# Generic functions use ... so that extra arguments can be passed to methods.
mean
 

# The ... argument is necessary when the number of arguments passed to 
# the function cannot be known in advance. This is clear in functions 
# like paste() and cat().

args(cat)
args(paste )
# The arguments that appear after ... on the argument list must be named
# explicitly and cannot be 
# partially matched or matched positionally
