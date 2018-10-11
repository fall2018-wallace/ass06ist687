
ggplot(mergeddataframe,aes(x=population))+geom_histogram(bins = 50, color = "black", fill = "black")

ggplot(mergeddataframe,aes(x=Murder))+geom_histogram(bins = 50, color = "blue", fill = "blue")

ggplot(mergeddataframe,aes(x=Assault))+geom_histogram(bins = 50, color = "red", fill = "red")

ggplot(mergeddataframe,aes(x=UrbanPop))+geom_histogram(bins = 50, color = "green", fill = "green")

ggplot(mergeddataframe,aes(x=Rape))+geom_histogram(bins = 50, color = "yellow", fill = "yellow")
