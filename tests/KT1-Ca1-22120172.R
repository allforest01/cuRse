# Ho va ten: Mai Van Tuan Kiet
# MSSV     : 22120172
# Ca       : 1/2
# Bai lam cua sinh vien bat dau duoi dong nay

n <- 72

# Câu 1: Tạo vector x chứa giá trị từ 1 đến n
x <- 1:n
print(x)

# Câu 2: Tạo function s(x) tính độ lệch chuẩn của x
s <- function(x) sqrt(1/(length(x) - 1) * sum((x - mean(x))^2))

# Câu 3: Chạy function s(x) với x là vector chứa giá trị từ 1 đến n
print(s(x))
