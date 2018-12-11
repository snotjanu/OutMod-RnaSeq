####Median Control Chart#######################
Out3sigma<-function(xx){
if (mad(xx)==0){
xx<-rnorm(length(xx),mean(xx),sqrt(var(xx)))
}
cutoff1=median(xx)+3*sqrt(mad(xx))
cutoff2=median(xx)-3*sqrt(mad(xx))
xx3sigma=xx[xx<cutoff1&xx>cutoff2]

if (sum(c((xx>cutoff1),(xx<cutoff2)))>0){
 flag=1
 OutIndex=c(which(xx<cutoff2),which(xx>cutoff1))
 OutRep=rnorm(length(OutIndex),median(xx3sigma),mad(xx3sigma))
 for (jj in 1:length(OutIndex)){
   xx[OutIndex[jj]]<-OutRep[jj]
 }
 }
else{flag=0}
xxx=c(xx,flag)
return(xxx)
}
