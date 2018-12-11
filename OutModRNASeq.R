####Outlier Modification#######################
predifmat<-function(xx,groupid)
{
groups <- unique(groupid)
groups <- groups[groups!=0]
ngroup <- length(groups)
flag_out<-NULL;flag<-matrix(0,dim(xx)[1],1)
  upxx<-NULL;
  for(i in 1:ngroup)
  {
  modx=t(apply(xx[,which(groupid==groups[i])],1,Out3sigma))
  flag1=modx[,dim(modx)[2]]
  upxx<-cbind(upxx,modx[,-dim(modx)[2]])
  flag_out<-cbind(flag_out,flag1)
  }

  uprmat=upxx

flag[c(which(flag_out[,1]==1),which(flag_out[,2]==1))]<-1

#=======================================================
return(list(flag=flag,uprmat=uprmat))
}
