# this code here is just to experiment
 
library(nycflights13)
library(ggplot2)
library(dplyr)

as_tibble(diamonds)


n <- 100
a <- 2
b <- 5
sig_sq <- 0.5
x <- runif(n)
y <- a + b * x + rnorm(n, sd = sqrt(sig_sq))
(avg_x <- mean(x))
write(avg_x, "avg_x.txt")
plot(x, y)
abline(a, b, col = "purple")
dev.print(pdf, "toy_line_plot.pdf")

writeLines(capture.output(sessionInfo()), "sessionInfo.txt")

