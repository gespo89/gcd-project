# run_analysis.R
# Author: Geoffrey Esposito
# Script to pull in accelerometer data from the Samsung Galaxy S smartphone and transform it into a "tidy" data set as per the requirements of the
# "Getting and Cleaning Data" course on Coursera

# Load necessary libaries
message("Loading dependencies...")
library('dplyr')

# Check for the data"
if(!file.exists("UCI HAR Dataset")){
  message("Couldn't find the directory \"UCI HAR Dataset\", checking for a zip archive...")
  if(!file.exists("getdata_projectfiles_UCI HAR Dataset.zip")){
    message("Couldn't find the file \"getdata_projectfiles_UCI HAR Dataset.zip\", downloading...")
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="getdata_projectfiles_UCI HAR Dataset.zip", method="curl")
  }
  message("Extracting...")
  unzip("getdata_projectfiles_UCI HAR Dataset.zip")
}

message("Running analysis...")
# Set up the file paths for the data and label files
trainPath <- file.path("UCI HAR Dataset", "train", "X_train.txt")
trainLabelPath <- file.path("UCI HAR Dataset", "train", "y_train.txt")
trainSubjectPath <- file.path("UCI HAR Dataset", "train", "subject_train.txt")
testPath <- file.path("UCI HAR Dataset", "test", "X_test.txt")
testLabelPath <- file.path("UCI HAR Dataset", "test", "y_test.txt")
testSubjectPath <- file.path("UCI HAR Dataset", "test", "subject_test.txt")
featurePath <- file.path("UCI HAR Dataset", "features.txt")
labelPath <- file.path("UCI HAR Dataset", "activity_labels.txt")

# Read in the data and labels
trainData <- read.table(trainPath)
trainSubjects <- read.table(trainSubjectPath)
trainLabels <- read.table(trainLabelPath)
testData <- read.table(testPath)
testSubjects <- read.table(testSubjectPath)
testLabels <- read.table(testLabelPath)

# Fix some column names to be uniform. This saves some cbind headache down the road.
colnames(trainSubjects) <- "subject"
colnames(testSubjects) <- "subject"
colnames(trainLabels) <- "activity"
colnames(testLabels) <- "activity"

# Read in the activity labels, and replace the numbers with the actual names
labelNames <- read.table(labelPath)
testLabels$activity <- sapply(testLabels$activity, function(x) labelNames$V2[x]);
trainLabels$activity <- sapply(trainLabels$activity, function(x) labelNames$V2[x]);

# Add the activity label and subject data in
trainData <- cbind(trainData, trainLabels, trainSubjects)
testData <- cbind(testData, testLabels, testSubjects)

# Merge the train and test data
data <- rbind(trainData, testData)

# Label the dataset with the labels we read in
features <- read.table(featurePath)
colnames(data) <- c(as.character(features$V2), "activity", "subject")

# Filter out everything but the means, label, and subject for the data
meanCols <- colnames(data)[grep("mean\\(\\)|std\\(\\)", colnames(data))]
data <- data[,c("activity", "subject", meanCols)]

# Summarize means based on subject and activity
tidy <- group_by(data, subject, activity) %>% summarise_each(funs(mean))

# Write the data to an output file
write.table(tidy, "tidy.txt", row.name=FALSE)

# Return the data
print(tidy)
message("Output is in variable \"tidy\" and output to file \"tidy.txt\"")
return(tidy)