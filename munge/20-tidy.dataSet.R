# read data file and merge

require('data.table')
require('reshape2')


cat('\nTyding raw data. Please wait\n\n')


setwd('data/UCI HAR Dataset')

#read features & activity
features.dt <- read.table("features.txt", header=F, sep = "", dec = '.')
activity.dt <- read.table("activity_labels.txt", colClasses= 'character',
                          header = F, sep = "", dec = '.',
                          col.names = c('Activity ID','Activity'))

####################################################
# gather all files in one place and do some cleaning
## remove all info files
to.rm <- list.files()[grep('.txt',list.files())]
unlink(to.rm)
rm(to.rm)
## move the needed files
file.rename(from= c('train/subject_train.txt','train/X_train.txt',
                    'train/y_train.txt'),
            to = c('subject_train.txt','X_train.txt','y_train.txt'))

file.rename(from= c('test/subject_test.txt','test/X_test.txt','test/y_test.txt'),
            to = c('subject_test.txt','X_test.txt','y_test.txt'))

## remove directories
to.rm <- basename(list.dirs(recursive = F))
unlink(to.rm, recursive = T)
rm(to.rm)


## list the remaing files
### with .txt as list
my.txt.list <- as.list(list.files())
### with no extension as list
my.list <- strsplit(unlist(my.txt.list),'.txt')
### with df as prefix as list
my.df.list <- as.list(paste(my.list, '.dt',sep = ''))
##################################################################


# load cached data set
if (file.exists("../../cache/all.dataSet.RData")){
    load("../../cache/all.dataSet.RData")
}


# apply read.table on all files not already cached

my.rt <- function(x,...)
{
    # apply read.table to txt files if data table is not already cached
    # x is a character vector
    y <- gsub(".txt", ".dt", x, fixed = T)
    if (y %in% ls() == FALSE){
         rt <- read.table(x, header = F, sep = "", dec = '.') 
    }        
}

my.res <- sapply(my.txt.list,my.rt)
               

# rename elements of my.df
names(my.res) <- my.df.list

# unsplit the list of data frame in global env
list2env(my.res,globalenv())

       
# 1- merge train and test data files
x <- rbind(X_train.dt,X_test.dt)
y <- rbind(y_train.dt,y_test.dt)
subject <- rbind(subject_train.dt,subject_test.dt)




                         
# set column names 
colnames(x) <- features.dt[[2]]

# 2- Extracts only the measurements on the mean and standard deviation 
# for each measurement. 
my.mean <- grep('mean\\(\\)', features.dt[[2]], value=TRUE)
my.std <- grep('std\\(\\)', features.dt[[2]], value=TRUE)

my.select.features <- x[,c(my.mean, my.std)]


# 4-Appropriately labels the data set with descriptive variable names
my.activity <- merge(y,activity.dt)
my.result1 <- cbind(my.activity['Activity'],my.select.features)



# 5-Creates a second, independent tidy data set with the average of each variable
# for each activity and each subject. 

my.data.set <- cbind(subject, my.result1)

# molt our df then cast 
my.df <- melt(my.data.set, id = c('Activity', 'Subject.ID'))
my.result2 <- dcast(my.df, Activity + Subject.ID ~ variable, mean)


cat('\nTidy Data sets are done\n\n')

setwd('../..')
