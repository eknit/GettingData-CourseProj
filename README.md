# README - Coursera Getting Data Course Project

This script merges and calculates the average value of measurements from smartphone accelerometer data collected from 30 volunteers performing six different types of activity. Details of the experiment and pre-processing of data are available from: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The volunteers were divided into 'test' and 'training' groups to provide a test and training dataset for further analysis. This script mergers the test and training sets. 

The run_analysis.R script contains a single function make_tidy() which downloads the source data and unzips the files using the unzip() function. It reads in the individual files from both the 'test' and 'training' data sets with read.table() and uses the grepl() function to identify the features names from the features.txt file which contain the characters strings "mean()" and "std()" which correspond to summaries made using means and standard deviations.

Next it selects only those features which correspond to the desired feature names for both the training and test datasets. These measured variables are combined with the corresponding activity IDs and subject IDs from the appropriate training or test dataset into a data frame using the data.frame() function. The test and training data frames are then merged using rbind(). Activity names are assigned a meaningful name using the values in the activity_labels.txt lookup table using match(). Finally the make_tidy() function calculates the mean value of each feature for each activity type for each individual  using the colMeans() function applied across the data frame using ddply(). 

