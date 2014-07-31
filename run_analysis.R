# This is the master script file for the Accelerometer project
# download it and run in R


# first clone the reposirory, unzip and cd to it
download.file('https://codeload.github.com/gabx/accelerometers/zip/master',
              destfile = 'master.zip', quiet = T, method = 'curl')
unzip('master.zip')
file.remove('master.zip')
setwd('accelerometers-master')

# start deploy the project using DataTemplate package
library('ProjectTemplate')
suppressMessages(load.project())

