
**The Code Book will explain the run_analysis.R process**

* Pull Zip File at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Downloaded and Stored the .zip file locally at my "geting_and_cleaning_data" working directory as "Dataset"
* Extract .zip into UCI HAR Dataset folder
* Loading subject_test Data into R
	*Loaded the subject_test data into R as subject_test, X_test, Y_test for their respected files from the UCI HAR Dataset folder.
		*X_test contains the data using the feature data set as columns
		*Y_test contains the activity labels
		*subject_test contains the ids
* Loading subject_train Data into R
	*Loaded the subject_train data into R as subject_train, X_train, Y_train for their respected files from the UCI HAR Dataset folder.
		*X_train contains the data using the feature data set as columns
		*Y_train contains the activity labels
		*subject_train contains the ids
	
* Lookup info for features and activities from features.txt and activity_labels.txt
* Extracts only the measurements on the mean and standard deviation
	*grep for mean ans std
* Merged Data
	* combined Test and Train Data in Subject 
	* Gather features and placed in X 
	* Gathered activities and placed in activity 
		* Does use descriptive activity names to name the activities in the data set
	* Merged all into data_merged by combining (X, activity, Subject)
	* Write merged_tidy_data.txt

* Created 2nd dataset from data_merged above grouped by Subject and Activity.  Also applied SD and Average calculation
	* Write tidy dataset with calc and grouping as calc_tidy_dataset.txt

	
	
	
**How the UCI HAR Dataset was captured**
The general concept of the data in the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed 
six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments 
have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected 
for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% 
overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter 
into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 