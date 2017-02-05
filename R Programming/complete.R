complete <- function (directory, id = 1:332) {

##  'directory' is a character vector of length 1 indicating
##  the location of the CSV files

## 'id' is an integer vector indicating the monitor ID numbers 
## to be used

## return a data frame of the form:
## id  nobs
## 1    117
## 2    1041
## ...
## where 'id' is the monitor ID number and 'nobs' is the 
## number of complete cases
  
##  Write a function that reads a directory full of files and 
##  reports the number of completely observed cases in each data file. 
##  The function should return a data frame where the first column is the name 
##  of the file and the second column is the number of complete cases. 
  


files_list <- list.files(directory, full.names = TRUE)
selected_data <- data.frame()
complete_cases <- data.frame()
nobs <- data.frame()
for (i in id) {
selected_data <- read.csv(files_list[i],header = TRUE)
nobs <- sum(complete.cases(selected_data))
complete_cases <- rbind(complete_cases, data.frame(i,nobs))
}
complete_cases
}
