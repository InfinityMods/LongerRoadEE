BEGIN ~JONEL25J~

IF ~~ THEN BEGIN JON_JAH1 // intervention in Jaheira dialogue, just after joining
   SAY @0
   IF ~~ THEN EXTERN JAHEI25J LRJAH10
END

IF ~~ THEN BEGIN JON_IMMY1 // intervention in Imoen dialogue, just after joining
   SAY @1
   IF ~~ THEN EXTERN IMOEN25J LRIMO4
END

IF ~~ THEN BEGIN IMP1
   SAY @2 
   IF ~~ THEN EXTERN BOTSMITH JON_IMP
END

IF ~~ THEN BEGIN JONLAZ //SARADUSH LAZARUS
  SAY @3
  IF ~~ THEN EXTERN 25SPELL LAZJON
END

IF ~~ THEN BEGIN JONELF1 //SARADUSH 1 ELVES
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JONELF2 //SARADUSH 2 ELVES
  SAY @5
  IF ~~ THEN EXTERN SARELF01 ELF1JON
END

IF ~~ THEN BEGIN JONELF3 //SARADUSH 3 ELVES
  SAY @6
  IF ~~ THEN EXIT
  IF ~Global("elfsanctuary","GLOBAL",2)~ THEN EXTERN SARELF01 6
END

IF ~~ THEN BEGIN JONELF4 //SARADUSH 4 ELVES
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JONDW1 //SARADUSH 1 DWARVES
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JONDW2 //SARADUSH 2 DWARVES
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JONVR1
  SAY @10
  IF ~~ THEN EXTERN SARVOLO JONVOLO2A
END

IF ~~ THEN BEGIN JONVR2
  SAY @11 
  IF ~~ THEN EXTERN SARVOLO JONVOLO5
END

IF ~~ THEN BEGIN JONVR3
  SAY @12 
  IF ~~ THEN EXTERN SARVOLO JONVOLO7
END

IF ~Global("LRYAGA1","AR5002",1)~ THEN BEGIN LRYAGA1
  SAY @13 
  IF ~~ THEN REPLY @14 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-2) SetGlobal("LRYAGA1","AR5002",2)~ GOTO LRYAGA2
  IF ~~ THEN REPLY @15 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",-2) SetGlobal("LRYAGA1","AR5002",2)~ GOTO LRYAGA2
  IF ~~ THEN REPLY @16 DO ~SetGlobal("LRYAGA1","AR5002",2)~ GOTO LRYAGA3
  IF ~~ THEN REPLY @17 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",1) SetGlobal("LRYAGA1","AR5002",2)~ GOTO LRYAGA3
END

IF ~~ THEN BEGIN LRYAGA2
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LRYAGA3
  SAY @19
  IF ~~ THEN GOTO LRYAGA4
END

IF ~~ THEN BEGIN LRYAGA4
  SAY @20
  IF ~~ THEN REPLY @21 GOTO LRYAGA5
  IF ~~ THEN REPLY @22 GOTO LRYAGA5
END

IF ~~ THEN BEGIN LRYAGA5
  SAY @23  
  IF ~~ THEN EXIT
END

IF ~Global("LRWKP1","GLOBAL",1)~ THEN BEGIN LRWKEEP1
   SAY @24
   IF ~~ THEN REPLY @25 DO ~SetGlobal("LRWKP1","GLOBAL",2)~ GOTO LRWKEEP2
   IF ~~ THEN REPLY @26 DO ~SetGlobal("LRWKP1","GLOBAL",2)~ GOTO LRWKEEP2
END

IF ~~ THEN BEGIN LRWKEEP2
   SAY @27
   IF ~~ THEN DO 
~SetGlobal("LRJonCastDivinationSpell","GLOBAL",1)
ForceSpell(Myself,SAR_DIVINATION)
Wait(3)
StartDialogNoSet(Player1)~ EXIT
END

IF ~Global("LRJonCastDivinationSpell","GLOBAL",1)~ THEN BEGIN LRWKEEP3
   SAY @28
   IF ~~ THEN REPLY @29 DO ~SetGlobal("LRJonCastDivinationSpell","GLOBAL",2)~ GOTO LRWKEEP4
END

IF ~~ THEN BEGIN LRWKEEP4
   SAY @30
   IF ~~ THEN REPLY @31 GOTO LRWKEEP_MEL
   IF ~~ THEN REPLY @32 GOTO LRWKEEP_MEL
END

