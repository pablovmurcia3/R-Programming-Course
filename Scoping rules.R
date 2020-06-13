###############################################################################
                                     #Scoping rules#
##############################################################################
#  Symbol Binding

lm <- function(x) { x * x } 
lm 
# symbol/objects: lm
# Value: the function
# bind both -- how? R search in two levels:
# 1. Search the global environment (i.e. your workspace) for a symbol name
# matching the one requested. 
# 2. Search the namespaces of each of the packages on the search list
search() # this is the order of the search list (first is the environment)

#   with library() the namespace of that package gets put in position 2 of the
# search list (by default) and everything else gets shifted down the list. 

#SCOPING RUles ( main feature that make it different from the original S language)


