##Data Dictionary "GCDCourseProject.txt"

###SubjectID
    Subject Identification
         
          *1...30 Subject Number
          
###ActivityID
    Activity Identification
         
          *1...6  Activity Number
          
###ActivityLabel
    Description of Activities corresponding to "ActivityID"
         
          *WALKING            (corresponds to ActivityID "1")
          *WALKING_UPSTAIRS   (corresponds to ActivityID "2")
          *WALKING_DOWNSTAIRS (corresponds to ActivityID "3")
          *SITTING            (corresponds to ActivityID "4")
          *STANDING           (corresponds to ActivityID "5")
          *LAYING             (corresponds to ActivityID "6")
          
###variable
    Features selected from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
    Prefix 't' denotes time domain signals. Prefix 'f' denotes frequency domain signals.  'BodyAcc' 
    denotes body acceleration signals.  'GravityAcc' denotes gravity acceleration signals. 'BodyAccJerk' 
    denotes body linear acceleration.  'BodyGyroJerk' denotes body angular velocity. Suffix 'Mag' denotes 
    magnitued calculated using the Euclidean norm. The suffix 'mean()' denotes mean value.  The suffix 
    'std()' denotes standard deviation.  The suffix '-XYZ' denotes 3-axial signals in the X, Y, and Z 
    directions.
    
          *fBodyAcc-mean()-X               
          *fBodyAcc-mean()-Y 
          *fBodyAcc-mean()-Z           
          *fBodyAcc-meanFreq()-X 
          *fBodyAcc-meanFreq()-Y           
          *fBodyAcc-meanFreq()-Z 
          *fBodyAcc-std()-X                
          *fBodyAcc-std()-Y
          *fBodyAcc-std()-Z           
          *fBodyAccJerk-mean()-X
          *fBodyAccJerk-mean()-Y           
          *fBodyAccJerk-mean()-Z
          *fBodyAccJerk-meanFreq()-X       
          *fBodyAccJerk-meanFreq()-Y 
          *fBodyAccJerk-meanFreq()-Z            
          *fBodyAccJerk-std()-X
          *fBodyAccJerk-std()-Y            
          *fBodyAccJerk-std()-Z
          *fBodyAccMag-mean()          
          *fBodyAccMag-meanFreq() 
          *fBodyAccMag-std()      
          *fBodyBodyAccJerkMag-mean()
          *fBodyBodyAccJerkMag-meanFreq()       
          *fBodyBodyAccJerkMag-std()
          *fBodyBodyGyroJerkMag-mean() 
          *fBodyBodyGyroJerkMag-meanFreq()
          *fBodyBodyGyroJerkMag-std()         
          *fBodyBodyGyroMag-mean()
          *fBodyBodyGyroMag-meanFreq()          
          *fBodyBodyGyroMag-std()
          *fBodyGyro-mean()-X              
          *fBodyGyro-mean()-Y 
          *fBodyGyro-mean()-Z          
          *fBodyGyro-meanFreq()-X 
          *fBodyGyro-meanFreq()-Y          
          *fBodyGyro-meanFreq()-Z 
          *fBodyGyro-std()-X               
          *fBodyGyro-std()-Y 
          *fBodyGyro-std()-Z               
          *tBodyAcc-mean()-X 
          *tBodyAcc-mean()-Y               
          *tBodyAcc-mean()-Z 
          *tBodyAcc-std()-X                
          *tBodyAcc-std()-Y 
          *tBodyAcc-std()-Z           
          *tBodyAccJerk-mean()-X 
          *tBodyAccJerk-mean()-Y           
          *tBodyAccJerk-mean()-Z 
          *tBodyAccJerk-std()-X            
          *tBodyAccJerk-std()-Y 
          *tBodyAccJerk-std()-Z          
          *tBodyAccJerkMag-mean() 
          *tBodyAccJerkMag-std()              
          *tBodyAccMag-mean() 
          *tBodyAccMag-std()              
          *tBodyGyro-mean()-X 
          *tBodyGyro-mean()-Y              
          *tBodyGyro-mean()-Z 
          *tBodyGyro-std()-X               
          *tBodyGyro-std()-Y 
          *tBodyGyro-std()-Z          
          *tBodyGyroJerk-mean()-X 
          *tBodyGyroJerk-mean()-Y          
          *tBodyGyroJerk-mean()-Z 
          *tBodyGyroJerk-std()-X           
          *tBodyGyroJerk-std()-Y 
          *tBodyGyroJerk-std()-Z         
          *tBodyGyroJerkMag-mean() 
          *tBodyGyroJerkMag-std()             
          *tBodyGyroMag-mean() 
          *tBodyGyroMag-std()            
          *tGravityAcc-mean()-X 
          *tGravityAcc-mean()-Y            
          *tGravityAcc-mean()-Z 
          *tGravityAcc-std()-X             
          *tGravityAcc-std()-Y 
          *tGravityAcc-std()-Z           
          *tGravityAccMag-mean() 
          *tGravityAccMag-std()

###mean.value
    The mean value for each measurement listed under "variable"
  
          * -0.99770...0,97450  
