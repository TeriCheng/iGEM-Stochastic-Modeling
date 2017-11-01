

# Reactions
#R1~R39: Lox-term-lox

R1:
    C + L_L >  LC_L
    K_1*C*L_L

R2:
    LC_L > C + L_L
    K_neg_1*LC_L

R3:
    C + LC_L > LC2_L
    K_2*C*LC_L

R4:
    LC2_L > C + LC_L
    K_neg_2*LC2_L

R5:
    C + L_L > L_LC
    K_1*C*L_L

R6:
    L_LC > C + L_L
    K_neg_1*L_LC

R7:
    C + L_LC > L_LC2
    K_2*C*L_LC

R8:
    L_LC2 > C + L_LC
    K_neg_2*L_LC2

R9:
    C + LC_L > LC_LC
    K_1*C*LC_L

R10:
    LC_LC > C + LC_L
    K_neg_1*LC_LC

R11:
    C + L_LC > LC_LC
    K_1*C*L_LC

R12:
    LC_LC > C + L_LC
    K_neg_1*LC_LC

R13:
    LC2_L + C > LC2_LC
    K_1*LC2_L*C

R14:
    LC2_LC > LC2_L + C
    K_neg_1*LC2_LC

R15:
    LC_LC + C > LC2_LC
    K_2*C*LC_LC

R16:
    LC2_LC > LC_LC + C
    K_neg_2*LC2_LC

R17:
    L_LC2 + C > LC_LC2
    K_1*C*L_LC2

R18:
    LC_LC2 > L_LC2 + C
    K_neg_1*LC_LC2
R19:
    LC_LC + C > LC_LC2
    K_2*C*LC_LC

R20:
    LC_LC2 > LC_LC + C
    K_neg_2*LC_LC2

R21:
    LC2_LC + C > S
    K_2*C*LC2_LC

R22:
    S > LC2_LC + C
    K_neg_2*S

R23:
    LC_LC2 + C > S
    K_2*C*LC_LC2

R24:
    S > LC_LC2 + C
    K_neg_2*S

R25:
    S > S_star
    K_3*S

R26:
    S_star > S
    K_neg_3*S_star

R27:
    S_star > PC2 + QC2
    K_4*S_star

R28:
    PC2 + QC2 > S_star
    K_neg_4*PC2*QC2

R29:
    PC2 > PC + C
    K_neg_2*PC2

R30:
    PC + C > PC2
    K_2*PC*C

R31:
    PC > P + C
    K_neg_1*PC

R32:
    P + C > PC
    K_1*P*C

R33:
    QC2 > QC + C
    K_neg_2*QC2

R34:
    QC + C > QC2
    K_2*QC*C

R35:
    QC > Q + C
    K_neg_1*QC

R36:
    Q + C > QC
    K_1*Q*C
R37:
    QC2 > $pool
    K_plasmid_loss*QC2

R38:
    QC > $pool
    K_plasmid_loss*QC

R39:
    Q > $pool
    K_plasmid_loss*Q
#R40~42: Transcription of recombination product
R40:
    PC2 > PC2 + V_mRNA
    K_transcription*PC2

R41:
    PC > PC + V_mRNA
    K_transcription*PC

R42:
    P > P + V_mRNA
    K_transcription*P

V_translation:
    V_mRNA > V_mRNA + V
    K_translation*V_mRNA

V_mRNA_degradation:
    V_mRNA > $pool
    K_mRNA_degradation*V_mRNA

#Degradation of Cre that are bound onto DNA
Cre_protein_degradation:
    C > $pool
    K_protein_degradation*C

Cre_protein_degradation_A:
    LC_L > L_L
    K_protein_degradation*LC_L

Cre_protein_degradation_B:
    L_LC > L_L
    K_protein_degradation*L_LC

Cre_protein_degradation_C:
    LC2_L > LC_L
    K_protein_degradation*LC2_L

Cre_protein_degradation_D:
    L_LC2 > L_LC
    K_protein_degradation*L_LC2

Cre_protein_degradation_E:
    LC2_LC > LC_LC
    K_protein_degradation*LC2_LC

Cre_protein_degradation_F:
    LC2_LC > LC2_L
    K_protein_degradation*LC2_LC

Cre_protein_degradation_G:
    LC_LC2 > LC_LC
    K_protein_degradation*LC_LC2

