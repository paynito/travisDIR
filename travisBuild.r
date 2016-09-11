                                        #set working dir
setwd("/Users/AbuDavid/personal/travisDIR/")
#setwd("/Users/AbuDavid/school/proposalR/travisDIR")             #Load packages
require(knitr)
require(markdown)

#create .md .html .pdf
knit("travisCI.Rmd")
markdownToHTML('travisCI.md',
               'travisCI.html',
               options=c("use_xhml"))
system("pandoc -s travisCI.html -o travisCI.pdf")
