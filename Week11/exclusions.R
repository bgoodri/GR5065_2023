exclusions <- # assumes library(brms) has already been called
  prior(constant(0), class = "b", coef = "distCDA",  dpar = "muD66") +
  prior(constant(0), class = "b", coef = "distPvdA", dpar = "muD66") +
  prior(constant(0), class = "b", coef = "distVVD",  dpar = "muD66") +
  prior(constant(0), class = "b", coef = "distCDA",  dpar = "muPvdA") +
  prior(constant(0), class = "b", coef = "distD66",  dpar = "muPvdA") +
  prior(constant(0), class = "b", coef = "distVVD",  dpar = "muPvdA") +
  prior(constant(0), class = "b", coef = "distCDA",  dpar = "muVVD") +
  prior(constant(0), class = "b", coef = "distD66",  dpar = "muVVD") +
  prior(constant(0), class = "b", coef = "distPvdA", dpar = "muVVD")