Cre_protein_degradation_H:
    LC_LC2 > L_LC2
    K_protein_degradation*LC_LC2

Cre_protein_degradation_I:
    S > LC2_LC
    K_protein_degradation*S

Cre_protein_degradation_J:
    S > LC_LC2
    K_protein_degradation*S

Cre_protein_degradation_K:
    QC2 > QC
    K_protein_degradation*QC2

Cre_protein_degradation_L:
    QC > Q
    K_protein_degradation*QC

Cre_protein_degradation_M:
    PC2 > PC
    K_protein_degradation*PC2

Cre_protein_degradation_N:
    PC > P
    K_protein_degradation*PC

#R1~39 for V and Vlox
R1_V:
    V + M_M >  MV_M
    K_1*V*M_M

R2_V:
    MV_M > V + M_M
    K_neg_1*MV_M

R3_V:
    V + MV_M > MV2_M
    K_2*V*MV_M

R4_V:
    MV2_M > V + MV_M
    K_neg_2*MV2_M

R5_V:
    V + M_M > M_MV
    K_1*V*M_M

R6_V:
    M_MV > V + M_M
    K_neg_1*M_MV

R7_V:
    V + M_MV > M_MV2
    K_2*V*M_MV

R8_V:
    M_MV2 > V + M_MV
    K_neg_2*M_MV2

R9_V:
    V + MV_M > MV_MV
    K_1*V*MV_M

R10_V:
    MV_MV > V + MV_M
    K_neg_1*MV_MV

R11_V:
    V + M_MV > MV_MV
    K_1*V*M_MV

R12_V:
    MV_MV > V + M_MV
    K_neg_1*MV_MV

R13_V:
    MV2_M + V > MV2_MV
    K_1*MV2_M*V

R14_V:
    MV2_MV > MV2_M + V
    K_neg_1*MV2_MV

R15_V:
    MV_MV + V > MV2_MV
    K_2*V*MV_MV

R16_V:
    MV2_MV > MV_MV + V
    K_neg_2*MV2_MV

R17_V:
    M_MV2 + V > MV_MV2
    K_1*V*M_MV2

R18_V:
    MV_MV2 > M_MV2 + V
    K_neg_1*MV_MV2
R19_V:
    MV_MV + V > MV_MV2
    K_2*V*MV_MV

R20_V:
    MV_MV2 > MV_MV + V
    K_neg_2*MV_MV2

R21_V:
    MV2_MV + V > S_V
    K_2*V*MV2_MV

R22_V:
    S_V > MV2_MV + V
    K_neg_2*S_V

R23_V:
    MV_MV2 + V > S_V
    K_2*V*MV_MV2

R24_V:
    S_V > MV_MV2 + V
    K_neg_2*S_V

R25_V:
    S_V > S_V_star
    K_3*S_V

R26_V:
    S_V_star > S_V
    K_neg_3*S_V_star

R27_V:
    S_V_star > AV2 + BV2
    K_4*S_V_star

R28_V:
    AV2 + BV2 > S_V_star
    K_neg_4*AV2*BV2

R29_V:
    AV2 > AV + V
    K_neg_2*AV2

R30_V:
    AV + V > AV2
    K_2*AV*V

R31_V:
    AV > A + V
    K_neg_1*AV

R32_V:
    A + V > AV
    K_1*A*V

R33_V:
    BV2 > BV + V
    K_neg_2*BV2

R34_V:
    BV + V > BV2
    K_2*BV*V

R35_V:
    BV > B + V
    K_neg_1*BV

R36_V:
    B + V > BV
    K_1*B*V

R37_V:
    BV2 > $pool
    K_plasmid_loss*BV2

R38_V:
    BV > $pool
    K_plasmid_loss*BV

R39_V:
    B > $pool
    K_plasmid_loss*B
#R40~42 for VCre:
R40_V:
    AV2 > AV2 + D_mRNA
    K_transcription*AV2

R41_V:
    AV > AV + D_mRNA
    K_transcription*AV

R42_V:
    A > A + D_mRNA
    K_transcription*A
D_translation:
    D_mRNA > D_mRNA + D
    K_translation*D_mRNA

D_mRNA_degradation:
    D_mRNA > $pool
    K_mRNA_degradation*D_mRNA
