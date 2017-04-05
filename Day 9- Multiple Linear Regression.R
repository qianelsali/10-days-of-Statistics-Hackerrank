# Enter your code here. Read input from STDIN. Print output to STDOUT
data<- scan("/dev/stdin")
m <- data[1]
n <- data[2]
q <- data[(m+1)*n+3]

training <- matrix(data[c(3:(n*(m+1)+2))],nrow = n, ncol = (m+1),byrow = T)
new <- matrix(data[c(((m+1)*n+4):length(data))], nrow = q, ncol = m,byrow = T)

y <- training[,(m+1)]
x <- training[,1:m]
model <- lm (formula=y~x)
b <- matrix(coef(model),byrow=F)
a <- matrix(1, nrow = q, ncol =1)
newdata <- cbind(a,new)
out <- newdata %*% b  
cat(round(out,2),sep = '\n')                 

