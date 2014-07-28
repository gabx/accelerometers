# download zip file, unzip & remove .zip
# first part of our TidyData process : get the RAW data


cat('\nDownloading, unzipping project and data.Please wait')

# read the url file as a table
url <- read.table('DataSet.url')

# download data set
download.file(url[,1], destfile = 'data/DataSet.zip', quiet = T, method='curl')              
unzip('data/DataSet.zip', exdir = 'data')

# do some cleaning
file.remove('data/DataSet.zip')
file.remove('master.zip')

if (file.exists('data/UCI HAR Dataset/'))
{cat("Downloading and unzipping has completed succesfuly")}
