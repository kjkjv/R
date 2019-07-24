#?´?›„ ê°•ì˜?Š” ?°?´?„° ? „ì²˜ë¦¬ - "dplyr" package



# filter()

# select()

# arrange()

# mutate() ?ŒŒ?ƒë³€?ˆ˜

# summarise() summary??€ ë¹„ìŠ· 

# group_by()  ì§‘ë‹¨ ë³?

# left_join() ?—´ ?•©ì¹˜ê¸°

# bind_rows() ?–‰ ?•©ì¹˜ê¸°











#6?¥ ============================================================================





#filter() :?–‰ì¶”ì¶œ

# %>% ?ŒŒ?´?”„?—°?‚°?

# exam?—?„œ classê°€ 1?¸ ê²½ìš°ë§? ì¶”ì¶œ?•˜?—¬ ì¶œë ¥ 

#"?–‰"?„ ì¶”ì¶œ 





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







out_data <- exam %>% filter(class ==1) #class 1?¸ ?°?´?„°ë§? ì¶”ì¶œ 





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







#?—¬?Ÿ¬ ì¡°ê±´ 



#?—¬?Ÿ¬ì¡°ê±´ ëª¨ë‘ ì¶©ì¡± And &

out_data15 <- exam %>% filter( class ==1 & math >= 50) # R?—?„œ?Š” & 1ê°œë§Œ 

out_data15



# id class math english science

# 1  1     1   50      98      50

# 2  2     1   60      97      60





#?—¬?Ÿ¬ì¡°ê±´ ì¤? ?•˜?‚˜?¼?„ ì¶©ì¡± OR |



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





# %in% ?‚¬?š© Mathing Operator



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









#group by ?›„ ?‹œê°í™” ?•˜ê³? ?Œ?•„?˜¨?‹¤ê³? 





#2019 06 14 ê¸ˆìš”?¼------------------------------------------------------------------------------



library(ggplot2)

library(dplyr) # filter()

#p.113 ?˜¼??„œ ?•´ë³´ê¸° 



#Q1 --------------------------------------------------------

#??™ì°? ë°°ê¸°?Ÿ‰?— ?”°?¼ ê³ ì†?„ë¡? ?—°ë¹„ê?€ ?‹¤ë¥¸ì?€ ?•Œ?•„ë³´ë ¤ê³? ?•œ?‹¤. displ(ë°°ê¸°?Ÿ‰)?´ 4 ?´?•˜?¸ì§€ ??™ì°¨ì?€ 5?´?ƒ?¸ ??™ì°? ì¤? ?–´?–¤ ??™ì°¨ì˜ hwy(ê³ ì†?„ë¡? ?—°ë¹?)ê°€ ?‰ê· ì ?œ¼ë¡? ?” ?†’??€ì§€ ?•Œ?•„ë³´ì„¸?š”.



#hint ?Š¹? • ì¡°ê±´?— ?•´?‹¹?•˜?Š” ?°?´?„°ë¥? ì¶”ì¶œ?•´ ?‰ê· ì„ êµ¬í•˜ë©? ?•´ê²°í•  ?ˆ˜ ?ˆ?Š” ë¬¸ì œ. filter()ë¥? ?´?š©?•´ displ ë³€?ˆ˜ê°€ ?Š¹? • ê°’ì„ ì§€?‹Œ ?–‰?„ ì¶”ì¶œ?•´ ?ƒˆë¡œìš´ ë³€?ˆ˜?— ?• ?‹¹?•œ ?›„ ?‰ê· ì„ êµ¬í•´ ë³´ì„¸?š”.





# 1. displ 4?´?•˜ ??™ì°? 





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

#??™ì°? ? œì¡? ?šŒ?‚¬?— ?”°?¼ ?„?‹œ ?—°ë¹„ê?€ ?‹¤ë¥¸ì?€ ?•Œ?•„ë³´ë ¤ê³? ?•œ?‹¤. "audi"??€ "toyota" ì¤? ?–´?Š manufacturer(??™ì°? ? œì¡°íšŒ?‚¬)?˜ cty(?„?‹œ ?—°ë¹?)ê°€ ?‰ê· ì ?œ¼ë¡? ?” ?†’??€ì§€ ?•Œ?•„ë³´ì‹œ?˜¤.

