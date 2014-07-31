#helper.function <- function()
#{
#  return(1)
#}

my.rt <- function(x,...)
{
    # apply read.table to txt files if data table is not already cached
    # x is a character vector
    y <- gsub(".txt", ".dt", x, fixed = T)
    if (y %in% ls() == FALSE){
        rt <- read.table(x, header = F, sep = "", dec = '.') 
    }        
}
