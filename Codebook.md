---
title: "Codebook"
author: "Agata"
date: "2022-11-24"
output: html_document
---

# Codebook for the run_analysis.R script

Description of the variables used in analysis, copied and modified from fetures_info.txt file from the original dataset.



## Variables description and units


### Feature Selection 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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



The set of variables that were estimated from these signals are: 

1. mean(): Mean value
2. std(): Standard deviation
3. mad(): Median absolute deviation 
4. max(): Largest value in array
5. min(): Smallest value in array
6. sma(): Signal magnitude area
7. energy(): Energy measure. Sum of the squares divided by the number of values. 
8. iqr(): Interquartile range 
9. entropy(): Signal entropy
10. arCoeff(): Autorregresion coefficients with Burg order equal to 4
11. correlation(): correlation coefficient between two signals
12. maxInds(): index of the frequency component with largest magnitude
13. meanFreq(): Weighted average of the frequency components to obtain a mean frequency
14. skewness(): skewness of the frequency domain signal 
15. kurtosis(): kurtosis of the frequency domain signal 
16. bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
17. angle(): Angle between to vectors.


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


**From the original datasets only the values of the mean and standard deviation (std) for the measurements were extracted.**


### List of variables in the tidy dataset:
1. dataset
2. subject
3. activity
4. tBodyAccmeanX
5. tBodyAccmeanY
6. tBodyAccmeanZ
7. tGravityAccmeanX
8. tGravityAccmeanY
9. tGravityAccmeanZ
10. tBodyAccJerkmeanX
11. tBodyAccJerkmeanY
12. tBodyAccJerkmeanZ
13. tBodyGyromeanX
14. tBodyGyromeanY
15. tBodyGyromeanZ
16. tBodyGyroJerkmeanX
17. tBodyGyroJerkmeanY
18. tBodyGyroJerkmeanZ
19. tBodyAccMagmean
20. tGravityAccMagmean
21. tBodyAccJerkMagmean
22. tBodyGyroMagmean
23. tBodyGyroJerkMagmean
24. fBodyAccmeanX
25. fBodyAccmeanY
26. fBodyAccmeanZ
27. fBodyAccmeanFreqX
28. fBodyAccmeanFreqY
29. fBodyAccmeanFreqZ
30. fBodyAccJerkmeanX
31. fBodyAccJerkmeanY
32. fBodyAccJerkmeanZ
33. fBodyAccJerkmeanFreqX
34. fBodyAccJerkmeanFreqY
35. fBodyAccJerkmeanFreqZ
36. fBodyGyromeanX
37. fBodyGyromeanY
38. fBodyGyromeanZ
39. fBodyGyromeanFreqX
40. fBodyGyromeanFreqY
41. fBodyGyromeanFreqZ
42. fBodyAccMagmean
43. fBodyAccMagmeanFreq
44. fBodyBodyAccJerkMagmean
45. fBodyBodyAccJerkMagmeanFreq
46. fBodyBodyGyroMagmean
47. fBodyBodyGyroMagmeanFreq
48. fBodyBodyGyroJerkMagmean
49. fBodyBodyGyroJerkMagmeanFreq
50. angletBodyAccMean.gravity
51. angletBodyAccJerkMean.gravityMean
52. angletBodyGyroMean.gravityMean
53. angletBodyGyroJerkMean.gravityMean
54. angleX.gravityMean
55. angleY.gravityMean
56. angleZ.gravityMean
57. tBodyAccstdX
58. tBodyAccstdY
59. tBodyAccstdZ
60. tGravityAccstdX
61. tGravityAccstdY
62. tGravityAccstdZ
63. tBodyAccJerkstdX
64. tBodyAccJerkstdY
65. tBodyAccJerkstdZ
66. tBodyGyrostdX
67. tBodyGyrostdY
68. tBodyGyrostdZ
69. tBodyGyroJerkstdX
70. tBodyGyroJerkstdY
71. tBodyGyroJerkstdZ
72. tBodyAccMagstd
73. tGravityAccMagstd
74. tBodyAccJerkMagstd
75. tBodyGyroMagstd
76. tBodyGyroJerkMagstd
77. fBodyAccstdX
78. fBodyAccstdY
79. fBodyAccstdZ
80. fBodyAccJerkstdX
81. fBodyAccJerkstdY
82. fBodyAccJerkstdZ
83. fBodyGyrostdX
84. fBodyGyrostdY
85. fBodyGyrostdZ
86. fBodyAccMagstd
87. fBodyBodyAccJerkMagstd
88. fBodyBodyGyroMagstd
89. fBodyBodyGyroJerkMagstd