#Degradation of VCre that are bound onto DNA
VCre_protein_degradation:
    V > $pool
    K_protein_degradation*V

VCre_protein_degradation_A:
    MV_M > M_M
    K_protein_degradation*MV_M

VCre_protein_degradation_B:
    M_MV > M_M
    K_protein_degradation*M_MV

VCre_protein_degradation_C:
    MV2_M > MV_M
    K_protein_degradation*MV2_M

VCre_protein_degradation_D:
    M_MV2 > M_MV
    K_protein_degradation*M_MV2

VCre_protein_degradation_E:
    MV2_MV > MV_MV
    K_protein_degradation*MV2_MV

VCre_protein_degradation_F:
    MV2_MV > MV2_M
    K_protein_degradation*MV2_MV

VCre_protein_degradation_G:
    MV_MV2 > MV_MV
    K_protein_degradation*MV_MV2

VCre_protein_degradation_H:
    MV_MV2 > M_MV2
    K_protein_degradation*MV_MV2

VCre_protein_degradation_I:
    S_V > MV2_MV
    K_protein_degradation*S_V

VCre_protein_degradation_J:
    S_V > MV_MV2
    K_protein_degradation*S_V

VCre_protein_degradation_K:
    BV2 > BV
    K_protein_degradation*BV2

VCre_protein_degradation_L:
    BV > B
    K_protein_degradation*BV

VCre_protein_degradation_M:
    AV2 > AV
    K_protein_degradation*AV2

VCre_protein_degradation_N:
    AV > A
    K_protein_degradation*AV

#R1~39 for D:
R1_D:
    D + N_N >  ND_N
    K_1*D*N_N

R2_D:
    ND_N > D + N_N
    K_neg_1*ND_N

R3_D:
    D + ND_N > ND2_N
    K_2*D*ND_N

R4_D:
    ND2_N > D + ND_N
    K_neg_2*ND2_N

R5_D:
    D + N_N > N_ND
    K_1*D*N_N

R6_D:
    N_ND > D + N_N
    K_neg_1*N_ND

R7_D:
    D + N_ND > N_ND2
    K_2*D*N_ND

R8_D:
    N_ND2 > D + N_ND
    K_neg_2*N_ND2

R9_D:
    D + ND_N > ND_ND
    K_1*D*ND_N

R10_D:
    ND_ND > D + ND_N
    K_neg_1*ND_ND

R11_D:
    D + N_ND > ND_ND
    K_1*D*N_ND

R12_D:
    ND_ND > D + N_ND
    K_neg_1*ND_ND

R13_D:
    ND2_N + D > ND2_ND
    K_1*ND2_N*D

R14_D:
    ND2_ND > ND2_N + D
    K_neg_1*ND2_ND

R15_D:
    ND_ND + D > ND2_ND
    K_2*D*ND_ND

R16_D:
    ND2_ND > ND_ND + D
    K_neg_2*ND2_ND

R17_D:
    N_ND2 + D > ND_ND2
    K_1*D*N_ND2

R18_D:
    ND_ND2 > N_ND2 + D
    K_neg_1*ND_ND2

R19_D:
    ND_ND + D > ND_ND2
    K_2*D*ND_ND

R20_D:
    ND_ND2 > ND_ND + D
    K_neg_2*ND_ND2

R21_D:
    ND_ND2 + D > S_D
    K_2*D*ND_ND2

R22_D:
    S_D > ND2_ND + D
    K_neg_2*S_D

R23_D:
    ND_ND2 + D > S_D
    K_2*D*ND_ND2

R24_D:
    S_D > ND_ND2 + D
    K_neg_2*S_D

R25_D:
    S_D > S_D_star
    K_3*S_D

R26_D:
    S_D_star > S_D
    K_neg_3*S_D_star

R27_D:
    S_D_star > ED2 + FD2
    K_4*S_D_star

R28_D:
    ED2 + FD2 > S_D_star
    K_neg_4*ED2*FD2

R29_D:
    ED2 > ED + D
    K_neg_2*ED2

R30_D:
    ED + D > ED2
    K_2*ED*D

R31_D:
    ED > E + D
    K_neg_1*ED

R32_D:
    E + D > ED
    K_1*E*D

