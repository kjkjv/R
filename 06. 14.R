#?ด? ๊ฐ์? ?ฐ?ด?ฐ ? ์ฒ๋ฆฌ - "dplyr" package



# filter()

# select()

# arrange()

# mutate() ??๋ณ?

# summarise() summary?? ๋น์ท 

# group_by()  ์ง๋จ ๋ณ?

# left_join() ?ด ?ฉ์น๊ธฐ

# bind_rows() ? ?ฉ์น๊ธฐ











#6?ฅ ============================================================================





#filter() :?์ถ์ถ

# %>% ??ด??ฐ?ฐ?

# exam?? class๊ฐ 1?ธ ๊ฒฝ์ฐ๋ง? ์ถ์ถ??ฌ ์ถ๋ ฅ 

#"?"? ์ถ์ถ 





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







out_data <- exam %>% filter(class ==1) #class 1?ธ ?ฐ?ด?ฐ๋ง? ์ถ์ถ 





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







#?ฌ?ฌ ์กฐ๊ฑด 



#?ฌ?ฌ์กฐ๊ฑด ๋ชจ๋ ์ถฉ์กฑ And &

out_data15 <- exam %>% filter( class ==1 & math >= 50) # R??? & 1๊ฐ๋ง 

out_data15



# id class math english science

# 1  1     1   50      98      50

# 2  2     1   60      97      60





#?ฌ?ฌ์กฐ๊ฑด ์ค? ???ผ? ์ถฉ์กฑ OR |



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





# %in% ?ฌ?ฉ Mathing Operator



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









#group by ? ?๊ฐํ ?๊ณ? ???จ?ค๊ณ? 





#2019 06 14 ๊ธ์?ผ------------------------------------------------------------------------------



library(ggplot2)

library(dplyr) # filter()

#p.113 ?ผ?? ?ด๋ณด๊ธฐ 



#Q1 --------------------------------------------------------

#??์ฐ? ๋ฐฐ๊ธฐ?? ?ฐ?ผ ๊ณ ์?๋ก? ?ฐ๋น๊? ?ค๋ฅธ์? ??๋ณด๋ ค๊ณ? ??ค. displ(๋ฐฐ๊ธฐ?)?ด 4 ?ด??ธ์ง ??์ฐจ์? 5?ด??ธ ??์ฐ? ์ค? ?ด?ค ??์ฐจ์ hwy(๊ณ ์?๋ก? ?ฐ๋น?)๊ฐ ?๊ท ์ ?ผ๋ก? ? ???์ง ??๋ณด์ธ?.



#hint ?น?  ์กฐ๊ฑด? ?ด?น?? ?ฐ?ด?ฐ๋ฅ? ์ถ์ถ?ด ?๊ท ์ ๊ตฌํ๋ฉ? ?ด๊ฒฐํ  ? ?? ๋ฌธ์ . filter()๋ฅ? ?ด?ฉ?ด displ ๋ณ?๊ฐ ?น?  ๊ฐ์ ์ง? ?? ์ถ์ถ?ด ?๋ก์ด ๋ณ?? ? ?น? ? ?๊ท ์ ๊ตฌํด ๋ณด์ธ?.





# 1. displ 4?ด? ??์ฐ? 





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

#??์ฐ? ? ์ก? ??ฌ? ?ฐ?ผ ?? ?ฐ๋น๊? ?ค๋ฅธ์? ??๋ณด๋ ค๊ณ? ??ค. "audi"?? "toyota" ์ค? ?ด? manufacturer(??์ฐ? ? ์กฐํ?ฌ)? cty(?? ?ฐ๋น?)๊ฐ ?๊ท ์ ?ผ๋ก? ? ???์ง ??๋ณด์?ค.

#? ๋ฌธ์ ?? ??ผ? ? ์ฐจ๋ก ?ด๊ฒฐํ๋ฉ? ?ฉ??ค. ?จ, ๋ณ?? ๊ฐ์ด ?ซ?๊ฐ ???ผ ๋ฌธ์?ผ? ? ?ด ?ค๋ฆ๋?ค.



