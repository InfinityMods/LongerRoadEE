
APPEND LRNYMPH1

IF ~Global("LRSparkTo","GLOBAL",3)~ THEN BEGIN LRDF3P11
   SAY @0 
   IF ~~ THEN DO ~SetGlobal("LRSparkTo","GLOBAL",5)~ EXTERN LRNYMPH2 LRDF3P12
END
END

CHAIN3 LRNYMPH2 LRDF3P12
@1 
==LRNYMPH3
@2 
EXTERN JONEL25J DQ_FIN0


BEGIN LRYAFTER
IF ~Global("LRSparkTo","GLOBAL",2)~ THEN BEGIN LRDF3P21
   SAY @3 
   IF ~~ THEN DO ~SetGlobal("LRSparkTo","GLOBAL",5)~ EXTERN LRNYMPH1 LRDF3P22
END


CHAIN3 LRNYMPH1 LRDF3P22
@4 
DO ~GiveItemCreate("leafbow",LastTalkedToBy,0,0,0)~
==LRNYMPH2
@1 
==LRNYMPH3
@5 
EXTERN JONEL25J DQ_FIN1

BEGIN LRBAFTER
IF ~Global("LRSparkTo","GLOBAL",1)~ THEN BEGIN LRDF3P31
   SAY @6
   IF ~~ THEN DO ~SetGlobal("LRSparkTo","GLOBAL",5)~ EXTERN LRNYMPH3 LRDF3P32
END


CHAIN3 LRNYMPH3 LRDF3P32
@7
DO ~GiveItemCreate("abymace",LastTalkedToBy,0,0,0)~
==LRNYMPH1
@8 
==LRNYMPH2
@1 
==LRNYMPH3
@9 
EXTERN JONEL25J DQ_FIN2

BEGIN ~DEVILITH~
IF ~Global("LRSparkTo","GLOBAL",4)~ THEN BEGIN LRDF3P41
   SAY @10 
   IF ~~ THEN DO ~SetGlobal("LRSparkTo","GLOBAL",5) GiveItemCreate("leafbow",LastTalkedToBy,0,0,0)~ EXTERN LRNYMPH1 LRDF3P42
END

CHAIN3 LRNYMPH1 LRDF3P42
@11 
==LRNYMPH2
@12 
==LRNYMPH3
@13 
==LRNYMPH3 IF ~PartyHasItem("amul27")~ THEN
@14
DO ~GiveItemCreate("namul",LastTalkedToBy,0,0,0)
TakePartyItem("amul27")
DestroyItem("amul27")
~
==LRNYMPH3
@15
EXTERN JONEL25J DQ_FIN3

APPEND JONEL25J
IF ~~ DQ_FIN0
   SAY @16
   IF ~~ THEN DO ~SetGlobal("DevaQuestFailed","GLOBAL",1) ClearAllActions() SetGlobal("elys05","LR6603",1) StartCutSceneMode() StartCutScene("Elys05")~
SOLVED_JOURNAL @17 EXIT
END

IF ~~ DQ_FIN1
   SAY @18
   IF ~~ THEN DO ~SetGlobal("DevaQuestFailed","GLOBAL",1) ClearAllActions() SetGlobal("elys04","LR6603",1) StartCutSceneMode() StartCutScene("Elys04")~
SOLVED_JOURNAL @19EXIT
END

IF ~~ DQ_FIN2
  SAY @18
  IF ~~ THEN DO ~SetGlobal("DevaQuestFailed","GLOBAL",1) ClearAllActions() SetGlobal("elys04","LR6603",1) StartCutSceneMode() StartCutScene("Elys04")~
SOLVED_JOURNAL @19EXIT
END

IF ~~ DQ_FIN3
   SAY @20
   IF ~~ THEN DO ~SetGlobal("DevaQuestSolved","GLOBAL",1) ClearAllActions() SetGlobal("elys04","LR6603",1) StartCutSceneMode() StartCutScene("Elys04")~
SOLVED_JOURNAL @21
EXIT
END

END



