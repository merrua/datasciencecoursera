pollutantmean2 <- function(directory, pollutant, id = 1:332) {
  files_list <- dir(directory, full.names=TRUE)
  dat <- as.numeric()
  for (i in id) {
    dat <- c(dat, read.csv(files_list[i])[, pollutant])
  }
  mean(dat, na.rm=T)                      
}