IF ~~ THEN BEGIN LRWKEEP6
   SAY @33
   IF ~!Global("TalkedTozGarOdr1","GLOBAL",0) Global("OpenDungeonDoor5","GLOBAL",0)~ THEN REPLY @34 GOTO LRWKEEP_ST1
   IF ~!Global("OpenDungeonDoor5","GLOBAL",0) !Global("DemoGorgonIsDead","GLOBAL",1)~ THEN REPLY @35 GOTO LRWKEEP_DGMET1
   IF ~!Global("OpenDungeonDoor5","GLOBAL",0) Global("DemoGorgonIsDead","GLOBAL",1)~ THEN REPLY @36 GOTO LRWKEEP_DGMET1
   IF ~Global("TalkedTozGarOdr1","GLOBAL",0)~ THEN REPLY @37 GOTO LRWKEEP_ST1
   IF ~Global("TalkedTozGarOdr1","GLOBAL",0)~ THEN REPLY @38 GOTO LRWKEEP_ST1
END

IF ~~ THEN BEGIN LRWKEEP_DGMET1
   SAY @39
   IF ~~ THEN REPLY @40 GOTO LRWKEEP_DGMET2
   IF ~~ THEN REPLY @41 GOTO LRWKEEP_DGMET2
END

IF ~~ THEN BEGIN LRWKEEP_DGMET2
   SAY @42
   IF ~~ THEN DO ~
SetGlobal("JonKnowsAboutDG","GLOBAL",1)
IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) 
SetGlobal("JonUndecided","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LRWKEEP_ST1
   SAY @43
   IF ~Global("AgreedToGiveSoul","GLOBAL",0)~ THEN EXIT
   IF ~!Global("AgreedToGiveSoul","GLOBAL",0)~ THEN GOTO LRWKEEP_ST2
END

IF ~~ THEN BEGIN LRWKEEP_ST2
   SAY @44
   IF ~~ THEN EXIT
END

IF ~Global("LRWKP1","GLOBAL",3)~ THEN BEGIN LRWKEEP_ENT1
   SAY @45
   IF ~~ THEN REPLY @46 DO ~SetGlobal("LRWKP1","GLOBAL",4)~ GOTO LRWKEEP_ENT2
   IF ~~ THEN REPLY @47 DO ~SetGlobal("LRWKP1","GLOBAL",4)~ GOTO LRWKEEP_ENT2
   IF ~~ THEN REPLY @48 DO ~SetGlobal("LRWKP1","GLOBAL",4)~ GOTO LRWKEEP_ENT2
END

IF ~Global("LRLTM","GLOBAL",1)~ THEN BEGIN LR_LTM
   SAY @49 
   IF ~~ THEN DO ~SetGlobal("LRLTM","GLOBAL",2)~ EXIT
END

IF ~Global("DevaQuestFailed", "GLOBAL",1) Global("devadead","GLOBAL",1)~ THEN BEGIN LR_DEVA_FAILED1
   SAY @50
   IF ~~ THEN DO ~SetGlobal("DevaQuestFailed", "GLOBAL",2)
   IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) 
SetGlobal("JonUndecided","GLOBAL",3)~
JOURNAL @51
EXIT
END

IF ~Global("DevaQuestFailed", "GLOBAL",1) Global("devadead","GLOBAL",2)~ THEN BEGIN LR_DEVA_FAILED2
   SAY @52
   IF ~~ THEN DO ~SetGlobal("DevaQuestFailed", "GLOBAL",2)
   IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) 
SetGlobal("JonUndecided","GLOBAL",3)~
JOURNAL @53
EXIT
END

IF ~Global("DevaQuestFailed", "GLOBAL",1) Global("devadead","GLOBAL",3)~ THEN BEGIN LR_DEVA_FAILED2a
   SAY @52
   IF ~~ THEN DO ~SetGlobal("DevaQuestFailed", "GLOBAL",2)
   IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) 
SetGlobal("JonUndecided","GLOBAL",3)~
JOURNAL @54
EXIT
END

IF ~Global("DevaQuestFailed", "GLOBAL",1) Global("demondead","GLOBAL",1)~ THEN BEGIN LR_DEVA_FAILED3
   SAY @55
   IF ~~ THEN DO ~SetGlobal("DevaQuestFailed", "GLOBAL",2)
   IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000)
SetGlobal("JonUndecided","GLOBAL",3)~
//erase journal
JOURNAL @56
EXIT
END

