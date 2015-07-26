---
title: Codebook
author: Heidi Guenther
date: 7/26/2015
output: tidy.txt
  html_document: https://github.com/hjguenther/Getting-and-Creating-Data---Course-Project
    keep_md: yes
---

## Project Description
This project, as a part of Getting and Cleaning Data Course by Johns Hopkins University on Coursera, combines a data set and presents it as a modified tidy data set.

##Study design and data processing

###Collection of the raw data
subjects performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


###Notes on the original data 
Human Activity Recognition Using Smartphones Dataset Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

##Creating the tidy datafile

###Guide to create the tidy data file
1. Download data to working memory.
2. Name column variables.
3. Give discriptive names to classes of data.
4. Combine data.
5. Extract measures of mean, standard deviation, subject, and activity from combined data.
6. Take average of each variable for each class of activity, per subject.
7. Create data table of final tidy data product in working directory.

###Cleaning of the data
The code in the Run_analysis.R file takes the datasets from the source, combines them, and creates one tidy data table. The data table returns only the variables that contain mean and standard devation, and lists the averages of these varibales for each class of activity, for each subject.

##Description of the variables in the tidy_data.txt file
 - Dimensions of the tidy data: 180 Observations with 88 Variables 
 - Human Activity Recognition Using Smartphones Dataset Version 1.0, averages of all variables which include mean and standard deviation for activity classes by subject. 
 - Variables present in the dataset: 
       variable:                    description:
 [1] "subject"                      subject identifier, integer       
 [2] "activity"                     type of activity, factor 1-6, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,                                                                   STANDING, LAYING
 [3] "tBodyAcc-mean()-X"                
 [4] "tBodyAcc-mean()-Y"            variables 3:88 are numeric and description listed in section below
 [5] "tBodyAcc-mean()-Z"                     
 [6] "tGravityAcc-mean()-X"                
 [7] "tGravityAcc-mean()-Y"                  
 [8] "tGravityAcc-mean()-Z"                  
 [9] "tBodyAccJerk-mean()-X"               
[10] "tBodyAccJerk-mean()-Y"               
[11] "tBodyAccJerk-mean()-Z"               
[12] "tBodyGyro-mean()-X"                  
[13] "tBodyGyro-mean()-Y"                  
[14] "tBodyGyro-mean()-Z"                  
[15] "tBodyGyroJerk-mean()-X"               
[16] "tBodyGyroJerk-mean()-Y"             
[17] "tBodyGyroJerk-mean()-Z"          
[18] "tBodyAccMag-mean()"                  
[19] "tGravityAccMag-mean()"        
[20] "tBodyAccJerkMag-mean()"              
[21] "tBodyGyroMag-mean()"                 
[22] "tBodyGyroJerkMag-mean()"             
[23] "fBodyAcc-mean()-X"                   
[24] "fBodyAcc-mean()-Y"                   
[25] "fBodyAcc-mean()-Z"                   
[26] "fBodyAcc-meanFreq()-X"               
[27] "fBodyAcc-meanFreq()-Y"               
[28] "fBodyAcc-meanFreq()-Z"               
[29] "fBodyAccJerk-mean()-X"               
[30] "fBodyAccJerk-mean()-Y"               
[31] "fBodyAccJerk-mean()-Z"               
[32] "fBodyAccJerk-meanFreq()-X"           
[33] "fBodyAccJerk-meanFreq()-Y"           
[34] "fBodyAccJerk-meanFreq()-Z"           
[35] "fBodyGyro-mean()-X"                  
[36] "fBodyGyro-mean()-Y"                  
[37] "fBodyGyro-mean()-Z"                  
[38] "fBodyGyro-meanFreq()-X"              
[39] "fBodyGyro-meanFreq()-Y"              
[40] "fBodyGyro-meanFreq()-Z"              
[41] "fBodyAccMag-mean()"                  
[42] "fBodyAccMag-meanFreq()"              
[43] "fBodyBodyAccJerkMag-mean()"          
[44] "fBodyBodyAccJerkMag-meanFreq()"      
[45] "fBodyBodyGyroMag-mean()"             
[46] "fBodyBodyGyroMag-meanFreq()"         
[47] "fBodyBodyGyroJerkMag-mean()"         
[48] "fBodyBodyGyroJerkMag-meanFreq()"     
[49] "angle(tBodyAccMean,gravity)"         
[50] "angle(tBodyAccJerkMean),gravityMean)"
[51] "angle(tBodyGyroMean,gravityMean)"    
[52] "angle(tBodyGyroJerkMean,gravityMean)"
[53] "angle(X,gravityMean)"                
[54] "angle(Y,gravityMean)"                
[55] "angle(Z,gravityMean)"                
[56] "tBodyAcc-std()-X"                    
[57] "tBodyAcc-std()-Y"                    
[58] "tBodyAcc-std()-Z"                    
[59] "tGravityAcc-std()-X"                 
[60] "tGravityAcc-std()-Y"                 
[61] "tGravityAcc-std()-Z"                 
[62] "tBodyAccJerk-std()-X"                
[63] "tBodyAccJerk-std()-Y"                
[64] "tBodyAccJerk-std()-Z"                
[65] "tBodyGyro-std()-X"                   
[66] "tBodyGyro-std()-Y"                   
[67] "tBodyGyro-std()-Z"                   
[68] "tBodyGyroJerk-std()-X"               
[69] "tBodyGyroJerk-std()-Y"               
[70] "tBodyGyroJerk-std()-Z"               
[71] "tBodyAccMag-std()"                   
[72] "tGravityAccMag-std()"                
[73] "tBodyAccJerkMag-std()"               
[74] "tBodyGyroMag-std()"                  
[75] "tBodyGyroJerkMag-std()"              
[76] "fBodyAcc-std()-X"                    
[77] "fBodyAcc-std()-Y"                    
[78] "fBodyAcc-std()-Z"                    
[79] "fBodyAccJerk-std()-X"                
[80] "fBodyAccJerk-std()-Y"                
[81] "fBodyAccJerk-std()-Z"                
[82] "fBodyGyro-std()-X"                   
[83] "fBodyGyro-std()-Y"                   
[84] "fBodyGyro-std()-Z"                   
[85] "fBodyAccMag-std()"                   
[86] "fBodyBodyAccJerkMag-std()"           
[87] "fBodyBodyGyroMag-std()"              
[88] "fBodyBodyGyroJerkMag-std()"     
 


###Numeric Variable Descriptions
 - Unit of measurement is t for time in seconds, f for frequency domain signals, or angle for degrees of an angle
 - body acceleration dignal from accelerometer (BodyAcc) or body accleration signal from gyroscope (BodyGryo), jerk signal from the       angle of 3 axial vector, or magnitude of time of body acceleration signal.
 - On the plane of X (-X), Y (-Y), or Z (-Z).
 - Variables estimated in either mean (mean) or standard diviation (std)


##Sources
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012