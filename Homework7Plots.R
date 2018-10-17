
#Step B: Generate a color coded map

#installing libraries for maps, ggmap and ggplot


library(maps)
library(ggplot2)
library(ggmap)

#3	Create a color coded map, based on the area of the state 

#Easily turn data from the maps package in to a data frame suitable for plotting with ggplot2.
us <- map_data("state")
us 

mapColor <- ggplot(mergeddataframe, aes(map_id = stateName)) 
mapColor <- mapColor + geom_map(map = us, fill="white", color="black")

#expand_limits() function is used to set limits in terms of longitude and latitude
mapColor <- mapColor + expand_limits(x =us$long, y = us$lat)
#coord_map() function keeps the map from being distorted 
mapColor <- mapColor + coord_map() + ggtitle("US Map")
USMap <- mapColor

# Step C: Create a color shaded map of the U.S. based on the Murder rate for each state 

# 4)	Repeat step B, but color code the map based on the murder rate of each state.
mapColor <- ggplot(mergeddataframe, aes(map_id = stateName))  
mapColor <- mapColor + geom_map(map = us, aes(fill=mergeddataframe$Murder))  
mapColor <- mapColor + expand_limits(x =us$long, y = us$lat) 
mapColor <- mapColor + coord_map() + ggtitle("Murder Rate of State")
ColorShaded <- mapColor

#5 Show the population as a circle per state (the larger the population, the larger the circle), using the location defined by the center of each state

#geom_point() function is used to create scatter plot

mapColor <- mapColor+ geom_point(data = mergeddataframe, aes(x=mergeddataframe$x, y= mergeddataframe$y, size = mergeddataframe$population, color=mergeddataframe$UrbanPop))
SP <- mapColor

