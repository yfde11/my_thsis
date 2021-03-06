#cp = 0
library (lpSolve)

f.obj <- c (0,0,0,0,
            0.001, 0.001, 0.001, 0.001,
            1,1,1, 1,1,1,
            1,1,1, 1,
            1,1,1,1,1, 1,1,1,
            1,1,1, 1,1,1
)

f.con <- matrix ( c ( 
  1,1,1,1, 0,0,0,0,   0,0,0,0,0,0,  0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0,     #row xi
  
  #T1  
  1,-1,0,0, 1,0,0,0, 0,0,0,0,0,0,  0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0,     #row1
  0,1,-1,0, 0,1,0,0, 0,0,0,0,0,0,  0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0,     #row4
  0,0,1,-1, 0,0,1,0, 0,0,0,0,0,0,  0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0,     #row6
  -1,0,0,1, 0,0,0,1, 0,0,0,0,0,0,  0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0,     #row6
  #T2
  1,-1,0,0, 0,0,0,0, 1,0,0,0,0,0,  0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0,     #row1
  0,0,1,-1, 0,0,0,0, 0,0,0,0,0,1,  0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0     #row6

), nrow = 7 , byrow = TRUE )

f.dir <- c ("=" ,">=", ">=",">=",">=",">=",">=")
f.rhs <- c (1 ,0,0,0, 0, 0.1,0.1)
lp.result <- lp ( "min" , f.obj, f.con, f.dir, f.rhs) 