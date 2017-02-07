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

0. Prepare the data set for this assignment: 
- Download the data set
- Unzip the data set to be available for loading the needed files
	
1. Merges the training and the test sets to create one data set.
- Load the train files: the subject ID of the train, the activity ID of the train, and the train set 
- Merge the training files into one data set with the first column the subject ID of the training, the  second column with the activity ID of the training, and the following columns with the training set
- Load the test files: the subject ID of the test, the activity ID of the test, and the test set 
- Merge the test files into one data set with the first column the subject ID of the test, the  second column with the activity ID of the test, and the following columns with the test set  
- Create one data set with the merged training and test sets

2. Extracts only the measurements on the mean and standard deviation for each measurement.
- Load the features file wich contains the names of all the measurement
- Extract the names of all the measurement
- Assign descriptive names to all the variables\columns of the merged data set
- Extract the column indices for only the mean and standard deviation for each measurement and making sure that the meanFreq is not considered
- Extract the subject ID column, the activity ID column, and only the columns with the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set
- Load the activity_labels file wich contains the names of all the activities
- Extract the names of all the activities
- Update the activity IDs in the data set with the coresponding descriptive activity names

4. Appropriately labels the data set with descriptive variable names.
- Rename the column 'Activity_ID' to 'Activity'
- The other descriptive variable names were already assigned at step 2

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- Simlify the name of the data set from 'extracted_mean_std' to just 'data'
- Create the tidy data set with the average of each variable for each activity and each subject
- Save the tidy data set as 'data_tidy.txt'


##VARIABLES DESCRIPTION:
========================

Subject_ID					2
						Identifier of the subject who carried out the experiment
							0..30 .Unique identifier of the subject
								
Activity					18
						Names of the activities carried out for the experiment
							WALKING
							WALKING_UPSTAIRS
							WALKING_DOWNSTAIRS
							SITTING
							STANDING
							LAYING
				
tBodyAcc-mean()-X			18 
						Mean of the time domain body accelerometer for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
							
tBodyAcc-mean()-Y			18 
						Mean of the time domain body accelerometer for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
							
tBodyAcc-mean()-Z			18 
						Mean of the time domain body accelerometer for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
							
tBodyAcc-std()-X			18 
						Standard deviation of the time domain body accelerometer for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
           
tBodyAcc-std()-Y			18 
						Standard deviation of the time domain body accelerometer for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                       
tBodyAcc-std()-Z			18 
						Standard deviation of the time domain body accelerometer for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                       
tGravityAcc-mean()-X		18 
						Mean of the time domain gravity accelerometer for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
       
tGravityAcc-mean()-Y		18 
						Mean of the time domain gravity accelerometer for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
              
tGravityAcc-mean()-Z		18 
						Mean of the time domain gravity accelerometer for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
               
tGravityAcc-std()-X  		18 
						Standard deviation of the time domain gravity accelerometer for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                     
tGravityAcc-std()-Y  		18 
						Standard deviation of the time domain gravity accelerometer for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                             
tGravityAcc-std()-Z  		18 
						Standard deviation of the time domain gravity accelerometer for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                             
tBodyAccJerk-mean()-X		18 
						Mean of the time domain body accelerometer jerk for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
			    
tBodyAccJerk-mean()-Y		18 
						Mean of the time domain body accelerometer jerk for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
			           
tBodyAccJerk-mean()-Z		18 
						Mean of the time domain body accelerometer jerk for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
			           
tBodyAccJerk-std()-X		18 
						Standard deviation of the time domain body accelerometer jerk for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
			           
tBodyAccJerk-std()-Y		18 
						Standard deviation of the time domain body accelerometer jerk for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
			                 
tBodyAccJerk-std()-Z		18 
						Standard deviation of the time domain body accelerometer jerk for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
			                 
tBodyGyro-mean()-X			18 
						Mean of the time domain body gyroscope for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				        
tBodyGyro-mean()-Y			18 
						Mean of the time domain body gyroscope for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				            
tBodyGyro-mean()-Z			18 
						Mean of the time domain body gyroscope for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				            
tBodyGyro-std()-X			18 
						Standard deviation of the time domain body gyroscope for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				            
tBodyGyro-std()-Y 			18 
						Standard deviation of the time domain body gyroscope for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				           
tBodyGyro-std()-Z			18 
						Standard deviation of the time domain body gyroscope for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				            
tBodyGyroJerk-mean()-X		18 
						Mean of the time domain body gyroscope jerk for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				      
tBodyGyroJerk-mean()-Y		18 
						Mean of the time domain body gyroscope jerk for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				            
tBodyGyroJerk-mean()-Z		18 
						Mean of the time domain body gyroscope jerk for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				            
tBodyGyroJerk-std()-X		18 
						Standard deviation of the time domain body gyroscope jerk for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				 
tBodyGyroJerk-std()-Y		18 
						Standard deviation of the time domain body gyroscope jerk for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				        
tBodyGyroJerk-std()-Z		18 
						Standard deviation of the time domain body gyroscope jerk for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				        
tBodyAccMag-mean()			18 
						Mean of the time domain body accelerometer magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit         
							
tBodyAccMag-std()			18 
						Standard deviation of the time domain body accelerometer magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit      
							
tGravityAccMag-mean()		18 
						Mean of the time domain gravity accelerometer magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
                      
