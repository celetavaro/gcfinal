# URL for data - add download/check/unzip, etc.
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# afer unzip: "UCI HAR Dataset" with subdirs /test and /train


# read in features file and use this to name the columns features[,2] will have the names


# read in data sets 
xtest <- read.table("./data/test/X_test.txt")
  ytest <- read.table("./data/test/y_test.txt")
    stest <- read.table("./data/test/subject_test.txt")
    
xtrain <- read.table("./data/train/X_train.txt")
  ytrain <- read.table("./data/train/y_train.txt")
    strain <- read.table("./data/train/subject_train.txt")

# assign names before merge to avoid having multiple "V1" columns
names(stest) <- "subjectID"
  names(ytest) <- "activity"

    names(strain) <- "subjectID"
      names(ytrain) <- "activity"
  
# merge test set
testdata <- cbind(ytest, xtest)
  testdata <- cbind(stest, testdata)

    # merge training set
    traindata <- cbind(ytrain, xtrain)
      traindata <- cbind(strain, traindata)
  
# merge both sets into one big set. 
dset <- rbind(testdata, traindata)

    # to get the subjectID's in order
    dset <- dset[order(dset$subjectID), ]


# Part II:  Extract measurements only on the mean and std of each measurement
    
    # use grep/grepl to pick the cols with[Mm]ean or [Ss]td

    # Descriptive Activity Names for activities in dataset
    
    lookup <- c("walking", "upstairs", "downstairs", "sitting", "standing", "laying")
    dset$activity <- lookup[dset$activity]

# Part IV:  Dataset should have appropriate/descriptive variable names

# Part V:  From the data set in step 4, creates a second, independent tidy data set 
#   with the average of each variable for *each activity* and *each subject*.
# use write.table to create .txt file with new tidy dataset and read.table to look at tidy data