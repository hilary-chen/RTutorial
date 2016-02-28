#FLOW OF PROGRAM CONTROL IN R
#FOR FULL EXPERIENCE OF SEEING HOW THIS WORKS, PLEASE UNCOMMENT ALL THE CODE OF EACH CHUNK AS YOU GO THROUGH



#IF/ELSE STATEMENTS WITH ONE CONDITION
#-------------------------------------
#YOU ARE MAKING THE VARIABLE name EQUAL THE VALUE OF "Cindy"
name<-"Cindy"

if(name=="Cindy"){
  cat("Your name is",name)
}else{
  cat("I do not know your name")
}
#IF THE name IS Cindy THEN PRINT 'Your name is [name]' ELSE PRINT 'I do not your name.'

cat("\n-------------------------------------\n")

#YOU CAN ALSO CHANGE TEH VALUE OF name USING AN IF-ELSE
if(name=="Cindy"){
  name<-"Cinderella"
  cat("Your new name is",name)
}else{
  cat("Your name is not Cindy")
}
#IF name IS Cindy THEN CHANGE THE VALUE OF name to Cinderella, THEN PRINT 'Your new name is [name]'
#ELSE PRINT 'Your name is not Cindy'

cat("\n-------------------------------------\n")




#IF/ELSE STATEMENTS WITH MULTIPLE CONDITIONS
#-------------------------------------
#YOU ARE MAKING age EQUAL TO 16
age<-16

#AND LOGICAL OPERATOR WITH & OR && (BOTH WORK) WHERE BOTH CONDITIONS ARE TRUE
if(name=="Cinderella"&age==16){
  cat("You are a Disney Princess!\n-------------------------------------\n")
}else{
  cat("You aren't a Disney Princess.\n-------------------------------------\n")
}
#IF name IS Cinderella AND age IS 16, THEN PRINT THE STATEMENT, ELSE, PRINT THAT STATEMENT.
#IN AN AND CONDITION, BOTH CONDITIONS MUST BE TRUE TO BE OVERALL TRUE

#AND LOGICAL OPERATOR WITH & OR && (BOTH WORK) WHERE ONE CONDITION IS TRUE BUT THE OTHER IS FALSE
if(name=="Cinderella"&age>16){
  cat("You are a Disney Princess!\n-------------------------------------\n")
}else{
  cat("You aren't a Disney Princess.\n-------------------------------------\n")
}
#IF name IS Cinderella AND age IS GREATER THAN 16, THEN PRINT OUT THE STATEMENT, ELSE PRINT THE OTHER STATEMENT.
#IF BOTH WERE FALSE, WOULD STILL PRINT OUT STATEMENT IN ELSE

#OR LOGICAL OPERATOR WITH | OR || (BOTH WORK) WHERE ONE IS TRUE AND THE OTHER IS FALSE
if(name=="Snow White"|name=="Cinderella"){
  cat("You are a Disney Princess!\n-------------------------------------\n")
}else{
  cat("You are not a Disney Princess.\n-------------------------------------\n")
}
#IF name IS Snow White OR name is CINDERELLA, PRINT THE STATEMENT IN IF, ELSE PRINT THE ONE IN ELSE
#ONLY ONE IN AN OR CONDITION NEEDS TO BE TRUE FOR IT TO OVERALL BE TRUE

#OR LOGICAL OPERATOR WITH | OR || (BOTH WORK) WHERE BOTH ARE FALSE
if(name=="Snow White"|name=="Belle"){
  cat("You are a Disney Princess!\n-------------------------------------\n")
}else{
  cat("You are not a Disney Princess.\n-------------------------------------\n")
}
#IF name IS Snow White OR name IS Belle, THEN PRINT THE STATEMENT IN IF, ELSE PRINT THE STATEMENT IN ELSE




#IF/ELSE STATEMENTS WITH ELSE IF
#-------------------------------------
if(age<1){
  cat("You are a baby.\n-------------------------------------\n")
}else if(age>=1&&age<3){
  cat("You are a toddler.\n-------------------------------------\n")
}else if(age>=3&age<13){
  cat("You are a child.\n-------------------------------------\n")
}else if(age>=13&&age<=19){
  cat("You are a teenager.\n-------------------------------------\n")
}else{
  cat("You are an adult.\n-------------------------------------\n")
}
#THIS GIVES YOU MULTIPLE CASES OF WHAT TO DO DEPENDING ON THE CONDITION




