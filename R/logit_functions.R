## logit function
logit <- function(p){

  if(length(p[p < 0]) > 0 | length(p[p > 1]) > 0) stop("p should be between 0 and 1")

  log(p / (1 - p))

}

## density for logit value
dnorm_logit <- function(x, mean_logit, sd_logit){

  z <- 1 / (sd_logit *sqrt(2 * pi)) * 1 / (x * (1 - x)) * exp(-(logit(x) - mean_logit)^2 / (2 * sd_logit^2))

  return(z)

  }
