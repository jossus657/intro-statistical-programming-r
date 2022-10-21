## Susanto, Joshua
## 405568250

set.seed(405568250) # change it to your student id number
input1 <- trunc(rnorm(10)*1000)

sorter <- function(vectorIN,output = "x") {
  as.character(output)
  if(is.vector(vectorIN) == FALSE){
    stop("The input must be a numeric vector")
  }
  if(is.numeric(vectorIN)  == FALSE){
    if(is.integer(vectorIN) == FALSE){
    stop("The input must be a numeric vector")
    }
  }
  for(i in 1:length(vectorIN)){
  for(i in 1:(length(vectorIN)-1)){
    if(vectorIN[i] <= vectorIN[i+1]){
      a <- vectorIN[i]
      b <- vectorIN[i + 1]
      vectorIN[i] <- b
      vectorIN[i + 1] <- a
    }
  }
  }

  g <- head(vectorIN)
  h <- tail(vectorIN)
  names(g) <- output
  names(h) <- output
  print(g)
  print(h)
}
sorter(input1, "meow")
sorter(iris$Sepal.Length)
