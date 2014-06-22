##GCDCourseProject
================

Course Project for the Getting and Cleaning Data Course

The code "run_analysis.R" performs the following actions on the Samsung data set when the data set has been downloaded and unzipped in your working directory:

* reads the data files features.txt, subject_train.txt, subject_test.txt, y_train.txt, y_test.txt, x_train.txt, and x_test.txt into data frames "features", "train.subject", "test.subject", "train.activity", "test.activity", "train.measures", and "test.measures", respectively
* transposes the "features" data frame and uses the transposed data frame to name the columns in the "train.measures" and "test.measures" data frames
* renames the data column in the "train.subject" and "test.subject" data frames to "SubjectID"
* renames the data column in the "train.activity" and "test.activity" data frames to "ActivityID"
* creates a new data column in the "train.activity" and "test.activity" data frames called "ActivityLabel" that labels the training activities based on the file "activity_labels.txt" in the UCI dataset
* subsets the training and test data by keeping only the columns in "train.measures" and "test.measures" that contain 'mean' or 'std' and creating new data frames called "sub.train.measures" and "sub.test.measures", respectively
* creates new data frames called "train.data" and "test.data" by cbinding the data frames "train.subject", "train.activity", and "sub.train.measures" and the data frames "test.subject", "test.activity", and "sub.test.measures", respectively
* merges "train.data" and "test.data" data frames into the "merged.data" data frame
* installs the packages "reshape2" and "dplyr"
* reshapes the data my melting the merged data using ID fields "SubjectID", "ActivityID", and "ActivityLabel"
* summarizes the data using the "summarize" command, grouping the data by subject and activity and returning the mean value for each measurement
* writes the tidy data frame to a new file called "GCDCourseProject.txt"
