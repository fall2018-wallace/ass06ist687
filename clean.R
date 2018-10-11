
newframe <- raw_data[ , -1:-4]
newframe <- newframe[-c(1,53),]
colnames(newframe)[colnames(newframe)=="NAME"] <- "stateName" #colnames function is used to change the name of the columns
colnames(newframe)[colnames(newframe)=="POPESTIMATE2017"] <- "population"
colnames(newframe)[colnames(newframe)=="POPEST18PLUS2017"] <- "popOver18"
colnames(newframe)[colnames(newframe)=="PCNT_POPEST18PLUS"] <- "percentOver18"
MyFun <- function()
{
  return(newframe)
}
MyFun()
newframe
