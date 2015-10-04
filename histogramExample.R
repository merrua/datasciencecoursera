histogramExample <- function(state, outcome, num = "best") {
 
  # read outcome
  full_data <- read.csv("outcome-of-care-measures.csv", colClasses="character")

  #head(full_data)
  #ncol(full_data)
  #nrow(full_data)

  options(warn=-1)  
  
  # column needs to be numeric
  full_data[, 11] <- as.numeric(full_data[, 11])
  
  # Hospital 30-Day Death (Mortality) Rates from Heart Attack
  # numeric column is turned into a histogram
  hist(full_data[, 11])
  options(warn=1) 
  
}