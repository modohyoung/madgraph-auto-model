######################################################################
## PARAM_CARD AUTOMATICALY GENERATED BY MG5 FOLLOWING UFO MODEL   ####
######################################################################
##                                                                  ##
##  Width set on Auto will be computed following the information    ##
##        present in the decay.py files of the model.               ##
##        See  arXiv:1402.1178 for more details.                    ##
##                                                                  ##
######################################################################

###################################
## INFORMATION FOR MASS
###################################
Block mass 
    5 4.700000e+00 # MB 
    6 1.730000e+02 # MT 
   15 1.777000e+00 # MTA 
   23 9.118800e+01 # MZ 
   25 $MHIGGS$     # set of param :1*MH, 1*MP 
## Dependent parameters, given by model restrictions.
## Those values should be edited following the 
## analytical expression. MG5 ignores those values 
## but they are important for interfacing the output of MG5
## to external program such as Pythia.
  1 0.000000 # d : 0.0 
  2 0.000000 # u : 0.0 
  3 0.000000 # s : 0.0 
  4 0.000000 # c : 0.0 
  11 0.000000 # e- : 0.0 
  12 0.000000 # ve : 0.0 
  13 0.000000 # mu- : 0.0 
  14 0.000000 # vm : 0.0 
  16 0.000000 # vt : 0.0 
  21 0.000000 # g : 0.0 
  22 0.000000 # a : 0.0 
  24 80.419002 # w+ : cmath.sqrt(MZ__exp__2/2. + cmath.sqrt(MZ__exp__4/4. - (aEW*cmath.pi*MZ__exp__2)/(Gf*sqrt__2))) 
  9000006 $MHIGGS$   # h1 : MH 

###################################
## INFORMATION FOR SMINPUTS
###################################
Block sminputs 
    1 1.325070e+02 # aEWM1 
    2 1.166390e-05 # Gf 
    3 1.180000e-01 # aS 

###################################
## INFORMATION FOR YUKAWA
###################################
Block yukawa 
    5 4.200000e+00 # ymb 
    6 1.645000e+02 # ymt 
   15 1.777000e+00 # ymtau 

###################################
## INFORMATION FOR DECAY
###################################
DECAY   6 1.491500e+00 # WT 
DECAY  23 2.441404e+00 # WZ 
DECAY  24 2.047600e+00 # WW 
DECAY  25 $WHIGGS$     # WH 
DECAY 9000006 $WHIGGS$  # WH1 
## Dependent parameters, given by model restrictions.
## Those values should be edited following the 
## analytical expression. MG5 ignores those values 
## but they are important for interfacing the output of MG5
## to external program such as Pythia.
DECAY  1 0.000000 # d : 0.0 
DECAY  2 0.000000 # u : 0.0 
DECAY  3 0.000000 # s : 0.0 
DECAY  4 0.000000 # c : 0.0 
DECAY  5 0.000000 # b : 0.0 
DECAY  11 0.000000 # e- : 0.0 
DECAY  12 0.000000 # ve : 0.0 
DECAY  13 0.000000 # mu- : 0.0 
DECAY  14 0.000000 # vm : 0.0 
DECAY  15 0.000000 # ta- : 0.0 
DECAY  16 0.000000 # vt : 0.0 
DECAY  21 0.000000 # g : 0.0 
DECAY  22 0.000000 # a : 0.0 
#===========================================================
# QUANTUM NUMBERS OF NEW STATE(S) (NON SM PDG CODE)
#===========================================================

Block QNUMBERS 9000006  # h1 
        1 0  # 3 times electric charge
        2 1  # number of spin states (2S+1)
        3 1  # colour rep (1: singlet, 3: triplet, 8: octet)
        4 0  # Particle/Antiparticle distinction (0=own anti)