audi <- mpg %>% filter(manufacturer == "audi") #??์ฐ? ? ์ก? ??ฌ ?ด๋ฆ์ด audi ?ธ ? ์ถ์ถ 

audi



mean(audi$cty) # ์ถ์ถ? audi ??ค ์ค? cty ? ?๊ท? 



toyota <- mpg %>% filter(manufacturer == "toyota")

dim(toyota)

toyota

mean(toyota$cty)



#table(c("??ฐ? ?๊ท?"=mean(audi$cty),"? ??? ?๊ท?" = mean(toyota$cty)))

#qplot(c(mean(audi$cty),mean(toyota$cty)))



#Q3------------------------------------------------------------------

all <- mpg %>% filter(manufacturer == "chevrolet"|manufacturer == "ford"|manufacturer == "honda")

all2 <- mpg %>% filter(manufacturer %in% c("chevrolet","ford","honda")) # chevrolet, ford, honda ?ธ ??ค? ์ถ์ถ

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





mean(all$hwy) # ์ถ์ถ? ??ค?? hwy ?ด? ?๊ท? 

#[1] 22.50943



mean(all2$hwy)

#[1] 22.50943



#?ด? select





#?ฐ?ด?ฐ ? ์ฒ๋ฆฌ - "dplyr" package



# filter() ? ์ถ์ถ

# select() ?ด ์ถ์ถ

# arrange() ? ? ฌ

# mutate() ??๋ณ?

# summarise() summary?? ๋น์ท 

# group_by()  ์ง๋จ ๋ณ?

# left_join() ?ด ?ฉ์น๊ธฐ

# bind_rows() ? ?ฉ์น๊ธฐ







#select(col1,col2,col3,...) : ?์ถ์ถ 

















exam <- read.csv("C:/Users/CPB06GameN/Desktop/๊น?ฌ๊ด?/R_??ผ๋ชจ์/easy_R/csv_exam.csv")



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





df_math_eng <- exam %>% select(math,english) # ?ฌ?ฌ?ด ์ถ์ถ? ๊ฐ?ฅ

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







# ? ? ฅ? ?์ธ? ?? ?ด ???์ง.

# ๊ธฐ์ฌ / ?๊ธ?ด ์ง๋ณด ๋ณด์ ์ค๋?ธ์ง



#?จ? ์กฐํฉ filter() + select()



cl1<- exam%>%filter(class==1)



cl1

# id class math english science

# 1  1     1   50      98      50

# 2  2     1   60      97      60

# 3  3     1   45      86      78

# 4  4     1   30      98      58







df_comb <- exam %>% filter(class ==1 ) %>% 
  
  select(english) #??จ?๋ก? ??ผ?ด๊ณ?, ?ด?จ?(eng)๋ก? ??ผ?



#class๊ฐ 1?ธ ??ค ์ถ์ถ, eng ์ถ์ถ 



df_comb



# english

# 1      98

# 2      97

# 3      86

# 4      98


#arrange( ) : ??๋ก? ? ? ฌ(?ค๋ฆ์ฐจ?, ?ด๋ฆผ์ฐจ?)
df<-exam %>% arrange(desc(math)) #?ด๋ฆผ์ฐจ?
df
df<-exam %>% arrange(desc(class,math)) #?ค๋ฆ์ฐจ?
df


#?ฐ?ต1
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

#?ฐ?ต2
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

#?ด? ์ถ๊??? ๊ฒ? = select


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
  head(20) #?ค? ๊ฐ์๋ฅ? ?ค? ?  ? ??ค.
df
View(df)

#๊ดํธ? ๊ฐ์๋ฅ? ? ???ด?ผ.

mpg_new <-mpg %>% 
  mutate(total=cty+hwy,
         mean=total/2) %>% 
  arrange(desc(mean)) %>% 
  head(3)
mpg_new
View(mpg_new)

