#############Outlier Data generation#########################

DataOut<-function(Data,rOut,cOut)
{
   OutIndex=sample(1:dim(Data)[1])[1:round(rOut*dim(Data)[1])]
   OutCol=sample(1:dim(Data)[2])[1:round(cOut*dim(Data)[2])]#[1:10]#
   OUT=as.matrix(Data[,OutCol])
    
   for (ii in 1:length(OutIndex)){
   OUTval=round(runif(length(OutIndex),20,50),0)
   RandOutCol<-sample(1:dim(Data)[2])[OutCol]
   OUT[OutIndex[ii],]<-OUTval[ii]*OUT[OutIndex[ii],]
    cat("OUT=",OutIndex,"\n")
    Data[OutIndex[ii],RandOutCol]<-OUT[ii]  
   } 
return(Data)

