
#8:Generate a bar chart, with the number of murders per state
ggplot(mergeddataframe,aes(x=stateName,y=Murder)) + geom_col()

ggplot(mergeddataframe,aes(x=stateName,y=Murder)) + geom_col() + theme(axis.text.x=element_text(angle=90,hjust=1)) + ggtitle("Total Murders")
#theme() function allows you to control the appearance of all non-data components
#ggtitle() funtion is used to give title to the ggplot diagram