#?• ë¬¸ì œ??€ ?™?¼?•œ ? ˆì°¨ë¡œ ?•´ê²°í•˜ë©? ?©?‹ˆ?‹¤. ?‹¨, ë³€?ˆ˜?˜ ê°’ì´ ?ˆ«?ê°€ ?•„?‹ˆ?¼ ë¬¸ì?¼?Š” ? ?´ ?‹¤ë¦…ë‹ˆ?‹¤.



audi <- mpg %>% filter(manufacturer == "audi") #??™ì°? ? œì¡? ?šŒ?‚¬ ?´ë¦„ì´ audi ?¸ ?–‰ ì¶”ì¶œ 

audi



mean(audi$cty) # ì¶”ì¶œ?•œ audi ?–‰?“¤ ì¤? cty ?˜ ?‰ê·? 



toyota <- mpg %>% filter(manufacturer == "toyota")

dim(toyota)

toyota

mean(toyota$cty)



#table(c("?•„?š°?”” ?‰ê·?"=mean(audi$cty),"?† ?š”??€ ?‰ê·?" = mean(toyota$cty)))

#qplot(c(mean(audi$cty),mean(toyota$cty)))



#Q3------------------------------------------------------------------

all <- mpg %>% filter(manufacturer == "chevrolet"|manufacturer == "ford"|manufacturer == "honda")

all2 <- mpg %>% filter(manufacturer %in% c("chevrolet","ford","honda")) # chevrolet, ford, honda ?¸ ?–‰?“¤?„ ì¶”ì¶œ

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





mean(all$hwy) # ì¶”ì¶œ?•œ ?–‰?“¤?—?„œ hwy ?—´?„ ?‰ê·? 

#[1] 22.50943



mean(all2$hwy)

#[1] 22.50943



#?´?›„ select





#?°?´?„° ? „ì²˜ë¦¬ - "dplyr" package



# filter() ?–‰ ì¶”ì¶œ

# select() ?—´ ì¶”ì¶œ

# arrange() ? •? ¬

# mutate() ?ŒŒ?ƒë³€?ˆ˜

# summarise() summary??€ ë¹„ìŠ· 

# group_by()  ì§‘ë‹¨ ë³?

# left_join() ?—´ ?•©ì¹˜ê¸°

# bind_rows() ?–‰ ?•©ì¹˜ê¸°







#select(col1,col2,col3,...) : ?–‰ì¶”ì¶œ 

















exam <- read.csv("C:/Users/CPB06GameN/Desktop/ê¹€?¬ê´?/R_?ŒŒ?¼ëª¨ìŒ/easy_R/csv_exam.csv")



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





df_math_eng <- exam %>% select(math,english) # ?—¬?Ÿ¬?—´ ì¶”ì¶œ?„ ê°€?Š¥

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







# ? „? ¥?Ÿ‰ ?˜ˆì¸? ?›? „?´ ?•„?š”?•œì§€.

# ê¸°ì‚¬ / ?Œ“ê¸€?´ ì§„ë³´ ë³´ìˆ˜ ì¤‘ë„?¸ì§€



#?•¨?ˆ˜ ì¡°í•© filter() + select()



cl1<- exam%>%filter(class==1)



cl1

# id class math english science

# 1  1     1   50      98      50

# 2  2     1   60      97      60

# 3  3     1   45      86      78

# 4  4     1   30      98      58







df_comb <- exam %>% filter(class ==1 ) %>% 
  
  select(english) #?–‰?‹¨?œ„ë¡? ?˜?¼?‚´ê³?, ?—´?‹¨?œ„(eng)ë¡? ?˜?¼?ƒ„



#classê°€ 1?¸ ?–‰?“¤ ì¶”ì¶œ, eng ì¶”ì¶œ 



df_comb



# english

# 1      98

# 2      97

# 3      86

# 4      98


#arrange( ) : ?ˆœ?„œë¡? ? •? ¬(?˜¤ë¦„ì°¨?ˆœ, ?‚´ë¦¼ì°¨?ˆœ)
df<-exam %>% arrange(desc(math)) #?‚´ë¦¼ì°¨?ˆœ
df
df<-exam %>% arrange(desc(class,math)) #?˜¤ë¦„ì°¨?ˆœ
df


