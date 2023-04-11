my_prior <- # assumes library(brms) has already been called
  prior(normal(0, 0.50), class = "Intercept", dpar = "muD66") +
  prior(normal(0, 0.50), class = "Intercept", dpar = "muPvdA") +
  prior(normal(0, 0.50), class = "Intercept", dpar = "muVVD") +
  prior(normal(0, 0.25), class = "b", dpar = "muD66") +
  prior(normal(0, 0.25), class = "b", dpar = "muPvdA") +
  prior(normal(0, 0.25), class = "b", dpar = "muVVD") +
  prior(normal(-1, 0.5), class = "b", coef = "distD66",  dpar = "muD66") +
  prior(normal(-1, 0.5), class = "b", coef = "distPvdA", dpar = "muPvdA") +
  prior(normal(-1, 0.5), class = "b", coef = "distVVD",  dpar = "muVVD") +
  exclusions # assumes source("exclusions.R") has already been called
