### Ecology Work on Polyculture ###

### Biomass comparison between Test n Control Batches

# Data structure
# Test : 3 replications, with 5 pseudo-replications
# pseudo-replications are compiled into an avg that yields into one replication
# Replications are input for the boxplots

# Control PC Leaf mass (C1l, C2l, C3l, C4l, C5l) [g]
C1_PC_leaf_mass<-(0.0158, 0.0172, 0.0078, 0.0095, 0.0444)
C2_PC_leaf_mass<-(0.0158, 0.0172, 0.0078, 0.0095, 0.0444)
C3_PC_leaf_mass<-(0.0158, 0.0172, 0.0078, 0.0095, 0.0444)
# Control PC Leaf + Root mass (C1lr, C2lr, C3lr, C4lr, C5lr) [g]
C1_PC__roots_mass<-(0.0039, 0.0039, 0.0047, 0.0039, 0.0079)
C1_PC_leaf_roots_mass<- C1_PC_leaf_mass + C1_PC__roots_mass

C2_PC__roots_mass<-(0.0039, 0.0039, 0.0047, 0.0039, 0.0079)
C2_PC_leaf_roots_mass<- C2_PC_leaf_mass + C2_PC__roots_mass

C3_PC__roots_mass<-(0.0039, 0.0039, 0.0047, 0.0039, 0.0079)
C3_PC_leaf_roots_mass<- C3_PC_leaf_mass + C3_PC__roots_mass
# Test PC Leaf mass (T1l, T2l, T3l, T4l, T5l)[g]
T1_PC_leaf_mass<-(0.0385, 0.0262, 0.03666, 0.0188, 0.01)
T2_PC_leaf_mass<-(0.0385, 0.0262, 0.03666, 0.0188, 0.01)
T3_PC_leaf_mass<-(0.0385, 0.0262, 0.03666, 0.0188, 0.01)
# Test PC Leaf + Root mass (T1lr, T2lr, T3lr, T4lr, T5lr)[g]
T1_PC__roots_mass<-(0.0148, 0.0034, 0.0029, 0.0041, 0.0022)
T1_PC_leaf_roots_mass<-T1_PC_leaf_mass + T1_PC__roots_mass

T2_PC__roots_mass<-(0.0148, 0.0034, 0.0029, 0.0041, 0.0022)
T2_PC_leaf_roots_mass<-T2_PC_leaf_mass + T2_PC__roots_mass

T3_PC__roots_mass<-(0.0148, 0.0034, 0.0029, 0.0041, 0.0022)
T3_PC_leaf_roots_mass<-T3_PC_leaf_mass + T3_PC__roots_mass