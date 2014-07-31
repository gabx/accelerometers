# clean directories
unlink('data/UCI HAR Dataset', recursive = T)
file.remove('doc/codebook.aux', 'doc/codebook.log', 'doc/codebook.out',
            'doc/codebook.tex', 'doc/codebook.toc')

## restore the saved values to the user's workspace
load("cache/init.all.RData", .GlobalEnv)
unlink("cache/all.RData")

# back to initial directory
setwd(cur.dir)


