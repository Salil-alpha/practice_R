

###activating the packages on computer for the usage of commands/functions

library(readr)


###working directory
setwd("Downloads")

setwd("C:/Users/s98tr/Downloads/")

getwd()

###import .Txt with space separated values
document = read.table("New_Text_Document.txt", header=TRUE)
class(document)

###see data
View(document)

head(document,3)
tail(document,3)

####overviews
str(document)

as.factor(document$Designation)

document$Designation = as.factor(document$Designation)

document

str(document)

summary(document)

document$Designation = as.character(document$Designation)


####import .txt files with comma separated
comma_file = read.table("New_Text_Document2.txt", header = TRUE, sep=",")

class()
summary(comma_file)

comma_file$Empid = as.factor(comma_file$Empid)


####import a csv file
library(readr)
csv_file = read.csv("combined.csv")

summary(csv_file)

csv_file$month = as.factor(csv_file$month)

csv_file2 <- read.csv("combined.csv")

####installing packages

install.packages("readxl")
library(readxl)

###setting the working directory and retrieving it
setwd("C:/Users/s98tr/Downloads/")
getwd()


#####import excel document
excel_file = read_excel("combined.csv")

random = readClipboard(raw=TRUE)
random


sample_file = read_excel("sample.xlsx")
str(sample_file)
summary(sample_file)

View(sample_file)
sample_file$Roll = as.numeric(sample_file$Roll)
sample_file$Sex = as.factor(sample_file$Sex)

colnames(sample_file)

colnames(sample_file) = make.names(colnames(sample_file))


?colnames
?make.names

sample_file$Name.2017 = as.factor(sample_file$Name.2017)
sample_file$Sex.2017 = as.factor(sample_file$Sex.2017)

?factor

sample_file.byorder

order(sample_file)

head(sample_file)

tail(sample_file)

?tail()
?head()


###FILTERING AND SUBSETTING

###focussing on the first 5 rows
First.Sample_file.Pop = head(sample_file$Age.2017,5)

First.Sample_file.Pop

###creating logical vectors

logicalvector.samplefile = First.Sample_file.Pop>=13 ##condition: if more than or equal to 13
logicalvector.samplefile

##using logical statements to filter the data set and create a subset

sample_file[sample_file$Sex.2017=='F',]

sample_file$Sex.2017=='F'

first_subset = sample_file[sample_file$Sex.2017=='F',]
first_subset

##using logical conditions
##AND
second.subset = sample_file[sample_file$Sex.2017=='M'& sample_file$Roll.2017>25 & sample_file$Age.2017>15,]
second.subset

third.subset = sample_file[sample_file$Age.2017>14 & sample_file$Age.2017<17,]
third.subset

##OR

fourth.subset = sample_file[sample_file$Class.2017==7 | sample_file$Class.2017==8,]
fourth.subset ##having a subset with either class=7 or 8, but no classes apart from that

###BINDING

#binding rows
fourth.subset2 = rbind(second.subset,third.subset)
fourth.subset2
second.subset
third.subset

fourth.subset2 = rbind(second.subset,third.subset,duplicated(value=FALSE))
duplicated(fourth.subset2,value=FALSE)

#binding columns

fourth.subset3 = cbind(fourth.subset2,duplicated(fourth.subset2,value=FALSE))
fourth.subset3

summary(fourth.subset3)

##adding a new column to the sample_file
sample_file$age_in_months = sample_file$Age.2017*12
sample_file$age_in_days = sample_file$Age.2017*365

##logarithm
sample_file$age_in_logarithm = log(sample_file$Age.2017)
head(sample_file$age_in_logarithm)

##revert the logarithm value by exponent
sample_file$age_from_log_to_exponent = exp(sample_file$age_in_logarithm)
head(sample_file$age_from_log_to_exponent)

###SORTING
#name in ascending order
sample_file = sample_file[order(sample_file$Name.2017),]

#arranging the dataset by age_in_months in descending order
sample_file = sample_file[order(-sample_file$age_in_days),]
sample_file2 = sample_file
View(sample_file2)
sample_file2 = sample_file2[order(sample_file2$Name.2017,decreasing = TRUE),]
sample_file2 = sample_file2[order(sample_file2$Name.2017,decreasing = FALSE),]
sample_file2 = sample_file2[order(sample_file2$age_in_days,decreasing = TRUE),]

##trying to add new column with new data
sample_file$caste.2017 = c("General", "ST", "ST", "SC", "General", "SC", "ST", "ST")
str(sample_file)

##changing caste.2017 to factor
sample_file$caste.2017 = as.factor(sample_file$caste.2017)


##trying to rearrange the columns
sample_file = sample_file[order(head(sample_file))]##will not work

head.matrix(sample_file)
colnames(sample_file)

sample_file = sample_file[order(colnames(sample_file))] ##will work, rearrange all the column names alphabetically

sample_file = sample_file[-order(colnames(sample_file))] ##does not works for descending order
sample_file = sample_file[order(colnames(sample_file),decreasing = TRUE)]


plot.histogram(sample_file$age_in_months)
barplot(sample_file$Age.2017)

matrix?
  ?matrix
?matrix
?data.frame

####importing new excel and manipulating data
sample_second = read_xlsx("sample2.xlsx")
colnames(sample_second) = make.names(colnames(sample_second))
sample_second = sample_second[order(colnames(sample_second))]
sample_second = sample_second[order(sample_second$Countries.Now),]
sample_second = sample_second[order(sample_second$Year.Now),]##not working
sample_second = sample_second[order(sample_second$Year.Now, decreasing = TRUE),]##this is working
sample_second$new_log_column = log(sample_second$Global.Rating)


?order
?sort.list
sort.list(-sample_second$Global.Rating)##also sorts in descending order
sort.list(sample_second$Global.Rating)##also sorts in ascending order

str(sample_second)
summary(sample_second)


########SPSS data read
read.sav
?.sav
??.sav
library(foreign)
sample_sav = read.spss("SPSS Study One Apology Lab FINAL Dataonline.sav")
library(haven)
###########end of SPSS

??ggplot2
help(package = "readr")

library(devtools)

install.packages("ggplot2")
browseVignettes("ggplot2")

install.packages("devtools")
browseVignettes("devtools")

vignette(package = "devtools", all = FALSE)
help(package = "devtools")

browseVignettes("devtools")

?vignettes

install.packages("KernSmooth")

help(package = "KernSmooth")
library(KernSmooth)
