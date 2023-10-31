c(1, 4, 5)
# output: [1] 1 2 3 4 5

c(T, F, T, F, F)
# output: [1]  TRUE FALSE  TRUE FALSE FALSE

seq(3, 10)
# output: [1]  3  4  5  6  7  8  9 10

seq(2, 5.2, .5)
# output: [1] 2.0 2.5 3.0 3.5 4.0 4.5 5.0

rep(2:3, 5)
# output: [1] 2 3 2 3 2 3 2 3 2 3

numeric(5)
# output: [1] 0 0 0 0 0

logical(6)
# output: [1] FALSE FALSE FALSE FALSE FALSE FALSE

character(10)
# output: [1] "" "" "" "" "" "" "" "" "" ""

x <- rep(seq(2.6, 4, .5), 3)
x
# output: [1] 2.6 3.1 3.6 2.6 3.1 3.6 2.6 3.1 3.6

length(x)
# output: 9

library(sfsmisc)

last(x)
# output: [1] 3.6

x <- append(x, 6, after = length(x))
x
# output: [1] 2.6 3.1 3.6 2.6 3.1 3.6 2.6 3.1 3.6 6.0
