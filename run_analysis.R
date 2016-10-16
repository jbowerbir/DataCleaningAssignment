# Getting and Cleaning Data Course - Peer Review Assignment



## NOTE: This code assumes that you have the Samsung data  in your working 
## directory.



## Read the data, labels, and subjects into R.

### test data, activity labels, and subjects
test <- read.table("UCI HAR Dataset/test/X_test.txt", header = F)
test_label <- read.table("UCI HAR Dataset/test/y_test.txt", header = F)
test_subj <- read.table("UCI HAR Dataset/test/subject_test.txt", header = F)
##train data, activity labels, and subjects
train <- read.table("UCI HAR Dataset/train/X_train.txt", header = F)
train_label <- read.table("UCI HAR Dataset/train/y_train.txt", header = F)
train_subj <- read.table("UCI HAR Dataset/train/subject_train.txt", header = F)
### features, to serve as variable names
features <- read.table("UCI HAR Dataset/features.txt", header = F)
### activity code and descriptions
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = F)



## Name the test, train, and activity variables/columns.

### test data
colnames(test) <- features[, 2]       # Assign variable names to test dataset.
colnames(test_label) <- "activityID"
colnames(test_subj) <- "subjectID"
### train data
colnames(train) <- features[, 2]       # Assign variable names to train dataset.
colnames(train_label) <- "activityID"
colnames(train_subj) <- "subjectID"
### activities
colnames(activities) <- c("activityCode", "activityName")



## Merge the test and table datasets.

### Left column-bind the subjectIDs and activityIDs to the data.
  # Create the  full test dataset.
testData <- cbind(test_subj, test_label, test)
  # Create the  full train dataset.
trainData <- cbind(train_subj, train_label, train)

### Row-bind the full test and train datasets.
fullData <- rbind(testData, trainData)



## Retain only variables pertaining to measurements of mean and st dev. Also
## include subject and activity IDs.

### Create a vector indicating which vectors variables/columns in fullData deal
### with means, st devs, and subject and activityIDs.
varKeep <- (grepl("subjectID" , names(fullData)) | 
              grepl("activityID" , names(fullData)) | 
              grepl("[Mm]ean" , names(fullData)) | 
              grepl("std" , names(fullData)))

### Create a new data frame that retains only the desired variables.
trimData <- fullData[, varKeep == TRUE]



## Appropriately label the data set with descriptive variable names.

### Variable names are already descriptive, but we can be more descriptive in
### the activity names.
trimData$activityID <- factor(trimData$activityID, levels = c(1:6),
                              labels = activities[, 2])
  # This converts the activityID variable into a factor with descrptive labels.




## Creates a second, independent tidy data set with the average of each variable
## for each activity and each subject.

### aggregate() allows us to to summarize the data, finding the mean value of 
### each variable, for each combination of subjectID and activityID.
tidyData <- aggregate(. ~ subjectID + activityID, data = trimData, mean)



## Save tidy dataset as a .txt file for upload to GitHub.

### Use write.table() with row.name=FALSE
write.table(tidyData, file = "tidyData.txt", row.name = FALSE)