#summarise(   ) ?ต๊ณํจ?๋ฅ? ?ฌ?ฉ? ๋ณ?๋ฅ? ? ?น 
result <- exam %>% summarise(mean_math=mean(math))
str(result)
dim(result)

#group_by( ) ?ญ๋ชฉ๋ณ๋ก? ?ฐ?ด?ฐ๋ฅ? ๋ถ๋ฆฌ??ค.
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


#dplyr ์กฐํฉ?๊ธ? 
df<-mpg %>% 
  group_by(manufacturer) %>%                                 #? ์กฐ์์ฒด๋ณ๋ก? ๋ถ๋ฆฌ
  filter(class=='suv') %>%                                   #suv๋ง? ์ถ์ถ 
  mutate(tot = (cty+hwy)/2)%>%  
  summarise(mean_tot=mean(tot)) %>%
  arrange(desc(mean_tot)) %>% 
  head(5)
df

#๋ฌธ์  ?ด?ต? ๋ณด๋ฉด? 
df<-mpg %>% group_by(class) %>%                              #class๋ณ? ๋ถ๋ฆฌ
  summarise(mean_cty=mean(cty))                              #cty ?๊ท? ๊ตฌํ๊ธ? 
df  

df<-mpg %>% group_by(class) %>%                              #class๋ณ? ๋ถ๋ฆฌ
  summarise(mean_cty=mean(cty)) %>%                          #cty ?๊ท? ๊ตฌํ๊ธ?
  arrange(desc(mean_cty))                                    #?ด๋ฆผ์ฐจ? ? ? ฌ?๊ธ? 
df

mpg %>% group_by(manufacturer) %>%                           #manufacturer๋ณ? ๋ถ๋ฆฌ
  summarise(mean_hwy=mean(hwy)) %>%                          #hwy ?๊ท? ๊ตฌํ๊ธ?
  arrange(desc(mean_hwy)) %>%                                #?ด๋ฆผ์ฐจ? ? ? ฌ?๊ธ?
  head(3)                                                    #?? 3? ์ถ๋ ฅ

mpg %>% filter(class=="compact") %>%                         #compact ์ถ์ถ
  group_by(manufacturer) %>%                                 #manufacturer๋ณ? ๋ถ๋ฆฌ
  summarise(count=n()) %>%                                   #๋น๋ ๊ตฌํ๊ธ?
  arrange(desc(count))                                       #?ด๋ฆผ์ฐจ? ? ? ฌ

#?ฐ?ต ๋ณต์ต?๊ธ? 

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
# ?ฐ? ? : scater plot : ? ๋ณ?๊ฐ์ ?๊ด๊ด๊ณ? 
library(ggplot2)

#aes : aesthetic mapping = ๋ฏธ์ ?ธ ๋งตํ 
#1?จ๊ณ? : ๋ฐฐ๊ฒฝ ?๋ฉด์ ์ถ๋ ฅ, ๋ฐฐ๊ฒฝ? ??ฑ
ggplot(data = mpg, aes(x= displ, y=hwy))         
#2?จ๊ณ? : ?ฐ? ? ์ถ๊? 
ggplot(data = mpg, aes(x= displ, y=hwy))  
#3?จ๊ณ? : x,y ์ถ์ ๋ฒ์ ์ง?  
ggplot(data = mpg, aes(x= displ, y=hwy),) + geom_point(colour='red') + xlim(3,6) + ylim(10,30)

geom_                                                                             #๊ทธ๋? ์ข๋ฅ๋ฅ? ??ธ?  ? ??ค.
 
xlim(3,6) + ylim(10,30)                                                           #x,y์ถ? ๋ฒ์๋ฅ? ?ค? ?  ? ??ค.

plot(iris$Sepal.Length,iris$Sepal.Width)                                          #plot? ๊ฐ?ฅ?์ง๋ง? ???์ค?ด?ค. 
                                                                                  #ggplot?ฌ?ฉ ?ด?  
