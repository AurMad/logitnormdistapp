## logit function
logit <- function(p){
  
  if(length(p[p < 0]) > 0 | length(p[p > 1]) > 0) stop("p should be between 0 and 1")
  
  log(p / (1 - p))
  
}

## density for logit value
dnorm_logit <- function(x, mean_logit = .5, sd_logit = 1){
  
  z <- dnorm(x = logit(x), mean = mean_logit, sd = sd_logit)
  
  return(z)
  
}

