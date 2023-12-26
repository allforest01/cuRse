# ------------ Cau 1A ------------
x = c(1, 2, 5, 7, -3, 0, 5, 1, 5, 6)
y = c(2, 2, 0, -5, 7, 8, 11, 9, 3, 2)
n = length(x)

x + y
x * y
x - y

# ------------ Cau 1B ------------
z = x[x %% 2 == 0]; z
t = y[y %% 2 == 1]; t

# ------------ Cau 1C ------------
print(x[x > 0])
print(y[y > 0])

# ------------ Cau 1D ------------
mean(x)
mean(y)

var(x)
var(y)

sd(x) / sqrt(n)
sd(y) / sqrt(n)

# ------------ Cau 1E ------------
max(x)
min(x)
max(y)
min(y)

# ------------ Cau 1F ------------
sort(x)
sort(y, decreasing = TRUE)

# ------------ Cau 1G ------------
save(x, file = "x.rda")
save(y, file = "y.rda")

# ------------ Cau 2A ------------
data1 = read.csv('../data/data01.csv')
mean(data1$FPSA); var(data1$FPSA); median(data1$FPSA)
mean(data1$TPSA); var(data1$TPSA); median(data1$TPSA)

# ------------ Cau 2B ------------
plot(data1$FPSA, type='l')
plot(data1$TPSA, type='l')

boxplot(data1$FPSA)
boxplot(data1$TPSA)

# ------------ Cau 2C ------------
data1$FPSA[data1$K == 0]
data1$FPSA[data1$K == 1]

# ------------ Cau 2D ------------
data2 = read.csv('../data/data02.csv')
data = data.frame(data1[1:3], data2)

# ------------ Cau 2E ------------
TSPA <- data$Age; TSPA
TSPA <- replace(TSPA, data$Age > 80, 2); TSPA
TSPA <- replace(TSPA, data$Age > 70 & data$Age <= 80, 1); TSPA
TSPA <- replace(TSPA, data$Age <= 70, 0); TSPA
