v1 = 1:4
v2 = c(F, F, T, F)
df = data.frame(v1, v2)
df
# output:
#   v1    v2
# 1  1 FALSE
# 2  2 FALSE
# 3  3  TRUE
# 4  4 FALSE

df[,1]
# output:
# [1] 1 2 3 4

df[,2]
# output:
# [1] FALSE FALSE  TRUE FALSE

df[c(2,3),]
# output:
#   v1    v2
# 2  2 FALSE
# 3  3  TRUE
