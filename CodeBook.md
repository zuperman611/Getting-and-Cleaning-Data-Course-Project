#DATA TIDY - Code Book
======================

##DATA DESCRIPTION: 
===================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For more information about this dataset contact: activityrecognition@smartlab.ws


##DATA TRANSFORMATION:
======================

The R script called run_analysis.R does the following:

0.Prepare the data set for this assignment: 
- Download the data set
- Unzip the data set to be available for loading the needed files
&nbsp
1.Merges the training and the test sets to create one data set.
- Load the train files: the subject ID of the train, the activity ID of the train, and the train set 
- Merge the training files into one data set with the first column the subject ID of the training, the  second column with the activity ID of the training, and the following columns with the training set
- Load the test files: the subject ID of the test, the activity ID of the test, and the test set 
- Merge the test files into one data set with the first column the subject ID of the test, the  second column with the activity ID of the test, and the following columns with the test set  
- Create one data set with the merged training and test sets

2.Extracts only the measurements on the mean and standard deviation for each measurement.
- Load the features file wich contains the names of all the measurement
- Extract the names of all the measurement
- Assign descriptive names to all the variables\columns of the merged data set
- Extract the column indices for only the mean and standard deviation for each measurement and making sure that the meanFreq is not considered
- Extract the subject ID column, the activity ID column, and only the columns with the measurements on the mean and standard deviation for each measurement.

3.Uses descriptive activity names to name the activities in the data set
- Load the activity_labels file wich contains the names of all the activities
- Extract the names of all the activities
- Update the activity IDs in the data set with the coresponding descriptive activity names

4.Appropriately labels the data set with descriptive variable names.
- Rename the column 'Activity_ID' to 'Activity'
- The other descriptive variable names were already assigned at step 2

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- Simlify the name of the data set from 'extracted_mean_std' to just 'data'
- Create the tidy data set with the average of each variable for each activity and each subject
- Save the tidy data set as 'data_tidy.txt'


##VARIABLES DESCRIPTION:
========================

