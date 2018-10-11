
library(ggplot2)
x <- ggplot(mergeddataframe,aes(x=factor(0),y=population))+geom_boxplot()
y <- ggplot(mergeddataframe,aes(x=factor(0),y=Murder))+geom_boxplot()
