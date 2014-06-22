##load training data, label activities, rename data columns, bind data together
##by row, and subset measures to include only means and standard deviations

train.activity<-read.table("./UCI HAR Dataset/train/y_train.txt")
train.subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")
train.measures<-read.table("./UCI HAR Dataset/train/x_train.txt")
features<-read.table("./UCI HAR Dataset/features.txt")

col.features<-t(features)
clean.col.features<-col.features[2,]
names(train.measures)<-clean.col.features
names(train.subject)<-"SubjectID"
names(train.activity)<-"ActivityID"

attach(train.activity)
train.activity$ActivityLabel[ActivityID==1]<-"WALKING"
train.activity$ActivityLabel[ActivityID==2]<-"WALKING_UPSTAIRS"
train.activity$ActivityLabel[ActivityID==3]<-"WALKING_DOWNSTAIRS"
train.activity$ActivityLabel[ActivityID==4]<-"SITTING"
train.activity$ActivityLabel[ActivityID==5]<-"STANDING"
train.activity$ActivityLabel[ActivityID==6]<-"LAYING"
detach(train.activity)

mean.train.measures=grep("mean",names(train.measures))
std.train.measures=grep("std",names(train.measures))
sub.train.measures<-train.measures[,c(mean.train.measures,std.train.measures)]
train.data<-cbind(train.subject,train.activity,sub.train.measures)


##load test data, label activities, rename data columns, bind data together by 
##row, and subset measures to include only means and standard deviations

test.activity<-read.table("./UCI HAR Dataset/test/y_test.txt")
test.subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")
test.measures<-read.table("./UCI HAR Dataset/test/x_test.txt")

names(test.measures)<-clean.col.features
names(test.subject)<-"SubjectID"
names(test.activity)<-"ActivityID"

attach(test.activity)
test.activity$ActivityLabel[ActivityID==1]<-"WALKING"
test.activity$ActivityLabel[ActivityID==2]<-"WALKING_UPSTAIRS"
test.activity$ActivityLabel[ActivityID==3]<-"WALKING_DOWNSTAIRS"
test.activity$ActivityLabel[ActivityID==4]<-"SITTING"
test.activity$ActivityLabel[ActivityID==5]<-"STANDING"
test.activity$ActivityLabel[ActivityID==6]<-"LAYING"
detach(test.activity)

mean.test.measures=grep("mean",names(test.measures))
std.test.measures=grep("std",names(test.measures))
sub.test.measures<-test.measures[,c(mean.test.measures,std.test.measures)]
test.data<-cbind(test.subject,test.activity,sub.test.measures)


##merged training and test data together, reshape the activity to give variable
##values by subject and activity, obtain mean values for each variable by
##subject and activity

merged.data<-merge(train.data,test.data,all=TRUE)
install.packages("reshape2")
library(reshape2)
merged.data_melt<-melt(merged.data,id=c("SubjectID","ActivityID","ActivityLabel"))
install.packages("dplyr")
library(dplyr)
summarized.data<-summarize(group_by(merged.data_melt,SubjectID,ActivityID,ActivityLabel,variable),mean(value))


##write the summarized data to a new file
write.table(summarized.data,file="GCDCourseProject.txt")
