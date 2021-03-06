
## read tables
test <- read.table("~/UCI HAR Dataset/test/subject_test.txt")
train <- read.table("~/UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("~/UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("~/UCI HAR Dataset/train/X_train.txt")
y_test <- read.table("~/UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("~/UCI HAR Dataset/train/y_train.txt")
activity_labels <- read.table("~/UCI HAR Dataset/activity_labels.txt")
features <- read.table("~/UCI HAR Dataset/features.txt")

## merge the two datasets
dataSet <- rbind(X_train,X_test)
## filter out mean and Standard deviation
MeanSd <- grep("mean()|std()", features[, 2]) 
dataSet <- dataSet[,MeanSd] ## 

##name the variables with approperitate names

CleanFeatureNames <- sapply(features[, 2], function(x) {gsub("[()]", "",x)})
names(dataSet) <- CleanFeatureNames[MeanSd]
# combine test and train  data

subject <- rbind(train, test)

names(subject) <- 'subject'

activity <- rbind(y_train, y_test)

names(activity) <- 'activity'

#  create final data set.

dataSet <- cbind(subject,activity, dataSet)



#  Rename lable of levels with activity_levels and change it to factor

act <- factor(dataSet$activity)

levels(act) <- activity_labels[,2]

dataSet$activity <- act

# Creates tidy data set to the working directory as "tidy_data.txt" and  "tidy_data.csv"
baseData <- melt(dataSet,(id.vars=c("subject","activity")))

secondDataSet <- dcast(baseData, subject + activity ~ variable, mean)

names(secondDataSet)[-c(1:2)] <- paste("mean of" , names(secondDataSet)[-c(1:2)] )

write.table(secondDataSet, "tidy_data.txt", sep = ",")
write.table(secondDataSet, "tidy_data.csv", sep = ",")






