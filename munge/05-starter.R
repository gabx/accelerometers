
require(RCurl)
# check all dir are deployed and create if missing
my.setup <- c( "cache","config","data","DataSet.url","doc","lib","logs",                
               "munge","profiling","src")        
lapply(list.files(), function(x) 
    if(x %in% my.setup == FALSE ) dir.create(x, showWarnings = F))
    

# start profiling
file.create("profiling/profile.out")
Rprof("profiling/profile.out", line.profiling=TRUE, interval = 0.01 )

# store the current working directory & save image
cur.dir <- getwd()

## save all data and clean environment
xx <- pi # to ensure there is some data
save(list = ls(all = TRUE), file= "cache/init.all.RData")
rm(list=ls())

# restore cache data set if any
if (file.exists('cache/all.dataSet.RData')){
    load("cache/init.all.RData", .GlobalEnv)
}

# Test if url exists
Url <- read.table('DataSet.url')
Exist.Url <- as.data.table(Url[by(Url[,], seq_len(nrow(Url)), url.exists),])
True.Url <- ((dim(Url) == dim(Exist.Url)))
Non.Exist.Url <- Url[True.Url,]


if (all(Exist.Url %in% Url) == FALSE)
    stop(paste("\nWrong URL. Please verify\n",cat(Non.Exist.Url)), call. = F)
         
rm(list=c('Non.Exist.Url','True.Url'),Exist.Url)
    
        

    
