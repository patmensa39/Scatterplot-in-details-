### SCATTER PLOTS ###
#Scatter plots helps in in checking the relationship or the association between two continuous 
# explanatory variables. There are two ways of specifiying plot, points and lines and it is up to you 
# to decide 


data <- read.table("scatter1.txt", header = TRUE)
View(data)
attach(data)
names(data)

# Producing a scatter using the catersian plot function 
plot(xv, ys, col = rainbow(10), pch = 20) # pch means plot character

# Changings the names of the variables in the plot 
plot(xv, ys, col = "green", pch = 20, xlab = "Explanatory variable" ,
     ylab =  "Response variable", main = "Scatterplot")

# Adding a regression line through the cloud of data points 
abline(lm(ys~xv))

# Adding more points to the plot 

data1<- read.table("scatter2.txt", header = TRUE)
attach(data1)
View(data1)
names(data1)

# we add more points by using the function points 
points(xv2, ys2, col = "red", pch = 20, xlim = c(-50,100))

# Adding a regression line through the extra points
abline(lm(ys2~xv2))

# Scaling the plot to encompasses the all the points from the dataset
plot(c(xv,ys), c(xv2,ys2), xlim = c(0,100), ylim = c(0,70), xlab = "Explanatory variables", ylab = "Response variables", type = "n")


range(c(xv, xv2))
range(c(ys, ys2))


#New scatterplot with the limits 
plot(xv, ys, col = "green", pch = 20, xlab = "Explanatory variable" ,
     ylab =  "Response variable", main = "Scatterplot", xlim =c(0,100), ylim = c(0,70))

# Adding a regression line through the cloud of data points 
abline(lm(ys~xv))

# we add the additonal points by using the function points 
points(xv2, ys2, col = "red", pch = 20, xlim = c(0,100), ylim = c(0,70))

# Adding a regression line through the extra points
abline(lm(ys2~xv2))

# Adding a legend to explain the difference between the two colours of points 
legend(locator(1), c("Treatment", "Control"), pch = c(20,20), col = c("green", "red"))


