# Codebook
Programming Assignment - Getting and Cleaning Data  
P Skelton - Mar 2015

## The data
Please see the files "Readme" and "features_info" in the UCI HAR Dataset folder for a complete description of the variables and the data set.

## Script logic steps
1. Load required librarys
2. Load in all the data sets
3. Merge the test and train datasets together by rows for each x / y / subject dataset
4. Label the columns on these datasets and change acitvitys vairbale to descriptive
5. Merge the 3 datasets together by adding the columns
6. We are only interested in columns featuring "mean()" and "std()" so remove all other columns apart from subject and activty.
7. "datatidy" is now a tidy data set featuring the columns: subject, activty and columns showing the mean and standard deviation for the various measurements
8. A second tidy dataset is then created. This contains the average of each variable mean and standard deviation for each acitivy and each subject.
9. This average tidy is the written to the working directory.

## Output data format
The average tidy data set is (30 subjects * 6 activities) 180 rows.
It comprises of 68 columns. subject, activty then 66 columns of means (33 signals with mean() and std()).
* subject is the subject id taken from "subject_train" and "subject_test" datafiles
* activity is the activity description taken from "activity_labels" datafile
* the remaining columns are average values for each columns values over each subject and actvity. See "features_info" for description of variable. 

## Notes
* No disctinction is made between the TRAIN and TEST datasets. When merged you can no longer tell from where each observation has come. This information was dropped as none of the further analysis needed to check between the two.
* Column names have been kept the same as from the origional dataset "features_info". They are descriptive in their format already, and without any further columnwise analysis required there is no need to improve typeability.
* Only columns exactly matching "mean()" and "std()" where used for the subset. Brief states "Extracts only the measurements on the mean and standard deviation for each measurement." This eliminates mean and std values where the measurement has undergone further processing. "features_info" states there are 33 signals that can have mean() and std() applied to them.


