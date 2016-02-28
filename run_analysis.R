library(tidyr)
library(dplyr)

source("traindataset.R")
source("testdataset.R")

#Applied UNION as both are distinct dataset
allxdata<-union(trainxdata, testxdata)

#This would get all the column contains mean/std/Activity
mesdata<-allxdata[,grepl("mean|std|Activity",
                         colnames(allxdata),ignore.case = TRUE)]

#Some of the following abbrevations are expanded
names(mesdata) <- gsub("Acc", "Accelerometer", names(mesdata))
names(mesdata) <- gsub("Gyro", "Gyroscope", names(mesdata))
names(mesdata) <- gsub("Mag", "Magnitude", names(mesdata))


#It calculates avergaes for all the measurments for each activity group
msgtable<-tbl_df(mesdata)
gptable<-group_by(msgtable, Activity)

finalgalxydata<-summarise_each(gptable,funs(mean))
