


x <- rnorm(1000)
x
x[1]
sum(x)
cumsum(x)

# yo 
for(i in seq_along(x)) {
  if(x[i] < -0.2) {
    x[i] <- -1
  } else if(x[i] >= -0.2 &  x[i] < 0.2) {
    x[i] <- 0
  } else {
    x[i] <- 1
  }
}
sum(x)


# profe
x=rnorm(1000,0,1)
y=rep(0,length(x))
for(i in 1:length(x)){
  if(x[i]< (-0.2)){
    y[i]=-1
  }else if(x[i]<0.2&&x[i]>=-0.2){
    y[i]=0
  }else{y[i]=1}
}
sum(y)
##########################################################################

x <- seq(100)
y <- rep(0, length(x))
y
for(i in seq_along(x)) {
  if(x[i]/x[i] == 1 & x[i]/1 ==1){
    y <- x[i]
  } else if (x[i]/!x[i] == 1) {
      
    
    }
      
}
##############################################################
library(readr)
library(ggplot2)
ipcEstud <- read_csv("ipcEstud.csv")
View(ipcEstud)

for (i in seq_along(ipcEstud$V2)) {
  if((ipcEstud$V2)[i] < 100) {
    ipcEstud$V2[i] <- ipcEstud$V2[i]*10
  } else if ((ipcEstud$V2)[i] < 1000) {
    ipcEstud$V2[i] <- ipcEstud$V2[i]*10
  } else if ((ipcEstud$V2)[i] < 1200) {
    ipcEstud$V2[i] <- ipcEstud$V2[i]*10
  }
}
View(ipcEstud)


ipcEstud$V1 = as.Date(ipcEstud$V1)
plot(ipcEstud$V2, type = "l")
 ?plot


