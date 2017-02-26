// dialog LRRIELEV

BEGIN ~LRRIELEV~


IF ~Global("TalkedToRielev","GLOBAL",0)~ THEN BEGIN LRR1
  SAY @0
  IF ~~ THEN DO ~SetGlobal("TalkedToRielev","GLOBAL",1) SetGlobal("SummonTalk","GLOBAL",0)~ GOTO LRR1A
END

IF ~~ THEN BEGIN LRR1A
   SAY @1
   IF ~~ THEN GOTO LRR2
END

IF ~~ THEN BEGIN LRR2
   SAY @2
   IF ~~ THEN GOTO LRR3
END

IF ~~ THEN BEGIN LRR3
   SAY @3
   IF ~~ THEN REPLY @4 GOTO LRR4
   IF ~~ THEN REPLY @5 GOTO LRR4
   IF ~~ THEN REPLY @6 GOTO LRR4
   IF ~~ THEN REPLY @7 GOTO LRR5
   IF ~~ THEN REPLY @8 GOTO LRR5
END

IF ~~ THEN BEGIN LRR4
   SAY @9
   IF ~~ THEN GOTO LRR6
END

IF ~~ THEN BEGIN LRR5
   SAY @10
   IF ~~ THEN GOTO LRR6
END

IF ~~ THEN BEGIN LRR6
   SAY @11
   IF ~~ THEN REPLY @12 GOTO LRR7
END

IF ~~ THEN BEGIN LRR7
   SAY @13
   IF ~~ THEN GOTO LRR8
   IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ Rielev_Immy1
END

IF ~~ THEN BEGIN LRR8
   SAY @14
   IF ~~ THEN REPLY @15 GOTO LRR9
   IF ~~ THEN REPLY @16 GOTO LRR9A
   IF ~~ THEN REPLY @17 GOTO LRR9
   IF ~~ THEN REPLY @18 GOTO LRR9A
END

IF ~~ THEN BEGIN LRR9
   SAY @19
   IF ~~ THEN GOTO LRR10
END

IF ~~ THEN BEGIN LRR9A
   SAY @20
   IF ~~ THEN GOTO LRR10
END

IF ~~ THEN BEGIN LRR10
   SAY @21
   IF ~~ THEN REPLY @22 GOTO LRR13
   IF ~~ THEN REPLY @23 GOTO LRR11
   IF ~~ THEN REPLY @24 GOTO LRR13
   IF ~~ THEN REPLY @25 GOTO LRR12
   IF ~~ THEN REPLY @26 GOTO LRR12
END

IF ~~ THEN BEGIN LRR11
   SAY @27
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -1000) SetGlobal("JonBanished","GLOBAL",1) SetGlobal("TalkedToRielev","GLOBAL",2) EscapeArea()~
   EXIT
END

IF ~~ THEN BEGIN LRR12
   SAY @28
   IF ~~ THEN GOTO LRR14
END

IF ~~ THEN BEGIN LRR13
   SAY @29
   IF ~~ THEN GOTO LRR14
END

IF ~~ THEN BEGIN LRR14
   SAY @30
   IF ~~ THEN REPLY @31 GOTO LRR15
   IF ~~ THEN REPLY @32 GOTO LRR15
END

IF ~~ THEN BEGIN LRR15
   SAY @33
   IF ~~ THEN GOTO LRR16
END

IF ~~ THEN BEGIN LRR16
   SAY @34
   IF ~~ THEN GOTO LRR17
END

IF ~~ THEN BEGIN LRR17
   SAY @35
   IF ~~ THEN DO ~ ClearAllActions() SetGlobal("abyss01","AR4500",1) StartCutSceneMode() StartCutScene("abyss01")~ EXIT
END

IF ~Global("abyss01","AR4500",1)~ THEN BEGIN LRR18
   SAY @36
   IF ~~ THEN DO ~ ClearAllActions() SetGlobal("abyss01","AR4500",2) StartCutSceneMode() StartCutScene("abyss02")~ EXIT
END

IF ~Global("abyss01","AR4500",2)~ THEN BEGIN LRR19
   SAY @37
   IF ~!InParty("Minsc")~ THEN DO ~SetGlobal("abyss01","AR4500",3)~ GOTO LRR20
   IF ~InParty("Minsc")~ THEN DO ~SetGlobal("abyss01","AR4500",3)~ EXTERN ~MINSC25J~ Rielev_Minsc1
END

IF ~~ THEN BEGIN LRR20
   SAY @38
   IF ~~ THEN REPLY @39 GOTO LRR21
END

