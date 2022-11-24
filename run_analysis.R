# load necessary packages
library(dplyr)
library(tidyr)

# read test data and test labels, merge both data frames
test_data <- read.table("test/x_test.txt",header = FALSE, sep = "")
test_labels <- read.table("test/y_test.txt",header = FALSE, sep = "")
test_subject <- read.table("test/subject_test.txt", header = FALSE, sep = "")
test_df <- cbind(test_subject, test_labels, test_data)

# read the names of the variables, extract the names as a vector, 
# add the name for future variable "activity" to the vector, 
# make the names of the variables unique  
features_df <- read.table("features.txt",header = FALSE, sep = "")
features_v <- features_df[,2]
features_vec <- gsub("\\-|[()]","", features_v)
features <- c("subject", "activity", features_vec)
features_val <- make.names(features, unique=TRUE)

# use the vector with names of the variables as column names for the test data
colnames(test_df) <- c(features_val)

# convert the test data frame to tibble
test <- tbl_df(test_df)

# read test data and test labels, merge both data frames, label the variables 
# using previously created vector with variable names, convert to tibble 
train_data <- read.table("train/x_train.txt",header = FALSE, sep = "")
train_labels <- read.table("train/y_train.txt",header = FALSE, sep = "")
train_subject <- read.table("train/subject_train.txt", header = FALSE, sep = "")
train_df <- cbind(train_subject, train_labels, train_data)
colnames(train_df) <- c(features_val)
train <- tbl_df(train_df)

# merge test and train tibbles
whole_dataset <- bind_rows(train = train, test = test, .id = "dataset") 

# read the activity labels, extract the columns with symbols (names)
# and keywords (labels) as vectors
activity <- read.table("activity_labels.txt",header = FALSE, sep = "")
activity_labels <- activity[,2]
activity_numbers <- activity[,1]

# rename the numbers from the activity column with the activity labels 
whole_dataset$activity <- factor(whole_dataset$activity,
                    levels = activity_numbers,
                    labels = activity_labels)

# extract the variables with the mean and standard deviation
dataset_select <- whole_dataset %>% select(dataset,subject, activity | contains("mean") | contains("std"))

# export a tidy dataset to a .txt file
write.table(dataset_select, "dataset_select.txt", row.name=FALSE)

# create a new dataset which has average values of each variable for each activity and each subject 
dataset_summary <- dataset_select %>% 
        group_by(dataset, subject, activity) %>%
        summarize_all(mean)