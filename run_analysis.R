RunAnalysis <- function() {
  
  ## Read in the features label vector and:
  ##  Replace f with Frequecny, t with Time
  ##  replace mean() and meanFreq() with mean and meanFrequency
  ##  get rid of '-' and replace with dot notation
  ##  find all instances where mean or std functions were used
  
  features <- read.table("./rawdata/features.txt")[,2]
  features <- gsub("^f", "frequency.", features)
  features <- gsub("^t", "time.", features)
  features <- gsub("mean[(][)]", "mean", features)
  features <- gsub("meanFreq[(][)]", "meanFrequency", features)
  features <- gsub("std[(][)]", "standardDeviation", features)
  features <- gsub("-", ".", features)
  
  ## this vectore can be applied to produce subsets that we want
  relevant <- grepl("(mean|standardDeviation)", features)
  
  ## read the rest of the data, applying relevant vector to reduce table size
  
  activity_labels <- read.table("./rawdata/activity_labels.txt")
  x_train <- read.table("./rawdata/train/x_train.txt", col.names=features)[, relevant]
  y_train <- read.table("./rawdata/train/y_train.txt", col.names=c("Activity"))
  y_train <- sapply(y_train, function(x) { activity_labels[x,2]})
  subject_train <- read.table("./rawdata/train/subject_train.txt", col.names=c("Subject"))
  x_test <- read.table("./rawdata/test/x_test.txt", col.names=features)[, relevant]
  y_test <- read.table("./rawdata/test/y_test.txt", col.names=c("Activity"))
  y_test <- sapply(y_test, function(x) { activity_labels[x,2]})
  subject_test <- read.table("./rawdata/test/subject_test.txt", col.names=c("Subject"))
  
  ## combine the data
  x <- rbind(x_train, x_test)
  y <- rbind(y_train, y_test)
  subject <- rbind(subject_train, subject_test)
  result <- cbind(x, y, subject)
  
  ## group by activity and subject, taking the mean and save output in a tab delim file
  result <- aggregate(. ~ Activity + Subject,data=result, FUN=mean)
  write.table(result, file="./output.txt", sep="\t")
  result
}
