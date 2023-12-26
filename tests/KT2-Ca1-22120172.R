# Ho va ten: Mai Van Tuan Kiet
# MSSV     : 22120172
# Ca       : 1/2
# Bai lam cua sv bat dau ben duoi dong nay.

size <- 6
prob <- size / (2 * size + 1)

n <- 30
Y <-function(n) {
  x<-rbinom(n,size,prob)
  ((mean(x)-size*prob)*sqrt(n))/sqrt(size*prob*(1-prob))
}

vecY<-function(m) replicate(m,Y(n))

n <- 1000
m <- 1000

hist(vecY(m),freq=0,breaks=50)

curve(dnorm(x),col="blue",lty=1,lwd=2,add=TRUE)

