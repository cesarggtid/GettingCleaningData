library("dplyr")

# Set the current work space
setwd("D:/workspace-R/coursera/data")

# Getting all the data from files
# X_test: test data set with all the Samsung variables values
# X_train: training data set with all the Samsung variables values
# y_test_activities: activities being done when the show is taken, test data set
# y_train_activities: activities being done when the show is taken, training data set
# subject_test: list of subjects (people) who are using the phone, test data set
# subject_train: list of subjects (people) who are using the phone, train data set
# activity_labels: id to name activities table
# features: list of variable names taken from the mobile phone

X_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
y_test_activities <- read.table("UCI HAR Dataset/test/y_test.txt", quote="\"")
y_train_activities <- read.table("UCI HAR Dataset/train/y_train.txt", quote="\"")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")
features <- read.table("UCI HAR Dataset/features.txt", quote="\"")

# Convert data frames in table df
x_test_tbl <- tbl_df(X_test)
x_train_tbl <- tbl_df(X_train)

# Transform list of features into human readable variables
v_features <- features$V2
v_features <- gsub("-", ".", v_features)
v_features <- gsub("\\(","", v_features)
v_features <- gsub("\\)","", v_features)

# Associate feature names to test and training table columns
names(x_test_tbl) <- v_features
names(x_train_tbl) <- v_features

# Get list of subjects, test & train
v_subjects_test <- subject_test$V1
v_subjects_train <- subject_train$V1

# Set readable names to columns of activities (test & train) table and type of activities table
names(y_test_activities) <- c("id_activity")
names(y_train_activities) <- c("id_activity")
names(activity_labels) <- c("id_activity", "activity_name")
activity_labels_tbl <- tbl_df(activity_labels)

# Keep only mean and std colums in test data set
# Add activities and subject colum to test data set
x_test_mean_std <- x_test_tbl %>% 
  select(contains("mean"), contains("std")) %>% 
  mutate(id_activity = y_test_activities$id_activity, subject = v_subjects_test)

# Keep only mean and std colums in train data set
# Add activities and subject colum to train data set
x_train_mean_std <- x_train_tbl %>% 
  select(contains("mean"), contains("std")) %>% 
  mutate(id_activity = y_train_activities$id_activity, subject = v_subjects_train)

# Merge test and train dataset
x_comb <- tbl_df(rbind_list(x_test_mean_std, x_train_mean_std))

# Set the activities names making a join with activity labels
# Group by id activity, activity name and subject
# Calculate the mean for all colums of movement
x_fin <- tbl_df(merge(x_comb,activity_labels_tbl)) %>%
  group_by(id_activity,activity_name,subject) %>%
  summarise_each(funs(mean))

# Export result data to a file
write.table(x_fin, file="D:/workspace-R/coursera/data/x_output.txt", sep=",", row.names = FALSE)
