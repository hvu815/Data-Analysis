library(reshape2)
library(ggplot2)
data = read.csv("~/Desktop/Titanic/dataset_diabetes/diabetic_data.csv", stringsAsFactors = F)
data.na = sapply(data, FUN = function(x){ifelse(x == "?", NA, x)})
na = is.na(data.na)
na.h = melt(na)
ggplot(na.h, aes(x = Var1, y = Var2, fill = value)) + geom_raster()

