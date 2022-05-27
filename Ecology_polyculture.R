### Ecology Work on Polyculture ###

### Biomass comparison between Test n Control Batches

# Data structure
# Test : 3 replications, with 5 pseudo-replications
# pseudo-replications are compiled into an avg that yields into one replication
# Replications are input for the boxplots

data<-read_excel("data_masse_and_area.xlsx")
data

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