#?—°?Šµ1
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

#?—°?Šµ2
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

#?—´?„ ì¶”ê?€?•˜?Š” ê²? = select


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
  head(20) #?—¤?“œ ê°œìˆ˜ë¥? ?„¤? •?•  ?ˆ˜ ?ˆ?‹¤.
df
View(df)

#ê´„í˜¸?˜ ê°œìˆ˜ë¥? ?˜ ?ŒŒ?•…?•´?¼.

mpg_new <-mpg %>% 
  mutate(total=cty+hwy,
         mean=total/2) %>% 
  arrange(desc(mean)) %>% 
  head(3)
mpg_new
View(mpg_new)

#summarise(   ) ?†µê³„í•¨?ˆ˜ë¥? ?‚¬?š©?•œ ë³€?ˆ˜ë¥? ?• ?‹¹ 
result <- exam %>% summarise(mean_math=mean(math))
str(result)
dim(result)

#group_by( ) ?•­ëª©ë³„ë¡? ?°?´?„°ë¥? ë¶„ë¦¬?•œ?‹¤.
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


#dplyr ì¡°í•©?•˜ê¸? 
df<-mpg %>% 
  group_by(manufacturer) %>%                                 #? œì¡°ì—…ì²´ë³„ë¡? ë¶„ë¦¬
  filter(class=='suv') %>%                                   #suvë§? ì¶”ì¶œ 
  mutate(tot = (cty+hwy)/2)%>%  
  summarise(mean_tot=mean(tot)) %>%
  arrange(desc(mean_tot)) %>% 
  head(5)
df

#ë¬¸ì œ ?•´?‹µ?„ ë³´ë©´?„œ 
df<-mpg %>% group_by(class) %>%                              #classë³? ë¶„ë¦¬
  summarise(mean_cty=mean(cty))                              #cty ?‰ê·? êµ¬í•˜ê¸? 
df  

df<-mpg %>% group_by(class) %>%                              #classë³? ë¶„ë¦¬
  summarise(mean_cty=mean(cty)) %>%                          #cty ?‰ê·? êµ¬í•˜ê¸?
  arrange(desc(mean_cty))                                    #?‚´ë¦¼ì°¨?ˆœ ? •? ¬?•˜ê¸? 
df

mpg %>% group_by(manufacturer) %>%                           #manufacturerë³? ë¶„ë¦¬
  summarise(mean_hwy=mean(hwy)) %>%                          #hwy ?‰ê·? êµ¬í•˜ê¸?
  arrange(desc(mean_hwy)) %>%                                #?‚´ë¦¼ì°¨?ˆœ ? •? ¬?•˜ê¸?
  head(3)                                                    #?ƒ?œ„ 3?–‰ ì¶œë ¥

mpg %>% filter(class=="compact") %>%                         #compact ì¶”ì¶œ
  group_by(manufacturer) %>%                                 #manufacturerë³? ë¶„ë¦¬
  summarise(count=n()) %>%                                   #ë¹ˆë„ êµ¬í•˜ê¸?
  arrange(desc(count))                                       #?‚´ë¦¼ì°¨?ˆœ ? •? ¬

#?—°?Šµ ë³µìŠµ?•˜ê¸? 

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
# ?‚°? ?„ : scater plot : ?‘ ë³€?ˆ˜ê°„ì˜ ?ƒê´€ê´€ê³? 
library(ggplot2)

#aes : aesthetic mapping = ë¯¸ì ?¸ ë§µí•‘ 
#1?‹¨ê³? : ë°°ê²½ ?™”ë©´ì„ ì¶œë ¥, ë°°ê²½?„ ?ƒ?„±
ggplot(data = mpg, aes(x= displ, y=hwy))         
#2?‹¨ê³? : ?‚°? ?„ ì¶”ê?€ 
ggplot(data = mpg, aes(x= displ, y=hwy))  
#3?‹¨ê³? : x,y ì¶•ì˜ ë²”ìœ„ ì§€? • 
ggplot(data = mpg, aes(x= displ, y=hwy),) + geom_point(colour='red') + xlim(3,6) + ylim(10,30)

geom_                                                                             #ê·¸ë˜?”„ ì¢…ë¥˜ë¥? ?™•?¸?•  ?ˆ˜ ?ˆ?‹¤.
 
