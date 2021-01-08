#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")

e_quakes<-datasets::quakes
#

####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)

######Columns
e_quakes[,c(1,2)]

df<-e_quakes[,-6]

summary(e_quakes[,1])

e_quakes$depth



###########Summary of the data#########

summary(e_quakes)
summary(e_quakes$mag) 


#####################
plot(e_quakes$mag)
plot(e_quakes$mag,e_quakes$depth,type="p")
plot(e_quakes)
# points and lines 
plot(e_quakes$mag, type= "l") # p: points, l: lines,b: both
plot(e_quakes$mag, xlab = 'Index', 
     ylab = 'Magnitude', main = 'Mag for Earthquake dataset',
     col = 'blue')


# Horizontal bar plot
barplot(e_quakes$mag, main = 'Mag for Earthquake dataset',
        ylab = 'Magnitude', col= 'blue',horiz = F,axes=F)

#Histogram
hist(e_quakes$mag)
hist(e_quakes$mag, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(e_quakes$mag,main="Boxplot")

boxplot.stats(e_quakes$mag)$out

# Multiple box plots
boxplot(e_quakes[,3:4],main='Multiple')


#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="o")
plot(e_quakes$mag)
plot(e_quakes$mag, e_quakes$depth)
plot(e_quakes$mag, type= "l")
plot(e_quakes$mag, type= "l")
plot(e_quakes$mag, type= "l")
barplot(e_quakes$mag, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(e_quakes$mag)
boxplot(e_quakes$mag)
boxplot(e_quakes[3:4], main='Multiple Box plots')


##Home work

sd(e_quakes$mag,na.rm = T)

var(e_quakes$mag,na.rm = T)

moments::skewness(e_quakes$mag)
moments::kurtosis(e_quakes$mag)












