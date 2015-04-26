# Tidy Dataset for UCI HAR data 

For each record it is provided averages of means and standard deviations for each measurement in the HAR dataset

Recipe
======
Here's an overview of what the code does:

1. Load features.txt into a data frame to later name columns
2. Load HAR data files into data frames using the feature names for columns as necessary
3. Merge activities, subjects, and data into a new data frame, for training and test data
4. Merge training and test data into a new data frame
5. This is an important step: From the merged data frame, I pick out the columns of data that pertain to mean or standard deviations of gathered data. These columns, along with subject and activity, are placed into merged_data. Column numbers are selected after manually reviewing colnames(merged_data) before this step
6. Up to this point, activities were denoted by a number. Now I replace them with human-readable names
7. Next, column names are renamed to "tidy," human-readable names
8. Next, the code loops over this merged dataset to generate a "tiny" dataset. This is done by looping over subjects, and then looping over activities. The merged dataset is filtered off subject and activity, averages are calculated and placed in tidy_data
9. Finally, column names are updated to reflect that the data is now averaged.

Variable Names
==============
I'm considering variable names with mixed capitalization to be "tidy," as mentioned during lecture slide http://jtleek.com/modules/03_GettingData/01_03_componentsOfTidyData/#4. I recognize in week 4 there is mention of converting all characters to lower-case, I find this to be less readable.

Requirements
============
This code uses the qdap and dplyr libraries.

Code Book
=========

* subject

Number identifying subject that this record pertains to

* activity

Activity for subject that this record relates to. Will be one of SITTING, STANDING, LAYING, WALKING, WALKING\_UPSTAIRS, or WALKING\_DOWNSTAIRS

* averageTimeBodyAccelerometerMeanX

Average body acceleration mean X

* averageTimeBodyAccelerometerMeanY

Average body acceleration mean Y

* averageTimeBodyAccelerometerMeanZ

Average body acceleration mean Z

* averageTimeBodyAccelerometerStandardDeviationX

Average body acceleration standard deviation X

* averageTimeBodyAccelerometerStandardDeviationY

Average body acceleration standard deviation Y

* averageTimeBodyAccelerometerStandardDeviationZ

Average body acceleration standard deviation Z

* averageTimeGravityAccelerometerMeanX

Average gravitational acceleration mean X

* averageTimeGravityAccelerometerMeanY

Average gravitational acceleration mean Y

* averageTimeGravityAccelerometerMeanZ

Average gravitational acceleration mean Z

* averageTimeGravityAccelerometerStandardDeviationX

Average gravitational acceleration standard deviation X

* averageTimeGravityAccelerometerStandardDeviationY

Average gravitational acceleration standard deviation Y

* averageTimeGravityAccelerometerStandardDeviationZ

Average gravitational acceleration standard deviation Z

* averageTimeBodyAccelerometerJerkMeanX

Average jerk signals derived from linear body acceleration mean X

* averageTimeBodyAccelerometerJerkMeanY

Average jerk signals derived from linear body acceleration mean Y

* averageTimeBodyAccelerometerJerkMeanZ

Average jerk signals derived from linear body acceleration mean Z

* averageTimeBodyAccelerometerJerkStandardDeviationX

Average jerk signals derived from linear body acceleration standard deviation X

* averageTimeBodyAccelerometerJerkStandardDeviationY

Average jerk signals derived from linear body acceleration standard deviation Y

* averageTimeBodyAccelerometerJerkStandardDeviationZ

Average jerk signals derived from linear body acceleration standard deviation Z

* averageTimeBodyGyroscopeMeanX

Average angular velocity of body mean X

* averageTimeBodyGyroscopeMeanY

Average angular velocity of body mean Y

* averageTimeBodyGyroscopeMeanZ

Average angular velocity of body mean Z

* averageTimeBodyGyroscopeStandardDeviationX

Average angular velocity of body standard deviation X

* averageTimeBodyGyroscopeStandardDeviationY

Average angular velocity of body standard deviation Y

* averageTimeBodyGyroscopeStandardDeviationZ

Average angular velocity of body standard deviation Z

* averageTimeBodyGyroscopeJerkMeanX

Average jerk signals derived from angular velocity of body mean X

* averageTimeBodyGyroscopeJerkMeanY

Average jerk signals derived from angular velocity of body mean Y

* averageTimeBodyGyroscopeJerkMeanZ

Average jerk signals derived from angular velocity of body mean Z

* averageTimeBodyGyroscopeJerkStandardDeviationX

Average jerk signals derived from angular velocity of body standard deviation X

* averageTimeBodyGyroscopeJerkStandardDeviationY

Average jerk signals derived from angular velocity of body standard deviation Y

* averageTimeBodyGyroscopeJerkStandardDeviationZ

Average jerk signals derived from angular velocity of body standard deviation Z

