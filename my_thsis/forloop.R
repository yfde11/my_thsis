count = 0
N=0
dfrm <- data.frame(coli=numeric(N),colj=numeric(N))

for (i in 1:6){ 
  print(i)
  for (j in i+1:7){
    if(j > 7) next
    v <- list(i,j)
    cat("(",i,",",j, ")")
   # dfrm <- do.call(rbind, v)
    count = count +1
    newrow <- data.frame(coli = i, colj = j)
    dfrm <- rbind(dfrm, newrow)
  }
}

df2 <- dfrm[sample(nrow(dfrm)),] # 把排序弄亂
