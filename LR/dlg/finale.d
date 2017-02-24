//This file has everything that takes place without Ascention as well as everything that happens
//with and without Ascention.

//Need a Jon cre with this .dlg and Jon's battle script from Ascension
//Will work even with Ascention installed, because then no creature will use this dlg.
BEGIN LRCORELL
BEGIN LRJONPC

BEGIN POOLIREN
IF ~NumTimesTalkedTo(0)~ Pool1
  SAY @0
  ++ @1 + Pool2
  ++ @2 + Pool2
END

IF ~~ Pool2
  SAY @3
  ++ @4 + Pool3
  ++ @5 + Pool3
END

IF ~~ Pool3
  SAY @6 
  IF ~~ DO ~
  ChangeAIScript("",CLASS)
  ChangeAIScript("",DEFAULT)
  ChangeAIScript("",GENERAL)
  ChangeAIScript("",SPECIFICS)
  ChangeAIScript("LRIREN",OVERRIDE)
  SetPlayerSound(Myself,-1,DYING) // No such index
  SetDialog("")
  Enemy()~ EXIT
END

EXTEND_TOP FINSOl01 4 #1
IF ~OR(2) InParty("lrIrenic") G("lrJonToFinal",1) OR(2) !Dead("lrirenic") G("AcceptIlmater",0) Global("lrFinSolJon","LOCALS",0)~ DO ~SetGlobal("lrFinSolJon","LOCALS",1)~ + lrSolar1
IF ~Dead("lrirenic") OR(2) G("lrHasSoulStone",1) !G("AcceptIlmater",0) Global("lrFinSolJon","LOCALS",0)~ DO ~SetGlobal("lrFinSolJon","LOCALS",1)~ EXTERN FINSOL01 5
END

EXTEND_BOTTOM FINSOL01 8
IF ~OR(2) InParty("lrIrenic") G("lrJonToFinal",1) OR(2) !Dead("lrirenic") G("AcceptIlmater",0) Global("lrFinSolJon","LOCALS",0)~ DO ~SetGlobal("lrFinSolJon","LOCALS",1)~ + lrSolar1
IF ~Dead("lrirenic") OR(2) G("lrHasSoulStone",1) !G("AcceptIlmater",0) Global("lrFinSolJon","LOCALS",0)~ DO ~SetGlobal("lrFinSolJon","LOCALS",1)~ EXTERN FINSOL01 5
END

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("lrirenic") Alignment("lrirenic",MASK_EVIL) Global("JonComments","AR6200",0)~ DO ~SetGlobal("JonComments","AR6200",1)~ EXTERN JONEL25J Comment
END

EXTEND_BOTTOM FINSOL01 29 30 31
IF ~InParty("lrirenic") Alignment("lrirenic",MASK_EVIL) Global("JonComments","AR6200",1)~ DO ~SetGlobal("JonComments","AR6200",2)~ EXTERN JONEL25J CommentG
END

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("lrirenic") Alignment("lrirenic",MASK_EVIL) Global("JonComments","AR6200",1)~ DO ~SetGlobal("JonComments","AR6200",2)~ EXTERN JONEL25J CommentM
END

ADD_STATE_TRIGGER FINSOL01 4 ~G("lrFinale",0)~

APPEND JONEL25J
IF ~Global("lrFinale","GLOBAL",3)~ Not
  SAY @7 
  IF ~~ DO ~SG("lrFinale",4) ClearAllActions() StartCutSceneMode() StartCutScene("lrjonr2")~ EXIT
END

IF ~~ Comment
  SAY @8
  COPY_TRANS FINSOL01 27
END

IF ~~ CommentG
  SAY @9
  COPY_TRANS FINSOL01 31
END

IF ~~ CommentM
  SAY @10
  COPY_TRANS FINSOL01 32
END
END

A_T_T JONEL25J Comment ~!G("EdwinRomanceActive",2)~ DO 20

APPEND Player1
IF ~G("lrFinale",4)~ FinalSelfTalk
  SAY @11
     =
      @12
     =
      @13
     =
      @14
     =
      @15
     =
      @16
  IF ~~ DO ~SetGlobal("lrFinale","GLOBAL",5) ClearAllActions() StartCutSceneMode() StartCutScene("lrjonr3")~ EXIT
END
END

APPEND FINMEL01
IF ~~ MelDisbelief
  SAY @17
  IF ~~ + lrAmelJonChain1
END
END

APPEND FINSOL01
IF ~G("lrFinale",5)~ lrSolarA
  SAY @18 
  ++ @19 DO ~SetGlobal("lrFinale","GLOBAL",6)~ + lrSolarB
END

