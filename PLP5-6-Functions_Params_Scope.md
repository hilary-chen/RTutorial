#R

The use of functions will improve the functionality of R programs immensely, but it is also important to understand the concepts of scope and paramters within R when creating these functions.

#SYNTAX
The syntax for declaring functions in R is very similar to other popular programming languages. The syntax in R requires that a function be named, then is followed by <i><-</i>, the keyword <i>function</i>, a set of parathenses (), a starting curly brace {, the statements/actions that you want the function to do, then an ending curly brace }. If parameters are to be passed into the function, they are put inside the parantheses (NOTE: it does not need to include the data type it is). An example of a simple function declaration is provided:
```R
add5<-function(a){
  a=a+5
  return(a)
}
```
In this example, a function <i>add5</i> is created. It is passed in a variable as a parameter <i>a</i>. The function will take the variable and add 5 to it, then store the new value to the parameter. Lastly, it will return the new value.  

#PLACEMENT OF FUNCTIONS
Best practice is to just declare the functions before the code that calls it. It does not matter if it is in the very beginning of the R script, just as long as it is declared before it is called. After the function has been called, it is stored within its global environment. An example is provided for you:

```R
x<-2

add5<-function(a){
  a=a+5
  return(a)
}

add5(x)
```

#PASSING IN PARAMETERS AND RETURNING
The functions in R can accept multiple parameters. In the previous example, function <i>add5</i> only takes in one parameter. However, here is an example that will take multiple paramters, some of different types:
```R
createDescription<-function(name,year,school){
  age=2016-year
  ageIn5=age+5
  cat(name," is a very good student and attends ",school,". ",name," was also born in ",year," and will be ",age," this year. In 5 years, she will be ",ageIn5," years old.",sep="") #sep="" will remove the extra spaces in between the entities seperated by commas
}

createDescription("Buffy",1981,"U.C. Sunnydale")
```
The output will be:
```R
Buffy is a very good student and attends U.C. Sunnydale. Buffy was also born in 1981 and will be 35 this year. In 5 years, she will be 40 years old.
```
As you can see, the <i>createDescription</i> function takes in three parameters--two of which are factors/Strings and one that is an integer. 

However, it is very important to know that you cannot have more than one function with a specific name. Therefore, we cannot have another function called <i>createDescription</i> even if it takes a different amount of parameters. This is because it will overwrite the original function's place in the global environment. Therefore, in this following example, there would be an error, because one of the variables being passed in is not being used by the <i>createDescription</i> function that is now in the global environment, even though it would have worked in the one before it:
```R
createDescription<-function(name,year,school){
  age=2016-year
  ageIn5=age+5
  cat(name," is a very good student and attends ",school,". ",name," was also born in ",year," and will be ",age," this year. In 5 years, she will be ",ageIn5," years old.",sep="") #sep="" will remove the extra spaces in between the entities seperated by commas
}

createDescription<-function(name,year){
  cat(name," was born in ",year,".",sep="") #sep="" will remove the extra spaces in between the entities seperated by commas
}

createDescription("Buffy",1981,"U.C. Sunnydale")
```
The error would be:
```R
Error in createDescription("Buffy", 1981, "U.C. Sunnydale") : 
  unused argument (U.C. Sunnydale")
```

Furthermore, it is also important to know that in R, the functions cannot return multiple values at the same time--which is a disadvatange. For example, if we changed the code slightly for <i>createDescription</i> to include return statements:
```R
createDescription<-function(name,year,school){
  age=2016-year
  ageIn5=age+5
  return(name)
  return(age)
  return(year)
}

createDescription("Buffy",1981,"U.C. Sunnydale")
```
In this code, it is saying that it wants to return <i>name</i>, return <i>age</i>, </i>and return <i>year</i>. However, the output will not do so. Instead, it will only do the first return statement:
```R
[1] "Buffy"
```
Even if you try putting all three of the variables within the same return statement, it will not work. There will be an error, because multi-argument return startments are not permitted within R.
```R
createDescription<-function(name,year,school){
  age=2016-year
  ageIn5=age+5
  cat(name," is a very good student and attends ",school,". ",name," was also born in ",year," and will be ",age," this year. In 5 years, she will be ",ageIn5," years old.",sep="") #sep="" will remove the extra spaces in between the entities seperated by commas

  return(name,age,year)
}

createDescription("Buffy",1981,"U.C. Sunnydale")
```
The error would look like:
```R
Error in return(name, age, year) : 
  multi-argument returns are not permitted
```

