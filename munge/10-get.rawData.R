# download zip file, unzip & remove .zip
# first part of our TidyData process : get the RAW data


cat('\nDownloading, unzipping project and data.Please wait')

# download project from github
download.file('https://codeload.github.com/gabx/accelerometers/zip/master', 
              destfile = 'master.zip', quiet = T, method = 'curl')
unzip('master.zip')
file.remove('master.zip')

# download data set
download.file(readLines('./DataSet.url'), destfile = './data/DataSet.zip', 
              quite = T, method='curl')
unzip('./data/DataSet.zip', exdir = './data')
file.remove('./data/DataSet.zip')


if (file.exists('./data/UCI HAR Dataset/'))
{cat("Downloading and unzipping has completed succesfuly")}
