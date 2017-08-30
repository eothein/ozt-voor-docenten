#Dataset opzetten
library(lattice)
eiwit <- seq(0,60,10)
gewichts <- c(177,231,249,348,361,384,404)

plot(x = eiwit, y= gewichts)
grid()
summary(model)
model <- lm(gewichts ~ eiwit)
abline(model, col='red')


#Residuen plotten
xyplot(resid(model) ~ fitted(model),
       xlab = "Fitted Values",
       ylab = "Residuals",
       main = "Residual Diagnostic Plot",
       panel = function(x, y, ...)
       {
         panel.grid(h = -1, v = -1)
         panel.abline(h = 0)
         panel.xyplot(x, y, ...)
       }
)
#Residuen normaal verdeeld?
qqmath( ~ resid(model),
        xlab = "Theoretical Quantiles",
        ylab = "Residuals"
)

#Correcelatie
cor(eiwit,gewichts)
