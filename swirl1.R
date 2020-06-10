#SWIRL EXERCISES
install.packages("swirl")
library(swirl)
install.packages("R Programming")

#You can exit swirl and return to the R prompt (>) at any time
#by pressing the Esc key If you are already at the prompt, type
# bye() to exit and save your progress. When you exit properly,
# you'll see a short message letting you know you've done so.

swirl()

5+7

x <- 5+7

x

y <- x - 3

y

z <- c(1.1, 9, 3.14)

?c

z

c(z,555,z)

z*2+100

my_sqrt <- sqrt(z-1)

my_sqrt

my_div <- z/my_sqrt

my_div

c(1, 2, 3, 4) + c(0, 10) # 'recycling' method

c(1, 2, 3, 4) + c(0, 10, 100)

my_div

##########################################################
swirl()

getwd()

ls()

x <- 9

ls()

list.files() # show files in working directory

?list.files

args(list.files) # Interesting: see the arcuments of a function

old.dir <- getwd()

dir.create("testdir") #  create a directory in the current working directory

setwd("testdir")

file.create("mytest.R")

list.files()

file.exists("mytest.R")

file.info("mytest.R")

file.rename("mytest.R","mytest2.R")

file.copy("mytest2.R", "mytest3.R")

file.path("mytest3.R")

file.path("folder1","folder2")

?dir.create

dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)

setwd(old.dir)

##############################################################

1:20

pi:10

15:1

?`:` 

seq(1,20)

seq(0, 10, by=0.5)

my_seq <- seq(5, 10,length=30)

length(my_seq)

1:length(my_seq)

seq(along.with = my_seq)

seq_along(my_seq)

rep(0, times = 40)

rep(c(0, 1, 2), times = 10)

rep(c(0, 1, 2), each = 10)
##########################################################
# Vectors come in two different flavors: atomic vectors and lists

num_vect <- c( 0.5, 55, -10,6)

tf <- num_vect < 1

tf

num_vect >= 6


# The `<` and `>=` symbols in these examples are called
# 'logical operators'. Other logical operators include `>`,
#`<=`, `==` for exact equality, and `!=` for inequality.


#If we have two logical expressions, A and B, we can ask
# whether at least one is TRUE with A | B (logical 'or' a.k.a.
# 'union') or whether they are both TRUE with A & B (logical
# 'and' a.k.a. 'intersection'). Lastly, !A is the negation of
# A and is TRUE when A is FALSE and vice versa.

my_char <- c( "My", "name", "is")

my_char

paste(my_char, collapse = " ")

# collapse` argument to the paste() function tells R that
# when we join together the elements of the vector

my_name <- c(my_char, "Pablo")

my_name

paste(my_name, collapse = " ")

# paste() can also be used to join the elements of
# multiple character vectors.

paste("Hello", "world!", sep = " ")

paste(1:3, c("X", "Y", "Z"), sep = "") # differente from c(vector, vector)

paste(LETTERS, 1:4, sep = "-") # LETTERS is a predefined variable in R 
# containing a character vector of all 26 
##########################################################

#NA 

swirl()

x <- c(44, NA, 5,NA)

x*3

y <- rnorm(1000)

z <- rep(NA,1000) 

my_data <- sample(c(y,z), 100)

my_na <- is.na(my_data)

my_na

my_data == NA #The reason you got a vector of all NAs is that NA is not
# really a value, but just a placeholder for a quantity that
# is not available. 

sum(my_na)
# The trick is to recognize that underneath the surface, R
# represents TRUE as the number 1 and FALSE as the number 0.
# Therefore, if we take the sum of a bunch of TRUEs and
# FALSEs, we get the total number of TRUEs.

my_data

# NAN (not a number)

0/0

Inf - Inf

###########################################################

x

x[1:10] #this is an index vector
# index vectors come in four different flavors -- logical
# vectors, vectors of positive integers, vectors of negative
# integers, and vectors of character strings 

x[is.na(x)]

y <- x[!is.na(x)]

y

y[y > 0]

x[x > 0]

x[!is.na(x) & x > 0] # wow ---- combine knowledge of logical 
# operators and subsetting skills

x[1:10] # In this case, we're providing a
# vector of positive integers inside of 
# the square brackets

# R uses 'one-based indexing', which
# means the first element of a vector is
# considered element 1.

x[c(3,5,7)]

x[0]

x[3000]

x[c(-2,-10)] #gives us all elements of x EXCEPT for the 2nd and 10
# elements. 

x[-c(2,10)] # same result

vect <- c(foo = 11, bar = 2, norf = NA) # Vector with names

vect

names(vect)

vect2 <- c(11,2,NA)

names(vect2) <- c("foo", "bar", "norf") # assign names

identical(vect, vect2)

vect["bar"]

vect[c("foo","bar")] # subsetting a vector by named elements

###########################################################

my_vector <- 1:20

my_vector

dim(my_vector)

length(my_vector)

dim(my_vector) <- c(4, 5)

dim(my_vector)

attributes(my_vector)

my_vector

class(my_vector)

my_matrix  <- my_vector
#  the point that a matrix is simply an atomic vector with a
# dimension attribute

?matrix

my_matrix2 <- matrix(1:20, nrow = 4, ncol = 5)

identical(my_matrix, my_matrix2)

patients <- c("Bill", "Gina", "Kelly", "Sean")

cbind(patients, my_matrix) #we're left with a matrix 
# of character strings, which is no good.

# matrices can only contain ONE class of data.
# Therefore, when we tried to combine a character vector with
# a numeric matrix, R was forced to 'coerce' the numbers to
# characters, hence the double quotes

my_data <- data.frame(patients, my_matrix)

my_data

class(my_data)

cnames <- c( "patient","age", "weight", "bp", "rating", "test")

colnames(my_data) <- cnames

my_data

