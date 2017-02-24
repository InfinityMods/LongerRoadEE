//LR Jon's Joining Dialog

BEGIN ~LRIRENIC~

IF ~Global("TalkedToJon","GLOBAL",0) Global("JonNoLongerBurns","GLOBAL",1)~ THEN BEGIN LRJ1
   SAY @0 
   IF ~~ THEN REPLY @1 GOTO LRJ2
   IF ~~ THEN REPLY @2 GOTO LRJ2
   IF ~~ THEN REPLY @3 GOTO LRJ2
   IF ~~ THEN REPLY @4 GOTO LRJ2
   IF ~~ THEN DO ~SetGlobal("TalkedToJon","GLOBAL",1)~ GOTO LRJ2
END


IF ~~ THEN BEGIN LRJ2
   SAY @5
   IF ~~ THEN REPLY @6 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRJ3
   IF ~~ THEN REPLY @7 GOTO LRJ4
   IF ~~ THEN REPLY @8 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -1)~ GOTO LRJ4
   IF ~~ THEN REPLY @9 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRJ3
   IF ~~ THEN REPLY @10 GOTO LRJ4
END

IF ~~ THEN BEGIN LRJ3
   SAY @11
   IF ~!InParty("Imoen2")~ THEN GOTO LRJ6
   IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J JON_IMOEN_OUTCOME
END

IF ~~ THEN BEGIN LRJ4
   SAY @12
   IF ~!InParty("Imoen2")~ THEN GOTO LRJ6
   IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J JON_IMOEN_OUTCOME
END

IF ~~ THEN BEGIN LRJ5
SAY @13
IF ~~ THEN REPLY @14 
  JOURNAL @15
 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
   IF ~~ THEN REPLY @16 DO ~SetGlobal("TellAboutEllie","LOCALS",1)~ GOTO LRJ7A
   IF ~~ THEN REPLY @17 GOTO LRJ8
   IF ~~ THEN REPLY @18 DO ~SetGlobal("TellAboutEllie","LOCALS",1)~ GOTO LRJ7A
   IF ~~ THEN REPLY @19 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRJ8
END

IF ~~ THEN BEGIN LRJ6
   SAY @20
   IF ~~ THEN REPLY @14 
  JOURNAL @15
 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
   IF ~~ THEN REPLY @21 DO ~SetGlobal("TellAboutEllie","LOCALS",1)~ GOTO LRJ7A
   IF ~~ THEN REPLY @17 GOTO LRJ8
   IF ~~ THEN REPLY @18 DO ~SetGlobal("TellAboutEllie","LOCALS",1)~ GOTO LRJ7A
   IF ~~ THEN REPLY @19 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", 1)~ GOTO LRJ8
END

IF ~~ THEN BEGIN LRJ7
    SAY @22
    IF ~~ THEN REPLY @23
  JOURNAL @15
 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
    IF ~~ THEN REPLY @24
  JOURNAL @15
 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
END

IF ~~ THEN BEGIN LRJ7A
    SAY @22
    IF ~~ THEN REPLY @23
 JOURNAL @15
DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
    IF ~~ THEN REPLY @25 GOTO LRJ8
    IF ~~ THEN REPLY @24 
 JOURNAL @15
DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
END

IF ~~ THEN BEGIN LRJ8
   SAY @26
   IF ~~ THEN GOTO LRJ9
END

IF ~~ THEN BEGIN LRJ9
   SAY @27  
   IF ~~ THEN GOTO LRJ10
END

IF ~~ THEN BEGIN LRJ10
   SAY @28
   IF ~~ THEN REPLY @29 
 JOURNAL @15
DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
   IF ~~ THEN REPLY @30 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ GOTO LRJ11
   IF ~~ THEN REPLY @31 
 JOURNAL @15
DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
   IF ~~ THEN REPLY @32 GOTO LRJ17
IF ~!InParty("Imoen2")InParty("Jaheira")~ THEN EXTERN JAHEI25J JON_JAE_SCAR 
IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J JON_IMMY_SCAR 
END

IF ~~ THEN BEGIN JON_SCAR1
SAY @33
   IF ~~ THEN REPLY @29 
 JOURNAL @15
DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
   IF ~~ THEN REPLY @30 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ GOTO LRJ11
   IF ~~ THEN REPLY @31 
 JOURNAL @15
DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
   IF ~~ THEN REPLY @32 GOTO LRJ17
END

IF ~~ THEN BEGIN LRJ11
   SAY @34
   IF ~~ THEN GOTO LRJ12
END

IF ~~ THEN BEGIN LRJ12
   SAY @35
   IF ~~ THEN REPLY @36 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL", 2) SetGlobal("TalkedAboutMask","GLOBAL",1)~ GOTO LRJ13
   IF ~~ THEN REPLY @37 GOTO LRJ19
   IF ~~ THEN REPLY @38
 JOURNAL @15
DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
END

IF ~~ THEN BEGIN LRJ13
   SAY @39
   IF ~~ THEN REPLY @40 DO ~SetGlobal("LiedAboutMask","GLOBAL",1)~ GOTO LRJ14
   IF ~~ THEN REPLY @41 GOTO LRJ15
END

IF ~~ THEN BEGIN LRJ14
   SAY @42
   IF ~~ THEN GOTO LRJ16
END

IF ~~ THEN BEGIN LRJ15
   SAY @43
   IF ~~ THEN GOTO LRJ16
END