#FOR LOOPS
#-------------------------------------
for(i in 1:5){
  age=age+1
}
cat("You will be",age,"years old in 5 years.\n-------------------------------------\n")
#FOR I IN 1 TO 5, WHERE I IS 1, ADD AGE BY 1
  
#NESTED FOR LOOPS
age<-16
for(i in 1:3){
  for(j in 1:3){
    cat("Calculating... ")
  }
  age=age+1
}
cat("You will be ",age, " years old in 3 years.\n-------------------------------------\n")
#FOR I IN 1 TO 5, WHERE I IS 1,
#FOR J IN 1 TO 3, WHERE J IS 1, PRINT Calculating... THEN WHEN THAT IS DONE, 
#CALCULATE THE AGE, ADD AGE BY 1




#WHILE LOOP
#-------------------------------------
age<-16
while(age<20){
  cat("At",age,": You are not an adult yet.\n")
  age=age+1
}
cat("-------------------------------------\n")
#THIS WHILE LOOP WILL CONTINUE TO ITERATE WHILE age IS LESS THAN 20,
#IT'LL PRINT OUT THE STRING, THEN ADD 1 TO age

#NESTED WHILE LOOP
age<-16
adult<-FALSE
while(adult==FALSE){
  while(age<20){
    cat("At",age,": You are not an adult yet.\n")
    age=age+1
  }
  cat("When you are 20, you are an adult.")
  adult<-TRUE
  }
cat("\n-------------------------------------\n")
#THE OUTER WHILE LOOP WILL CONTINUE TO ITERATE WHILE adult IS FALSE. IN THE INNER
#WHILE LOOP WILL CONTINUE TO ITERATE WHILE age IS LESS THAN 20. INSIDE THE INNER LOOP,
#IT WILL PRINT THE STATEMENT AND ADD 1 TO age. AFTER THE INNER WHILE LOOP IS DONE, 
#THE OUTER ONE WILL PRINT THE STATEMENT AND THEN ASSIGN THAT adult IS TRUE. THIS WILL END
#THE ENTIRE LOOP.



#REPEAT LOOPS WITH BREAK
#-------------------------------------
castles<-3
repeat{
  castles=castles+1
  cat("Wow! You have",castles,"castles now.\n")
  if(castles>=10){
    cat(castles,"is plenty!")
    break
    }
}
cat("\n-------------------------------------\n")
#IN THIS REPEAT LOOP, WITHOUT THE IF STATEMENT/CONDITION INSIDE OF IT WITH A BREAK STATEMENT
#YOU WOULD HAVE AN INFINITE LOOP, HOWEVER, SINCE WE ARE REPEATING UNTIL castles
#IS GREATER THAN OR EQUAL TO 10, THEN WE STOP AND EXIT THE REPEAT LOOP.




#SWITCH STATEMENTS
#-------------------------------------
numPets<-2
animalStatus<-switch(numPets,"You do not like animals.\n","You like animals.\n","You love animals.\n","You own a zoo.\n")
cat(animalStatus)
numPets2<-4
animalStatus2<-switch(numPets2,"You do not like animals.\n","You like animals.\n","You love animals.\n","You own a zoo.\n")
cat(animalStatus2)
cat("-------------------------------------\n")
#YOU CAN ALSO USE THIS IN A FUNCTION, BUT FOR SIMPLICITY, I DID NOT DO THAT IN THIS EXAMPLE
#IN BOTH CASES, IN THE SWITCH STATEMENT, WE GAVE IT A STATEMENT THEN ACCORDING TO IT, IT SWITCHED
#THE VALUE OF THE VARIABLE TO ITS CORRESPONDING CASE



#BREAKS AND NEXT STATEMENTS
#-------------------------------------
#I HAVE ALREADY PROVIDED A BREAK EXAMPLE IN THE REPEAT LOOP. IF YOU WOULD LIKE TO SEE IF AGAIN, PLEASE SCROLL UP.
pets<-2
for(i in 1:9){
  if(pets<10){
    pets=pets+1
    next
  }
  cat("You love animals! You have",pets,"of them.\n")
}
cat("-------------------------------------\n")
#FOR i IN THE RANGE OF 1 TO 9, IF pets IS LESS THAN 10 THEN ADD 1 TO PETS, THEN NEXT(GO BACK TO THE BEGINNING OF THE LOOP),
#IF PETS IS NO LONGER LESS THAN 10, THEN PRINT THE STATEMENT


cat("I hope this code helps you out!")