xlim(3,6) + ylim(10,30)                                                           #x,yì¶? ë²”ìœ„ë¥? ?„¤? •?•  ?ˆ˜ ?ˆ?‹¤.

plot(iris$Sepal.Length,iris$Sepal.Width)                                          #plot?„ ê°€?Š¥?•˜ì§€ë§? ??€?ˆ˜ì¤€?´?‹¤. 
                                                                                  #ggplot?‚¬?š© ?´?œ  
geom_point(colour='red')                                                          #? ?ƒ‰ê¹? ê³ ë¥´ê¸? ê°€?Š¥ 

ggplot(data=mpg, aes(x=cty, y=hwy)) +
  geom_point()

ggplot(data=midwest, aes(x=poptotal, y=popasian))+
  geom_point() +
  xlim(0,500000)+ylim(0,10000)
          



#2019. 06. 17. ========================================================================================================

filter() #?–‰ ì¶”ì¶œ
select() #?—´(ë³€?ˆ˜) ì¶”ì¶œ 
arrange()#? •?—´

# ?‚°? ?„ ë§Œë“¤ê¸? 
# ë³€?ˆ˜??€?˜ ê´€ê³„ë?? ?‚˜??€?ƒ„.

plot(iris$Sepal.Length,iris$Sepal.Width)                      #?° ? ?œ¼ë¡? êµ¬ì„±.
qplot(manufacturer, data=mpg, geom="bar",                     #ì»¬ëŸ¬??€?•˜ê²? ê·¸ë˜?”„ë¡?. ?ƒ‰ê¹”ì?€ ??™?œ¼ë¡?.
      fill=manufacturer)
#qplot ë³´ë‹¤ ggplot?„ ë§ì´ ?‚¬?š©?•œ?‹¤._?™•?¸?š©, ?‹¨?ˆœ
#dataë¥? ?„£?–´ì£¼ëŠ” ë°©ì‹?´ ?‹¤ë¥´ë‹¤._ë³´ê³ ?š©

#ë¬¸ì œ 1
ggplot(data = mpg, aes(x= cty, y=hwy))+ geom_point(colour='blue')
#ë¬¸ì œ 2
ggplot(data=midwest, aes(x=poptotal, y=popasian))+            #ê°’ì´ ?° ê²ƒì?€ ë¡œê·¸ê°’ìœ¼ë¡? ì»¨íŠ¸ë¡? 
  geom_point(colour='darkgreen')+
  xlim(0, 500000)+
  ylim(0, 10000)

#ë§‰ë?€ê·¸ë˜?”„ : bar chart, ì§‘ë‹¨ê°„ì˜ ì°¨ì´
# ?‚°? ?„ : scater plot : ?‘ ë³€?ˆ˜ê°„ì˜ ?ƒê´€ê´€ê³? 
library(dplyr)
df_mpg<-mpg %>% group_by(drv) %>% summarise(mean_hwy=mean(hwy))
df_mpg

ggplot(data=df_mpg,aes(x=drv,y=mean_hwy))+
  geom_col()                                                   #ë§‰ë?€ê·¸ë˜?”„?Š” ì§‘ë‹¨ê°„ì˜ ì°¨ì´ë¥? ?‘œ?‹œ?•  ?•Œ ì¢‹ë‹¤

ggplot(data=df_mpg,aes(x=reorder(drv,-mean_hwy),y=mean_hwy))+  #reorderë¥? ì¶”ê?€?•´?„œ ?‚˜??€?‚´ê¸?(-ê°’ì?€ ?‚´ë¦¼ì°¨?ˆœ)
  geom_col()    

#ë¹ˆë„ ë§‰ë?€ ê·¸ë˜?”„
ggplot(data=mpg,aes(x=drv))+
  geom_bar()   

ggplot(data=mpg,aes(x=manufacturer))+
  geom_bar()   

