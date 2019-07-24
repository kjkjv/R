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

df_f <- data.frame(??????=c('??????','??????','??????'),
                   ??????=c(1800,1500,3300),
                   ?????????=c(24,38,13))
df_f
mean(df_f$??????)
sum(df_f$?????????)
str(df_f)





