# Enter your code here. Read input from STDIN. Print output to STDOUT
data<- scan("/dev/stdin")
n <- data[1]
x <- data[c(2:(n+1))]
y <- data[c((n+2):length(data))]

Rx <- rank(x)
Ry <- rank(y)
Dxy <- Rx - Ry

d <- 0
for (i in 1:n)
{
  d <- d + Dxy[i]^2 
}

Rxy <- 1 - (6*d)/(n*(n^2-1))
cat(round(Rxy,3))