IF ~~ THEN BEGIN LRR21
   SAY @40
   IF ~!InParty("Imoen2") !InParty("Jaheira")~ THEN REPLY @41 GOTO LRR22
   IF ~!InParty("Imoen2") !InParty("Jaheira")~ THEN REPLY @42 GOTO LRR23
   IF ~!InParty("Imoen2") !InParty("Jaheira")~ THEN REPLY @43 GOTO LRR22
   IF ~!InParty("Imoen2") !InParty("Jaheira")~ THEN REPLY @44 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",5)~ GOTO LRR22
   IF ~!InParty("Imoen2") !InParty("Jaheira")~ THEN REPLY @45 GOTO LRR23
   IF ~!InParty("Imoen2") !InParty("Jaheira")~ THEN REPLY @46 GOTO LRR23
   IF ~!InParty("Imoen2") !InParty("Jaheira")~ THEN REPLY @47 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",5)~ GOTO LRR22
   IF ~!InParty("Imoen2") !InParty("Jaheira")~ THEN REPLY @48 GOTO LRR24
   IF ~!InParty("Imoen2") InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2) Global("LRJaheiraInterjected1", "GLOBAL", 0)~ THEN EXTERN JAHEI25J RIELEV_JAE
   IF ~!InParty("Imoen2") InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2) Global("LRJaheiraInterjected1", "GLOBAL", 0)~ THEN EXTERN JAHEI25J RIELEV_JAE_ROM
   IF ~InParty("Imoen2") InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2) Global("LRImoenInterjected1", "GLOBAL", 0)~ THEN EXTERN IMOEN25J RIELEV_IMMY_JAE
   IF ~InParty("Imoen2") InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2) Global("LRImoenInterjected1", "GLOBAL", 0)~ THEN EXTERN IMOEN25J RIELEV_IMMY_JAE_ROM
   IF ~InParty("Imoen2") !InParty("Jaheira") Global("LRImoenInterjected1", "GLOBAL", 0)~ THEN EXTERN IMOEN25J Rielev_Immy2
END

IF ~~ THEN BEGIN LRR21A
   SAY@49
   IF ~~ THEN REPLY @41 GOTO LRR23
   IF ~~ THEN REPLY @42 GOTO LRR23
   IF ~~ THEN REPLY @43 GOTO LRR22
   IF ~~ THEN REPLY @44 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",5)~ GOTO LRR22
   IF ~~ THEN REPLY @45 GOTO LRR23
   IF ~~ THEN REPLY @46 GOTO LRR23
   IF ~~ THEN REPLY @47 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",5)~ GOTO LRR22
   IF ~~ THEN REPLY @48 GOTO LRR24
END

IF ~~ THEN BEGIN LRR22
   SAY @50
   IF ~~ THEN GOTO LRR25
END

IF ~~ THEN BEGIN LRR23
   SAY @51
   IF ~~ THEN GOTO LRR25
END

IF ~~ THEN BEGIN LRR24
   SAY @52
   IF ~~ THEN GOTO LRR25
END

IF ~~ THEN BEGIN LRR25
   SAY @53
   IF ~~ THEN REPLY @54 GOTO LRR26A
   IF ~~ THEN REPLY @55 GOTO LRR26
   IF ~~ THEN REPLY @56 GOTO LRR26
   IF ~~ THEN REPLY @57 GOTO LRR26
END

IF ~~ THEN BEGIN LRR26A
   SAY @58
   IF ~~ THEN GOTO LRR26
END

IF ~~ THEN BEGIN LRR26
   SAY @59
   IF ~~ THEN GOTO LRR27
END

IF ~~ THEN BEGIN LRR27
   SAY @60
   IF ~~ THEN REPLY @61 GOTO LRR28
   IF ~~ THEN REPLY @62 GOTO LRR29
   IF ~~ THEN REPLY @63 GOTO LRR28
   IF ~~ THEN REPLY @64 GOTO LRR30
   IF ~~ THEN REPLY @65 GOTO LRR30
   IF ~~ THEN REPLY @66 GOTO LRR29
   IF ~InParty("Sarevok")~ THEN EXTERN ~SAREV25J~ Rielev_Sarry1
END

IF ~~ THEN BEGIN LRR27A
  SAY @67
  IF ~~ THEN GOTO LRR27B
END

IF ~~ THEN BEGIN LRR27B
   SAY @68
   IF ~~ THEN REPLY @61 GOTO LRR28
   IF ~~ THEN REPLY @62 GOTO LRR29
   IF ~~ THEN REPLY @63 GOTO LRR28
   IF ~~ THEN REPLY @64 GOTO LRR30
   IF ~~ THEN REPLY @69 GOTO LRR30
   IF ~~ THEN REPLY @66 GOTO LRR29
END

