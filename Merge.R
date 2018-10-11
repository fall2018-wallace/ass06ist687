
x <- USArrests
#cbind() function takes a sequence of dataframe and combines by rows or columns
x=cbind(rownames(x),x)
#the above function copies the rownames and places it as a column in the existing dataframe 
colnames(x)=c("stateName")#Giving name to the new column
mergeddataframe=merge(x,clean,by="stateName")
colnames(mergeddataframe)=c("stateName","Murder","Assault","UrbanPop","Rape","population","popOver18","percentOver18")
mergeddataframe
