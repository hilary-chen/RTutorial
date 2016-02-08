#R
#DATA TYPES
R does not require that data types be declared, as they will still be able to create the variables that store the data types of information. R specifies its data types in groups of scalars, vectors (which emcompass numerical digits, characters, and logic), data sets/frames, lists, and matrices.

Examples of how some are represented are listed below:

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

* <b>In R, strings are represented as a character object.</b> To have a string, you must use quotation marks around the string. Furthermore, you can also have numeric values entered as a string.
```
myName="Hilary"
birthMonth=as.character(6)
```
Both are proper ways to instantiate string values.

* <b>floating-point number</b>
```
```

* <b>Logical Values/Booleans.</b> They compare variables within a condition specified. Similar to other programming languages, &, |, and ! are also used. & means and, | means or, and ! means the negation of. 
```
a=1
b=2
c=a>b
!c
```
Variable c will result in TRUE because of the negation of a is greater than b.

* <b>Vectors are similar to arrays and lists, where a sequnece of data with the same data type are stored.</b> To add values to a vector, you must use c().
```
vec1 <- c(1,2,3,4,5)
vec2 <- c("a","b","c","d","e")
```
In this example, vec1 now is a vector of the values 1,2,3,4,5, while vec2 is now a vector with the characters a through e. 

* <b>hash/dictionary</b>
```
```


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
In R, it is also possible to change a variable into a different type with a built-in function. As mentioned aboved, you can simpl use the as function. It must be specified what type of data type though. For example, as.integer() will make it an integer value.
```
```

#SOME DATA TYPE FAQS
* <b>What happens if you add an int and float together?</b> 
```
```

* <b>Can different data types be put into the same array or list?</b>
```
```


#NAMING CONVENTIONS
In R has some naming conventions for variables, objects, and functions, but they are very straightforward and should not cause too many problems. They are as follows:
1. The name of the variable, function, or object must begin with either a letter character or a period/dot.
2. If you named it starting with a period, the second character cannot be a numerical digit.
3. Only letters, numerical digits, underscores, and dots should be used in the naming. "Although you can force R to accept other characters in names, you shouldn't, because these characters often have a special meaning in R," (Vries & Meys, 2015). 
4. It is case-sensitive.
5. Camel-case is commonly used.
6. However, R doesn't use the period as an operator, which many other languages actually do. Therefore, they can be used when it comes to naming. This is known as the dotting style.
 
However, there are reserved keywords that cannot be used as names for variables, objects, or functions, such as: TRUE/FALSE, break, if, else, for, while, function, NULL/NA/NaN, etc. Other times, it gets confusing because some names of built-in functions can also be used as a name for a variable. R is intuitive enough to determine when you are using the built-in function versus when you are using the variable; however, errors may occur.

#SOURCES
* Andrie de Vries & Joris Meys. <i>R for Dummies (2nd ed.)</i>. John Wiley & Sons, 2015.
* Chi Yau. <i>R Tutorial: An R Introduction to Statistics</i>. http://www.r-tutor.com/r-introduction/basic-data-types/. Accessed on Feb. 8, 2016.
* Joshua F. Wiley & Larry A. Pace. <i>Beginning R: An Introduction to Statistical Programming (2nd ed.)</i>. Apress, 2015.
