#R

#DATA TYPES
R does not require that data types be declared, as they will still be able to create the variables that store the data types of information. They are defaulted to being decimal numerical values, but they can be changed with the as. function. This makes it considered a weakly-typed language. R is also a dynamically typed language. This means that type checks are done when it is run.

Examples of how some of the data types are represented are listed below:

* <b>In R, the default data type are decimal numerical values.</b> Whether a float or an int is assigned as the value for the variable, it is a "numeric" value.

What seems to be an int but is still simply a numeric:
```#int
val1=62
```
What seems to be a floating-point but is still simply a numeric:
```#floating-point
val2=19.95
```
To change the numeric into an integer type, you can use the as.integer function in R.
```
example1=as.integer(20)
```
If you add an int and a float together, it will result in a float. An example is provided below. You do not need to have cat(), as it'll still print out the answer either way.
```
cat(25+99.98)
```
The result is a widening conversion by default:
```
124.98
```
Overall, this is a limitation, because you are not able to strictly identify the variable as a int or float value but rather is it numeric or an integer.

* <b>In R, strings are represented as a character object.</b> To have a string, you must use quotation marks around the string. Furthermore, you can also have numeric values entered as a string.
```
myName="Hilary"
birthMonth=as.character(6)
```
Both are proper ways to instantiate string values.


* <b>Logical Values/Booleans.</b> They compare variables within a condition specified. Similar to other programming languages, &, |, and ! are also used. & means and, | means or, and ! means the negation of. 
```
a=1
b=2
c=a>b
!c
d=TRUE
```
In this example, c will result in TRUE because of the negation of a is greater than b. d is also TRUE.

* <b>Matrices, Vectors, and Lists are similar to arrays. Arrays can be used where a sequnece of data with the same data type needs to be stored.</b> To add values to a vector, you must use c(). To reiterate, they must be of the same basic data type.
```
mat1 <- c(1,2,3,4,5)
mat2 <- c("a","b","c","d","e")
matr <- matrix(cells, nrow=2, ncol=2, byrow=TRUE, dimnames=list(mat1, mat2).
```
In this example, mat1 now is a vector of the values 1,2,3,4,5, while mat2 is now a vector with the characters a through e. They will be put into a matrix that has the dimensions, mat1 by mat2 with 2 rows and 2 columns. A matrix can hold multiple vectors.
A limitation of vectors is that if you do try to put two different data types, it will automatically make all the values Strings, even if one is a numeric value.

Lists can contain a broader range. In R, lists are recursive and can hold values of differing data types. This means it can also hold other lists.
```
list1 <- list(fName="Hilary",age=99,numbers=mat1, matr)
```

* <b>In R, there are no hash maps/dictionary.</b> Instead we use lists and matrices to have a structure similar to hash tables. 
```
hashEx = list(ex1="no", ex2=2)
hashEx[1]
hashEx$ex2
```
The result in this example is:
```
no
2
```
An example I found online that better shows how to do a hashmap with a key is from StackOverFlow. http://stackoverflow.com/questions/7432248/how-to-use-the-value-of-a-variable-as-key-in-an-r-environment


#CHECKING WHAT DATA TYPE
Even though it is not needed in R to specify the data type immediately, there is a built-in function within R to see which data type a variable is. 

One method is to see what class it belows to.
```
number1=12.5
class(number2)
number2=8
class(number2)
```
The output for both variables will indicate that they are both numeric value.

Another method is to use the is function.
```
check=10
is.integer(check)
is.string(check)
```
The output will return in a TRUE or FALSE value depending if the variable is or is not the data type specified.

#RECAP - CONVERTING BETWEEN DATA TYPES
In R, it is also possible to change a variable into a different type with a built-in function. As mentioned aboved, you can simply use the as function. It must be specified what type of data type though. For example, as.integer() will make it an integer value.
```
example2<-4
class(y)
example2<-as.character(4)
class(y)
```
The output for each the respective class(y):
```
"numeric"
"character"
```
The variable y is now of character type.

#ADDITIONAL ARITHMETIC FAQS
If you attempt to add a string to a integer value, there will be an error and you are unable to do so. An example is provided for you:
```
x="5"+6
```
It would result in this error:
```
Error in "5" + 6 : non-numeric argument to binary operator
```
To overcome this challenge, you can do the following:
```
f="5"
f<-as.integer("5")
x=f+6
```
The intended result of 11 would be the output. You could also take away the quotation marks around the 5.
This is considered a limitation of R because of the extra steps that must be taken to ensure that arithmetic operations can be done properly.

#NAMING CONVENTIONS
In R has some naming conventions for variables, objects, and functions, but they are very straightforward and should not cause too many problems. They are as follows:
 1. The name of the variable, function, or object must begin with either a letter character or a period/dot.
 2. If you named it starting with a dot, the second character cannot be a numerical digit.
 3. Only letters, numerical digits, underscores, and dots should be used in the naming. "Although you can force R to accept other characters in names, you shouldn't, because these characters often have a special meaning in R," (Vries & Meys, 2015). 
 4. It is case-sensitive.
 5. Camel-case is commonly used.
 6. However, R doesn't use the period as an operator, which many other languages actually do. Therefore, they can be used when it comes to naming. This is known as the dotting style.
 
However, there are reserved keywords that cannot be used as names for variables, objects, or functions, such as: TRUE/FALSE, break, if, else, for, while, function, NULL/NA/NaN, etc. Other times, it gets confusing because some names of built-in functions can also be used as a name for a variable. R is intuitive enough to determine when you are using the built-in function versus when you are using the variable; however, errors may occur.

These are not enforced by the interpreter <u>(EXCEPT for #2 listed above)</u>, as they are just standards of the community.

#SOURCES
* Andrie de Vries & Joris Meys. <i>R for Dummies (2nd ed.)</i>. John Wiley & Sons, 2015.
* Chi Yau. <i>R Tutorial: An R Introduction to Statistics</i>. http://www.r-tutor.com/r-introduction/basic-data-types/. Accessed on Feb. 8, 2016.
* Joshua F. Wiley & Larry A. Pace. <i>Beginning R: An Introduction to Statistical Programming (2nd ed.)</i>. Apress, 2015.
