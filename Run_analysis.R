make_tidy <- function(){

# Load packages
require(plyr)

# Download and unzip file

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
td <- tempdir()
tf <- tempfile(tmpdir=td, fileext=".zip")
download.file(fileUrl, tf, method="curl")
fname <- unzip(tf, list=TRUE)
unzip(tf, files=fname$Name)


# Read in data

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Find only features with mean or standard deviation
keep <- grepl("mean[()]", features[,2]) | grepl("std[()]", features[,2]) 
myX_test <- X_test[,keep]
myX_train <- X_train[,keep]


# Merge datasets
test <- data.frame(subject_test, y_test, myX_test)
train <- data.frame(subject_train, y_train, myX_train)
all_merged <- rbind(test, train)

# Assign meaningful activity labels from looup table
all_merged[,2] <- activity_labels[match(all_merged[,2], activity_labels[,1]), 2] 

# Assign column names
names(all_merged) <- c("Subject", "Activity", as.character(features[keep,2])) 

# Calculate averages for tidy dataset
tidy_data <- ddply(all_merged, c("Subject", "Activity"), function(x) colMeans(x[,3:ncol(all_merged)]))
tidy_data
}
