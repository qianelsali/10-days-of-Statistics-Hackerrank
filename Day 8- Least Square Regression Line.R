# Enter your code here. Read input from STDIN. Print output to STDOUT

x <- c(95,85,80,70,60)
y <- c(85,95,70,65,70)

model <- lsfit(x,y)
coef_model <- coef(model)

out <- coef_model[1] + 80 * coef_model[2]
cat (round(out,3))
