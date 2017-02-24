// These are Nymph1 2 and 3 and sleeping Ybdiel dialogs

BEGIN ~LRNYMPH2~

BEGIN ~LRNYMPH3~

BEGIN ~LRYDREAM~
IF ~Global("elys02","LR6603",1)~ THEN  BEGIN SPARK
   SAY @0 
   IF ~~ THEN DO ~SetGlobal("elys02","LR6603",2)~ EXTERN LRNYMPH1 NYMPHS_DEVA1
END

// this must be assigned as Nymph1's dialog file

BEGIN ~LRNYMPH1~

IF ~!Global("NymphAttack","GLOBAL",0)~ THEN BEGIN NymphAttack
   SAY @1  
   IF ~Global("GivenSpark","GLOBAL",1)~ DO ~
SetGlobal("DevaQuestFailed","GLOBAL",1)
TakePartyItem("devasprk")
DestroyItem("devasprk")
ReputationSet(4)
~ EXTERN JONEL25J LRDQ_FAIL1
   IF ~!Global("GivenSpark","GLOBAL",1)~ DO ~
SetGlobal("DevaQuestFailed","GLOBAL",1)
TakePartyItem("chalice2")
DestroyItem("chalice2")
TakePartyItem("gemh1")
DestroyItem("gemh1")
TakePartyItem("waterser")
DestroyItem("waterser")
ReputationSet(4)
~ EXTERN JONEL25J LRDQ_FAIL1
END

IF ~Global("TalkedToNymphs","GLOBAL",0) Global("NymphAttack","GLOBAL",0)~ THEN BEGIN LRDF1
   SAY @2 
   IF ~~ THEN DO ~SetGlobal("TalkedToNymphs","GLOBAL",1)~ EXTERN LRNYMPH2 NYMPHS_JON1
END

IF ~~ THEN BEGIN LRDF2
   SAY @3 
   IF ~~ THEN GOTO LRDF3
END

IF ~~ THEN BEGIN LRDF3
   SAY @4
   IF ~~ THEN GOTO LRDF4
END

IF ~~ THEN BEGIN LRDF4
   SAY @5
   IF ~~ THEN DO ~ClearAllActions() SetGlobal("elys02","LR6603",1)  Wait(1) StartCutSceneMode() StartCutScene("Elys02")~ EXIT
END

IF ~~ THEN BEGIN LRDF5
   SAY @6 
   IF ~~ THEN REPLY @7 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",1) IncrementGlobal("GiveTheSpark", "GLOBAL",1)~ EXTERN LRYDREAM DEVA_INTERJECT1
   IF ~~ THEN REPLY @8 EXTERN LRYDREAM DEVA_INTERJECT1
   IF ~~ THEN REPLY @9DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) IncrementGlobal("GiveTheSpark", "GLOBAL",-1)~ EXTERN LRNYMPH3 NYMPH_END2
END


CHAIN3 LRNYMPH2 NYMPHS_JON1
@10 
==LRNYMPH3
@11 
==JONEL25J
@12 
==JONEL25J
@13 
==LRNYMPH2
@14 
==JONEL25J
@15 
==LRNYMPH1
@16 
==JONEL25J
@17 
END JONEL25J JONN1

CHAIN3 LRNYMPH1 NYMPHS_DEVA1
@18
==LRYDREAM
@19 
==LRNYMPH1
@20
==LRYDREAM
@21
EXTERN LRNYMPH1 LRDF5

CHAIN3 LRYDREAM DEVA_INTERJECT1
@22 
==JONEL25J
@23 
==LRNYMPH2
@24 
==LRNYMPH2
@25
DO ~ClearAllActions() SetGlobal("elys03","LR6603",1) Wait(1) StartCutSceneMode() StartCutScene("Elys03")~
EXIT

CHAIN JONEL25J MANES1
@26
==LRNYMPH2
@27
EXTERN LRABAIA3 DFB1