IF ~Global("DevaQuestFailed", "GLOBAL",1) Global("demondead","GLOBAL",2)~ THEN BEGIN LR_DEVA_FAILED4
   SAY @55
   IF ~~ THEN DO ~SetGlobal("DevaQuestFailed", "GLOBAL",2)
   IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000) 
SetGlobal("JonUndecided","GLOBAL",3)~
//erase journal
JOURNAL @57
EXIT
END

IF ~~ THEN BEGIN LR_DEVA_FAILED
   SAY @58
   IF ~~ THEN DO ~
IncrementGlobal("JonRedemptionCounter", "GLOBAL",-1000)
SetGlobal("JonUndecided","GLOBAL",3)~
//erase journal
JOURNAL @54
EXIT
END

IF ~Global("LRMELAMKETHRAN","GLOBAL",1)~ THEN BEGIN LR_MELAMK1
   SAY @59  
   IF ~!Global("OpenDungeonDoor5","GLOBAL",0)~ THEN REPLY @60 DO ~SetGlobal("LRMELAMKETHRAN","GLOBAL",2)~ GOTO LR_MELAMK2
   IF ~!Global("OpenDungeonDoor5","GLOBAL",0)~ THEN REPLY @61 DO ~SetGlobal("LRMELAMKETHRAN","GLOBAL",2)~ GOTO LR_MELAMK2
   IF ~Global("OpenDungeonDoor5","GLOBAL",0)~ THEN REPLY @60 DO ~SetGlobal("LRMELAMKETHRAN","GLOBAL",2)~ GOTO LR_MELAMK3
   IF ~Global("OpenDungeonDoor5","GLOBAL",0)~ THEN REPLY @61 DO ~SetGlobal("LRMELAMKETHRAN","GLOBAL",2)~ GOTO LR_MELAMK3
END

IF ~~ THEN BEGIN LR_MELAMK2
   SAY @62
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LR_MELAMK3
   SAY @63
   IF ~~ THEN EXIT
END

// ANN APPENDS AND CHAINS

//CESPENAR STUFF
ADD_STATE_TRIGGER BOTSMITH 152 ~!Name("lrirenic",LastTalkedToBy)~

APPEND BOTSMITH

IF ~~ THEN BEGIN JON_IMP
   SAY @64
   IF ~~ THEN DO ~SetGlobal("JonScaresCesp", "LOCALS", 1) RunAwayFrom(LastTalkedToBy,45)~ EXIT
END

IF ~!InPartySlot(LastTalkedToBy,0) Name("lrirenic",LastTalkedToBy) Global ("JonScaresCesp","LOCALS", 0)~ THEN BEGIN JON_IMP1
  SAY #72902 /* ~Ummm... Cespenar only serve the great one.  You'se nice, maybe, but you'se still a nobody.~ [BOTSM11] */
  IF ~~ THEN EXTERN JONEL25J IMP1
END

IF ~!InPartySlot(LastTalkedToBy,0) Name("lrirenic",LastTalkedToBy) Global ("JonScaresCesp","LOCALS", 1)~ THEN BEGIN JON_IMP2
  SAY @65 
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,45)~ EXIT
END
END

APPEND 25SPELL

IF ~~ THEN BEGIN LAZJON
  SAY @66
  IF ~~ THEN REPLY #73386 /* ~Very well, I shall help you recover your spellbook.~ */ DO ~SetGlobal("lazarus","GLOBAL",2)~ GOTO 11
  IF ~~ THEN REPLY #73387 /* ~What's in this for me?~ */ GOTO 14
  IF ~~ THEN REPLY #73388 /* ~I can't be bothered with your petty problems!~ */ GOTO 14
END
END

APPEND SARELF01 

IF ~~ THEN BEGIN ELF1JON
  SAY @67
  IF ~~ THEN REPLY #73358 /* ~Perhaps I can find someone willing to take you in.~ */ GOTO 3
  IF ~~ THEN REPLY #73359 /* ~Things are tough all over.  Suck it up.~ */ GOTO 3
  IF ~Global("elfsanctuary","GLOBAL",2)~ THEN REPLY #73362 /* ~Sister Farielle at the temple has agreed to give you refuge.~ */ GOTO 4
END
END

CHAIN JONEL25J LRWKEEP_MEL
@68
 =
@69
 =
@70
END JONEL25J LRWKEEP6

CHAIN JONEL25J LRWKEEP_ENT2
@71
 =
@72
DO ~Explore()
Wait(1)~
EXIT