geom_point(colour='red')                                                          #? ?๊น? ๊ณ ๋ฅด๊ธ? ๊ฐ?ฅ 

ggplot(data=mpg, aes(x=cty, y=hwy)) +
  geom_point()

ggplot(data=midwest, aes(x=poptotal, y=popasian))+
  geom_point() +
  xlim(0,500000)+ylim(0,10000)
          



#2019. 06. 17. ========================================================================================================

filter() #? ์ถ์ถ
select() #?ด(๋ณ?) ์ถ์ถ 
arrange()#? ?ด

# ?ฐ? ? ๋ง๋ค๊ธ? 
# ๋ณ???? ๊ด๊ณ๋?? ????.

plot(iris$Sepal.Length,iris$Sepal.Width)                      #?ฐ ? ?ผ๋ก? ๊ตฌ์ฑ.
qplot(manufacturer, data=mpg, geom="bar",                     #์ปฌ๋ฌ???๊ฒ? ๊ทธ๋?๋ก?. ?๊น์? ???ผ๋ก?.
      fill=manufacturer)
#qplot ๋ณด๋ค ggplot? ๋ง์ด ?ฌ?ฉ??ค._??ธ?ฉ, ?จ?
#data๋ฅ? ?ฃ?ด์ฃผ๋ ๋ฐฉ์?ด ?ค๋ฅด๋ค._๋ณด๊ณ ?ฉ

#๋ฌธ์  1
ggplot(data = mpg, aes(x= cty, y=hwy))+ geom_point(colour='blue')
#๋ฌธ์  2
ggplot(data=midwest, aes(x=poptotal, y=popasian))+            #๊ฐ์ด ?ฐ ๊ฒ์? ๋ก๊ทธ๊ฐ์ผ๋ก? ์ปจํธ๋ก? 
  geom_point(colour='darkgreen')+
  xlim(0, 500000)+
  ylim(0, 10000)

#๋ง๋?๊ทธ๋? : bar chart, ์ง๋จ๊ฐ์ ์ฐจ์ด
# ?ฐ? ? : scater plot : ? ๋ณ?๊ฐ์ ?๊ด๊ด๊ณ? 
library(dplyr)
df_mpg<-mpg %>% group_by(drv) %>% summarise(mean_hwy=mean(hwy))
df_mpg

ggplot(data=df_mpg,aes(x=drv,y=mean_hwy))+
  geom_col()                                                   #๋ง๋?๊ทธ๋?? ์ง๋จ๊ฐ์ ์ฐจ์ด๋ฅ? ???  ? ์ข๋ค

ggplot(data=df_mpg,aes(x=reorder(drv,-mean_hwy),y=mean_hwy))+  #reorder๋ฅ? ์ถ๊??ด? ????ด๊ธ?(-๊ฐ์? ?ด๋ฆผ์ฐจ?)
  geom_col()    

#๋น๋ ๋ง๋? ๊ทธ๋?
ggplot(data=mpg,aes(x=drv))+
  geom_bar()   

ggplot(data=mpg,aes(x=manufacturer))+
  geom_bar()   

#?๊ท? ๋ง๋? ๊ทธ๋? : ?ฐ?ด?ฐ๋ฅ? ??ฝ? ?๊ท ํ๋ฅ? ๋จผ์? ๋ง๋  ? ?๊ท ํ๋ฅ? ?ด?ฉ?ด ๊ทธ๋?, geom_col()
#๋น๋ ๋ง๋? ๊ทธ๋? : ๋ณ๋๋ก? ?๋ฅ? ๋ง๋ค์ง ?๊ณ? ??๋ฃ๋?? ?ด?ฉ?ด ๋ฐ๋ก ๊ทธ๋? ??ฑ, geom_bar()

#๋ฌธ์  1_193p
mpg<-as.data.frame(ggplot2::mpg)
df_mpg<-mpg %>% filter(class=='suv') %>% 
  group_by(manufacturer)%>% 
  summarise(mean_cty=mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)                                                      
