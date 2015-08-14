# install sqldf package using below command
# install.packages("sqldf")

# Load sqldf package
library(sqldf)

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileurl, destfile="./US_community_survey_data.csv")
acs <- read.csv("./US_community_survey_data1.csv", header=TRUE)

sqldf("select pwgtp1 from acs where AGEP < 50")

sqldf("select unique AGEP from acs")

