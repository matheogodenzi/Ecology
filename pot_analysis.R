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
