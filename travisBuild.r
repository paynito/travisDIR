                                        #set working dir
require(knitr)
require(markdown)
require(dplyr)
require(tidyr)
#create .md .html .pdf
knit("travisCI.Rmd")
markdownToHTML('travisCI.md',
               'travisCI.html',
               options=c("use_xhml"))
system("pandoc -s travisCI.html -o travisCI.pdf")
