Getting and Cleaning Data Course Project
========================================

## Introduction

This repo contains an R file that will read in data provided per the course assignment and output a transformed data set.  The latter is grouped by activity and subject, and contains the average value of each mean, mean ferquency, and standard deviation measurement present in the original data set.

## Code Book

### Variables Used

The following variables were specified by as having mean and standard deviation values avaulable:

````
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
````

The naming convention used within the original data set implied that any variable with `mean()`, `meanFreq()` or `std()` was a result of those respective functions being run against the orginal raw data captured from the devices.  As such, matching these strings within the features vector should yield a comprehensive list of all variables that contain means or standard deviations.  This was validated as true via observation and comparison.

### Naming Convetion

Dot notation is used to seperate the following elements (camel case is used for n-grams, capitalization convention explained below)
* time or frequency indicators are not capitalized
* measurement sources are capitalized for example, Body Acceleration is presented as "BodyAcc"
* mean, mean frequency, and standard deviation indicators are not capitalized
* axis indicators are capitalized

#### Time domain measurements of body, gravitational, and body jerk acceleration along each axis

time.BodyAcc.mean.X
time.BodyAcc.mean.Y
time.BodyAcc.mean.Z

time.BodyAcc.standardDeviation.X
time.BodyAcc.standardDeviation.Y
time.BodyAcc.standardDeviation.Z

time.GravityAcc.mean.X
time.GravityAcc.mean.Y
time.GravityAcc.mean.Z

time.GravityAcc.standardDeviation.X
time.GravityAcc.standardDeviation.Y
time.GravityAcc.standardDeviation.Z


time.BodyAccJerk.mean.X
time.BodyAccJerk.mean.Y
time.BodyAccJerk.mean.Z

time.BodyAccJerk.standardDeviation.X
time.BodyAccJerk.standardDeviation.Y
time.BodyAccJerk.standardDeviation.Z

#### Time domain measurements of body and body jerk orientation along each axis

time.BodyGyro.mean.X
time.BodyGyro.mean.Y
time.BodyGyro.mean.Z

time.BodyGyro.standardDeviation.X
time.BodyGyro.standardDeviation.Y
time.BodyGyro.standardDeviation.Z

time.BodyGyroJerk.mean.X
time.BodyGyroJerk.mean.Y
time.BodyGyroJerk.mean.Z

time.BodyGyroJerk.standardDeviation.X
time.BodyGyroJerk.standardDeviation.Y
time.BodyGyroJerk.standardDeviation.Z

#### Time domain measurements of magnitude of body, gravity, and body jerk acceleration 
time.BodyAccMag.mean
time.BodyAccMag.standardDeviation

time.GravityAccMag.mean
time.GravityAccMag.standardDeviation

time.BodyAccJerkMag.mean
time.BodyAccJerkMag.standardDeviation

#### Time domain measurements of  magnitude of body orientation and body jerk orientation

time.BodyGyroMag.mean
time.BodyGyroMag.standardDeviation

time.BodyGyroJerkMag.mean
time.BodyGyroJerkMag.standardDeviation

#### FFT Frequency domain measurements of body, gravitational, and body jerk acceleration along each axis

frequency.BodyAcc.mean.X
frequency.BodyAcc.mean.Y
frequency.BodyAcc.mean.Z

frequency.BodyAcc.standardDeviation.X
frequency.BodyAcc.standardDeviation.Y
frequency.BodyAcc.standardDeviation.Z

frequency.BodyAcc.meanFrequency.X
frequency.BodyAcc.meanFrequency.Y
frequency.BodyAcc.meanFrequency.Z

frequency.BodyAccJerk.mean.X
frequency.BodyAccJerk.mean.Y
frequency.BodyAccJerk.mean.Z

frequency.BodyAccJerk.standardDeviation.X
frequency.BodyAccJerk.standardDeviation.Y
frequency.BodyAccJerk.standardDeviation.Z

frequency.BodyAccJerk.meanFrequency.X
frequency.BodyAccJerk.meanFrequency.Y
frequency.BodyAccJerk.meanFrequency.Z

#### FFT Frequency domain measurements of body and body jerk orientation along each axis

frequency.BodyGyro.mean.X
frequency.BodyGyro.mean.Y
frequency.BodyGyro.mean.Z

frequency.BodyGyro.standardDeviation.X
frequency.BodyGyro.standardDeviation.Y
frequency.BodyGyro.standardDeviation.Z

frequency.BodyGyro.meanFrequency.X
frequency.BodyGyro.meanFrequency.Y
frequency.BodyGyro.meanFrequency.Z

#### FFT Frequency domain measurements of magnitude of body, gravity, and body jerk acceleration 

frequency.BodyAccMag.mean
frequency.BodyAccMag.standardDeviation
frequency.BodyAccMag.meanFrequency

frequency.BodyBodyAccJerkMag.mean
frequency.BodyBodyAccJerkMag.standardDeviation
frequency.BodyBodyAccJerkMag.meanFrequency

#### FFT Frequency domain measurements of  magnitude of body orientation and body jerk orientation

frequency.BodyBodyGyroMag.mean
frequency.BodyBodyGyroMag.standardDeviation
frequency.BodyBodyGyroMag.meanFrequency

frequency.BodyBodyGyroJerkMag.mean
frequency.BodyBodyGyroJerkMag.standardDeviation
frequency.BodyBodyGyroJerkMag.meanFrequency"