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
Best practice is to just declare the functions before the code that calls it. It does not matter if it is in the very beginning of the R script, just as long as it is declared before it is called. After the function has been called, it is stored within its global enviornment. An example is provided for you:

```R
x<-2

add5<-function(a){
  a=a+5
  return(a)
}

add5(x)
```

#PASSING IN PARAMETERS
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

However, it is very important to know that you cannot have more than one function with a specific name. Therefore, we cannot have another function called <i>createDescription</i> even if it takes a different amount of parameters. This is because it will overwrite the original function's place in the global enviornment. Therefore, in this following example, there would be an error, because one of the variables being passed in is not being used by the <i>createDescription</i> function that is now in the global enviornment, even though it would have worked in the one before it:
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

Furthermore, it is also important to know that in R, the functions cannot return multiple values at the same--which is a disadvatange. For example, if we changed the code slightly for <i>createDescription</i> to include return statements:
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

#SOURCES
* Andrie de Vries & Joris Meys. *R for Dummies (2nd ed.)*. John Wiley & Sons, 2015. 

* Joshua F. Wiley & Larry A. Pace. *Beginning R: An Introduction to Statistical Programming (2nd ed.)*. Apress, 2015.

* Kelly Black. [*15. Introduction to Programming — R Tutorial.*] (http://www.cyclismo.org/tutorial/R/scripting.html#break-and-next-statements) Creative Commons Attribution-NonCommercial 4.0 International License, n.d. Web. 26 Feb. 2016. 

* The R Project for Statistical Computing. https://www.r-project.org/. Accessed Jan. 2
