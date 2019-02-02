rate <- c(0.37,0.17,0.34,0.42,0.41,0.31,0.71,0.22,0.33)
names(rate) <- c("A","B","C","D","E","F","G","H","I")

sail <- function(n){
  area <- length(n)
  for(i in 1:area){
    rand <- sample(1:100,1)
    if(rand/100 <= n[i]){
      return(names(n)[i])
    }
  }
  return("servive")
}

simul <- function(n,area){
  v <- c()
  for(i in 1:n){
    s <- sail(rate)
    if(s != "servive"){
      v <- c(v,s)
    }
  }
  return(v)
}

product <- function(){
  error <- 3
  rand <- sample(1:100,1)
  if(rand < error){
    return("F")
  }else{
    return("T")  
  }
}

product_line <- function(){
  fault <- 0
  for(i in 1:100){
    t <- product()
    if(t == "F"){
      fault = fault+1
    }
  }
  return(fault)
}

factory <- function(n){
  tot_fault <- 0
  for(i in 1:n){
    tot_fault = tot_fault + product_line()
  }
  return(tot_fault/n)
}

factory(1000)
res <- simul(1000,rate)
table(res)