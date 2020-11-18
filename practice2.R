####data types and data structures practice

a1=12L
class(a1) ##integer
typeof(a1) ##integer

a2=12.0
class(a2) ##numeric
typeof(a2) ##double

a3="c"
class(a3) ##character
typeof(a3) ##character

a4=TRUE
class(a4) ##logical
typeof(a4) ##logical

a6=raw(6) ##length = 6 ##empty variable
class(a6) ##raw
typeof(a6) ##raw
a6 ## 00 00 00 00 00 00

a8=5+6i
typeof(a8)
class(a8)
str(a8)

?character
a7=("text is great") ##empty variable of length 7
?raw
###working with raw data type
as.raw(a)
as.raw(a1)
as.raw(a2)
as.raw(a3)
as.raw(a4)
as.raw(a6)
as.raw(a7)
charToRaw(a7)
charToRaw(a3)
rawShift(charToRaw(a7),-2)
rawToChar(rawShift(charToRaw(a7),-2),multiple = TRUE)

rawToChar(rawShift(rawShift(charToRaw(a7),-2),+0))

y = charToRaw(a7)
is.atomic(y)
is.array(y)
is.vector(y)
is.raw(y)
rawToChar(y)
rawToChar(y, multiple = TRUE)
rawShift(y,1)
rawShift(y,-2)
rawToBits(y)
showBits=function(y) stats::symnum(as.logical(rawToBits(y)))
showBits(y)
z=rawShift(y,-2)
x=rawShift(z,+2)
rawToChar(x)
rawToChar(y)

##coercing data types
w = c(1,2.0,'hello',TRUE)
t = c(1L,2.0)
typeof(w)
?type.convert

View(t)
str(t)
as.character.Date(t)
?date

date()

s=date()
as.character(s)

y[2]
y[c(2,1)]
y[1:4]

first_vec = c(1,2,3,4)
sec_vec = vector("character",4)
sec_vec = c('a','c','f',NA)
third_vec = c(TRUE, TRUE, FALSE)
fourth_vec = c(6+4i,7-1,8+8i)

first_list = list(1,2,3,5)
first_list
sec_list = list(first_vec,sec_vec,third_vec,fourth_vec)
sec_list

sec_list[[1]]
sec_list[2]
sec_list[[2]][2]

third_list = list(first_list,sec_list)
third_list

third_list[[2]][[2]][2]

str(third_list)

str(sec_list)
summary(third_list)
class(third_list[[1]])
class(third_list[[1]][1])
class(third_list[[1]][[1]][1])
class(third_list[[2]][[2]])

str(first_list)
summary(first_list)
class(first_list)
class(first_list[2])


first_matrix = c(1,2,3,4,5,6,7,8)
dim(first_matrix) = c(2,4)
class(first_matrix)
typeof(first_matrix)
str(first_matrix)
summary(first_matrix)

sec_matrix = matrix(c('a','b','c','d','e','f'), ncol = 2, nrow = 3, byrow = TRUE)
str(sec_matrix)
summary(sec_matrix)
dimnames(sec_matrix) = list('first','second')

colnames(sec_matrix) = c('a','b')
str(sec_matrix)

sec_matrix = c(sec_matrix, 'g','h')
dim(sec_matrix) = c(4,2)

attributes(a2) = c("this is the second matrix")

fifth_vec = seq(from = 1, to =10,by = 3)
fifth_vec
is.na(sec_vec)
anyNA(sec_vec)
is.language(sec_vec)
is.data.frame(sec_vec)
is.array(sec_vec)
1/0
0/0

unlist(sec_list)
unname(sec_matrix)
sec_matrix

fourth_list = list(first_matrix,sec_matrix)
fourth_list[[1]]
fourth_list[[1]][1,2]
fourth_list[[1]][,3]
fourth_list[[1]][2,3]

length(fourth_list)
length(sec_matrix)

sec_vec = dim(2,2)

fifth_list = list(list(list(first_vec)))
fifth_list
fifth_list[1]
fifth_list[[1]][[1]][[1]]
fifth_list[[1]][[1]][[1]][3]


##factors

first_factor = factor(c("a","b","c","d","b","c","a","a"))
is.ordered(first_factor)
first_factor =  as.ordered(first_factor)


y <- gl(2, 4, 8,labels = c("low","high"))
y
is.ordered(y)
levels(y) = list(temp = c("low","high"))
levels(y)
labels(y)

y <- gl(2, 4, 8,labels = c("low","high"),ordered = TRUE)
is.ordered(y)

?gl

levels(y) <- c("low", "high")
y
levels(y)
?factor

