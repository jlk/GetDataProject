## run_analysis.R - Merges and reduces UCI HAR dataset
##
## Written by John Kinsella for Coursera class "Getting and Cleaning Data"
##

library(dplyr)
options(stringsAsFactors = FALSE)

# Step 1 - merge training and test data sets
feature_labels <- read.table("features.txt")
training_data <- read.table("train/X_train.txt", col.names=feature_labels$V2)
training_subjects <- read.table("train/subject_train.txt")
training_labels <- read.table("train/y_train.txt", colClasses = c("character"))
test_data <- read.table("test/X_test.txt", col.names=feature_labels$V2)
test_subjects <- read.table("test/subject_test.txt")
test_labels <- read.table("test/y_test.txt", colClasses = c("character"))

merged_training_data <- cbind(training_labels, training_subjects, training_data)
merged_test_data <- cbind(test_labels, test_subjects, test_data)

merged_data <- rbind(merged_training_data, merged_test_data)

# Step 2
# Out of the merged data, we want the first 2 columns (subject, activity) and then
# the mean and standard deviation for each measurement. Next line picks the appropriate colums:
merged_data <- merged_data[c(1,2,3,4,5,6,7,8,43,44,45,46,47,48,83,84,85,86,87,88,123,124,125,126,127,128,163,164,165,166,167,168,203,204,216,217,229,230,242,243,255,256,268,269,270,271,272,273,347,348,349,350,351,352,426,427,428,429,430,431,505,506,518,519,531,532,544,545)]

# Step 3 - Use descriptive activity names
merged_data$V1[merged_data$V1==1] <- "WALKING"
merged_data$V1[merged_data$V1==2] <- "WALKING_UPSTAIRS"
merged_data$V1[merged_data$V1==3] <- "WALKING_DOWNSTAIRS"
merged_data$V1[merged_data$V1==4] <- "SITTING"
merged_data$V1[merged_data$V1==5] <- "STANDING"
merged_data$V1[merged_data$V1==6] <- "LAYING"

# Step 4 - use descriptive variable names
merged_data <- rename(merged_data, activity = V1, subject = V1.1 )

# Step 5 - Create tidy data set from merged data
tidy_data = merged_data[0,]

# Get a list of subject IDs to loop through:
subjects <- sort(unique(merged_data$subject))

# Get a list of activities to loop through:
activities <- unique(merged_data$activity)

for(current_subject in subjects) {
  for(current_activity in activities) {
#    print( sprintf("subject %s activity %s", current_subject, current_activity))
    subject_activity_data <- filter(merged_data, subject == current_subject & activity == current_activity)
    averaged_data <- apply(subject_activity_data[3:68], 2, mean)
    record_info <- data.frame(subject=current_subject, activity=as.character(current_activity), stringsAsFactors=FALSE)
    tidy_record <- c(record_info, averaged_data)
    tidy_data <- rbind(tidy_data, tidy_record)
  }
}
rownames(tidy_data) <- NULL

