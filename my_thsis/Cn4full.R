library (lpSolve)
# 
f.obj <- c (0,0,0,0, 0.001, 0.001, 0.001, 0.001,  0.001, 0.001, 0.001, 0.001,   1, 1, 1, 1, 1, 1)

f.con <- matrix ( c ( 
  1,1,1,1, 0,0,0,0,  0,0,0,0, 0,0,0,0,0,0,  #row xi
  
  1,-1,0, 1,0,0, -1,0,0, 0,0,  #row1
  0,1,-1, 0,1,0, 0,-1,0, 0,0,  #row2
  -1,0,1, 0,0,1, 0,0,-1, 0,0,  #row3
  
  0,1,-1, 0,0,0, 0,0, 0, 1,-1,  #row new1
  1,-1,0, 0,0,0, 0,0, 0, 1,-1,  #row new2
  1,0,-1, 0,0,0, 0,0, 0, 1,-1  #row new3
  
  # x1,2,3, f1,2,3 1,2,3  e1 1
), nrow = 7, byrow = TRUE )

f.dir <- c ("=" , "=" , "=" , "=" , ">", ">", ">")
f.rhs <- c (1 ,0,0,0, 0,0,0)
lp.result <- lp ( "min" , f.obj, f.con, f.dir, f.rhs) 