IF ~~ THEN BEGIN LRJ16
   SAY @44
   IF ~Global("LiedAboutMask","GLOBAL",0)~ THEN REPLY @45 GOTO LRJ20
   IF ~Global("LiedAboutMask","GLOBAL",0)~ THEN REPLY @46 GOTO LRJ20
   IF ~Global("LiedAboutMask","GLOBAL",0)~ THEN REPLY @47 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ GOTO LRJ20
   IF ~Global("LiedAboutMask","GLOBAL",1)~ THEN REPLY @45 GOTO LRJ20L
   IF ~Global("LiedAboutMask","GLOBAL",1)~ THEN REPLY @46 GOTO LRJ20L
   IF ~Global("LiedAboutMask","GLOBAL",1)~ THEN REPLY @47 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ GOTO LRJ20L
END

IF ~~ THEN BEGIN LRJ17
   SAY @48
   IF ~Global("IQTEST","GLOBAL",2)~ THEN REPLY @49 GOTO LRJ18
   IF ~~ THEN REPLY @50
 JOURNAL @15
 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
END

IF ~~ THEN BEGIN LRJ18
   SAY @51
   IF ~~ THEN REPLY @52 GOTO LRJ19
   IF ~~ THEN REPLY @53 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL", 2) SetGlobal("TalkedAboutMask","GLOBAL",1)~ GOTO LRJ13
END

IF ~~ THEN BEGIN LRJ19
   SAY @54
   IF ~~ THEN REPLY @45 GOTO LRJ20
   IF ~~ THEN REPLY @46 GOTO LRJ20
   IF ~~ THEN REPLY @47 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",1)~ GOTO LRJ20
END

IF ~~ THEN BEGIN LRJ20L
   SAY @55
   IF ~~ THEN GOTO LRJ20
END

IF ~~ THEN BEGIN LRJ20
   SAY @56
   IF ~~ THEN GOTO LRJ21
END

IF ~~ THEN BEGIN LRJ21
   SAY @57
   IF ~~ THEN EXTERN LRRIELEV LRJ_R1
END

IF ~~ THEN BEGIN LRJ26
   SAY @58
   IF ~~ THEN JOURNAL @59
DO ~SetGlobal("AgreedToGiveSoul","GLOBAL",1)~
EXTERN ~LRRIELEV~ LRJ_R3
END

IF ~~ THEN BEGIN LRJ27
   SAY @60
   IF ~~ THEN  JOURNAL @59
DO ~SetGlobal("AgreedToGiveSoul","GLOBAL",2) ~
EXTERN ~LRRIELEV~ LRJ_R3

END

IF ~~ THEN BEGIN LRJ28
   SAY @61
   IF ~~ THEN JOURNAL @62
EXTERN ~LRRIELEV~ LRJ_R3
END

IF ~~ THEN BEGIN WELCOME_JON
   SAY @63
   IF ~~ THEN DO ~SetGlobal("LRJonIn","GLOBAL",1) JoinParty() MakeGlobal()~
   EXIT
END

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//~~~~~~~~~~~~~~~~Its time for more ... experiments! With CHAINS   ~~~~~~~~~~~~~~~~~~~~~~~//

CHAIN IMOEN25J JON_IMOEN_OUTCOME
@64
=
@65
== LRIRENIC
@66
END LRIRENIC LRJ5
//---------------------------------------------------------------------------------------//

CHAIN LRRIELEV LRJ_R1
@67
== LRIRENIC
@68
== LRRIELEV
@69
=
@70
== LRIRENIC
@71
=
@72
== LRRIELEV
@73
== LRIRENIC
@74
EXTERN LRRIELEV LRJ_R2
//-------------------------------------------END CHAINS------------------------------------//

APPEND IMOEN25J 
IF ~~ THEN BEGIN JON_IMMY_SCAR
  SAY @75
  IF ~!InParty("Jaheira")~ THEN EXTERN LRIRENIC JON_SCAR1
  IF ~InParty("Jaheira")~ THEN EXTERN JAHEI25J JON_JAE_SCAR
END
  
END

APPEND JAHEI25J 
IF ~~ THEN BEGIN JON_JAE_SCAR
  SAY @76
  IF ~~ THEN EXTERN LRIRENIC JON_SCAR1
END
  
END

APPEND LRRIELEV

IF ~~ THEN BEGIN LRJ_R2
   SAY @77
   IF ~~ THEN REPLY @78 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1)~ EXTERN LRIRENIC LRJ27
   IF ~Global("TalkedAboutMask","GLOBAL",1)
!Global("Yakman","GLOBAL",1)
~ THEN REPLY @79 DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL", 2)~ EXTERN LRIRENIC LRJ28
   IF ~~ THEN REPLY @80 EXTERN LRIRENIC LRJ26
   IF ~~ THEN REPLY @81 
 JOURNAL @15
DO ~IncrementGlobal("JonRedemptionCounter","GLOBAL",-1000)
  SetGlobal("JonBanished","GLOBAL",1)
  SetGlobal("TalkedToRielev","GLOBAL",2)
  ClearAllActions() Wait(2)
  StartCutSceneMode()
  StartCutScene("banished")
~ EXIT
END

IF ~~ THEN BEGIN LRJ_R3
SAY @82
   IF ~~ THEN DO ~
   SetGlobal("TalkedToRielev","GLOBAL",2)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("ahjon")~ EXIT
END

IF ~Global("TalkedToRielev","GLOBAL",2)~ THEN BEGIN LRJ_R4
   SAY @83
   IF ~~ THEN DO ~ClearAllActions() Wait(2) EscapeArea()~ EXTERN LRIRENIC WELCOME_JON
END

END


