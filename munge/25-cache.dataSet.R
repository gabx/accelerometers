# cache results

cat('\nCaching data sets\n\n')

# caching results
lapply(my.df.list,cache)

# save all data
save(list = ls(all = TRUE), file= "cache/all.dataSet.RData")

cat('\nAll data sets are cached in cache/all.dataSet.RData\n\n')
