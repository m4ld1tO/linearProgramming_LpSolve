##########  LOAD ##########

library(lpSolve)

########### set up ##########
# Set up problem: maximize 
#x1 + 9 x2 + x3 subject to 
#x1 + 2 x2 + 3 x3 <= 9 
# 3 x1 + 2 x2 + 2 x3 <= 15 

f.obj <- c(1, 9, 1)
f.con <- matrix(c(1, 2, 3, 3, 2, 2), nrow = 2, byrow = TRUE)
f.dir <- c("<=", "<=")
f.rhs <- c(9, 15)


# run
lp("max", f.obj, f.con, f.dir, f.rhs)
# reponse 40.5
lp("max", f.obj, f.con, f.dir, f.rhs)$solution
#reponse [1] 0.0 4.5 0.0

# dense constraint
f.con.d <- matrix(c(rep(1:2, each = 3), rep(1:3, 2), t(f.con)), ncol = 3)
#Success: the objective function is 40.5 
#[1] 0.0 4.5 0.0