#RECURSIVE FUNCTIONS
In R, it is possible to write recursive functions (functions that call themselves). An example of a function that is recursive is provided for you:
```R
calcFactorial<-function(a){
  if(a==0|a==1){
    return(1)
  }
  else{
    return(a*calcFactorial(a-1))
  }
}

cat("The factorial of 6 is ",calcFactorial(6),".",sep="") 
```
The output is:
```R
The factorial of 6 is 720.
```
Although R has a built-in factorial function, I have provided the code for it for you to see how it is done recursively. Within the <i>calcFactorial</i> function, it takes in a parameter. If the value passed in is either 0 or 1, then it will return 1. Otherwise, it will call the function again with the parameter of value of a minus 1 then times it by the value of a. It will continue this until the value a is 1. 

#GLOBAL ENVIRONMENT AND VARIABLES
As mentioned earlier in this, functions can be written over within the global environment. The same can be done to the variables, because everything is globally accessible. For example, if we were to declare a variable in the main body of the program, then if we declared a variable with the same name inside of a loop, there will be a conflict as the old variable will be overwritten with the new variable! There wouldn't be two variables with the same name. 
```R
x=6

for(i in 1:5){
  x=x+1
}

x
```
The output is:
```R
11
```
This shows that the value of x is getting updated from the loop.

This is the same in functions. In this example, I will create a function that will also take in the value of x as a parameter. However, I will not return x. Instead, I will print x within the main body and see what the resulting value of x is.
```R
x<-6

squareNum<-function(x){
  x<-x*x
}

x<-squareNum(x)

x
```
The output is:
```R
36
```
The value of x is still the same! How about if we did have a return statement in the function?
```R
x<-6

squareNum<-function(x){
  x<-x*x
  return(x)
}

x<-squareNum(x)

x
```
The output is also 36.

Therefore, essentially, every variable is globally accessible. Whenever one is declared, it is accessible to any of the functions, loops, etc. within the program. Depending on the programmer, they may or may not like this about R.

#PASS BY VALUE OR PASS BY REFERENCE?
R employs both of passing by value or passing by references in different parts of R. According to <i>Notes on References, External Objects, or Mutable State for R</i> by Luke Tierney (link is provided below in the Sources), "In principle R uses pass-by-value semantics in its function calls. If two different variable names x and y start out with equal values, there is (almost) no way for R-level operations on the value of x to change the value of y.[..]It eliminates the possibility of side effects on values and thus eliminates a whole class of often very difficult to track bugs." If we continue from our example above, with the <i>squareNum</i> function, this can be more clearly explained.
```R
x<-6
y<-x

cat("x (before) is",x)
cat("y (before) is",y)

squareNum<-function(x){
  x<-x*x
}

x<-squareNum(x)

cat("x (after) is",x)
cat("x (after) is ",y)
```
The output is:
```R
x (before) is 6
y (before) is 6
x (after) is 36
y (after) is  6
```
As you can see, even though we made y equal x, after the function changes the value of x, y does not change as a result.

R is not in its entirety passed by value. The parts of R that are actually passed by reference are R Environments, symbols, specials, and built-ins. The reason why these are considered passed by reference are because they contain attributes that can be modified. Since we are only in the beginning steps of learning R, we do not have to worry about this yet. 

#LAST EXAMPLE
Here is one last example similar to previous one, but this one will use arrays. After doing further research, you can make arrays with array(), but you will need to know the dimensions. For this example, I will just be using <-c().
```R
a<-c("c","a","t")
b<-c("d","o","g")
a=b
b[2]="u"  #in R, it does not start at 0, it starts at 1
cat(a)
cat(b)
```
The output is:
```R
d o g
d u g
```
After declaring a and b, a is then set to equal b. The value at index 2 (or the 2nd char) in b is changed to "u." When a and b are printed, you can see that even though b has changed, a did not change with it. Again, similar to the previous example, this reiterates that R is pass by value, because the reference to memory did not change for b, because if it did, a would also result in <i>d u g</i>.

#SOURCES
* Andrie de Vries & Joris Meys. *R for Dummies (2nd ed.)*. John Wiley & Sons, 2015. 

* Joshua F. Wiley & Larry A. Pace. *Beginning R: An Introduction to Statistical Programming (2nd ed.)*. Apress, 2015.

* Kelly Black. [*15. Introduction to Programming — R Tutorial.*] (http://www.cyclismo.org/tutorial/R/scripting.html#break-and-next-statements) Creative Commons Attribution-NonCommercial 4.0 International License, n.d. Web. 26 Feb. 2016. 

* Luke Tierney. [*Notes on References, External Objects, or Mutable State for R*.](Notes on References, External Objects, or Mutable State for R)  School of Statistics, University of Minnesota, n.d. Web. 20 March 2016.

* The R Project for Statistical Computing. https://www.r-project.org/. Accessed Jan. 2