#?‰ê·? ë§‰ë?€ ê·¸ë˜?”„ : ?°?´?„°ë¥? ?š”?•½?•œ ?‰ê· í‘œë¥? ë¨¼ì?€ ë§Œë“  ?›„ ?‰ê· í‘œë¥? ?´?š©?•´ ê·¸ë˜?”„, geom_col()
#ë¹ˆë„ ë§‰ë?€ ê·¸ë˜?”„ : ë³„ë„ë¡? ?‘œë¥? ë§Œë“¤ì§€ ?•Šê³? ?›?ë£Œë?? ?´?š©?•´ ë°”ë¡œ ê·¸ë˜?”„ ?ƒ?„±, geom_bar()

#ë¬¸ì œ 1_193p
mpg<-as.data.frame(ggplot2::mpg)
df_mpg<-mpg %>% filter(class=='suv') %>% 
  group_by(manufacturer)%>% 
  summarise(mean_cty=mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)                                                      
ggplot(data=df_mpg, aes(x=reorder(manufacturer, -mean_cty),y=mean_cty)) + geom_col()

#ë¬¸ì œ 2 
ggplot(data=mpg, aes(x=class)) + geom_bar()

#?‹œê³„ì—´ ê·¸ë˜?”„
#geom_line = ?˜ˆì¸¡ì´ ê°€?Š¥?•˜?‹¤
#?„  ê·¸ë˜?”„ : line ì°¨íŠ¸, ?‹œê³„ì—´?°?´?„°(?‹œê°„ì´ ?ë¥´ë©´?„œ ë°œìƒ?•œ ?°?´?„°_ì£¼ì‹, ?¼ê¸°ì˜ˆë³?)
ggplot(data=economics,aes(x=date,y=unemploy))+geom_line()

#ë¬¸ì œ 1 
ggplot(data=economics,aes(x=date,y=psavert))+geom_line()

#ì°¸ê³  ?‚¬?´?Š¸
#https://rpubs.com/
#https://rpubs.com/shailesh/

#?ƒ? ê·¸ë¦¼ : box plot, ?°?´?„°?˜ ë¶„í¬(?‚¬ë¶„ìœ„?ˆ˜ë¥? ì¤‘ì‹¬?œ¼ë¡?)
#?°?´?„°?˜ ë¶„í¬ë¥? ì§ì‚¬ê°í˜• ?ƒ? ëª¨ì–‘?œ¼ë¡? ë¶„í¬ë¥? ?•Œ ?ˆ˜ ?ˆê¸? ?•Œë¬¸ì— ?‰ê· ë§Œ ë³? ?•Œë³´ë‹¤ ?°?´?„°?˜ ?Š¹ì§•ì„ ?” ?˜ ?™•?¸?•  ?ˆ˜ ?ˆ?‹¤.
ggplot(data=mpg,aes(x=drv,y=hwy))+geom_boxplot()
#?„¤ëª? ë°•ìŠ¤ê°€ ??€ë¶€ë¶„ì˜ ?°?´?„°ê°€ ëª¨ì—¬?ˆ?Š” ê³?
#ì¤‘ì•™ê°’ì´ ?ƒ? ?•ˆ êµµì?€ ?„ 

#ë¬¸ì œ 1 _ 198p
mpg<-as.data.frame(ggplot2::mpg)
mpg_box<-mpg %>% filter(class%in%c('compact','subcompact','suv'))
ggplot(data=mpg_box,aes(x=class,y=cty))+geom_boxplot()



#=============================================================================================================================
#?°?´?„° ?•©ì¹˜ê¸° 

#(1)ê°€ë¡? : ?ˆ˜?‰=ì»¬ëŸ¼(column)=?—´
test1<-data_frame(id=c(1,2,3,4,5),
                  midterm=c(60,80,70,90,85))
test1
test2<-data_frame(id=c(1,2,3,4,5),
                  final=c(70,65,98,42,35))
test2
#idê°€ ê°™ìœ¼?‹ˆê¹? ?•©ì¹˜ê¸° ?‰½?‹¤. idê°€ ì¤‘ìš”.
#left_join
total <- left_join(test1,test2, by='id')   #by_'id' ?ƒ?µ ê°€?Š¥
total
#idê°€ ?‹¤ë¥´ë©´ ê²°ì¸¡ì¹?(NA)ê°€ ?‚˜?˜¨?‹¤. ê°??ˆ˜?„ ë§Ÿì¤˜?•¼ ?•œ?‹¤.
#ì²˜ìŒ?— ?ˆ?Š” ?™¼ìª? idê°€ ê¸°ì?€?´ ?œ?‹¤.

