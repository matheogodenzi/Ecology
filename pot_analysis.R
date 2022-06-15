library(readxl)

MeasureCampaign = Measurement_Campaign
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



### plot environmental

### ajouter une importation excel depuis FunEco
# pour raccourcir le nom
data <- FunEco_OUTSIDE

# prend l'horodatage des trois périodes de 24h précédent les mesures de terrain
dates_1 <- c(data[ (293:340),1])
dates_2 <- c(data[ (1301:1348),1])
dates_3 <- c(data[ (1973:2020),1])

#time <- c(12, 12.5, 13, 13.5, 14, 14.5, 15, 15.5, 16, 16.5, 17, 17.5, 18, 18.5, 19, 19.5, 20, 20.5, 21, 21.5, 22, 22.5, 23, 23.5, 0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 11.5)
time <- seq(0,23.5,0.5)
# donnees d'ensoleillement
sun_1 <- as.numeric(unlist(c(data[ (293:340),2])))
sun_2 <- as.numeric(unlist(c(data[ (1301:1348),2])))
sun_3 <- as.numeric(unlist(c(data[ (1973:2020),2])))

# donnees d'humidite de l'air
hum_1 <- as.numeric(unlist(c(data[ (293:340),3])))
hum_2 <- as.numeric(unlist(c(data[ (1301:1348),3])))
hum_3 <- as.numeric(unlist(c(data[ (1973:2020),3])))

# donnees de temperature de l'air
temp_1 <- as.numeric(unlist(c(data[ (293:340),4])))
temp_2 <- as.numeric(unlist(c(data[ (1301:1348),4])))
temp_3 <- as.numeric(unlist(c(data[ (1973:2020),4])))

# donnees de precipitation
precip_1 <- as.numeric(unlist(c(data[ (293:340),5])))
precip_2 <- as.numeric(unlist(c(data[ (1301:1348),5])))
precip_3 <- as.numeric(unlist(c(data[ (1973:2020),5])))



### plot first time

## set up some fake test data
#time <- c(12, 12.5, 13, 13.5, 14, 14.5, 15, 15.5, 16, 16.5, 17, 17.5, 18, 18.5, 19, 19.5, 20, 20.5, 21, 21.5, 22, 22.5, 23, 23.5, 0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 11.5)
#sun_1 <- c(data[ (293:341),2])
#temp_1 <- c(data[ (293:341),4])

## add extra space to right margin of plot within frame
par(mar=c(5, 4, 4, 6) + 0.1)

## Plot first set of data and draw its axis

plot(time, sun_1, pch=16, axes=FALSE, ylim=c(0,4000), xlab="", ylab="", 
     type="l",col="black", main="1st Campaign")
axis(2, ylim=c(0,1),col="black",las=1)  ## las=1 makes horizontal labels
mtext("PAR (µmol/m^2/s)",side=2,line=2.5)
box()

## Allow a second plot on the same graph
par(new=TRUE)

## Plot the second plot and put axis scale on right
plot(time, temp_1, pch=15,  xlab="", ylab="", ylim=c(0,30), 
     axes=FALSE, type="l", col="red")

## a little farther out (line=4) to make room for labels
mtext("Temperature",side=4,col="red",line=4) 
axis(4, ylim=c(0,30), col="red",col.axis="red",las=1)

## Draw the time axis
axis(1,pretty(range(time),10))
mtext("Time (Hours)",side=1,col="black",line=2.5)  

## Add Legend
legend("topleft",legend=c("Light Intensity","Temperature Evolution"),
       text.col=c("black","red"),pch=c(16,15),col=c("black","red"))


### plot second time

## add extra space to right margin of plot within frame
par(mar=c(5, 4, 4, 6) + 0.1)

## Plot first set of data and draw its axis

plot(time, sun_2, pch=16, axes=FALSE, ylim=c(0,4000), xlab="", ylab="", 
     type="l",col="black", main="2nd Campaign")
axis(2, ylim=c(0,1),col="black",las=1)  ## las=1 makes horizontal labels
mtext("PAR (µmol/m^2/s)",side=2,line=2.5)
box()

## Allow a second plot on the same graph
par(new=TRUE)

## Plot the second plot and put axis scale on right
plot(time, temp_2, pch=15,  xlab="", ylab="", ylim=c(0,30), 
     axes=FALSE, type="l", col="red")

## a little farther out (line=4) to make room for labels
mtext("Temperature",side=4,col="red",line=4) 
axis(4, ylim=c(0,30), col="red",col.axis="red",las=1)

## Draw the time axis
axis(1,pretty(range(time),10))
mtext("Time (Hours)",side=1,col="black",line=2.5)  

## Add Legend
legend("topleft",legend=c("Light Intensity","Temperature"),
       text.col=c("black","red"),pch=c(16,15),col=c("black","red"))


### rd plot

## add extra space to right margin of plot within frame
par(mar=c(5, 4, 4, 6) + 0.1)

## Plot first set of data and draw its axis

plot(time, sun_3, pch=16, axes=FALSE, ylim=c(0,4000), xlab="", ylab="", 
     type="l",col="black", main="3rd Campaign")
axis(2, ylim=c(0,1),col="black",las=1)  ## las=1 makes horizontal labels
mtext("PAR (µmol/m^2/s)",side=2,line=2.5)
box()

## Allow a second plot on the same graph
par(new=TRUE)


## Plot the second plot and put axis scale on right
plot(time, temp_3, pch=15,  xlab="", ylab="", ylim=c(0,30), 
     axes=FALSE, type="l", col="red")

## a little farther out (line=4) to make room for labels
mtext("Temperature",side=4,col="red",line=4) 
axis(4, ylim=c(0,30), col="red",col.axis="red",las=1)

## Draw the time axis
axis(1,pretty(range(time),10))
mtext("Time (Hours)",side=1,col="black",line=2.5)  

## Add Legend
legend("topleft",legend=c("Light Intensity","Temperature"),
       text.col=c("black","red"),pch=c(16,15),col=c("black","red"))

## Allow a third plot on the same graph
par(new=TRUE)

plot(time, dif3, pch=15,  xlab="", ylab="", ylim=c(0,1), 
     axes=FALSE, type="p", col="red")






### Leaf area extraction¨
data = read_excel("data_masse_and_area.xlsx")
# Control PC leaf area [cm^2]
C1_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 4])[1]))
C2_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 8])[1]))
C3_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 12])[1]))

# Test PC leaf area [cm^2]
T1_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 16])[1]))
T2_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 20])[1]))
T3_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 24])[1]))

leaf_area_vect <- c(C1_PC_leaf_area,C2_PC_leaf_area,C3_PC_leaf_area,T1_PC_leaf_area,T2_PC_leaf_area,T3_PC_leaf_area)

Types <- c("Control")
for (i in 1:14){
  Types <- c(Types,"Control")
}
for (i in 1:15{
  Types <- c(Types, "Test")
}

Types

df_leaf_area <- data.frame(C_leaf_area,Types)
df_leaf_area

