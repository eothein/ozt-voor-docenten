#Barplot met whiskers maken

#Generereren van de data
x1 <- rnorm(150,mean = 100, sd = 10)
x2 <- rnorm(150,mean = 100, sd = 50)

data <- matrix(c(x1,x2),nrow = 150)
#Gemiddelden en stdev berekenen
data.means <- apply(data,2,mean)
data.sds <- apply(data,2,sd)

#Barplot tekenen
bar <- barplot(data.means, ylim = c(0,200), names.arg = c('m = 100, sd = 10',('m = 100, sd = 50')),col="blue", axis.lty=1, xlab="Datasets", ylab="Waarden")
#Functie definiëren voor error bars te tekenen
error.bar <- function(x, y, upper, lower=upper, length=0.1,...){
  if(length(x) != length(y) | length(y) !=length(lower) | length(lower) != length(upper))
    stop("vectors must be same length")
  arrows(x,y+upper, x, y-lower, angle=90, code=3, length=length, ...)
}

error.bar(bar,data.means, data.sds)
