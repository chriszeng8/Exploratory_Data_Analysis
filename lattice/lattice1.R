# This is to illustrate how lattice works
# xyplot is a mostly commonly used lattice function which creates an lattice object.

library(lattice) #
library(datasets) #?Why
library(ggplot2)
# simple scatterplt
xyplot(Ozone~Wind,data=airquality)
airquality

# Note the airquality data (month should be factor variable)
airquality <- transform(airquality, Month = factor(Month))
# same as 
# airquality$Month=as.factor(airquality$Month)

str(airquality)
xyplot(Ozone~Wind,data=airquality)
#Divide data into 5 segment months, and plot them separately
xyplot(Ozone ~ Wind | Month, data = airquality, layout = c(5, 1))
#qqplot's equivalent
qplot(Wind,Ozone,data=airquality,facets=.~Month)

# this is to illustrate that lattice graphs are objects
p <- xyplot(Ozone ~ Wind, data = airquality)
# things only happen after you print out the object
print (p)
?trellis.par.set()
