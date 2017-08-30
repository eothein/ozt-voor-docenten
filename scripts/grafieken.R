library(alr3)
boxplot(heights) #geeft twee plots naast elkaar
heights
#Maak een histogram, en gebruik de relative frequentie op de y-as
hist(heights$Mheight,freq=FALSE, col='grey')
#Laten we de normale verdeling erbij tekenen over de grafiek
m <- mean(heights$Mheight)
s <- sd(heights$Mheight)
minimum <- min(heights)
max <- max(heights)
curve(dnorm(x, mean=m,sd=s),minimum, max, add=T, col="blue" )

#Grafiek toont een mooie normale verdeling

#QQPlot maken
qqnorm(heights$Mheight, main = "Normal Q-Q Plot", xlab = "Theoretical Quantiles", ylab = "Sample Quantiles", plot.it = TRUE, datax = FALSE)
qqline(heights$Mheight, datax = FALSE, distribution = qnorm, probs = c(0.25, 0.75), qtype = 7)

#Shapiro test uitvoeren (The Shapiro–Wilk test tests dat (Null-hypothese) de data uit een normale distributie komt. )
resultaat <- shapiro.test(heights$Mheight)
#Resulaat is groter dan (alpha - 0.05, 0.01 ... ) dus er is geen bewijs gevonden de null-hypothese te verwerpen

#Skewness en kurtosis bepalen
#Skewness = maat voor symmetrie (negatief = mean < median en dus links georienteerd, positief = mean > median, 0 symmetrisch)
library(e1071)
s <- skewness(heights$Mheight)
#Kurtosis is maat voor de afvlakking van de curve (0 = normaal, positief = scherpe curve, negatief afgeplatte curve)
k <- kurtosis(heights$Mheight)

