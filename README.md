# R-Program-Basics
# all questions are attached here
# question number is marked here based on task 1 and task 2
# sample code and output


Task 1: Introduction to R
 
 
1. Write R program that determine whether the given number by the user is odd or even. 

Code:
#take number from user
num=as.integer(readline(prompt = 'Enter a natural number to check odd or even: '))
#test condition
if((num%%2)==0){
  print('The number is even.')
}else
{
  print("The number is odd.")
}

Output:
> #take number from user
> num=as.integer(readline(prompt = 'Enter a natural number to check odd or even: '))
Enter a natural number to check odd or even: -5
> #test condition
> if((num%%2)==0){
+   print('The number is even.')
+ }else
+ {
+   print("The number is odd.")
+ }
[1] "The number is odd."
>


2. VAT has different rate according to the product purchased. Imagine we have three different kind of products with different VAT applied: 
Categories 	Products 	                       VAT 
A         	Book, magazine, newspaper, etc.. 	8% 
B 	        Vegetable, meat, beverage, etc.. 	10% 
C 	        T-shirt, jean, pant, etc..      	20% 
We can write a chain to apply the correct VAT rate to the product a customer bought.

Code:
#define category
cat=as.character(readline(prompt = 'Enter a category (A=book, magazine, newspaer etc., B=vegetable, meat, beverage etc., C= t-shirt, jean, pant etc.): '))
#take price as input
price=as.numeric(readline(prompt='Enter price of product: '))
#switch condition
total=switch(cat,'A'=price+0.08*price,
             'B'=price+0.1*price,
             'C'=price+0.2*price)
print(paste0('Total price including VAT: ',total))

Output:
> #define category
> cat=as.character(readline(prompt = 'Enter a category (A=book, magazine, newspaer etc., B=vegetable, meat, beverage etc., C= t-shirt, jean, pant etc.): '))
Enter a category (A=book, magazine, newspaer etc., B=vegetable, meat, beverage etc., C= t-shirt, jean, pant etc.): C
> #take price as input
> price=as.numeric(readline(prompt='Enter price of product: '))
Enter price of product: 2580
> #switch condition
> total=switch(cat,'A'=price+0.08*price,
+              'B'=price+0.1*price,
+              'C'=price+0.2*price)
> print(paste0('Total price including VAT: ',total))
[1] "Total price including VAT: 3096"
>

 
3. Write R program that takes your name as an input and output each letter of your name as an output. 

Code:
name=readline("Enter your First Name: ")
#string split
strsplit(name,split='')

Output:
> name=readline("Enter your First Name: ")
Enter your First Name: the joshi
> #string split
> strsplit(name,split='')
[[1]]
[1] "t" "h" "e" " " "j" "o" "s" "h" "i"
>


4. Give one example that uses break statement within while loop. 

Code:
n=1
while(n<10){
  print(n)
  n=n+1
  if(n==5){
    break
  } 
}

Output:
> n=1
> while(n<10){
+   print(n)
+   n=n+1
+   if(n==5){
+     break
+   } 
+ }
[1] 1
[1] 2
[1] 3
[1] 4
>

 
5. Give one example that uses next statement within for loop. 

Code:
l=letters[1:10]
for(i in l){
  if(i=='f'){
    next
  } 
  print(i)  
}

Output:
> l=letters[1:10]
> for(i in l){
+   if(i=='f'){
+     next
+   } 
+   print(i)  
+ }
[1] "a"
[1] "b"
[1] "c"
[1] "d"
[1] "e"
[1] "g"
[1] "h"
[1] "i"
[1] "j"
>





TASK 2

 
1. Create a strings with the name “Welcome to the R programming tutorial” and do the following. 
a) How many characters are there including the space character? 
b) Change the whole strings into uppercase. 
c) Extract the “R programming” from the string and print it. 
d) Convert all letters ‘a’ and ‘i’ in a string into ‘A’ and ‘I’. 
e) How many time the letter m repeated in the string? 

