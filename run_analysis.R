# check for data, download & unzip if not present
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  filename <- "getdata_projectfiles_UCI HAR Dataset.zip"
    datadir <- "UCI HAR Dataset"

    if(!file.exists(datadir)){
        download.file(fileURL, filename, method = "curl")
        unzip(filename)
    }
# read in data sets
xtest <- read.table( file.path(datadir, "test", "X_test.txt"))
  ytest <- read.table( file.path(datadir,"test","y_test.txt"))
    stest <- read.table( file.path(datadir, "test", "subject_test.txt"))
    
xtrain <- read.table( file.path(datadir, "train", "X_train.txt"))
  ytrain <- read.table( file.path(datadir, "train", "y_train.txt"))
    strain <- read.table( file.path(datadir, "train", "subject_train.txt"))

# assign names before merge to avoid having multiple "V1" columns
names(stest) <- "subjectID"
  names(ytest) <- "activity"

    names(strain) <- "subjectID"
      names(ytrain) <- "activity"
  
# merge test set
testdata <- cbind(stest, ytest, xtest)
    # merge training set
    traindata <- cbind(strain, ytrain, xtrain)
  
# merge both sets into one 
dset <- rbind(testdata, traindata)
    # to get the subjectID's in order
    dset <- dset[order(dset$subjectID), ]
    
# read in features info (column names) and assign to columns
features <- read.table( file.path(datadir, "features.txt"))
    features[, 2] <- as.character(features[, 2])
        names(dset) <- c("subjectID", "activity", features[, 2]) 
        
# remove old dataframes to free memory
rm('stest', 'strain', 'xtest', 'xtrain', 'ytest', 'ytrain', 'testdata', 'traindata')
    
# Part II:  Extract measurements only on the mean and std of each measurement
    # use grep/grepl to pick the cols with[Mm]ean or [Ss]td
    
# Descriptive Activity Names for activities in dataset
lookup <- c("walking", "upstairs", "downstairs", "sitting", "standing", "laying")
dset$activity <- lookup[dset$activity]

# Part IV:  Dataset should have appropriate/descriptive variable names
   # TODO:  gsub() to format names properly

# Part V:  From the data set in step 4, creates a second, independent tidy data set 
#   with the average of each variable for *each activity* and *each subject*.
#   use write.table to create .txt file with new tidy dataset and read.table to 
#   look at tidy data (include in codebook)