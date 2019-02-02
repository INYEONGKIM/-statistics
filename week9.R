Alice <<- vector()
Bob <<- vector()
game <- function() {
  j <- 0
  while(j<10){
    i<-0
    even <- 0
    odd <- 0
    while(i<100){
      num <- sample(1:10,1)
      if(num%%2 == 0){
        even = even+1
      }
      else{
        odd = odd+1
      }
      i = i+1
    }
    Alice <- c(Alice, even)
    Bob <- c(Bob, odd)
    j = j+1
  }
  print("Alice")
  print(Alice)
  print("Bob")
  print(Bob)
  
  return(mean(Alice))
}
avgAlice <- game()
print("Mean of Alice's point")
print(avgAlice)
