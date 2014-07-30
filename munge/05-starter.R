# start profiling
file.create("profiling/profile.out")
Rprof("profiling/profile.out", line.profiling=TRUE, interval = 0.01 )

# store the current working directory
cur.dir <- getwd()

# work in a new and empty environment
save.image('cache/ini.env.RData')
rm(list=ls())

# Test if url exists
url <- read.table('DataSet.url')
Exist.Url <- as.data.table(url[by(url[,], seq_len(nrow(url)), url.exists),])
True.Url <- ((dim(url) == dim(Exist.Url)))
Non.Exist.Url <- url[True.Url,]

if ((True.Url == FALSE){
    cat("\nWrong URL. Please verify\n",
         cat(Non.Exist.Url)) 
        

    