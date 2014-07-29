
file.create("profiling/profile.out")
Rprof("profiling/profile.out", line.profiling=TRUE, interval = 0.01 )