ggplot(data=df_mpg, aes(x=reorder(manufacturer, -mean_cty),y=mean_cty)) + geom_col()

#๋ฌธ์  2 
ggplot(data=mpg, aes(x=class)) + geom_bar()

#?๊ณ์ด ๊ทธ๋?
#geom_line = ?์ธก์ด ๊ฐ?ฅ??ค
#?  ๊ทธ๋? : line ์ฐจํธ, ?๊ณ์ด?ฐ?ด?ฐ(?๊ฐ์ด ?๋ฅด๋ฉด? ๋ฐ์? ?ฐ?ด?ฐ_์ฃผ์, ?ผ๊ธฐ์๋ณ?)
ggplot(data=economics,aes(x=date,y=unemploy))+geom_line()

#๋ฌธ์  1 
ggplot(data=economics,aes(x=date,y=psavert))+geom_line()

#์ฐธ๊ณ  ?ฌ?ด?ธ
#https://rpubs.com/
#https://rpubs.com/shailesh/

#?? ๊ทธ๋ฆผ : box plot, ?ฐ?ด?ฐ? ๋ถํฌ(?ฌ๋ถ์?๋ฅ? ์ค์ฌ?ผ๋ก?)
#?ฐ?ด?ฐ? ๋ถํฌ๋ฅ? ์ง์ฌ๊ฐํ ?? ๋ชจ์?ผ๋ก? ๋ถํฌ๋ฅ? ? ? ?๊ธ? ?๋ฌธ์ ?๊ท ๋ง ๋ณ? ?๋ณด๋ค ?ฐ?ด?ฐ? ?น์ง์ ? ? ??ธ?  ? ??ค.
ggplot(data=mpg,aes(x=drv,y=hwy))+geom_boxplot()
#?ค๋ช? ๋ฐ์ค๊ฐ ??๋ถ๋ถ์ ?ฐ?ด?ฐ๊ฐ ๋ชจ์ฌ?? ๊ณ?
#์ค์๊ฐ์ด ?? ? ๊ตต์? ? 

#๋ฌธ์  1 _ 198p
mpg<-as.data.frame(ggplot2::mpg)
mpg_box<-mpg %>% filter(class%in%c('compact','subcompact','suv'))
ggplot(data=mpg_box,aes(x=class,y=cty))+geom_boxplot()



#=============================================================================================================================
#?ฐ?ด?ฐ ?ฉ์น๊ธฐ 

#(1)๊ฐ๋ก? : ??=์ปฌ๋ผ(column)=?ด
test1<-data_frame(id=c(1,2,3,4,5),
                  midterm=c(60,80,70,90,85))
test1
test2<-data_frame(id=c(1,2,3,4,5),
                  final=c(70,65,98,42,35))
test2
#id๊ฐ ๊ฐ์ผ?๊น? ?ฉ์น๊ธฐ ?ฝ?ค. id๊ฐ ์ค์.
#left_join
total <- left_join(test1,test2, by='id')   #by_'id' ??ต ๊ฐ?ฅ
total
#id๊ฐ ?ค๋ฅด๋ฉด ๊ฒฐ์ธก์น?(NA)๊ฐ ??จ?ค. ๊ฐ??? ๋ง์ค?ผ ??ค.
#์ฒ์? ?? ?ผ์ช? id๊ฐ ๊ธฐ์??ด ??ค.

name<-data.frame(class=c(1,2,3,4,5),
                 teacher=c("kim","q","e","q","f"))
name

library(dplyr)
exam<-read.csv("csv_exam.csv")
csv

exam_new<-left_join(exam,name,by='class')
exam_new

#(2)?ธ๋ก? : ?์ง?=?(row)
#bind_rows()
group_a<-data.frame(id=c(1,2,3,4,5),
                    test=c(13,54,53,65,64))
group_a
group_b<-data.frame(id=c(6,7,8,9,10),
                    test=c(12,34,53,43,44))
group_b

