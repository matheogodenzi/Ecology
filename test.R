#install.packages("readxl")
library(readxl)

MeteoData=FunEco-OUTSIDE
MeteoData

MeasureCampaign =Measurement Campaign
MeasureCampaign

biomass = data_masse_and_area
biomass

# comparing masses
# Control PC Leaf mass (C1l, C2l, C3l, C4l, C5l) [g]
C1_PC_leaf_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 3])[1]))
C1_PC_root_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 2])[1]))
C2_PC_leaf_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 7])[1]))
C2_PC_root_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 6])[1]))
C3_PC_leaf_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 11])[1]))
C2_PC_root_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 10])[1]))

#outlier
C1_PC_leaf_mass_out<-as.numeric(unlist(c(biomass[c(3,4,5,6), 3])[1]))
C1_PC_root_mass_out<-as.numeric(unlist(c(biomass[c(3,4,5,6), 2])[1]))
# Control PC Leaf + Root mass (C1lr, C2lr, C3lr, C4lr, C5lr) [g]


C_root_total_mass <- c(C1_PC_root_mass,
                       C2_PC_root_mass,
                       C3_PC_root_mass
                       )

# mass 

C1_PC_leaf_root_mass<- C1_PC_leaf_mass + C1_PC_root_mass
C2_PC_leaf_root_mass<- C2_PC_leaf_mass + C2_PC_root_mass
C3_PC_leaf_root_mass<- C3_PC_leaf_mass + C3_PC_root_mass
C1_PC_leaf_root_mass_out<-C1_PC_leaf_mass_out + C1_PC_root_mass_out

C1_PC_leaf_root_mass
C2_PC_leaf_root_mass
C3_PC_leaf_root_mass
C1_PC_leaf_root_mass_out

Control_total_mass <- c(C1_PC_leaf_root_mass, C2_PC_leaf_root_mass, C3_PC_leaf_root_mass)
Control_total_mass_out <- c(C1_PC_leaf_root_mass_out, C2_PC_leaf_root_mass, C3_PC_leaf_root_mass)


# Test PC Leaf mass (T1l, T2l, T3l, T4l, T5l)[g]

T1_PC_leaf_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 15])[1]))
T1_PC_root_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 14])[1]))
T2_PC_leaf_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 19])[1]))
T2_PC_root_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 18])[1]))
T3_PC_leaf_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 23])[1]))
T3_PC_root_mass<-as.numeric(unlist(c(biomass[c(3,4,5,6,7), 22])[1]))

# Test PC Leaf + Root mass (T1lr, T2lr, T3lr, T4lr, T5lr)[g]

T1_PC_leaf_roots_mass<-T1_PC_leaf_mass + T1_PC_root_mass
T2_PC_leaf_roots_mass<-T2_PC_leaf_mass + T2_PC_root_mass
T2_PC_leaf_roots_mass<-T3_PC_leaf_mass + T3_PC_root_mass

T1_PC_leaf_roots_mass 
T2_PC_leaf_roots_mass
T3_PC_leaf_roots_mass

#removing outlier 
T3_PC_leaf_mass_out<-as.numeric(unlist(c(biomass[c(5,6,7), 23])[1]))
T3_PC_root_mass_out<-as.numeric(unlist(c(biomass[c(5,6,7), 22])[1]))
T3_PC_leaf_roots_mass_out <- T3_PC_leaf_mass_out + T3_PC_root_mass_out
T3_PC_leaf_roots_mass_out


Test_total_mass <- c(T1_PC_leaf_roots_mass, T2_PC_leaf_roots_mass, T3_PC_leaf_roots_mass)
Test_total_mass_out <- c(T1_PC_leaf_roots_mass, T2_PC_leaf_roots_mass, T3_PC_leaf_roots_mass_out)
Test_total_mass_out


C_root_mass <- c(C1_PC_root_mass, C2_PC_root_mass, C3_PC_root_mass)
T_root_mass <- c(T1_PC_root_mass, T2_PC_root_mass, T3_PC_root_mass)
hist(log(T_root_mass*100), breaks=10)
hist(log(C_root_mass), breaks=5) 

#test de normalité longeur des racines 
T1_PC_root_mass_out<-as.numeric(unlist(c(biomass[c(4,5,6,7), 14])[1]))
T_root_mass_out <- c(T1_PC_root_mass_out, T2_PC_root_mass, T3_PC_root_mass_out)
shapiro.test(log(C_root_mass))
shapiro.test(log(T_root_mass))
shapiro.test(log(T_root_mass_out))
hist(log(T_root_mass_out), breaks=5)

t.test(log(C_root_mass), log(T_root_mass_out))


# test total mass
hist(sqrt(Control_total_mass),  breaks = 10) 
hist(log(Control_total_mass_out*1000),  breaks = 15) 
hist(log(Test_total_mass_out*1000), breaks = 15)

#testing for normality
shapiro.test(log(Control_total_mass_out))
shapiro.test(log(Test_total_mass_out))



t.test(log(Control_total_mass_out), log(Test_total_mass_out))


