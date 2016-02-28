
library(tidyr)
library(dplyr)

#Reading training dataset
trainxdata<-read.table(".\\train\\X_train.txt",sep = "" , header = F , 
                       na.strings ="", stringsAsFactors= F)

#Reading feature list
features<-read.table("features.txt", sep="", header = F, na.strings = "", 
                     stringsAsFactors = F)

#Reading activity labels
actlabels<-read.table("activity_labels.txt", sep="", header = F, na.strings = "", 
                      stringsAsFactors = F)

#Reading the activity mapping
trainydata<-read.table(".\\train\\y_train.txt",sep = "" , header = F ,
                       na.strings ="", stringsAsFactors= F)

#Assign the column name with the feature list
colnames(trainxdata)<-features$V2

#Map to get the right activity for each observations
trainactdata<- merge(trainydata, actlabels,by.x = "V1", by.y = "V1" )

# Mappped values are added as column(variable) to training dataset
trainxdata[,"Activity"]<-trainactdata$V2





