APPEND MINSC25J

IF ~InParty("LRIRENIC") Global("MinscIsMad","GLOBAL",1) Global("AgreedToGiveSoul","GLOBAL",0)~ THEN BEGIN LRMIN1A
     SAY @0 
     IF ~~ THEN DO ~SetGlobal("MinscIsMad","GLOBAL",2)~ GOTO LRMIN2A
END

IF ~~ THEN BEGIN LRMIN2A
   SAY @1
   IF ~~ THEN REPLY @2 GOTO LRMIN5
   IF ~~ THEN REPLY @3 GOTO LRMIN3
END

IF ~~ THEN BEGIN LRMIN5
   SAY @4
   IF ~~ THEN EXTERN JONEL25J JON_MINSC1
END

IF ~~ THEN BEGIN LRMIN6
   SAY @5
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LRMIN3
   SAY @6
   IF ~~ THEN GOTO LRMIN4
END

IF ~~ THEN BEGIN LRMIN4
   SAY @7
   IF ~~ THEN DO ~SetGlobal("JonMinscFight","GLOBAL",1)~ EXIT
END

IF ~InParty("LRIRENIC") Global("MinscIsMad","GLOBAL",1)
!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN BEGIN LRMIN1
     SAY @8
     IF ~~ THEN REPLY @9 DO ~SetGlobal("MinscIsMad","GLOBAL",2)~ GOTO LRMIN2
     IF ~!CheckStatGT(Player1,11,CHR) Alignment(Player1,MASK_EVIL) !InParty("Aerie")~ THEN REPLY @10 DO ~SetGlobal("MinscIsMad","GLOBAL",2)~ GOTO LRMIN2
     IF ~CheckStatGT(Player1,11,CHR) Alignment(Player1,MASK_EVIL)!InParty("Aerie")~ THEN REPLY @10 DO ~SetGlobal("MinscIsMad","GLOBAL",2)~ GOTO LRMIN5
     IF ~!Alignment(Player1,MASK_EVIL)!InParty("Aerie")~ THEN REPLY @10 DO ~SetGlobal("MinscIsMad","GLOBAL",2)~ GOTO LRMIN5
     IF ~InParty("Aerie")~ THEN REPLY @10 DO ~SetGlobal("MinscIsMad","GLOBAL",2)~ EXTERN AERIE25J JON_MINSC_AE1
END

IF ~~ THEN BEGIN LRMIN2 
  SAY @11
     IF ~~ THEN REPLY @12 GOTO LRMIN3
     IF ~Alignment(Player1,MASK_EVIL) !CheckStatGT(Player1,13,CHR)!InPArty("Aerie")~ THEN REPLY @13 GOTO LRMIN3
     IF ~Alignment(Player1,MASK_EVIL) CheckStatGT(Player1,13,CHR) !InPArty("Aerie")~ THEN REPLY @13 GOTO LRMIN5
     IF ~!Alignment(Player1,MASK_EVIL) !InPArty("Aerie")~ THEN REPLY @13 GOTO LRMIN5
     IF ~InPArty("Aerie")~ THEN REPLY @13 EXTERN AERIE25J JON_MINSC_AE2
END
END

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~MINSC AFTER JON CONFLICT ~~~~~~~~~~~~~~~~~~~~~~~~
ADD_TRANS_TRIGGER MINSC25P 2 ~!InParty("lrirenic")~
EXTEND_BOTTOM MINSC25P 2
  IF ~InParty("lrirenic") !Global("JonMinscFight","GLOBAL",4)~ THEN REPLY @14 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~InParty("lrirenic") Global("JonMinscFight","GLOBAL",4)~ THEN REPLY @14 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ GOTO UNSTUNNED
  IF ~InParty("lrirenic")~ THEN REPLY @15 GOTO 3
END

APPEND MINSC25P

IF ~~ THEN BEGIN UNSTUNNED
  SAY @16
  IF ~~ THEN DO ~SetGlobal("JonMinscFight","GLOBAL",5)~ EXTERN MINSC25J LRMIN6
END

END

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~JON - AERIE REPLIES ~~~~~~~~~~~~~~~~

APPEND JONEL25J

IF ~~ THEN BEGIN JON_MINSC1
  SAY @17
  IF ~~ THEN EXTERN MINSC25J LRMIN6
END

IF ~Global("JonMinscFight","GLOBAL",3)~ THEN BEGIN JON_MINSC2
  SAY @18
  IF ~~ THEN DO ~SetGlobal("JonMinscFight","GLOBAL",4)~ GOTO JON_MINSC3
END

IF ~~ THEN BEGIN JON_MINSC3
  SAY @19
  IF ~~ THEN EXIT
END

END

APPEND AERIE25J

IF ~~ THEN BEGIN JON_MINSC_AE1
  SAY @20
  IF ~~ THEN EXTERN MINSC25J LRMIN5
END

IF ~~ THEN BEGIN JON_MINSC_AE2
  SAY @21
  IF ~~ THEN EXTERN MINSC25J LRMIN5
END

END

