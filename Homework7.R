
#installing libraries and packages for maps and ggplot

library(maps)
library(ggplot2)
library(ggmap)

#Add the area of each state, and the center of each state, to the merged dataframe, using the ‘state.center’, ‘state.area’ and ‘state.name’ vectors

stateArea <- state.area
centerOfState <- state.center
stateName <- state.name

#data.frame() function creates a dataframe by coupling the variables
df <- data.frame(stateName,stateArea,centerOfState)
df
#merging the new created dataframe with the previous step mergeddataframe by variable "stateName"
mergeddataframe <- merge(mergedataframe,df, by="stateName")
mergeddataframe
#tolower() function converts the characters in character variable to lower case
#we are using tolower() function because ggplot wants all the stateNames to be in lower case
mergeddataframe$stateName <- tolower(mergeddataframe$stateName)mergeddataframe)
