# 1.
# Create a function that given a data frame and a vector, will add
# a the vector (if the vector length match with the rows number of the data frame)
# as a new variable to the data frame.

library(readr)
hw1_data <- read_csv("quiz/hw1_data.csv")

nrow(hw1_data)

x <- numeric(length = nrow(df))
length(x)



add_vector_data <- function(df,x) {
  if (nrow(df) == length(x)) {
    cbind(df,x)
  } else {
    print("no se puede tonto")
  }
}
# bien
# 2.

# Create a function that, given a data frame and two indexes, exchanges two values
# of the Code variable with each other

Id=c(1:10)
Age=c(14,12,15,10,23,21,41,56,78,12)
Sex=c('F','M','M','F','M','F','M','M','F','M')
Code=letters[1:10]
df=data.frame(Id,Age,Sex,Code)
df


change <- function(df, i,j) {
  x <- df[i, "Code"]
  df[i, "Code"] <- df[j,"Code"]
  df[j,"Code"] <- x
  return(df)
}

change(df,1,3)
change(df,7,2)
change(df,5,10)

# bien


# 3.
A=c(1:10)
B=seq(100,10,-10)
H=seq(-200,-50,along.with=B)
df=data.frame(A,B,H)

variable <- function(df,a,b) {
  x <- numeric(length = nrow(df))
  df1 <- cbind(df,x)
  names(df1)[ncol(df1)] <- paste("SUM_",a,"_",b, sep = "")
  for (i in 1:nrow(df1)) {
    df1[i,ncol(df1)] <- sum(a*df1[1:i,1],na.rm = TRUE)+sum(b*df1[1:i,2], na.rm = TRUE)
  }
  return(df1)
}

variable(hw1_data,3,6)

# bien 
# pero en pagina -- mejor la mia.. sirve para cualquier data frame
NEWDF=function(df,x,y)
{
  for (i in 1:nrow(df))
    df[i,4]=sum(x*df[1:i,1], na.rm = TRUE)+sum(y*df[1:i,2], na.rm = TRUE)
  names(df)[4]=paste('SUM',x,y,sep='_')
  df
}

NEWDF(hw1_data,3,6)


