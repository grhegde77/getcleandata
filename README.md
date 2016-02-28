Final tidy dataset is uploaded as tab(\t) sepepated text files galaxy.txt

You could construct the final result using the following command:

vdata<-read.table("galaxy.txt",sep = "\t" , header = TRUE , na.strings ="", stringsAsFactors= F)

Also you could get the data from original dataset by running the following R script:

run_analysis.R which internally uses the following R scripts:

	1. testdataset.R
	2. traindataset.R

All these files are should be along with the "features.txt", "features_info.txt" and "activity_labels.txt"
Assume that test and train dataset are stored in side the folder "test" and "train" folder.


