### Ecology Work on Polyculture ###

### Biomass comparison between Test n Control Batches

# Data structure
# Test : 3 replications, with 5 pseudo-replications
# pseudo-replications are compiled into an avg that yields into one replication
# Replications are input for the boxplots

# Control PC Leaf mass (C1l, C2l, C3l, C4l, C5l) [g]
C1_PC_leaf_mass<-data[c(3,4,5,6,7), 3]
C1_PC_roots_mass<-data[c(3,4,5,6,7), 2]
C2_PC_leaf_mass<-data[c(3,4,5,6,7), 7]
C2_PC_roots_mass<-data[c(3,4,5,6,7), 6]
C3_PC_leaf_mass<-data[c(3,4,5,6,7), 11]
C3_PC_roots_mass<-data[c(3,4,5,6,7), 10]
class(C3_PC_roots_mass)
# Control PC Leaf + Root mass (C1lr, C2lr, C3lr, C4lr, C5lr) [g]

C1_PC_leaf_roots_mass<- (C1_PC_leaf_mass + C1_PC_roots_mass)
C1_PC_leaf_roots_mass

C2_PC_leaf_roots_mass<- C2_PC_leaf_mass + C2_PC__roots_mass


C3_PC_leaf_roots_mass<- C3_PC_leaf_mass + C3_PC__roots_mass
# Test PC Leaf mass (T1l, T2l, T3l, T4l, T5l)[g]
T1_PC_leaf_mass<-()
T2_PC_leaf_mass<-()
T3_PC_leaf_mass<-()
# Test PC Leaf + Root mass (T1lr, T2lr, T3lr, T4lr, T5lr)[g]
T1_PC__roots_mass<-()
T1_PC_leaf_roots_mass<-T1_PC_leaf_mass + T1_PC__roots_mass

T2_PC__roots_mass<-()
T2_PC_leaf_roots_mass<-T2_PC_leaf_mass + T2_PC__roots_mass

T3_PC__roots_mass<-()
T3_PC_leaf_roots_mass<-T3_PC_leaf_mass + T3_PC__roots_mass



data<-read_excel("C:/Users/mimag/Desktop/Ecology/data_masse_and_area.xlsx")
data
