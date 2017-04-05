# Enter your code here. Read input from STDIN. Print output to STDOUT

n <- 100
u <- 500
sd <- 80
z <- 1.96

x <- (z*sd)/sqrt(n)

A <- u - x
B <- u + x
cat(round(c(A,B),2),sep='\n')