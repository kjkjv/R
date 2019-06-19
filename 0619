#이후 강의는 데이터 전처리 - "dplyr" package



# filter()

# select()

# arrange()

# mutate() 파생변수

# summarise() summary와 비슷 

# group_by()  집단 별

# left_join() 열 합치기

# bind_rows() 행 합치기











#6장 ============================================================================





#filter() :행추출

# %>% 파이프연산자

# exam에서 class가 1인 경우만 추출하여 출력 

#"행"을 추출 





library(dplyr)

exam <- read.csv("./Doit_R/Data/csv_exam.csv")



exam

#    id class math english science

# 1   1     1   50      98      50

# 2   2     1   60      97      60

# 3   3     1   45      86      78

# 4   4     1   30      98      58

# 5   5     2   25      80      65

# 6   6     2   50      89      98

# 7   7     2   80      90      45

# 8   8     2   90      78      25

# 9   9     3   20      98      15

# 10 10     3   50      98      45

# 11 11     3   65      65      65

# 12 12     3   45      85      32

# 13 13     4   46      98      65

# 14 14     4   48      87      12

# 15 15     4   75      56      78

# 16 16     4   58      98      65

# 17 17     5   65      68      98

# 18 18     5   80      78      90

# 19 19     5   89      68      87

# 20 20     5   78      83      58







out_data <- exam %>% filter(class ==1) #class 1인 데이터만 추출 





out_data



#   id class math english science

# 1  1     1   50      98      50

# 2  2     1   60      97      60

# 3  3     1   45      86      78

# 4  4     1   30      98      58







out_data2<-exam %>% filter( class == 2)

out_data2



#   id class math english science

# 1  5     2   25      80      65

# 2  6     2   50      89      98

# 3  7     2   80      90      45

# 4  8     2   90      78      25





out_data3 <- exam %>% filter(class != 1)

out_data3

#    id class math english science

# 1   5     2   25      80      65

# 2   6     2   50      89      98

# 3   7     2   80      90      45

# 4   8     2   90      78      25

# 5   9     3   20      98      15

# 6  10     3   50      98      45

# 7  11     3   65      65      65

# 8  12     3   45      85      32

# 9  13     4   46      98      65

# 10 14     4   48      87      12

# 11 15     4   75      56      78

# 12 16     4   58      98      65

# 13 17     5   65      68      98

# 14 18     5   80      78      90

# 15 19     5   89      68      87

# 16 20     5   78      83      58





out_data3 <- exam %>% filter(class != 3)

out_data3



# id class math english science

# 1   1     1   50      98      50

# 2   2     1   60      97      60

# 3   3     1   45      86      78

# 4   4     1   30      98      58

# 5   5     2   25      80      65

# 6   6     2   50      89      98

# 7   7     2   80      90      45

# 8   8     2   90      78      25

# 9  13     4   46      98      65

# 10 14     4   48      87      12

# 11 15     4   75      56      78

# 12 16     4   58      98      65

# 13 17     5   65      68      98

# 14 18     5   80      78      90

# 15 19     5   89      68      87

# 16 20     5   78      83      58





out_data10 <- exam %>% filter( math > 50 )

out_data10



#    id class math english science

# 1   2     1   60      97      60

# 2   7     2   80      90      45

# 3   8     2   90      78      25

# 4  11     3   65      65      65

# 5  15     4   75      56      78

# 6  16     4   58      98      65

# 7  17     5   65      68      98

# 8  18     5   80      78      90

# 9  19     5   89      68      87

# 10 20     5   78      83      58







out_data11 <- exam %>% filter( math < 50)

out_data11



#   id class math english science

# 1  3     1   45      86      78

# 2  4     1   30      98      58

# 3  5     2   25      80      65

# 4  9     3   20      98      15

# 5 12     3   45      85      32

# 6 13     4   46      98      65

# 7 14     4   48      87      12







out_data12 <- exam %>% filter( english >= 80)

out_data12





#    id class math english science

# 1   1     1   50      98      50

# 2   2     1   60      97      60

# 3   3     1   45      86      78

# 4   4     1   30      98      58

# 5   5     2   25      80      65

# 6   6     2   50      89      98

# 7   7     2   80      90      45

# 8   9     3   20      98      15

# 9  10     3   50      98      45

# 10 12     3   45      85      32

# 11 13     4   46      98      65

# 12 14     4   48      87      12

# 13 16     4   58      98      65

# 14 20     5   78      83      58





out_data13 <- exam %>% filter( english <= 80)

out_data13



#   id class math english science

# 1  5     2   25      80      65

# 2  8     2   90      78      25

# 3 11     3   65      65      65

# 4 15     4   75      56      78

# 5 17     5   65      68      98

# 6 18     5   80      78      90

# 7 19     5   89      68      87







#여러 조건 



#여러조건 모두 충족 And &

out_data15 <- exam %>% filter( class ==1 & math >= 50) # R에서는 & 1개만 

out_data15



# id class math english science

# 1  1     1   50      98      50

