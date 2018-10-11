
a <- ggplot(mergeddataframe,aes(x=population))+geom_histogram(bins = 50, color = "black", fill = "black")

b <- ggplot(mergeddataframe,aes(x=Murder))+geom_histogram(bins = 50, color = "blue", fill = "blue")

c <- ggplot(mergeddataframe,aes(x=Assault))+geom_histogram(bins = 50, color = "red", fill = "red")

d <- ggplot(mergeddataframe,aes(x=UrbanPop))+geom_histogram(bins = 50, color = "green", fill = "green")

e <- ggplot(mergeddataframe,aes(x=Rape))+geom_histogram(bins = 50, color = "yellow", fill = "yellow")
