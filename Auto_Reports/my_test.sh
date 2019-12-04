#!/usr/bin/env Rscript


# Set working directory
#setwd("C:/Documents and Settings/name")

# Load packages
require(knitr)
require(markdown)

# Create .md, .html, and .pdf files
 
L1=list.files("TEMP")
for (j in 1:length(L1))
{
	df=read.csv(paste0("TEMP/",L1[j]))
	write.csv(df,"Market_Temp.csv",row.names=FALSE)

	knit("my_test.Rmd")

	nms=strsplit(L1[j],".csv")[[1]]
	nms2=paste0(nms,".html")
	markdownToHTML('my_test.md', nms2, options=c("use_xhml"))

	system("./converts.sh")

}