# 2  2     1   60      97      60





#여러조건 중 하나라도 충족 OR |



out_data16 <- exam %>% filter(math >= 90 | english >= 90)

out_data16



#   id class math english science

# 1  1     1   50      98      50

# 2  2     1   60      97      60

# 3  4     1   30      98      58

# 4  7     2   80      90      45

# 5  8     2   90      78      25

# 6  9     3   20      98      15

# 7 10     3   50      98      45

# 8 13     4   46      98      65

# 9 16     4   58      98      65





out_data18 <- exam %>% filter(class == 3 | class == 1 | class == 5)

out_data18





#    id class math english science

# 1   1     1   50      98      50

# 2   2     1   60      97      60

# 3   3     1   45      86      78

# 4   4     1   30      98      58

# 5   9     3   20      98      15

# 6  10     3   50      98      45

# 7  11     3   65      65      65

# 8  12     3   45      85      32

# 9  17     5   65      68      98

# 10 18     5   80      78      90

# 11 19     5   89      68      87

# 12 20     5   78      83      58





# %in% 사용 Mathing Operator



out_data19 <- exam %>% filter(class %in% c(1,3,5))

out_data19





#    id class math english science

# 1   1     1   50      98      50

# 2   2     1   60      97      60

# 3   3     1   45      86      78

# 4   4     1   30      98      58

# 5   9     3   20      98      15

# 6  10     3   50      98      45

# 7  11     3   65      65      65

# 8  12     3   45      85      32

# 9  17     5   65      68      98

# 10 18     5   80      78      90

# 11 19     5   89      68      87

# 12 20     5   78      83      58





out_data20 <- exam %>% filter(class %in% 1)

out_data20



# id class math english science

# 1  1     1   50      98      50

# 2  2     1   60      97      60

# 3  3     1   45      86      78

# 4  4     1   30      98      58









#group by 후 시각화 하고 돌아온다고 





#2019 06 14 금요일------------------------------------------------------------------------------



library(ggplot2)

library(dplyr) # filter()

#p.113 혼자서 해보기 



#Q1 --------------------------------------------------------

#자동차 배기량에 따라 고속도로 연비가 다른지 알아보려고 한다. displ(배기량)이 4 이하인지 자동차와 5이상인 자동차 중 어떤 자동차의 hwy(고속도로 연비)가 평균적으로 더 높은지 알아보세요.



#hint 특정 조건에 해당하는 데이터를 추출해 평균을 구하면 해결할 수 있는 문제. filter()를 이용해 displ 변수가 특정 값을 지닌 행을 추출해 새로운 변수에 할당한 후 평균을 구해 보세요.





# 1. displ 4이하 자동차 





mpg

mpg <- as.data.frame(ggplot2::mpg)

head(mpg)

str(mpg)



# 'data.frame':	234 obs. of  11 variables:

#     $ manufacturer: chr  "audi" "audi" "audi" "audi" ...

# $ model       : chr  "a4" "a4" "a4" "a4" ...

# $ displ       : num  1.8 1.8 2 2 2.8 2.8 3.1 1.8 1.8 2 ...

# $ year        : int  1999 1999 2008 2008 1999 1999 2008 1999 1999 2008 ...

# $ cyl         : int  4 4 4 4 6 6 6 4 4 4 ...

# $ trans       : chr  "auto(l5)" "manual(m5)" "manual(m6)" "auto(av)" ...

# $ drv         : chr  "f" "f" "f" "f" ...

# $ cty         : int  18 21 20 21 16 18 18 18 16 20 ...

# $ hwy         : int  29 29 31 30 26 26 27 26 25 28 ...

# $ fl          : chr  "p" "p" "p" "p" ...

# $ class       : chr  "compact" "compact" "compact" "compact" ...



displ4 <- mpg %>% filter(displ <= 4)

head(displ4,5)

#   manufacturer model displ year cyl      trans drv cty hwy fl   class

# 1         audi    a4   1.8 1999   4   auto(l5)   f  18  29  p compact

# 2         audi    a4   1.8 1999   4 manual(m5)   f  21  29  p compact

# 3         audi    a4   2.0 2008   4 manual(m6)   f  20  31  p compact

# 4         audi    a4   2.0 2008   4   auto(av)   f  21  30  p compact

# 5         audi    a4   2.8 1999   6   auto(l5)   f  16  26  p compact



mean(displ4$hwy)

#[1] 25.96319



displ5 <- mpg %>% filter(displ >= 5)

head(displ5,10)

#    manufacturer              model displ year cyl      trans drv cty hwy fl   class

# 1     chevrolet c1500 suburban 2wd   5.3 2008   8   auto(l4)   r  14  20  r     suv

# 2     chevrolet c1500 suburban 2wd   5.3 2008   8   auto(l4)   r  11  15  e     suv

# 3     chevrolet c1500 suburban 2wd   5.3 2008   8   auto(l4)   r  14  20  r     suv

