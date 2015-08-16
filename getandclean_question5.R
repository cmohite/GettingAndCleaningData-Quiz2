fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
download.file(fileUrl, destfile="./Fwksst8110.for")
data <- read.fwf(file="./Fwksst8110.for", widths=c(-1,9,-5,4,4,-5,4,4,-5,4,4,-5,4,4), 
                 skip=4)
sum(data[,4])
