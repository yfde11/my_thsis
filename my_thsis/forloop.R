n=3 #n means Cn2's n
count = 0
N=0 #new a data frame to store result
dfrm <- data.frame(coli=numeric(N),colj=numeric(N))

#generate Cn2
for (i in 2:n-1){ 
  print(i)
  for (j in i+1:n){
    if(j > n) next
    v <- list(i,j)
    cat("(",i,",",j, ")")
    count = count +1
    newrow <- data.frame(coli = i, colj = j)
    dfrm <- rbind(dfrm, newrow)
  }
}

#shuffle the result and save in df2
df2 <- dfrm[sample(nrow(dfrm)),]
