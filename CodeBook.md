# Data Dictionary
#### Method
This data set was built off of the raw accelerometer data for the Samsung Galaxy S Smartphone retrieved from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The output data set was generated as follows:

1. The sample test and training data sets were pulled out.
2. The activity labels, subject info were added back in to each data set.
3. The two data sets were merged together.
4. The feature labels were added to the merged data set to give useful column names.
5. Everything but the mean and standard deviation values were thrown out. Note that means from the additional signal window sample data were not included.
6. The result data set was grouped by subject number and activity, and the means for each value in the aggregate sets were pulled into a final output data set.

#### Code Book
1. **subject**: The subject number for the following measurements
2. **activity**: The type of activity the subject was performing
3. **tBodyAcc-mean()-X**: Mean of the mean time domain body acceleration in the X axis of the accelerometer for the given subject and activity
4. **tBodyAcc-mean()-Y**: Mean of the mean time domain body acceleration in the Y axis of the accelerometer for the given subject and activity
5. **tBodyAcc-mean()-Z**: Mean of the mean time domain body acceleration in the Z axis of the accelerometer for the given subject and activity
6. **tBodyAcc-std()-X**: Mean of the standard deviation of the time domain body acceleration in the X axis of the accelerometer for the given subject and activity
7. **tBodyAcc-std()-Y**: Mean of the standard deviation of the time domain body acceleration in the Y axis of the accelerometer for the given subject and activity
8. **tBodyAcc-std()-Z**: Mean of the standard deviation of the time domain body acceleration in the Z axis of the accelerometer for the given subject and activity
9. **tGravityAcc-mean()-X**: Mean of the mean time domain gravity acceleration in the X axis of the accelerometer for the given subject and activity
10. **tGravityAcc-mean()-Y**: Mean of the mean time domain gravity acceleration in the Y axis of the accelerometer for the given subject and activity
11. **tGravityAcc-mean()-Z**: Mean of the mean time domain gravity acceleration in the Z axis of the accelerometer for the given subject and activity
12. **tGravityAcc-std()-X**: Mean of the standard deviation of the time domain gravity acceleration in the X axis of the accelerometer for the given subject and activity
13. **tGravityAcc-std()-Y**: Mean of the standard deviation of the time domain gravity acceleration in the Y axis of the accelerometer for the given subject and activity
14. **tGravityAcc-std()-Z**: Mean of the standard deviation of the time domain gravity acceleration in the Z axis of the accelerometer for the given subject and activity
15. **tBodyAccJerk-mean()-X**: Mean of the mean derived body jerk in the X axis of the accelerometer for the given subject and activity
16. **tBodyAccJerk-mean()-Y**: Mean of the mean derived body jerk in the Y axis of the accelerometer for the given subject and activity
17. **tBodyAccJerk-mean()-Z**: Mean of the mean derived body jerk in the Z axis of the accelerometer for the given subject and activity
18. **tBodyAccJerk-std()-X**: Mean of standard deviation of the derived body jerk in the X axis of the accelerometer for the given subject and activity
19. **tBodyAccJerk-std()-Y**: Mean of standard deviation of the derived body jerk in the Y axis of the accelerometer for the given subject and activity
20. **tBodyAccJerk-std()-Z**: Mean of standard deviation of the derived body jerk in the Z axis of the accelerometer for the given subject and activity
21. **tBodyGyro-mean()-X**: Mean of the mean time domain body acceleration in the X axis of the gyroscope for the given subject and activity
22. **tBodyGyro-mean()-Y**: Mean of the mean time domain body acceleration in the Y axis of the gyroscope for the given subject and activity
23. **tBodyGyro-mean()-Z**: Mean of the mean time domain body acceleration in the Z axis of the gyroscope for the given subject and activity
24. **tBodyGyro-std()-X**: Mean of the standard deviation of the time domain body acceleration in the X axis of the gyroscope for the given subject and activity
25. **tBodyGyro-std()-Y**: Mean of the standard deviation of the time domain body acceleration in the Y axis of the gyroscope for the given subject and activity
26. **tBodyGyro-std()-Z**: Mean of the standard deviation of the time domain body acceleration in the Z axis of the gyroscope for the given subject and activity
27. **tBodyGyroJerk-mean()-X**: Mean of the mean derived body jerk in the X axis of the gyroscope for the given subject and activity
28. **tBodyGyroJerk-mean()-Y**: Mean of the mean derived body jerk in the Y axis of the gyroscope for the given subject and activity
29. **tBodyGyroJerk-mean()-Z**: Mean of the mean derived body jerk in the Z axis of the gyroscope for the given subject and activity
30. **tBodyGyroJerk-std()-X**: Mean of the stdnard deviation of the derived body jerk in the X axis of the gyroscope for the given subject and activity
31. **tBodyGyroJerk-std()-Y**: Mean of the stdnard deviation of the derived body jerk in the Y axis of the gyroscope for the given subject and activity
32. **tBodyGyroJerk-std()-Z**: Mean of the stdnard deviation of the derived body jerk in the Z axis of the gyroscope for the given subject and activity
33. **tBodyAccMag-mean()**: Mean of the mean maginitudes of the three-dimensional accelerometer body acceleration in the time domain calculated using the Euclidean norm for the given subject and activity
34. **tBodyAccMag-std()**: Mean of the standard deviation of the maginitudes of the three-dimensional accelerometer body acceleration in the time domain calculated using the Euclidean norm for the given subject and activity
35. **tGravityAccMag-mean()**: Mean of the mean maginitudes of the three-dimensional accelerometer gravity acceleration in the time domain calculated using the Euclidean norm for the given subject and activity
36. **tGravityAccMag-std()**: Mean of the standard deviation of the maginitudes of the three-dimensional accelerometer gravity acceleration in the time domain calculated using the Euclidean norm for the given subject and activity
37. **tBodyAccJerkMag-mean()**: Mean of the mean maginitudes of the three-dimensional accelerometer body acceleration derived in time calculated using the Euclidean norm for the given subject and activity
38. **tBodyAccJerkMag-std()**:  Mean of the standard deviation of the maginitudes of the three-dimensional accelerometer body acceleration derived in time calculated using the Euclidean norm for the given subject and activity
39. **tBodyGyroMag-mean()**: Mean of the mean maginitudes of the three-dimensional gyroscope acceleration in the time domain calculated using the Euclidean norm for the given subject and activity
40. **tBodyGyroMag-std()**: Mean of the stdnard deviation of the maginitudes of the three-dimensional accelerometer gyroscope acceleration in the time domain calculated using the Euclidean norm for the given subject and activity
41. **tBodyGyroJerkMag-mean()**: Mean of the mean maginitudes of the three-dimensional gyroscope body acceleration derived in time calculated using the Euclidean norm for the given subject and activity
42. **tBodyGyroJerkMag-std()**: Mean of the standard deviation of the maginitudes of the three-dimensional gyroscope body acceleration derived in time calculated using the Euclidean norm for the given subject and activity
43. **fBodyAcc-mean()-X**: Mean of the mean frequency domain body acceleration in the X axis of the accelerometer for the given subject and activity
44. **fBodyAcc-mean()-Y**: Mean of the mean frequency domain body acceleration in the Y axis of the accelerometer for the given subject and activity
45. **fBodyAcc-mean()-Z**: Mean of the mean frequency domain body acceleration in the Z axis of the accelerometer for the given subject and activity
46. **fBodyAcc-std()-X**: Mean of the standard deviations of the frequency domain body acceleration in the X axis of the accelerometer for the given subject and activity
47. **fBodyAcc-std()-Y**: Mean of the standard deviations of the frequency domain body acceleration in the Y axis of the accelerometer for the given subject and activity
48. **fBodyAcc-std()-Z**: Mean of the standard deviations of the frequency domain body acceleration in the Z axis of the accelerometer for the given subject and activity
49. **fBodyAccJerk-mean()-X**: Mean of the mean frequency domain derived body jerk in the X axis of the accelerometer for the given subject and activity
50. **fBodyAccJerk-mean()-Y**: Mean of the mean frequency domain derived body jerk in the Y axis of the accelerometer for the given subject and activity
51. **fBodyAccJerk-mean()-Z**: Mean of the mean frequency domain derived body jerk in the Z axis of the accelerometer for the given subject and activity
52. **fBodyAccJerk-std()-X**: Mean of the standard deviations of the frequency domain derived body jerk in the X axis of the accelerometer for the given subject and activity
53. **fBodyAccJerk-std()-Y**: Mean of the standard deviations of the frequency domain derived body jerk in the Y axis of the accelerometer for the given subject and activity
54. **fBodyAccJerk-std()-Z**: Mean of the standard deviations of the frequency domain derived body jerk in the Z axis of the accelerometer for the given subject and activity
55. **fBodyGyro-mean()-X**: Mean of the mean frequency domain body acceleration in the X axis of the gyroscope for the given subject and activity
56. **fBodyGyro-mean()-Y**: Mean of the mean frequency domain body acceleration in the Y axis of the gyroscope for the given subject and activity
57. **fBodyGyro-mean()-Z**: Mean of the mean frequency domain body acceleration in the Z axis of the gyroscope for the given subject and activity
58. **fBodyGyro-std()-X**: Mean of the stdnard deviations of the frequency domain body acceleration in the X axis of the gyroscope for the given subject and activity
59. **fBodyGyro-std()-Y**: Mean of the stdnard deviations of the frequency domain body acceleration in the Y axis of the gyroscope for the given subject and activity
60. **fBodyGyro-std()-Z**: Mean of the stdnard deviations of the frequency domain body acceleration in the Z axis of the gyroscope for the given subject and activity
61. **fBodyAccMag-mean()**: Mean of the mean maginitudes of the three-dimensional accelerometer body acceleration in the frequency domain calculated using the Euclidean norm for the given subject and activity
62. **fBodyAccMag-std()**: Mean of the standard deviatrions of the maginitudes of the three-dimensional accelerometer body acceleration in the frequency domain calculated using the Euclidean norm for the given subject and activity
63. **fBodyBodyAccJerkMag-mean()**: Mean of the mean maginitudes of the three-dimensional accelerometer body acceleration in the frequency domain derived in time calculated using the Euclidean norm for the given subject and activity
64. **fBodyBodyAccJerkMag-std()**: Mean of the standard deviations of the maginitudes of the three-dimensional accelerometer body acceleration in the frequency domain derived in time calculated using the Euclidean norm for the given subject and activity
65. **fBodyBodyGyroMag-mean()**: Mean of the mean maginitudes of the three-dimensional gyroscope body acceleration in the frequency domain derived in time calculated using the Euclidean norm for the given subject and activity
