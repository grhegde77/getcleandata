library(tidyr)
library(dplyr)

#Reading testing dataset
testxdata<-read.table(".\\test\\X_test.txt",sep = "" , header = F , 
                       na.strings ="", stringsAsFactors= F)

#Reading feature list
features<-read.table("features.txt", sep="", header = F, na.strings = "", 
                     stringsAsFactors = F)

#Reading activity labels
actlabels<-read.table("activity_labels.txt", sep="", header = F, na.strings = "", 
                      stringsAsFactors = F)

#Reading the activity mapping
testydata<-read.table(".\\test\\y_test.txt",sep = "" , header = F ,
                       na.strings ="", stringsAsFactors= F)

#Assign the column name with the feature list
colnames(testxdata)<-features$V2

#Map to get the right activity for each observations
testactdata<- merge(testydata, actlabels,by.x = "V1", by.y = "V1" )

# Mappped values are added as column(variable) to testing dataset
testxdata[,"Activity"]<-testactdata$V2





