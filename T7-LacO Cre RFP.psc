# Reactions
R1:
    LacI_gene > LacI_gene + LacI_mRNA
    KsMR*LacI_gene
R2:
    LacI_mRNA > LacI_mRNA + LacI_protein
    KsR*LacI_mRNA
R3:
    {2} LacI_protein > LacI_dimer
    K2R*LacI_protein*(LacI_protein-1)/2
R4:
    LacI_dimer > {2} LacI_protein
    Kneg2R*LacI_dimer
R5:
    LacY_operon + LacI_dimer > YI2
    KRy*LacY_operon*LacI_dimer
R6:
    YI2 > LacY_operon + LacI_dimer
    KnegRY*YI2
R7:
    {2} IPTG +  LacI_dimer > IPTG2_LacI2
    Kdr1*LacI_dimer*IPTG*(IPTG-1)/2
R8:
    IPTG2_LacI2 > {2} IPTG + LacI_dimer
    Knegdr1*IPTG2_LacI2
R9:
    YI2 + {2} IPTG > IPTG2_LacI2 + LacY_operon
    Kdr2*YI2*IPTG*(IPTG-1)/2
R10:
    IPTG2_LacI2 + LacY_operon > YI2 + {2} IPTG
    Knegdr2*IPTG2_LacI2*LacY_operon
R11:
    LacY_operon > LacY_operon + LacY_mRNA
    Ks1my*LacY_operon
R12:
    YI2 > YI2 + LacY_mRNA
    Ks0my*YI2
R13:
    LacY_mRNA > LacY_mRNA + LacY_protein
    Ksy*LacY_mRNA
R14:
    LacY_protein + IPTG_ext > LacY_protein_IPTG_ext
    Kp*LacY_protein*IPTG_ext
R15:
    LacY_protein_IPTG_ext > LacY_protein + IPTG_ext
    Knegp*LacY_protein_IPTG_ext
R16:
    LacY_protein_IPTG_ext > LacY_protein + IPTG
    Kft*LacY_protein_IPTG_ext
R17:
    IPTG_ext > IPTG
    Kt*IPTG_ext
R18:
    IPTG > IPTG_ext
    Kt*IPTG
R19:
    LacI_mRNA > $pool
    lambda_mr*LacI_mRNA
R20:
    LacY_mRNA > $pool
    lambda_my*LacY_mRNA
R21:
    LacI_protein > $pool
    lambda_r*LacI_protein
R22:
    LacI_dimer > $pool
    lambda_r2*LacI_dimer
R23:
    LacY_protein > $pool
    lambda_y*LacY_protein
R24:
    LacY_protein_IPTG_ext > IPTG
    lambda_yiex*LacY_protein_IPTG_ext
R25:
    IPTG2_LacI2 > {2} IPTG
    lambda_i2r2*IPTG2_LacI2
#R26~34: T7
R26:
    T7_operon + LacI_dimer > T7I2
    KRT7*T7_operon*LacI_dimer
R27:
    T7I2 > T7_operon + LacI_dimer
    KnegRT7*T7I2
R28:
    T7I2 + {2} IPTG > IPTG2_LacI2 + T7_operon
    Kdr2*T7I2*IPTG*(IPTG-1)/2
R29:
    IPTG2_LacI2 + T7_operon > T7I2 + {2} IPTG
    Knegdr2*IPTG2_LacI2*T7_operon
R30:
    T7_operon > T7_operon + T7_mRNA
    Ks1mt7*T7_operon
R31:
    T7I2 > T7I2 + T7_mRNA
    Ks0mt7*T7I2
R32:
    T7_mRNA > T7_mRNA + T7_protein
    Kst7*T7_mRNA
R33:
    T7_mRNA > $pool
    lambda_mt7*T7_mRNA
R34:
    T7_protein > $pool
    lambda_t7*T7_protein
#R35~43:Cre
R35:
    Cre_operon + LacI_dimer > CreI2
    KRcre*Cre_operon*LacI_dimer
R36:
    CreI2 > Cre_operon + LacI_dimer
    KnegRcre*CreI2
R37:
    CreI2 + {2} IPTG > IPTG2_LacI2 + Cre_operon
    Kdr2*CreI2*IPTG*(IPTG-1)/2
