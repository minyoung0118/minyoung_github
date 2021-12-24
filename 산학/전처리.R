library(dplyr)
library(writexl)

data<-read.csv("Final database.csv",quote = "",na.strings = c("", " ", NA),
               stringsAsFactors = FALSE)

data<-data%>%select(Country, Title, Artist, Genre, LDA_Topic, Uri,Album)

data<-data%>%filter(Country != 'Taiwan') #대만, 터키 제외
data<-data%>%filter(Country != 'Turkey')

data<-data%>%select(-Country)

data<-unique(data)

table(is.na(data))
sum(is.na(data))
data<-na.omit(data)



data_ <- subset (data, LDA_Topic!=0 &  LDA_Topic!=0)
#csv file로 저장
write.csv(data, file="data++++.csv")