# 4     chevrolet c1500 suburban 2wd   5.7 1999   8   auto(l4)   r  13  17  r     suv

# 5     chevrolet c1500 suburban 2wd   6.0 2008   8   auto(l4)   r  12  17  r     suv

# 6     chevrolet           corvette   5.7 1999   8 manual(m6)   r  16  26  p 2seater

# 7     chevrolet           corvette   5.7 1999   8   auto(l4)   r  15  23  p 2seater

# 8     chevrolet           corvette   6.2 2008   8 manual(m6)   r  16  26  p 2seater

# 9     chevrolet           corvette   6.2 2008   8   auto(s6)   r  15  25  p 2seater

# 10    chevrolet           corvette   7.0 2008   8 manual(m6)   r  15  24  p 2seater

mean(displ5$hwy)







#Q2---------------------------------------------------------

#자동차 제조 회사에 따라 도시 연비가 다른지 알아보려고 한다. "audi"와 "toyota" 중 어느 manufacturer(자동차 제조회사)의 cty(도시 연비)가 평균적으로 더 높은지 알아보시오.

#앞 문제와 동일한 절차로 해결하면 됩니다. 단, 변수의 값이 숫자가 아니라 문자라는 점이 다릅니다.



audi <- mpg %>% filter(manufacturer == "audi") #자동차 제조 회사 이름이 audi 인 행 추출 

audi



mean(audi$cty) # 추출한 audi 행들 중 cty 의 평균 



toyota <- mpg %>% filter(manufacturer == "toyota")

dim(toyota)

toyota

mean(toyota$cty)



#table(c("아우디 평균"=mean(audi$cty),"토요타 평균" = mean(toyota$cty)))

#qplot(c(mean(audi$cty),mean(toyota$cty)))



#Q3------------------------------------------------------------------

all <- mpg %>% filter(manufacturer == "chevrolet"|manufacturer == "ford"|manufacturer == "honda")

all2 <- mpg %>% filter(manufacturer %in% c("chevrolet","ford","honda")) # chevrolet, ford, honda 인 행들을 추출

str(all2)

# 'data.frame':	53 obs. of  11 variables:

#     $ manufacturer: chr  "chevrolet" "chevrolet" "chevrolet" "chevrolet" ...

# $ model       : chr  "c1500 suburban 2wd" "c1500 suburban 2wd" "c1500 suburban 2wd" "c1500 suburban 2wd" ...

# $ displ       : num  5.3 5.3 5.3 5.7 6 5.7 5.7 6.2 6.2 7 ...

# $ year        : int  2008 2008 2008 1999 2008 1999 1999 2008 2008 2008 ...

# $ cyl         : int  8 8 8 8 8 8 8 8 8 8 ...

# $ trans       : chr  "auto(l4)" "auto(l4)" "auto(l4)" "auto(l4)" ...

# $ drv         : chr  "r" "r" "r" "r" ...

# $ cty         : int  14 11 14 13 12 16 15 16 15 15 ...

# $ hwy         : int  20 15 20 17 17 26 23 26 25 24 ...

# $ fl          : chr  "r" "e" "r" "r" ...

# $ class       : chr  "suv" "suv" "suv" "suv" ...

# > 



head(all2,20)

#    manufacturer              model displ year cyl      trans drv cty hwy fl   class

# 1     chevrolet c1500 suburban 2wd   5.3 2008   8   auto(l4)   r  14  20  r     suv

# 2     chevrolet c1500 suburban 2wd   5.3 2008   8   auto(l4)   r  11  15  e     suv

# 3     chevrolet c1500 suburban 2wd   5.3 2008   8   auto(l4)   r  14  20  r     suv

# 4     chevrolet c1500 suburban 2wd   5.7 1999   8   auto(l4)   r  13  17  r     suv

# 5     chevrolet c1500 suburban 2wd   6.0 2008   8   auto(l4)   r  12  17  r     suv

# 6     chevrolet           corvette   5.7 1999   8 manual(m6)   r  16  26  p 2seater

# 7     chevrolet           corvette   5.7 1999   8   auto(l4)   r  15  23  p 2seater

# 8     chevrolet           corvette   6.2 2008   8 manual(m6)   r  16  26  p 2seater

# 9     chevrolet           corvette   6.2 2008   8   auto(s6)   r  15  25  p 2seater

# 10    chevrolet           corvette   7.0 2008   8 manual(m6)   r  15  24  p 2seater

# 11    chevrolet    k1500 tahoe 4wd   5.3 2008   8   auto(l4)   4  14  19  r     suv

# 12    chevrolet    k1500 tahoe 4wd   5.3 2008   8   auto(l4)   4  11  14  e     suv

# 13    chevrolet    k1500 tahoe 4wd   5.7 1999   8   auto(l4)   4  11  15  r     suv

# 14    chevrolet    k1500 tahoe 4wd   6.5 1999   8   auto(l4)   4  14  17  d     suv

# 15    chevrolet             malibu   2.4 1999   4   auto(l4)   f  19  27  r midsize

