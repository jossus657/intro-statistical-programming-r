## Susanto, Joshua
## 405568250

set.seed(405568250) # change it to your student id number
input2 <- trunc(rnorm(10)*1000)

minimum <- function(vectorIN) {
  if(is.vector(vectorIN) == FALSE){
    stop("The input must be a numeric vector")
  }
  if(is.numeric(vectorIN)  == FALSE){
    if(is.integer(vectorIN) == FALSE){
      stop("The input must be a numeric vector")
    }
  }
  my_min <- vectorIN[1]
  for(i in 1:(length(vectorIN)-1)){
    if(vectorIN[which(vectorIN == my_min)[1]] >= vectorIN[i+1]){
      my_min <- vectorIN[i +1]
    }
  }
  return(my_min)
}

minimum(input2)
minimum(iris$Sepal.Length)
