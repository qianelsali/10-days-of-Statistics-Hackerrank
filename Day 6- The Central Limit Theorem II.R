# Enter your code here. Read input from STDIN. Print output to STDOUT

out <- pnorm (250, mean = (100 * 2.4), sd = sqrt (100) * 2.0, lower.tail=TRUE)
cat(round(out,4))