R33_D:
    FD2 > FD + D
    K_neg_2*FD2

R34_D:
    FD + D > FD2
    K_2*FD*D

R35_D:
    FD > F + D
    K_neg_1*FD

R36_D:
    F + D > FD
    K_1*F*D
R37_D:
    FD2 > $pool
    K_plasmid_loss*FD2

R38_D:
    FD > $pool
    K_plasmid_loss*FD

R39_D:
    F > $pool
    K_plasmid_loss*F


Eliminate_PC2:
    ED2 + PC2 > ED2
    K_moderator*ED2*PC2

Eliminate_PC:
    ED2 + PC > ED2
    K_moderator*ED2*PC

Eliminate_P:
    ED2 + P > ED2
    K_moderator*ED2*P
#R40~42 for D:
R40_D:
    ED2 > ED2 + G_mRNA
    K_transcription*ED2

R41_D:
    ED > ED + G_mRNA
    K_transcription*ED

R42_D:
    E > E + G_mRNA
    K_transcription*E
G_translation:
    G_mRNA > G_mRNA + G
    K_translation*G_mRNA

G_mRNA_degradation:
    G_mRNA > $pool
    K_mRNA_degradation*G_mRNA
#Degradation of D that are bound onto DNA
D_protein_degradation:
    D > $pool
    K_protein_degradation*D

D_protein_degradation_A:
    ND_N > N_N
    K_protein_degradation*ND_N

D_protein_degradation_B:
    N_ND > N_N
    K_protein_degradation*N_ND

D_protein_degradation_C:
    ND2_N > ND_N
    K_protein_degradation*ND2_N

D_protein_degradation_D:
    N_ND2 > N_ND
    K_protein_degradation*N_ND2

D_protein_degradation_E:
    ND2_ND > ND_ND
    K_protein_degradation*ND2_ND

D_protein_degradation_F:
    ND2_ND > ND2_N
    K_protein_degradation*ND2_ND

D_protein_degradation_G:
    ND_ND2 > ND_ND
    K_protein_degradation*ND_ND2

D_protein_degradation_H:
    ND_ND2 > N_ND2
    K_protein_degradation*ND_ND2

D_protein_degradation_I:
    S_D > ND2_ND
    K_protein_degradation*S_D

D_protein_degradation_J:
    S_D > ND_ND2
    K_protein_degradation*S_D

D_protein_degradation_K:
    ED2 > ED
    K_protein_degradation*ED2

D_protein_degradation_L:
    ED > E
    K_protein_degradation*ED

D_protein_degradation_M:
    FD2 > FD
    K_protein_degradation*FD2

D_protein_degradation_N:
    FD > F
    K_protein_degradation*FD
#R1~39 for G:
R1_G:
    G + O_O >  OG_O
    K_1*G*O_O

R2_G:
    OG_O > G + O_O
    K_neg_1*OG_O

R3_G:
    G + OG_O > OG2_O
    K_2*G*OG_O
R4_G:
    OG2_O > G + OG_O
    K_neg_2*OG2_O

R5_G:
    G + O_O > O_OG
    K_1*G*O_O

R6_G:
    O_OG > G + O_O
    K_neg_1*O_OG

R7_G:
    G + O_OG > O_OG2
    K_2*G*O_OG

R8_G:
    O_OG2 > G + O_OG
    K_neg_2*O_OG2

R9_G:
    G + OG_O > OG_OG
    K_1*G*OG_O

R10_G:
    OG_OG > G + OG_O
    K_neg_1*OG_OG

R11_G:
    G + O_OG > OG_OG
    K_1*G*O_OG

R12_G:
    OG_OG > G + O_OG
    K_neg_1*OG_OG

R13_G:
    OG2_O + G > OG2_OG
    K_1*OG2_O*G

R14_G:
    OG2_OG > OG2_O + G
    K_neg_1*OG2_OG

R15_G:
    OG_OG + G > OG2_OG
    K_2*G*OG_OG

R16_G:
    OG2_OG > OG_OG + G
    K_neg_2*OG2_OG

R17_G:
    O_OG2 + G > OG_OG2
    K_1*G*O_OG2

R18_G:
    OG_OG2 > O_OG2 + G
    K_neg_1*OG_OG2

R19_G:
    OG_OG + G > OG_OG2
    K_2*G*OG_OG