R38:
    IPTG2_LacI2 + Cre_operon > CreI2 + {2} IPTG
    Knegdr2*IPTG2_LacI2*Cre_operon
R39:
    Cre_operon + T7_protein > Cre_operon + T7_protein + Cre_mRNA
    Ks1mcre*Cre_operon*T7_protein
R40:
    CreI2 + T7_protein > CreI2 + T7_protein + Cre_mRNA
    Ks0mcre*CreI2*T7_protein
R41:
    Cre_mRNA > Cre_mRNA + Cre_protein
    Kscre*Cre_mRNA
R42:
    Cre_mRNA > $pool
    lambda_mcre*Cre_mRNA
R43:
    Cre_protein > $pool
    lambda_cre*Cre_protein
#Cre-binding to LTL
Cre_binding_to_LoxP1:
    Cre_protein + L_L >  LC_L
    K_1*Cre_protein*L_L
Cre_unbinding_to_LoxP1:
    LC_L > Cre_protein + L_L
    K_neg_1*LC_L
Cre_binding_to_LoxP1_second_step:
    Cre_protein + LC_L > LC2_L
    K_2*Cre_protein*LC_L

Cre_unbinding_to_LoxP1_second_step:
    LC2_L > Cre_protein + LC_L
    K_neg_2*LC2_L

Cre_binding_to_LoxP2:
    Cre_protein + L_L > L_LC
    K_1*Cre_protein*L_L

Cre_unbinding_to_LoxP2:
    L_LC > Cre_protein + L_L
    K_neg_1*L_LC

Cre_binding_to_LoxP2_second_step:
    Cre_protein + L_LC > L_LC2
    K_2*Cre_protein*L_LC

Cre_unbinding_to_LoxP2_second_step:
    L_LC2 > Cre_protein + L_LC
    K_neg_2*L_LC2

Cre_binding_to_another_LoxP:
    Cre_protein + LC_L > LC_LC
    K_1*Cre_protein*LC_L

Cre_unbinding_to_another_LoxP:
    LC_LC > Cre_protein + LC_L
    K_neg_1*LC_LC

Cre_binding_to_another_LoxP_2:
    Cre_protein + L_LC > LC_LC
    K_1*Cre_protein*L_LC

Cre_unbinding_to_another_LoxP_2:
    LC_LC > Cre_protein + L_LC
    K_neg_1*LC_LC

Cre_binding_third_step:
    LC2_L + Cre_protein > LC2_LC
    K_1*LC2_L*Cre_protein

Cre_unbinding_third_step:
    LC2_LC > LC2_L + Cre_protein
    K_neg_1*LC2_LC

Cre_binding_third_step_2:
    LC_LC + Cre_protein > LC2_LC
    K_2*Cre_protein*LC_LC

Cre_unbinding_third_step_2:
    LC2_LC > LC_LC + Cre_protein
    K_neg_2*LC2_LC

Cre_binding_third_step_3:
    L_LC2 + Cre_protein > LC_LC2
    K_1*Cre_protein*L_LC2

Cre_unbinding_third_step_3:
    LC_LC2 > L_LC2 + Cre_protein
    K_neg_1*LC_LC2

Cre_binding_third_step_4:
    LC_LC + Cre_protein > LC_LC2
    K_2*Cre_protein*LC_LC

Cre_unbinding_third_step_4:
    LC_LC2 > LC_LC + Cre_protein
    K_neg_2*LC_LC2

Cre_binding_fourth_step:
    LC2_LC + Cre_protein > S
    K_2*Cre_protein*LC2_LC

Cre_unbinding_fourth_step:
    S > LC2_LC + Cre_protein
    K_neg_2*S

Cre_binding_fourth_step_2:
    LC_LC2 + Cre_protein > S
    K_2*Cre_protein*LC_LC2

Cre_unbinding_fourth_step_2:
    S > LC_LC2 + Cre_protein
    K_neg_2*S

Recombination:
    S > S_star
    K_3*S

Recombination_reverse:
    S_star > S
    K_neg_3*S_star

Recombination_step_2:
    S_star > PC2 + QC2
    K_4*S_star

Recombination_step_2_reverse:
    PC2 + QC2 > S_star
    K_neg_4*PC2*QC2

Product_unbinding_step_1:
    PC2 > PC + Cre_protein
    K_neg_2*PC2

Product_rebinding_step_1:
    PC + Cre_protein > PC2
    K_2*PC*Cre_protein

