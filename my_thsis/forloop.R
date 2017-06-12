count = 0

for (i in 1:6){ 
  for (j in i+1:7){
    if(j > 7) next
    cat("(",i,",",j, ")")
    count = count + 1
    
    CSTDF <- data.frame(id = count, coli = i, colj = j)
  }
  print(i)
}

CSTDF