R20_G:
    OG_OG2 > OG_OG + G
    K_neg_2*OG_OG2

R21_G:
    OG_OG2 + G > S_G
    K_2*G*OG_OG2

R22_G:
    S_G > OG2_OG + G
    K_neg_2*S_G

R23_G:
    OG_OG2 + G > S_G
    K_2*G*OG_OG2

R24_G:
    S_G > OG_OG2 + G
    K_neg_2*S_G

R25_G:
    S_G > S_G_star
    K_3*S_G

R26_G:
    S_G_star > S_G
    K_neg_3*S_G_star

R27_G:
    S_G_star > HG2 + IG2
    K_4*S_G_star

R28_G:
    HG2 + IG2 > S_G_star
    K_neg_4*HG2*IG2

R29_G:
    HG2 > HG + G
    K_neg_2*HG2

R30_G:
    HG + G > HG2
    K_2*HG*G

R31_G:
    HG > H + G
    K_neg_1*HG

R32_G:
    H + G > HG
    K_1*H*G

R33_G:
    IG2 > IG + G
    K_neg_2*IG2

R34_G:
    IG + G > IG2
    K_2*IG*G

R35_G:
    IG > I + G
    K_neg_1*IG

R36_G:
    I + G > IG
    K_1*I*G
R37_G:
    IG2 > $pool
    K_plasmid_loss*IG2

R38_G:
    IG > $pool
    K_plasmid_loss*IG

R39_G:
    I > $pool
    K_plasmid_loss*I


Eliminate_AV2:
    HG2 + AV2 > HG2
    K_moderator*HG2*AV2

Eliminate_AV:
    HG2 + AV > HG2
    K_moderator*HG2*AV

Eliminate_A:
    HG2 + A > HG2
    K_moderator*HG2*A
##R40~42 for G:
R40_G:
    HG2 > HG2 + J_mRNA
    K_transcription*HG2

R41_G:
    HG > HG + J_mRNA
    K_transcription*HG

R42_G:
    H > H + J_mRNA
    K_transcription*H
J_translation:
    J_mRNA > J_mRNA + J
    K_translation*J_mRNA

J_mRNA_degradation:
    J_mRNA > $pool
    K_mRNA_degradation*J_mRNA
#Degradation of G that are bound onto DNA
G_protein_degradation:
    G > $pool
    K_protein_degradation*G

G_protein_degradation_A:
    OG_O > O_O
    K_protein_degradation*OG_O

G_protein_degradation_B:
    O_OG > O_O
    K_protein_degradation*O_OG

G_protein_degradation_C:
    OG2_O > OG_O
    K_protein_degradation*OG2_O

G_protein_degradation_D:
    O_OG2 > O_OG
    K_protein_degradation*O_OG2

G_protein_degradation_E:
    OG2_OG > OG_OG
    K_protein_degradation*OG2_OG

G_protein_degradation_F:
    OG2_OG > OG2_O
    K_protein_degradation*OG2_OG

G_protein_degradation_G:
    OG_OG2 > OG_OG
    K_protein_degradation*OG_OG2

G_protein_degradation_H:
    OG_OG2 > O_OG2
    K_protein_degradation*OG_OG2

G_protein_degradation_I:
    S_G > OG2_OG
    K_protein_degradation*S_G

G_protein_degradation_J:
    S_G > OG_OG2
    K_protein_degradation*S_G

G_protein_degradation_K:
    HG2 > HG
    K_protein_degradation*HG2

G_protein_degradation_L:
    HG > H
    K_protein_degradation*HG

G_protein_degradation_M:
    IG2 > IG
    K_protein_degradation*IG2

G_protein_degradation_N:
    IG > I
    K_protein_degradation*IG

#R1~39 for J:
R1_J:
    J + R_R >  RJ_R
    K_1*J*R_R

R2_J:
    RJ_R > J + R_R
    K_neg_1*RJ_R

R3_J:
    J + RJ_R > RJ2_R
    K_2*J*RJ_R

R4_J:
    RJ2_R > J + RJ_R
    K_neg_2*RJ2_R

R5_J:
    J + R_R > R_RJ
    K_1*J*R_R

R6_J:
    R_RJ > J + R_R
    K_neg_1*R_RJ

