library (lpSolve)
#numeric example type1 full info
f.obj <- c (0,0,0,0, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001,0.001, 0.001)

f.con <- matrix ( c ( 
  1,1,1,1, 0,0,0, 0,0, 0, 0,0,  #row xi
  
  1,-1,0,0, 1,0,0,0, -1,0,0,0,   #row1
  0,1,-1,0, 0,1,0,0, 0,-1,0,0,   #row2
  0,0,1,-1, 0,0,1,0, 0,0,-1,0,   #row3
  -1,0,0,1, 0,0,0,1, 0,0,0,-1    #row4
), nrow = 5, byrow = TRUE )

f.dir <- c ("=" , "=" , "=" , "=" , "=" )
f.rhs <- c (1 ,0,0,0, 0)
lp.result <- lp ( "min" , f.obj, f.con, f.dir, f.rhs) 
