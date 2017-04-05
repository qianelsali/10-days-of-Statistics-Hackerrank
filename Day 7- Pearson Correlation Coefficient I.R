# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- scan("/dev/stdin")
n <- data[1]
x <- data[c(2:(n+1))]
y <- data[c((n+2):length(data))]

out <- cor.test(x,y)
cat(round(out$estimate,3))