tGravityAccMag-std()		18 
						Standard deviation of the time domain gravity accelerometer magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                             
tBodyAccJerkMag-mean()		18 
						Mean of the time domain body accelerometer jerk magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit   
							
tBodyAccJerkMag-std()		18 
						Standard deviation of the time domain body accelerometer jerk magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit   
					       
tBodyGyroMag-mean()			18 
						Mean of the time domain body gyroscope magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
							
tBodyGyroMag-std()			18 
						Standard deviation of the time domain body gyroscope magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
					          
tBodyGyroJerkMag-mean()		18 
						Mean of the time domain body gyroscope jerk magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
					     
tBodyGyroJerkMag-std		18 
						Standard deviation of the time domain body gyroscope jerk magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				
fBodyAcc-mean()-X			18 
						Mean of the frequency domain body accelerometer for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
							
fBodyAcc-mean()-Y			18 
						Mean of the frequency domain body accelerometer for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
							
fBodyAcc-mean()-Z			18 
						Mean of the frequency domain body accelerometer for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
							
fBodyAcc-std()-X			18 
						Standard deviation of the frequency domain body accelerometer for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
           
fBodyAcc-std()-Y			18 
						Standard deviation of the frequency domain body accelerometer for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                       
fBodyAcc-std()-Z			18 
						Standard deviation of the frequency domain body accelerometer for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                       
fGravityAcc-mean()-X		18 
						Mean of the frequency domain gravity accelerometer for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
       
fGravityAcc-mean()-Y		18 
						Mean of the frequency domain gravity accelerometer for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
              
fGravityAcc-mean()-Z		18 
						Mean of the frequency domain gravity accelerometer for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
               
fGravityAcc-std()-X  		18 
						Standard deviation of the frequency domain gravity accelerometer for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                     
fGravityAcc-std()-Y  		18 
						Standard deviation of the frequency domain gravity accelerometer for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                             
fGravityAcc-std()-Z  		18 
						Standard deviation of the frequency domain gravity accelerometer for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                             
fBodyAccJerk-mean()-X		18 
						Mean of the frequency domain body accelerometer jerk for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
			    
fBodyAccJerk-mean()-Y		18 
						Mean of the frequency domain body accelerometer jerk for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
			           
fBodyAccJerk-mean()-Z		18 
						Mean of the frequency domain body accelerometer jerk for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
			           
fBodyAccJerk-std()-X		18 
						Standard deviation of the frequency domain body accelerometer jerk for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
			           
fBodyAccJerk-std()-Y		18 
						Standard deviation of the frequency domain body accelerometer jerk for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
			                 
fBodyAccJerk-std()-Z		18 
						Standard deviation of the frequency domain body accelerometer jerk for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
			                 
fBodyGyro-mean()-X			18 
						Mean of the frequency domain body gyroscope for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				        
fBodyGyro-mean()-Y			18 
						Mean of the frequency domain body gyroscope for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				            
fBodyGyro-mean()-Z			18 
						Mean of the frequency domain body gyroscope for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				            
fBodyGyro-std()-X			18 
						Standard deviation of the frequency domain body gyroscope for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				            
fBodyGyro-std()-Y 			18 
						Standard deviation of the frequency domain body gyroscope for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				           
fBodyGyro-std()-Z			18 
						Standard deviation of the frequency domain body gyroscope for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				            
fBodyGyroJerk-mean()-X		18 
						Mean of the frequency domain body gyroscope jerk for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				      
fBodyGyroJerk-mean()-Y		18 
						Mean of the frequency domain body gyroscope jerk for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				            
fBodyGyroJerk-mean()-Z		18 
						Mean of the frequency domain body gyroscope jerk for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
				            
fBodyGyroJerk-std()-X		18 
						Standard deviation of the frequency domain body gyroscope jerk for the X axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				 
fBodyGyroJerk-std()-Y		18 
						Standard deviation of the frequency domain body gyroscope jerk for the Y axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				        
fBodyGyroJerk-std()-Z		18 
						Standard deviation of the frequency domain body gyroscope jerk for the Z axis direction
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
				        
fBodyAccMag-mean()			18 
						Mean of the frequency domain body accelerometer magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit         
							
fBodyAccMag-std()			18 
						Standard deviation of the frequency domain body accelerometer magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit      
							
fGravityAccMag-mean()		18 
						Mean of the frequency domain gravity accelerometer magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
                      
fGravityAccMag-std()		18 
						Standard deviation of the frequency domain gravity accelerometer magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
                             
fBodyAccJerkMag-mean()		18 
						Mean of the frequency domain body accelerometer jerk magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit   
							
fBodyAccJerkMag-std()		18 
						Standard deviation of the frequency domain body accelerometer jerk magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit   
					       
fBodyGyroMag-mean()			18 
						Mean of the frequency domain body gyroscope magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
							
fBodyGyroMag-std()			18 
						Standard deviation of the frequency domain body gyroscope magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit
					          
fBodyGyroJerkMag-mean()		18 
						Mean of the frequency domain body gyroscope jerk magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the mean unit
					     
fBodyGyroJerkMag-std		18 
						Standard deviation of the frequency domain body gyroscope jerk magnitude
							-1.000000000000000..1.000000000000000 .Integer value of the standard deviation unit

							
##License:
==========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.