# 16    chevrolet             malibu   2.4 2008   4   auto(l4)   f  22  30  r midsize

# 17    chevrolet             malibu   3.1 1999   6   auto(l4)   f  18  26  r midsize

# 18    chevrolet             malibu   3.5 2008   6   auto(l4)   f  18  29  r midsize

# 19    chevrolet             malibu   3.6 2008   6   auto(s6)   f  17  26  r midsize

# 20         ford     expedition 2wd   4.6 1999   8   auto(l4)   r  11  17  r     suv

tail(all2,20)

#    manufacturer           model displ year cyl      trans drv cty hwy fl      class

# 34         ford f150 pickup 4wd   5.4 1999   8   auto(l4)   4  11  15  r     pickup

# 35         ford f150 pickup 4wd   5.4 2008   8   auto(l4)   4  13  17  r     pickup

# 36         ford         mustang   3.8 1999   6 manual(m5)   r  18  26  r subcompact

# 37         ford         mustang   3.8 1999   6   auto(l4)   r  18  25  r subcompact

# 38         ford         mustang   4.0 2008   6 manual(m5)   r  17  26  r subcompact

# 39         ford         mustang   4.0 2008   6   auto(l5)   r  16  24  r subcompact

# 40         ford         mustang   4.6 1999   8   auto(l4)   r  15  21  r subcompact

# 41         ford         mustang   4.6 1999   8 manual(m5)   r  15  22  r subcompact

# 42         ford         mustang   4.6 2008   8 manual(m5)   r  15  23  r subcompact

# 43         ford         mustang   4.6 2008   8   auto(l5)   r  15  22  r subcompact

# 44         ford         mustang   5.4 2008   8 manual(m6)   r  14  20  p subcompact

# 45        honda           civic   1.6 1999   4 manual(m5)   f  28  33  r subcompact

# 46        honda           civic   1.6 1999   4   auto(l4)   f  24  32  r subcompact

# 47        honda           civic   1.6 1999   4 manual(m5)   f  25  32  r subcompact

# 48        honda           civic   1.6 1999   4 manual(m5)   f  23  29  p subcompact

# 49        honda           civic   1.6 1999   4   auto(l4)   f  24  32  r subcompact

# 50        honda           civic   1.8 2008   4 manual(m5)   f  26  34  r subcompact

# 51        honda           civic   1.8 2008   4   auto(l5)   f  25  36  r subcompact

# 52        honda           civic   1.8 2008   4   auto(l5)   f  24  36  c subcompact

# 53        honda           civic   2.0 2008   4 manual(m6)   f  21  29  p subcompact





mean(all$hwy) # 추출한 행들에서 hwy 열을 평균 

#[1] 22.50943



mean(all2$hwy)

#[1] 22.50943



#이후 select





#데이터 전처리 - "dplyr" package



# filter() 행 추출

# select() 열 추출

# arrange() 정렬

# mutate() 파생변수

# summarise() summary와 비슷 

# group_by()  집단 별

# left_join() 열 합치기

# bind_rows() 행 합치기







#select(col1,col2,col3,...) : 행추출 

















exam <- read.csv("C:/Users/CPB06GameN/Desktop/김재광/R_파일모음/easy_R/csv_exam.csv")



exam

#    id class math english science

# 1   1     1   50      98      50

# 2   2     1   60      97      60

# 3   3     1   45      86      78

# 4   4     1   30      98      58

# 5   5     2   25      80      65

# 6   6     2   50      89      98

# 7   7     2   80      90      45

# 8   8     2   90      78      25

# 9   9     3   20      98      15

# 10 10     3   50      98      45

# 11 11     3   65      65      65

# 12 12     3   45      85      32

# 13 13     4   46      98      65

# 14 14     4   48      87      12

# 15 15     4   75      56      78

# 16 16     4   58      98      65

# 17 17     5   65      68      98

# 18 18     5   80      78      90

# 19 19     5   89      68      87

# 20 20     5   78      83      58















df_math <- exam %>% select(math)

str(df_math)

# 'data.frame':	20 obs. of  1 variable:

#     $ math: int  50 60 45 30 25 50 80 90 20 50 ...



df_math



#    math

# 1    50

# 2    60

# 3    45

# 4    30

# 5    25

# 6    50

# 7    80

# 8    90

# 9    20

# 10   50

# 11   65

# 12   45

# 13   46

# 14   48

# 15   75

# 16   58

# 17   65

# 18   80

# 19   89

# 20   78





str(exam$math)

# int [1:20] 50 60 45 30 25 50 80 90 20 50 ...

exam$math

# [1] 50 60 45 30 25 50 80 90 20 50 65 45 46 48 75 58 65 80 89 78





df_math_eng <- exam %>% select(math,english) # 여러열 추출도 가능

head(df_math_eng)





#   math english

# 1   50      98

# 2   60      97

# 3   45      86

# 4   30      98

# 5   25      80

# 6   50      89



df_math_eng



df_nomath <- exam %>% select(-math)

