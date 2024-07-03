#Law of Large Numbers

N <- 1000
counter <- 0
i <- 0

while(i < N){
  x <- rnorm(1)
  if(x>=-1 & x<=1){
    counter <- counter + 1
  }
  i <- i + 1
}
percentage <- (counter/N) * 100

cat("Actual Distribution for rnorm() between -1 and 1:", percentage, "%")
