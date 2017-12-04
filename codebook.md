# Codebook for the tidy_data.txt dataset

#### Raw Data Source: 

[Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
(from the UCI archives)

## Creation of the tidy dataset

#### Data Transformations:

The script run_analysis.R peforms the following transformations on the raw data:

  * merges the test dataset components
  * merges the training dataset components
  * merges the test and training datasets into a single dataset
  * re-assigns the integer values for the 'activity' variable to descriptive names
    * i.e. 1 is transformed to "walking"
  * assigns descriptive variable names and formats them for clarity/readability
    * values starting with "t" or "f" were transformed to start with "time" or "freq" respectively
    * values containing "Acc" were transformed to "Accel"
    * values containing "mean" or "std" were transformed to "Mean" and "Std" respectively for readability
  * extracts only the columns that measure mean or std (standard deviation) for each measurement
  * creates a separate independent dataset that gives the average of each variable grouped by subject and activity
  * writes the new dataset to the file tidy_data.txt
  

To load the tidy_data.txt file in R, use the read.table() function since it was generated with write.table().
i.e. read.table("tidy_data.txt", stringsAsFactors = FALSE)

## Variables

There are a total of 81 variables and 180 total measurements.  The values for each measurement represent the mean of the
representative variable

Measurements in this dataset come from the Galaxy S smartphone's Gyroscope and Accelerometer in the X, Y, and Z planes
(X, Y, Z appended to end of variable name in each direction). Variable names that are in the time domain start with the 
string "time", and ones that are in the frequency domain start with the string "freq".  Similarly, gyroscope measurement 
variables contain the string "Gyro" and accelerometer measurement variables contain the string "Accel".  

Abbreviated names were chosen to avoid excessively long variable names.

#### Identifier Variables:

  * subjectID: the integer value representing each subject's data. (integer values 1-30)
  * activity:  the activity that the subject was doing during measurement (for activity codes see Activity Code List below)
  
#### Time Domain Variables:

  * timeBodyAccelMeanX
  * timeBodyAccelMeanY
  * timeBodyAccelMeanZ
  * timeBodyAccelStdX
  * timeBodyAccelStdY
  * timeBodyAccelStdZ
  * timeGravityAccelMeanX
  * timeGravityAccelMeanY
  * timeGravityAccelMeanZ
  * timeGravityAccelStdX
  * timeGravityAccelStdY
  * timeGravityAccelStdZ
  * timeBodyAccelJerkMeanX
  * timeBodyAccelJerkMeanY
  * timeBodyAccelJerkMeanZ
  * timeBodyAccelJerkStdX
  * timeBodyAccelJerkStdY
  * timeBodyAccelJerkStdZ
  * timeBodyGyroMeanX
  * timeBodyGyroMeanY
  * timeBodyGyroMeanZ
  * timeBodyGyroStdX
  * timeBodyGyroStdY
  * timeBodyGyroStdZ
  * timeBodyGyroJerkMeanX
  * timeBodyGyroJerkMeanY
  * timeBodyGyroJerkMeanZ
  * timeBodyGyroJerkStdX
  * timeBodyGyroJerkStdY
  * timeBodyGyroJerkStdZ
  * timeBodyAccelMagMean
  * timeBodyAccelMagStd
  * timeGravityAccelMagMean
  * timeGravityAccelMagStd
  * timeBodyAccelJerkMagMean
  * timeBodyAccelJerkMagStd
  * timeBodyGyroMagMean
  * timeBodyGyroMagStd
  * timeBodyGyroJerkMagMean
  * timeBodyGyroJerkMagStd

#### Frequency Domain Variables:

  * freqBodyAccelMeanX
  * freqBodyAccelMeanY
  * freqBodyAccelMeanZ
  * freqBodyAccelStdX
  * freqBodyAccelStdY
  * freqBodyAccelStdZ
  * freqBodyAccelMeanFreqX
  * freqBodyAccelMeanFreqY
  * freqBodyAccelMeanFreqZ
  * freqBodyAccelJerkMeanX
  * freqBodyAccelJerkMeanY
  * freqBodyAccelJerkMeanZ
  * freqBodyAccelJerkStdX
  * freqBodyAccelJerkStdY
  * freqBodyAccelJerkStdZ
  * freqBodyAccelJerkMeanFreqX
  * freqBodyAccelJerkMeanFreqY
  * freqBodyAccelJerkMeanFreqZ
  * freqBodyGyroMeanX
  * freqBodyGyroMeanY
  * freqBodyGyroMeanZ
  * freqBodyGyroStdX
  * freqBodyGyroStdY
  * freqBodyGyroStdZ
  * freqBodyGyroMeanFreqX
  * freqBodyGyroMeanFreqY
  * freqBodyGyroMeanFreqZ
  * freqBodyAccelMagMean
  * freqBodyAccelMagStd
  * freqBodyAccelMagMeanFreq
  * freqBodyBodyAccelJerkMagMean
  * freqBodyBodyAccelJerkMagStd
  * freqBodyBodyAccelJerkMagMeanFreq
  * freqBodyBodyGyroMagMean
  * freqBodyBodyGyroMagStd
  * freqBodyBodyGyroMagMeanFreq
  * freqBodyBodyGyroJerkMagMean
  * freqBodyBodyGyroJerkMagStd
  * freqBodyBodyGyroJerkMagMeanFreq
  
## Activity Code List:
  
  | activity | code |
  | --- | --- |
  | walking | subject was walking during measurement |
  | upstairs | subject was walking upstairs during measurement |
  | downstairs | subject was walking downstairs during measurement |
  | sitting | subject was sitting during measurement |
  | standing | subject was standing during measurement |
  | laying | subject was lying down during measurement |
