library(readxl)

MeasureCampaign = read_excel('Measurement Campaign.xlsx')
MeasureCampaign

C_Humidity_1<-as.numeric(unlist(c(MeasureCampaign[c(7,8,9), 7])[1]))
C_Humidity_1

T_Humidity_1<-as.numeric(unlist(c(MeasureCampaign[c(10,11,12), 7])[1]))
T_Humidity_1

C_Humidity_2<-as.numeric(unlist(c(MeasureCampaign[c(13,14,15), 7])[1]))
C_Humidity_2

T_Humidity_2<-as.numeric(unlist(c(MeasureCampaign[c(16,17,18), 7])[1]))
T_Humidity_2

C_Humidity_3<-as.numeric(unlist(c(MeasureCampaign[c(19,20,21), 7])[1]))
C_Humidity_3

T_Humidity_3<-as.numeric(unlist(c(MeasureCampaign[c(21,22,23), 7])[1]))
T_Humidity_3
