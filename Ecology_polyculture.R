### Ecology Work on Polyculture ###

### Biomass comparison between Test n Control Batches

# Data structure
# Test : 3 replications, with 5 pseudo-replications
# pseudo-replications are compiled into an avg that yields into one replication
# Replications are input for the boxplots

data<-read_excel("data_masse_and_area.xlsx")
data

### Biomass comparisons ###

# Control PC Leaf mass (C1l, C2l, C3l, C4l, C5l) [g]
C1_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 3])[1]))
C1_PC_leaf_mass
C1_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 2])[1]))
C1_PC_root_mass
C2_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 7])[1]))
C2_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 6])[1]))
C3_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 11])[1]))
C3_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 10])[1]))

# Control PC Leaf + Root mass (C1lr, C2lr, C3lr, C4lr, C5lr) [g]

C1_PC_leaf_root_mass<- C1_PC_leaf_mass + C1_PC_root_mass
C1_PC_leaf_root_mass<- C2_PC_leaf_mass + C2_PC_root_mass
C3_PC_leaf_root_mass<- C3_PC_leaf_mass + C3_PC_root_mass

# Average

C_PC_leaf_mass<- (C1_PC_leaf_mass + C2_PC_leaf_mass + C3_PC_leaf_mass)/3
C_PC_leaf_root_mass<- (C1_PC_leaf_root_mass + C2_PC_leaf_root_mass + C3_PC_leaf_root_mass)/3

# Test PC Leaf mass (T1l, T2l, T3l, T4l, T5l)[g]

T1_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 15])[1]))
T1_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 14])[1]))
T2_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 19])[1]))
T2_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 18])[1]))
T3_PC_leaf_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 23])[1]))
T3_PC_root_mass<-as.numeric(unlist(c(data[c(3,4,5,6,7), 22])[1]))
# Test PC Leaf + Root mass (T1lr, T2lr, T3lr, T4lr, T5lr)[g]

T1_PC_leaf_root_mass<-T1_PC_leaf_mass + T1_PC_root_mass
T2_PC_leaf_root_mass<-T2_PC_leaf_mass + T2_PC_root_mass
T3_PC_leaf_root_mass<-T3_PC_leaf_mass + T3_PC_root_mass

# Average

T_PC_leaf_mass<- (T1_PC_leaf_mass + T2_PC_leaf_mass + T3_PC_leaf_mass)/3
T_PC_leaf_root_mass<- (T1_PC_leaf_root_mass + T2_PC_leaf_root_mass + T3_PC_leaf_root_mass)/3

### Plotting
# BoxPlot CPClr, CPCl, TPClr, TPCl
#boxplot(C_PC_leaf_root_mass, C_PC_leaf_mass, T_PC_leaf_root_mass, T_PC_leaf_mass, names=c("CPClr", "CPCl", "TPClr", "TPCl"), ylab="Biomass [g]")
# Boxplot CPClr, TPClr, CPCl, TPCl
boxplot(C_PC_leaf_root_mass, T_PC_leaf_root_mass, C_PC_leaf_mass, T_PC_leaf_mass, names=c("CPClr", "TPCl", "CPCl", "TPCl"), ylab="Biomass [g]")

### Leaf area ###
# extracting data [cm^2]
C1_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 4])[1]))
C2_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 8])[1]))
C3_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 12])[1]))

T1_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 16])[1]))
T2_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 20])[1]))
T3_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 24])[1]))

# averages
C_PC_leaf_area<- (C1_PC_leaf_area + C2_PC_leaf_area + C3_PC_leaf_area)/3
T_PC_leaf_area<- (T1_PC_leaf_area + T2_PC_leaf_area + T3_PC_leaf_area)/3

# Boxplot

boxplot(C_PC_leaf_area, T_PC_leaf_area, names=c("CPCla", "TPCla"), ylab="Area [cm]")


### Other plots ###
# as the data from excel is corrupted, manual input is made

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
type1<-c("D1C","D1C","D1C","D1T","D1T","D1T","D2C","D2C","D2C","D2T","D2T","D2T","D3C","D3C","D3C","D3T","D3T", "D3T")
df1<-data.frame(days,height1,type1)
df1
library(ggplot2)
ggplot(height_data, aes(x=time, y=C1_PC_height))+
  geom_point()
ggplot(df1, aes(x=days, y=height1, color=type1))+
  geom_boxplot()
