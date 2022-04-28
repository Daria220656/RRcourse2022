################Exercise 1

for(i in 1:100){
  #if number is divisible by 3
  if(i %% 3 == 0){
   print("Fizz") }
  #if number is divisible by 5
  else if (i %% 5  == 0){
    print("Buzz")}
  #if number is divisible by 5 and 3
  if (i %% 15 == 0 ){
    print("FizzBuzz")
  } 
  else {print(i)}
}


################Exercise 2
#1)
fib <- function(x){
  # check that x is an integer
  if(!is.numeric(x) & !is.double(x)) {
    stop("x must be an integer or double")
  } 
  if(x >= 2) return(fib(x-1) + fib(x-2))
  if(x == 1) return(1)
  if(x == 0) return(0)
  if(x < 0) return(NaN)

  fibSequence <- c(0,1)

  while(fibSequence[length(fibSequence)] <= x){
      fibSequence <- c(fibSequence,fib(length(fibSequence)))
     
  fibSequence <- fibSequence[-length(fibSequence)]
  fibSequence
  }
}

fib(20)

#2)
library(stringi)

# one-line function to reverse the string using stri_reverse() and converting it to numeric 
reverse = function(num) return(as.numeric(stri_reverse(num)))





  