IF ~~ THEN BEGIN LRR28
   SAY @70
   IF ~~ THEN DO ~SetGlobal("TalkedToRielev","GLOBAL",2) AddJournalEntry(@71,QUEST_DONE) IncrementGlobal("JonRedemptionCounter", "GLOBAL", -1000) SetGlobal("JonBanished","GLOBAL",1)
EscapeArea()~EXIT
END

IF ~~ THEN BEGIN LRR29
   SAY @72
   IF ~~ THEN GOTO LRR31
END

IF ~~ THEN BEGIN LRR30
   SAY @73
   IF ~~ THEN GOTO LRR31
END

IF ~~ THEN BEGIN LRR31
   SAY @74
   IF ~~ THEN GOTO LRR32
END

IF ~~ THEN BEGIN LRR32
   SAY @75
   IF ~~ THEN GOTO LRR33
END

IF ~~ THEN BEGIN LRR33
   SAY @76
   IF ~~ THEN GOTO LRR34
END

IF ~~ THEN BEGIN LRR34
   SAY @77
   IF ~~ THEN REPLY @78 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL",1)~ GOTO LRR35
   IF ~~ THEN REPLY @79 GOTO LRR35
   IF ~~ THEN REPLY @80 GOTO LRR28
   IF ~~ THEN REPLY @81 DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -1)~ GOTO LRR35
   IF ~~ THEN REPLY @82 GOTO LRR35
END

IF ~~ THEN BEGIN LRR35
   SAY @83
   IF ~~ THEN GOTO LRR36
END
   
IF ~~ THEN BEGIN LRR36
   SAY @84
   IF ~~ THEN DO ~AddexperienceParty(35000) SetGlobal("SummonTalk","LOCALS",1) AddJournalEntry(@85,QUEST) SaveGame(0)~ EXIT
END // RIELEV WAITS FOR YOUR DECISION

IF ~!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN LRR40
  SAY @86
  IF ~~ THEN EXIT
END

IF ~InPartySlot(LastTalkedToBy,0) !Global("SummonTalk","LOCALS",0) PartyHasItem("imask")~ THEN BEGIN LRR41
   SAY @87
   IF ~~ THEN REPLY @88 DO ~SetGlobal("SummonTalk","LOCALS",3)~ GOTO JON_NPC1
   IF ~~ THEN REPLY @89 EXIT
   IF ~~ THEN REPLY @90 GOTO LRR43
END

IF ~InPartySlot(LastTalkedToBy,0) Global("SummonTalk","LOCALS",1) !PartyHasItem("imask")~ THEN BEGIN LRR42
      SAY @91
      IF ~~ THEN REPLY @92 DO ~SetGlobal("SummonTalk","LOCALS",2)~ EXIT
      IF ~~ THEN REPLY @90 GOTO LRR43
END

IF ~InPartySlot(LastTalkedToBy,0) Global("SummonTalk","LOCALS",2) !PartyHasItem("imask")~ THEN BEGIN LRR42A
      SAY @93
      IF ~~ THEN REPLY @92 EXIT
      IF ~~ THEN REPLY @90 GOTO LRR43
END

IF ~~ THEN BEGIN LRR43
   SAY @94
   IF ~~ THEN DO ~IncrementGlobal("JonRedemptionCounter", "GLOBAL", -1000) AddJournalEntry(@95,QUEST_DONE) SetGlobal("JonBanished","GLOBAL",1) SetGlobal("TalkedToRielev","GLOBAL",2) EscapeArea()~ EXIT
END

// ALL CHAINS, INTERJECTINS, AND APPENDS GO HERE!

//----------------------------------------------------------//

CHAIN IMOEN25J Rielev_Immy1
@96
== LRRIELEV
@97
== IMOEN25J
@98
== LRRIELEV
@99
END LRRIELEV LRR8

//----------------------------------------------------------//

CHAIN SAREV25J Rielev_Sarry1
@100 
EXTERN LRRIELEV LRR27A

//----------------------------------------------------------//
CHAIN MINSC25J Rielev_Minsc1
@101 
EXTERN LRRIELEV LRR20

//----------------------------------------------------------//
CHAIN IMOEN25J Rielev_Immy2
@102
DO ~SetGlobal("LRImoenInterjected1", "GLOBAL", 1)~
=
@103
== LRRIELEV
@104
END LRRIELEV LRR21A

//----------------------------------------------------------//

CHAIN IMOEN25J RIELEV_IMMY_JAE
@102
DO ~SetGlobal("LRImoenInterjected1", "GLOBAL", 1)~
=
@103
== JAHEI25J IF ~!Global("JaheiraRomanceActive","GLOBAL",2) Global("LRJaheiraInterjected1", "GLOBAL", 0)~ THEN
@105
DO ~SetGlobal("LRJaheiraInterjected1", "GLOBAL", 1)~
END JAHEI25J RIELEV_IMMY_JAE1