group_all<- bind_rows(group_a,group_b)
group_all
#๊ฐ๊ฑฐ? ??? ค? ๋ฐ์?ค ๋ถ์ด? ๊ฒ์ด?ผ ?๊ด?ด ??ค.

f1 <- data.frame(f1=c("c","d","f",'q'),
                       price_f1=c(2.34,3.23,3.12,1.23),
                       stringsAsFactors=F)
f1

mpg_new<-left_join(mpg,fuel,by="f1")
View(mpg_new)

df<-mpg_new %>% select(model,f1,"price_f1") %>% head(5)
df

#๋ฌธ์  4 
midwest<-as.data.frame(ggplot2::midwest) #??ผ? ๋ถ๋ฌ?จ?ค 
midwest
midwest<-midwest %>% 
  mutate(ratio_a=(poptotal-popadults)/poptotal*100) #? ์ฒ? ?ธ๊ตฌ์? ?ฑ?ธ? ๋นผ๊ณ  ?ค? ? ์ฒด๋ก ??๊ณ? ๊ณฑํ๊ธ? 100?ด ๋ฐฑ๋ถ?จ
midwest %>% arrange(desc(ratio_a)) %>%    #?ฎ??์ฐจ์?ผ๋ก? ? ? ฌ
  select(county, ratio_a) %>% head(5)     #?ฐ?ด?ฐ ๊ณ ๋ฅด๊ธ? 

midwest<-midwest %>% 
  mutate(grade=ifelse(ratio_a>=40, "large",   #mutate? ๋ณ?๋ฅ? ์ถ๊??? ๊ฒ? ifelse๋ฅ? ?จ? ?ฑ๊ธ์ ???ค.
                      ifelse(ratio_a>=30,"middle","small")))
table(midwest$grade)

midwest %>% mutate(asdf=(popasian/poptotal)*100) %>%   #๋ฐฑ๋ถ?จ ๊ตฌํ๊ธ? ?ค? ์ฐธ๊ณ  
  arrange(asdf) %>%select(state, county, asdf) %>% head(10)  #select? ๋จผ์? ?ด์ฃผ๊ณ  ?ค?๋ก? ๋ฝ์?ด๊ธฐ๊ธฐ


#==============================================================================================================================

#๊ฒฐ์ธก์น? : NA(?ซ?), <NA>(๋ฌธ์)

df<-data.frame(sex=c('M','F',NA, 'M','F'),
               score=c(3,2,1,3,NA))
df

#๊ฒฐ์ธก์น? ??ธ ?จ? 
#is.na(df? ๊ฒฐ์ธก์น๊? ???)
df_is<-is.na(df)
df_is
table(df_is)  #๊ฒฐ์ธก์น? ๊ฐ?? ?? ๊ฐ?ฅ
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


#๊ฒฐ์ธก์น? ? ๊ฑฐํ๊ธ? 
#is.na
#na.omit
#na.rm=T

table(is.na(mpg))  #?ฐ?  ๊ฒฐ์ธก์น? ๊ฒ?ฌ?๊ธ?
library(dplyr)
df %>%filter(is.na(score))    #??ฐ? ?? ์ถ์ถ??ค. score? ?ด?น??!
df %>%filter(!is.na(score))   #๊ฒฐ์ธก์น๊? ?? ?? ?ญ? ??ค.

df_nomiss<-df %>%filter(!is.na(score)) & (!is.na(sex)) #??? ๊ฒฐ์ธก์น๋ง ??ด์ง๋ค. ๋ถํ?? ์ปฌ๋ผ? ๋ฌด์.
df_nomiss<-na.omit(df)                                 #๊ฒฐ์ธก์น๊? ???ผ? ??ด? ?ค ?? ๊ณ? ?ถ?ค๋ฉ? ?ด๊ฑ? ?ฌ?ฉ.
df_nomiss                                              #na.omit() : ๋ชจ๋  ์ปฌ๋ผ? ๊ฒฐ์ธก์น๋?? ๋ชจ๋ ? ๊ฑ? 
                                                       #is.na() : ?ด?น ์กฐ๊ฑด? ์ปฌ๋ผ๋ง? ?ญ?  

