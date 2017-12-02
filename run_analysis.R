# Part I:  read in data sets and merge them
xtest <- read.table("./data/test/X_test.txt")
  ytest <- read.table("./data/test/y_test.txt")
    stest <- read.table("./data/test/subject_test.txt")
    
xtrain <- read.table("./data/train/X_train.txt")
  ytrain <- read.table("./data/train/y_train.txt")
    strain <- read.table("./data/train/subject_train.txt")

names(stest) <- "subjectID"
  names(ytest) <- "activity"

names(strain) <- "subjectID"
  names(ytrain) <- "activity"
  
# merge test set
testdata <- cbind(ytest, xtest)
  testdata <- cbind(stest, testdata)

# merge training set
traindata <- cbind(ytrain, ytest)
  traindata <- cbind(strain, traindata)
  
# merge both sets into one big set. 
dset <- rbind(testdata, traindata)

# to get the subjectID's in order
dset <- dset[order(dset$subjectID), ]


# Part II:  Extract measurements only on the mean and std of each measurement

# Part III:  Descriptive Activity Names for activities in dataset

# Part IV:  Dataset should have appropriate/descriptive variable names

# Part V:  From the data set in step 4, creates a second, independent tidy data set 
#   with the average of each variable for *each activity* and *each subject*.