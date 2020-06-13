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
