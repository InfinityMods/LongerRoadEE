APPEND LRNYMPH1

IF ~Global("TalkedToNymphs","GLOBAL",1) Global("LRSparkTo","GLOBAL",0) Global("NymphAttack","GLOBAL",0)~ THEN BEGIN LRDF21
 SAY @0 
 IF ~~ THEN DO ~SetGlobal("TalkedToNymphs","GLOBAL",2)~ EXTERN LRNYMPH2 LRDF22
 END

IF ~~ THEN BEGIN LRDF26
   SAY @1
   IF ~~ THEN REPLY @2 DO ~AddexperienceParty(35000) SetGlobal("LRSparkTo","GLOBAL",1)~ EXIT
   IF ~~ THEN REPLY @3 DO ~AddexperienceParty(35000) SetGlobal("LRSparkTo","GLOBAL",2)~ EXIT
   IF ~~ THEN REPLY @4 DO ~AddexperienceParty(10000) SetGlobal("LRSparkTo","GLOBAL",3)~ EXIT
   IF ~~ THEN REPLY @5 DO ~AddexperienceParty(75000) SetGlobal("LRSparkTo","GLOBAL",4)~ EXIT
END
END

APPEND LRNYMPH2

IF ~Global("TalkedToNymphs","GLOBAL",1) Global("LRSparkTo","GLOBAL",0)~ THEN BEGIN LRDF21b
 SAY @0 
 IF ~~ THEN DO ~SetGlobal("TalkedToNymphs","GLOBAL",2)~ GOTO LRDF22
END
END

APPEND LRNYMPH3

IF ~Global("TalkedToNymphs","GLOBAL",1) Global("LRSparkTo","GLOBAL",0)~ THEN BEGIN LRDF21a
 SAY @0 
 IF ~~ THEN DO ~SetGlobal("TalkedToNymphs","GLOBAL",2)~ EXTERN LRNYMPH2 LRDF22
END

IF ~Global("NymphSpeaketh","GLOBAL",1) !Global("LRSparkTo","GLOBAL",0)~ THEN BEGIN LRDF27
   SAY @8 
   IF ~Global("LRSparkTo","GLOBAL",1)~ THEN DO ~SetGlobal("NymphSpeaketh","GLOBAL",2) ClearAllActions() SetGlobal("elys06","LR6603",1) StartCutSceneMode() StartCutScene("Elys06")~ EXIT
   IF ~Global("LRSparkTo","GLOBAL",2)~ THEN DO ~SetGlobal("NymphSpeaketh","GLOBAL",2) ClearAllActions() SetGlobal("elys07","LR6603",1) StartCutSceneMode() StartCutScene("Elys07")~ EXIT
   IF ~Global("LRSparkTo","GLOBAL",3)~ THEN DO ~SetGlobal("NymphSpeaketh","GLOBAL",2)~ EXTERN LRNYMPH1 LRDF3P11
   IF ~Global("LRSparkTo","GLOBAL",4)~ THEN DO ~SetGlobal("NymphSpeaketh","GLOBAL",2) ClearAllActions() SetGlobal("elys08","LR6603",1) StartCutSceneMode() StartCutScene("Elys08")~ EXIT
END
END

APPEND JONEL25J
IF ~~ THEN BEGIN LRDF23
   SAY @9
   IF ~!Global("AgreedToGiveSoul","GLOBAL",1)~ THEN REPLY @10 GOTO LRDF24
   IF ~Global("AgreedToGiveSoul","GLOBAL",1)~ THEN REPLY @11 GOTO LRDF24
   IF ~~ THEN REPLY @12GOTO LRDF24
END

IF ~~ THEN BEGIN LRDF24
   SAY @13
   IF ~~ THEN EXTERN LRNYMPH3 LRDF25
END
END


CHAIN3 LRNYMPH2 LRDF22
@14
==LRNYMPH3
@15
END JONEL25J LRDF23

CHAIN3 LRNYMPH3 LRDF25
@16 
==JONEL25J
@17 
==LRNYMPH3
@18 
==JONEL25J
@19
==LRNYMPH3
@20 

==BJAHEI25 IF ~InParty("Jaheira")~ THEN
@21
==BCERND25 IF ~InParty("Cernd")~ THEN
@22
==JONEL25J
@23 
==LRNYMPH1
@24 
==LRNYMPH2
@25
==LRNYMPH3
@26
==LRNYMPH1
@27
==JONEL25J
@28
=
@29 
==BSAREV25 IF ~InParty("Sarevok") Alignment("Sarevok",MASK_GOOD)~ THEN
@30
==BSAREV25 IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_GOOD)~ THEN
@31
==LRNYMPH1
@32 
==LRNYMPH2
@33 
==LRNYMPH3
@34
=
@35 
==JONEL25J
@36 
==LRNYMPH3
@37 
END ++ @38 EXTERN LRNYMPH1 LRDF26
    ++ @39 EXTERN LRNYMPH1 LRDF26
    ++ @40 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1)~ EXTERN LRNYMPH1 LRDF26
    ++ @41 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-3)~ EXTERN LRNYMPH1 LRDF26
    ++ @42 EXTERN LRNYMPH1 LRDF26
    ++ @43 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1)~ EXTERN LRNYMPH1 LRDF26