head(df_nomath)





# id class english science

# 1  1     1      98      50

# 2  2     1      97      60

# 3  3     1      86      78

# 4  4     1      98      58

# 5  5     2      80      65

# 6  6     2      89      98















df_nomath_noeng <- exam %>% select(-math, -english)

head(df_nomath_noeng)





#   id class science

# 1  1     1      50

# 2  2     1      60

# 3  3     1      78

# 4  4     1      58

# 5  5     2      65

# 6  6     2      98







# 전력량 예측 원전이 필요한지.

# 기사 / 댓글이 진보 보수 중도인지



#함수 조합 filter() + select()



cl1<- exam%>%filter(class==1)



cl1

# id class math english science

# 1  1     1   50      98      50

# 2  2     1   60      97      60

# 3  3     1   45      86      78

# 4  4     1   30      98      58







df_comb <- exam %>% filter(class ==1 ) %>% 
  
  select(english) #행단위로 잘라내고, 열단위(eng)로 잘라냄



#class가 1인 행들 추출, eng 추출 



df_comb



# english

# 1      98

# 2      97

# 3      86

# 4      98


#arrange( ) : 순서로 정렬(오름차순, 내림차순)
df<-exam %>% arrange(desc(math)) #내림차순
df
df<-exam %>% arrange(desc(class,math)) #오름차순
df


#연습1
exam %>% filter(class==1)
exam %>% filter(class==2)
exam %>% filter(class!=1)
exam %>% filter(class!=3)                
exam %>% filter(math>50)
exam %>% filter(math<50)
exam %>% filter(english>=80)
exam %>% filter(english<=80)
exam %>% filter(class==1&math>=50)
exam %>% filter(class==2&english>=80)
exam %>% filter(math>=90|english>=90)
exam %>% filter(english<90|science<50)
exam %>% filter(class==1|class==3|class==5)
exam %>% filter(class %in% c(1,3,5))
class1 <- exam %>% filter(class==1)
class2 <- exam %>% filter(class==2)
mean(class1$math)
mean(class2$math)

#연습2
mpg<-as.data.frame(ggplot2::mpg)
mpg
mpg1<-mpg %>% filter(displ<=4)
mpg1
mpg2<-mpg %>% filter(displ>=5)
mpg2

mean(mpg1$hwy)
mean(mpg2$hwy)

cty1<-mpg %>% filter(manufacturer=="audi")
cty1
cty2<-mpg %>% filter(manufacturer=="toyota")
cty2
mean(cty1$cty)
mean(cty2$cty)
df<-exam %>% 
    mutate(total=math+english+science,
           mean =(math+english+science)/3 ) %>% 
      arrange(desc(mean))%>% 
    head
df

#열을 추가하는 것 = select


df<-exam %>% 
    mutate(test=ifelse(science>=60, "pass", "fail")) %>% head
df

df<-exam %>% 
  mutate(total=math+english+science,
         mean =(math+english+science)/3 ) %>% 
  mutate(grade = ifelse(mean>=90, "A",
                 ifelse(mean>=80, "B", 
                ifelse(mean>=70, "C",
                       ifelse(mean>=60, "D", "F"))))) %>% 
  arrange(desc(mean))%>% 
  head(20) #헤드 개수를 설정할 수 있다.
df
View(df)

#괄호의 개수를 잘 파악해라.

mpg_new <-mpg %>% 
  mutate(total=cty+hwy,
         mean=total/2) %>% 
  arrange(desc(mean)) %>% 
  head(3)
mpg_new
View(mpg_new)

#summarise(   ) 통계함수를 사용한 변수를 할당 
result <- exam %>% summarise(mean_math=mean(math))
str(result)
dim(result)

#group_by( ) 항목별로 데이터를 분리한다.
df<-exam %>% 
  group_by(class) %>% 
  summarise(mean_math=mean(math),
            sum_math=sum(math),
            n=n())
df

df<-mpg %>% 
  group_by(manufacturer, drv) %>%
  summarise(mean_cty = mean(cty))
View(df)


#dplyr 조합하기 
df<-mpg %>% 
  group_by(manufacturer) %>%                                 #제조업체별로 분리
  filter(class=='suv') %>%                                   #suv만 추출 
  mutate(tot = (cty+hwy)/2)%>%  
  summarise(mean_tot=mean(tot)) %>%
  arrange(desc(mean_tot)) %>% 
  head(5)
df

#문제 해답을 보면서 
df<-mpg %>% group_by(class) %>%                              #class별 분리
  summarise(mean_cty=mean(cty))                              #cty 평균 구하기 
df  

df<-mpg %>% group_by(class) %>%                              #class별 분리
  summarise(mean_cty=mean(cty)) %>%                          #cty 평균 구하기
  arrange(desc(mean_cty))                                    #내림차순 정렬하기 
df

mpg %>% group_by(manufacturer) %>%                           #manufacturer별 분리
  summarise(mean_hwy=mean(hwy)) %>%                          #hwy 평균 구하기
  arrange(desc(mean_hwy)) %>%                                #내림차순 정렬하기
  head(3)                                                    #상위 3행 출력

