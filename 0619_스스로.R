library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

raw_welfare<-read.spss(file="C:/Users/CPB06GameN/Desktop/김재광/수업파일/Koweps_etc/데이터/Koweps_hpc10_2015_beta1.sav",to.data.frame=T)

welfare <-raw_welfare

table(welfare$h1001_11)
welfare<-rename(welfare,
                sex=h10_g3,
                birth=h10_g4,
                marriage=h10_g10,
                religion=h10_g11,
                income=p1002_8aq1,
                code_job=h10_eco9,
                code_region=h10_reg7)

class(welfare$h1001_11)
table(welfare$h1001_11)
summary(welfare$h1001_11)
table(is.na(welfare$h1001_11))



table(welfare$marriage)


welfare$group_marriage<-ifelse(welfare$marriage==1, 'marriage',
                               ifelse(welfare$marriage==5, 'not_marrage', NA))
table(is.na(welfare$group_marriage))
qplot(welfare$group_marriage)

class(welfare$religion)
table(welfare$religion)

#welfare$religion<-ifelse(welfare$religion)

table(is.na(welfare$religion))


welfare$religion<-ifelse(welfare$religion==1, "있음", "없음")
qplot(welfare$religion)


marriage_religion<-welfare %>% 
  filter(!is.na(welfare$group_marriage)) %>% 
  group_by(religion,group_marriage) %>%
  summarise(n=n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round(n/tot_group*100, 1))
  
  

marriage_religion  

head()
marriage_religion


ggplot(data=marriage_religion, aes(x=religion, y=marriage))+geom_col()
ggplot(data=marriage_religion, aes(x=religion, y=marriage))+geom_col()

m_r<-marriage_religion %>% 
  filter(group_marriage=="marriage") %>% 
  select(religion, pct)
m_r

ggplot(data=m_r,aes(x=religion, y=pct))+geom_col()