Code:
string='Welcome to the R programming tutorial'
#no of characters
nchar(string)
#uppercase
toupper(string)
#extract parts of string
substring(string,16,28)
ch=strsplit(string,split='')
#conversion specific characters
str1=gsub('a','A',string)
str2=gsub('i','I',str1)
str2
#count m in string
str_count(string,'m')

Output:
> library(stringr)
> string='Welcome to the R programming tutorial'
> #no of characters
> nchar(string)
[1] 37
> #uppercase
> toupper(string)
[1] "WELCOME TO THE R PROGRAMMING TUTORIAL"
> #extract parts of string
> substring(string,16,28)
[1] "R programming"
> ch=strsplit(string,split='')
> #conversion specific characters
> str1=gsub('a','A',string)
> str2=gsub('i','I',str1)
> str2
[1] "Welcome to the R progrAmmIng tutorIAl"
> #count m in string
> str_count(string,'m')
[1] 3
>


2. Create a vector of length 5 that includes the numerical value with NULL and NA value. 
Eg: x <- c(10, NULL, 20, 30, NA) 
And do the following. 
a) Write an R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN. 
b) Sort the vector with descending order. 
c) Extract the value “NULL” and “NA” from the vector. 

Code:
v<-c(10,NULL, 20,30,NA)
length(v)
v
#statistics
sum(v,na.rm=TRUE)
mean(v,na.rm=TRUE)
prod(v,na.rm=TRUE)
#sort by decreasing order
sort(v,decreasing=TRUE)
#extract null and na
va<-c(10,NULL, 20,30,NA)
#null can't be extracted and there is no position of it
va[2]
#the na position is shifted
va[5]
va[4]

Output:
> v<-c(10,NULL, 20,30,NA)
> length(v)
[1] 4
> v
[1] 10 20 30 NA
> #statistics
> sum(v,na.rm=TRUE)
[1] 60
> mean(v,na.rm=TRUE)
[1] 20
> prod(v,na.rm=TRUE)
[1] 6000
> #sort by decreasing order
> sort(v,decreasing=TRUE)
[1] 30 20 10
> #extract null and na
> va<-c(10,NULL, 20,30,NA)
> #null can't be extracted and there is no position of it
> va[2]
[1] 20
> #the na position is shifted
> va[5]
[1] NA
> va[4]
[1] NA
>

 
3. If: 
Age <- c(22, 25, 18, 20) 
Name <- c(“james”, “Mathew”, “Olivia”, “stella”) 
Gender <- c(“M”, “M”, “F”, “F”) 
Then what is the R-code for getting the following output.
Age 	Name 	Gender 
22 	james 	M 
25 	mathew 	M 

Code:
Age=c(22,25,18,20)
Name=c('james','Mathew','Olivia','stella')
Gender=c('M','M','F','F')
df=data.frame(Age, Name, Gender)
#extracting first two rows
df[1:2,]

Output:
> Age=c(22,25,18,20)
> Name=c('james','Mathew','Olivia','stella')
> Gender=c('M','M','F','F')
> df=data.frame(Age, Name, Gender)
> #extracting first two rows
> df[1:2,]
  Age   Name Gender
1  22  james      M
2  25 Mathew   M
>


4. IF 
W <- c(2,7,8) 
V <- c(“A”, “B”, “C”) 
a) Create a list containing W and V and name it as X. 
b) Replace the value “A” in X with “K”. 
Code:
W=c(2,7,8)
V=c("A","B","C")
#list
X=list(W,V)
X
#replacing value
X[[2]][1]="K"
X

Output:
> W=c(2,7,8)
> V=c("A","B","C")
> #list
> X=list(W,V)
> X
[[1]]
[1] 2 7 8

[[2]]
[1] "A" "B" "C"

> #replacing value
> X[[2]][1]="K"
> X
[[1]]
[1] 2 7 8

