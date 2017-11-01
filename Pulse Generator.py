#%%
import stochpy
import math
import scipy
import matplotlib.pyplot as plt

#%%
# Preset
K_1 = 2.2e8
K_2 = 2.3e8
K_3 = 0.04
K_4 = 0.167
K_neg_4 = 0.00035
K_protein_degradation = 0.2
K_mRNA_degradation = 0.2

# Input
compartment_diameter = 10.6144e-6
division_time = 1200 #20 minutes
plasmid_copy_number = 1 #Genome integrated
Cre_plasmid_copy_number = 0 #pET28b medium copy
halflife_mRNA =  408 #doi/10.1101/gr.912603
halflife_protein = 5400
burst_factor = 4

#Calculation
compartment_volume = 8e-16
minicircle_loss_rate = 1/division_time
Na_V = compartment_volume*(6.02*(10**23))
halflife_protein_adjusted = math.log10(2)/halflife_protein
halflife_mRNA_adjusted = math.log10(2)/halflife_mRNA
translation_rate = burst_factor*halflife_mRNA_adjusted

#%%
#modelling recombination
smod = stochpy.SSA()
smod.Model("Pulse generator.psc")
smod.ChangeInitialSpeciesCopyNumber("C",100)
smod.ChangeInitialSpeciesCopyNumber("C_plasmid",Cre_plasmid_copy_number)
smod.ChangeParameter('K_protein_degradation',halflife_protein_adjusted)
smod.ChangeParameter('K_mRNA_degradation',halflife_mRNA_adjusted)
smod.ChangeParameter('K_translation',translation_rate)
smod.ChangeParameter('K_transcription',0.01)
smod.ChangeInitialSpeciesCopyNumber("L_L", plasmid_copy_number)
smod.ChangeInitialSpeciesCopyNumber("M_M", plasmid_copy_number)
smod.ChangeInitialSpeciesCopyNumber("N_N", plasmid_copy_number)
smod.ChangeInitialSpeciesCopyNumber("O_O", plasmid_copy_number)
smod.ChangeInitialSpeciesCopyNumber("R_R", plasmid_copy_number)
smod.ChangeInitialSpeciesCopyNumber("X_X", plasmid_copy_number)
smod.ChangeParameter('K_plasmid_loss', minicircle_loss_rate)
smod.ChangeParameter('K_1',K_1/Na_V)
smod.ChangeParameter('K_2',K_2/Na_V)
smod.ChangeParameter('K_neg_4',K_neg_4/Na_V)

#%%
#Setting & running
smod.Method('Direct')
smod.Mode('time')
smod.Endtime(8000)
smod.Trajectories(200)
smod.DoStochSim()
smod.PlotAverageSpeciesTimeSeries()