R7_J:
    J + R_RJ > R_RJ2
    K_2*J*R_RJ

R8_J:
    R_RJ2 > J + R_RJ
    K_neg_2*R_RJ2

R9_J:
    J + RJ_R > RJ_RJ
    K_1*J*RJ_R

R10_J:
    RJ_RJ > J + RJ_R
    K_neg_1*RJ_RJ

R11_J:
    J + R_RJ > RJ_RJ
    K_1*J*R_RJ

R12_J:
    RJ_RJ > J + R_RJ
    K_neg_1*RJ_RJ

R13_J:
    RJ2_R + J > RJ2_RJ
    K_1*RJ2_R*J

R14_J:
    RJ2_RJ > RJ2_R + J
    K_neg_1*RJ2_RJ

R15_J:
    RJ_RJ + J > RJ2_RJ
    K_2*J*RJ_RJ

R16_J:
    RJ2_RJ > RJ_RJ + J
    K_neg_2*RJ2_RJ

R17_J:
    R_RJ2 + J > RJ_RJ2
    K_1*J*R_RJ2

R18_J:
    RJ_RJ2 > R_RJ2 + J
    K_neg_1*RJ_RJ2

R19_J:
    RJ_RJ + J > RJ_RJ2
    K_2*J*RJ_RJ

R20_J:
    RJ_RJ2 > RJ_RJ + J
    K_neg_2*RJ_RJ2

R21_J:
    RJ_RJ2 + J > S_J
    K_2*J*RJ_RJ2

R22_J:
    S_J > RJ_RJ2 + J
    K_neg_2*S_J

R23_J:
    RJ2_RJ + J > S_J
    K_2*J*RJ2_RJ

R24_J:
    S_J > RJ2_RJ + J
    K_neg_2*S_J

R25_J:
    S_J > S_J_star
    K_3*S_J

R26_J:
    S_J_star > S_J
    K_neg_3*S_J_star

R27_J:
    S_J_star > TJ2 + UJ2
    K_4*S_J_star

R28_J:
    TJ2 + UJ2 > S_J_star
    K_neg_4*UJ2*TJ2

R29_J:
    TJ2 > TJ + J
    K_neg_2*TJ2

R30_J:
    TJ + J > TJ2
    K_2*TJ*J

R31_J:
    TJ > T + J
    K_neg_1*TJ

R32_J:
    T + J > TJ
    K_1*T*J

R33_J:
    UJ2 > UJ + J
    K_neg_2*UJ2

R34_J:
    UJ + J > UJ2
    K_2*UJ*J

R35_J:
    UJ > U + J
    K_neg_1*UJ

R36_J:
    U + J > UJ
    K_1*U*J
R37_J:
    UJ2 > $pool
    K_plasmid_loss*UJ2

R38_J:
    UJ > $pool
    K_plasmid_loss*UJ

R39_J:
    U > $pool
    K_plasmid_loss*U


Eliminate_ED2:
    TJ2 + ED2 > TJ2
    K_moderator*TJ2*ED2

Eliminate_ED:
    TJ2 + ED > TJ2
    K_moderator*TJ2*ED

Eliminate_E:
    TJ2 + E > TJ2
    K_moderator*TJ2*E

###R40~42 for J:
R40_J:
    TJ2 > TJ2 + W_mRNA
    K_transcription*TJ2

R41_J:
    TJ > TJ + W_mRNA
    K_transcription*TJ

R42_J:
    T > T + J_mRNA
    K_transcription*T
W_translation:
    W_mRNA > W_mRNA + W
    K_translation*W_mRNA

W_mRNA_degradation:
    W_mRNA > $pool
    K_mRNA_degradation*W_mRNA
#Degradation of J that are bound onto DNA
J_protein_degradation:
    J > $pool
    K_protein_degradation*J

J_protein_degradation_A:
    RJ_R > R_R
    K_protein_degradation*RJ_R

J_protein_degradation_B:
    R_RJ > R_R
    K_protein_degradation*R_RJ

J_protein_degradation_C:
    RJ2_R > RJ_R
    K_protein_degradation*RJ2_R

J_protein_degradation_D:
    R_RJ2 > R_RJ
    K_protein_degradation*R_RJ2

J_protein_degradation_E:
    RJ2_RJ > RJ_RJ
    K_protein_degradation*RJ2_RJ

