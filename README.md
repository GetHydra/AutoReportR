# AutoReportR
Auto Generate PDF Reports With R, Markdown, and Bash  
  
## Required Libraries  
You will need the `knitr` and `markdown` libraries installed in R  
You will need the `wkhtmltopdf` package for Ubuntu
  
## Process  
First you will need to build out your markdown document  
The markdown document allows you to combine both formatted text along with executable R code  
For this example have the markdown document `my_test.Rmd` which will read one of the csv files in the *TEMP* directory and use the data to build charts and tables  
The *knitr* library then allows us to convert that markdown document into a `.md` document, and then the *markdown* library is used to convert the `.md` file into a `.html` file.  
Once the `.html` file is created it can be converted into a `.pdf` file by calling the *wkhtmltopdf* via Bash  

## Running The Full Example  
1) Make sure you are in the `Auto_Reports` directory  
2) Run the `my_test.sh` script from the command line, which will also call the `converts.sh`  
3) The completed reports will populate the *REPORTS* folder

## Running A Manual Example  
1) In R convert your `.Rmd` file into a `.md` file: `knit("test.Rmd")`  
2) While still in R convert the `.md` file to a `.html` file: `markdownToHTML("test.md", "test.html", options=c("use_xhml"))`  
3) Leave R and enter your Ubuntu terminal making sure to navigate to the `Auto_Reports` directory  
4) Run `./my_test.sh` from the command line  
5) The completed reports will populate the *REPORTS* folder
