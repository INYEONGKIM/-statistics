dice <- function(){
  rand <- sample(1:6,1)
  if(rand >= 5){
    return("W")
  }else{
    return("L")  
  }
}
game <- function(n){
  winAlice<-0
    for(i in 1:n){
      if(i%%5 == 0){
        profit <- 300
      }else{
        profit <- 100
      }
      
      Alice<-6000
      Bob<-4000
      while(Alice>0 && Bob>0){
        t <- dice()
        if(t == "W"){
          Alice = Alice + profit
          Bob = Bob - profit
        }else{
          Alice = Alice - profit
          Bob = Bob + profit
        }
      }
      #print(Alice)
      if(Alice>=10000){
        winAlice = winAlice+1
      }
    }
  return(winAlice/n)
}
res <-game(5000)
res