J_protein_degradation_F:
    RJ2_RJ > RJ2_R
    K_protein_degradation*RJ2_RJ

J_protein_degradation_G:
    RJ_RJ2 > RJ_RJ
    K_protein_degradation*RJ_RJ2

J_protein_degradation_H:
    RJ_RJ2 > R_RJ2
    K_protein_degradation*RJ_RJ2

J_protein_degradation_I:
    S_J > RJ2_RJ
    K_protein_degradation*S_J

J_protein_degradation_J:
    S_J > RJ_RJ2
    K_protein_degradation*S_J

J_protein_degradation_K:
    TJ2 > TJ
    K_protein_degradation*TJ2

J_protein_degradation_L:
    TJ > T
    K_protein_degradation*TJ

J_protein_degradation_M:
    UJ2 > UJ
    K_protein_degradation*UJ2

J_protein_degradation_N:
    UJ > U
    K_protein_degradation*UJ
#R1~39 for W:
R1_W:
    W + X_X >  XW_X
    K_1*W*X_X
R2_W:
    XW_X > W + X_X
    K_neg_1*XW_X
R3_W:
    W + XW_X > XW2_X
    K_2*W*XW_X
R4_W:
    XW2_X > W + XW_X
    K_neg_2*XW2_X
R5_W:
    W + X_X > X_XW
    K_1*W*X_X
R6_W:
    X_XW > W + X_X
    K_neg_1*X_XW

R7_W:
    W + X_XW > X_XW2
    K_2*W*X_XW

R8_W:
    X_XW2 > W + X_XW
    K_neg_2*X_XW2

R9_W:
    W + XW_X > XW_XW
    K_1*W*XW_X

R10_W:
    XW_XW > W + XW_X
    K_neg_1*XW_XW

R11_W:
    W + X_XW > XW_XW
    K_1*W*X_XW

R12_W:
    XW_XW > W + X_XW
    K_neg_1*XW_XW

R13_W:
    XW2_X + W > XW2_XW
    K_1*XW2_X*W

R14_W:
    XW2_XW > XW2_X + W
    K_neg_1*XW2_XW

R15_W:
    XW_XW + W > XW2_XW
    K_2*W*XW_XW

R16_W:
    XW2_XW > XW_XW + W
    K_neg_2*XW2_XW

R17_W:
    X_XW2 + W > XW_XW2
    K_1*W*X_XW2

R18_W:
    XW_XW2 > X_XW2 + W
    K_neg_1*XW_XW2

R19_W:
    XW_XW + W > XW_XW2
    K_2*W*XW_XW

R20_W:
    XW_XW2 > XW_XW + W
    K_neg_2*XW_XW2

R21_W:
    XW_XW2 + W > S_W
    K_2*W*XW_XW2

R22_W:
    S_W > XW_XW2 + W
    K_neg_2*S_W

R23_W:
    XW2_XW + W > S_W
    K_2*W*XW2_XW

R24_W:
    S_W > XW2_XW + W
    K_neg_2*S_W

R25_W:
    S_W > S_W_star
    K_3*S_W

R26_W:
    S_W_star > S_W
    K_neg_3*S_W_star

R27_W:
    S_W_star > YW2 + ZW2
    K_4*S_W_star

R28_W:
    YW2 + ZW2 > S_W_star
    K_neg_4*YW2*ZW2

R29_W:
    YW2 > YW + W
    K_neg_2*YW2

R30_W:
    YW + W > YW2
    K_2*YW*W

R31_W:
    YW > Y + W
    K_neg_1*YW

R32_W:
    Y + W > YW
    K_1*Y*W

R33_W:
    ZW2 > ZW + W
    K_neg_2*ZW2

R34_W:
    ZW + W > ZW2
    K_2*ZW*W

R35_W:
    ZW > Z + W
    K_neg_1*ZW

R36_W:
    Z + W > ZW
    K_1*Z*W
R37_W:
    ZW2 > $pool
    K_plasmid_loss*ZW2

R38_W:
    ZW > $pool
    K_plasmid_loss*ZW

R39_W:
    Z > $pool
    K_plasmid_loss*Z


Eliminate_HG2:
    YW2 + HG2 > YW2
    K_moderator*YW2*HG2

