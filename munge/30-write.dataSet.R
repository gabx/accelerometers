# write tidy data set


cat('\nWriting Tidy Data to .csv file\n\n')

write.csv(my.result1,'data/Mean_Std_per_activity.csv')

write.csv(my.result2,'data/Mean_Std_per_activity_and_subject.csv')

cat('\nPlease find Mean_Std_per_activity.csv & Mean_Std_per_activity.csv
in the Data directory\n
\nWriting mow the codebook pdf\n\n')
        
    
knit2pdf('munge/codebook-knitr.Rnw','doc/codebook.tex', quiet = TRUE)

cat('\nPlease find codebook.pdf in the doc directory.\n\n\')




