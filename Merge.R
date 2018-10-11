
x <- USArrests
x=cbind(rownames(x),x)
colnames(x)=c("stateName")
mergeddataframe=merge(x,clean,by="stateName")
colnames(mergeddataframe)=c("stateName","Murder","Assault","UrbanPop","Rape","population","popOver18","percentOver18")
mergeddataframe