mean(df$score,na.rm=T)
sum(df$score, na.rm=T)

exam<-read.csv("csv_exam.csv")
exam
exam[c(3,8,15), 'math'] <- NA   #math?๋ง? ๊ฒฐ์ธก์น๋?? ์ง์ด?ฃ๊ธ?
exam

exam %>% summarise(mean_math=mean(math))
exam
exam %>% summarise(mean_math=mean(math, na.rm=T))    #๊ฒฐ์ธก์น๋?? ?? ? ?๊ท ์ ๊ตฌํ  ? ??ค.
exam %>% summarise(mean_math=mean(math, na.rm=T),
                   sum_math=sum(math, na.rm=T),
                   median_math=median(math, na.rm=T))

#๊ฒฐ์ธก์น๋?? ?๊ท ๊ฐ?ผ๋ก? ?ฃ๊ธ? (๋บ? ๊ฒ์ธ๊ฐ, ?๊ท ๊ฐ?ผ๋ก? ?ฃ? ๊ฒ์ธ๊ฐ)
mean_math<-mean(exam$math,na.rm=T)   #๊ฒฐ์ธก์น๋?? ๋บ ?๊ท? 55.23529
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
  filter(!is.na(hwy)) %>%              #๊ฒฐ์ธก์น? ? ๊ฑ?
  group_by(drv) %>%                    #drv๋ณ? ๋ถ๋ฆฌ 
  summarise(mean_hwy=mean(hwy))        #hwy ?๊ท? ๊ตฌํ๊ธ? 

#==============================================================================================================================
#?ด?์น? 
#? ??? ?ฌ๊ฒ? ๋ฒ์ด? ๊ฐ? 

#?ด?์น?(outlier)๋ฅ? ? ๊ฑ?
outlier<-data.frame(sex=c(1,2,1,3,2,1),
                  score=c(5,4,3,4,2,6))
outlier
table(outlier$sex)
table(outlier$score)


#?ด?์น๋?? ๊ฒฐ์ธก์ฒ๋ฆฌ 
outlier$sex<-ifelse(outlier$sex==3, NA, outlier$sex)
outlier
#๊ฒฐ์ธก์น? ์ฒ๋ฆฌ, ? ๊ฑ? 
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

#mpg ?ฐ?ด?ฐ? ๊ทน๋จ์น๋?? ๊ฒฐ์ธก์น๋ก ? ๊ฑ?
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

boxplot(mpg_new$cty)$stats                 #stats ?ด๊ฒ์? ??๋ฅ? ๋ณด์ฌ์ค?ค. 
                                                #       [,1]
                                                #  [1,]    9
                                                #  [2,]   14
                                                #  [3,]   17
                                                #  [4,]   19
                                                #  [5,]   26

mpg_new$cty<-ifelse(mpg_new$cty<9|mpg_new$cty>26, NA, mpg_new$cty)             #?ด?์น๋?? ? ๊ฑ?
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
raw_welfare<-read.spss(file='C:/Users/CPB06GameN/Desktop/๊น?ฌ๊ด?/R_??ผ๋ชจ์/easy_R/Koweps_etc/?ฐ?ด?ฐ/Koweps_hpc10_2015_beta1.sav',
                       to.data.frame = T)
welfare<-raw_welfare
coord_flip()   #๊ทธ๋? 90?

#x์ถ์ ๋ณ? ??๋ฅ? ์ง?  

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
class(welfare$sex)      #"numeric" ??ฑ๊ฐ์ด ?ซ?๋ฉ? ?ด? ๊ฒ? ????ด ??จ?ค.
table(welfare$sex)

