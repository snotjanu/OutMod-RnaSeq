####################--Simulated Data Generation#################
library(TCC)
Nrep=15;
DEG.assign <- c(0.5, 0.5)  # (PG1, PG2)
group <- gl(2, Nrep);
design <- model.matrix(~ group);
nG<-1000;
PDEG=0.1

    tcc <- simulateReadCounts(Ngene = nG,PDEG = PDEG, DEG.assign = DEG.assign, 
           DEG.foldchange = c(4, 4), replicates = c(rep(Nrep, 2)))
    trueDEG <- as.numeric(tcc$simulation$trueDEG != 0)
    data <- tcc$count