name<-data.frame(class=c(1,2,3,4,5),
                 teacher=c("kim","q","e","q","f"))
name

library(dplyr)
exam<-read.csv("csv_exam.csv")
csv

exam_new<-left_join(exam,name,by='class')
exam_new

#(2)?„¸ë¡? : ?ˆ˜ì§?=?–‰(row)
#bind_rows()
group_a<-data.frame(id=c(1,2,3,4,5),
                    test=c(13,54,53,65,64))
group_a
group_b<-data.frame(id=c(6,7,8,9,10),
                    test=c(12,34,53,43,44))
group_b

group_all<- bind_rows(group_a,group_b)
group_all
#ê°™ê±°?‚˜ ??€? ¤?„ ë°‘ì—?‹¤ ë¶™ì´?Š” ê²ƒì´?¼ ?ƒê´€?´ ?—†?‹¤.

f1 <- data.frame(f1=c("c","d","f",'q'),
                       price_f1=c(2.34,3.23,3.12,1.23),
                       stringsAsFactors=F)
f1

mpg_new<-left_join(mpg,fuel,by="f1")
View(mpg_new)

df<-mpg_new %>% select(model,f1,"price_f1") %>% head(5)
df

#ë¬¸ì œ 4 
midwest<-as.data.frame(ggplot2::midwest) #?ŒŒ?¼?„ ë¶ˆëŸ¬?˜¨?‹¤ 
midwest
midwest<-midwest %>% 
  mutate(ratio_a=(poptotal-popadults)/poptotal*100) #? „ì²? ?¸êµ¬ì—?„œ ?„±?¸?„ ë¹¼ê³  ?‹¤?‹œ ? „ì²´ë¡œ ?‚˜?ˆ„ê³? ê³±í•˜ê¸? 100?´ ë°±ë¶„?œ¨
midwest %>% arrange(desc(ratio_a)) %>%    #?‚®??€ì°¨ìˆœ?œ¼ë¡? ? •? ¬
  select(county, ratio_a) %>% head(5)     #?°?´?„° ê³ ë¥´ê¸? 

midwest<-midwest %>% 
  mutate(grade=ifelse(ratio_a>=40, "large",   #mutate?Š” ë³€?ˆ˜ë¥? ì¶”ê?€?•˜?Š” ê²? ifelseë¥? ?¨?„œ ?“±ê¸‰ì„ ?‚˜?ˆˆ?‹¤.
                      ifelse(ratio_a>=30,"middle","small")))
table(midwest$grade)

midwest %>% mutate(asdf=(popasian/poptotal)*100) %>%   #ë°±ë¶„?œ¨ êµ¬í•˜ê¸? ?‹¤?‹œ ì°¸ê³  
  arrange(asdf) %>%select(state, county, asdf) %>% head(10)  #select?„ ë¨¼ì?€ ?•´ì£¼ê³  ?—¤?“œë¡? ë½‘ì•„?‚´ê¸°ê¸°


#==============================================================================================================================

#ê²°ì¸¡ì¹? : NA(?ˆ«?), <NA>(ë¬¸ì)

df<-data.frame(sex=c('M','F',NA, 'M','F'),
               score=c(3,2,1,3,NA))
df

#ê²°ì¸¡ì¹? ?™•?¸ ?•¨?ˆ˜ 
#is.na(df?— ê²°ì¸¡ì¹˜ê?€ ?ˆ?‚˜?)
df_is<-is.na(df)
df_is
table(df_is)  #ê²°ì¸¡ì¹? ê°??ˆ˜ ?ŒŒ?•… ê°€?Š¥
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


#ê²°ì¸¡ì¹? ? œê±°í•˜ê¸? 
#is.na
#na.omit
#na.rm=T

table(is.na(mpg))  #?š°?„  ê²°ì¸¡ì¹? ê²€?‚¬?•˜ê¸?
library(dplyr)
df %>%filter(is.na(score))    #?•„?„°?Š” ?–‰?„ ì¶”ì¶œ?•œ?‹¤. score?— ?•´?‹¹?•˜?Š”!
df %>%filter(!is.na(score))   #ê²°ì¸¡ì¹˜ê?€ ?ˆ?Š” ?–‰?„ ?‚­? œ?•œ?‹¤.

