###############################################################################
#Scoping rules#
###############################################################################
#  Symbol Binding
lm <- function(x) { x * x } 
lm 

# (environments: list of symbol and value = collection of symbol  value pairs)
# (Every environment has a parent environment and it is possible for an environment 
# to have multiple “children”. The only environment without a parent is the empty) environment.

# symbol/objects: lm
# Value: the function
# bind both -- how? R search in two levels:
# 1. Search the global environment (a kind of envirment)/(i.e. your workspace) 
# for a symbol name matching the one requested. 
# 2. Search the namespaces of each of the packages on the search list
search() # this is the order of the search list (first is the environment)

#   with library() the namespace of that package gets put in position 2 of the
# search list (by default) and everything else gets shifted down the list. 
##################################################################################
# SCOPING RUles ( main feature that make it different from the original S language)

# determine how a value is associated with a free variable in a function 

# R uses lexical scoping/static scoping

f <- function(x, y) { # z is the free variable.. not an argument
  x^2 + y / z         # x y are the formal variables
}

# how assign a value to z?

###############################################################################
# the values of free variables are searched for in the environment in which the 
# function was defined
###############################################################################


# A function, together with an environment, makes up what is called a closure or
# function closure

# How do we associate a value to a free variable?
# Search process

# 1.If the value of a symbol is not found in the environment in which a function
# was defined,then the search is continued in the parent environment. 

#2. The search continues down the sequence of parent environments until we hit 
# the top-level environment; this usually the global environment (workspace) or 
#the namespace of a package

#3.  After the top-level environment, the search continues down the search list
# until we hit the empty environment.
###############################################################################
# why this matter?

# Typically, a function is defined in the global environment, so that the values
# of free variables are just found in the user’s workspace

# in R you can have functions definedinsideotherfunction
# in this case the environment in which a function is
# defined is the body of another function!

make.power <- function(n) {
  pow <- function(x) {
    x^n 
  }
  pow
}


cube <- make.power(3)
cube(3)
square <- make.power(2)
square(3)
cube
# cube() has a free variable n. What is the value of n here? Well, its value is 
# taken from the environment where the function was defined. 

#  explore the environment of a function 

ls(environment(cube))  
get("n", environment(cube)) 


#  Difference between lexical and dynamic scoping rules

y <- 10

f <- function(x) {
  y <- 2
  y^2 + g(x) 
} 

g <- function(x) {
  x*y 
}

f(3)

# With LEXICAL scoping the value of y in the function g
# is looked up in the environment in which the function was 
# defined, in this case the global environment, so the value of y is 10

# With DYNAMIC scoping, the value of y is looked up in the environment
# from which the function was called (sometimes referred to as the calling 
# environment). In R the calling environment is known as the parent frame. 
# In this case, the value of y would be 2. 

# When a function is defined in the global environment and is subsequently
# called from the global environment, then the defining environment and the
# calling environment

# Lexical scoping in R has consequences beyond how free variables are looked
# up. In particular, it’s the reason that all objects must be stored in memory 
# in R