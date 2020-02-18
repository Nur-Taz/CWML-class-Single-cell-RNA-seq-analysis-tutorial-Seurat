#### Installing packages in R
install.packages("Seurat")
library(Seurat)
install.packages("dplyr")
library(dplyr)

#### Creating variables in R

Variables allow you to store information within keywords. This stored information can be a single data element, like a string, a number, or a boolean, or variables can be used to store more complicated data structures such as lists, dataframes, graphs, and custom user-created functions. 

Variables in R are created using the following notation: <-
  
#Single datum and lists stored as variables
x <- 1
x
y <- "single string"
y

numerical_list = c(0.75, 10, 8, 7, 5, 6.5)
numerical_list

list_of_strings <- c("Elo", "Charlie", "Molly", "Woody", "Monte", "Ben")
list_of_strings


#### Data structures stored as variables

#Load a sample dataset from the CRAN (VADeaths).
data("VADeaths")

#View a summary of this dataframe
summary(VADeaths)

#View a preview of this dataset using the head() function.
head(VADeaths)

#View a subset of this data. How would we include only ages 50 to 64 for Urban Females?
VAsubsetUF <- VADeaths[1:3, "Urban Female"]
VAsubsetUF


#### Using functions in R

#Functions allow you to perform complicated tasks in R without custom codeing every detail. Functions are either part of Base R, or they are tied to a particular package. Base R includes mathmatical, basic stats and basic graphs. Packages add additional functions that may allow for more customization or more specific analysis types.   
#Functions take arguments and provide results.

### Plotting functions in Base R
#Using the subset data from our VA example, this function will make a barplot.
barplot(VAsubsetUF)

#Even with plots in base R, you have the ability to customize graphs.
barplot(VAsubsetUF, col = "steelblue")

#If you have the ability to feed more than one option into a single argument, you will provide that argument with a list.
barplot(VAsubsetUF, col = "white",
        border = c("#999999", "#E69F00", "#56B4E9"), 
        main = "VA Death Data - Urban Females")

#### Referencing documentation about functions
#The help() fucntion and the ? help operator in R provide access to R documentation. 
#Referencing documentation for the averaging function, specifying that you would like the mean function from base R (opposed to another package which might also have a mean function):
  
mean(35, 64, 85)
?base::mean

#Since you use functions to create graphs, these you can also reference in the documentation. This will provide you with a full list of arguments and customizable features, as well as some examples of how the function might be used or configured.
?barplot


#### DPLYR Basics
#dplyr is a grammar of data manipulation, providing a consistent set of verbs that help you solve the most common data manipulation challenges:
  
#* group_by() allows you to choose groupings by which to sumarise your data
#* mutate() adds new variables that are functions of existing variables
#* select() picks variables based on their names.
#* filter() picks cases based on their values.
#* summarise() reduces multiple values down to a single summary.
#* arrange() changes the ordering of the rows.

library(dplyr)

#### Group-by and Summary

#Load in another sample dataset.
data("ToothGrowth")
head(ToothGrowth)

#Group by suppliment type (OJ or VC) and find the average length for each group. 
ToothGrowth %>% 
  group_by(supp) %>%
  summarize(count = n())

#Add more features by which to summarize
ToothGrowth %>% 
  group_by(supp) %>%
  summarize(lenmean=mean(len), lensd=sd(len), count = n())

#Group and Summarize by both supplement as well as dose.
ToothGrowth %>% 
  group_by(supp, dose) %>%
  summarize(length_mean=mean(len), length_sd=sd(len), count = n())


