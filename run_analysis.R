#Getting and Cleaning Data course project

#download data to working memory
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%
             2FUCI%20HAR%20Dataset.zip",temp)
activity_labels <- read.table(unz("temp", "UCI HAR Dataset/activity_labels.txt"))
features <- read.table(unz(temp, "UCI HAR Dataset/features.txt"))
sbj_test <- read.table(unz(temp, "UCI HAR Dataset/test/subject_test.txt"))
xtest <- read.table(unz(temp, "UCI HAR Dataset/test/X_test.txt"))
ytest <- read.table(unz(temp, "UCI HAR Dataset/test/y_test.txt"))
sbj_train <- read.table(unz(temp, "UCI HAR Dataset/train/subject_train.txt"))
xtrain <- read.table(unz(temp, "UCI HAR Dataset/train/X_train.txt"))
ytrain <- read.table(unz(temp, "UCI HAR Dataset/train/y_train.txt"))
unlink(temp)

activity_labels <- read.table(unz("UCI HAR Dataset.zip", "UCI HAR Dataset/activity_labels.txt"))
features <- read.table(unz("UCI HAR Dataset.zip", "UCI HAR Dataset/features.txt"))
sbj_test <- read.table(unz("UCI HAR Dataset.zip", "UCI HAR Dataset/test/subject_test.txt"))
xtest <- read.table(unz("UCI HAR Dataset.zip", "UCI HAR Dataset/test/X_test.txt"))
ytest <- read.table(unz("UCI HAR Dataset.zip", "UCI HAR Dataset/test/y_test.txt"))
sbj_train <- read.table(unz("UCI HAR Dataset.zip", "UCI HAR Dataset/train/subject_train.txt"))
xtrain <- read.table(unz("UCI HAR Dataset.zip", "UCI HAR Dataset/train/X_train.txt"))
ytrain <- read.table(unz("UCI HAR Dataset.zip", "UCI HAR Dataset/train/y_train.txt"))

#name xtest and xtrain column variables from features text
variables <-as.character(features$V2)
names(xtest) <- variables
names(xtrain) <- variables

#give descriptive names to the classes in y labels
ytest$activity <- as.factor(ytest$V1)
levels(ytest$activity) <- activity_labels$V2

ytrain$activity <- as.factor(ytrain$V1)
levels(ytrain$activity) <- activity_labels$V2


#add y labels to xtest and xtrain
test <- cbind(xtest, ytest$activity, sbj_test)
train <- cbind(xtrain, ytrain$activity, sbj_train)

#rename activity and subject variables for test and train dfs
names(train)[names(train) == 'ytrain$activity'] <- 'activity'
names(train)[names(train) == 'V1'] <- 'subject'

names(test)[names(test) == 'ytest$activity'] <- 'activity'
names(test)[names(test) == 'V1'] <- 'subject'

#combine test and train data
data <- rbind(test, train)

#Extract measures of mean, standard deviation, subject, and activity.
library(dplyr)
names(data) <- make.unique(names(data))
new.data <- select(data, subject, activity, contains("mean"), 
                   contains("std"))


# take average for each variable for each activity per subject
library(reshape2)
data.melted <- melt(new.data, id = c("subject", "activity"))
data.mean <- dcast(data.melted, subject + activity ~ variable, mean)

#create data table of final tidy data product in working directory
write.table(data.mean, "tidy.txt", row.names = FALSE, quote = FALSE)