# distribution of leaf mass control 
leaf_mass_control <- c(C1_PC_leaf_mass, C2_PC_leaf_mass, C3_PC_leaf_mass)
hist(log(leaf_mass_control), breaks = 10) 
hist(sqrt(leaf_mass_control), breaks = 10)
leaf_mass_control
C1_PC_leaf_mass_out <- as.numeric(unlist(c(biomass[c(3,4,5,6), 3])[1]))
leaf_mass_control_out <- c(C1_PC_leaf_mass_out, C2_PC_leaf_mass, C3_PC_leaf_mass)
hist(log(leaf_mass_control_out), breaks = 10) 


#  distribution of leaf mass, test
outlayer_removed <- as.numeric(unlist(c(biomass[c(4,5,6,7), 23])[1]))
leaf_mass_test_total <- c(T1_PC_leaf_mass, T2_PC_leaf_mass, T3_PC_leaf_mass)
leaf_mass_test_removed_outliers <- c(T1_PC_leaf_mass, T2_PC_leaf_mass, outlayer_removed)
leaf_mass_test_removed_outliers
hist(log(log(leaf_mass_test_removed_outliers*1000)), breaks= 6)   
hist(log(log(leaf_mass_control_out*1000)), breaks= 6) 

# checking for normal distribution 
shapiro.test(log(log(leaf_mass_test_removed_outliers*1000)))
shapiro.test(log(leaf_mass_control))
shapiro.test(log(log(leaf_mass_control_out*1000)))

?anova

# t-test total mass
t.test(log(leaf_mass_control_out),log(leaf_mass_test_removed_outliers)) 


# creating df to compare tests and controls
leaf.mass.control.1 <-leaf_mass_control
leaf.mass.test.1 <- leaf_mass_test_total
df <- data.frame(leaf.mass.control.1, leaf.mass.test.1)

detach(df)
library(psych)
attach(df)
describeBy(df)
detach(df)

#t-test leaf_mass
t.test(sqrt(leaf_mass_control), sqrt(leaf_mass_test_removed_outliers))

# test de normalité 
# test non paramétrique

# square root transformed data for leaf area 
# log transfom 

# heights signifiant difference
# moyennes
time
C1_PC_height_mean<-c(5, 10, 71)
C2_PC_height_mean<-c(5, 10, 35.6)
C3_PC_height_mean<-c(5, 10, 32)
T1_PC_height_mean<-c(7.5, 20, 130)
T2_PC_height_mean<-c(8, 15, 80)
T3_PC_height_mean<-c(7.5, 17, 174)
height_data<-data.frame(time, C1_PC_height, C2_PC_height, C3_PC_height, T1_PC_height, T2_PC_height, T3_PC_height)
height_data
plot(height_data)

C_camp1_mean<- c(5.1, 5, 4.9)
T_camp1_mean<- c(7.5, 8, 7.5)
C_camp2_mean<- c(9.9,10,10.1)
T_camp2_mean<- c(20, 15, 17)
C_camp3_mean<- c(71,35.6,32)
T_camp3_mean<- c(130, 80, 174)

size 
?t.test

#normality test
shapiro.test(C_camp1_mean)
shapiro.test(C_camp2_mean)
shapiro.test(C_camp3_mean)
shapiro.test(T_camp1_mean)
shapiro.test(T_camp2_mean)
shapiro.test(T_camp3_mean)

hist(T_camp1_mean)
# t-test
first <- t.test(C_camp1_mean,T_camp1_mean)
first
second <-t.test(C_camp2_mean,T_camp2_mean)
second
third <-t.test(C_camp3_mean,T_camp3_mean)
third
?t.test 

?oneway.test
# first campaign test
height1<-c(5,5,5,7.5,8,7.5)
type1<-c("D1C","D1C","D1C","D1T","D1T","D1T")
size1<-data.frame(height1,type1)
size1

one.way <- aov(height1 ~ type1,
               data = size1
)

summary(one.way)

#second campaign test
height2<-c(10,10,10,20,15,17)
type2<-c("D2C","D2C","D2C","D2T","D2T","D2T")
size2<-data.frame(height2,type2)
size2

two.way <- aov(height2 ~ type2,
               data = size2
)

summary(two.way)

#last campaign test
#second campaign test
height3<-c(71,35.6,32,130,82,174)
type3<-c("D3C","D3C","D3C","D3T","D3T", "D3T")
size3<-data.frame(height3,type3)
size3

three.way <- aov(height3 ~ type3,
               data = size3
)

summary(three.way)



# Control PC leaf area [cm^2]
data = read_excel('data_masse_and_area.xlsx')

C1_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 4])[1]))
C2_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 8])[1]))
C3_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 12])[1]))
# Test PC leaf area [cm^2]
T1_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 16])[1]))
T2_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 20])[1]))
T3_PC_leaf_area<-as.numeric(unlist(c(data[c(3,4,5,6,7), 24])[1]))
leaf_area_vect <- c(C1_PC_leaf_area,C2_PC_leaf_area,C3_PC_leaf_area,T1_PC_leaf_area,T2_PC_leaf_area,T3_PC_leaf_area)

#creating 
Types <- c("Control")
for (i in 1:14){
  Types <- c(Types,"Control")
}

for (i in 1:15){
  Types <- c(Types, "Test")
}

df_leaf_area <- data.frame(leaf_area_vect,Types)
df_leaf_area

area.way <- aov(leaf_area_vect ~ Types,
                 data = data
)

summary(area.way)