APPEND JONEL25J

IF ~~ THEN BEGIN JONN1
   SAY @28 
   IF ~~ THEN REPLY @29 GOTO JONN2
   IF ~~ THEN REPLY @30 GOTO JONN2
   IF ~~ THEN REPLY @31 GOTO JONN2
END

IF ~~ THEN BEGIN JONN2
   SAY @32 
   IF ~~ THEN GOTO JONN3
END

IF ~~ THEN BEGIN JONN3
   SAY @33 
   IF ~~ THEN REPLY @34 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",1)~ EXTERN LRNYMPH1 LRDF2
   IF ~~ THEN REPLY @35 EXTERN LRNYMPH1 LRDF2
   IF ~~ THEN REPLY @36 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1)~ EXTERN LRNYMPH1 LRDF2
END
END

APPEND LRABAIA3

IF ~Global("elys03","LR6603",1)~ THEN BEGIN MANES
   SAY @37  
   IF ~~ THEN DO ~SetGlobal("elys03","LR6603",2)~ EXTERN JONEL25J MANES1
END

IF ~~ THEN BEGIN DFB1
   SAY @38
   IF ~~ THEN REPLY @39 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",1) IncrementGlobal("GiveTheSpark", "GLOBAL",1)~ GOTO DFB2
   IF ~Global("GiveTheSpark", "GLOBAL",1)~ THEN REPLY @8 GOTO DFB2
   IF ~!Global("GiveTheSpark", "GLOBAL",1)~ THEN REPLY @8 EXTERN LRNYMPH3 NYMPH_END2
   IF ~~ THEN REPLY @40 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) IncrementGlobal("GiveTheSpark", "GLOBAL",-1)~ EXTERN LRNYMPH3 NYMPH_END2
END
END

CHAIN3 LRABAIA3 DFB2
@41
== JONEL25J
@42 
== JONEL25J
@43
== JONEL25J
@44
END IF ~GlobalGT("GiveTheSpark","GLOBAL",0)~ THEN EXTERN LRNYMPH3 NYMPH_END1
    IF ~!GlobalGT("GiveTheSpark","GLOBAL",0)~ THEN EXTERN LRNYMPH3 NYMPH_END2

APPEND LRNYMPH3
IF ~~ NYMPH_END1
   SAY @45 
   IF ~~ DO ~
AddexperienceParty(45000)
RealSetGlobalTimer("LRDevaSparkDecide","GLOBAL",100)
SetGlobal("GivenSpark","GLOBAL",1)
TakePartyItem("chalice2")
DestroyItem("chalice2")
TakePartyItem("gemh1")
DestroyItem("gemh1")
TakePartyItem("waterser")
DestroyItem("waterser")
GiveItemCreate("devasprk",LastTalkedToBy,0,0,0)~
JOURNAL @46 EXIT
END

IF ~~ NYMPH_END2
   SAY @47 
   IF ~~ DO ~
SetGlobal("DevaQuestFailed","GLOBAL",1)
TakePartyItem("chalice2")
DestroyItem("chalice2")
TakePartyItem("gemh1")
DestroyItem("gemh1")
TakePartyItem("waterser")
DestroyItem("waterser")~ EXTERN JONEL25J LRDQ_FAIL
END
END

APPEND JONEL25J

IF ~~ THEN BEGIN LRDQ_FAIL
   SAY @48 
   IF ~~ THEN DO ~
ClearAllActions() 
SetGlobal("elys04","LR6603",1) 
StartCutSceneMode() 
StartCutScene("Elys04")~
JOURNAL @49 EXIT
END

IF ~~ THEN BEGIN LRDQ_FAIL1
   SAY @48 
   IF ~~ THEN DO ~
ClearAllActions() 
SetGlobal("elys04","LR6603",1) 
StartCutSceneMode() 
StartCutScene("Elys04")~
JOURNAL @50 EXIT
END
END



