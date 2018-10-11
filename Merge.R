
x <- USArrests
#cbind() function takes a sequence of dataframe and combines by rows or columns
x=cbind(rownames(x),x)
colnames(x)=c("stateName")
mergeddataframe=merge(x,clean,by="stateName")
colnames(mergeddataframe)=c("stateName","Murder","Assault","UrbanPop","Rape","population","popOver18","percentOver18")
mergeddataframe
