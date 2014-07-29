# stop profiling
Rprof(NULL)

# show results
cat('\nBelow is the profiling table\n\n')

print(summaryRprof("profiling/profile.out", lines = "show"))

# remove profile.out
unlink("profiling/profile.out")
cat('\nAll work done. Bye !')