mpg %>% filter(class=="compact") %>%                         #compact 추출
  group_by(manufacturer) %>%                                 #manufacturer별 분리
  summarise(count=n()) %>%                                   #빈도 구하기
  arrange(desc(count))                                       #내림차순 정렬

#연습 복습하기 

mpg %>% group_by(class) %>%
  summarise(mean_cty=mean(cty)) %>% 
  arrange(desc(mean_cty))

mpg %>% group_by(manufacturer) %>%
  summarise(mean_hwy=mean(hwy)) %>% 
  arrange(desc(mean_hwy)) %>% 
  head(3)

mpg %>% filter(class=="compact") %>% 
  group_by(manufacturer) %>% 
  summarise(count=n()) %>% 
  arrange(desc(count))

#==================================================================================================
# 산점도 : scater plot : 두 변수간의 상관관계 
library(ggplot2)

#aes : aesthetic mapping = 미적인 맵핑 
#1단계 : 배경 화면을 출력, 배경을 생성
ggplot(data = mpg, aes(x= displ, y=hwy))         
#2단계 : 산점도 추가 
ggplot(data = mpg, aes(x= displ, y=hwy))  
#3단계 : x,y 축의 범위 지정 
ggplot(data = mpg, aes(x= displ, y=hwy),) + geom_point(colour='red') + xlim(3,6) + ylim(10,30)

geom_                                                                             #그래프 종류를 확인할 수 있다.
 
xlim(3,6) + ylim(10,30)                                                           #x,y축 범위를 설정할 수 있다.

plot(iris$Sepal.Length,iris$Sepal.Width)                                          #plot도 가능하지만 저수준이다. 
                                                                                  #ggplot사용 이유 
geom_point(colour='red')                                                          #점색깔 고르기 가능 

ggplot(data=mpg, aes(x=cty, y=hwy)) +
  geom_point()

ggplot(data=midwest, aes(x=poptotal, y=popasian))+
  geom_point() +
  xlim(0,500000)+ylim(0,10000)
          



#2019. 06. 17. ========================================================================================================

filter() #행 추출
select() #열(변수) 추출 
arrange()#정열

# 산점도 만들기 
# 변수와의 관계를 나타냄.

plot(iris$Sepal.Length,iris$Sepal.Width)                      #흰 점으로 구성.
qplot(manufacturer, data=mpg, geom="bar",                     #컬러풀하게 그래프로. 색깔은 자동으로.
      fill=manufacturer)
#qplot 보다 ggplot을 많이 사용한다._확인용, 단순
#data를 넣어주는 방식이 다르다._보고용

#문제 1
ggplot(data = mpg, aes(x= cty, y=hwy))+ geom_point(colour='blue')
#문제 2
ggplot(data=midwest, aes(x=poptotal, y=popasian))+            #값이 큰 것은 로그값으로 컨트롤 
  geom_point(colour='darkgreen')+
  xlim(0, 500000)+
  ylim(0, 10000)

#막대그래프 : bar chart, 집단간의 차이
# 산점도 : scater plot : 두 변수간의 상관관계 
library(dplyr)
df_mpg<-mpg %>% group_by(drv) %>% summarise(mean_hwy=mean(hwy))
df_mpg

ggplot(data=df_mpg,aes(x=drv,y=mean_hwy))+
  geom_col()                                                   #막대그래프는 집단간의 차이를 표시할 때 좋다

ggplot(data=df_mpg,aes(x=reorder(drv,-mean_hwy),y=mean_hwy))+  #reorder를 추가해서 나타내기(-값은 내림차순)
  geom_col()    

#빈도 막대 그래프
ggplot(data=mpg,aes(x=drv))+
  geom_bar()   

ggplot(data=mpg,aes(x=manufacturer))+
  geom_bar()   

#평균 막대 그래프 : 데이터를 요약한 평균표를 먼저 만든 후 평균표를 이용해 그래프, geom_col()
#빈도 막대 그래프 : 별도로 표를 만들지 않고 원자료를 이용해 바로 그래프 생성, geom_bar()

#문제 1_193p
mpg<-as.data.frame(ggplot2::mpg)
df_mpg<-mpg %>% filter(class=='suv') %>% 
  group_by(manufacturer)%>% 
  summarise(mean_cty=mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)                                                      
ggplot(data=df_mpg, aes(x=reorder(manufacturer, -mean_cty),y=mean_cty)) + geom_col()

#문제 2 
ggplot(data=mpg, aes(x=class)) + geom_bar()

#시계열 그래프
#geom_line = 예측이 가능하다
#선 그래프 : line 차트, 시계열데이터(시간이 흐르면서 발생한 데이터_주식, 일기예보)
ggplot(data=economics,aes(x=date,y=unemploy))+geom_line()

#문제 1 
ggplot(data=economics,aes(x=date,y=psavert))+geom_line()

