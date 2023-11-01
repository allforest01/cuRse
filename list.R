x <- c(1:4)
y <- FALSE
z <- matrix(c(3,7), nrow=2, ncol=2)
t <- list(x, y, z)
t
# output:
# [[1]]
# [1] 1 2 3 4

# [[2]]
# [1] FALSE

# [[3]]
#      [,1] [,2]
# [1,]    3    3
# [2,]    7    7


t[1]
# output:
# [[1]]
# [1] 1 2 3 4

t[[1]]
# output:
# [1] 1 2 3 4

t[[3]][1,]
# output:
# [1] 3 3

t[[3]][,2]
# output:
# [1] 3 7

a = list()
a$fruit = "Apple"
a$color = "green"
a
# output:
# $fruit
# [1] "Apple"

# $color
# [1] "green"

a[[1]] = "Banana"
a[[2]] = "yellow"
a
# output:
# $fruit
# [1] "Banana"

# $color
# [1] "yellow"
