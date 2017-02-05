pollutantmean <- function (directory,pollutant, ID = 1:332) {
 files_list <- list.files (directory,full.names = TRUE)
 dat <- data.frame()
 for (i in ID) {
 dat <- rbind(dat,read.csv(files_list[i]))
}
 mean_data<-  mean(dat[,pollutant],na.rm = TRUE)
 round(mean_data,3)
}
