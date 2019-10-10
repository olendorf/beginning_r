help("boxplot")

# Equivalent ways of doing this
boxplot(sepal_length, data=iris_data) 
boxplot(iris_data$sepal_length)

# Create a boxplot for each numeric variable
boxplot(iris_data[, c(1:4)])

# Improving the visualization with labels, titles and notching the boxplot.
boxplot(iris_data[, c(1:4)], main="Iris Flower Morphology Box Plots", notch = TRUE, ylab="Measurement (cm)", xlab="Floral Characteristic")


# One figure in row 1 and two figures in row 2
par(mfrow=c(2,2))  # The par() function arranges the plots, in this case the next four plots in 2 x 2
hist(iris_data$sepal_length, main = "Sepal Length", xlab = "Length (cm)")
hist(iris_data$sepal_width, main = "Sepal Width", xlab = "Width (cm)")
hist(iris_data$petal_length, main = "Petal Length", xlab = "Length (cm)")
hist(iris_data$petal_width, main = "Petal Width", xlab = "Width (cm)")


dev.off()  # need this to turn off the par() function
plot(iris_data$petal_length, iris_data$petal_width)
