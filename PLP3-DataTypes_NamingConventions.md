#R
#DATA TYPES
R does not require that data types are declare, as they will still be able to create the variables that store the follow data types of information. Examples of how some are represented are listed below:

* <b>int</b>
```
```


* <b>string</b>
```
```

* <b>floating-point number</b>
```
```

* <b>boolean</b>
```
```

* <b>array/list</b>
```
```

* <b>hash/dictionary</b>
```
```

Even though it is not needed in R to specify the data type immediately, there is a built-in function within R to see which data type a variable is.
```
```

#CONVERTING BETWEEN DATA TYPES
In R, it is also possible to change a variable into a different type with a built-in function.
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
5. R doesn't use the period as an operator, which many other languages actually do. Therefore, they can be used when it comes to naming. This is known as the dotting style.
 
However, there are reserved keywords that cannot be used as names for variables, objects, or functions, such as: TRUE/FALSE, break, if, else, for, while, function, NULL/NA/NaN, etc. Other times, it gets confusing because some names of built-in functions can also be used as a name for a variable. R is intuitive enough to determine when you are using the built-in function versus when you are using the variable; however, errors may occur.

#SOURCES
* Andrie de Vries & Joris Meys. R for Dummies (2nd ed.). John Wiley & Sons, 2015.
* 
