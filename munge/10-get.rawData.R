# download zip file, unzip & remove .zip
# first part of our TidyData process : get the RAW data


cat('\nDownloading, unzipping project and data.Please wait')

# download project from github
url <-  scan('DataSet.url', what = list(""), skip = 1)
download.file(url, destfile = 'master.zip', quiet = T, method = 'curl')
              
unzip('master.zip')
file.remove('master.zip')

# download data set
url <-  scan('DataSet.url', what = list(""), n = 1)
download.file(url, destfile = './data/DataSet.zip', 
              quiet = T, method='curl')
unzip('./data/DataSet.zip', exdir = './data')

# do some cleaning
file.remove('./data/DataSet.zip')
rm('url')

if (file.exists('./data/UCI HAR Dataset/'))
{cat("Downloading and unzipping has completed succesfuly")}
