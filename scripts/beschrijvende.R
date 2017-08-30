library(MASS)
#Van 24 bepalingen van koper in volkorenmeel, delen per miljoen,
chem
mean(chem)
sd(chem)
median(chem)
IQR(chem)
?IQR
#Bij een normale verdeling is de IQR ongeveer 1.349 * sd
IQR(chem) / 1.349
#De mediaan en het gemiddelde verschillen sterk. De standaard deviatie is veel groter dan
#de schatting daarvan met behulp van de IQR. Deze verschillen worden met name veroorzaakt
#door eenn extreme uitschieterr.
boxplot(chem)




