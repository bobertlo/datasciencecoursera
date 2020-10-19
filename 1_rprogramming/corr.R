corr <- function(directory, threshold = 0) {
  file_list <- list.files(directory, full.names = TRUE)
  complete_files <- complete(directory, id = 1:length(file_list))
  complete_ids <- complete_files[complete_files$nobs > threshold,]$id
  data <- c()
  for (f in file_list[complete_ids]) {
    idata <- read.csv(f)
    icomplete <- idata[complete.cases(idata),]
    data <- c(data, cor(icomplete$sulfate,icomplete$nitrate))
  }
  data
}