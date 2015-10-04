pollutantmean <- function(directory, pollutant, id = 1:332) {
  files_list <- dir(directory, full.names=TRUE)
  dat <- lapply(files_list[id], function(x) read.csv(x)[[pollutant]])
  mean(unlist(dat), na.rm=T)                      
}