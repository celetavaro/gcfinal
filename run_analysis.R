# Part I:  read in data sets and merge them

xtest <- read.table("./data/test/X_test.txt")

ytest <- read.table("./data/test/y_test.txt")

stest <- read.table("./data/test/subject_test.txt")

xtrain <- read.table("./data/train/X_train.txt")

ytrain <- read.table("./data/train/y_train.txt")

strain <- read.table("./data/train/subject_train.txt")

# NOTE:  change names from V1 to descriptive before cbinidning 
  # all have first col. vectors loaded as "V1"


# Part II:  Extract measurements only on the mean and std of each measurement

# Part III:  Descriptive Activity Names for activities in dataset

# Part IV:  Dataset should have appropriate/descriptive variable names

# Part V:  From the data set in step 4, creates a second, independent tidy data set 
#   with the average of each variable for *each activity* and *each subject*.