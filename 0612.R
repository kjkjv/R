a<- 10
a
b<- 20
b
c<-a+b
c

add<-function(a,b)
{
  c=a+b
  return(c)
}
d<- add(10,20)
d
e<- add(50,60)
e

for(i in 1:100) {
  result <- add(i,i*10)
  print(result)
}

my_sum <- function(a)
{
  print(a)
  len<- length(a)
  a[1]
  b<-0
  for(i in 1:len) {
    b<-b + a[i]
  }
  return(b)
}
my_sum(c(1,2,3,4,5))
my_sum(c(1:10000))


df_midterm <- data.frame(e=c(90,80,60,70),
                         m=c(50,60,100,20),
                         class=c(1,1,2,2))
df_midterm
mean(df_midterm$e)
sum(df_midterm$m)
min(df_midterm$e)
summary(df_midterm)

df_f <- data.frame(제품=c('사과','딸기','수박'),
                     가격=c(1800,1500,3300),
                     판매량=c(24,38,13))
df_f
mean(df_f$가격)
sum(df_f$판매량)
str(df_f)


install.packages('readxl')
library(readxl)
require(readxl)
df_exam <- read_excel("excel_exam.xlsx")
df_exam
str(df_exam)
View(df_exam)
summary(df_exam)
mean(df_exam$english)
sum(df_exam$math)

data()
AirPassengers
sunspots
volcano
iris3

df_exam <- read_excel("excel_exam_sheet.xlsx",
                      sheet = 3)
df_exam


install.packages('xlsx')
install.packages('rJava')
require(xlsx)
require(rJava)
df_exam <- read_excel("my_excel")
df_exam

write.xlsx(df_exam,'my_excel.xlsx')

install.packages('rJava')
library(rJava)
Sys.setenv(JAVA_HOME="C:/Program Files/Java/jre1.8.0_211")

df_csv_exam <- read.csv("csv_exam.csv",stringsAsFactors = F)
df_csv_exam
str(df_csv_exam) 
View(df_csv_exam)

df_midterm <- data.frame(e=c(90,80,60,70),
                         m=c(50,60,100,20),
                         class=c(1,1,2,2))

write.csv(df_midterm,file = 'df_midterm.csv')


library(readxl)
df_sales <- read_excel("판매량.xlsx")
df_sales
str(df_sales)

summary(df_sales)
sum(df_sales$커피)
mean(df_sales$커피)
max(df_sales$빵)
mean(df_sales$라면)
sd(df_sales$커피)
median(df_sales$커피)
quantile(df_sales$커피)


df_sales <- read.csv("판매량2.csv", stringsAsFactors = F)

str(df_sales)
df_sales
str(df_sales)
write.csv(df_sales,file="df_sales.csv")

mpg


install.packages('dplyr')
library(dplyr)

df_raw <- data.frame(var1 = c(1,2,1),
                     var2 = c(2,3,2))
df_raw

df_new <- df_raw
df_new

df_new <- rename(df_new, fuel=var2)
df_new

rm(list = ls())
df_new

library(ggplot2)
str(mpg)

install.packages("ggplot2")
library("ggplot2")
mpg <- as.data.frame(ggplot2::mpg)
mpg

qplot(mpg$hwy)
hist(mpg$hwy)

df<-data.frame(var1=c(1,2,1),
               var2=c(2,3,2),
               var3=c(5,6,7))
df
df$var1
dfvar_sum <- df$var1 + df$var2 +df$var3
df
df$var_mean <- df$var1 + df$var2 + df$var3/3
df

df$var_sum <- sum(df[1:3,1:3], df$var2)
df
df$var_mean <- (df$var1 + df$var2 + df$var3)/3
df

View(mpg)

mpg
mpg$total <- (mpg$cty + mpg$hwy)/2
mpg$total
head(mpg)
View(mpg)
summary(mpg$total)
mean(mpg$total)
hist(mpg$total)
qplot(mpg$total)

mpg$my <- c(1:234)
mpg$my<-"대한민국"
mpg$my2<-c(1:234)
View(mpg)

mpg$test<-ifelse(mpg$total >= 20, "pass", "fail")
View(mpg)
mpg$test

summary(mpg)

mpg$grade<-ifelse(mpg$total >=30, "A",
                  ifelse(mpg$total >=20, "B","C"))
mpg$grade<-NULL
View(mpg)

qplot(displ, hwy, data = mpg)

library(ggplot2) 
qplot(displ, hwy, data = mpg, color = drv)

library(ggplot2) 
qplot(hwy, data = mpg, fill = drv)

table(mpg$grade)
qplot(mpg$grade)

mpg$grade2<-ifelse(mpg$total >=30, "A",
                  ifelse(mpg$total >=25,"B",
                   ifelse(mpg$total>=20, "C", "D")))
mpg$grade2
View(midwest)
qplot(mpg$grade2)
hist(mpg$grade2)

midwest <- data.frame(midwest)
midwest
dim(midwest)
str(midwest)
head(midwest)
tail(midwest)
summary(midwest)

midwest <- rename(midwest, total=poptotal)
midwest<-rename(midwest, asian=popasian)

midwest$qwer<-midwest$asian/midwest$total*100
midwest$qwer
hist(midwest$qwer)
mean(midwest$qwer)
midwest$asdf<-ifelse(midwest$qwer>0.4872462, "large","small")
midwest$asdf
qplot(midwest$asdf)

midwest<-data.frame(ggplot2::midwest)
midwest
str(midwest)
dim(midwest)
summary(midwest)
head(midwest)
tail(midwest)

midwest<-rename(midwest, total=poptotal, asian=popasian)
View(midwest)

midwest$a<-midwest$asian/midwest$total*100
midwest$a
hist(midwest$a)
mean(midwest$a)
midwest$q<-ifelse(midwest$a>0.4872462, 'large', 'small')
midwest$q

qplot(midwest$q)

