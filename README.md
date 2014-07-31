
# Welcome to Accelerometer project!

This project is part of coursera "Getting and Cleaning Data". This is a peer
assignment.

All analyses were performed using:

* R version 3.1.0

* [ProjectTemplate](http://projecttemplate.net) version 0.5-1

Author
Aleksandar Blagotic [ctb],Diego Valle-Jones [ctb],Jeffrey Breen [ctb],Joakim Lund-
borg [ctb],John Myles White [aut, cph],Josh Bode [ctb],Kenton White [ctb],Kirill
Mueller [ctb, cre],Matteo Redaelli [ctb],Noah Lo-
rang [ctb],Patrick Schalk [ctb]

* [Knitr](http://yihui.name/knitr/) version 1.6 

Author
Yihui Xie 

* [Reshape2](http://cran.r-project.org/web/packages/reshape2/index.html) version 1.4 

Author
Hadley Wickham

* [data.table](http://cran.r-project.org/web/packages/data.table/index.html) version 1.9.2

Author
M Dowle, T Short, S Lianoglou, A Srinivasan with contributions from R Saporta, E Antonyan

* [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html) version 1.95-4.1

Author
Duncan Temple Lang

On machine:

* Platform : [Archlinux x86_64](https://www.archlinux.org/)

CPU op-mode(s):        32-bit, 64-bit
Byte Order:            Little Endian
CPU(s):                8
Thread(s) per core:    2
Vendor ID:             GenuineIntel
Model name:            Intel(R) Core(TM) i7-2600K CPU @ 3.40GHz




## HOW-TO

Download to your working directory the `run_analysis.R` script. Then fire **R**
and run the script.
```
R> source(run_analysis.R)
```
Once you have ran this script, you will find:

* one **accelerometers-master** folder. Open it. Everything needed is inside.

Inside the above mentioned directory:

* two tidy data sets as *.csv* files in the **data** directory
* one code book *codeBook.pdf* in the **doc** directory. It describes the variables, 
the data and any work done to perform the data cleaning process. 


## A quick note about ProjectTemplate
[ProjectTemplate](http://projecttemplate.net)
is an R package that helps you organize your statistical
analysis projects. The package will automate parts of your data analysis project:

* Organizing the files in your project.
* Loading all the R packages you’ll use.
* Loading all of your data sets into memory.
* Munging and preprocessing your data into a form that’s suitable for analysis.


### How it works
```
$ mkdir MyProject
$ R
R> library('ProjectTemplate')
R> create.project('MyProject')
R> setwd(path/to/MyProject)
--- write some code --- 
R> load.project()
```
These above commands will create the whole directory structure for your project.

Most important folders:

* ***config*** : the **global.dcf** configuration file inside
* ***munge*** : this directory will contains every processing scripts. All the 
code is stored here. The scripts will be exectuded sequentially when running 
`load.project()`. Best is then to name it with digits first.
* ***src*** : here is stored the final analysis script.






