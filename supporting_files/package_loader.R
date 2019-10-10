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
install_packages(c("rvest", "TMDb", "countrycode"))