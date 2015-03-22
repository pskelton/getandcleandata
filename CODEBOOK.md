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
6. We are only interested in columns featuring "mean()" and "std()" so subset the data down
7. "datatidy" is now a tidy data set featuring the columns:
+subject
+activty
+and columns showing the mean and standard deviation for the various measurements
8. A second tidy dataset is then created. This contains the average of each variable mean and standard deviation for each acitivy and each subject.
9. This average tidy is the written to the working directory.

## Output data format
The average tidy data set is (30 subjects * 6 activities) 180 rows.
It comprises of 68 columns. subject (experiment subject id), activity (test activty for measurements) and then 66 columns of the mean values (the mean() and std() values from 33 signals) listed in "features_info" in the original dataset.

## Notes
* No disctinction is made between the TRAIN and TEST datasets. When merged you can no longer tell from where each observation has come. This information was dropped as none of the further analysis needed to check between the two.
* Column names have been kept the same as from the origional dataset "features_info". They are descriptive in their format already, and without any further columnwise analysis required there is no need to improve typeability.
* Only columns exactly matching "mean()" and "std()" where used for the subset. Brief states "Extracts only the measurements on the mean and standard deviation for each measurement." This eliminates mean and std values where the measurement has undergone further processing. "features_info" states there are 33 signals that can have mean() and std() applied to them.


