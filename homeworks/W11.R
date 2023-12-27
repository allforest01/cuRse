# ------------ Bài 1 ------------
# Dữ liệu
price <- c(300, 250, 400, 550, 317, 389, 425, 289, 389, 559)
bedrooms <- c(3, 3, 4, 5, 4, 3, 6, 3, 4, 5)

# (a) Vẽ đồ thị phân tán và đường hồi quy
plot(bedrooms, price, main = "Đồ thị phân tán và đường hồi quy",
     xlab = "Số phòng ngủ", ylab = "Giá nhà (1000 USD)")
abline(lm(price ~ bedrooms), col = "red")

# (b) Kiểm định giả thuyết
linear_model <- lm(price ~ bedrooms)

# Xem tóm tắt kết quả hồi quy
summary(linear_model)

# Kiểm định giả thuyết (tính độ chệch có ý nghĩa)
# Giả thuyết H0: Beta1 = 0 (Không có ảnh hưởng)
# Giả thuyết Ha: Beta1 != 0 (Có ảnh hưởng)
# Sử dụng giá trị p-value để quyết định

# Xem giá trị p-value cho hệ số bedrooms
coef_test <- summary(linear_model)$coefficients["bedrooms", "Pr(>|t|)"]
print(coef_test)

# So sánh với mức ý nghĩa (thường chọn 0.05)
alpha <- 0.05
if (coef_test < alpha) {
  print("Có đủ bằng chứng để bác bỏ giả thuyết H0")
} else {
  print("Không đủ bằng chứng để bác bỏ giả thuyết H0")
}

# ------------ Bài 2 ------------
# Dữ liệu
beers <- c(5, 2, 9, 8, 3, 7, 3, 5, 3, 5)
BAL <- c(0.10, 0.03, 0.19, 0.12, 0.04, 0.095, 0.07, 0.06, 0.02, 0.05)

# Tạo dataframe từ dữ liệu
data <- data.frame(beers, BAL)

# (a) Vẽ đồ thị phân tán và đường thẳng hồi quy
plot(beers, BAL, main = "Đồ thị phân tán và đường thẳng hồi quy",
     xlab = "Số chai bia", ylab = "Mức cồn trong máu (BAL)")
abline(lm(BAL ~ beers), col = "blue")

# (b) Kiểm định giả thuyết
linear_model <- lm(BAL ~ beers, data = data)

# Tăng BAL lên 0.02 khi thêm một chai bia
added_beer_effect <- 0.02
predict_BAL <- predict(linear_model, data.frame(beers = beers + 1))

# Kiểm định giả thuyết (tính độ chệch có ý nghĩa)
# Giả thuyết H0: Beta1 = 0 (Không có ảnh hưởng)
# Giả thuyết Ha: Beta1 > 0 (Có ảnh hưởng)
# Sử dụng giá trị p-value để quyết định

# Xem giá trị p-value cho hệ số beers
coef_test <- summary(linear_model)$coefficients["beers", "Pr(>|t|)"]
print(coef_test)

# So sánh với mức ý nghĩa (thường chọn 0.05)
alpha <- 0.05
if (coef_test < alpha) {
  print("Có đủ bằng chứng để bác bỏ giả thuyết H0")
} else {
  print("Không đủ bằng chứng để bác bỏ giả thuyết H0")
}

# (c) Kiểm định giả thuyết khi không uống bia
# Giả thuyết H0: Beta0 = 0 (Mức cồn khi không uống bia bằng 0)
# Giả thuyết Ha: Beta0 != 0 (Mức cồn khi không uống bia khác 0)
# Sử dụng giá trị p-value để quyết định

# Xem giá trị p-value cho hệ số intercept (Beta0)
intercept_test <- summary(linear_model)$coefficients["(Intercept)", "Pr(>|t|)"]
print(intercept_test)

# So sánh với mức ý nghĩa (thường chọn 0.05)
if (intercept_test < alpha) {
  print("Có đủ bằng chứng để bác bỏ giả thuyết H0")
} else {
  print("Không đủ bằng chứng để bác bỏ giả thuyết H0")
}

# ------------ Bài 3 ------------
# Dữ liệu
elevation <- c(600, 1000, 1250, 1600, 1800, 2100, 2500, 2900)
temperature <- c(56, 54, 56, 50, 47, 49, 47, 45)

