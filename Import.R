setwd("/Users/jayp6/Downloads")
data <- read.table("Assignment.txt", header = TRUE, sep = ",")
data

install.packages("plyr")
library(plyr)
new_average <- ddply(data,"Sex",transform, Grade.Average=mean(Grade))
new_average

write.table(new_average,"final_average")

write.table(new_average,"final_average",sep=",")

newdata <- subset(data,grepl("[iI]",data$Name))
newdata

write.table(newdata,"New_data_subset",sep=",")
