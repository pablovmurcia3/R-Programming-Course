library(swirl)
swirl()

TRUE == TRUE

(FALSE == TRUE) == FALSE

6 == 7

6 < 7

10 <= 10

5 != 7 # THE NOT OPERATOR !

!5 == 7

# There are two AND operators in R, `&` and `&&`. 
# Both operators work similarly

FALSE & FALSE

# You can use the `&` operator to evaluate AND across a
# vector. The `&&` version of AND only evaluates the first
# member of a vector

TRUE & c(TRUE, FALSE, FALSE)

TRUE | c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE) 
# In this case, the left operand is only evaluated with the
# first member

TRUE || c(TRUE, FALSE, FALSE)

# The OR operator follows a similar set of rules. The `|`
# version of OR evaluates OR across an entire vector, while
# the `||` version of OR only evaluates the first member of a
# vector.

# All AND operators are evaluated before OR operators. 

5 > 8 || 6 != 8 && 4 > 3.9
 
 # logical operators
 
isTRUE(6 > 4) 
 
identical('twins', 'twins')

# The xor() function stands for exclusive OR.

xor(5 == 6, !FALSE)
# xor(TRUE, TRUE) would have evaluated to FALSE.

ints <- sample(10)

ints 

ints > 5

# WHICH, ANY and ALL takes logical vectors!!!!

#The which() function takes a logical vector as an argument
# and returns the indices of the vector that are TRUE

which(ints > 7)

# the functions any() and all() take logical vectors as 
# their argument. The any() function will return TRUE if 
# one or more of the elements in the logical vector is TRUE. 
# The all() function will return TRUE if every element in the
# logical vector is TRUE.

any(ints < 0)

all(ints > 0)

######################################################################

swirl()

Sys.Date()

x <- Sys.Date()

mean( c(2, 4, 5))


boring_function <- function(x) {
  x
}
submit()

boring_function('My first function!')
# To understand computations in R, two slogans are helpful: 
# 1. Everything that exists is an object. 
# 2. Everything that happens is a function call.

boring_function # source code

my_mean <- function(my_vector) {
  sum(my_vector)/length(my_vector)
}

submit()

my_mean(c(4, 5, 10))

remainder <- function(num, divisor =2 ) {
  num %% divisor
  
}

submit()

remainder(5)

remainder(11, 5)

remainder(divisor = 11, num = 5)
# when you explicitly designate argument values by name, the ordering of the
# arguments becomes unimportant.

remainder(divisor = 11, num = 5)

remainder(4, div = 2)

swirl()

args(remainder) # you can pass functions as arguments

add_two_numbers <- function(num1, num2){
     num1 + num2
}

multiply_two_numbers <- function(num1, num2){
	num1 * num2
}

some_function <- function(func){
  func(2, 4)
}
# by passing functions as arguments  some_function(add_two_numbers)
# will evaluate to 6, while some_function(multiply_two_numbers) will evaluate
# to 8.


evaluate <- function(func, dat){
  func(dat)
}

submit()

evaluate(sd, c(1.4, 3.6, 7.9, 8.8))

# anonymous functions

evaluate(function(x){x+1}, 6) # The first argument is a tiny anonymous function 

evaluate(function(x){x[1]},c(8, 4, 0))

evaluate(function(x){x[length(x)]}, c(8, 4, 0))

?paste # The ellipsis allows an indefinite number of arguments to be passed into
# a function

paste("Programming", "is", "fun!")

# The ellipses can be used to pass on arguments to other functions that are
# used within the function you're writing
# This is a strict rule in R programming: all arguments after an ellipses must
# have default values


telegram <- function(...){
  paste("START", ..., "STOP")
  
}

submit()

telegram("hi")

add_alpha_and_beta <- function(...){
  #   # First we must capture the ellipsis inside of a list
  #   # and then assign the list to a variable. Let's name this
  #   # variable `args`.
  #
  args <- list(...)
  #
  #   # We're now going to assume that there are two named arguments within args
  #   # with the names `alpha` and `beta.` We can extract named arguments from
  #   # the args list by using the name of the argument and double brackets. The
  #   # `args` variable is just a regular list after all!
  #   
  alpha <- args[["alpha"]]
  beta  <- args[["beta"]]
  #
  #   # Then we return the sum of alpha and beta.
  #
  alpha + beta 
}

add_alpha_and_beta(alpha=1000, beta=300)

mad_libs <- function(...){    # REVISAR
  # Do your argument unpacking here!
  args <- list(...)
  place <- args[["place"]]
  adjective <- args[["adjective"]]
  noun <- args[["noun"]]
  # Don't modify any code below this comment.
  # Notice the variables you'll need to create in order for the code below to
  # be functional!
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}

mad_libs(place='New Zealand', adjective='beautiful', noun='landscape')


# New binary operator!!!

"%p%" <- function(x,y){ 
  
  paste(x,y)
  
}


"I"%p%"love"%p%"R!"
