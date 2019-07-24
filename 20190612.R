b <- matrix(1:12,ncol=4)
b

# 질문부분
b <- array(1:12, dim=c(2,2,3))
b

#b[1,1,1]

x<-list(name='kim',height=180,weight=70,score=c(10,20,30))
x

x$height

x[4]

cond<-FALSE
if(cond) {
  print('TRUE')
  print('you win')
} else {
  print('FALSE')
  print('you lost!')
}

for(i in 1:10) {
  print(i)
}

a<-c(1:100)
sum(a)

result<-0
mean <- 0
for(i in 1:100) {
 result <- result+i
}
print(result)
mean <- result/100
print(mean)

cond<-TRUE
i<-0
while(i<100) {
  print(i)
  i<-i+1
}


