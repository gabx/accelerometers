# script to clean directories


unlink('data/UCI HAR Dataset', recursive = T)
file.remove('doc/codebook.aux', 'doc/codebook.log', 'doc/codebook.out',
            'doc/codebook.tex', 'doc/codebook.toc')
