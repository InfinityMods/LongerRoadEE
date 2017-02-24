//LRJaheiraEvil

APPEND JAHEI25J

IF ~InParty("LRIRENIC") Global("JaeJonEvil","LOCALS",1) !AreaCheck("AR6200") !AreaCheck("AR4500")~ THEN BEGIN LRJJE1
   SAY @0
   IF ~~ THEN REPLY @1 DO ~SetGlobal("JaeJonEvil","LOCALS",2)~ GOTO LRJJE2
   IF ~~ THEN REPLY @2 DO ~SetGlobal("JaeJonEvil","LOCALS",2)~ GOTO LRJJE2
END

IF ~~ THEN BEGIN LRJJE2
   SAY @3
   IF ~~ THEN REPLY @4 GOTO LRJJE_SMUG
   IF ~~ THEN REPLY @5 GOTO LRJJE_SMUG
   IF ~~ THEN REPLY @6 GOTO LRJJ_LIED
END

IF ~~ THEN BEGIN LRJJ_LIED
   SAY @7 
   IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN GOTO LRJJEROM
   IF ~!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN GOTO LRJJENOROM
END

IF ~~ THEN BEGIN LRJJEROM
   SAY @8
   IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ GOTO LRJJEEND
END

IF ~~ THEN BEGIN LRJJENOROM
   SAY @9
   IF ~~ THEN GOTO LRJJEEND
END

IF ~~ THEN BEGIN LRJJEEND
   SAY @10
   IF ~~ THEN DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN LRJJE_TRUE
  SAY @11
  IF ~~ THEN REPLY @12 GOTO LRJJ_LIED
  IF ~~ THEN REPLY @13 DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ GOTO LRJJE_FAILED
END

IF ~~ THEN BEGIN LRJJE_CHOICE
  SAY @14
  IF ~~ THEN REPLY @15
  DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  ActionOverride("lrirenic",LeaveParty())
  ActionOverride("lrirenic",SetLeavePartyDialogFile())
  ActionOverride("lrirenic",ChangeAIScript("",DEFAULT))
  ActionOverride("lrirenic",GivePartyAllEquipment())
  Wait(1)
  StartCutSceneMode()
  StartCutScene("banish2")~ EXIT
  IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY @16 GOTO LRJJEROM
  IF ~!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY @16 GOTO LRJJEEND
END
END

//~~~~~~~~~~~~~~~~~~~~~~~CHAINS~~~~~~~~~~~~~~~~~~~~~~~~

CHAIN JAHEI25J LRJJE_SMUG
@17
== JONEL25J
@18
=
@19
EXTERN JAHEI25J LRJJE_TRUE

CHAIN JAHEI25J LRJJE_FAILED
@20
== JONEL25J
@21 
EXTERN JAHEI25J LRJJE_CHOICE




