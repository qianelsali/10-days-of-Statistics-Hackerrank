# Enter your code here. Read input from STDIN. Print output to STDOUT

p <- 1/3
q <- 1 -p

out <- sum(dbinom(1:5,size=5, prob=p))
cat(round(out,3))