first_factor = factor(c(factor(first_factor),"e","f"))
first_factor = factor(first_factor,levels = c("e","f"))
first_factor = factor(first_factor, c("e","f"))
first_factor = factor(factor(first_factor), c("e","f"))
first_factor[1]
first_factor[3]
first_factor[5]
first_factor[2] = "k"

sec_vec[2]
sec_vec[2] = "b"

sec_factor = factor(c("x","y","z"))
third_factor = c(factor(first_factor),factor(sec_factor))
third_factor
class(third_factor)
first_factor
length(first_factor)
is.na(first_factor)
table(first_factor)

?levels
levels(first_factor) = c(first_factor, as.factor(c("e","f")))

fourth_factor = gl(3,2,6, labels = c("a","b","c"), ordered = TRUE)
fourth_factor
levels(fourth_factor) = list("first" = c("a","b"), "second" = "c")
class(fourth_factor)
typeof(fourth_factor)
str(fourth_factor)

####arrays

first_arr = array(1:10, c(2,2,2))
first_arr
first_arr[,,2]
first_arr[1,2,2]

sec_arr = array(11:24, c(2,3,2))
sec_arr
class(sec_arr)
typeof(sec_arr)

third_arr = array(c(first_arr,sec_arr),c(2,3,4))
third_arr
third_arr[1,2,2]
third_arr[,,2][1,2]
third_arr[,,2][2,3]

###dataframes

first_df = data.frame(first_vec,sec_vec)
first_df
class(first_df)
typeof(first_df)
typeof(first_df$first_vec)
class(typeof(first_df$sec_vec))
summary(first_df)
str(first_df)

sec_df = data.frame(first_df,random = c("salil", "amit", "sushi", "paheli"), stringsAsFactors = FALSE)
sec_df
class(sec_df)
sec_df$complex = c(1+2i, 0+5i, 8+91, 9-2i)
sec_df
sec_df = data.frame(sec_df,w)
sec_df
sec_df$sec_vec
sec_df$sec_vec[2]
sec_df[2,2]

third_df = data.frame(I=1:4, J = I(list(1:2,1:4,1:3,1:5)))
third_df
third_df = data.frame(sec_df,third_df)
third_df

sec_df
names(sec_df) = NULL

cbind(third_df, logical = c(third_vec,FALSE))
third_df
third_df = cbind(third_df, logical = (third_vec = c(third_vec)))
third_vec = c(FALSE,FALSE,TRUE)
third_df = cbind(third_df, logical = (third_vec = c(third_vec,TRUE)))
third_df
sapply(third_df,class)
?sapply
?vapply

###rbind on matrices
sec_matrix
rbind(sec_matrix, c("a"="i","b"="j"))
sec_matrix = cbind(sec_matrix, "c"=c(1,2,3,4))
class(sec_matrix)
typeof(sec_matrix)

##attributes

attr(a1, "attributes") = "This is A1"
a1
attributes(a1)

attr(third_df, "extra") = "This is third data frame!"
third_df
attributes(third_df)

attributes(a)

#######################
first_arr*first_arr
first_arr
first_df*first_df
first_arr*first_df
first_matrix*first_matrix
first_matrix
first_list*first_list
first_factor*first_factor
head(third_df)
head(third_df,2)
tail(third_df,2)
head(third_df,-2)
tail(third_df,-2)
head.matrix(sec_matrix,2)
head(sec_matrix,2)
table(fifth_list)
table(fourth_list)
fourth_list
########################


###################conditional

if(iris$Sepal.Length[1]>4)
{
  print("The sepal length is greater than 4")
}

if(iris$Sepal.Length[1]<4)
{
  print("The sepal length is greater than 4")
}

if(iris$Sepal.Length[1]<4)
{
  print("Sepal length is less than 4")
}
else
{
  print("Sepal length is greater than 4") 
}

##################################
##########looping

vec1 = 1:9
for (i in vec1) {
  print(i+5)
}

i=1
while (i<9) {
  print(i+5)
  i=i+1
}

vec2 = 1:5
i=1
for (i in vec2) {
    print(i:vec2)##uses only the first element of the vec2, which prints a pattern fro i to 1.
}


for(i in vec2) print(5:i)

for (i in vec2)
  {
    print(5:i,(i:5),print.gap = NULL)
}

{
for (i in vec2) print(5:i)
  j=5
for (j in vec2){
  print(j:5)
  j=j-1}
}


{
  i=1
  while (i<=5) {
    print(5:i)
    i=i+1
  }
  i=4
  while (i<=4&i>0) {
    print(5:i)
    i=i-1
  }
}



?for (variable in vector) {
  
}


#############user-defined functions
expo = function(x){
  print(x^2)
}

expo(4)





mean(mtcars$mpg)


?iris
