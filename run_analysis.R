run_analysis <- function(){
      #Pull Zip file and Store it.  Assumes working Directory has been set.
      URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      library(data.table)
      dst<- file.path(getwd(), "Dataset.zip")
      download.file(URL,dst)
      
      #Load subject_test Data
      subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
      X_test = read.table("UCI HAR Dataset/test/X_test.txt")
      Y_test = read.table("UCI HAR Dataset/test/Y_test.txt")
      
      #Load subject_train Data 
      subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
      X_train = read.table("UCI HAR Dataset/train/X_train.txt")
      Y_train = read.table("UCI HAR Dataset/train/Y_train.txt")
      
      # lookup info for features/activities
      features<- read.table("UCI HAR Dataset/features.txt", col.names=c("featureId", "featureLabel"))
      activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activityLabel"))
      activities$activityLabel <- gsub("_", "", as.character(activities$activityLabel))
      
      # Extracts only the measurements on the mean and standard deviation
      includedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)
      
      # Merge Test And Training and provides appropriate labels the data set with descriptive variable names
      subject <- rbind(subject_test, subject_train)
      names(subject) <- "subjectId"
      
      X <- rbind(X_test, X_train)
      X <- X[, includedFeatures]
            names(X) <- gsub("\\(|\\)", "", features$featureLabel[includedFeatures])
      Y <- rbind(Y_test, Y_train)
            names(Y) = "activityId"
            
      # Uses descriptive activity names to name the activities in the data set
      activity <- merge(Y, activities, by="activityId")$activityLabel
      
      # New Table from merge into one data set
            data_merged <- cbind(subject, X, activity)
            write.table(data_merged, "merged_tidy_data.txt", row.name=FALSE)
      
      # 2nd dataset grouped by subject and activity with average
      data_datatable <- data.table(data_merged)
      calculatedData<- data_datatable[, lapply(.SD, mean), by=c("subjectId", "activity")]
      write.table(calculatedData, "calc_tidy_data.txt", row.name=FALSE)
}
 
      
