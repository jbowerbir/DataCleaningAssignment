# Codebook for the "tidyData.txt" dataset.



## Overview of variables
 
There are 88 variables, 2 of which are ID variables and 86 of which are 
measurement variables. Variables, their names, values, and units are described 
below.



## ID variables

subjectID: 	unique subject identifier [1,30]

activityID: 	factor variable specifying what the subject was doing while 
              the measurement was taken [1,6]	
  Value (Label):              Description
	1     (WALKING):            subject was walking
	2     (WALKING_UPSTAIRS):   subject was walking up a staircase
	3     (WALKING_DOWNSTAIRS): subject was walking down a staircase
	4     (SITTING):            subject was sitting
	5     (STANDING):           subject was standing
	6     (LAYING):             subject was laying down



## Measurement variables


### Base variable names

Variable names have as their base one of the following:

BodyAcc-XYZ
GravityAcc-XYZ
BodyAccJerk-XYZ
BodyGyro-XYZ
BodyGyroJerk-XYZ
BodyAccMag
GravityAccMag
BodyAccJerkMag
BodyGyroMag
BodyGyroJerkMag

These base names will be qualified with "[Mm]ean", "std" or a prefix of either 
"t" or "f". Explanations for each, as well as information on the unites of 
measure, are given below.


### mean and std qualification

mean(): Indicates a mean value
std(): Indicates a standard deviation


### t prefix

The features selected for this database come from the accelerometer and 
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals 
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they
were filtered using a median filter and a 3rd order low pass Butterworth filter 
with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration 
signal was then separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter 
with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in 
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the 
magnitude of these three-dimensional signals were calculated using the Euclidean
norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 
tBodyGyroJerkMag). 


### f prefix

Finally a Fast Fourier Transform (FFT) was applied to some of these signals 
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain 
signals). 

These signals were used to estimate variables of the feature vector for each 
pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.