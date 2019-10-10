###################
## Automate package install and load

# Feel free and copy and paste this, or grab it from the supplementary files.

# Checks to see if the packages has already installed
is_installed <- function(package_name) is.element(package_name, installed.packages()[,1])

# If a package is not installed, install it. Then load the package.
install_and_load <- function(package_name) {
  if(!is_installed(package_name)) {
    install.packages(package_name)
  }
  library(package_name, character.only = TRUE)
}

# Takes a vector of packages and installs and loads them if needed.
install_packages <- function(packages) {
  for(package in packages) {
    install_and_load(package)
  }
}

# Calls the function, substitute your own packages.
install_packages(c("psych"))



data()        # List the basic R data sets
data(package = .packages(all.available = TRUE))  # List data sets includedin packages as well.



### 

iris_data <- iris
View(iris)

head(iris_data)     # Displays the first 6 rows plus the headers
tail(iris_data)     # Displays the last 6 rows plaus the headers

help(iris)


### Rename the variables
names(iris_data) <- c("sepal_length", "sepal_width", "petal_length", "petal_width", "species")
head(iris_data)

### A preliminary summary of the data
summary(iris_data)

### Standard deviation 
sd(iris_data$sepal_length)  # get the standard deviation for all species
sd(iris_data$sepal_length[which(iris_data$species == "setosa")])  # for one species


### Using describe in the psyche package to get more
describe(iris_data[, c(1:4)])   # We only use the numerical columns, as a mean for strings doesn't make sense

describeBy(iris_data[, c(1:4)], iris_data$species)  # We can group it by species too