welfare$sex<-ifelse(welfare$sex==9, NA, welfare$sex)
table(is.na(welfare$sex))      #is.na ๊ฐ์? ๊ฒฐ์ธก์น๋?? ??ธ?? ๊ฒ?.
welfare$sex<-ifelse(welfare$sex==1, 'male', 'female')
table(welfare$sex)
qplot(welfare$sex)             #๋ถํฌ??ธ

class(welfare$income)
summary(welfare$income)
qplot(welfare$income)         #Removed 12030 rows containing non-finite values (stat_bin). <= NA๊ฐ์ ? ๊ฑฐํ๊ณ? ????ค? ?ป.
qplot(welfare$income)+xlim(0,1000)
#?ด?์น? :  ๊ด์ธก๋ ?ฐ?ด?ฐ? ๋ฒ์?? ๋ง์ด ๋ฒ์ด? ?์ฃ? ??? ๊ฐ์ด? ?์ฃ? ?ฐ ๊ฐ?
welfare$income<-ifelse(welfare$incom %in% c(0, 9999), NA, welfare$income)
table(is.na(welfare$income))

sex_income<-welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(sex) %>% 
  summarise(mean_income=mean(income))
sex_income
ggplot(data = sex_income, aes(x=sex, y=mean_income))+geom_col()
#qplot=๊ฐ๋จ? ?๋ฌ?, ggplot=๋ณด๊ณ ?ฉ

class(welfare$birth)
summary(welfare$birth)
qplot(welfare$birth)
table(is.na(welfare$birth))
welfare$birth<-ifelse(welfare$birth==9999, NA, welfare$birth)
table(is.na(welfare$birth))

welfare$age<-2015-welfare$birth+1
summary(welfare$age)
qplot(welfare$age)

age_income<-welfare %>% 
  filter(!is.na(income)) %>%
  group_by(age) %>% 
  summarise(mean_income=mean(income))
head(age_income)
ggplot(data=age_income, aes(x=age,y=mean_income)) +geom_line()

#?ฐ? น??๋ณ? ?ฐ๋ฅ? ?๊ธ? ์ฐจ์ด
welfare<-welfare %>% 
  mutate(ageg=ifelse(age<30, 'young',
                     ifelse(age<=59,'middle', 'old')))
table(welfare$ageg)
qplot(welfare$ageg)

ageg_income<-welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(ageg) %>%                  #group_by๋ฅ? ?ด์ฃผ๋ฉด ?๋ฒ์ ๊ณ์ฐ?ด ๊ฐ?ฅ??ค.
  summarise(mean_income=mean(income))
ageg_income

ggplot(data=ageg_income, aes(x=ageg,y=mean_income))+geom_col()
ggplot(data=ageg_income, aes(x=ageg,y=mean_income))+
  geom_col()+
  scale_x_discrete(limits=c('young','middle','old'))        #??๋ฅ? ์ง? ?  ? ??ค.

#?ฐ? น?? ๋ฐ? ?ฑ๋ณ? ?๊ธ? ์ฐจ์ด
sex_income<-welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(ageg, sex) %>% 
  summarise(mean_income=mean(income))
sex_income

ggplot(data=sex_income, aes(x=ageg, y=mean_income, fill=sex))+
  geom_col()+
  scale_x_discrete(limits=c('young','middle','old'))

ggplot(data=sex_income, aes(x=ageg, y=mean_income, fill=sex))+
  geom_col(position = 'dodge')+                             #dodge ? ?ฉ์ณ์? ๊ทธ๋?๋ฅ? ?? ? ??ค.
  scale_x_discrete(limits=c('young','middle','old'))        

#class=๋ณ? ์ข๋ฅ๋ฅ? ๋ณด์ฌ์ฃผ๊ณ  table=๋ณ? ?ฐ?ด?ฐ ์ข๋ฅ? ?ฐ๋ฅ? ๊ฐ??
#n=n ?? ๊ฐ??๋ฅ? ?ธ? ๊ฒ?
#round๊ฐ ??ซ?  ๋ช๊น์ง ๋ณด์ด?์ง๋ฅ? ?ค? 
