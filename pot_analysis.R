library(readxl)

MeasureCampaign = read_excel('Measurement Campaign.xlsx')
MeasureCampaign


# 
C_Humidity_1<- mean(c(33.37, 31.13, 15.37))
C_Humidity_1

T_Humidity_1<- mean(c(33.83, 23.53, 32.23))
T_Humidity_1

C_Humidity_2<-mean(c(27.17, 33.70, 23.3))
C_Humidity_2

T_Humidity_2<-mean(as.numeric(unlist(c(MeasureCampaign[c(16,17,18), 7])[1])))
T_Humidity_2

C_Humidity_3<-mean(c(24.5, 24.4, 19.7))
C_Humidity_3

T_Humidity_3<- mean(c(13.33, 16.53, 8.73))
T_Humidity_3

dif1<- T_Humidity_1 - C_Humidity_1
dif2<- T_Humidity_2 - C_Humidity_2 
dif3<- T_Humidity_3 - C_Humidity_3

dif1
dif2
dif3
