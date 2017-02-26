// dialog LRABAIA

BEGIN ~LRABAIA~

IF ~Global("DevaQuestFailed", "GLOBAL",0) Global("AbaiaIn","GLOBAL",0) InPartySlot(LastTalkedToBy,0) Global("AbaiaAttacked","GLOBAL",0)~ THEN BEGIN LRAB1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO LRAB2
  IF ~~ THEN REPLY @2 GOTO LRAB7
  IF ~~ THEN REPLY @3 GOTO LRAB2
END

IF ~~ THEN BEGIN LRAB2
  SAY @4
  IF ~~ THEN GOTO LRAB3
END

IF ~~ THEN BEGIN LRAB3
  SAY @5  
  IF ~~ THEN GOTO LRAB4
END

IF ~~ THEN BEGIN LRAB4
  SAY @6  
  IF ~~ THEN GOTO LRAB5
END

IF ~~ THEN BEGIN LRAB5
  SAY @7   
  IF ~~ THEN GOTO LRAB6
END

IF ~~ THEN BEGIN LRAB6
  SAY @8 
  IF ~!InParty("lrirenic")~ THEN
UNSOLVED_JOURNAL @9
EXIT
  IF ~InParty("lrirenic")~ THEN
UNSOLVED_JOURNAL @9
EXTERN JONEL25J JONABAIA2
END

IF ~~ THEN BEGIN LRAB7
  SAY @10
  IF ~~ THEN GOTO LRAB8
END

IF ~~ THEN BEGIN LRAB8
  SAY @11
  IF ~~ THEN REPLY @12 GOTO LRAB2
  IF ~~ THEN REPLY @13 GOTO LRAB2
  IF ~~ THEN REPLY @14 GOTO LRAB9
  IF ~~ THEN REPLY @15 GOTO LRAB2
END

IF ~~ THEN BEGIN LRAB9
  SAY @16
  IF ~!Dead("Ybdiel")~ THEN REPLY @17 GOTO LRAB10
  IF ~~ THEN REPLY @18 GOTO LRAB2
  IF ~~ THEN REPLY @19 GOTO LRAB2
END

IF ~~ THEN BEGIN LRAB10
  SAY @20
  IF ~~ THEN GOTO LRAB11
END

IF ~~ THEN BEGIN LRAB11
  SAY @21
  IF ~!InParty("lrirenic")~ THEN DO ~SetGlobal("AbaiaIn","GLOBAL",1) Ally() SetGlobal("DevaBodyTake","AR3012",1)
           TakePartyItem("DBODY")
           DestroyItem("DBODY")~
UNSOLVED_JOURNAL @22
EXIT
  IF ~InParty("lrirenic")~ THEN DO ~SetGlobal("AbaiaIn","GLOBAL",1) Ally() SetGlobal("DevaBodyTake","AR3012",1)
           TakePartyItem("DBODY")
           DestroyItem("DBODY")
~
UNSOLVED_JOURNAL @22
EXTERN JONEL25J JONABAIA_IN
END

IF ~Global("AbaiaAttacked","GLOBAL",1)~ THEN BEGIN LRAB_ATTACKED
   SAY @23 
   IF ~~ THEN DO ~SetGlobal("AbaiaAttacked","GLOBAL",2)~ EXIT
END

IF ~Global("DevaQuestFailed", "GLOBAL",1)~ THEN BEGIN LRAB_FAILED
  SAY @24
  IF ~~ THEN DO ~SetGlobal("DevaQuestFailed", "GLOBAL",2) SetGlobal("demondead","GLOBAL",3) Kill(Myself)~
//erase journal entry
SOLVED_JOURNAL @25
EXTERN JONEL25J LR_DEVA_FAILED
END

INTERJECT_COPY_TRANS LRABAIA LRAB1 HAERABAIA1
  == HAERD25J   IF ~InParty("HaerDalis")~ THEN
    @26
     == LRABAIA  IF ~InParty("HaerDalis")~ THEN
    @27
END

INTERJECT_COPY_TRANS LRABAIA LRAB1 JONABAIA1
  == JONEL25J   IF ~InParty("lrirenic")~ THEN
    @28
  == LRABAIA  IF ~InParty("lrirenic")~ THEN
  @27
END

INTERJECT_COPY_TRANS LRABAIA LRAB8 JONABAIA3a
  == JONEL25J   IF ~InParty("lrirenic") Global("AgreedToGiveSoul","GLOBAL",0)~ THEN
    @29
  == LRABAIA  IF ~InParty("lrirenic")~ THEN
    @30
END

INTERJECT_COPY_TRANS LRABAIA LRAB8 JONABAIA3b
  == JONEL25J   IF ~InParty("lrirenic") !Global("AgreedToGiveSoul","GLOBAL",0)~ THEN
    @31
  == LRABAIA  IF ~InParty("lrirenic")~ THEN
    @30
END


APPEND JONEL25J

IF ~~ THEN BEGIN JONABAIA2
    SAY @32
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JONABAIA_IN
   SAY @33
   IF ~~ THEN EXIT
END

IF ~Dead("Abaia") Global("DemonDead","LOCALS",0)~ THEN BEGIN JONABAIA_DEAD
   SAY @34
   IF ~~ THEN DO ~ SetGlobal("DemonDead","LOCALS",1) IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) SetGlobal("JonUndecided","GLOBAL",3) SetGlobal("JonPath","GLOBAL",1)~ EXIT
END
END