#참고 사이트
#https://rpubs.com/
#https://rpubs.com/shailesh/

#상자 그림 : box plot, 데이터의 분포(사분위수를 중심으로)
#데이터의 분포를 직사각형 상자 모양으로 분포를 알 수 있기 때문에 평균만 볼 때보다 데이터의 특징을 더 잘 확인할 수 있다.
ggplot(data=mpg,aes(x=drv,y=hwy))+geom_boxplot()
#네모 박스가 대부분의 데이터가 모여있는 곳
#중앙값이 상자 안 굵은 선

#문제 1 _ 198p
mpg<-as.data.frame(ggplot2::mpg)
mpg_box<-mpg %>% filter(class%in%c('compact','subcompact','suv'))
ggplot(data=mpg_box,aes(x=class,y=cty))+geom_boxplot()



#=============================================================================================================================
#데이터 합치기 

#(1)가로 : 수평=컬럼(column)=열
test1<-data_frame(id=c(1,2,3,4,5),
                  midterm=c(60,80,70,90,85))
test1
test2<-data_frame(id=c(1,2,3,4,5),
                  final=c(70,65,98,42,35))
test2
#id가 같으니까 합치기 쉽다. id가 중요.
#left_join
total <- left_join(test1,test2, by='id')   #by_'id' 생략 가능
total
#id가 다르면 결측치(NA)가 나온다. 갯수도 맟줘야 한다.
#처음에 있는 왼쪽 id가 기준이 된다.

name<-data.frame(class=c(1,2,3,4,5),
                 teacher=c("kim","q","e","q","f"))
name

library(dplyr)
exam<-read.csv("csv_exam.csv")
csv

exam_new<-left_join(exam,name,by='class')
exam_new

#(2)세로 : 수직=행(row)
#bind_rows()
group_a<-data.frame(id=c(1,2,3,4,5),
                    test=c(13,54,53,65,64))
group_a
group_b<-data.frame(id=c(6,7,8,9,10),
                    test=c(12,34,53,43,44))
group_b

group_all<- bind_rows(group_a,group_b)
group_all
#같거나 틀려도 밑에다 붙이는 것이라 상관이 없다.

f1 <- data.frame(f1=c("c","d","f",'q'),
                       price_f1=c(2.34,3.23,3.12,1.23),
                       stringsAsFactors=F)
f1

mpg_new<-left_join(mpg,fuel,by="f1")
View(mpg_new)

df<-mpg_new %>% select(model,f1,"price_f1") %>% head(5)
df

#문제 4 
midwest<-as.data.frame(ggplot2::midwest) #파일을 불러온다 
midwest
midwest<-midwest %>% 
  mutate(ratio_a=(poptotal-popadults)/poptotal*100) #전체 인구에서 성인을 빼고 다시 전체로 나누고 곱하기 100이 백분율
midwest %>% arrange(desc(ratio_a)) %>%    #낮은차순으로 정렬
  select(county, ratio_a) %>% head(5)     #데이터 고르기 

midwest<-midwest %>% 
  mutate(grade=ifelse(ratio_a>=40, "large",   #mutate는 변수를 추가하는 것 ifelse를 써서 등급을 나눈다.
                      ifelse(ratio_a>=30,"middle","small")))
table(midwest$grade)

midwest %>% mutate(asdf=(popasian/poptotal)*100) %>%   #백분율 구하기 다시 참고 
  arrange(asdf) %>%select(state, county, asdf) %>% head(10)  #select을 먼저 해주고 헤드로 뽑아내기기


#==============================================================================================================================

#결측치 : NA(숫자), <NA>(문자)

df<-data.frame(sex=c('M','F',NA, 'M','F'),
               score=c(3,2,1,3,NA))
df

#결측치 확인 함수 
#is.na(df에 결측치가 있나?)
df_is<-is.na(df)
df_is
table(df_is)  #결측치 갯수 파악 가능
table(is.na(df$sex))
table(is.na(df$score))

#   sex score
# [1,] FALSE FALSE
# [2,] FALSE FALSE
# [3,]  TRUE FALSE
# [4,] FALSE FALSE
# [5,] FALSE  TRUE
# > table(df_is)
# df_is
# FALSE  TRUE 
# 8     2 
# > table(is.na(df$sex))

# FALSE  TRUE 
# 4     1 
# > table(is.na(df$score))

# FALSE  TRUE 
# 4     1 

mean(df$score)
sum(df$score)


#결측치 제거하기 
#is.na
#na.omit
#na.rm=T

table(is.na(mpg))  #우선 결측치 검사하기
library(dplyr)
df %>%filter(is.na(score))    #필터는 행을 추출한다. score에 해당하는!
df %>%filter(!is.na(score))   #결측치가 있는 행을 삭제한다.

