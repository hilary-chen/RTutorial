#R
The most current version of R is 3.2.3. 

#INSTALLATION
R is available for Windows, Mac, and Linux; however, tnstallation of R may differ depending on the Operating System of the computer you are using. On the [CRAN website](https://cran.r-project.org/), you are able to download the binary files needed, depending on the Operating System. More detailed instructions are included on the website provided.

**To Check If It's Already Installed**

* Windows - Go to the 'Start' Menu and click on 'All Programs' or 'All Apps' (depending on which version of Windows you are using.) While scrolling through the list, if you can see 'R,' it is already installed onto your Windows machine/

* Linux - Open the terminal of your machine and type $ R--version.

* Mac - I am having trouble finding how to check if it is already installed; however, since this is a working document, it will be updated when more research has been done.

**Front-End**

RStudio is also a good front-end enviornment to use to program with R. You can download RStudio for free from their [website](https://www.rstudio.com/products/rstudio/). It is also user-friendly. If you would like additional features added on, that will be an additional price; however, for the purpose of this project, the default features are adequate. 

#PROGRAMMING WITH R

**Creating and Running a R File**

After installing RStudio, we are able to program R in a user-friendly enviornment. R is typed into the *Source Code* section of the interface. There are two ways to run the R file, with the extension .R:

1. Press the 'Run' or 'Source' button in the *Source Code* section. The 'Run' will simply run it. The 'Source' button will run it and also output the source location of the file.

2. In the *Console* Window, you can type:
```R  
source("helloWorld.R")
```

You can also write scripts in text editors that can be later used in RStudio. 

**Writing in R**

In R, there is no a boiler-plate code needed to write a program. You can simply start writing.

**Hello World Program**

To output "Hello, World" in R is very straight-forward.
```R
cat("Hello, World!")
```
**Insert Comments**

To write comments in R, a number sign (#) is used in front of the line.
```R
 # This is how to comment in R.
 ```
 
#RESOURCES

* Andrie de Vries & Joris Meys. R for Dummies (2nd ed.). John Wiley & Sons, 2015.

* Biomedical Statistics 0.2. http://a-little-book-of-r-for-biomedical-statistics.readthedocs.org/en/latest/src/installr.html. Accessed Jan. 31, 2016.

* R Examples. http://www.rexamples.com/8/How%20to%20run%20the%20code. Accessed Jan. 31, 2016.

* RStudio. https://www.rstudio.com/products/rstudio/. Accessed Jan. 31, 2016.

* The R Project for Statistical Computing. https://www.r-project.org/. Accessed Jan. 31, 2016.
