# OutMod-RnaSeq
Outlier Modification for RNA-Seq Data

This package perform the outlier detection and modification using median control chart 
for RNA-seq Data.First we transform the read count data using log-transformation and then
we apply medianControl.R function to detect the outliers. Then we modify the outliers by median
using OutModRNAseq.R to obtain the MRS Dataset. After then we go back to the Sequence data by anti-log
transformation for the traditional mehtods.
