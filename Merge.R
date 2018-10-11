
x <- USArrests
x=cbind(rownames(x),x)
colnames(x)=c("stateName")
mergeddataframe=merge(x,newframe,by="stateName")
