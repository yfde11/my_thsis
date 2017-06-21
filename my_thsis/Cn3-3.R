# Min
# objective function: Z(xi, ei+, ei-, fi+,fi-)=sum(ei+,ei-,fi+,fi-) for all i=1..3
#constraints: 
# xi + fi+ - fi-  + ei+ - ei- = 1/3
# sum(xi)=1, for all i=1..3
# xi, ei+,ei-, fi+, fi- >=0, for all i=1..3
# begin:
library (lpSolve)
# 
f.obj <- c (0,0,0, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001,   1, 1)

f.con <- matrix ( c ( 
  1,1,1, 0,0,0, 0,0, 0, 0,0,  #row xi
  
  1,-1,0, 1,0,0, -1,0,0, 0,0,  #row1
  0,1,-1, 0,1,0, 0,-1,0, 0,0,  #row2
  -1,0,1, 0,0,1, 0,0,-1, 0,0  #row3
  
  # x1,2,3, f1,2,3 1,2,3  e1 1
), nrow = 4, byrow = TRUE )

f.dir <- c ("=" , "=" , "=" , "=")
f.rhs <- c (1 ,0,0,0)
lp.result <- lp ( "min" , f.obj, f.con, f.dir, f.rhs) 
