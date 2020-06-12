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