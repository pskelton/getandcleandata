## Coursera getdata-012 Mar 2015
## Getting and cleaning data course project - PSkelton

## Breif
# You should create one R script called run_analysis.R that does the following. 
# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3) Uses descriptive activity names to name the activities in the data set
# 4) Appropriately labels the data set with descriptive variable names. 
# 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#load required librarys
library("dplyr")

############ load in data

xtrain <- read.table("UCI HAR Dataset/train/X_train.txt") #7352*561
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt") #7352*1
subtrain <- read.table("UCI HAR Dataset/train/subject_train.txt") #7352*1

xtest <- read.table("UCI HAR Dataset/test/X_test.txt") #2947*561
ytest <- read.table("UCI HAR Dataset/test/y_test.txt") #2947*1
subtest <- read.table("UCI HAR Dataset/test/subject_test.txt") #2947*1

features <- read.table("UCI HAR Dataset/features.txt") #561*2
actlabs <- read.table("UCI HAR Dataset/activity_labels.txt") #6*2

########## merge x/y/subject data together by adding rows

xdata <- rbind(xtrain,xtest) #10299*561
ydata <- rbind(ytrain,ytest) #10299*1
subdata <- rbind(subtrain,subtest) #10299*1

########### label the data and change activty to descriptive

colnames(xdata) <- features[,2]
colnames(ydata) <- "activity"
ydata[,1] <- actlabs[ydata[,1],2]
colnames(subdata) <- "subject"

########## merge all data sets to gether by column to get final large data frame

dataset <- cbind(subdata,ydata,xdata) #10299*563

########### extract only the measurements on the mean and standard deviation for each measurement

meanstdcol <- grep("mean\\(\\)|std\\(\\)", features[,2])
meanstdcol <- meanstdcol+2
datatidy <- dataset[,c(1,2,meanstdcol)]

########### creates a second, independent tidy data set with the average of each variable for each activity and each subject

grouped <- group_by(datatidy,subject,activity)
avgtidy <- summarise_each(grouped,funs(mean))

########## create the tidy average dataset file in working dir

write.table(avgtidy,file="avgtidy.txt",row.names=F)

##
