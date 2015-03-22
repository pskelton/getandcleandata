# getandcleandata
Programming Assignment - Getting and Cleaning Data  
P Skelton - Mar 2015

## Breif
You should create one R script called run_analysis.R that does the following.   
 1) Merges the training and the test sets to create one data set.  
 2) Extracts only the measurements on the mean and standard deviation for each measurement.   
 3) Uses descriptive activity names to name the activities in the data set.  
 4) Appropriately labels the data set with descriptive variable names.   
 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Original Data set
The data set represents data collected from the accelerometers from the Samsung Galaxy S smartphones

- Main page including description  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
- Actual dataset  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Using run_analysis.R
The script requires that you download and unzip the data set and put it in the same folder as the script.  
The folder containing "run_analysis.R" and "UCI HAR Dataset" should then be set as the working directory.  
The script is dependant on the 'dplyr' library. This package should be installed prior to use.  
Running the script in R studio will then produce a tidy data set file "avgtidy.txt" from the above breif.

## Codebook
Please see the codebook for a description of the scripts functions and the output it produces.  