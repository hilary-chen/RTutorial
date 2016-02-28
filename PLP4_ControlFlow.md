#R

R does support the user of if/else statements, certain kinds of loops (for, while, repeat), switch-case statements, as well as break and continue statements. For more information, they are listed below. Also, a seperate download R file is available to download to see it run. The link is provided here:

#IF/ELSE STATEMENTS - ONE CONDITION
In R, if/else statements are available for use. If there is only one condition, it is very simple. 

There are two ways to code it:<br>
(1) In the if clause, the test condition must be within parentheses. Then curly brackets must follow and the action to take if the condition is true.

This is a simple if statement:
```R
x<-2
#x is now equal to 2

if(x<=3){
  cat("x is less than or equal to 3.")
  #you can use 'cat' or 'print' to print out a string
}
```
Because x is less than or equal to 3 (it is 2), the output will be:
```R
x is less than or equal to 3.
```

Adding an else is very straight-forward as well and is similar to Java. I will change the condition in the if to better display this:
```R
x<-2

if(x>=3){
  cat("x is greater than or equal to 3.")
} else{
  cat("x is not greater than or equal to 3.")
}
```

Because x is not greater than or equal to 3, it will not print the statement in the if; instead, if will print the statement in the else:
```R
x is not greater than or equal to 3.
```

Here is a good note from <i>R For Dummies</i>, in regards to the else statement: 
>"Putting the else statement at the end of a line and not the beginning of the next one is a good idea. In general, R reads multiple lines as a single line as long as it's absolutely clear that the command isn't finished yet. If you put else at the beginning of the second line, R considers the first line finished and complains. You can put else at the beginning of a next line only if you do so within a function and you source the complete file at once to R."

This can be used to explain how R deals with the dangling else problem. If you put the else statement at the end of a line }, then R will read it as part of the if before it or else an error will be thrown.

(2) The other way to code it is to put it all within one line. I have taken the earlier blocks of code and changed it to this method.

Just an if statement:
```R
x<-2
if(x<=3) cat("x is less than or equal to 3.")
```

An if/else statement:
```R
x<-2
if(x>=3) cat("x is greater than or equal to 3.") else cat("x is not greater than or equal to 3.")
```

I believe that method (1) is the better way to code an if-else statement in R, as it is easier to see what actions below to the if and which ones below to the else with the use of the curly brackets. However, either ways are fine.

Also, you don't have to just do print statements in if-else statements. You can also change the value of variables too. 
```R
y<-20
if(y < 100) {
  z<-21*2
}else{
  z<-0
}
```

#IF/ELSE STATEMENTS - MULTIPLE CONDITIONS
In R, it is also possible to have multiple conditions in the if/else statements. An example of one using an AND (& or && logical operator) is provided below:
```R
age1<-14
age2<-25
if(age1>13 & age2>13){
  cat("Both Person 1 and Person 2 are not children.")
}else{
  cat("Either one of the people or both are children.")
}
```
The output is:
```R
Both Person 1 and Person 2 are not children.
```
Since both of the conditions are true, it will print it out. If one of them was not, then it would print the else statement. When using the AND (& or &&) operator, both conditions have to be true.

R uses short circuit logic, so if the example was changed slightly to:
```R
age1<-14
age2<-25
if(age1<1 & age2>13){
  cat("Person 1 is less than 1, and Person 2 is older than 13.")
}else{
  cat("The ages are incorrect.")
}
```

The output would be:
```R
The ages are incorrect.
```
This is because, R can tell that the first condition in the & is false. It will not bother to check the second one even if it is true, since the entire condition cannot be true anymore, and it will print out the statement within the else.

Here is an example using the OR (| or ||) logical operator:
```R
age1<-8
age2<-25
if(age1<13 || age2<13){
  cat("At least one person from your pairing is a child.")
}else{
  cat("Both people are not children.")
}
```
The output will be:
```R
At least one person from your pairing is a child.
```
This is because when using an OR (|) logical operator, only one of the conditions must be true. age1 is less than 13; therefore, the output is within the if statement. It follows a short-circuit logic, where since there is an |, as long as the first one is true, then it will print out the statement within the if as the whole condition is true. Otherwise if both their ages were above 13, it would have printed out the statement within the else. 

#IF/ELSE/ELSEIF STATEMENTS
You can also nest if/else statements, but for more efficiency, R also allows the use of else if. To demonstrate this, here is an example similar to the previous ones expanded with the use of else if:
```R
age<-88
if(age<13&&age>3){
  cat("You are a child.")
} else if(age>=13&&age<20){
  cat("You are a teenager.")
}else{
  cat("You are an adult.")
}
```
The output would be:
```R
You are an adult.
```
With the use of the else if's, you are able to list other specific conditions and the statements or actions that must be taken or followed after if the condition is true.

#OTHER USE OF IF/ELSE STATEMENTS
An interesting thing I found out about R is that you can use if/else statements directly in assigning a value to a variable. For example:
```R
abc<-100
def<-if(abc>200) 101 else 99
def
```
The output will be:
```R
99
```
This means the value based on the if/else statement for def is 99 because abc is not greater than 200. 

#LOOPS - for
A for loop would be used when you know the number of times you would like it to loop around. The loop will execute whatever action is listed within the loop as long as it fits within the count. An example is provided below:
```R
for(i in 1:5){    #for i in 1 through 5 -> it will loop 5 times
  cat(i)
}
```
The output would be:
```R
12345
```
i is printed out 5 times because in the for condition, i was in 1 through 5. i will automatically start at the first number stated in the range. Syntax and format-wise, there actually does not need to be curly brackets if it is only going to do one action, but for legibility and if you wanted the loop to do more, it is better practice and required to use them.

For loops can also be nested within one another.
```R
for(i in 1:5){    #for i in 1 through 5 -> it will loop 5 times
  for(j in 1:3){  #for j in 1 through 3 -> it will loop 3 times
    cat(" . ")
  }
  cat(i)
}
```
The output would be:
```R
 .  .  . 1 .  .  . 2 .  .  . 3 .  .  . 4 .  .  . 5
```
The outer for loop will loop 5 times. Within the outer for loop, nested inside of it is another for loop where j will loop around 3 times. For every time the inner loop goes around, it will print " . " (without the quotation marks). After that finishes looping through 3 times, then the outer loop will print out the value of i. It continues to loop around again until i is 5.

#LOOPS - while

#LOOPS - repeat


#SWITCH-CASE STATEMENTS

#BREAK AND CONTINUE STATEMENTS

<b>In the seperate downloadable R file I have provided, you can run each of these program control codes and see it work in that manner.</b>

#SOURCES
* R Programming if...else statement. http://www.programiz.com/r-programming/if-else-statement. Accessed Feb. 23, 2016.

* Andrie de Vries & Joris Meys. *R for Dummies (2nd ed.)*. John Wiley & Sons, 2015. 

* Joshua F. Wiley & Larry A. Pace. *Beginning R: An Introduction to Statistical Programming (2nd ed.)*. Apress, 2015.

* Ihaka, Ross. [*The R Project: A Brief History and Thoughts About the Future.*](https://www.stat.auckland.ac.nz/~ihaka/downloads/Massey.pdf) PDF. The University of Auckland. Accessed Jan. 22, 2016.

* The R Project for Statistical Computing. https://www.r-project.org/. Accessed Jan. 2
* Fanara, Carlo. A Tutorial on Loops in R - Usage and Alternatives. July 23, 2015.  https://www.datacamp.com/community/tutorials/tutorial-on-loops-in-r. Accessed Feb. 23
