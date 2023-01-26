# probability of knocking down x out of n pins
Pr <- function(x, n = 10) {
  stopifnot(length(x) == 1 || length(n) == 1, x >= 0)
  ifelse(x > n, 0, log(1 + 1 / (n + 1 - x), base = n + 2))
}

Omega <- 0:10 # 0, 1, ..., 10
names(Omega) <- as.character(Omega)
