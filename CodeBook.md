# Code Book

This script merges and calculates the average value of measurements from smartphone accelerometer data collected from 30 volunteers performing six different types of activity. Details of the experiment and pre-processing of data are available from: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The volunteers were divided into 'test' and 'training' groups to provide a test and training dataset for further analysis. This script mergers the test and training sets. 

561 different features were identified in the original dataset, derived from a variety of functions. This script takes only those which were created using a mean - mean() - or standard deviation - std(). These features were named after the codes included in the original features_info.txt file. Activity names were assigned from the activity_labels.txt. 

The make_tidy() function in the run_analysis.R script creates a merged data frame of all 30 volunteers, for all features summarized as means or standard deviation. The measured value of all features for each volunteer and activity type is summarized as a mean. 

The result is a tidy_data data frame which contains the mean value of 66 features, summarized for 6 activities each for 30 participants. 

Features:                   
  
 [1] tBodyAcc-mean()-X          
 [2] tBodyAcc-mean()-Y          
 [3] tBodyAcc-mean()-Z          
 [4] tBodyAcc-std()-X           
 [5] tBodyAcc-std()-Y           
 [6] tBodyAcc-std()-Z           
 [7] tGravityAcc-mean()-X       
 [8] tGravityAcc-mean()-Y       
 [9] tGravityAcc-mean()-Z       
[10] tGravityAcc-std()-X        
[11] tGravityAcc-std()-Y        
[12] tGravityAcc-std()-Z        
[13] tBodyAccJerk-mean()-X      
[14] tBodyAccJerk-mean()-Y      
[15] tBodyAccJerk-mean()-Z      
[16] tBodyAccJerk-std()-X       
[17] tBodyAccJerk-std()-Y       
[18] tBodyAccJerk-std()-Z       
[19] tBodyGyro-mean()-X         
[20] tBodyGyro-mean()-Y         
[21] tBodyGyro-mean()-Z         
[22] tBodyGyro-std()-X          
[23] tBodyGyro-std()-Y          
[24] tBodyGyro-std()-Z          
[25] tBodyGyroJerk-mean()-X     
[26] tBodyGyroJerk-mean()-Y     
[27] tBodyGyroJerk-mean()-Z     
[28] tBodyGyroJerk-std()-X      
[29] tBodyGyroJerk-std()-Y      
[30] tBodyGyroJerk-std()-Z      
[31] tBodyAccMag-mean()         
[32] tBodyAccMag-std()          
[33] tGravityAccMag-mean()      
[34] tGravityAccMag-std()       
[35] tBodyAccJerkMag-mean()     
[36] tBodyAccJerkMag-std()      
[37] tBodyGyroMag-mean()        
[38] tBodyGyroMag-std()         
[39] tBodyGyroJerkMag-mean()    
[40] tBodyGyroJerkMag-std()     
[41] fBodyAcc-mean()-X          
[42] fBodyAcc-mean()-Y          
[43] fBodyAcc-mean()-Z          
[44] fBodyAcc-std()-X           
[45] fBodyAcc-std()-Y           
[46] fBodyAcc-std()-Z           
[47] fBodyAccJerk-mean()-X      
[48] fBodyAccJerk-mean()-Y      
[49] fBodyAccJerk-mean()-Z      
[50] fBodyAccJerk-std()-X       
[51] fBodyAccJerk-std()-Y       
[52] fBodyAccJerk-std()-Z       
[53] fBodyGyro-mean()-X         
[54] fBodyGyro-mean()-Y         
[55] fBodyGyro-mean()-Z         
[56] fBodyGyro-std()-X          
[57] fBodyGyro-std()-Y          
[58] fBodyGyro-std()-Z          
[59] fBodyAccMag-mean()         
[60] fBodyAccMag-std()          
[61] fBodyBodyAccJerkMag-mean() 
[62] fBodyBodyAccJerkMag-std()  
[63] fBodyBodyGyroMag-mean()    
[64] fBodyBodyGyroMag-std()     
[65] fBodyBodyGyroJerkMag-mean()
[66] fBodyBodyGyroJerkMag-std()

