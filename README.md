GettingCleaningData
===================

Coursera Getting and Cleaning Data course repository

This repository only contains the script run_analysis.R which take as input the following text files:

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'X_train.txt': Training set.

- 'y_train.txt': Training labels.

- 'X_test.txt': Test set.

- 'y_test.txt': Test labels.

- 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample.

and get a data set containing the average of all columns relative to all mean and std movement variables for each activity and each subject

Study Design
============

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The target for this analysis is get all mean() and std() variables and get the average of this magnitudes by activiy and subject

Code Book
=========

- id_activity (integer):
- activity_name (string):
- subject (integer):
- tBodyAcc.mean.X (dbl):
- tBodyAcc.mean.Y (dbl):
- tBodyAcc.mean.Z (dbl):
- tGravityAcc.mean.X (dbl):
- tGravityAcc.mean.Y (dbl): 
- tGravityAcc.mean.Z (dbl): 
- tBodyAccJerk.mean.X (dbl): 
- tBodyAccJerk.mean.Y (dbl): 
- tBodyAccJerk.mean.Z (dbl):
- tBodyGyro.mean.X (dbl): 
- tBodyGyro.mean.Y (dbl): 
- tBodyGyro.mean.Z (dbl):
- tBodyGyroJerk.mean.X (dbl): 
- tBodyGyroJerk.mean.Y (dbl): 
- tBodyGyroJerk.mean.Z (dbl):
- tBodyAccMag.mean (dbl): 
- tGravityAccMag.mean (dbl): 
- tBodyAccJerkMag.mean (dbl):
- tBodyGyroMag.mean (dbl): 
- tBodyGyroJerkMag.mean (dbl): 
- fBodyAcc.mean.X (dbl):
- fBodyAcc.mean.Y (dbl): 
- fBodyAcc.mean.Z (dbl): 
- fBodyAcc.meanFreq.X (dbl):
- fBodyAcc.meanFreq.Y (dbl): 
- fBodyAcc.meanFreq.Z (dbl): 
- fBodyAccJerk.mean.X (dbl):
- fBodyAccJerk.mean.Y (dbl): 
- fBodyAccJerk.mean.Z (dbl): 
- fBodyAccJerk.meanFreq.X (dbl):
- fBodyAccJerk.meanFreq.Y (dbl): 
- fBodyAccJerk.meanFreq.Z (dbl): 
- fBodyGyro.mean.X (dbl):
- fBodyGyro.mean.Y (dbl): 
- fBodyGyro.mean.Z (dbl): 
- fBodyGyro.meanFreq.X (dbl):
- fBodyGyro.meanFreq.Y (dbl): 
- fBodyGyro.meanFreq.Z (dbl): 
- fBodyAccMag.mean (dbl):
- fBodyAccMag.meanFreq (dbl): 
- fBodyBodyAccJerkMag.mean (dbl): 
- fBodyBodyAccJerkMag.meanFreq (dbl): 
- fBodyBodyGyroMag.mean (dbl): 
- fBodyBodyGyroMag.meanFreq (dbl):
- fBodyBodyGyroJerkMag.mean (dbl): 
- fBodyBodyGyroJerkMag.meanFreq (dbl):
- angletBodyAccMean,gravity (dbl): 
- angletBodyAccJerkMean,gravityMean (dbl):
- angletBodyGyroMean,gravityMean (dbl): 
- angletBodyGyroJerkMean,gravityMean (dbl):
- angleX,gravityMean (dbl): 
- angleY,gravityMean (dbl): 
- angleZ,gravityMean (dbl):
- tBodyAcc.std.X (dbl): 
- tBodyAcc.std.Y (dbl): 
- tBodyAcc.std.Z (dbl): 
- tGravityAcc.std.X (dbl):
- tGravityAcc.std.Y (dbl): 
- tGravityAcc.std.Z (dbl): 
- tBodyAccJerk.std.X (dbl):
- tBodyAccJerk.std.Y (dbl): 
- tBodyAccJerk.std.Z (dbl): 
- tBodyGyro.std.X (dbl): 
- tBodyGyro.std.Y (dbl): 
- tBodyGyro.std.Z (dbl): 
- tBodyGyroJerk.std.X (dbl): 
- tBodyGyroJerk.std.Y (dbl):
- tBodyGyroJerk.std.Z (dbl): 
- tBodyAccMag.std (dbl): 
- tGravityAccMag.std (dbl):
- tBodyAccJerkMag.std (dbl): 
- tBodyGyroMag.std (dbl): 
- tBodyGyroJerkMag.std (dbl):
- fBodyAcc.std.X (dbl): 
- fBodyAcc.std.Y (dbl): 
- fBodyAcc.std.Z (dbl): 
- fBodyAccJerk.std.X (dbl):
- fBodyAccJerk.std.Y (dbl): 
- fBodyAccJerk.std.Z (dbl): 
- fBodyGyro.std.X (dbl): 
- fBodyGyro.std.Y (dbl): 
- fBodyGyro.std.Z (dbl): 
- fBodyAccMag.std (dbl): 
- fBodyBodyAccJerkMag.std (dbl):
- fBodyBodyGyroMag.std (dbl): 
- fBodyBodyGyroJerkMag.std (dbl)