Eliminate_HG:
    YW2 + HG > YW2
    K_moderator*YW2*HG

Eliminate_H:
    YW2 + H > YW2
    K_moderator*YW2*H
#No R40~42 for W
##Degradation of W that are bound onto DNA
W_protein_degradation:
    W > $pool
    K_protein_degradation*W

W_protein_degradation_A:
    XW_X > X_X
    K_protein_degradation*XW_X

W_protein_degradation_B:
    X_XW > X_X
    K_protein_degradation*X_XW

W_protein_degradation_C:
    XW2_X > XW_X
    K_protein_degradation*XW2_X

W_protein_degradation_D:
    X_XW2 > X_XW
    K_protein_degradation*X_XW2

W_protein_degradation_E:
    XW2_XW > XW_XW
    K_protein_degradation*XW2_XW

W_protein_degradation_F:
    XW2_XW > XW2_X
    K_protein_degradation*XW2_XW

W_protein_degradation_G:
    XW_XW2 > XW_XW
    K_protein_degradation*XW_XW2

W_protein_degradation_H:
    XW_XW2 > X_XW2
    K_protein_degradation*XW_XW2

W_protein_degradation_I:
    S_W > XW2_XW
    K_protein_degradation*S_W

W_protein_degradation_J:
    S_W > XW_XW2
    K_protein_degradation*S_W

W_protein_degradation_K:
    YW2 > YW
    K_protein_degradation*YW2

W_protein_degradation_L:
    YW > W
    K_protein_degradation*YW

W_protein_degradation_M:
    ZW2 > ZW
    K_protein_degradation*ZW2

W_protein_degradation_N:
    ZW > Z
    K_protein_degradation*ZW
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
V_mRNA = 0
V = 0
M_M = 1
MV_M = 0
M_MV = 0
MV2_M = 0
M_MV2 = 0
MV2_MV = 0
MV_MV = 0
MV_MV2 = 0
S_V = 0
S_V_star = 0
AV2 = 0
BV2 = 0
AV = 0
A = 0
BV = 0
B = 0
D_mRNA = 0
D = 0
N_N = 1
ND_N = 0
N_ND = 0
ND2_N = 0
N_ND2 = 0
ND2_ND = 0
ND_ND = 0
ND_ND2 = 0
S_D = 0
S_D_star = 0
ED2 = 0
FD2 = 0
ED = 0
E = 0
FD = 0
F = 0
G_mRNA = 0
G = 0
O_O = 1
OG_O = 0
O_OG = 0
OG2_O = 0
O_OG2 = 0
OG2_OG = 0
OG_OG = 0
OG_OG2 = 0
S_G = 0
S_G_star = 0
HG2 = 0
IG2 = 0
HG = 0
H = 0
IG = 0
I = 0
J_mRNA = 0
J = 0
R_R = 1
RJ_R = 0
R_RJ = 0
RJ2_R = 0
R_RJ2 = 0
RJ2_RJ = 0
RJ_RJ = 0
RJ_RJ2 = 0
S_J = 0
S_J_star = 0
TJ2 = 0
UJ2 = 0
TJ = 0
T = 0
UJ = 0
U = 0
W_mRNA = 0
W = 0
X_X = 1
XW_X = 0
X_XW = 0
XW2_X = 0
X_XW2 = 0
XW2_XW = 0
XW_XW = 0
XW_XW2 = 0
S_W = 0
S_W_star = 0
YW2 = 0
ZW2 = 0
YW = 0
Y = 0
ZW = 0
Z = 0

# Parameters
# K_1 and K_2 are second order and need to be divided by Na_V
# For K_1~2, undivided values are used here
K_1 = 2.2e8
K_2 = 2.3e8

# K_3 and K_4 are first order and need no modification
K_3 = 0.04
K_4 = 0.167

# These are all fist order and need no modification
K_transcription = 0.411
K_translation = 0.25
K_mRNA_degradation = 0.0077
K_protein_degradation = 0.00333
K_plasmid_loss = 0.00083

# Neg 1,2,3 are all first order and need no modification
K_neg_1 = 6.6e-2
K_neg_2 = 4.8e-3
K_neg_3 = 0.22

# Neg 4 is second order and need to be divided by Na_V
K_neg_4 = 0.00035

#K_moderator
K_moderator = 1000000
