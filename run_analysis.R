library(data.table)



#0.Prepare the data set for this assignment

#Download the data set
file_url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(file_url,'./data.zip', mode = 'wb')

#Unzip the data set to be available for loading the needed files
unzip("data.zip")



#1.Merges the training and the test sets to create one data set.

#Load the train files: the subject ID of the train, the activity ID of the train, and the train set 
train_subject_ID <- read.table('./UCI HAR Dataset/train/subject_train.txt')
train_activity_ID <- read.table('./UCI HAR Dataset/train/y_train.txt')
train_set <- read.table('./UCI HAR Dataset/train/X_train.txt')

#Merge the training files into one data set with the first column the subject ID of the training, 
#the  second column with the activity ID of the training, and the following columns with the training set
merged_train <- cbind(train_subject_ID, train_activity_ID, train_set)

#Load the test files: the subject ID of the test, the activity ID of the test, and the test set 
test_subject_ID <- read.table('./UCI HAR Dataset/test/subject_test.txt')
test_activity_ID <- read.table('./UCI HAR Dataset/test/y_test.txt')
test_set <- read.table('./UCI HAR Dataset/test/X_test.txt')

#Merge the test files into one data set with the first column the subject ID of the test, 
#the  second column with the activity ID of the test, and the following columns with the test set  
merged_test <- cbind(test_subject_ID, test_activity_ID, test_set)

#Create one data set with the merged training and test sets
merged_data_set <- rbind(merged_train, merged_test)



#2.Extracts only the measurements on the mean and standard deviation for each measurement.

#Load the features file wich contains the names of all the measurement
features <- read.table('./UCI HAR Dataset/features.txt')

#Extract the names of all the measurement
measurement_names <- as.character(features[,2])

#Assign descriptive names to all the variables\columns of the merged data set
names(merged_data_set) <- c(c('Subject_ID','Activity_ID'), measurement_names)

#Extract the column indices for only the mean and standard deviation for each measurement
#and making sure that the meanFreq is not considered
col_ID_mean_meanFreq_std <- grep('mean|std', measurement_names)
col_ID_meanFreq <- grep('meanFreq', measurement_names)
col_ID_mean_std <- col_ID_mean_meanFreq_std [!(col_ID_mean_meanFreq_std  %in% col_ID_meanFreq)]

#Extract the subject ID column, the activity ID column, and only the columns with 
#the measurements on the mean and standard deviation for each measurement.
extracted_mean_std <- merged_data_set[,c(1,2,col_ID_mean_std + 2)]



#3.Uses descriptive activity names to name the activities in the data set

#Load the activity_labels file wich contains the names of all the activities
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')

#Extract the names of all the activities
activities_names <- as.character(activity_labels[,2])

#Update the activity IDs in the data set with the coresponding descriptive activity names
extracted_mean_std$Activity_ID <- activities_names[extracted_mean_std$Activity_ID]



#4.Appropriately labels the data set with descriptive variable names.

#Rename the column 'Activity_ID' to 'Activity'
colnames(extracted_mean_std)[2] <- "Activity"

#The other descriptive variable names were already assigned at step 2



#5. From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.

#Simlify the name of the data set from 'extracted_mean_std' to just 'data'
data<-extracted_mean_std
rm(extracted_mean_std)

#Create the tidy data set with the average of each variable for each activity and each subject
tidy_data <- aggregate(data[,names(data) != c('Subject_ID','Activity')],by=list(Subject_ID = data$Subject_ID, Activity = data$Activity),mean)

#Save the tidy data set as 'data_tidy.txt'
write.table(tidy_data, file = "data_tidy.txt", row.names = FALSE)
