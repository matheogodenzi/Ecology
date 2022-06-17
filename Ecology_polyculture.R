### Ecology Work on Polyculture ###

### Biomass comparison between Test n Control Batches

# Data structure
# Test : 3 replications, with 5 pseudo-replications
# pseudo-replications are compiled into an avg that yields into one replication
# Replications are input for the boxplots
library(readxl)
data<-read_excel("data_masse_and_area.xlsx")
data

# Control PC Leaf mass (C1l, C2l, C3l, C4l, C5l) [g]
C1_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 3])[1]))
# C1_PC_leaf_mass
C1_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 2])[1]))
# C1_PC_root_mass
C2_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 7])[1]))
C2_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 6])[1]))
C3_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 11])[1]))
C3_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 10])[1]))

# Control PC Leaf + Root mass (C1lr, C2lr, C3lr, C4lr, C5lr) [g]

C1_PC_leaf_root_mass<- C1_PC_leaf_mass + C1_PC_root_mass
C2_PC_leaf_root_mass<- C2_PC_leaf_mass + C2_PC_root_mass
C3_PC_leaf_root_mass<- C3_PC_leaf_mass + C3_PC_root_mass
# Test PC Leaf mass (T1l, T2l, T3l, T4l, T5l)[g]

T1_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 15])[1]))
T1_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 14])[1]))
T2_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 19])[1]))
T2_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 18])[1]))
T3_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 23])[1]))
T3_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 22])[1]))
# Test PC Leaf + Root mass (T1lr, T2lr, T3lr, T4lr, T5lr)[g]

T1_PC_leaf_roots_mass<-T1_PC_leaf_mass + T1_PC_root_mass
T2_PC_leaf_roots_mass<-T2_PC_leaf_mass + T2_PC_root_mass
T3_PC_leaf_roots_mass<-T3_PC_leaf_mass + T3_PC_root_mass



# Height
time<-c(1,2,3)
C1_PC_height<-c(5, 10, 71)
C2_PC_height<-c(5, 10, 35.6)
C3_PC_height<-c(5, 10, 32)
T1_PC_height<-c(7.5, 20, 130)
T2_PC_height<-c(8, 15, 80)
T3_PC_height<-c(7.5, 17, 174)
height_data<-data.frame(time, C1_PC_height, C2_PC_height, C3_PC_height, T1_PC_height, T2_PC_height, T3_PC_height)
height_data
plot(height_data)

days<-c("14","14","14","14","14","14","35","35","35","35","35","35","49","49","49","49","49","49")
height1<-c(5,5,5,7.5,8,7.5,10,10,10,20,15,17,71,35.6,32,130,80,174)
type1<-c("D2C","D2C","D2C","D2T","D2T","D2T","D3C","D3C","D3C","D3T","D3T","D3T","D4C","D4C","D4C","D4T","D4T", "D4T")
df1<-data.frame(days,height1,type1)
df1
# meteo data used as overlay to height graph
datameteo<-read_excel("FunEco-OUTSIDE.xlsx")
datameteo
datameteobis<-FunEco_OUTSIDE_bis
datameteobis
meteotemperature<-datameteo[-c(1,2),4]
meteotemperature
meteoprecipitations<-datameteo[,5]
meteoRH<-datameteo[,3]
meteolight<-datameteo[,2]
meteotime<-datameteo[,1]
meteotime
meteotime<-datameteo[-c(1,2),1]
meteotime
# meteotime needs to be tranformed to days before use
# measurements begin on 31.03.2022 at 11:00
# raw data is given in wierd unit from an arbitrary point
# extracting and reference to zero [dayz]
meteotime[2062,1]
prcmeteotime<-as.numeric(unlist(c(meteotime))) -as.numeric(unlist(c(meteotime[1,1])))
type(prcmeteotime)
# converting to days
# 2060 records, one record every 30 min = 0.5 hours = 1/48 day

# last record : prcmeteotime[2060]
# measurements begin on 31.03.2022 at 11:00 to 13.05.2022 at 9:30
# days at final measurement: 
# 13h + 30 days + 12 days + 9h30 = 42 days + 22h30
# = 42 days + 22.5/24 days = 42.9375 --> kinda looks like prcmeteotime[2060]
(42 + (22.5/24) - prcmeteotime[2060])*24
# = 1h shift between both methods... conclusion: prcmeteotime is in days
# and works well when correct origin is set
# in the end we're plotting with the height data,
# meteo began records 6 days late, so adjusting origin again
prcmeteotime<-prcmeteotime + 6
prcmeteotime[2060]
# processed dataframe of meteo data: time, luminosity, RH, Temp, Precipitations
dfmeteo<-data.frame(prcmeteotime, meteolight, meteoRH, meteotemperature, meteoprecipitations)
dfmeteo
dftemp<-data.frame(prcmeteotime, meteotemperature)
dftemp
dftempB<-data.frame(meteotime, meteotemperature)
dftempB
library(ggplot2)
#ggplot(height_data, aes(x=time, y=C1_PC_height))+
  #geom_point()
ggplot(df1, aes(x=days, y=height1, color=type1))+
  geom_boxplot()+
  
  scale_x_discrete(name="Time [days]")+
  scale_y_continuous(name="Height [mm]")+
  theme(legend.position = c(0.2,0.6),
      legend.title = element_text(colour="black", size=10,face="bold"))+
  scale_color_manual('Measurements', values=c('orangered2','orange2','seagreen','mediumpurple','orchid2','deepskyblue3'))
  
  
  # nxm c'est vraiment dur à combiner les deux graphes

extest<-c(1,2,3,4)
eytest<-c(1,2,3,4)
dftest<-data.frame(extest,eytest)
dftest
ggplot(dftemp, aes(x = "prcmeteotime", y = "Port.2...4", colour = "red"))+
  geom_line()+
  scale_x_discrete(name="Time [days]")+ 
  scale_y_discrete(name="Temp [mm]")
  
df1
# trois subplots avec les data meteo