[[2]]
[1] "K" "B" "C"
>

 
5. If a <- list (5, 10, 15). How can we do to get the sum of all elements in a? 

Code:
a=list(5,10,15)
#unlist
un.a=unlist(a)
sum(un.a)
Output:
> a=list(5,10,15)
> #unlist
> un.a=unlist(a)
> sum(un.a)
[1] 30
> 
6. If Newlist <- list(a=1:10, b="Good morning", c="Hi"), write an R statement that will add 1 to each element of the first vector in Newlist. 

Code:
Newlist=list(a=1:10,b='Good morning',c='Hi')
#additon of 1 to every digits
Newlist[[1]]+c(1)

Output:
> Newlist=list(a=1:10,b='Good morning',c='Hi')
> #additon of 1 to every digits
> Newlist[[1]]+c(1)
 [1]  2  3  4  5  6  7  8  9 10 11
>


7. If x <- list(c(1:10), "Hello", list(“a”, “b”, “c”)). write an R statement that will assign new names "vector", "string" and "list" to the elements of x. and also write a R statement that will give the length of vector of x. 

Code:
x=list(c(1:10),'Hello',list('a','b','c'))
#assign new names
names(x)=c('vector','string','list')
x
#length of vector of x
length(x[[1]])

Output:
> x=list(c(1:10),'Hello',list('a','b','c'))
> #assign new names
> names(x)=c('vector','string','list')
> x
$vector
 [1]  1  2  3  4  5  6  7  8  9 10

$string
[1] "Hello"

$list
$list[[1]]
[1] "a"

$list[[2]]
[1] "b"

$list[[3]]
[1] "c"


> #length of vector of x
> length(x[[1]])
[1] 10
>


8. Create three vectors x,y,z with integers and each vector has 3 elements. Combine the three vectors to become a 3×3 matrix A where each column represents a vector. Change the row names to a,b,c. 

Code:
x=c(1:3)
y=c(4:6)
z=c(12,15,58)
#combining
A=cbind(x,y,z)
A
#assigning rownames
rownames(A)=c('a','b','c')
A

Output:
> x=c(1:3)
> y=c(4:6)
> z=c(12,15,58)
> #combining
> A=cbind(x,y,z)
> A
     x y  z
[1,] 1 4 12
[2,] 2 5 15
[3,] 3 6 58
> #assigning rownames
> rownames(A)=c('a','b','c')
> A
  x y  z
a 1 4 12
b 2 5 15
c 3 6 58
>


9. Create a vector with 12 integers. Convert the vector to a 4*3 matrix B using matrix(). Please change the column names to x, y, z and row names to a, b, c, d. The argument byrow in matrix () is set to be FALSE by default. Please change it to TRUE and print B to see the differences. 
Code:
vec=c(1:12)
vec
#matrix
B=matrix(vec, nrow=4, ncol=3)
B
#defining rownames and colnames
rownames(B)=c('a','b','c','d')
colnames(B)=c('x','y','z')
B
#byrow true to see difference
B=matrix(vec, nrow=4, ncol=3,byrow=TRUE)
B

Output:
> vec=c(1:12)
> vec
 [1]  1  2  3  4  5  6  7  8  9 10 11 12
> #matrix
> B=matrix(vec, nrow=4, ncol=3)
> B
     [,1] [,2] [,3]
[1,]    1    5    9
[2,]    2    6   10
[3,]    3    7   11
[4,]    4    8   12
> #defining rownames and colnames
> rownames(B)=c('a','b','c','d')
> colnames(B)=c('x','y','z')
> B
  x y  z
a 1 5  9
b 2 6 10
c 3 7 11
d 4 8 12
> #byrow true to see difference
> B=matrix(vec, nrow=4, ncol=3,byrow=TRUE)
> B
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
[4,]   10   11   12
>


10. If we convert A to a data.frame type instead of a matrix , can we still compute a conventional matrix multiplication for matrix A multiplies matrix A ? Is there any way we could still perform the matrix multiplication for two data.frame type variables? (Assuming proper dimension) 

