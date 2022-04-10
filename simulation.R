
p <- c(248, 884, 419, 339, 272, 451, 433, 351, 403)
s <- c(0.5, 0.52, 0.46, 0.56, 0.47, 0.46, 0.54, 0.52, 0.62)


runs <- c()
exp <- c()

exp_runs <- function(a, b) {
  ret <- c()
  for(n in (1:100000)) {
    count <- 1
    player1 <- rbinom(a, 1, b)
    for(i in 1:(length(player1) - 1)) {
      if(player1[i + 1] != player1[i]){
        count <- count + 1
      }
      runs[n] <- count
    }
  }
  ret[1] <- ceiling(mean(runs))
  ret[2] <- round(sd(runs), 2)
  return(ret)
}

for(j in 1:length(p)) {
  print(exp_runs(p[j], s[j]))
}


