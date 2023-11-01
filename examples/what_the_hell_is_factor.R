factor(c('a', 'b', 'a', 'b', 'b', 'a'))
# output:
# [1] a b a b b a
# Levels: a b

factor(c('b', 'a', 'b', 'a', 'a', 'b'))
# output:
# [1] b a b a a b
# Levels: a b

factor(c('b', 'a', 'b', 'a', 'a', 'b'), ordered = T)
# output:
# [1] b a b a a b
# Levels: a < b

ordered(factor(c('b', 'a', 'b', 'a', 'a', 'b')))
# output:
# [1] b a b a a b
# Levels: a < b

gl(n=2, k=3, length=11, labels=c("a", "b", "c"))
# output:
# [1] a a a b b b a a a b b
# Levels: a b c