df_nomiss<-df %>%filter(!is.na(score)) & (!is.na(sex)) #원하는 결측치만 없어진다. 불필요한 컬럼을 무시.
df_nomiss<-na.omit(df)                                 #결측치가 하나라도 있어서 다 없애고 싶다면 이걸 사용.
df_nomiss                                              #na.omit() : 모든 컬럼의 결측치를 모두 제거 
                                                       #is.na() : 해당 조건의 컬럼만 삭제 

mean(df$score,na.rm=T)
sum(df$score, na.rm=T)

exam<-read.csv("csv_exam.csv")
exam
exam[c(3,8,15), 'math'] <- NA   #math에만 결측치를 집어넣기
exam

exam %>% summarise(mean_math=mean(math))
exam
exam %>% summarise(mean_math=mean(math, na.rm=T))    #결측치를 없애서 평균을 구할 수 있다.
exam %>% summarise(mean_math=mean(math, na.rm=T),
                   sum_math=sum(math, na.rm=T),
                   median_math=median(math, na.rm=T))

#결측치를 평균값으로 넣기 (뺄 것인가, 평균값으로 넣을 것인가)
mean_math<-mean(exam$math,na.rm=T)   #결측치를 뺀 평균 55.23529
mean_math
exam$math<-ifelse(is.na(exam$math),mean_math,exam$math)
exam
table(is.na(exam$math))

mean(exam$math)   #


mpg<-as.data.frame(ggplot2::mpg)
mpg[c(65,124,131,153,212), "hwy"]<-NA

table(is.na(mpg$drv))
table(is.na(mpg$hwy))
mpg$hwy

mpg %>% 
  filter(!is.na(hwy)) %>%              #결측치 제거
  group_by(drv) %>%                    #drv별 분리 
  summarise(mean_hwy=mean(hwy))        #hwy 평균 구하기 

#==============================================================================================================================
#이상치 
#정상에서 크게 벗어난 값 

#이상치(outlier)를 제거
outlier<-data.frame(sex=c(1,2,1,3,2,1),
                  score=c(5,4,3,4,2,6))
outlier
table(outlier$sex)
table(outlier$score)


#이상치를 결측처리 
outlier$sex<-ifelse(outlier$sex==3, NA, outlier$sex)
outlier
#결측치 처리, 제거 
outlier %>% 
 # filter(!is.na(sex)&!is.na(score)) %>% 
  group_by(sex) %>% 
  summarise(mean_score=mean(score))

library(ggplot2)
ggplot(data=mpg,aes(x=drv,y=hwy))+geom_boxplot()
boxplot(mpg$hwy)$OUT
quantile(mpg$hwy,na.rm=T)

mpg$hwy<-ifelse((mpg$hwy) < 12|mpg$hwy>37, NA,mpg$hwy)
mpg$hwy
boxplot(mpg$hwy)

#mpg 데이터의 극단치를 결측치로 제거
mpg$hwy<-ifelse((mpg$hwy) < 12 | mpg$hwy>37, NA,mpg$hwy)
table(is.na(mpg$hwy))
View(mpg)

mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy=mean(hwy,na.rm=T))

mpg_new<-as.data.frame(ggplot2::mpg)
mpg_new[c(10,14,58,93), 'drv']<-'k'
mpg_new[c(29,43,129,203), 'cty']<-c(3,4,39,42)

table(mpg_new$drv)
mpg_new$drv<-ifelse(mpg_new$drv=='k', NA, mpg_new$drv)
mpg_new$drv
mpg_new$drv<-ifelse(mpg_new$drv %in% c('4','f','r'), mpg_new$drv, NA)
table(mpg_new$drv)

boxplot(mpg_new$cty)$stats                 #stats 이것은 상태를 보여준다. 
                                                #       [,1]
                                                #  [1,]    9
                                                #  [2,]   14
                                                #  [3,]   17
                                                #  [4,]   19
                                                #  [5,]   26

mpg_new$cty<-ifelse(mpg_new$cty<9|mpg_new$cty>26, NA, mpg_new$cty)             #이상치를 제거
boxplot(mpg_new$cty)$stats 

mpg_new %>% 
  filter(!is.na(drv)&(!is.na(cty)) %>% 
           group_by(drv) %>% 
           summarise(mean_cty=mean(cty)))


#===============================================================================================================================
#2019. 06. 19.

install.packages('foreign')
library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)
raw_welfare<-read.spss(file='C:/Users/CPB06GameN/Desktop/김재광/R_파일모음/easy_R/Koweps_etc/데이터/Koweps_hpc10_2015_beta1.sav',
                       to.data.frame = T)
welfare<-raw_welfare
coord_flip()   #그래프 90도

#x축의 변수 순서를 지정 

head(welfare)
tail(welfare)
View(welfare)
dim((welfare))
str(welfare)
summary(welfare)

welfare<-rename(welfare,
                sex = h10_g3,
                birth = h10_g4,
                marriage = h10_g10,
                religion = h10_g11,
                income = p1002_8aq1,
                code_job = h10_eco9,
                code_region = h10_reg7)
class(welfare$sex)      #"numeric" 속성값이 숫자면 이렇게 타입이 나온다.
table(welfare$sex)
