library (lpSolve)
#numeric example type5 minus 1 info
f.obj <- c (0,0,0, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001,   1,1)

f.con <- matrix ( c ( 
  1,1,1, 0,0,0, 0,0, 0, 0,0,  #row xi
  
  1,-1,0, 1,0,0, -1,0,0, 0,0,  #row1
  0,1,-1, 0,1,0, 0,-1,0, 0,0,  #row2
  -1,0,1, 0,0,1, 0,0,-1, 0,0,  #row3
  
  1,-2,0, 0,0,0, 0,0,0,  1,0,  #row new1
  1,0,-6, 0,0,0, 0,0,0,  0,1  #row new2
  # 0,1,-3, 0,0,0, 0,0,0,  0,0,1   #row new3
  # x1,2,3, f+1,2,3 f-1,2,3(pair)  type5,e(v)1,2,3(non-pair)
), nrow = 6, byrow = TRUE )

f.dir <- c ("=" , "=" , "=" , "=" , ">=", ">=")
f.rhs <- c (1 ,0,0,0, 0, 0)
lp.result <- lp ( "min" , f.obj, f.con, f.dir, f.rhs) 

# lp.result$solution [1] 0.6 0.3 0.1 0.0 0.0 0.5 0.3 0.2 0.0 0.0 0.0