# (a) Vẽ đồ thị phân tán và đường hồi quy
plot(elevation, temperature, main="Scatterplot and Regression Line",
     xlab="Elevation (ft)", ylab="Temperature (F)", pch=16, col="blue")
abline(lm(temperature ~ elevation), col="red")

# (b) Kiểm định giả thuyết tốc độ giảm nhiệt là 9.8 độ C/km
# Chuyển đổi độ C/km sang độ F/ft
slope_hypothesis <- -9.8 * (5/9) * 1000 / 3.281  # Đổi từ độ C/km sang độ F/ft

# Tạo mô hình hồi quy
model <- lm(temperature ~ elevation)

# Kiểm định giả thuyết
summary_test <- summary(model)

# In kết quả
cat("Kiểm định giả thuyết tốc độ giảm nhiệt là 9.8 độ C/km:\n")
cat("Giả thuyết:\n")
cat("    H0: Slope =", slope_hypothesis, "\n")
cat("    Ha: Slope <", slope_hypothesis, "\n\n")
cat("Kết quả kiểm định:\n")
print(summary_test)

# In giá trị p
cat("\nGiá trị p:", summary_test$coefficients["elevation", "Pr(>|t|)"], "\n")

# So sánh giá trị p với mức ý nghĩa (alpha), ví dụ: alpha = 0.05
alpha <- 0.05
if (summary_test$coefficients["elevation", "Pr(>|t|)"] < alpha) {
  cat("\nCó đủ bằng chứng để bác bỏ giả thuyết H0.\n")
} else {
  cat("\nKhông có đủ bằng chứng để bác bỏ giả thuyết H0.\n")
}

# ------------ Bài 4 ------------
# Cau a
data <- read.csv("../data/rocket.motor.csv")
attach(data)
x = age
y = streng
plot(x, y)
model = lm(y ~ x)
abline(model, col = "blue")

# Cau b
B0 = coef(model)[1]; B0
B1 = coef(model)[2]; B1

# Cau c
B0 + B1 * 20

# Cau d
estimated_y = predict(model, data.frame(age = age)); estimated_y
plot(y, estimated_y)
abline(lm(estimated_y ~ y), col = "red")
summary(model)

# Cau e
n = length(age)
MSE = sum(resid(model) ^ 2) / (n - 2)
Sxx = sum((x - mean(x)) ^ 2)

t = (B1 - (-30)) / sqrt(MSE / Sxx)
alpha = 0.01
ifelse(abs(t) > qt(1 - alpha / 2, n - 2), "Bác bỏ H0", "Chấp nhận H0")
p_value = 2 * (1 - pt(abs(t), n - 2)); p_value

# Cau f
t = (B0 - 0) / sqrt(MSE / Sxx)
alpha = 0.01
ifelse(abs(t) > qt(1 - alpha / 2, n - 2), "Bác bỏ H0", "Chấp nhận H0")
p_value = 2 * (1 - pt(abs(t), n - 2)); p_value

# Cau g
t = (B0 - 2500) / sqrt(MSE * (1 / n + (mean(x) ^ 2) / Sxx))
alpha = 0.01
ifelse(t > qt(1 - alpha, n - 2), "Bác bỏ H0", "Chấp nhận H0")
p_value = 1 - pt(t, n - 2); p_value

# Cau h
alpha = 0.05
eps = qt(1 - alpha / 2, n - 2) * sqrt(MSE / Sxx)
ci = c(can.duoi = B1 - eps, can.tren = B1 + eps); ci

# Cau i
alpha = 0.05
x0 = 20
eps = qt(1 - alpha / 2, n - 2) * sqrt(MSE * (1 / n + (mean(x) - x0) ^ 2 / Sxx))
predicted_mean = mean(y) + (x0 - mean(x)) * B1
ci = c(can.duoi = predicted_mean - eps, can.tren = predicted_mean + eps); ci

# Cau j
alpha = 0.05
# SSE = sum((y - estimated_y) ^ 2)
SSE = sum(model$residuals ^ 2)
x0 = 20
y0 = B0 + B1 * x0
eps = qt(1 - alpha / 2, n - 2) * sqrt(MSE * (1 + 1 / n + (mean(x) - x0) ^ 2 / Sxx))
ci = c(can.duoi = y0 - eps, can.tren = y0 + eps); ci

# Cau k
par(mfrow=c(1, 2))
plot(x, resid(model))
abline(h = 0, lty = 3)

detach(data)
