# download zip file, unzip & remove .zip
# first part of our TidyData process : get the RAW data


cat('\nDownloading, unzipping project and data files. Please wait\n\n')


# download data set if not downloaded
if (! file.exists('./data/DataSet.zip')){
    download.file(Url[1,], destfile = 'data/DataSet.zip', quiet = T, method='curl')
}
              
unzip('data/DataSet.zip', exdir = 'data')


if (file.exists('./data/UCI HAR Dataset/')) {
    rm(Url)
    cat("\nDownloading and unzipping has completed succesfuly\n\n")
} else {
    stop("\nDownloading has failed. Stop")
}
    
