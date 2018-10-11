
library(ggplot2)

#8:Generate a bar chart, with the number of murders per state
l <- ggplot(mergeddataframe,aes(x=stateName,y=Murder)) + geom_col()


#9:Generate a bar chart, with the number of murders per state. Rotate text (on the X axis), so we can see x labels, also add a title named “Total Murders”.
m <- ggplot(mergeddataframe,aes(x=stateName,y=Murder)) + geom_col() + theme(axis.text.x=element_text(angle=90,hjust=1)) + ggtitle("Total Murders")
#theme() function allows you to control the appearance of all non-data components
#ggtitle() funtion is used to give title to the ggplot diagram

#10:Generate a new bar chart, the same as in the previous step, but also sort the x-axis by the murder rate

n <- ggplot(mergeddataframe,aes(x=reorder(stateName,Murder),y=Murder)) + geom_col() + theme(axis.text.x=element_text(angle=90,hjust=1)) + ggtitle("Total Murders")
#reorder() function is used to sort the plot in ascending order
