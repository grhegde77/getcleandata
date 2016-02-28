### Introduction

This is code book that describes the variables, the data, and any transformations or work that performed to clean up the data 

### Description

There are majorly two dataset has been given. 1. Training dataset 2. Testing dataset
As a common there following sets features(variable in R) and activity lable this is activities conducted (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

Using following R libraries to conduct this analysis:
library(tidyr)
library(dplyr)

Script would read the train data from the file X_train.txt and y_train.txt
Also read features from features.txt and activity_labels.txt in the root folder.

Following is the mapping of R dataset to file:
X_train.txt => trainxdata
features.txt => features
activity_labels.txt => actlabels
y_train.txt => trainydata


Used feature list and assigned as column name to training dataset
Then mapped the actlabels to trainydata and got the activity for each row of training dataset.
The added a row to main training dataset (trainxdata)

Similar thing was excuted on the testing dataset as well.
So result is testxdata 

Above I used pre steps before starting the analysis:

Merges the training and the test sets to create one data set.

	Then applied union on this as these are distinctct sets.

Extracts only the measurements on the mean and standard deviation for each measurement.
	
	I used the grep command find the mean and std in the column name. Along with the Activity.
	
	
Uses descriptive activity names to name the activities in the data set
	
	This was done as part of the prework as it would simple and efficient as activity mapping files are different
	
Appropriately labels the data set with descriptive variable names.

	Changed the replaced following phrases
	1. Acc => Accelerometer
	2. Gyro => Gyroscope
	3. Mag => Magnitude
	
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	This steps bit tricky to me as I applied group_by and tried with summarize but that did not apply for multiple columns.
	Then I got the function summarise_each which helped me apply to all the column.

Final result could be found in the data frame finalgalxydata







