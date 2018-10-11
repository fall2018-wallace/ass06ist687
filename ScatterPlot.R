
library(ggplot2)
# 12)	 Generate a scatter plot - have population on the X axis, the percent over 18 on the y axis, and the size & color represent the murder rate

ggplot(mergeddataframe,aes(x=population,y=percentOver18)) + geom_point(aes(size=Murder,color=Murder))
#geom_point() function is used to create scatter plots. Scatter plot is most useful for displaying relationship between two continuous variables.