df_nomiss<-df %>%filter(!is.na(score)) & (!is.na(sex)) #?›?•˜?Š” ê²°ì¸¡ì¹˜ë§Œ ?—†?–´ì§„ë‹¤. ë¶ˆí•„?š”?•œ ì»¬ëŸ¼?„ ë¬´ì‹œ.
df_nomiss<-na.omit(df)                                 #ê²°ì¸¡ì¹˜ê?€ ?•˜?‚˜?¼?„ ?ˆ?–´?„œ ?‹¤ ?—†?• ê³? ?‹¶?‹¤ë©? ?´ê±? ?‚¬?š©.
df_nomiss                                              #na.omit() : ëª¨ë“  ì»¬ëŸ¼?˜ ê²°ì¸¡ì¹˜ë?? ëª¨ë‘ ? œê±? 
                                                       #is.na() : ?•´?‹¹ ì¡°ê±´?˜ ì»¬ëŸ¼ë§? ?‚­? œ 

mean(df$score,na.rm=T)
sum(df$score, na.rm=T)

exam<-read.csv("csv_exam.csv")
exam
exam[c(3,8,15), 'math'] <- NA   #math?—ë§? ê²°ì¸¡ì¹˜ë?? ì§‘ì–´?„£ê¸?
exam

exam %>% summarise(mean_math=mean(math))
exam
exam %>% summarise(mean_math=mean(math, na.rm=T))    #ê²°ì¸¡ì¹˜ë?? ?—†?• ?„œ ?‰ê· ì„ êµ¬í•  ?ˆ˜ ?ˆ?‹¤.
exam %>% summarise(mean_math=mean(math, na.rm=T),
                   sum_math=sum(math, na.rm=T),
                   median_math=median(math, na.rm=T))

#ê²°ì¸¡ì¹˜ë?? ?‰ê· ê°’?œ¼ë¡? ?„£ê¸? (ëº? ê²ƒì¸ê°€, ?‰ê· ê°’?œ¼ë¡? ?„£?„ ê²ƒì¸ê°€)
mean_math<-mean(exam$math,na.rm=T)   #ê²°ì¸¡ì¹˜ë?? ëº€ ?‰ê·? 55.23529
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
  filter(!is.na(hwy)) %>%              #ê²°ì¸¡ì¹? ? œê±?
  group_by(drv) %>%                    #drvë³? ë¶„ë¦¬ 
  summarise(mean_hwy=mean(hwy))        #hwy ?‰ê·? êµ¬í•˜ê¸? 

#==============================================================================================================================
#?´?ƒì¹? 
#? •?ƒ?—?„œ ?¬ê²? ë²—ì–´?‚œ ê°? 

#?´?ƒì¹?(outlier)ë¥? ? œê±?
outlier<-data.frame(sex=c(1,2,1,3,2,1),
                  score=c(5,4,3,4,2,6))
outlier
table(outlier$sex)
table(outlier$score)


#?´?ƒì¹˜ë?? ê²°ì¸¡ì²˜ë¦¬ 
outlier$sex<-ifelse(outlier$sex==3, NA, outlier$sex)
outlier
#ê²°ì¸¡ì¹? ì²˜ë¦¬, ? œê±? 
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

#mpg ?°?´?„°?˜ ê·¹ë‹¨ì¹˜ë?? ê²°ì¸¡ì¹˜ë¡œ ? œê±?
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

boxplot(mpg_new$cty)$stats                 #stats ?´ê²ƒì?€ ?ƒ?ƒœë¥? ë³´ì—¬ì¤€?‹¤. 
                                                #       [,1]
                                                #  [1,]    9
                                                #  [2,]   14
                                                #  [3,]   17
                                                #  [4,]   19
                                                #  [5,]   26

mpg_new$cty<-ifelse(mpg_new$cty<9|mpg_new$cty>26, NA, mpg_new$cty)             #?´?ƒì¹˜ë?? ? œê±?
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
raw_welfare<-read.spss(file='C:/Users/CPB06GameN/Desktop/ê¹€?¬ê´?/R_?ŒŒ?¼ëª¨ìŒ/easy_R/Koweps_etc/?°?´?„°/Koweps_hpc10_2015_beta1.sav',
                       to.data.frame = T)
