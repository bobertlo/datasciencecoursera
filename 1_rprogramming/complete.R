complete <- function(directory, id = 1:332) {
  file_list <- list.files(directory, full.names = TRUE)
  data <- data.frame()
  for (i in id) {
    idata <- read.csv(file_list[i])
    data <- rbind(data, c(i, sum(complete.cases(idata))))
  }
  colnames(data) <- c('id', 'nobs')
  data
}