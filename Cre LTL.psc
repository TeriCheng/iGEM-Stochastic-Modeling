

# Reactions

Cre_binding_to_LoxP1:
    C + L_L >  LC_L
    K_1*C*L_L

Cre_unbinding_to_LoxP1:
    LC_L > C + L_L
    K_neg_1*LC_L

Cre_binding_to_LoxP1_second_step:
    C + LC_L > LC2_L
    K_2*C*LC_L

Cre_unbinding_to_LoxP1_second_step:
    LC2_L > C + LC_L
    K_neg_2*LC2_L

Cre_binding_to_LoxP2:
    C + L_L > L_LC
    K_1*C*L_L

Cre_unbinding_to_LoxP2:
    L_LC > C + L_L
    K_neg_1*L_LC

Cre_binding_to_LoxP2_second_step:
    C + L_LC > L_LC2
    K_2*C*L_LC

Cre_unbinding_to_LoxP2_second_step:
    L_LC2 > C + L_LC
    K_neg_2*L_LC2

Cre_binding_to_another_LoxP:
    C + LC_L > LC_LC
    K_1*C*LC_L

Cre_unbinding_to_another_LoxP:
    LC_LC > C + LC_L
    K_neg_1*LC_LC

Cre_binding_to_another_LoxP_2:
    C + L_LC > LC_LC
    K_1*C*L_LC

Cre_unbinding_to_another_LoxP_2:
    LC_LC > C + L_LC
    K_neg_1*LC_LC

Cre_binding_third_step:
    LC2_L + C > LC2_LC
    K_1*LC2_L*C

Cre_unbinding_third_step:
    LC2_LC > LC2_L + C
    K_neg_1*LC2_LC

Cre_binding_third_step_2:
    LC_LC + C > LC2_LC
    K_2*C*LC_LC

Cre_unbinding_third_step_2:
    LC2_LC > LC_LC + C
    K_neg_2*LC2_LC

Cre_binding_third_step_3:
    L_LC2 + C > LC_LC2
    K_1*C*L_LC2

Cre_unbinding_third_step_3:
    LC_LC2 > L_LC2 + C
    K_neg_1*LC_LC2

Cre_binding_third_step_4:
    LC_LC + C > LC_LC2
    K_2*C*LC_LC

Cre_unbinding_third_step_4:
    LC_LC2 > LC_LC + C
    K_neg_2*LC_LC2

Cre_binding_fourth_step:
    LC2_LC + C > S
    K_2*C*LC2_LC

Cre_unbinding_fourth_step:
    S > LC2_LC + C
    K_neg_2*S

Cre_binding_fourth_step_2:
    LC_LC2 + C > S
    K_2*C*LC_LC2

Cre_unbinding_fourth_step_2:
    S > LC_LC2 + C
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
    PC2 > PC + C
    K_neg_2*PC2

Product_rebinding_step_1:
    PC + C > PC2
    K_2*PC*C

Product_unbinding_step_2:
    PC > P + C
    K_neg_1*PC

Product_rebinding_step_2:
    P + C > PC
    K_1*P*C

Side_unbinding_step_1:
    QC2 > QC + C
    K_neg_2*QC2

Side_rebinding_step_1:
    QC + C > QC2
    K_2*QC*C

Side_unbinding_step_2:
    QC > Q + C
    K_neg_1*QC

Side_rebinding_step_2:
    Q + C > QC
    K_1*Q*C

Transcription_PC2:
    PC2 > PC2 + RFP_mRNA
    K_transcription*PC2

Transcription_PC:
    PC > PC + RFP_mRNA
    K_transcription*PC

Transcription_P:
    P > P + RFP_mRNA
    K_transcription*P

Translation_RFP:
    RFP_mRNA > RFP_mRNA + RFP_protein
    K_translation*RFP_mRNA

RFP_mRNA_degradation:
    RFP_mRNA > $pool
    K_mRNA_degradation*RFP_mRNA

RFP_protein_degradation:
    RFP_protein > $pool
    K_protein_degradation*RFP_protein

#Optional Q degradation

Plasmid_lost_QC2:
    QC2 > $pool
    K_plasmid_loss*QC2

Plasmid_lost_QC:
    QC > $pool
    K_plasmid_loss*QC

Plasmid_lost_Q:
    Q > $pool
    K_plasmid_loss*Q
# Cre expressing construct

Cre_transcription:
    C_plasmid > C_plasmid + Cre_mRNA
    K_transcription*C_plasmid

Cre_mRNA_degradation:
    Cre_mRNA > $pool
    K_mRNA_degradation*Cre_mRNA

Cre_translation:
    Cre_mRNA > Cre_mRNA + C
    K_translation*Cre_mRNA
#Fixed species



# Variable species
C = 1000000
L_L = 12
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
Cre_mRNA = 0
C_plasmid = 0
 
# Parameters
# K_1 and K_2 are second order and need to be divided by Na_V
# For K_1~2, undivided values are used here
K_1 = 2.2e8
K_2 = 2.3e8

# K_3 and K_4 are first order and need no modification
K_3 = 0.04
K_4 = 0.167

# These are all fist order and need no modification
K_transcription = 10
K_translation = 10
K_mRNA_degradation = 0.2
K_protein_degradation = 0.2
K_plasmid_loss = 0.00083

# Neg 1,2,3 are all first order and need no modification
K_neg_1 = 6.6e-2
K_neg_2 = 4.8e-3
K_neg_3 = 0.22

# Neg 4 is second order and need to be divided by Na_V
K_neg_4 = 0.00035
