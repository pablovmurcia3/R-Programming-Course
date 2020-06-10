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

