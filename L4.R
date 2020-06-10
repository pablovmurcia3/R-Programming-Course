# SUBSETTING 
# operators :[], [[]], $
# [] returns an object of the same class as the original 
# [[]] to extracts of a list or a data frame a single element 
# $ extract elements by names similar to [[]] 

# vector
x <- c("a","b")
x[1] #subset by numeric 
x[1:2]

x[x > "a"] #subset by a logical 

u <- x > "a"
x[u]

# list 

x <- list(foo = 1:4, bar = 0.6)
x[1] # i get a list --- always return the same class as the original object 

x[[1]] # i get just the vector


x$bar
x$foo

#extract multiple elementes
x[1:2]
x[c(1,2)]

# [[]] can be used with computed indices; $ can only be used with literal

x[[1]][[2]]
x[[c(1,3)]]

# matrices

x <- matrix(1:6, 2,3)
x
x[1,2]  # by default it retrives a vector! not matrix 
x[2,1]
x[,1]
x[1,]

# if i what to retrive a matrix

 x[1,2, drop = FALSE]
 x[1, , drop = FALSE]
 
 
 # PARTIAL MATCHING --- a tip 
 
x <- data.frame(foo =1:4, bar =c(T,T,F,F)) 
 
x$f 
x$b  # it works with only one letter!!!!
x[["a"]]

###########################################################

#Removing NA values

x <- c(1,NA,3)
#i whant to eliminate the NA
bad <- is.na(x)
bad
x[!bad] # ! the opposite

x <- c(1,NA,3)
y <- c("a",NA, "C")

good <- complete.cases(x,y)

x[good]
y[good] 

#from data frame
# goodDataFrame <- complete.cases(data.frame)
# data,frame[goodDataFrame,]  (in rows)

###########################################################
# Vectorized Operations

# + > < 

x <- 1:4
y <- 6:9
x
y
x + y
x > 2
x >= 2
y == 8
x*y # one by one
x/y

#Matrices 
x <- matrix(1:4, 2,2) # element-wise multiplication

y <- matrix(rep(10,4), 2,2) #true matrix multiplication


x*y
x%*%y



