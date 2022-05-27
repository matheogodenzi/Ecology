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


## set up some fake test data
time <- seq(0,72,12)
betagal.abs <- c(0.05,0.18,0.25,0.31,0.32,0.34,0.35)
cell.density <- c(0,1000,2000,3000,4000,5000,6000)

## add extra space to right margin of plot within frame
par(mar=c(5, 4, 4, 6) + 0.1)

## Plot first set of data and draw its axis
plot(time, betagal.abs, pch=16, axes=FALSE, ylim=c(0,1), xlab="", ylab="", 
     type="b",col="black", main="Mike's test data")
axis(2, ylim=c(0,1),col="black",las=1)  ## las=1 makes horizontal labels
mtext("Beta Gal Absorbance",side=2,line=2.5)
box()

## Allow a second plot on the same graph
par(new=TRUE)

## Plot the second plot and put axis scale on right
plot(time, cell.density, pch=15,  xlab="", ylab="", ylim=c(0,7000), 
     axes=FALSE, type="b", col="red")
## a little farther out (line=4) to make room for labels
mtext("Cell Density",side=4,col="red",line=4) 
axis(4, ylim=c(0,7000), col="red",col.axis="red",las=1)

## Draw the time axis
axis(1,pretty(range(time),10))
mtext("Time (Hours)",side=1,col="black",line=2.5)  

## Add Legend
legend("topleft",legend=c("Beta Gal","Cell Density"),
       text.col=c("black","red"),pch=c(16,15),col=c("black","red"))



### plot environmental

### ajouter une importation excel depuis FunEco
# pour raccourcir le nom
data <- FunEco_OUTSIDE

# prend l'horodatage des trois périodes de 24h précédent les mesures de terrain
dates_1 <- c(data[ (293:341),1])
dates_2 <- c(data[ (1301:1349),1])
dates_3 <- c(data[ (1973:2021),1])

time <- c(12, 12.5, 13, 13.5, 14, 14.5, 15, 15.5, 16, 16.5, 17, 17.5, 18, 18.5, 19, 19.5, 20, 20.5, 21, 21.5, 22, 22.5, 23, 23.5, 0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 11.5, 12)
# donnees d'ensoleillement
sun_1 <- c(data[ (293:341),2])
sun_2 <- c(data[ (1301:1349),2])
sun_3 <- c(data[ (1973:2021),2])

# donnees d'humidite de l'air
hum_1 <- c(data[ (293:341),3])
hum_2 <- c(data[ (1301:1349),3])
hum_3 <- c(data[ (1973:2021),3])

# donnees de temperature de l'air
temp_1 <- c(data[ (293:341),4])
temp_2 <- c(data[ (1301:1349),4])
temp_3 <- c(data[ (1973:2021),4])

# donnees de precipitation
precip_1 <- c(data[ (293:341),5])
precip_2 <- c(data[ (1301:1349),5])
precip_3 <- c(data[ (1973:2021),5])