Product_unbinding_step_2:
    PC > P + Cre_protein
    K_neg_1*PC

Product_rebinding_step_2:
    P + Cre_protein > PC
    K_1*P*Cre_protein

Side_unbinding_step_1:
    QC2 > QC + Cre_protein
    K_neg_2*QC2

Side_rebinding_step_1:
    QC + Cre_protein > QC2
    K_2*QC*Cre_protein

Side_unbinding_step_2:
    QC > Q + Cre_protein
    K_neg_1*QC

Side_rebinding_step_2:
    Q + Cre_protein > QC
    K_1*Q*Cre_protein

#RFP production
Transcription_PC2:
    PC2 > P + RFP_mRNA + {2} Cre_protein
    Ks1rfp*PC2

Transcription_PC:
    PC > P + RFP_mRNA + {2} Cre_protein
    Ks1rfp*PC

Transcription_P:
    P > P + RFP_mRNA
    Ks1rfp*P

Translation_RFP:
    RFP_mRNA > RFP_mRNA + RFP_protein
    Ksrfp*RFP_mRNA

RFP_mRNA_degradation:
    RFP_mRNA > $pool
    lambda_mrfp*RFP_mRNA
RFP_protein_degradation:
    RFP_protein > $pool
    lambda_rfp*RFP_protein

Plasmid_lost_QC2:
    QC2 > $pool
    K_plasmid_loss*QC2

Plasmid_lost_QC:
    QC > $pool
    K_plasmid_loss*QC

Plasmid_lost_Q:
    Q > $pool
    K_plasmid_loss*Q
#Fixed species
IPTG_ext = 0

# Variable species
LacI_gene = 1
LacI_mRNA = 53
LacI_protein = 5
LacI_dimer = 2000
LacY_operon = 0
YI2 = 1
IPTG = 0
IPTG2_LacI2 = 0
LacY_mRNA = 0
LacY_protein = 4
LacY_protein_IPTG_ext = 0
T7_operon = 0
T7I2 = 1
T7_mRNA = 0
T7_protein = 0
Cre_operon = 0
Cre_mRNA = 0
CreI2 = 12
Cre_protein = 0

L_L = 10
LC_L = 0
L_LC = 0
LC2_L = 0
L_LC2 = 0
LC2_LC = 0
LC_LC = 0
LC_LC2 = 0
S = 0
S_star = 0
PC2 = 0
QC2 = 0
PC = 0
P = 0
QC = 0
Q = 0

RFP_mRNA = 0
RFP_protein = 0

# Parameters
#First order - Need no modification
#All values obtained from deterministic model, divided by 60
KsMR = 0.411
KsR = 0.25
Kneg2R = 0.0000167
KnegRY = 0.04
Knegdr1 = 0.2
Ks1my = 0.00833
Ks0my = 0.0001677
Ksy = 0.5
lambda_mr = 0.0077
lambda_my = 0.0077
lambda_r = 0.00333
lambda_y = 0.00333
lambda_r2 = 0.00333
lambda_i2r2 = 0.00333
lambda_yiex = 0.00333
Knegp = 0.00167
Kft = 1000
Kt = 0.0153
KnegRT7 = 0.04
Ks1mt7 = 2.47
Ks0mt7 = 0.0001677
Kst7 = 0.073
lambda_mt7 = 0.0077
lambda_t7 = 0.00333
KnegRcre = 0.04
Kscre = 0.5
lambda_mcre = 0.0077
lambda_cre = 0.00333
K_3 = 0.04
K_4 = 0.167
K_neg_1 = 6.6e-2
K_neg_2 = 4.8e-3
K_neg_3 = 0.22
Ks1rfp = 0.00833
Ksrfp = 0.5
lambda_mrfp = 0.0077
lambda_rfp = 0.00333
K_plasmid_loss = 0

#Second order - Need to be divided by Na_V
K2R = 0.833
KRy = 16
KRT7 = 16
Knegdr2 = 80
Kp = 0.002
Ks1mcre = 0.471
KRcre = 16
Ks0mcre = 0.000167
K_1 = 2.2e8
K_2 = 2.3e8
K_neg_4 = 0.00035

#Third order - Need to be divided by (Na_V)^2
Kdr1 = 0.5e-8
Kdr2 = 0.5e-8
