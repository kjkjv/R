library(dplyr)
library(readxl)
library(ggplot2)

raw_weather<-read.csv(file="C:/merge2.csv",
                      stringsAsFactors=F)
View(raw_weather)

weather<-raw_weather



library(dygraphs)

library(xlsx)

library(dplyr)

library(ggplot2)

library(xts)

View(weather)




head(weather)
tail(weather)
str(weather)
dim(weather)
summary(weather)

weather<-rename(weather,
                jeju=185, 189, 188, 187, 265, 184,
                gn=294, 284, 253, 295, 288, 255, 289, 257, 263, 192, 155, 162, 264, 285,
                gb=283,279, 273, 271, 137, 136, 277, 272, 281, 115, 130, 278, 276, 138,
                jn=259, 262,266,165, 164, 258, 174,168,252,170,260,256,175,268,261,169,
                jb=172, 251, 140,247,243,254,244,248, 146,245,
                cn=238, 235, 236, 129, 232, 177,
                cb=226,221,131,135,127,
                gw=105,100, 106, 104, 93,214,90,121, 114,211,217,95, 101, 216,212,
                ggd=98, 119,202,203,99)



















weather_1 <-weather %>% 
  
  filter(지점 %in% c(185, 189, 188, 187, 265, 184))
View(weather_1)

weather_2 <-weather %>% 
  
  filter(지점 %in% c(294, 284, 253, 295, 288, 255, 289, 257, 263, 192, 155, 162, 264, 285))

weather_3 <-weather %>% 
  
  filter(지점 %in% c(283,279, 273, 271, 137, 136, 277, 272, 281, 115, 130, 278, 276, 138))

View(weather_3)


weather_4 <-weather %>% 
  
  filter(지점 %in% c(259, 262,266,165, 164, 258, 174,168,252,170,260,256,175,268,261,169))

weather_5 <-weather %>% 
  
  filter(지점 %in% c(172, 251, 140,247,243,254,244,248, 146,245))

weather_6 <-weather %>% 
  
  filter(지점 %in% c(238, 235, 236, 129, 232, 177))

weather_7 <-weather %>% 
  
  filter(지점 %in% c(226,221,131,135,127))
weather_8 <-weather %>% 
  
  filter(지점 %in% c(105,100, 106, 104, 93,214,90,121, 114,211,217,95, 101, 216,212 ))
weather_9 <-weather %>% 
  
  filter(지점 %in% c(98, 119,202,203,99))


weather_new<-rename(weather,
                    "제주도"=weather_1,
                    "경남"=weather_2,
                    "경북"=weather_3,
                    "전남"=weather_4,
                    "전북"=weather_5,
                    "충남"=weather_6,
                    "충북"=weather_7,
                    "강원"=weather_8,
                    "경기도"=weather_9)

weather$지점 <- as.integer(weather$지점)
weather <- weather %>% 
  filter(!is.na(weather$지점) )
weather$지점 = ifelse(weather$지점==185|weather$지점==189|weather$지점==188|weather$지점==187|weather$지점==265|weather$지점==184, "제주도", 
                     ifelse(weather$지점==294|weather$지점==284|weather$지점==253|weather$지점==295|weather$지점==288|weather$지점==255|weather$지점==289|weather$지점==257|weather$지점==263|weather$지점==192|weather$지점==155|weather$지점==162|weather$지점==264|weather$지점==285, "경남", 
                            ifelse(weather$지점==283|weather$지점==279|weather$지점==273|weather$지점==271|weather$지점==137|weather$지점==136|weather$지점==277|weather$지점==272|weather$지점==281|weather$지점==115|weather$지점==130|weather$지점==278|weather$지점==276|weather$지점==138, "경북", 
                                   ifelse(weather$지점==259|weather$지점==262|weather$지점==266|weather$지점==165|weather$지점==164|weather$지점==258|weather$지점==174|weather$지점==168|weather$지점==252|weather$지점==170|weather$지점==260|weather$지점==256|weather$지점==175|weather$지점==268|weather$지점==261|weather$지점==169, "전남", 
                                          ifelse(weather$지점==172|weather$지점==251|weather$지점==140|weather$지점==247|weather$지점==243|weather$지점==254|weather$지점==244|weather$지점==248|weather$지점== 146|weather$지점==245, "전북 ", 
                                                ifelse(weather$지점==238|weather$지점==235|weather$지점==236|weather$지점==129|weather$지점==232|weather$지점==177, "충남", 
                                                       ifelse(weather$지점==226|weather$지점==221|weather$지점==131|weather$지점==135|weather$지점==127, "충북", 
                                                              ifelse(weather$지점==105|weather$지점==100|weather$지점==106|weather$지점==104|weather$지점==93|weather$지점==214|weather$지점==90|weather$지점==121|weather$지점==114|weather$지점==211|weather$지점==217|weather$지점==95|weather$지점==101|weather$지점==216|weather$지점==212, "강원", 
                                                                     ifelse(weather$지점==98|weather$지점==119|weather$지점==202|weather$지점==203|weather$지점==99, "경기도",NA)))))))))