welfare<-raw_welfare
coord_flip()   #ê·¸ë˜?”„ 90?„

#xì¶•ì˜ ë³€?ˆ˜ ?ˆœ?„œë¥? ì§€? • 

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
class(welfare$sex)      #"numeric" ?†?„±ê°’ì´ ?ˆ«?ë©? ?´? ‡ê²? ??€?…?´ ?‚˜?˜¨?‹¤.
table(welfare$sex)

welfare$sex<-ifelse(welfare$sex==9, NA, welfare$sex)
table(is.na(welfare$sex))      #is.na ê°’ì?€ ê²°ì¸¡ì¹˜ë?? ?™•?¸?•˜?Š” ê²?.
welfare$sex<-ifelse(welfare$sex==1, 'male', 'female')
table(welfare$sex)
qplot(welfare$sex)             #ë¶„í¬?™•?¸

class(welfare$income)
summary(welfare$income)
qplot(welfare$income)         #Removed 12030 rows containing non-finite values (stat_bin). <= NAê°’ì„ ? œê±°í•˜ê³? ?‘œ?‹œ?•œ?‹¤?Š” ?œ».
qplot(welfare$income)+xlim(0,1000)
#?´?ƒì¹? :  ê´€ì¸¡ëœ ?°?´?„°?˜ ë²”ìœ„?—?„œ ë§ì´ ë²—ì–´?‚œ ?•„ì£? ?‘??€ ê°’ì´?‚˜ ?•„ì£? ?° ê°?
welfare$income<-ifelse(welfare$incom %in% c(0, 9999), NA, welfare$income)
table(is.na(welfare$income))

sex_income<-welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(sex) %>% 
  summarise(mean_income=mean(income))
sex_income
ggplot(data = sex_income, aes(x=sex, y=mean_income))+geom_col()
#qplot=ê°„ë‹¨?•œ ?—…ë¬?, ggplot=ë³´ê³ ?š©

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

#?—°? ¹??€ë³? ?”°ë¥? ?›”ê¸? ì°¨ì´
welfare<-welfare %>% 
  mutate(ageg=ifelse(age<30, 'young',
                     ifelse(age<=59,'middle', 'old')))
table(welfare$ageg)
qplot(welfare$ageg)

ageg_income<-welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(ageg) %>%                  #group_byë¥? ?•´ì£¼ë©´ ?•œë²ˆì— ê³„ì‚°?´ ê°€?Š¥?•˜?‹¤.
  summarise(mean_income=mean(income))
ageg_income

ggplot(data=ageg_income, aes(x=ageg,y=mean_income))+geom_col()
ggplot(data=ageg_income, aes(x=ageg,y=mean_income))+
  geom_col()+
  scale_x_discrete(limits=c('young','middle','old'))        #?ˆœ?„œë¥? ì§€? •?•  ?ˆ˜ ?ˆ?‹¤.

#?—°? ¹??€ ë°? ?„±ë³? ?›”ê¸? ì°¨ì´
sex_income<-welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(ageg, sex) %>% 
  summarise(mean_income=mean(income))
sex_income

ggplot(data=sex_income, aes(x=ageg, y=mean_income, fill=sex))+
  geom_col()+
  scale_x_discrete(limits=c('young','middle','old'))

ggplot(data=sex_income, aes(x=ageg, y=mean_income, fill=sex))+
  geom_col(position = 'dodge')+                             #dodge ?Š” ?•©ì³ìˆ?Š” ê·¸ë˜?”„ë¥? ?‚˜?ˆŒ ?ˆ˜ ?ˆ?‹¤.
  scale_x_discrete(limits=c('young','middle','old'))        

#class=ë³€?ˆ˜ ì¢…ë¥˜ë¥? ë³´ì—¬ì£¼ê³  table=ë³€?ˆ˜ ?°?´?„° ì¢…ë¥˜?— ?”°ë¥? ê°??ˆ˜
#n=n ?–‰?˜ ê°??ˆ˜ë¥? ?„¸?Š” ê²?
#roundê°€ ?†Œ?ˆ«?  ëª‡ê¹Œì§€ ë³´ì´?Š”ì§€ë¥? ?„¤? •
