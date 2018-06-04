# Code Book 
This code book is used to describes variables, data, and any transformations. 


## Data Source
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


### Experiment Description 
* The experiment was carried out on a group of 30 volunteers (19 - 48 years of age)
* Samsung Galaxy S was to used to detect three types of motions:  walking (flat, upstairs and downstairs), sitting, standing and laying
* The dataset has been randomly divided into two sets, where 70% of the volunteers was selected for the training data and 30% the test data.

### Sensor Measurements
Using accelerometer and gyroscope of Samsung Galaxy S, the following measurements were recoreded:
* three-axial linear acceleration
* three-axial angular velocity at a constant rate of 50Hz

### Signal Processing
* signals were pre-processed using noise filters,then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
* From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
* The time domain signals were captured at a constant rate of 50 Hz, prefix 't' denotes time
* The accelaration signal was separated into body and gravity acceleration signals: 
  * tBodyAcc-XYZ
  * tGravityAcc-XYZ
* the body linear acceleration and angular velocity were derived in time to obtain Jerk signals:
  * tBodyAccJerk-XYZ
  * tBodyGyroJerk-XYZ
* The magnitude of these three-dimensional signals were calculated using the Euclidean form:
  * tBodyAccMag
  * tGravityAccMag
  * tBodyAccJerkMag
  * tBodyGyroMag
  * tBodyGyroJerkMag
* a Fast Fourier Transform (FFT):
  * fBodyAcc-XYZ
  * fBodyAccJerk-XYZ
  * fBodyGyro-XYZ
  * fBodyAccJerkMag
  * fBodyGyroMag
  * fBodyGyroJerkMag

Then we have the following set of signals:

1. tBodyAcc-XYZ
2. tGravityAcc-XYZ
3. tBodyAccJerk-XYZ
4. tBodyGyro-XYZ
5. tBodyGyroJerk-XYZ
6. tBodyAccMag
7. tGravityAccMag
8. tBodyAccJerkMag
9. tBodyGyroMag
10. tBodyGyroJerkMag
11. fBodyAcc-XYZ
12. fBodyAccJerk-XYZ
13. fBodyGyro-XYZ
14. fBodyAccMag
15. fBodyAccJerkMag
16. fBodyGyroMag
17. fBodyGyroJerkMag

a number of calculations, such as mean value, standard deviation, largest and smalles value were calculated. 


## Transformations

* The training and the test sets have been merged to form a single data set

1. Downloads the original data.
2. Loads training and test datasets.
6. Using dplyr's, merge the datasets 
7. Creates an independent tidy dataset based on mean and standard deviations
8. Saves the tidy dataset as [tidy_data.txt]and [tidy_data.csv]