str(weather)




View(weather_9)



list_CGG <- read.csv("./kpublic_20190430/시군구 지역코드.csv")



head(list_CGG)



disease_cold_CGG <- left_join(disease_cold_CGG, list_CGG, by = "시군구지역코드")



disease_cold_CGG <- disease_cold_CGG %>% 
  
  filter(disease_cold_CGG$상위.시도지역코드 == 30)



disease_eye_CGG <- left_join(disease_eye_CGG, list_CGG, by = "시군구지역코드")



disease_eye_CGG <- disease_eye_CGG %>% 
  
  filter(disease_eye_CGG$상위.시도지역코드 == 30)



disease_asthma_CGG <- left_join(disease_asthma_CGG, list_CGG, by = "시군구지역코드")

disease_asthma_CGG <- disease_asthma_CGG %>% 
  
  filter(disease_asthma_CGG$상위.시도지역코드 == 30)







disease_cold_CGG$날짜 <- as.Date(disease_cold_CGG$날짜)



tibble_disease_cold_CGG <- as_tibble(disease_cold_CGG,stringsAsFactors=FALSE) # xts 타입을 위해 티블 변환  jam 20190619

View(tibble_disease_cold_CGG)

str(tibble_disease_cold_CGG)

ggplot(data = disease_cold_CGG, aes(x = 날짜, y = 발생건수.건., col = 시군구명)) +
  
  geom_line() + xlim("2014-01-01","2014-02-01")







#----------------------------jam

eco <- xts(tibble_disease_cold_CGG$발생건수.건., order.by = tibble_disease_cold_CGG$날짜)

eco

dygraph(eco)

tibble_disease_cold_CGG2<- tibble_disease_cold_CGG

str(tibble_disease_cold_CGG)



tibble_disease_cold_CGG2$날짜 <- substr(tibble_disease_cold_CGG2$날짜,1,7)

View(tibble_disease_cold_CGG2)

str(tibble_disease_cold_CGG2)





#df2<- tibble_disease_cold_CGG2 %>% 

#    group_by(날짜, 시군구지역코드) %>% 

#    mutate(n=n()) %>% 

#filter(tibble_disease_cold_CGG2$날짜=="2014-01"& tibble_disease_cold_CGG2$시군구지역코드==30140) %>% 

#mutate(n=n()) %>% 

#    mutate(tot_발생건수=sum(발생건수.건.)) %>% 

#    mutate(mean= tot_발생건수/n)



#View(df2)

#str(df2)



df3<- tibble_disease_cold_CGG2 %>% 
  
  group_by(날짜, 시군구지역코드) %>% 
  
  summarise(n=n(),
            
            tot_발생건수=sum(발생건수.건.),
            
            mean= tot_발생건수/n)





df3<- as_tibble(df3) #date 형식을 위해 tibble로 변환 

#View(df3)



#df3 <- group_by(날짜, 시군구지역코드 ) %>% 

#    summarise()

#str(df3)

#install.packages("lubridate")

library(lubridate) #date 형식 인식ㄷ을 위한 라이브러리



# 각 구별 데이터 프레임 나누기

dff0 <- df3%>% 
  
  filter(시군구지역코드==30110)

#View(dff0)

dff1 <- df3 %>% 
  
  filter(시군구지역코드==30140)

dff2 <- df3 %>% 
  
  filter(시군구지역코드==30170)

dff3 <- df3 %>% 
  
  filter(시군구지역코드==30200)

dff4 <- df3 %>% 
  
  filter(시군구지역코드==30230)





#날짜 부분을 date형식 인식

dff0$날짜 <- as.POSIXlt(paste(dff0$날짜, days(Sys.Date()), sep="-"))

dff1$날짜 <- as.POSIXlt(paste(dff1$날짜, days(Sys.Date()), sep="-"))

dff2$날짜 <- as.POSIXlt(paste(dff2$날짜, days(Sys.Date()), sep="-"))

dff3$날짜 <- as.POSIXlt(paste(dff3$날짜, days(Sys.Date()), sep="-"))

dff4$날짜 <- as.POSIXlt(paste(dff4$날짜, days(Sys.Date()), sep="-"))



#df3$날짜 <- as.Date(df3$날짜)

#df3$날짜 <- strptime(df3$날짜, "%Y-%m")

View(df3)

str(df3)





#출력을 위한 정리

eco_0 <- xts(dff0$mean, order.by = dff1$날짜)

eco_1 <-xts(dff1$mean, order.by = dff1$날짜)

eco_2 <-xts(dff2$mean, order.by = dff1$날짜)

eco_3 <-xts(dff3$mean, order.by = dff1$날짜)

eco_4 <-xts(dff4$mean, order.by = dff1$날짜)





eco_a <- cbind(eco_0,eco_1,eco_2,eco_3,eco_4)



colnames(eco_a) <- c("동구","중구","서구","유성구","대덕구") # 변수명 변경

head(eco_a)



#eco <- xts(df3$mean, order.by = df3$날짜)

#eco

dygraph(eco_a) %>%  dyRangeSelector() #출력력