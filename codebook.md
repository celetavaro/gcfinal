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

## Variables

Measurements in this dataset come from the Galaxy S smartphone's Gyroscope and Accelerometer in the X, Y, and Z planes
(X, Y, Z appended to end of variable name in each direction). Variable names that are in the time domain start with the 
string "time", and ones that are in the frequency domain start with the string "freq".  Similarly, gyroscope measurement 
variables contain the string "Gyro" and accelerometer measurement variables contain the string "Accel".  

Abbreviated names were chosen to avoid excessively long variable names.

#### Identifiers:

  * subjectID: the integer value representing each subject's data. (integer values 1-30)
  * activity:  the activity that the subject was doing during measurement (for activity codes see Activity List below)
  
#### Time Domain:



#### Frequency Domain:



  

  
## Activity List:
  
  | activity | code |
  | --- | --- |
  | walking | subject was walking during measurement |
  | upstairs | subject was walking upstairs during measurement |
  | downstairs | subject was walking downstairs during measurement |
  | sitting | subject was sitting during measurement |
  | standing | subject was standing during measurement |
  | laying | subject was lying down during measurement |
