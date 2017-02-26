APPEND BAERIE25

IF WEIGHT #-3 
~InParty("lrirenic") Global("AerievsJon","GLOBAL",8)~ THEN BEGIN BJA11
   SAY @0 
   IF ~~ THEN EXTERN BJONEL25 JON_AERIE11
END

IF WEIGHT #-2
~InParty("lrirenic") Global("AerieRomanceActive","GLOBAL",2) Global("AerievsJon","GLOBAL",10)~ THEN BEGIN BJA31
   SAY @1 
   IF ~~ THEN EXTERN BJONEL25 JON_AERIE31
END

IF WEIGHT #-1
~InParty("lrirenic") Global("AerieRomanceActive","GLOBAL",2) Global("AerievsJon","GLOBAL",12)~ THEN BEGIN BJA32
   SAY @2 
   IF ~~ THEN EXTERN BJONEL25 JON_AERIE32
END

END // END AERIE APPEND

APPEND BJONEL25

IF ~InParty("Aerie") Global("AerievsJon","GLOBAL",2)~ THEN BEGIN BJA21
   SAY @3 
   IF ~~ THEN EXTERN BAERIE25 JON_AERIE21
  END

IF ~InParty("Aerie") Global("AerievsJon","GLOBAL",4)~ THEN BEGIN BJA22
   SAY @4 
   IF ~~ THEN EXTERN BAERIE25 JON_AERIE22
  END

IF ~InParty("Aerie") Global("AerievsJon","GLOBAL",6)~ THEN BEGIN BJA23
   SAY @5 
   IF ~~ THEN EXTERN BAERIE25 JON_AERIE23
  END

IF ~InParty("Aerie") Global("AerievsJon", "GLOBAL", 14) Global("JonUndecided","GLOBAL",2)~ THEN BEGIN BJA12
   SAY @6 
   IF ~~ THEN EXTERN BAERIE25 JON_AERIE12
END

IF ~InParty("Aerie")
Global("JonBelow45","GLOBAL",1) Global("JonUndecided","GLOBAL",2)~ THEN BEGIN BJA33
   SAY @7 
   IF ~~ THEN DO ~SetGlobal("JonBelow45","GLOBAL",2)~ EXTERN BAERIE25 JON_AERIE33
END


END //APPEND BJONEL25


CHAIN BJONEL25 JON_AERIE11
@8 
==BAERIE25
@9
==BJONEL25 IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN
@10
==BAERIE25 IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN
@11
==BJONEL25 IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN
@12
==BAERIE25 IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN
@13
==BJONEL25 IF ~!Global("AerieRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",0)~  THEN
@14
==BAERIE25 IF ~!Global("AerieRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",0)~  THEN
@15
==BJONEL25 IF ~!Global("AerieRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",0)~  THEN
@12
==BAERIE25 IF ~!Global("AerieRomanceActive","GLOBAL",2) Global("HaerDalisRomanceActive","GLOBAL",0)~  THEN
@16
==BJONEL25 IF ~!Global("AerieRomanceActive","GLOBAL",2) !Global("HaerDalisRomanceActive","GLOBAL",0)~ THEN
@17
==BAERIE25 IF ~!Global("AerieRomanceActive","GLOBAL",2) !Global("HaerDalisRomanceActive","GLOBAL",0)~ THEN
@18
==BJONEL25 IF ~!Global("AerieRomanceActive","GLOBAL",2) !Global("HaerDalisRomanceActive","GLOBAL",0)~ THEN
@19
==BAERIE25 IF ~!Global("AerieRomanceActive","GLOBAL",2) !Global("HaerDalisRomanceActive","GLOBAL",0)~ THEN
@16
==BJONEL25
@20
EXIT

CHAIN BAERIE25 JON_AERIE12
@21 
==BJONEL25
@22 
=
@23
==BAERIE25
@24
==BJONEL25
@25
==BAERIE25
@26
==BJONEL25
@27
==BAERIE25
@28
==BJONEL25
@29
==BAERIE25
@30
==BJONEL25
@31
DO ~SetGlobal("AerieVsJon","GLOBAL",15)~
EXIT

CHAIN BAERIE25 JON_AERIE21
@32 
==BJONEL25
@33
==BAERIE25
@34
==BJONEL25
@35
==BJONEL25
@36
==BAERIE25
@37
==BJONEL25
@38
==BJONEL25
@39
==BAERIE25
@40
==BJONEL25
@41
EXIT

CHAIN BAERIE25 JON_AERIE22
@42 
==BJONEL25
@43
==BAERIE25
@44
==BJONEL25
@45
==BAERIE25
@46
==BJONEL25
@47
==BAERIE25
@22
==BJONEL25
@49
==BJONEL25
@50
==BAERIE25
@51
==BJONEL25
@52
EXIT

CHAIN BAERIE25 JON_AERIE23
@53 
==BJONEL25
@54
==BAERIE25 IF ~!Global("AerieRomanceActive","GLOBAL",2)~ THEN
@55
==BJONEL25 IF ~!Global("AerieRomanceActive","GLOBAL",2)~ THEN
@56
==BAERIE25 IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN
@57
==BJONEL25 IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN
@58
EXIT

CHAIN BJONEL25 JON_AERIE31
IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN
@59 
==BJONEL25 IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN
@60 
==BAERIE25
@61
==BJONEL25 IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN
@62
==BJONEL25 IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN
@63
==BJONEL25
@64
==BAERIE25
@65
==BJONEL25
@66
==BAERIE25
@67
EXIT

CHAIN BJONEL25 JON_AERIE32
@68 
==BAERIE25
@69
==BJONEL25
@70
==BJONEL25
@71
==BAERIE25
@72
==BJONEL25
@73
==BAERIE25
@74
==BJONEL25
@75
==BJONEL25
@76
==BAERIE25
@77
==BJONEL25
@78
EXIT


CHAIN BAERIE25 JON_AERIE33
@79 
==BJONEL25
@80
==BAERIE25
@81
==BJONEL25
@82
==BAERIE25
@83
==BAERIE25
@84
==BJONEL25
@85
==BAERIE25
@86
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("JonHeal")~
EXIT
