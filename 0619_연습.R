install.packages("readxl")
library(dplyr)
library(readxl)
library(ggplot2)


df_x <- read.csv("실제진료정보_피부염_시군구.csv")
#df_x <- read.csv("실제진료정보_감기_시군구.csv")
#df_x <- read.csv("실제진료정보_눈병_시군구.csv")
#df_x <- read.csv("실제진료정보_천식_시군구.csv")


df<-df_x


df_new <- df %>% 
  filter(시군구지역코드 %in% c('30110', '30140', '30170', '30200', '30230'))
View(df_new)

ggplot(data=df_new, aes(x= 날짜, y=발생건수, col=시군구지역코드)) + geom_line() +xlim(20140101,20141231) 

install.packages("dygraphs")
library(dygraphs)
library(xts)
df_nnew<-xts(df_new, order.by=)





#수돈이형 
disease_cold_CGG <- read.csv("실제진료정보_감기_시군구.csv")

disease_eye_CGG <- read.csv("실제진료정보_눈병_시군구.csv")

disease_asthma_CGG <- read.csv("실제진료정보_천식_시군구.csv")

disease_skin_CGG <- read.csv("실제진료정보_피부염_시군구.csv")



# 대전시 관련 코드 생성

# (1)방법

disease_skin_CGG <- disease_skin_CGG %>% 
  
  filter(시군구지역코드 %in% c(30110, 30140, 30170, 30200, 30230))



# (2)방법

list_CGG <- read.csv("시군구 지역코드.csv")



head(list_CGG)



disease_skin_CGG <- left_join(disease_skin_CGG, list_CGG, by = "시군구지역코드")



disease_skin_CGG <- disease_skin_CGG %>% 
  
  filter(disease_skin_CGG$상위.시도지역코드 == 30)



disease_eye_CGG <- left_join(disease_eye_CGG, list_CGG, by = "시군구지역코드")



disease_eye_CGG <- disease_eye_CGG %>% 
  
  filter(disease_eye_CGG$상위.시도지역코드 == 30)



disease_asthma_CGG <- left_join(disease_asthma_CGG, list_CGG, by = "시군구지역코드")

disease_asthma_CGG <- disease_asthma_CGG %>% 
  
  filter(disease_asthma_CGG$상위.시도지역코드 == 30)



install.packages("dygraphs")

library(dygraphs)



disease_skin_CGG$날짜<-as.Date(disease_skin_CGG$날짜)
disease_skin_CGG

df<-disease_skin_CGG %>% 
  mutate(month=ifelse(날짜<="2014-01-15", "1/1",
                      ifelse(날짜<="2014-02-01", "1/15",
                             ifelse(날짜<="2014-02-15","2/1", "2/15")))) %>%
  group_by(month) %>% 
  summarise(n=n()) %>% 
  mutate(mean_month=mean(disease_skin_CGG$발생건수))
         
df
            
            
            
head(df$발생건수)
df

head(df$month)

df$month
ggplot(data = disease_skin_CGG, aes(x = 날짜, y = 발생건수, col = 시군구명)) +
  
  geom_line() +xlim("2014-01-01","2014-02-31")


#dplyr= %>% 
#ggplot2=그래프
#xlsx=엑셀파일 
#dygraphs=그래프