Code:
v=c(1:12)
A=matrix(v, nrow=3, ncol=4)
A
A=data.frame(A)
A
A%*%A
A%*%t(A)
#no
#to do we must convert
as.matrix(A) %*% as.matrix(A)
#to carry out matrix multiplication
as.matrix(A)%*%t(as.matrix(A))

Output:
> v=c(1:12)
> A=matrix(v, nrow=3, ncol=4)
> A
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
> A=data.frame(A)
> A
  X1 X2 X3 X4
1  1  4  7 10
2  2  5  8 11
3  3  6  9 12
> A%*%A
Error in A %*% A : requires numeric/complex matrix/vector arguments
> A%*%t(A)
Error in A %*% t(A) : requires numeric/complex matrix/vector arguments
> #no
> #to do we must convert
> as.matrix(A) %*% as.matrix(A)
Error in as.matrix(A) %*% as.matrix(A) : non-conformable arguments
> #to carry out matrix multiplication
> as.matrix(A)%*%t(as.matrix(A))
     [,1] [,2] [,3]
[1,]  166  188  210
[2,]  188  214  240
[3,]  210  240  270
>


11. Create an array (3 dimensional) of 24 elements. Assign some dimnames of your choice to the array. Do the following 
a) Print the matrix of third dimension. 
b) Print all row of second column of second dimension. 
c) Print element of first row, second column and third dimension. 

Code:
vector=c(1:24)
column.names=c("COL1","COL2","COL3","COL4")
row.names=c("ROW1","ROW2","ROW3")
matrix.names=c("Matrix1","Matrix2")
#array of three dimensions
threed=array(vector,dim = c(3,4,2),dimnames = list(row.names,column.names,matrix.names))
threed
#matrix of third dimension
threed[,,1]
threed[,,2]
#all row of second column of second dimension
threed[,2,2]
#first row, second column and third dimension
threed[1,2,]

Output:
> vector=c(1:24)
> column.names=c("COL1","COL2","COL3","COL4")
> row.names=c("ROW1","ROW2","ROW3")
> matrix.names=c("Matrix1","Matrix2")
> #array of three dimensions
> threed=array(vector,dim = c(3,4,2),dimnames = list(row.names,column.names,matrix.names))
> threed
, , Matrix1

     COL1 COL2 COL3 COL4
ROW1    1    4    7   10
ROW2    2    5    8   11
ROW3    3    6    9   12

, , Matrix2

     COL1 COL2 COL3 COL4
ROW1   13   16   19   22
ROW2   14   17   20   23
ROW3   15   18   21   24

> #matrix of third dimension
> threed[,,1]
     COL1 COL2 COL3 COL4
ROW1    1    4    7   10
ROW2    2    5    8   11
ROW3    3    6    9   12
> threed[,,2]
     COL1 COL2 COL3 COL4
ROW1   13   16   19   22
ROW2   14   17   20   23
ROW3   15   18   21   24
> #all row of second column of second dimension
> threed[,2,2]
ROW1 ROW2 ROW3 
  16   17   18 
> #first row, second column and third dimension
> threed[1,2,]
Matrix1 Matrix2 
      4      16 
>


12. Create the following data frame with sex as a factor 
Name 	Age 	Height 	Weight 	Sex 
Alex 	25 	177 	57 	F 
Lilly 	31 	163 	69 	F 
Mark 	23 	190 	83 	M 
Oliver 	52 	179 	75 	M 
Martha 	76 	163 	70 	F 
Lucas 	49 	183 	83 	M 
Caroline 	26 	164 	53 	F 

a) Create this dataframe and make sure that variable Working as character and not factor. 
Name 	Working 
Alex 	Yes 
Lilly 	No 
Mark 	No 
Oliver 	Yes 
Martha 	Yes 
Lucas 	No 
Caroline 	Yes 

