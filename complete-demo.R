complete<-function(directory,id = 1:332)
{
  files_full <- list.files(directory, full.names=TRUE)
  dat <- data.frame()
  
  for(i in id)
  {
    moni_i <- read.csv(files_full[i])
    nobs <- sum(complete.cases(moni_i))
    tmp <- data.frame(i,nobs)
    dat <- rbind(dat,tmp) 

  }
  
  colnames(dat) <-c("id","nobs")
  dat
  
}