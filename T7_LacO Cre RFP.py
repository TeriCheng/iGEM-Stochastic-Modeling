#%%
import stochpy
import math
import scipy

#%%
#Second order reaction modification
K2R = 0.833
KRy = 16
Kdr1 = 0.5e-8
Kdr2 = 0.5e-8
Knegdr2 = 80
Kp = 0.002
KRT7 = 16
Ks1mcre = 0.471
KRcre = 16
Ks0mcre = 0.000167
K_1 = 2.2e8
K_2 = 2.3e8
K_neg_4 = 0.00035
compartment_volume = 8e-16
Na_V = compartment_volume*(6.02*(10**23))
K2R_adjusted = K2R/Na_V
KRy_adjusted = KRy/Na_V
Kdr1_adjusted = Kdr1/(Na_V**2)
Kdr2_adjusted = Kdr2/(Na_V**2)
Knegdr2_adjusted = Knegdr2/Na_V
KRT7_adjusted = KRT7/Na_V
Kp_adjusted = Kp/Na_V
Ks1mcre_adjusted = Ks1mcre/Na_V
KRcre_adjusted = KRcre/Na_V
Ks0mcre_adjusted = Ks0mcre/Na_V
K_1_adjusted = K_1/Na_V
K_2_adjusted = K_2/Na_V
K_neg_4_adjusted = K_neg_4/Na_V
smod.ChangeParameter('K2R',K2R_adjusted)
smod.ChangeParameter('KRy',KRy_adjusted)
smod.ChangeParameter('Kdr1', Kdr1_adjusted)
smod.ChangeParameter('Kdr2', Kdr2_adjusted)
smod.ChangeParameter('Knegdr2',Knegdr2_adjusted)
smod.ChangeParameter('Kp', Kp_adjusted)
smod.ChangeParameter('KRT7', KRT7_adjusted)
smod.ChangeParameter('Ks1mcre', Ks1mcre_adjusted)
smod.ChangeParameter('KRcre',KRcre_adjusted)
smod.ChangeParameter('Ks0mcre',Ks0mcre_adjusted)
smod.ChangeParameter('K_1',K_1_adjusted)
smod.ChangeParameter('K_2',K_2_adjusted)
smod.ChangeParameter('K_neg_4',K_neg_4_adjusted)

lambda_t7 = 0.00333
smod.ChangeParameter('lambda_t7', 3.333333)
lambda_cre = 0.00333
smod.ChangeParameter('lambda_cre', 333.3333)
lambda_mcre = 0.0077
smod.ChangeParameter('lambda_mcre',0.777)

#%%
#modelling recombination
smod = stochpy.SSA()
smod.Model("T7-LacO Cre RFP.psc")
smod.Method('Direct')
smod.Mode('time')
smod.Endtime(15000)
smod.Trajectories(2)
smod.DoStochSim()
smod.PlotAverageSpeciesTimeSeries()