IF ~~ lrSolarB
  SAY @20
  ++ @21 + lrSolarC
  ++ @22 + lrSolarC
  ++ @23 + lrchoice
  ++ @24 + lrchoice
END

IF ~~ lrSolarC
  SAY @25
  ++ @26 + lrSolarD
  ++ @27 + lrSolarD
  ++ @28 + lrchoice
END

IF ~~ lrSolarD
  SAY @29
     =
      @30
  IF ~~ + jon_banter
END


IF ~~ lrSolar1
  SAY @31 
  IF ~~ DO ~SG("lrFinale",1) ClearAllActions() StartCutSceneMode() StartCutScene("brlink")~ EXIT
  IF ~!InParty("lrirenic") G("lrJonToFinal",1) OR(2) !Dead("lrirenic") G("AcceptIlmater",0)~ DO ~SG("lrFinale",1) ClearAllActions() StartCutSceneMode() StartCutScene("lrfijon2")~ EXIT
END

IF ~G("lrFinale",6)~ lrchoice
  SAY @32
  ++ #67828 + 12
  ++ #67829 + 9
  + ~InParty("Imoen2") !Dead("Imoen2")~ + #67831 + 10
  + ~OR(2) !InParty("Imoen2") Dead("Imoen2")~ + #67840 + 10
  ++ #67835 + 11
END

IF ~G("lrFinale",8)~ THEN BEGIN LRJEE2
  SAY #67818 /* ~The vast majority of the soul essences of the children of Bhaal, Lord of Murder, now belong to you and you alone.  You must now decide what to do with this power... be wise, the choice is irrevocable.~ [SOLAR79] */
  IF ~~ THEN REPLY #67828 /* ~What are my options?~ */ GOTO 12
  IF ~~ THEN REPLY #67829 /* ~Shove your wisdom...I fought to get here and I earned my place.~ */  GOTO 9
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN REPLY #67831 /* ~Can I give up the taint easily like Imoen did?~ */ GOTO 10
  IF ~OR(2)
!InParty("Imoen2")
Dead("Imoen2")~ THEN REPLY #67840 /* ~Am I able to give up the essences?  Is it that easy?~ */ GOTO 10
  IF ~~ THEN REPLY #67835 /* ~Why?  What's going to happen to me?~ */ GOTO 11
END
END

CHAIN FINMEL01 lrAmelJonChain1
   @33
  == JONEL25J
   @34 
    == JONEL25J IF ~G("lrHasSoulStone",0)~ THEN
     @35
    == FINMEL01 IF ~G("lrHasSoulStone",0)~ THEN
     @36
    == JONEL25J IF ~G("lrHasSoulStone",0)~ THEN
     @37
    == FINMEL01 IF ~G("lrHasSoulStone",0)~ THEN
     @38
    == JONEL25J IF ~G("lrHasSoulStone",0) Alignment("lrirenic",MASK_EVIL)~ THEN
     @39
    == JONEL25J IF ~G("lrHasSoulStone",0)~ THEN
     @40 
  == JONEL25J IF ~G("lrHasSoulStone",1)~ THEN
   @41 
  == FINMEL01
   @42
END  IF ~~ DO ~Enemy()~ EXIT

CHAIN IF ~G("lrFinale",1) G("lrHasSoulStone",0)~ THEN FINSOL01 lrSolar2
   @43 
  == JONEL25J
   @44 
END  IF ~!Alignment("lrirenic",MASK_EVIL)~ DO ~SG("lrFinale",2)~ EXTERN JONEL25J NoBoon
     IF ~Alignment("lrirenic",MASK_EVIL) GGT("AgreedToGiveSoul",0)~ DO ~SG("lrFinale",2)~ EXTERN JONEL25J CraveBoon1
     IF ~Alignment("lrirenic",MASK_EVIL) !GGT("AgreedToGiveSoul",0)~ DO ~SG("lrFinale",2)~ EXTERN JONEL25J CraveBoon2

