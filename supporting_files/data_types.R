## Working with R data Types

## NOTE: Sourcing this file won't print out the output.
##       Instead run it line by line. You probably wouldn't want
##       this all at once anyway.


#####################################
# Scalars  ###########################

a <- 1        # An integer
a
b <- 2.0      # Float
c <- 2        # Another integer

a/b         # Dividing by integers 


#####################################
# Vectors ##########################

vector_one <- c(0, 1, 1, 2)
vector_one
vector_two <- c(3, 5, 8)
vector_two
vector_three <- c(vector_one, vector_two)
vector_three

# more vectors
vector_char <- c('one', 'of', 'these', 'days')
vector_char
vector_string <- c('be', 'careful', 'with', 'that', 'axe', 'eugene')
vector_string
vector_four <- c(vector_char, vector_string)
vector_four

# You can't mix types, weird things can happen
bad_vector <- c(vector_one, vector_string)
bad_vector

############
# Creating a series with step one
series_one <- c(1:20)
series_one

# Creating series with different step values
sequence_half_step <- seq(1,10, 0.5)
sequence_half_step
sequence_two_step <- seq(1,10, 2)
sequence_two_step

#########
# Some simple functions on vectors.

# Sum the numbers
sum(vector_three)

mean(vector_three)

# Making a single string
paste(vector_four, collapse = ", ")

# Accessing parts of a vector.
vector_string[1]
vector_string[3]
vector_string[c(1,3, 5)]


#######################################
## Matrixes

# Creates a 4 x 5 matrix filling in from the 
# values in a matrix from 1 to 20. 
matrix_1 <- matrix(1:20, nrow=5,ncol=4)
matrix_1

# You can fill in the matrix the other way too
matrix_2 <- matrix(1:20, nrow=5, ncol=4, byrow = TRUE)
matrix_2

# R will just keep cycling through the vector if it is too short.
matrix_3 <- matrix(1:7, nrow=5, ncol=4)
matrix_3

# Accessing parts of a matrix
matrix_1[1,3]  # One member
matrix_1[,3]   # a column
matrix_1[2,]   # a row
matrix_1[2:4,1:3]  # a sub matrix

#######################################
## Arrays

# Creating a list
array_one <- array(c(1:60), dim=c(4,3,5))
array_one

# Accessing parts of a list.
array_one[2,3,4]  # One number
array_one[2,,4]  # Gets a vector
array_one[32]  # This gets the thirty second position filled
array_one[2,,]  # Gets a 2d array


#######################################
## Lists

# Creating a list.
my_list <- list("Random", "Citizen", 70, c("Stochastic", "Chance"))
my_list


# Naming parts of a list. This makes it a lot more readable and understandable
person_data <- list(first_name="Random", last_name="Citizen", weight_kg="70", kids=c("Stochastic", "Chance"))
person_data


# Accessing parts of the list

person_data[[2]]
person_data[["weight_kg"]]
person_data$first_name   # This is probably the cleanest way.


#######################################
## Data Frames

a <- c("Random", "General", "Person", "Robert", "Sideshow")
b <- c("Citizen", "Disarray", "Of Interest", "Terwilliger", "Bob")
c <- c(35, 20, 32, 55, 55)
d <- c(FALSE, TRUE, FALSE, TRUE, TRUE)
my_data <- data.frame(a,b,c,d)
my_data

# Improving the readability with names

persons <- my_data
names(persons) <- c("first_name", "last_name", "age", "villain")
persons


# Accessing parts of the list

persons[1]  # Gets the first column
persons[[1]]  # Gets the first column and displays factor levels
persons$age  # A usually cleaner way to get a column

persons[3,]  # Get a row or record of data

persons[3,3]  # Getting a value
persons$age[3]  # Getting a value another way
persons$age[which(persons$last_name == 'Terwilliger')]  # A third, longer but more readable way.



#######################################
## Factors

# Creating a factor from a vector
gender <- c("male", "female", "male", "male", "female")
gender
gender <- factor(gender)  # creates the factor
gender
summary(gender)  # now we get some extra functionality


# Names aren't really factors so lets start to fix the persons data frame
persons$first_name <- as.character(persons$first_name)
persons$first_name  # No longer displays factor levels


persons$last_name  # We haven't fixed this yet so it still displays factor levels



















