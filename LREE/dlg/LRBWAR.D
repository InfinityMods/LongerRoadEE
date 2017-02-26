// LRBWAR

REPLACE GORTAN1
IF WEIGHT #3
~Global("zGorTan1Job","GLOBAL",0)~ THEN BEGIN 1
  SAY #63101
  IF ~~ THEN REPLY #63112 GOTO 2
  IF ~~ THEN REPLY #63113 GOTO 2
  IF ~!InParty("lrirenic")~ THEN REPLY #63116 GOTO 3
  IF ~InParty("lrirenic")~ THEN REPLY #63116 EXTERN JONEL25J JON_TAN1
  IF ~~ THEN REPLY #63118 GOTO 13
END
END

REPLACE GORBAT1
IF WEIGHT #3
~Global("BatEnemy","GLOBAL",0)
Global("zGorBat1Job","GLOBAL",0)~ THEN BEGIN 2
  SAY #63169 /* ~Ahhh... (hiss)  ...a mortal new, a fleshling true.  With you there is no Blood War; speak, mortal, and stay your sword... ~ [GORBAT10] */
  IF ~~ THEN REPLY #63170 GOTO 3
  IF ~~ THEN REPLY #63172 GOTO 3
  IF ~!InParty("lrirenic")~ THEN REPLY #63173 GOTO 4
  IF ~InParty("lrirenic")~ THEN REPLY #63173 EXTERN JONEL25J JON_BAT1
  IF ~~ THEN REPLY #63194 GOTO 14
END
END

APPEND JONEL25J

IF ~~ THEN BEGIN JON_TAN1
 SAY @0
 IF ~Global("TalkedBWar","GLOBAL",0)~ THEN DO ~SetGlobal("TalkedBWar","GLOBAL",1)~ GOTO JON_BW1
 IF ~!Global("TalkedBWar","GLOBAL",0)~ THEN EXTERN GORTAN1 3
END

IF ~~ THEN BEGIN JON_BAT1
 SAY @0
 IF ~Global("TalkedBWar","GLOBAL",0)~ THEN DO ~SetGlobal("TalkedBWar","GLOBAL",2)~ GOTO JON_BW1
 IF ~!Global("TalkedBWar","GLOBAL",0)~ THEN EXTERN GORBAT1 4
END

IF ~~ THEN BEGIN JON_BW2
   SAY @1
   IF ~~ THEN REPLY @2  GOTO JON_BW3
   IF ~~ THEN REPLY @3  GOTO JON_BW3
END

IF ~~ THEN BEGIN JON_BW3
   SAY @4
   IF ~Global("TalkedBWar","GLOBAL",1)~ THEN EXTERN GORTAN1 3
   IF ~Global("TalkedBWar","GLOBAL",2)~ THEN EXTERN GORBAT1 4
END
END

CHAIN JONEL25J JON_BW1
@5
== SAREV25J IF ~InParty("lrirenic") InParty("sarevok")~ THEN
@6
== JONEL25J IF ~InParty("lrirenic") InParty("sarevok")~ THEN
@7
END JONEL25J JON_BW2