* averageTimeBodyAccelerometerMagnitudeMean

Average magnitude of linear body acceleration mean

* averageTimeBodyAccelerometerMagnitudeStandardDeviation

Average magnitude of linear body acceleration standard deviation

* averageTimeGravityAccelerometerMagnitudeMean

Average magnitude of gravitational acceleration mean

* averageTimeGravityAccelerometerMagnitudeStandardDeviation

Average magnitude of gravitational acceleration standard deviation

* averageTimeBodyAccelerometerJerkMagnitudeMean

Average magnitude of jerk signals derived from linear body acceleration mean

* averageTimeBodyAccelerometerJerkMagnitudeStandardDeviation

Average magnitude of jerk signals derived from linear body acceleration standard deviation

* averageTimeBodyGyroscopeMagnitudeMean

Average magnitude of angular velocity of body mean

* averageTimeBodyGyroscopeMagnitudeStandardDeviation

Average magnitude of angular velocity of body standard deviation

* averageTimeBodyGyroscopeJerkMagnitudeMean

Average magnitude of jerk signals derived from angular velocity of body mean

* averageTimeBodyGyroscopeJerkMagnitudeStandardDeviation

Average magnitude of jerk signals derived from angular velocity of body standard deviation

* averageFrequencyBodyAccelerometerMeanX

Average of fast fourier transform on body acceleration mean X

* averageFrequencyBodyAccelerometerMeanY

Average of fast fourier transform on body acceleration mean Y

* averageFrequencyBodyAccelerometerMeanZ

Average of fast fourier transform on body acceleration mean Z

* averageFrequencyBodyAccelerometerStandardDeviationX

Average of fast fourier transform on body acceleration standard deviation X

* averageFrequencyBodyAccelerometerStandardDeviationY

Average of fast fourier transform on body acceleration standard deviation Y

* averageFrequencyBodyAccelerometerStandardDeviationZ

Average of fast fourier transform on body acceleration standard deviation Z

* averageFrequencyBodyAccelerometerJerkMeanX

Average of fast fourier transform on jerk signals derived from linear body acceleration mean X

* averageFrequencyBodyAccelerometerJerkMeanY

Average of fast fourier transform on jerk signals derived from linear body acceleration mean Y

* averageFrequencyBodyAccelerometerJerkMeanZ

Average of fast fourier transform on jerk signals derived from linear body acceleration mean Z

* averageFrequencyBodyAccelerometerJerkStandardDeviationX

Average of fast fourier transform on jerk signals derived from linear body acceleration standard deviation X

* averageFrequencyBodyAccelerometerJerkStandardDeviationY

Average of fast fourier transform on jerk signals derived from linear body acceleration standard deviation Y

* averageFrequencyBodyAccelerometerJerkStandardDeviationZ

Average of fast fourier transform on jerk signals derived from linear body acceleration standard deviation Z

* averageFrequencyBodyGyroscopeMeanX

Average of fast fourier transform angular velocity of body mean X

* averageFrequencyBodyGyroscopeMeanY

Average of fast fourier transform angular velocity of body mean Y

* averageFrequencyBodyGyroscopeMeanZ

Average of fast fourier transform angular velocity of body mean Z

* averageFrequencyBodyGyroscopeStandardDeviationX

Average of fast fourier transform angular velocity of body standard deviation X

* averageFrequencyBodyGyroscopeStandardDeviationY

Average of fast fourier transform angular velocity of body standard deviation Y

* averageFrequencyBodyGyroscopeStandardDeviationZ

Average of fast fourier transform angular velocity of body standard deviation Z

* averageFrequencyBodyAccelerometerMagnitudeMean

Average of fast fourier transform on magnitude of linear body acceleration mean

* averageFrequencyBodyAccelerometerMagnitudeStandardDeviation

Average of fast fourier transform on magnitude of linear body acceleration standard deviation

* averageFrequencyBodyAccelerometerJerkMagnitudeMean

Average of fast fourier transform on magnitude of jerk signals derived from linear body acceleration mean

* averageFrequencyBodyAccelerometerJerkMagnitudeStandardDeviation

Average of fast fourier transform on magnitude of jerk signals derived from linear body acceleration standard deviation

* averageFrequencyBodyGyroscopeMagnitudeMean

Average of fast fourier transform on magnitude of angular velocity of body mean

* averageFrequencyBodyGyroscopeMagnitudeStandardDeviation

Average of fast fourier transform on magnitude of angular velocity of body standard deviation

* averageFrequencyBodyGyroscopeJerkMagnitudeMean

Average of fast fourier transform on magnitude of jerk signals derived from angular velocity of body mean

* averageFrequencyBodyGyroscopeJerkMagnitudeStandardDeviation

Average of fast fourier transform on magnitude of jerk signals derived from angular velocity of body standard deviation


Credit:
========
This code is designed to use data published in the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
