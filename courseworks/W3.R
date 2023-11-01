# 1.a)
f = function(p){.07*p**(-0.93)}
r = integrate(f, lower = 0, upper = .2)
r

# 1.b)
r = integrate(f, lower = 0, upper = 1)
r

# 2
x = sample(1:5, 100, replace=TRUE, c(0.1,0.2,0.4,0.2,0.1))
table(x) / 100
plot(1:5, table(x) / 100, type="h", lwd=10, col="blue", ylim=c(0,0.5), xlab="x", ylab="P(X=x)")
