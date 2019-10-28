mA <- matrix(1:6,2,3) ## row:2, col:3 Matrix
mB <- matrix(7:12,2,3) ## row:2, col:3 Matrix
mM <- matrix(,nrow(ma)+nrow(mb),ncol(ma)) ## row:2+2, col:3 NULL Matrix
mM[1:nrow(mA),] <- mA ## M <- A Matrix
mM[(nrow(mA)+1):(nrow(mA)+nrow(mB)),] <- mB ## M <- A&B Matrix

samVal <- sample(12,12,replace=TRUE) ## With replace
sort(samVal) ## Increasing SORT <-> sort(samVal,decreasing = TRUE)
sampleDF = as.data.frame(matrix(samVal,4,3)) ## Vector -> 4x3 Matrix -> Data Frame Transform

rank(sampleDF$V1)
order(sampleDF$V1)
sampleDF[order(sampleDF$V1,sampleDF$V2),]
