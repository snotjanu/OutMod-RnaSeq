#########Anti-log transformation###########
antilog<-function(lx,base) 
  { 
  lbx<-lx/log(exp(1),base=base) 
  result<-exp(lbx) 
  result 
  }

