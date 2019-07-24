librar




y(dply)
exam<-read.csv("csv_exam.csv")
exam

out_data<-exam %>% filter(class==1)
out_data

out_data2<- exam %>% filter(clsss==2)
out_data2

out_data2<- exam %>% filter(clsss!=2)
out_data2

out_data2<- exam %>% filter(math>50)
out_data2

out_data2<- exam %>% filter(english<=50)
out_data2

exam %>% filter(class == 1, & english<=50)
exam %>% filter(math >= 90, | english<=50)
exam %>% filter(class %in% c(1,2,3))