Add this data frame column-wise to the previous one. 
i) How many rows and columns does the new data frame have? 
ii) What class of data is in each column? 

b) Add the row with [age = 34, Height = 129, Weight = 89, Sex = F, Working = Yes]. 

Code:
Name=c('Alex','Lilly','Mark','Oliver','Martha','Lucas','Caroline')
Age=c(25,31,23,52,76,49,26)
Height=c(177,163,190,179,163,183,164)
Weight=c(57,69,83,75,70,83,53)
Sex=c('F','F','M','M','F','M','F')
#data frame
df=data.frame(Name,Age,Height,Weight,Sex)
df
#Sex as factor
factor(df$Sex)
Working=c('Yes','No','No','Yes','Yes','No','Yes')
alldf=cbind(df,Working)
#addition of column
cdf=cbind(df['Name'],Working)
cdf
#row and column count
nrow(cdf)
ncol(cdf)
#checking class structure
str(cdf)
newrow=c('NA',34,129,89,'F','Yes')
#addition of row
rbind(alldf,newrow)

Output:
> Name=c('Alex','Lilly','Mark','Oliver','Martha','Lucas','Caroline')
> Age=c(25,31,23,52,76,49,26)
> Height=c(177,163,190,179,163,183,164)
> Weight=c(57,69,83,75,70,83,53)
> Sex=c('F','F','M','M','F','M','F')
> #data frame
> df=data.frame(Name,Age,Height,Weight,Sex)
> df
      Name Age Height Weight Sex
1     Alex  25    177     57   F
2    Lilly  31    163     69   F
3     Mark  23    190     83   M
4   Oliver  52    179     75   M
5   Martha  76    163     70   F
6    Lucas  49    183     83   M
7 Caroline  26    164     53   F
> #Sex as factor
> factor(df$Sex)
[1] F F M M F M F
Levels: F M
> Working=c('Yes','No','No','Yes','Yes','No','Yes')
> alldf=cbind(df,Working)
> #addition of column
> cdf=cbind(df['Name'],Working)
> cdf
      Name Working
1     Alex     Yes
2    Lilly      No
3     Mark      No
4   Oliver     Yes
5   Martha     Yes
6    Lucas      No
7 Caroline     Yes
> #row and column count
> nrow(cdf)
[1] 7
> ncol(cdf)
[1] 2
> #checking class structure
> str(cdf)
'data.frame':	7 obs. of  2 variables:
 $ Name   : chr  "Alex" "Lilly" "Mark" "Oliver" ...
 $ Working: chr  "Yes" "No" "No" "Yes" ...
> newrow=c('NA',34,129,89,'F','Yes')
> #addition of row
> rbind(alldf,newrow)
      Name Age Height Weight Sex Working
1     Alex  25    177     57   F     Yes
2    Lilly  31    163     69   F      No
3     Mark  23    190     83   M      No
4   Oliver  52    179     75   M     Yes
5   Martha  76    163     70   F     Yes
6    Lucas  49    183     83   M      No
7 Caroline  26    164     53   F     Yes
8       NA  34    129     89   F     Yes
>


13. Install any one R- packages in your R environment and load the package to your library. 

Code:
#installation of a package
install.packages('raster')
#load the package
library(raster)

Output:
> #installation of a package
> install.packages('raster')
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/sjoshi/Documents/R/win-library/4.1’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/raster_3.4-13.zip'
Content type 'application/zip' length 3570737 bytes (3.4 MB)
downloaded 3.4 MB

package ‘raster’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\sjoshi\AppData\Local\Temp\RtmpGmQL25\downloaded_packages
> #load the package
> library(raster)
Loading required package: sp
Error: package or namespace load failed for ‘raster’ in .doLoadActions(where, attach):
 error in load action .__A__.1 for package raster: loadModule(module = "spmod", what = TRUE, env = ns, loadNow = TRUE): Unable to load module "spmod": function 'Rcpp_precious_remove' not provided by package 'Rcpp'
>