CHAIN IF ~G("lrFinale",1) G("lrHasSoulStone",1)~ THEN FINSOL01 lrSolar3
   @45 
  =
   @46
  =
   @47
  == JONEL25J
   @48
  == JAHEI25J IF ~InParty("Jaheira")~ THEN
   @49
    DO ~SG("JaheiraRomanceActive",3) LeaveParty() SetLeavePartyDialogFile() Wait(500000)~
  == AERIE25J IF ~InParty("Aerie")~ THEN
   @50
    DO ~LeaveParty() SetLeavePartyDialogFile() Wait(500000)~
  == ANOME25J IF ~InParty("Anomen") Alignment("Anomen",MASK_GOOD) !G("AnomenRomanceActive",2)~ THEN
   @51
    DO ~LeaveParty() SetLeavePartyDialogFile() Wait(500000)~
  == ANOME25J IF ~InParty("Anomen") Alignment("Anomen",MASK_GOOD) G("AnomenRomanceActive",2)~ THEN
   @51
    DO ~SG("AnomenRomanceActive",3)~
  == KELDO25J IF ~InParty("Keldorn")~ THEN
   @52
    DO ~LeaveParty() SetLeavePartyDialogFile() Wait(500000)~
  == NALIA25J IF ~InParty("Nalia") Alignment("Nalia",MASK_GOOD)~ THEN
   @53
  == MAZZY25J IF ~InParty("Mazzy")~ THEN
   @54
    DO ~LeaveParty() SetLeavePartyDialogFile() Wait(500000)~
  == VALYG25J IF ~InParty("Valygar")~ THEN
   @55
    DO ~LeaveParty() SetLeavePartyDialogFile() Wait(500000)~
  == CERND25J IF ~InParty("Cernd")~ THEN
     @56
  == SAREV25J IF ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN
   @57
  == SAREV25J IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN
   @58
  == IMOEN25J IF ~InParty("Imoen2")~ THEN
   @59
  == FINSOL01
   @60
  == JONEL25J
   @61
    DO ~SG("JonEpilogue",2) SG("lrFinale",8) StartCutScene("lrfinsol")~
EXIT

CHAIN JONEL25J NoBoon
   @62 
  == FINSOL01
   @63
  =
   @64
  == JONEL25J
   @65
  =
   @66
  == FINSOL01
   @67
END IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("lrfijon1")~ EXIT

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN lrCorell CorellonChain
   @68 
  == JONEL25J
   @69
  == LRCORELL
   @70
  =
   @71
  =
   @72
  =
   @73
  == JONEL25J
   @74
  == LRCORELL
   @75
  == JONEL25J
   @76
  == LRCORELL
   @77
  =
   @78
   =
   @79
  == JONEL25J
   @80
  == LRCORELL
   @81 
  == FINSOL01
   @82 
END IF ~~ DO ~SG("JonEpilogue",4) SG("lrFinale",3) ClearAllActions() StartCutSceneMode() StartCutScene("lrjonr1")~ EXIT

CHAIN JONEL25J CraveBoon1
   @83
  == FINSOL01
   @84
  == FINSOL01
   @85
  == JONEL25J
   @86
  == FINSOL01
   @87
END  ++ @88 EXTERN FINSOL01 lrJonWins
     ++ @89 EXTERN FINSOL01 lrJonWins
     ++ @90 EXTERN FINSOL01 lrJonWins

CHAIN JONEL25J CraveBoon2
   @83
  == FINSOL01
   @91
  =
   @92 
  == JONEl25J
   @93
   DO ~LeaveParty() SetLeavePartyDialogFile()~
    == JAHEI25J IF ~InParty("Jaheira")~ THEN
     @94
        DO ~SG("JaheiraRomanceActive",3)~
    == AERIE25J IF ~InParty("Aerie")~ THEN
     @95
    == ANOME25J IF ~InParty("Anomen") Alignment("Anomen",LAWFUL_GOOD)~ THEN
     @96
    == ANOME25J IF ~InParty("Anomen") Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN
     @97
    == EDWIN25J IF ~InParty("Edwin")~ THEN
     @98
    == NALIA25J IF ~InParty("Nalia")~ THEN
     @99
    == JAN25J IF ~InParty("Jan")~ THEN
     @100
    =
     @101
    == SAREV25J IF ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN
     @102
    == SAREV25J IF ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN
     @103
    == CERND25J IF ~InParty("Cernd")~ THEN
      @104
    == IMOEN25J IF ~InParty("Imoen2")~ THEN
     @105
  == FINSOL01
   @106
END  IF ~~ DO ~SG("JonEpilogue",3) SG("lrFinale",6) ClearAllActions() StartCutSceneMode() StartCutScene("banish2")~ EXIT

CHAIN FINSOL01 lrJonWins
   @107 
  =
   @108
  == JONEL25J
   @109  
END IF ~NumInPartyGT(2)~ DO ~SG("lrFinale",7) SG("JonEpilogue",1) SetGlobal("Partysize","AR6200",1) ClearAllActions() StartCutSceneMode() StartCutScene("cssuck")~ EXIT
    IF ~NumInPartyGT(3)~ DO ~SG("lrFinale",7) SG("JonEpilogue",1) SetGlobal("Partysize","AR6200",2) ClearAllActions() StartCutSceneMode() StartCutScene("cssuck")~ EXIT
    IF ~!NumInPartyGT(2)~ DO ~SG("lrFinale",7) SG("JonEpilogue",1) ClearAllActions() StartCutSceneMode() StartCutScene("cssuck")~ EXIT

