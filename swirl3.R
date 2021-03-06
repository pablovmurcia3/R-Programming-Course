library(swirl)
swirl()

# The Split-Apply-Combine Strategy for Data Analysis'

flags

head(flags)

dim(flags)

class(flags)

lapply(flags, class)
# The lapply() function takes a list as input, applies a function to each 
# element of the list, then returns a list of the same length as the original
# one. Since a data frame is really just a list of vectors we can use it

cls_list <- lapply(flags, class)

cls_list

class(cls_list)

as.character(cls_list)
# sapply() allows you to automate this process by calling lapply() behind the
# scenes, but then attempting to simplify (hence the 's' in 'sapply') the result
# for you.

?sapply

cls_vect <- sapply(flags, class)

class(cls_vect)
# n general, if the result is a list where every element is of length one, then
# sapply() returns a vector. If the result is a list where every element is a
# vector of the same length (> 1), sapply() returns a matrix

sum(flags$orange)

flag_colors <- flags[, 11:17]

head(flag_colors)

lapply(flag_colors, sum)

sapply(flag_colors, sum)
#  arithmetic mean of each column will give us the proportion of 1s. (If it's not
# clear why, think of a simpler situation where you have three 1s and two 0s --
# (1 + 1 + 1 + 0 + 0)/5 = 3/5 = 0.6).

sapply(flag_colors, mean)

flag_shapes <- flags[, 19:23]

lapply(flag_shapes, range)

shape_mat<- sapply(flag_shapes, range)

shape_mat

class(shape_mat)

unique(c(3, 4, 5, 5, 5, 6, 6))

unique_vals <- lapply(flags, unique)

unique_vals

sapply(unique_vals, length)

sapply(flags, unique)

lapply(unique_vals, function(elem) elem[2]) # anonymous functions

###############################################################################

sapply(flags, unique)

# Whereas sapply() tries to 'guess' the correct format of the result, vapply()
# allows you to specify it explicitly.

vapply(flags, unique, numeric(1))

ok()

sapply(flags, class) 

vapply(flags, class, character(1)) # The 'character(1)' argument tells R that we
# expect the class function to return a character vector of length 1 when applied
# to EACH column of the flags dataset.

# You might think of vapply() as being 'safer' than sapply(), since it requires
# you to specify the format of the output in advance, instead of just allowing R
# to 'guess' what you wanted. In addition, vapply() may perform faster than
# sapply() for large datasets. However, when doing data analysis interactively
# (at the prompt), sapply() saves you some typing and will often be good enough.

?tapply

table(flags$landmass)

table(flags$animate)

tapply(flags$animate, flags$landmass, mean)

tapply(flags$population, flags$red, summary)

tapply(flags$population, flags$landmass, summary)
#############################################################################
library(datasets)
data(iris)
head(iris)


mean(iris$Sepal.Length)

tapply(iris$Sepal.Length, iris$Species, mean)


colMeans(iris[,1:4])

apply(iris[,1:4], 2, mean)

library(datasets)
data(mtcars)

head(mtcars)
?mtcars

tapply(mtcars$mpg, mtcars$cyl, mean)

sapply(split(mtcars$mpg, mtcars$cyl), mean)
with(mtcars, tapply(mpg, cyl, mean))

hpmean <- tapply(mtcars$hp, mtcars$cyl, mean)
hpmean
hpmean4 <- hpmean[1]
hpmean4
hpmean8 <- hpmean[3]
hpmean8
hpmean4 - hpmean8