//----------------------------------------------------------//

CHAIN IMOEN25J RIELEV_IMMY_JAE_ROM
@102
DO ~SetGlobal("LRImoenInterjected1", "GLOBAL", 1)~
=
@103
== JAHEI25J IF ~Global("JaheiraRomanceActive","GLOBAL",2) Global("LRJaheiraInterjected1", "GLOBAL", 0)~ THEN
@106
DO ~SetGlobal("LRJaheiraInterjected1", "GLOBAL", 1)~
END JAHEI25J RIELEV_IMMY_JAE2

//----------------------------------------------------------//

CHAIN JAHEI25J RIELEV_IMMY_JAE1
@107
== LRRIELEV
@108
END LRRIELEV LRR21A

//-----------APPEND JAHEIRA RANT--------//
APPEND JAHEI25J
IF ~~ THEN BEGIN RIELEV_IMMY_JAE2
  SAY @109
  IF ~~ THEN REPLY @110 GOTO RIELEV_IMMY_JAE3
  IF ~~ THEN REPLY @111 GOTO RIELEV_IMMY_JAE3
  IF ~~ THEN REPLY @112 GOTO RIELEV_IMMY_JAE3
END

IF ~~ THEN BEGIN RIELEV_IMMY_JAE3
  SAY @113
  IF ~~ THEN GOTO RIELEV_IMMY_JAE1
END

IF ~~ THEN BEGIN RIELEV_JAE_ROM
  SAY @114
  IF ~~ THEN REPLY @110 DO ~SetGlobal("LRJaheiraInterjected1", "GLOBAL", 1)~ GOTO RIELEV_IMMY_JAE3
  IF ~~ THEN REPLY @111 DO ~SetGlobal("LRJaheiraInterjected1", "GLOBAL", 1)~ GOTO RIELEV_IMMY_JAE3
  IF ~~ THEN REPLY @112 DO ~SetGlobal("LRJaheiraInterjected1", "GLOBAL", 1)~ GOTO RIELEV_IMMY_JAE3
END

IF ~~ THEN BEGIN RIELEV_JAE
  SAY @114
  IF ~~ THEN DO ~SetGlobal("LRJaheiraInterjected1", "GLOBAL", 1)~ GOTO RIELEV_IMMY_JAE1
END
END

//------------------------NPC BANTERS ABOUT JON BEFORE HE JOINS PARTY----------------------------------//

CHAIN3 LRRIELEV JON_NPC1
@115
== IMOEN25J IF ~InParty("Imoen2")~ THEN
@116
== JAHEI25J IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@117
== JAHEI25J IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@118
== VICON25J IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@119
== VICON25J IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@120
== ANOME25J IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2) Alignment("Anomen",MASK_GOOD)~ THEN
@121
== ANOME25J IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2) !Alignment("Anomen",MASK_GOOD)~ THEN
@122
== ANOME25J IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2) Alignment("Anomen",MASK_GOOD)~ THEN
@123
== ANOME25J IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2) !Alignment("Anomen",MASK_GOOD)~ THEN
@124
== AERIE25J IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN
@125
== AERIE25J IF ~InParty("Aerie") !Global("LRAerieRomanceActive","GLOBAL",2)~ THEN
@126
== MINSC25J IF ~InParty("Minsc")~ THEN
@127
== KELDO25J IF ~InParty("Keldorn")~ THEN
@128
== EDWIN25J IF ~InParty("Edwin") Global("EdwinRomanceActive","GLOBAL",2)~ THEN
@129
== EDWIN25J IF ~InParty("Edwin") !Global("EdwinRomanceActive","GLOBAL",2)~ THEN
@130
== SAREV25J IF ~InParty("Sarevok")~ THEN
@131
== VALYG25J IF ~InParty("Valygar")~ THEN
@132
== MAZZY25J IF ~InParty("Mazzy")~ THEN
@133
== CERND25J IF ~InParty("Cernd")~ THEN
@134
== NALIA25J IF ~InParty("Nalia")~ THEN
@135
== KORGA25J IF ~InParty("Korgan")~ THEN
@136
== HAERD25J IF ~InParty("HaerDalis")~ THEN
@137
== JAN25J IF ~InParty("Jan")~ THEN
@138
=
@139
=
@140
=
@141
== LRRIELEV IF ~~ THEN
@142
DO ~TakePartyItem("imask") DestroyItem("imask") SetGlobal("TimeToSummonJon","GLOBAL",1) SetGlobal("TalkedToRielev","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("lrjonsum")~
EXIT