CHAIN
IF ~G("lrFinale",7)~ THEN FINSOL01 lrJonWins2
   @110 
  == LRJONPC
   @111
  =
   @112 
  == JAHEI25P IF ~InActiveArea("Jaheira") !Dead("Jaheira") G("JaheiraRomanceActive",2)~ THEN
   @113
  == AERIE25P IF ~InActiveArea("Aerie") !Dead("Aerie") G("AerieRomanceActive",2)~ THEN
   @114
  == VICON25P IF ~InActiveArea("Viconia") !Dead("Viconia") G("ViconiaRomanceActive",2)~ THEN
   @115
  == ANOME25P IF ~InActiveArea("Anomen") !Dead("Anomen") G("AnomenRomanceActive",2)~ THEN
   @116
  == EDWIN25P IF ~InActiveArea("Edwin") !Dead("Edwin") G("EdwinRomanceActive",2)~ THEN
   @117
  == JAHEI25P IF ~InActiveArea("Jaheira") !Dead("Jaheira") !G("JaheiraRomanceActive",2)~ THEN
   @118
  == AERIE25P IF ~InActiveArea("Aerie") !Dead("Aerie") !G("AerieRomanceActive",2)~ THEN
   @119
  == VICON25P IF ~InActiveArea("Viconia") !Dead("Viconia") !G("ViconiaRomanceActive",2)~ THEN
   @120
  == ANOME25P IF ~InActiveArea("Anomen") !Dead("Anomen") !G("AnomenRomanceActive",2)~ THEN
   @121
  == IMOEN25P IF ~InActiveArea("Imoen2") !Dead("Imoen2")~ THEN
   @122
  == KELDO25P IF ~InActiveArea("Keldorn") !Dead("Keldorn")~ THEN
   @123
  == MAZZY25P IF ~InActiveArea("Mazzy") !Dead("Mazzy")~ THEN
   @124
  == VALYG25P IF ~InActiveArea("Valygar") !Dead("Valygar")~ THEN
   @125
  == HAERD25P IF ~InActiveArea("HaerDalis") !Dead("HaerDalis")~ THEN
   @126
  == MINSC25P IF ~InActiveArea("Minsc") !Dead("Minsc")~ THEN
   @127
  == CERND25P IF ~InActiveArea("Cernd") !Dead("Cernd")~ THEN
   @128
  == SAREV25P IF ~InActiveArea("Sarevok") !Dead("Sarevok") Alignment("Sarevok",MASK_EVIL)~ THEN
   @129
  == SAREV25P IF ~InActiveArea("Sarevok") !Dead("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ THEN
   @130
  == LRJONPC IF ~Global("Partysize","AR6200",2)~ THEN
   @131
  == LRJONPC IF ~Global("Partysize","AR6200",1)~ THEN
   @132
  == LRJONPC IF ~!Global("Partysize","AR6200",0)~ THEN
   @133
  == FINSOL01
   @134
  =
   @135
END IF ~~ DO ~StartCutSceneMode() StartCutScene("cssuck2")~ EXIT

CHAIN FINSOL01 jon_banter
@136
== JAHEI25J IF ~InParty("Jaheira")~ THEN
  @137
=
  @138
== IMOEN25J IF ~InParty("Imoen2")~ THEN
@139
== Jan25J IF ~InParty("Jan")~ THEN
  @140
=
  @141
=
  @142
=
 @143
== VICON25J IF ~InParty("Viconia")~ THEN
  @144
== ANOME25J IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN
  @145
== ANOME25J IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2) Alignment("Anomen",MASK_GOOD)~ THEN
  @146
== ANOME25J IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2) !Alignment("Anomen",MASK_GOOD)~ THEN
  @147
== AERIE25J IF ~InParty("Aerie")~ THEN
  @148
== NALIA25J IF ~InParty("Nalia")~ THEN
  @149
== HAERD25J IF ~InParty("HaerDalis")~ THEN
  @150
== KORGA25J IF ~InParty("Korgan")~ THEN
  @151
== MINSC25J IF ~InParty("Minsc")~ THEN
  @152
== KELDO25J IF ~InParty("Keldorn")~ THEN
  @153
== EDWIN25J IF ~InParty("Edwin")~ THEN
  @154
== VALYG25J IF ~InParty("Valygar")~ THEN
  @155
== MAZZY25J IF ~InParty("Mazzy")~ THEN
  @156
== SAREV25J IF ~InParty("Sarevok")~ THEN
  @157
== CERND25J IF ~InParty("Cernd")~ THEN
  @158
== FINSOL01 IF~~ THEN
  @159 
END FINSOL01 lrchoice