Subject_ID&nbsp&nbsp&nbsp&nbsp&nbsp2
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspIdentifier of the subject who carried out the experiment
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp0..30 .Unique identifier of the subject
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
Activity&nbsp&nbsp&nbsp&nbsp&nbsp18
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspNames of the activities carried out for the experiment
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspWALKING
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspWALKING_UPSTAIRS
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspWALKING_DOWNSTAIRS
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSITTING
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSTANDING
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLAYING
&nbsp&nbsp&nbsp&nbsp
tBodyAcc-mean()-X&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body accelerometer for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
tBodyAcc-mean()-Y&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body accelerometer for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
tBodyAcc-mean()-Z&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body accelerometer for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
tBodyAcc-std()-X&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body accelerometer for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp              
tBodyAcc-std()-Y&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body accelerometer for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                          
tBodyAcc-std()-Z&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body accelerometer for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                          
tGravityAcc-mean()-X&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain gravity accelerometer for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp          
tGravityAcc-mean()-Y&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain gravity accelerometer for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp                
tGravityAcc-mean()-Z&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain gravity accelerometer for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp                 
tGravityAcc-std()-X  &nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain gravity accelerometer for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                      
tGravityAcc-std()-Y  &nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain gravity accelerometer for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                               
tGravityAcc-std()-Z  &nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain gravity accelerometer for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                               
tBodyAccJerk-mean()-X&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body accelerometer jerk for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp    
tBodyAccJerk-mean()-Y&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body accelerometer jerk for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp           
tBodyAccJerk-mean()-Z&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body accelerometer jerk for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp           
tBodyAccJerk-std()-X&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body accelerometer jerk for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp           
tBodyAccJerk-std()-Y&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body accelerometer jerk for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp                 
tBodyAccJerk-std()-Z&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body accelerometer jerk for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp                 
tBodyGyro-mean()-X&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body gyroscope for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp        
tBodyGyro-mean()-Y&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body gyroscope for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp            
tBodyGyro-mean()-Z&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body gyroscope for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp            
tBodyGyro-std()-X&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body gyroscope for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp            
tBodyGyro-std()-Y &nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body gyroscope for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp           
tBodyGyro-std()-Z&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body gyroscope for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp            
tBodyGyroJerk-mean()-X&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body gyroscope jerk for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp      
tBodyGyroJerk-mean()-Y&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body gyroscope jerk for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp            
tBodyGyroJerk-mean()-Z&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body gyroscope jerk for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp            
tBodyGyroJerk-std()-X&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body gyroscope jerk for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp 
tBodyGyroJerk-std()-Y&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body gyroscope jerk for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp        
tBodyGyroJerk-std()-Z&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body gyroscope jerk for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp        
tBodyAccMag-mean()&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body accelerometer magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit         
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
tBodyAccMag-std()&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body accelerometer magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit      
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
tGravityAccMag-mean()&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain gravity accelerometer magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp                         
tGravityAccMag-std()&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain gravity accelerometer magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                                
tBodyAccJerkMag-mean()&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body accelerometer jerk magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit   
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
tBodyAccJerkMag-std()&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body accelerometer jerk magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit   
&nbsp&nbsp&nbsp&nbsp&nbsp       
tBodyGyroMag-mean()&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body gyroscope magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
tBodyGyroMag-std()&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body gyroscope magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp&nbsp          
tBodyGyroJerkMag-mean()&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the time domain body gyroscope jerk magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp&nbsp     
tBodyGyroJerkMag-std&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the time domain body gyroscope jerk magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp
fBodyAcc-mean()-X&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body accelerometer for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
fBodyAcc-mean()-Y&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body accelerometer for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
fBodyAcc-mean()-Z&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body accelerometer for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
fBodyAcc-std()-X&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body accelerometer for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp              
fBodyAcc-std()-Y&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body accelerometer for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                          
fBodyAcc-std()-Z&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body accelerometer for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                         
fGravityAcc-mean()-X&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain gravity accelerometer for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp         
fGravityAcc-mean()-Y&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain gravity accelerometer for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp                 
fGravityAcc-mean()-Z&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain gravity accelerometer for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp                 
fGravityAcc-std()-X  &nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain gravity accelerometer for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                        
fGravityAcc-std()-Y  &nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain gravity accelerometer for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                                
fGravityAcc-std()-Z  &nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain gravity accelerometer for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                           
fBodyAccJerk-mean()-X&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body accelerometer jerk for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp    
fBodyAccJerk-mean()-Y&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body accelerometer jerk for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp           
fBodyAccJerk-mean()-Z&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body accelerometer jerk for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp           
fBodyAccJerk-std()-X&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body accelerometer jerk for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp           
fBodyAccJerk-std()-Y&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body accelerometer jerk for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp                 
fBodyAccJerk-std()-Z&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body accelerometer jerk for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp                 
fBodyGyro-mean()-X&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body gyroscope for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp        
fBodyGyro-mean()-Y&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body gyroscope for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp            
fBodyGyro-mean()-Z&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body gyroscope for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp            
fBodyGyro-std()-X&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body gyroscope for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp            
fBodyGyro-std()-Y &nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body gyroscope for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp           
fBodyGyro-std()-Z&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body gyroscope for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp            
fBodyGyroJerk-mean()-X&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body gyroscope jerk for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp      
fBodyGyroJerk-mean()-Y&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body gyroscope jerk for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp            
fBodyGyroJerk-mean()-Z&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body gyroscope jerk for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp            
fBodyGyroJerk-std()-X&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body gyroscope jerk for the X axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp 
fBodyGyroJerk-std()-Y&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body gyroscope jerk for the Y axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp        
fBodyGyroJerk-std()-Z&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body gyroscope jerk for the Z axis direction
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp        
fBodyAccMag-mean()&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body accelerometer magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit         
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
fBodyAccMag-std()&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body accelerometer magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit      
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
fGravityAccMag-mean()&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain gravity accelerometer magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp                       
fGravityAccMag-std()&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain gravity accelerometer magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp                             
fBodyAccJerkMag-mean()&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body accelerometer jerk magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit   
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
fBodyAccJerkMag-std()&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body accelerometer jerk magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit   
&nbsp&nbsp&nbsp&nbsp&nbsp       
fBodyGyroMag-mean()&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body gyroscope magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
fBodyGyroMag-std()&nbsp&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body gyroscope magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
&nbsp&nbsp&nbsp&nbsp&nbsp          
fBodyGyroJerkMag-mean()&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMean of the frequency domain body gyroscope jerk magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the mean unit
&nbsp&nbsp&nbsp&nbsp&nbsp     
fBodyGyroJerkMag-std&nbsp&nbsp18 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStandard deviation of the frequency domain body gyroscope jerk magnitude
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit

##License:
==========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.