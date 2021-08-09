# all questions are attached in the README.md file
# only  question number is marked here based on task 1 and task 2



# task 1
# 1
#take number from user
num=as.integer(readline(prompt = 'Enter a natural number to check odd or even: '))
#test condition
if((num%%2)==0){
  print('The number is even.')
}else
{
  print("The number is odd.")
}



# 2
#define category
cat=as.character(readline(prompt = 'Enter a category (A=book, magazine, newspaer etc., B=vegetable, meat, beverage etc., C= t-shirt, jean, pant etc.): '))
#take price as input
price=as.numeric(readline(prompt='Enter price of product: '))
#switch condition
total=switch(cat,'A'=price+0.08*price,
             'B'=price+0.1*price,
             'C'=price+0.2*price)
print(paste0('Total price including VAT: ',total))



# 3
name=readline("Enter your First Name: ")
#string split
strsplit(name,split='')



# 4
n=1
while(n<10){
  print(n)
  n=n+1
  if(n==5){
    break
  } 
}



# 5
l=letters[1:10]
for(i in l){
  if(i=='f'){
    next
  } 
  print(i)  
}



# task 2
# 1
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



# 2
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



# 3
Age=c(22,25,18,20)
Name=c('james','Mathew','Olivia','stella')
Gender=c('M','M','F','F')
df=data.frame(Age, Name, Gender)
#extracting first two rows
df[1:2,]



# 4
W=c(2,7,8)
V=c("A","B","C")
#list
X=list(W,V)
X
#replacing value
X[[2]][1]="K"
X



# 5
a=list(5,10,15)
#unlist
un.a=unlist(a)
sum(un.a)



# 6
Newlist=list(a=1:10,b='Good morning',c='Hi')
#additon of 1 to every digits
Newlist[[1]]+c(1)



# 7
x=list(c(1:10),'Hello',list('a','b','c'))
#assign new names
names(x)=c('vector','string','list')
x
#length of vector of x
length(x[[1]])



# 8
x=c(1:3)
y=c(4:6)
z=c(12,15,58)
#combining
A=cbind(x,y,z)
A
#assigning rownames
rownames(A)=c('a','b','c')
A



# 9
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



# 10
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



# 11
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



# 12
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



# 13
#installation of a package
install.packages('raster')
#load the package
library(raster)







