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
install_packages(c("gclus", "ggplot2"))

# load the data from R, view and learn about it.

state_data <- state.x77
View(state_data)
help("state.x77")

# Optional but makes things cleaner and more readable
names(state_data) <- c("population", "income", "illiteracy", "life_exptancy", "murder_rate", "hs_graduation_rate", "frost", "area")

### Export it to a file in different ways

# Write to a comma separated file, usually preferred
write.csv(state_data, "state_data.csv")

# Substitutes commas for decimals in number and semicolons for commas
# as a delimiter, useful for Europeans
write.csv2(state_data, "state_data_eur.csv")

# You can specify your own delimiters too
write.table(state_data, "state_data_tab.txt", sep="\t")

# Importing data.

new_state_data <- read.csv("state_data.csv")
head(new_state_data)
eur_state_data <- read.csv2("state_data_eur.csv")
head(eur_state_data)
tab_state_data <- read.table("state_data_tab.txt", sep = "\t")
head(tab_state_data)



### Correlations


> cor(state_data)




# Use the help() function to learn details about these functions
# Need to get absolute values of correlations for sorting 
state_correlations <- abs(cor(state_data))

# dmat.color creates nice color palettes
state_colors <- dmat.color(state_correlations)
ordered_correlations <- order.single(state_correlations)

# From gclus creates a matrix of the pairs. Since the middle
# row will all be ones and not very interesting, it uses the names
cpairs(
  state_data,
  ordered_correlations,
  panel.colors = state_colors,
  gap = 0.5,
  main="Correlations Bewteen Population Variables"
)
dev.copy(png, "corr_matrix.png")
dev.off()


### Linear Regressions
#state_plot <- ggplot(state_data, aes(x=Illiteracy, y=Murder))

# You will see an empty graph. Unlike other R graphics funcitons
# each element is added individually. This gives you more control
# and cleans up your code. It might take some getting used to though.
frost_by_illiteracy <- ggplot(state_data, aes(x=illiteracy, y=murder_rate))
frost_by_illiteracy
# Add the points using geom_point. There are quite a few geometries built into ggplot2. There
# even more that can be added with other packages. The official list is here, https://ggplot2.tidyverse.org/reference/
# As always, a web search will help a lot too.
frost_by_illiteracy <- frost_by_illiteracy + geom_point()
frost_by_illiteracy
ggsave("ggdemo_1.png", plot = frost_by_illiteracy)  # Optional saves, used to generate figures for the web page.
frost_by_illiteracy <- frost_by_illiteracy + geom_smooth(method = lm, se = FALSE)
frost_by_illiteracy
ggsave("ggdemo_2.png", plot = frost_by_illiteracy)

# GGPlot also comes with themes that make it easy to style your chart as you like. You can always
# tweak it afterwards as well.
frost_by_illiteracy <- frost_by_illiteracy + theme_classic()
frost_by_illiteracy
ggsave("ggdemo_theme.png", plot = frost_by_illiteracy)


# Adding more information by applying an aesthetic to the geom_point.
frost_by_illiteracy <- frost_by_illiteracy + geom_point(aes(color = frost, size = income)) +labs(
  x = "Illiteracy\nPercent of Population", 
  y = "Murder Rate\nPer 100,000 People", 
  title = "Factors Affecting The Murder Rate in the USA")
frost_by_illiteracy
ggsave("ggdemo_color_size.png", plot = frost_by_illiteracy)


frost_by_illiteracy <- ggplot(state_data, aes(x=illiteracy, y=murder_rate)) +
                       geom_point(aes(color = frost, size = income)) +
                       geom_smooth(method = lm, se = FALSE) + 
                       theme_classic() +
                       labs(  x = "Illiteracy\nPercent of Population", 
                              y = "Murder Rate\nPer 100,000 People", 
                              title = "Factors Affecting The Murder Rate in the USA"
                            )
frost_by_illiteracy
ggsave("fancy_plot.png", plot = frost_by_illiteracy)
                       



